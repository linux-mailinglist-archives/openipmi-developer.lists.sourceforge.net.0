Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8202652A86A
	for <lists+openipmi-developer@lfdr.de>; Tue, 17 May 2022 18:43:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nr0I7-0007ET-DI; Tue, 17 May 2022 16:43:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nr0I5-0007EN-T4
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 16:43:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=scD/9Z9PP3JtS/QbR0S82HRrb/qzzKD7mmsgRlJKv48=; b=bpo1yiRGUzrkwntQ3dRFekZzaW
 Dq2xpNfgCLJrVArLGz4nvpSgxpFFuD48fZ8w7B10luWM3RpMKbun6nbkNYCvQF6SF58/amZvCtHlu
 hQ8J/pyKmAydvnimalW2Lbxxilo2vAfI/xOVAhujc7fUEpeka/ForqFWwh8xCkmBVWcY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=scD/9Z9PP3JtS/QbR0S82HRrb/qzzKD7mmsgRlJKv48=; b=UnXDUxdehlHgeoHBeinDV49HSe
 JYUhea74iBcbbaQYZZy75cF1NR1Q/o9Qc5mo8LRn4rkWcBBRN/WDBX2CtWo71q7J19MG3p6Z7NsbE
 dZwswy6HZxKgIBn20lzaNAZff1gyv5tjPvWgk6mAA8+4wLW0oeDbPmKtRJ3UdJFrsx4E=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nr0I0-0002S4-8m
 for openipmi-developer@lists.sourceforge.net; Tue, 17 May 2022 16:43:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=scD/9Z9PP3JtS/QbR0S82HRrb/qzzKD7mmsgRlJKv48=; b=A0Wed33QPDatmI/wU05BORZ9n1
 0hhJk6U25fx6bbbZAsMcq0PkUqYkw6doFXVO3lE2gRlx4mNP2Gg+o2qX5D1iIed/eOGnpU07MiS7v
 johrL8ZXBr9bRs4m6YspjNjUrp3CRZWOwFXObkbK34aTXOqWVxjbnj+S21xz3SW3iyyzLS8il/lBE
 YgblTLXs216LyG4XvwA74bc/PHj8Q4o7WtYFZIjzCamKnOfAXbs0CZLburXLM75F/4BH78OE9Feno
 1CTSSOT/QCKGLXFRsMSKXpMjqSuNKxrbhetupOiCZ9xDYHRTskdd6CLiaYJY53xEUzZgCM24bzp0B
 WqYqJCVA==;
