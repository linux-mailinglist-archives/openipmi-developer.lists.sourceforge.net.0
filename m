Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F9A3584B2
	for <lists+openipmi-developer@lfdr.de>; Thu,  8 Apr 2021 15:29:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUUj6-0006gf-9U; Thu, 08 Apr 2021 13:29:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lUUj4-0006gH-Jv
 for openipmi-developer@lists.sourceforge.net; Thu, 08 Apr 2021 13:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D0u5q9KEk9gZ0yLyjAyUK/pAisae9eW2wxvr7rvkr68=; b=NAYUMm1+Eqec3cHsKjRXy+rnTN
 i07I74fntONhV5s5WZO8mQft7bamZG3+L+UWUVIM41P3KGcKbWxbZcllki01NefP/O27gb0z/HQtV
 hoty2r56IJIHzoffqAlj5NdhohXjkUyfsqzV+mGamxg99Xtg7cCJKG/P6cNA6p+jwSL4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D0u5q9KEk9gZ0yLyjAyUK/pAisae9eW2wxvr7rvkr68=; b=OcLlRYQom0S0SGp3mCrDZy5Y+P
 2jpW8apX5rLc6NZHuhhPK75V4OVvZSPIPOYhVCRlEXCefB3YrGA68Huk1qXt2lUb8twCwnuVs8RYg
 XlfK7CXpSIhsSwY35h9c9QfEUT05ue3+nNJ8pFar/4fdg/mEfZleJC/2T3LJ+M/1o1Hg=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUUiu-004imK-ND
 for openipmi-developer@lists.sourceforge.net; Thu, 08 Apr 2021 13:29:38 +0000
IronPort-SDR: CCntJ8v3tFp5DC2RA9+4+vjw28zux90GjpswGxDp4QK+NdZ28QRW+BHM7Ch1FUKcGrOFnSZUHP
 LvqdRoSYRK1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="180668791"
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="180668791"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 06:29:22 -0700
IronPort-SDR: D3QHX5UVSB8YX34MZLNYlLK0kPKdVmkIBWjKvFADTZAC3rD9R9M8THaBbj3tnr/+TF6aChcI+z
 hErj278onk1A==
X-IronPort-AV: E=Sophos;i="5.82,206,1613462400"; d="scan'208";a="419147368"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 06:29:13 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lUUia-002IVr-4H; Thu, 08 Apr 2021 16:29:08 +0300
Date: Thu, 8 Apr 2021 16:29:08 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <YG8FJOYVovYIOLXA@smile.fi.intel.com>
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
 <03be4ed9-8e8d-e2c2-611d-ac09c61d84f9@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03be4ed9-8e8d-e2c2-611d-ac09c61d84f9@rasmusvillemoes.dk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: rasmusvillemoes.dk]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lUUiu-004imK-ND
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
 Kees Cook <keescook@chromium.org>, "Paul E. McKenney" <paulmck@kernel.org>,
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

On Thu, Apr 08, 2021 at 02:45:12PM +0200, Rasmus Villemoes wrote:
> On 06/04/2021 15.31, Andy Shevchenko wrote:
> > kernel.h is being used as a dump for all kinds of stuff for a long time.
> > Here is the attempt to start cleaning it up by splitting out panic and
> > oops helpers.
> 
> Yay.
> 
> Acked-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>

Thanks!

> > At the same time convert users in header and lib folder to use new header.
> > Though for time being include new header back to kernel.h to avoid twisted
> > indirected includes for existing users.
> 
> I think it would be good to have some place to note that "This #include
> is just for backwards compatibility, it will go away RealSoonNow, so if
> you rely on something from linux/panic.h, include that explicitly
> yourself TYVM. And if you're looking for a janitorial task, write a
> script to check that every file that uses some identifier defined in
> panic.h actually includes that file. When all offenders are found and
> dealt with, remove the #include and this note.".

Good and...

> > +struct taint_flag {
> > +	char c_true;	/* character printed when tainted */
> > +	char c_false;	/* character printed when not tainted */
> > +	bool module;	/* also show as a per-module taint flag */
> > +};
> > +
> > +extern const struct taint_flag taint_flags[TAINT_FLAGS_COUNT];
> 
> While you're doing this, nothing outside of kernel/panic.c cares about
> the definition of struct taint_flag or use the taint_flags array, so
> could you make the definition private to that file and make the array
> static? (Another patch, of course.)

...according to the above if *you are looking for a janitorial task*... :-))

> > +enum lockdep_ok {
> > +	LOCKDEP_STILL_OK,
> > +	LOCKDEP_NOW_UNRELIABLE,
> > +};
> > +
> > +extern const char *print_tainted(void);
> > +extern void add_taint(unsigned flag, enum lockdep_ok);
> > +extern int test_taint(unsigned flag);
> > +extern unsigned long get_taint(void);
> 
> I know you're just moving code, but it would be a nice opportunity to
> drop the redundant externs.

As above. But for all these I have heard you. So, I'll keep this response
as part of my always only growing TODO list.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
