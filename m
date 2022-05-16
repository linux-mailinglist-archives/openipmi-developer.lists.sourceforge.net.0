Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DA452880F
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 17:07:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqcKA-0002au-I0; Mon, 16 May 2022 15:07:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nqcK7-0002aU-5I
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 15:07:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x8rylV2fo2RhFyw7lXZ7iRi1TUSl/qSAgQ1QFQa6Swk=; b=aQ6o+ZKPbbpLYoMhpXKD9YNb9q
 WNnJAIBfaSU+G0xoIFWb0e4oLjIW6jGkYrXclWyNeWNlv+UVoEPEOeTLH7Ach4fNdjcwJvAW0I/7P
 WvaBDC0I+EeEKjPjoGg9MAfNZVVMze/nnR33QZqDqXuelK4Qubvmcr5dJjKxN234pvA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x8rylV2fo2RhFyw7lXZ7iRi1TUSl/qSAgQ1QFQa6Swk=; b=ecBQ2/IJqDP7GpQC9P5iI24PFV
 ykRKmu+iPlngYxIkn0ywbjh/MZ4kXNnYMvNekp34jjNC47JBppYMcaaRLg/QaxIvRdVPvmp9dDWmL
 VBEb35pHSQWUQpHYZFfZDOKKkGlS3kFpJ0SeR6wULhXCgU4JoFfFPQgEkZRkClLIxrrc=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nqcK3-0002Cn-Hk
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 15:07:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x8rylV2fo2RhFyw7lXZ7iRi1TUSl/qSAgQ1QFQa6Swk=; b=feXctn9xVfAtMOxpqtYyQ3CA85
 BjdcLwwe8TiMsRw2fUykvtPuvzY6hmKnTuAYE+A0XsmmVYSLQ/kcthiUMBKg0mNjJ1yc4l+lLSsmf
 USmCbBkmQnOZm2iGOSrx6Rl0cCpZ73ILK767ZxXmwm6a3QHv/+OS7mfra0PYCo9fNU1O9VQyfm4pw
 6HrCZSPKvKswSfp/Eu6sagLk3Urn9HpvONKk/wFmV32LKFF9WaILoOgpFS5qfU8S7XCa8c/aUXIoQ
 86eaCmPOCcjnQf8OfgMGzWfOoSFt/jwGca1nP55u94yjF/tPVCKn3Ik3vagLqYanseWDcV4ZXGkRO
 T9pShFkw==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nqcJI-006nIW-Cg; Mon, 16 May 2022 17:07:00 +0200
Message-ID: <ad082ce7-db50-13bb-3dbb-9b595dfa78be@igalia.com>
Date: Mon, 16 May 2022 12:06:17 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>, David Gow <davidgow@google.com>,
 Evan Green <evgreen@chromium.org>, Julius Werner <jwerner@chromium.org>,
 Scott Branden <scott.branden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Sebastian Reichel <sre@kernel.org>,
 linux-pm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com> <YoJZVZl/MH0KiE/J@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YoJZVZl/MH0KiE/J@alley>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks for the review! I agree with the blinking stuff, I
 can rework and add all LED/blinking stuff into the loop list, it does make
 sense. I'll comment a bit in the others below... On 16/05/2022 11:01, Petr
 Mladek wrote: > [...] >> --- a/arch/mips/sgi-ip22/ip22-reset.c >> +++
 b/arch/mips/sgi-ip22/ip22-reset.c
 >> @@ -195,7 +195,7 @@ static int __init reboot_setup(void) >> } >> >> [...]
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nqcK3-0002Cn-Hk
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 Markus Mayer <mmayer@broadcom.com>, gregkh@linuxfoundation.org,
 peterz@infradead.org, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Michael Ellerman <mpe@ellerman.id.au>, alejandro.j.jimenez@oracle.com,
 linux-remoteproc@vger.kernel.org, feng.tang@intel.com,
 Vasily Gorbik <gor@linux.ibm.com>, linux-mips@vger.kernel.org,
 hidehiro.kawai.ez@hitachi.com, Paul Mackerras <paulus@samba.org>,
 Justin Chen <justinpopo6@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 sparclinux@vger.kernel.org, Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Doug Berger <opendmb@gmail.com>,
 mikelley@microsoft.com, john.ogness@linutronix.de, bhe@redhat.com,
 corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org,
 Dexuan Cui <decui@microsoft.com>, zhenwei pi <pizhenwei@bytedance.com>,
 Ard Biesheuvel <ardb@kernel.org>, mingo@redhat.com, stern@rowland.harvard.edu,
 Hari Bathini <hbathini@linux.ibm.com>, xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, dyoung@redhat.com,
 Heiko Carstens <hca@linux.ibm.com>, vgoyal@redhat.com,
 Sven Schnelle <svens@linux.ibm.com>, Andrea Parri <parri.andrea@gmail.com>,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, keescook@chromium.org, arnd@arndb.de,
 Mihai Carabas <mihai.carabas@oracle.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Shile Zhang <shile.zhang@linux.alibaba.com>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org,
 Wang ShaoBo <bobo.shaobowang@huawei.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, bp@alien8.de,
 Nicholas Piggin <npiggin@gmail.com>, luto@kernel.org,
 linux-tegra@vger.kernel.org, Stephen Hemminger <sthemmin@microsoft.com>,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, Lee Jones <lee.jones@linaro.org>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, akpm@linux-foundation.org,
 Brian Norris <computersforpeace@gmail.com>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Thanks for the review!

