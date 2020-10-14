Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5875228E933
	for <lists+openipmi-developer@lfdr.de>; Thu, 15 Oct 2020 01:32:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kSqFS-0005VP-IC; Wed, 14 Oct 2020 23:31:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1kSqFQ-0005VH-ST
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Oct 2020 23:31:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HXVUBRNSSqTPt62/mgLGqwfLQyF1yjV/YHL73Dao6W8=; b=hOKaRWpWBg60v5E5FbhOnJZD01
 sq0ACWxrJHnUu/nJ2dROvTSpSYQ4C4Hhoiol9T0FJo7RiPdE6XQD+ukZsdh6cCnZHRdA8zHAzB3Rm
 JloBiMn9sXkc4NECLrSTfviXE/yWysLgmVTtNOgfBKNtMHVNlzIClV+3cnO4h1+eJ/Uc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HXVUBRNSSqTPt62/mgLGqwfLQyF1yjV/YHL73Dao6W8=; b=eYphNBgAr2Q3FD6IbX5qMDxoio
 BJg+sFBlqDz7MBZaLmMeDXPVRsdv4KMzSYfFV/9rLIlWx+EMAUvYrul7aTSIiXfnJFG7cBJTT9QVy
 +xRt1zv36UpI1TllH+O6wVWBKgIB9sEg3QkQx2dmPhYcPrbyE+cHo2z2eb+izt85BiGQ=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kSqFK-00FvbJ-BB
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Oct 2020 23:31:56 +0000
Received: by mail-pg1-f195.google.com with SMTP id n9so623588pgf.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 14 Oct 2020 16:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HXVUBRNSSqTPt62/mgLGqwfLQyF1yjV/YHL73Dao6W8=;
 b=jCAqi4iTXHmrlmTxFYn6GS2VgUo/8myl3KBrmWg0lRxHbNQgb3vs1osYENVe61bW0P
 M+4wkDUWjW0myaMTX5a1Gxf50PJCa/e+uOHI7EyM+POftZ0Y/9LfYtXSwlA+pbBlCT0Z
 p+qpDy78UxHceaiLraq0fP4f7UgNDPeMM5qHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HXVUBRNSSqTPt62/mgLGqwfLQyF1yjV/YHL73Dao6W8=;
 b=uT3IdSJHL4SMlvdtI0phioivdkyhYW2b1zxJf7pOm+z8DepY0VFLT57mkB0I+UFj+h
 Mw9la0aY2aB4F0KfwLVfTTCUMApEunQ21KFxZkXuHHRsytjbzWMQiBxIo4zNwBRJFwht
 zt6pmfovlubMlm1ibnW9gjlThkkc2LA2Uc0U4dRpKay56Tgr5g9zFCzk/8CEJMqi1i6T
 uZdJKEcBtSakf6RKBjd0YOX/KOkPb04i77t7+2JzmXv9QlBd5vg/tQuUMnq7mGjPjIgb
 krzmCFFmFvzNn42xW//iQErevhakzIFd87GDpoVC/51CQqCUFWoalJ0zy57dP+AC4W0D
 RgSQ==
X-Gm-Message-State: AOAM531zrfia72/JVa6yPbrgLB0fJrZqJX4g1Oia1sz7jsS79IpDKbGI
 lGb1zQWhcDalnMUm7pq43EMTMw==
X-Google-Smtp-Source: ABdhPJxOwI5RHIhqZd5sqTZJ3BeFjY/QwyZ69aihzdHcq4MYx7e3PrGhvAMQ5MYwvG0KK4zLFTqSZQ==
X-Received: by 2002:a63:d66:: with SMTP id 38mr983974pgn.400.1602718304430;
 Wed, 14 Oct 2020 16:31:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r201sm780160pfc.98.2020.10.14.16.31.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 16:31:43 -0700 (PDT)
Date: Wed, 14 Oct 2020 16:31:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <202010141611.70B7A38@keescook>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
 <20201009193746.GA1073957@hirez.programming.kicks-ass.net>
 <202010091255.246395A6@keescook>
 <20201010110920.GQ2628@hirez.programming.kicks-ass.net>
 <6e1dd408-653e-817e-b659-23649259a929@linuxfoundation.org>
 <20201014091720.GC2628@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201014091720.GC2628@hirez.programming.kicks-ass.net>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kSqFK-00FvbJ-BB
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

On Wed, Oct 14, 2020 at 11:17:20AM +0200, Peter Zijlstra wrote:
> On Tue, Oct 13, 2020 at 08:12:20PM -0600, Shuah Khan wrote:
> 
> > They don't add any new behavior, As Kees mentioned they do give us a
> > way to clearly differentiate atomic usages that can wrap.
> 
> No it doesn't! atomic_t can wrap, this thing can wrap, no distinction.
> 
> All it does is fragment the API and sow confusion. FOR NO BENEFIT.

I really don't see it this way. It's a distinct subset of the atomic_t
API. The trouble that has existed here has been with an atomic_t being
originally used NOT for lifetime management, that mutates into something
like that because of the available API, but doing so without realizing
it. atomic_t gets used for all kinds of algorithms, and the "counter"
type is way too easily accidentally transformed into a "lifetime
tracker" and we get bugs.

If we have a distinct type for wrapping-counters that limits the API,
then it is much harder for folks to shoot themselves in the foot. I don't
see why this is so bad: we end up with safer usage, more easily auditable
code behavior ("how was this atomic_t instance _intended_ to be used?"),
and no change in binary size.

> > There is no need to keep inc_return in this API as such. I included it
> > so it can be used for above cases 1 and 2, so the users don't have to
> > call inc() followed by read(). It can be left out of the API.

I go back and forth on this, but after looking at these instances,
it makes sense to have inc_return(), for where counters are actually
"serial numbers". An argument could be made[1], however, that such uses
should not end up in the position of _reusing_ earlier identifiers, which
means it's actually can't wrap. (And some cases just need u64 to make this
happen[2] -- and in that specific case, don't even need to be atomic_t).

[1] https://lore.kernel.org/lkml/202010071334.8298F3FA7@keescook/
[2] https://git.kernel.org/linus/d1e7fd6462ca9fc76650fbe6ca800e35b24267da

> Wrong! The atomic usage in mutex doesn't fall in any of those
> categories.

But the atomic usage in mutex is *IN* mutex -- it's a separate data
type, etc. We don't build mutexes manually, so why build counters
manually?

> The only thing you're all saying that makes sense is that unintentional
> wrapping can have bad consequences, the rest is pure confusion.
> 
> Focus on the non-wrapping cases, _everything_ else is not going
> anywhere.

I view this as a way to do so: this subset of wrapping cases is being
identified and removed from the pool of all the atomic_t cases so that
they will have been classified, and we can continue to narrow down all
the atomic_t uses to find any potentially mis-used non-wrapping cases.

The other option is adding some kind of attribute to the declarations
(which gets us the annotation) but doesn't provide a limit to the API.
(e.g. no counter should ever call dec_return).

> So audit the kernel, find the cases that should not wrap, categorize and
> create APIs for them that trap the wrapping. But don't go around
> confusing things that don't need confusion.

That's what's happening here. But as it turns out, it's easier to do
this by employing both the process of elimination (mark the counters)
and direct identification (mark the refcount_t). Then the pool of
"unannotated" atomic_t instances continues to shrink.

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