Received: from 200-161-159-120.dsl.telesp.net.br ([200.161.159.120]
 helo=[192.168.1.60]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nr0Hb-008gzd-4h; Tue, 17 May 2022 18:42:51 +0200
Message-ID: <d72b9aab-675c-ac89-b73a-b1de4a0b722d@igalia.com>
Date: Tue, 17 May 2022 13:42:06 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>, Scott Branden
 <scott.branden@broadcom.com>, Sebastian Reichel <sre@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com> <YoJZVZl/MH0KiE/J@alley>
 <ad082ce7-db50-13bb-3dbb-9b595dfa78be@igalia.com> <YoOpyW1+q+Z5as78@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoOpyW1+q+Z5as78@alley>
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 17/05/2022 10:57,
 Petr Mladek wrote: > [...] >>>> --- a/drivers/misc/bcm-vk/bcm_vk_dev.c
 >>>> +++ b/drivers/misc/bcm-vk/bcm_vk_dev.c >>>> @@ -1446, 7 +1446, 7 @@ static
 int bcm_vk_probe(struct pci_de [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nr0I0-0002S4-8m
Subject: Re: [Openipmi-developer] [PATCH 19/30] panic: Add the panic
 hypervisor notifier list
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Justin Chen <justinpopo6@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, stern@rowland.harvard.edu,
 xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, Nicholas Piggin <npiggin@gmail.com>,
 luto@kernel.org, Mihai Carabas <mihai.carabas@oracle.com>, tglx@linutronix.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 Sven Schnelle <svens@linux.ibm.com>, akpm@linux-foundation.org,
 linux-hyperv@vger.kernel.org, dave.hansen@linux.intel.com,
 linux-s390@vger.kernel.org, Stephen Hemminger <sthemmin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, vgoyal@redhat.com, mhiramat@kernel.org,
 Andrea Parri <parri.andrea@gmail.com>, linux-xtensa@linux-xtensa.org,
 john.ogness@linutronix.de, Markus Mayer <mmayer@broadcom.com>,
 hidehiro.kawai.ez@hitachi.com, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com, fabiomirmar@gmail.com, halves@canonical.com,
 alejandro.j.jimenez@oracle.com, feng.tang@intel.com,
 zhenwei pi <pizhenwei@bytedance.com>, will@kernel.org,
 Doug Berger <opendmb@gmail.com>, bhe@redhat.com, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, Evan Green <evgreen@chromium.org>,
 bcm-kernel-feedback-list@broadcom.com, Tianyu Lan <Tianyu.Lan@microsoft.com>,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, peterz@infradead.org,
 linux-remoteproc@vger.kernel.org, mikelley@microsoft.com,
 sparclinux@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-leds@vger.kernel.org, x86@kernel.org,
 mingo@redhat.com, dyoung@redhat.com, paulmck@kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Shile Zhang <shile.zhang@linux.alibaba.com>,
 Wang ShaoBo <bobo.shaobowang@huawei.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 David Gow <davidgow@google.com>, linux-tegra@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, Hari Bathini <hbathini@linux.ibm.com>,
 linux-edac@vger.kernel.org, jgross@suse.com, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 17/05/2022 10:57, Petr Mladek wrote:
> [...]
>>>> --- a/drivers/misc/bcm-vk/bcm_vk_dev.c
>>>> +++ b/drivers/misc/bcm-vk/bcm_vk_dev.c
>>>> @@ -1446,7 +1446,7 @@ static int bcm_vk_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>> [... snip ...]
>>> It seems to reset some hardware or so. IMHO, it should go into the
>>> pre-reboot list.
>>
>> Mixed feelings here, I'm looping Broadcom maintainers to comment.
>> (CC Scott and Broadcom list)
>>
>> I'm afraid it breaks kdump if this device is not reset beforehand - it's
>> a doorbell write, so not high risk I think...
>>
>> But in case the not-reset device can be probed normally in kdump kernel,
>> then I'm fine in moving this to the reboot list! I don't have the HW to
>> test myself.
> 
> Good question. Well, it if has to be called before kdump then
> even "hypervisor" list is a wrong place because is not always
> called before kdump.

Agreed! I'll defer that to Scott and Broadcom folks to comment.
If it's not strictly necessary, I'll happily move it to the reboot list.

If necessary, we could use the machine_crash_kexec() approach, but we'll
fall into the case arm64 doesn't support it and I'm not sure if this
device is available for arm - again a question for the maintainers.


>  [...]
>>>> --- a/drivers/power/reset/ltc2952-poweroff.c
>>>> +++ b/drivers/power/reset/ltc2952-poweroff.c
>> [...]
>> This is setting a variable only, and once it's set (data->kernel_panic
>> is the bool's name), it just bails out the IRQ handler and a timer
>> setting - this timer seems kinda tricky, so bailing out ASAP makes sense
>> IMHO.
> 
> IMHO, the timer informs the hardware that the system is still alive
> in the middle of panic(). If the timer is not working then the
> hardware (chip) will think that the system frozen in panic()
> and will power off the system. See the comments in
> drivers/power/reset/ltc2952-poweroff.c:
> [.... snip ...]
> IMHO, we really have to keep it alive until we reach the reboot stage.
> 
> Another question is how it actually works when the interrupts are
> disabled during panic() and the timer callbacks are not handled.

Agreed here! Guess I can move this one the reboot list, fine by me.
Unless PM folks think otherwise.


> [...]
>> Disagree here, I'm CCing Florian for information.
>>
>> This notifier preserves RAM so it's *very interesting* if we have
>> kmsg_dump() for example, but maybe might be also relevant in case kdump
>> kernel is configured to store something in a persistent RAM (then,
>> without this notifier, after kdump reboots the system data would be lost).
> 
> I see. It is actually similar problem as with
> drivers/firmware/google/gsmi.c.
> 
> I does similar things like kmsg_dump() so it should be called in
> the same location (after info notifier list and before kdump).
> 
> A solution might be to put it at these notifiers at the very
> end of the "info" list or make extra "dump" notifier list.

Here I still disagree. I've commented in the other response thread
(about Google gsmi) about the semantics of the hypervisor list, but
again: this list should contain callbacks that

(a) Should run early, _by default_ before a kdump;
(b) Communicate with the firmware/hypervisor in a "low-risk" way;

Imagine a scenario where users configure kdump kernel to save something
in a persistent form in DRAM - it'd be like a late pstore, in the next
kernel. This callback enables that, it's meant to inform FW "hey, panic
happened, please from now on don't clear the RAM in the next FW-reboot".
I don't see a reason to postpone that - let's see if the maintainers
have an opinion.

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