I agree with the blinking stuff, I can rework and add all LED/blinking
stuff into the loop list, it does make sense. I'll comment a bit in the
others below...

On 16/05/2022 11:01, Petr Mladek wrote:
> [...]
>> --- a/arch/mips/sgi-ip22/ip22-reset.c
>> +++ b/arch/mips/sgi-ip22/ip22-reset.c
>> @@ -195,7 +195,7 @@ static int __init reboot_setup(void)
>>  	}
>>  
>>  	timer_setup(&blink_timer, blink_timeout, 0);
>> -	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
>> +	atomic_notifier_chain_register(&panic_hypervisor_list, &panic_block);
> 
> This notifier enables blinking. It is not much safe. It calls
> mod_timer() that takes a lock internally.
> 
> This kind of functionality should go into the last list called
> before panic() enters the infinite loop. IMHO, all the blinking
> stuff should go there.
> [...] 
>> --- a/arch/mips/sgi-ip32/ip32-reset.c
>> +++ b/arch/mips/sgi-ip32/ip32-reset.c
>> @@ -145,7 +144,7 @@ static __init int ip32_reboot_setup(void)
>>  	pm_power_off = ip32_machine_halt;
>>  
>>  	timer_setup(&blink_timer, blink_timeout, 0);
>> -	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
>> +	atomic_notifier_chain_register(&panic_hypervisor_list, &panic_block);
> 
> Same here. Should be done only before the "loop".
> [...] 

Ack.


