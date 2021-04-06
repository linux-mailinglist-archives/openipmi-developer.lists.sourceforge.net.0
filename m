Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CE2355708
	for <lists+openipmi-developer@lfdr.de>; Tue,  6 Apr 2021 16:54:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lTn68-0006UN-Rm; Tue, 06 Apr 2021 14:54:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rppt@kernel.org>) id 1lTmsH-0006oY-MF
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 14:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ldSTEHmjelzFfP2h4/1LhSYmJQUiJ2cIWomYku6N1ik=; b=ZFxokUk3QQz+I+Pce9R/6Ztgai
 zLXTdG3gxsYivOi13Iw75kRPXnoM9wpt9WK9C1alLhaqHS+iEnYevfLdu5Al5ihW6UpHIDiP960de
 BFuD15we0QEKKVtFrSdFvUn7/J7xvckC2fw+Q14bEzlJrYs/msIw+xjKAWbzbUxYv/1Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ldSTEHmjelzFfP2h4/1LhSYmJQUiJ2cIWomYku6N1ik=; b=cYaEmD04MkCK/SJm/NbiDqkrGk
 qnuACPxwZ93GGET5Q9BZo1FFlS8zLIEfM+bo5Z2zzgmxIkcU6clsHUetoWh5eeBPXwi18HMsX4uOa
 EGRt5dTXT/oCriP1vGmYPyXh2G7HLlo56q5+NPZ0aEUmhV2Jb/T/tmI1pnt1387bQ1jE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lTmrt-000643-4T
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 14:40:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B468961041;
 Tue,  6 Apr 2021 14:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617719974;
 bh=G2BOVus52Iqv5BWziu8fp8dbl+kVdMy8pIchFSY+N7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SlT7S0jfOQB0ipW94M+9K780g98fCxdRJ2QJSXci+Rly0qaDQCHFeXHTOsI463Xi7
 S70I+/1OXQBcTfcIkIpl67B5zXSuZCsFVQzUBPU8aiRkhXqG4+Gr/kX784jry6UKjU
 t/VEsOeLGhmj1jkbfR4iAG4mFD+vamcJPKxJMUcvNbOJ2RhmbWIpBgjpUvC0BANEGE
 vr4AodXPx2i9E03UI+pPMK1LRyEpkXwf1hJUOL/xYCdBgDtehTwHpHwy3IOxolwkOe
 Eefs8HR/7P44p9cGBhR5ZazQeydf2U0negBr9o85K3dg0zDsONcgGw+lFDOTompGZC
 fzX5/aFjCjwKQ==
Date: Tue, 6 Apr 2021 17:39:15 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <YGxykw1Il6NvKTSe@kernel.org>
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lTmrt-000643-4T
X-Mailman-Approved-At: Tue, 06 Apr 2021 14:54:31 +0000
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
 linux-remoteproc@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
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
 Michael Kelley <mikelley@microsoft.com>, Vlastimil Babka <vbabka@suse.cz>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Eric Biederman <ebiederm@xmission.com>,
 linux-fsdevel@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
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

Acked-by: Mike Rapoport <rppt@linux.ibm.com>

> ---
>  arch/powerpc/kernel/setup-common.c   |  1 +
>  arch/x86/include/asm/desc.h          |  1 +
>  arch/x86/kernel/cpu/mshyperv.c       |  1 +
>  arch/x86/kernel/setup.c              |  1 +
>  drivers/char/ipmi/ipmi_msghandler.c  |  1 +
>  drivers/remoteproc/remoteproc_core.c |  1 +
>  include/asm-generic/bug.h            |  3 +-
>  include/linux/kernel.h               | 84 +-----------------------
>  include/linux/panic.h                | 98 ++++++++++++++++++++++++++++
>  include/linux/panic_notifier.h       | 12 ++++
>  kernel/hung_task.c                   |  1 +
>  kernel/kexec_core.c                  |  1 +
>  kernel/panic.c                       |  1 +
>  kernel/rcu/tree.c                    |  2 +
>  kernel/sysctl.c                      |  1 +
>  kernel/trace/trace.c                 |  1 +
>  16 files changed, 126 insertions(+), 84 deletions(-)
>  create mode 100644 include/linux/panic.h
>  create mode 100644 include/linux/panic_notifier.h
> 
> diff --git a/arch/x86/include/asm/desc.h b/arch/x86/include/asm/desc.h
> index 476082a83d1c..ceb12683b6d1 100644
> --- a/arch/x86/include/asm/desc.h
> +++ b/arch/x86/include/asm/desc.h
> @@ -9,6 +9,7 @@
>  #include <asm/irq_vectors.h>
>  #include <asm/cpu_entry_area.h>
>  
> +#include <linux/debug_locks.h>

This seems unrelated, but I might be missing something.

>  #include <linux/smp.h>
>  #include <linux/percpu.h>
>  

-- 
Sincerely yours,
Mike.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
