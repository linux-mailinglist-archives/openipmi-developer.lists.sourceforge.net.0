Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FAF290DE3
	for <lists+openipmi-developer@lfdr.de>; Sat, 17 Oct 2020 00:51:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kTYZm-0004NZ-At; Fri, 16 Oct 2020 22:51:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kTYZk-0004NQ-2P
 for openipmi-developer@lists.sourceforge.net; Fri, 16 Oct 2020 22:51:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+A3qb7wSddKoudeH8qefVLLKBMGX/mQTDOB4rUkAdCY=; b=U73vhTnUTl4Pv5KOZZY41HFw4y
 MvIECKsgOyXDMcpyvTBrEd3/aqZQ3zoOyY4hOVOii3j3HHc2loJzX4Hwg9kSmunlaSnRAJ7tsxki+
 2QnmMDbRcLJUO3G5UsFoqqg6kwi5bQrI+bIBpjuSD3IAVkXOYmL2/vxDo4dVHDCGoF+k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+A3qb7wSddKoudeH8qefVLLKBMGX/mQTDOB4rUkAdCY=; b=Cbz3cJEYyEo319LE3CdjCDPHYa
 IsC0+zSJblwFS/PGXnaCuKU6Al/WYskbHFxUaGDr/QbJ/6c3PCHKOFtdwWL3f2lcOeC3WWLW2MVv7
 jyYcvnZGyJ2Jjnu0NZkamRSyOdG50XONo8r5uKK8yWICEBYR0O2KR98VijQz7+6egXYM=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kTYZX-00D1Sd-H3
 for openipmi-developer@lists.sourceforge.net; Fri, 16 Oct 2020 22:51:52 +0000
Received: by mail-pl1-f195.google.com with SMTP id o9so2021288plx.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 16 Oct 2020 15:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+A3qb7wSddKoudeH8qefVLLKBMGX/mQTDOB4rUkAdCY=;
 b=CF4LqkGIH6KRSjEVRXkMwMTHn6F2e/bCzAoitFYNW9uJm8WKLqpR6NIZ7gFV3aCNBZ
 DnHu4YGPXjOHok3RikNWoHjwks9Jp7YV3Q7GQeWMLNl6w2qqUkU+xnGlTV41kuQanWlw
 5I3SXWgj8ziKK8QievcHzQEAYEVifzBDPBh1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+A3qb7wSddKoudeH8qefVLLKBMGX/mQTDOB4rUkAdCY=;
 b=MMdxBLeBJfdRj/1O8fMItNyW5VA5Cg07BeiRP0BY+DFMEoInKf0re6jXcMzivWcv1k
 NFL2WsUwojfq8RGwd0GdLYcsiegvRqVneU6s4kyKtOdtODwNclbuL1HJoTGqBftGdWkD
 l6z7QCCjReh2kp6OqaiFE037QLpEY14syT/Zjjt3YxQWtAAbGobleRmckdKfvQzL4Rm5
 /RYzUoxX0Nidcut6zKgHpYxXEyupzsSckAPA3muYnSvWpdCofIC2piykIzVEhj4nIPqx
 5J9MuA1JAuzgpMPzHMbeR0MtfaywLQc1LzpxaIWkQ31kTsxyBHbVv6+uC+R0Ow0xJtVp
 H/Ww==
X-Gm-Message-State: AOAM532LdByRZBL1oCwvD1jHp5hq8X01FOFpQPm5Hu97DEGDpaLJxqn8
 oAt6KylSqqWpMso1Blw6m1uAsQ==
X-Google-Smtp-Source: ABdhPJydepy1YplrdnyBgmFc/3tQ/e/3eMYUwqhlQUodPHed8wA582z7vboWjRhYh9ZEXf+nz1NAJw==
X-Received: by 2002:a17:90a:aa90:: with SMTP id
 l16mr6212058pjq.0.1602888686891; 
 Fri, 16 Oct 2020 15:51:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c17sm4044276pfj.220.2020.10.16.15.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 15:51:25 -0700 (PDT)
Date: Fri, 16 Oct 2020 15:51:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <202010161541.6DD2D1E@keescook>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
 <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
 <20201014091720.GC2628@hirez.programming.kicks-ass.net>
 <202010141611.70B7A38@keescook>
 <20201016105313.GJ2611@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016105313.GJ2611@hirez.programming.kicks-ass.net>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kTYZX-00D1Sd-H3
Subject: Re: [Openipmi-developer] [PATCH v3 00/11] Introduce Simple atomic
 counters
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: rafael@kernel.org, Will Deacon <will@kernel.org>,
 linux-kselftest@vger.kernel.org, joel@joelfernandes.org, shuah@kernel.org,
 devel@driverdev.osuosl.org, minyard@acm.org, corbet@lwn.net, surenb@google.com,
 linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org, lenb@kernel.org,
 tkjos@android.com, arnd@arndb.de, bp@alien8.de,
 Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Oct 16, 2020 at 12:53:13PM +0200, Peter Zijlstra wrote:
> That's like saying: "I'm too lazy to track what I've looked at already".
> You're basically proposing to graffiti "Kees was here -- 16/10/2020" all
> over the kernel. Just so you can see where you still need to go.
> 
> It says the code was (assuming your audit was correct) good at that
> date, but has no guarantees for any moment after that.

That kind of bit-rot marking is exactly what I would like to avoid: just
putting a comment in is pointless. Making the expectations of the usage
become _enforced_ is the goal. And having it enforced by the _compiler_
is key. Just adding a meaningless attribute that a static checker
will notice some time and hope people fix them doesn't scale either
(just look at how many sparse warnings there are). So with C's limits,
the API and type enforcement become the principle way to get this done.

So, if there are behavioral patterns we CAN carve away from atomic_t
cleanly (and I think there are), those are the ones I want to work
towards. The "corner case" uses of atomic_t are much less common than
the "big" code patterns like lifetime management (now delegated to and
enforced by refcount_t). My estimation was that _statistics_ (and not
"serial identifiers") was the next biggest code pattern using atomic_t
that could benefit from having its usage isolated. It is not itself a
dangerous code pattern, but it can mask finding them.

Then, at the end of the day, only the corner cases remain, and those can
be seen clearly as they change over time. Since we can never have a
one-time audit be anything other than advisory, we need to make it EASY
to do those kinds of audits so they can be done regularly.

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
