Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60698515778
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 23:57:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkYcD-0007TI-BV; Fri, 29 Apr 2022 21:57:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkYcB-0007TC-JK
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 21:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eS25PhwvZQoNO/vrdkaYeu8w1J4I4bLwd4ZTs99JyTA=; b=cVkf/p2HvGRQkjtQdBL77sHskd
 e+UYwhVnMp33lOSZVR7UaYQ1AZrmeKUHCl6qJ5pNkP/zLQi2cx4lteS9Ll+1hBx6l7/009vs6eGcQ
 FwXogOJ5T4td9eQ1fiMSt5pI2z0KGt7rIWp4toz3cBvgvqwyl2YYm91KZrZK0sKvI/hc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eS25PhwvZQoNO/vrdkaYeu8w1J4I4bLwd4ZTs99JyTA=; b=ltIWdqX6bpY+uqplIczsU0odmM
 DhTsPuTxQjRUD+hJo/v6A5LsXjg2FMsgOcKg/jm3fNQKVE0C1ycnYOY2w0xpN6OufoqjXM3zal1Zy
 Og+gCGBIQTbgEdJvafrXKEHL8YsmVRjr0VQt3mWKTcr/WvT4GXv3RzadE3Pwfuwy1zOI=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkYc8-00EHaG-Ky
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 21:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eS25PhwvZQoNO/vrdkaYeu8w1J4I4bLwd4ZTs99JyTA=; b=ECdoj8MPrPw94rqNJkzG67Xg6u
 5w3+r9FZKL3W6Sz5zRa77JB5F86agKTzGYxwlLLEiZXrXTSk2m+k2FuOzlO52C0njkoCAxgy+FOi4
 NbVcSL4Lztxu2l4Ffp2YNwJJ/Y8NKCykCEJYOFD8NTX9U/x1OlE0AF3cSiTkk6ArLGAdmnn9RzvKe
 +YDGf9dxyEhvGPz5vqubLFDl4xc7G7O1n7kxIDUk0ceOUg9ZGVixjcU3/TKND9q/DVjCWl1sG0kaE
 cUjiBbJ/0Gd+0GoqtFAQ2G5bnqvlp008GZC0sOTWOBCZAoUh5dk2HlkdBig7SM6f3egXphVF+FJ+M
 iEBg1fYA==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkYbf-00026w-BA; Fri, 29 Apr 2022 23:56:55 +0200
Message-ID: <32495ca6-d79a-a932-a8e3-19ef54c44c48@igalia.com>
Date: Fri, 29 Apr 2022 18:56:24 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Marc Zyngier <maz@kernel.org>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-3-gpiccoli@igalia.com> <87mtg392fm.wl-maz@kernel.org>
 <71d829c4-b280-7d6e-647d-79a1baf9408b@igalia.com>
 <Ymxcaqy6DwhoQrZT@shell.armlinux.org.uk>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <Ymxcaqy6DwhoQrZT@shell.armlinux.org.uk>
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 29/04/2022 18:45, Russell King (Oracle) wrote: > [...]
 >> Marc, I did some investigation in the code (and tried/failed in the ARM
 >> documentation as well heh), but this is still not 100% clear for [...]
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nkYc8-00EHaG-Ky
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
 feng.tang@intel.com, "Michael Kelley \(LINUX\)" <mikelley@microsoft.com>,
 hidehiro.kawai.ez@hitachi.com, sparclinux@vger.kernel.org, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 linux-mips@vger.kernel.org, dyoung@redhat.com, vgoyal@redhat.com,
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

On 29/04/2022 18:45, Russell King (Oracle) wrote:
> [...]
>> Marc, I did some investigation in the code (and tried/failed in the ARM
>> documentation as well heh), but this is still not 100% clear for me.
>>
>> You're saying IPI calls disable IRQs/FIQs by default in the the target
>> CPUs? Where does it happen? I'm a bit confused if this a processor
>> mechanism, or it's in code.
> 
> When we taken an IRQ, IRQs will be masked, FIQs will not. IPIs are
> themselves interrupts, so IRQs will be masked while the IPI is being
> processed. Therefore, there should be no need to re-disable the
> already disabled interrupts.
> 
>> But crash_smp_send_stop() is different, it seems to IPI the other CPUs
>> with the flag IPI_CALL_FUNC, which leads to calling
>> generic_smp_call_function_interrupt() - does it disable interrupts/FIQs
>> as well? I couldn't find it.
> 
> It's buried in the architecture behaviour. When the CPU takes an
> interrupt and jumps to the interrupt vector in the vectors page, it is
> architecturally defined that interrupts will be disabled. If they
> weren't architecturally disabled at this point, then as soon as the
> first instruction is processed (at the interrupt vector, likely a
> branch) the CPU would immediately take another jump to the interrupt
> vector, and this process would continue indefinitely, making interrupt
> handling utterly useless.
> 
> So, you won't find an explicit instruction in the code path from the
> vectors to the IPI handler that disables interrupts - because it's
> written into the architecture that this is what must happen.
> 
> IRQs are a lower priority than FIQs, so FIQs remain unmasked.
> 

Thanks a lot for the *great* explanation Russell, much appreciated.
So, this leads to the both following questions:

a) Shall we then change the patch to only disable FIQs, since it's panic
path and we don't want secondary CPUs getting interrupted, but only
spinning quietly "forever"?

b) How about cleaning ipi_cpu_stop() then, by dropping the call to
local_irq_disable() there, to avoid the double IRQ disabling?

Thanks,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
