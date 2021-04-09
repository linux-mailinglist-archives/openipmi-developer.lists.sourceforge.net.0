Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8131035A4C0
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 19:39:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUv5w-00015Z-8R; Fri, 09 Apr 2021 17:39:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mcgrof@gmail.com>) id 1lUuU4-0003xL-Sz
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 16:59:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+9xha/pXNeFBGiuagKWknyCqPbUKuPA8GXpvrC9Jx0I=; b=dMv2UbU8Lpqj7cqCS0Iak4K64C
 woFc74L/imtoJ7Sf8w5TyIIu7Ro1waZ1L88LHESM0jmbsTToy+nzMXnzPskYdacPyrf1WbpEvHkRw
 7FtvdZvsOaIL4KtVOv/O+hjInzc7G6FCnN80E+VCOBv5ocTTzhlV1zlBWo2gvOwCQWZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+9xha/pXNeFBGiuagKWknyCqPbUKuPA8GXpvrC9Jx0I=; b=DEhmo3c3m+l2Tmac0ZbGKWZbkB
 bvkMq7gG3ybJyo0BZTBa0Wc+qwknu8MJD52AdWz9tGIuYHE/LdbQxaBfUyleK1EbipyWkYmTcZuIe
 +16TPebuMMa2GkewojgT6y9GRlSy8Vjj3VpTa82CExq9sE9FEgZJ89xMDTj33Ti2sayY=;
Received: from mail-pf1-f180.google.com ([209.85.210.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lUuTc-0006vg-Ub
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 16:59:50 +0000
Received: by mail-pf1-f180.google.com with SMTP id y16so4626033pfc.5
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Apr 2021 09:59:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+9xha/pXNeFBGiuagKWknyCqPbUKuPA8GXpvrC9Jx0I=;
 b=jK9vgqF2JQH/OziT2jGFUfPzTAcuGb5bzJWidhTnrQstSq6PmUEcGs/LoKYGWaS17a
 6Lo/zTNZ8MhCRjsydt3bRW/ERgaVOKJbKdENo71B9H6hQ4E1G0yPXAai+J8wn9tMO7he
 WZPQLWHvdnZYC5ok37nDMkCfYLe/1mD4CyZe6Ae2OQXJ1RGX19vgKy4sXfSuoHAfH4GA
 22/wNCFcpLkZnu7A0dLGyRgcIchT8PFiQrrbLZabdPqUHWaymsZFA0fnVVv1lDSs1w2U
 Y1hPQwMuLgEf2iUywFkp8omHorxJCMiMj9AgxrcRiDIo7OW/IjO4SKV85ihvFW63iSU+
 w1qw==
X-Gm-Message-State: AOAM53025ArD1POk8beTqWnQD4yud1FFslmWRQhDk5HtO6IRlviunZOp
 /W0PlUfwl15nOExBE8ZM1Ws=
X-Google-Smtp-Source: ABdhPJw6kXgrPuw8A7YDvuzOsmJlxLxKBkWC3Ar3os6uxRVSPlCkaHeQd8atCkDOR792q4QQZ8VNRA==
X-Received: by 2002:a65:40c7:: with SMTP id u7mr14223236pgp.29.1617987559416; 
 Fri, 09 Apr 2021 09:59:19 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id i22sm73788pfq.170.2021.04.09.09.59.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Apr 2021 09:59:18 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 6D85340256; Fri,  9 Apr 2021 16:59:17 +0000 (UTC)
Date: Fri, 9 Apr 2021 16:59:17 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20210409165917.GH4332@42.do-not-panic.com>
References: <20210409100250.25922-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210409100250.25922-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUuTc-0006vg-Ub
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 dri-devel@lists.freedesktop.org, Paul Mackerras <paulus@samba.org>,
 Pavel Machek <pavel@ucw.cz>, "K. Y. Srinivasan" <kys@microsoft.com>,
 linux-clk@vger.kernel.org, linux-arch@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jens Frederich <jfrederich@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Catalin Marinas <catalin.marinas@arm.com>, xen-devel@lists.xenproject.org,
 Matt Turner <mattst88@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 linux-pm@vger.kernel.org, Lai Jiangshan <jiangshanlai@gmail.com>,
 linux-um@lists.infradead.org, Daniel Drake <dsd@laptop.org>,
 Mihai Carabas <mihai.carabas@oracle.com>, Thomas Gleixner <tglx@linutronix.de>,
 Richard Henderson <rth@twiddle.net>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>,
 Marek Czerski <ma.czerski@gmail.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Jon Nettleton <jon.nettleton@gmail.com>,
 Alexander Egorenkov <egorenar@linux.ibm.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>, linux-s390@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Helge Deller <deller@gmx.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Iurii Zaikin <yzaikin@google.com>, linux-xtensa@linux-xtensa.org,
 Joerg Roedel <jroedel@suse.de>, Vasily Gorbik <gor@linux.ibm.com>,
 Scott Branden <scott.branden@broadcom.com>, coresight@lists.linaro.org,
 linux-fsdevel@vger.kernel.org, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Tony Luck <tony.luck@intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Dinh Nguyen <dinguyen@kernel.org>, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hyperv@vger.kernel.org,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Joel Fernandes <joel@joelfernandes.org>, Will Deacon <will@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-staging@lists.linux.dev,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 bcm-kernel-feedback-list@broadcom.com, Juergen Gross <jgross@suse.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Haiyang Zhang <haiyangz@microsoft.com>, Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, linux-fbdev@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Michael Kelley <mikelley@microsoft.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 Hongbo Yao <yaohongbo@huawei.com>, Sebastian Reichel <sre@kernel.org>,
 linux-alpha@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Mike Rapoport <rppt@kernel.org>, Alexander Lobakin <alobakin@pm.me>,
 linux-remoteproc@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-leds@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Wang Wenhu <wenhu.wang@vivo.com>,
 Jeff Dike <jdike@addtoit.com>, Mike Leach <mike.leach@linaro.org>,
 "Paul E. McKenney" <paulmck@kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-edac@vger.kernel.org, "Jason J. Herne" <jjherne@linux.ibm.com>,
 netdev@vger.kernel.org, kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Leo Yan <leo.yan@linaro.org>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Apr 09, 2021 at 01:02:50PM +0300, Andy Shevchenko wrote:
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

Acked-by: Luis Chamberlain <mcgrof@kernel.org>

  Luis


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
