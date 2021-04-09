Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 289AC359817
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 10:38:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUmf0-0005Nf-RA; Fri, 09 Apr 2021 08:38:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lUmez-0005NW-He
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 08:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZpJBv1xVBIFBDkQFIHqMeh8Ac/6sQZMVzm8fVdnJCzQ=; b=SBJVpJ+2X4cBXEjbruSoTF+JSi
 OYqQWw6S85I2Z4GLhgD0a4JYVHqCemJMEhq0qpZqeinW+qj0EJPZ53TEfVWcicFmgsog7Zw24lxh1
 KZxJCyAcYxrkBmSx5aGvswl2AdLPlRd6bvcEtbI8jtH3qvOzxD45Lz/jw7C9aRRWkgx4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZpJBv1xVBIFBDkQFIHqMeh8Ac/6sQZMVzm8fVdnJCzQ=; b=fvGdbOpMEmkR9hQFb4DPktkH+l
 5NHiUy9PJpAv8j6ZKHPs8OiLcqk6KM3pTrC1AZTMwrTlzrUpn9GiRm/ZyKp+cWLYqkDusN/ov6K4R
 PHYP2GZKPCwEcrcCstwyQBE61urtTaAzyJLBzLzAARFn2Q/xVGPj4A9hYHOxn93pHs/k=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUmef-009HeD-EM
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 08:38:37 +0000
IronPort-SDR: W28ob2gAh8DLqRxgkjwYd1sAx7RIClYveSpvmp3wjzwthTYPrBYovXI2Vv1A03k4cIAVa3htiX
 eLt7l6RU8VuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193757591"
X-IronPort-AV: E=Sophos;i="5.82,208,1613462400"; d="scan'208";a="193757591"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 01:22:42 -0700
IronPort-SDR: LpPwGYvzeGLB4564wHP5jJbcRyN85WbfWAYL9lYRz8cQSDjnd3E+cW0pfFcrKjH/dI51i7LuRn
 04ILPMrQhS5g==
X-IronPort-AV: E=Sophos;i="5.82,208,1613462400"; d="scan'208";a="613646033"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 01:22:32 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1lUmPK-002UMq-O4; Fri, 09 Apr 2021 11:22:26 +0300
Date: Fri, 9 Apr 2021 11:22:26 +0300
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <YHAOwm5JtmH/8Njr@smile.fi.intel.com>
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
 <202104061143.E11D2D0@keescook>
 <CAHp75Ve+11u=dtNTO8BCohOJHGWSMJtb1nGCOrNde7bXaD4ehA@mail.gmail.com>
 <20210408232303.453749e0e6fb0adfa8545440@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210408232303.453749e0e6fb0adfa8545440@linux-foundation.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: 1.2 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing list
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUmef-009HeD-EM
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Linux on Hyper-V List <linux-hyperv@vger.kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-remoteproc@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux-Arch <linux-arch@vger.kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Iurii Zaikin <yzaikin@google.com>,
 Ohad Ben-Cohen <ohad@wizery.com>, Joerg Roedel <jroedel@suse.de>,
 Kees Cook <keescook@chromium.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vlastimil Babka <vbabka@suse.cz>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biederman <ebiederm@xmission.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "open list:LINUX FOR POWERPC PA SEMI PWRFICIENT"
 <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Apr 08, 2021 at 11:23:03PM -0700, Andrew Morton wrote:
> On Wed, 7 Apr 2021 11:46:37 +0300 Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> 
> > On Wed, Apr 7, 2021 at 11:17 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Tue, Apr 06, 2021 at 04:31:58PM +0300, Andy Shevchenko wrote:
> > > > kernel.h is being used as a dump for all kinds of stuff for a long time.
> > > > Here is the attempt to start cleaning it up by splitting out panic and
> > > > oops helpers.
> > > >
> > > > At the same time convert users in header and lib folder to use new header.
> > > > Though for time being include new header back to kernel.h to avoid twisted
> > > > indirected includes for existing users.
> > > >
> > > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > >
> > > I like it! Do you have a multi-arch CI to do allmodconfig builds to
> > > double-check this?
> > 
> > Unfortunately no, I rely on plenty of bots that are harvesting mailing lists.
> > 
> > But I will appreciate it if somebody can run this through various build tests.
> > 
> 
> um, did you try x86_64 allmodconfig?
> 
> I'm up to
> kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix-fix-fix.patch
> and counting.


I will try on my side and will fix those, thanks!

> and.... drivers/leds/trigger/ledtrig-heartbeat.c as well.
> 
> I'll drop it.

No problem, thanks for the report.

-- 
With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
