Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9192835A4C1
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 19:39:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUv5w-00015Q-72; Fri, 09 Apr 2021 17:39:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <sboyd@kernel.org>) id 1lUuRf-0005k8-Pd
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 16:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:To:Cc:From:Subject:References:
 In-Reply-To:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kUT8E0h8rIdcr32FDf5jdJMzcxpyBfPgUAoc9JSrulM=; b=fenJKFCfsPQhbkoVJBiAQNCx5G
 Gx1ovbLqFsLLR/1b2//RxWUoWpe0HfoE8uktoSFt52idb7XVD1wYPUCKh2K+3gyMmDjWNAymQd9Ju
 5c/bH8eOQpN1AHpbYq+V1vgEmB1HMrIA0N1V/yoRl8EG1c50IzfklQJRdYh19iES7Utc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Message-ID:Date:To:Cc:From:Subject:References:In-Reply-To:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kUT8E0h8rIdcr32FDf5jdJMzcxpyBfPgUAoc9JSrulM=; b=Mzl7bP3vOLuDT5IJgj2FuYKilG
 ImlUf3LQVQEJSQtt74qGdZHWODx84P6cDAJ5iOW/DU86WIBO91AS620RzjDOxe5YCOsjxeAQKAbKY
 3Q0Zz/vxgeP0Z5ARutZ6LovItQ3ZXfDbhCIXZuQyxrbzruyE8RoIfSbqWlZTSax3mhB0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUuOn-00BFqu-6O
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 16:54:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 61F31610C7;
 Fri,  9 Apr 2021 16:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617987256;
 bh=6BYqCREsMTupMhpQBxMglMi1SSUzmui8owN4hO2d6qQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ImcCiNXIad0jJkWNwrcKmGLeU6qiMldElVeD59ysCeBvEqoyI5hehOIrI3rWIHlft
 cDqnlvcpFEkhKWi++6IMBtV5qLt87546HVteu5Zu6eNBrs4AT3LtR7iPhCcG6RsGQb
 qUDXIDrIpdb9PSdd/k7E7Z9eh7nR6D2hGyn4ZSxjp+5igu0Kmrpvr4wH+YbV/Un2dr
 ZHqAC8yRHQj8beubuUt83Qi/IKMYXnEx92gXWQVAg16tHnu7C80lYCKEIWMIbDj4Uq
 R0x394o/Cvdf+b4qDJ3rffi+spWoRNcln6puhxuHvFpWqRBplbPavSU5wtvy84X2y7
 gJd8v1VQnkSPw==
MIME-Version: 1.0
In-Reply-To: <20210409100250.25922-1-andriy.shevchenko@linux.intel.com>
References: <20210409100250.25922-1-andriy.shevchenko@linux.intel.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Alexander Egorenkov <egorenar@linux.ibm.com>,
 Alexander Lobakin <alobakin@pm.me>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Corey Minyard <cminyard@mvista.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Carstens <hca@linux.ibm.com>, Hongbo Yao <yaohongbo@huawei.com>,
 Jason J. Herne <jjherne@linux.ibm.com>, Joe Perches <joe@perches.com>,
 Joerg Roedel <jroedel@suse.de>, Kees Cook <keescook@chromium.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Marek Czerski <ma.czerski@gmail.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Michael Kelley <mikelley@microsoft.com>,
 Mihai Carabas <mihai.carabas@oracle.com>, Mike Rapoport <rppt@kernel.org>,
 Olof Johansson <olof@lixom.net>, Paul E. McKenney <paulmc
 k@kernel.org>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Scott Branden <scott.branden@broadcom.com>,
 Steven Rostedt (VMware) <rostedt@goodmis.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vasily Gorbik <gor@linux.ibm.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Vlastimil Babka <vbabka@suse.cz>, Wang Wenhu <wenhu.wang@vivo.com>,
 Wei Liu <wei.liu@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 coresight@lists.linaro.org, dri-devel@lists.freedesktop.org,
 kexec@lists.infradead.org, linux-alpha@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-edac@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-pm@vger.kernel.org, linux-remoteproc@v
 ger.kernel.org, linux-s390@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-um@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 linuxppc-dev@lists.ozlabs.org, netdev@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, rcu@vger.kernel.org,
 sparclinux@vger.kernel.org, xen-devel@lists.xenproject.org
Date: Fri, 09 Apr 2021 09:54:15 -0700
Message-ID: <161798725520.3790633.11854722005020364662@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUuOn-00BFqu-6O
X-Mailman-Approved-At: Fri, 09 Apr 2021 17:38:58 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 1/1] kernel.h: Split out panic
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
Cc: , Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 Pavel Machek <pavel@ucw.cz>, "H. Peter Anvin" <hpa@zytor.com>,
 Joel Fernandes <joel@joelfernandes.org>, et,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Chris Zankel <chris@zankel.n>,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Jakub Kicinski <kuba@kernel.org>, Matt Turner <mattst88@gmail.com>,
 Iurii Zaikin <yzaikin@google.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Mike Leach <mike.leach@linaro.org>, Ohad Ben-Cohen <ohad@wizery.com>,
 Corey Minyard <minyard@acm.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jeff Dike <jdike@addtoit.com>, Josh Triplett <josh@joshtriplett.org>,
 Alex Elder <elder@kernel.org>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Richard Henderson <rth@twiddle.net>, Juergen Gross <jgross@suse.com>,
 Tony Luck <tony.luck@intel.com>, Jon Nettleton <jon.nettleton@gmail.com>,
 Sebastian Reichel <sre@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Lui s Chamberlain <mcgrof@kernel.org>, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>, Leo Yan <leo.yan@linaro.org>,
 Borislav Petkov <bp@alien8.de>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Quoting Andy Shevchenko (2021-04-09 03:02:50)
> kernel.h is being used as a dump for all kinds of stuff for a long time.
> Here is the attempt to start cleaning it up by splitting out panic and
> oops helpers.
> 
> There are several purposes of doing this:
> - dropping dependency in bug.h
> - dropping a loop by moving out panic_notifier.h
> - unload kernel.h from something which has its own domain
> 
> At the same time convert users tree-wide to use new headers, although
> for the time being include new header back to kernel.h to avoid twisted
> indirected includes for existing users.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Acked-by: Mike Rapoport <rppt@linux.ibm.com>
> Acked-by: Corey Minyard <cminyard@mvista.com>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Kees Cook <keescook@chromium.org>
> Acked-by: Wei Liu <wei.liu@kernel.org>
> Acked-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
> ---

>  drivers/clk/analogbits/wrpll-cln28hpc.c       |  4 +

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
