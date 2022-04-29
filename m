Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C57C515700
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 23:39:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkYL5-00019Y-G8; Fri, 29 Apr 2022 21:39:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkYKp-00019O-0R
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 21:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zaZR6AionffdB1xNnJGX+2SLzxIRGHxmDTzkdAsF8Lw=; b=c4rOWIA2W6sCpDgmFMe2JEkXmh
 qL794XJjJQy8SaveXzbwRldLmqWTo8K8jp3wtpQVrM3jDJ6nBFCbe+Wmfluzy164LPliZi5SW0aKf
 UM9BApSmKtmcqbcf82PokFDQ26ThXz4l+mVNKP1KVQnhcTKcZVfLROLCuMxL2LJ1LNBE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zaZR6AionffdB1xNnJGX+2SLzxIRGHxmDTzkdAsF8Lw=; b=GI1Cf6pEewQiEUlXXRabtofzmc
 4vH+XpiMqXC9To9lhrs6G2mQ0qqMGjyMjWmPJ8sPl8Ajcc/PTFkQug2GpcQEv+Nz/X6BDGLETc96o
 BjT2d5HaOTXT5dOq3PNmG2/YwD3vfK6cA5vTKp6orD/fb89ChiyT2ZNnYAz8wpmifImI=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkYKi-0008Cc-Lt
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 21:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zaZR6AionffdB1xNnJGX+2SLzxIRGHxmDTzkdAsF8Lw=; b=f2se15ohqCxFdZ9Cbwp90MFGzT
 jTOap9gxEPPT4aTyNt5E3ZHiiiT+V3lzyiVXivZvxSS+ElUToKTRjGns0j7W5gu+rUZwjHaY5hGeN
 otkXyAwqu6HD3avUoXVIxjGs+UlKUlBOe/StJroDKFugT/kZL7npThsCdsHpDWufEk+wh4fOOIDQw
 l7OyKb0Jm89RaQG7TSk5bTRs2tlRpACA1IvBqK2eiZLAu6g1+MyYc/cQwPm5SUuYLGV0bPXJdES3s
 lnyV4bPi3phdA0er49wiR1R3K1IMQcdtRi5k8Pou9s9nypOSId//IHiPuzLjmzkdZNlZyJjIhfVzV
 toxHByUQ==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkYK9-0001bD-CM; Fri, 29 Apr 2022 23:38:49 +0200
Message-ID: <71d829c4-b280-7d6e-647d-79a1baf9408b@igalia.com>
Date: Fri, 29 Apr 2022 18:38:19 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Marc Zyngier <maz@kernel.org>,
 "Michael Kelley (LINUX)" <mikelley@microsoft.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-3-gpiccoli@igalia.com> <87mtg392fm.wl-maz@kernel.org>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <87mtg392fm.wl-maz@kernel.org>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks Marc and Michael for the review/discussion. On
 29/04/2022
 15:20, Marc Zyngier wrote: > [...] > My expectations would be that, since
 we're getting here using an IPI, > interrupts are already masked. So what
 reenabled them the first place? > > Thanks, > > M. > 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkYKi-0008Cc-Lt
Subject: Re: [Openipmi-developer] [PATCH 02/30] ARM: kexec: Disable
 IRQs/FIQs also on crash CPUs shutdown path
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 linux-xtensa@linux-xtensa.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 pmladek@suse.com, dave.hansen@linux.intel.com, keescook@chromium.org,
 arnd@arndb.de, linux-pm@vger.kernel.org, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org, gregkh@linuxfoundation.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Thanks Marc and Michael for the review/discussion.

On 29/04/2022 15:20, Marc Zyngier wrote:
> [...]

> My expectations would be that, since we're getting here using an IPI,
> interrupts are already masked. So what reenabled them the first place?
> 
> Thanks,
> 
> 	M.
> 

Marc, I did some investigation in the code (and tried/failed in the ARM
documentation as well heh), but this is still not 100% clear for me.

You're saying IPI calls disable IRQs/FIQs by default in the the target
CPUs? Where does it happen? I'm a bit confused if this a processor
mechanism, or it's in code.

Looking the smp_send_stop() in arch/arm/, it does IPI the CPUs, with the
flag IPI_CPU_STOP, eventually calling ipi_cpu_stop(), and the latter
does disable IRQ/FIQ in code - that's where I stole my code from.

But crash_smp_send_stop() is different, it seems to IPI the other CPUs
with the flag IPI_CALL_FUNC, which leads to calling
generic_smp_call_function_interrupt() - does it disable interrupts/FIQs
as well? I couldn't find it.

Appreciate your clarifications about that, thanks again.
Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