>> --- a/drivers/firmware/google/gsmi.c
>> +++ b/drivers/firmware/google/gsmi.c
>> @@ -1034,7 +1034,7 @@ static __init int gsmi_init(void)
>>  
>>  	register_reboot_notifier(&gsmi_reboot_notifier);
>>  	register_die_notifier(&gsmi_die_notifier);
>> -	atomic_notifier_chain_register(&panic_notifier_list,
>> +	atomic_notifier_chain_register(&panic_hypervisor_list,
>>  				       &gsmi_panic_notifier);
> 
> I am not sure about this one. It looks like some logging or
> pre_reboot stuff.
> 

Disagree here. I'm looping Google maintainers, so they can comment.
(CCed Evan, David, Julius)

This notifier is clearly a hypervisor notification mechanism. I've fixed
a locking stuff there (in previous patch), I feel it's low-risk but even
if it's mid-risk, the class of such callback remains a perfect fit with
the hypervisor list IMHO.


> [...] 
>> --- a/drivers/leds/trigger/ledtrig-activity.c
>> +++ b/drivers/leds/trigger/ledtrig-activity.c
>> @@ -247,7 +247,7 @@ static int __init activity_init(void)
>>  	int rc = led_trigger_register(&activity_led_trigger);
>>  
>>  	if (!rc) {
>> -		atomic_notifier_chain_register(&panic_notifier_list,
>> +		atomic_notifier_chain_register(&panic_hypervisor_list,
>>  					       &activity_panic_nb);
> 
> The notifier is trivial. It just sets a variable.
> 
> But still, it is about blinking and should be done
> in the last "loop" list.
> 
> 
>>  		register_reboot_notifier(&activity_reboot_nb);
>>  	}
>> --- a/drivers/leds/trigger/ledtrig-heartbeat.c
>> +++ b/drivers/leds/trigger/ledtrig-heartbeat.c
>> @@ -190,7 +190,7 @@ static int __init heartbeat_trig_init(void)
>>  	int rc = led_trigger_register(&heartbeat_led_trigger);
>>  
>>  	if (!rc) {
>> -		atomic_notifier_chain_register(&panic_notifier_list,
>> +		atomic_notifier_chain_register(&panic_hypervisor_list,
>>  					       &heartbeat_panic_nb);
> 
> Same here. Blinking => loop list.

Ack.


>> [...]
>> diff --git a/drivers/misc/bcm-vk/bcm_vk_dev.c b/drivers/misc/bcm-vk/bcm_vk_dev.c
>> index a16b99bdaa13..d9d5199cdb2b 100644
>> --- a/drivers/misc/bcm-vk/bcm_vk_dev.c
>> +++ b/drivers/misc/bcm-vk/bcm_vk_dev.c
>> @@ -1446,7 +1446,7 @@ static int bcm_vk_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>  
>>  	/* register for panic notifier */
>>  	vk->panic_nb.notifier_call = bcm_vk_on_panic;
>> -	err = atomic_notifier_chain_register(&panic_notifier_list,
>> +	err = atomic_notifier_chain_register(&panic_hypervisor_list,
>>  					     &vk->panic_nb);
> 
> It seems to reset some hardware or so. IMHO, it should go into the
> pre-reboot list.

Mixed feelings here, I'm looping Broadcom maintainers to comment.
(CC Scott and Broadcom list)

I'm afraid it breaks kdump if this device is not reset beforehand - it's
a doorbell write, so not high risk I think...

But in case the not-reset device can be probed normally in kdump kernel,
then I'm fine in moving this to the reboot list! I don't have the HW to
test myself.


> [...]
>> --- a/drivers/power/reset/ltc2952-poweroff.c
>> +++ b/drivers/power/reset/ltc2952-poweroff.c
>> @@ -279,7 +279,7 @@ static int ltc2952_poweroff_probe(struct platform_device *pdev)
>>  	pm_power_off = ltc2952_poweroff_kill;
>>  
>>  	data->panic_notifier.notifier_call = ltc2952_poweroff_notify_panic;
>> -	atomic_notifier_chain_register(&panic_notifier_list,
>> +	atomic_notifier_chain_register(&panic_hypervisor_list,
>>  				       &data->panic_notifier);
> 
> I looks like this somehow triggers the reboot. IMHO, it should go
> into the pre_reboot list.

Mixed feeling again here - CCing the maintainers for comments (Sebastian
/ PM folks).

This is setting a variable only, and once it's set (data->kernel_panic
is the bool's name), it just bails out the IRQ handler and a timer
setting - this timer seems kinda tricky, so bailing out ASAP makes sense
IMHO.

But my mixed feeling comes from the fact this notifier really is not a
fit to any list - it's just a "watchdog"/device quiesce in some form.
Since it's very low-risk (IIUC), I've put it here.


> [...]
>> --- a/drivers/soc/bcm/brcmstb/pm/pm-arm.c
>> +++ b/drivers/soc/bcm/brcmstb/pm/pm-arm.c
>> @@ -814,7 +814,7 @@ static int brcmstb_pm_probe(struct platform_device *pdev)
>>  		goto out;
>>  	}
>>  
>> -	atomic_notifier_chain_register(&panic_notifier_list,
>> +	atomic_notifier_chain_register(&panic_hypervisor_list,
>>  				       &brcmstb_pm_panic_nb);
> 
> I am not sure about this one. It instruct some HW to preserve DRAM.
> IMHO, it better fits into pre_reboot category but I do not have
> strong opinion.

Disagree here, I'm CCing Florian for information.

This notifier preserves RAM so it's *very interesting* if we have
kmsg_dump() for example, but maybe might be also relevant in case kdump
kernel is configured to store something in a persistent RAM (then,
without this notifier, after kdump reboots the system data would be lost).

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
