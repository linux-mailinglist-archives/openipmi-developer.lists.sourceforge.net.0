Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D4D355C94
	for <lists+openipmi-developer@lfdr.de>; Tue,  6 Apr 2021 21:55:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lTrnC-0004Sa-M6; Tue, 06 Apr 2021 19:55:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1lTqgN-0001P3-MJ
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 18:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eQnC4YbqcPkvvMzS/WXtytqd+L3POj6wkG54irRdxac=; b=K7J1tO5EXbO/cJTCHp06mbKc8z
 wIq9/JWJQJ7p9/iqhqGNtXWWKEXHJVyTDZOdPENq/EtuBnHgUMMYcuJLqYmISY/HOj9sWvu1GzWtn
 gYJtGAFo9K1CRyO83W1I77EN++246LTZK8NqrFdYH9ywjw0TYtoMaiCJl+30cPfWbAwU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eQnC4YbqcPkvvMzS/WXtytqd+L3POj6wkG54irRdxac=; b=Cp9SAOtxl8X7UEvGUFUUBqtYqK
 FagNhLAPYXqYULZk0pOPRZLm10WKE/PL0Q/uYBev6cgCcEOiDc7eyIx+R3l1bWb+XIwCtZZ8Xg3pr
 avMjo5c/XIC+YSoxxlCwBiMaYe9XLBEdJKIZuOhP61uGa63ZM7XtYSlzxhJ2rtxsm1ZE=;
Received: from mail-pl1-f170.google.com ([209.85.214.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lTqgK-00C63q-4H
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 18:44:11 +0000
Received: by mail-pl1-f170.google.com with SMTP id h20so8005926plr.4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Apr 2021 11:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eQnC4YbqcPkvvMzS/WXtytqd+L3POj6wkG54irRdxac=;
 b=YAhhm9BkpY5y7HrE34KfvVWOVgEO0sYzWSUTiqziDNEK4+3Lral7Ghh0posJjIrz61
 tfc63YozQ8TRMvb+TNGvA+LWvP4faXgXV6k8KT0Nv6y/u9B7f1LE4XzO3OjKob023F9j
 xZGLdr3UYpKw1f93SAnQ8fSdVZaYmuMHTRPdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eQnC4YbqcPkvvMzS/WXtytqd+L3POj6wkG54irRdxac=;
 b=FkMiY1/RNPI1W31jEqfCC5EcSyCtInSP6cDoKh71E3jkIVOkWz9HbVM6O5hGvqg4+r
 dfytDWUgnDoAFB0NhRnX98VllRGlmGyMsTNsJDJCCEjiHGmxBkP3luu8mZHjwe2eOU24
 h7vwlus/dh1ynQ1V1VrpB/Wyja3JJPVUzCcW1MWTGTLK/WDCcxNVdmS61QLkeCj2Ybmh
 sCDQyhAVzhxxrCjKZEEWYGJZ1ChEaEiKKvgM5B0Cfvy6RH+tyyNMnNe1ri70hiJ/SOnD
 hkhApe0nyAAnh/zhgy88B6RmduX5iogmy5/Cu9f7cHMN/KTrwgSeY7Wz97kRg9K9AFiq
 rNSQ==
X-Gm-Message-State: AOAM530E/ybDFP2vDKN9IGjT+e7fwhYVXV1r9ZQUgdjCEyvkacmdQ7aZ
 5j7s4LAhe9ZSRe8aXXuJq+siCA==
X-Google-Smtp-Source: ABdhPJyp4uPolhdsa5/w7momD80MPZDhhBi9SUuWfIFW/E/FawC4pgs3YQmUW7xHztXcPiXJ8/E+QQ==
X-Received: by 2002:a17:902:e74e:b029:e5:bde4:2b80 with SMTP id
 p14-20020a170902e74eb02900e5bde42b80mr30088911plf.44.1617734642419; 
 Tue, 06 Apr 2021 11:44:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i9sm3610423pjh.9.2021.04.06.11.44.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Apr 2021 11:44:01 -0700 (PDT)
Date: Tue, 6 Apr 2021 11:44:00 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <202104061143.E11D2D0@keescook>
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lTqgK-00C63q-4H
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] kernel.h: Split out panic
 and oops helpers
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
Cc: Corey Minyard <cminyard@mvista.com>, linux-hyperv@vger.kernel.org,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-remoteproc@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arch@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Iurii Zaikin <yzaikin@google.com>,
 Ohad Ben-Cohen <ohad@wizery.com>, Joerg Roedel <jroedel@suse.de>,
 "Paul E. McKenney" <paulmck@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vlastimil Babka <vbabka@suse.cz>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Eric Biederman <ebiederm@xmission.com>,
 linux-fsdevel@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Apr 06, 2021 at 04:31:58PM +0300, Andy Shevchenko wrote:
> kernel.h is being used as a dump for all kinds of stuff for a long time.
> Here is the attempt to start cleaning it up by splitting out panic and
> oops helpers.
> 
> At the same time convert users in header and lib folder to use new header.
> Though for time being include new header back to kernel.h to avoid twisted
> indirected includes for existing users.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

I like it! Do you have a multi-arch CI to do allmodconfig builds to
double-check this?

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

-- 
Kees Cook


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
