Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB7252864E
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 16:02:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqbIj-0001A0-H7; Mon, 16 May 2022 14:02:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1nqbIi-00019u-Hl
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 14:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6xX/Xo1YcyoxhDGVtD+3aF7M9NKMVvtDcsL11SFSAQU=; b=GGZh3CnAbKX08CTGLs5s6nDXf+
 KNhkf444zTzAxJC3Z8DGFhz8EmtRCRImM6JdElwG5SJ5mOjOOzdLYYkLQ8ugOmAKlvXu0Q5NQ/eR0
 VLzTHl6Ot+hCyaOpVpjnnlbPMONeQI9mL3xDVjvwCwDnXBflnhE079BhSwZqvoMVElMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6xX/Xo1YcyoxhDGVtD+3aF7M9NKMVvtDcsL11SFSAQU=; b=OMO9RARZIqni5PzAgqp6u0Fq+A
 exHYcMLTP+plwNLvO34NOsDoE/QlO29Kajbik9DUNBtgXm82/VtFAV6KKsCkQodr/N1veN4edtaAf
 rfRpZRCL5CntDRallGn+NJgwX61oSBHoQUCQTp+fD7dfPf0hFHFqC141TWG+a+rHJfOw=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nqbIc-00HBEM-Ek
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 14:02:19 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out1.suse.de (Postfix) with ESMTP id 2362F21F5C;
 Mon, 16 May 2022 14:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652709720; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6xX/Xo1YcyoxhDGVtD+3aF7M9NKMVvtDcsL11SFSAQU=;
 b=UAEfoymfYf+QAbCzE3oYFS/LnW9rFBs924Unv93LKXY9GoxfXpJbDSZbNYQc1AwPujLxjA
 jmh7TvIJcQUwFXF0iE9L66PiKtfkKtU88t+hUCpM3m0czPO3TM37NQr+8KouKC5lf5Okex
 k2McswvfGUIvb+tozWKmApBRPL9ucl0=
Received: from suse.cz (unknown [10.100.201.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id D43112C141;
 Mon, 16 May 2022 14:01:57 +0000 (UTC)
Date: Mon, 16 May 2022 16:01:57 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <YoJZVZl/MH0KiE/J@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427224924.592546-20-gpiccoli@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 2022-04-27 19:49:13, Guilherme G. Piccoli wrote: >
 The goal of this new panic notifier is to allow its users to register >
 callbacks
 to run very early in the panic path. This aims hypervisor/FW [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
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
X-Headers-End: 1nqbIc-00HBEM-Ek
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
From: Petr Mladek via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Petr Mladek <pmladek@suse.com>
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
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 akpm@linux-foundation.org, linux-hyperv@vger.kernel.org,
 dave.hansen@linux.intel.com, linux-s390@vger.kernel.org,
 Stephen Hemminger <sthemmin@microsoft.com>, Vasily Gorbik <gor@linux.ibm.com>,
 vgoyal@redhat.com, Sven Schnelle <svens@linux.ibm.com>,
 Andrea Parri <parri.andrea@gmail.com>, linux-xtensa@linux-xtensa.org,
 john.ogness@linutronix.de, Scott Branden <scott.branden@broadcom.com>,
 coresight@lists.linaro.org, Florian Fainelli <f.fainelli@gmail.com>,
 Markus Mayer <mmayer@broadcom.com>, hidehiro.kawai.ez@hitachi.com,
 linux-arm-kernel@lists.infradead.org, kernel-dev@igalia.com,
 fabiomirmar@gmail.com, halves@canonical.com, alejandro.j.jimenez@oracle.com,
 feng.tang@intel.com, zhenwei pi <pizhenwei@bytedance.com>, will@kernel.org,
 Doug Berger <opendmb@gmail.com>, bhe@redhat.com, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, Evan Green <evgreen@chromium.org>,
 bcm-kernel-feedback-list@broadcom.com, Tianyu Lan <Tianyu.Lan@microsoft.com>,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-alpha@vger.kernel.org,
 Brian Norris <computersforpeace@gmail.com>,
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

On Wed 2022-04-27 19:49:13, Guilherme G. Piccoli wrote:
> The goal of this new panic notifier is to allow its users to register
> callbacks to run very early in the panic path. This aims hypervisor/FW
> notification mechanisms as well as simple LED functions, and any other
> simple and safe mechanism that should run early in the panic path; more
> dangerous callbacks should execute later.
> 
> For now, the patch is almost a no-op (although it changes a bit the
> ordering in which some panic notifiers are executed). In a subsequent
> patch, the panic path will be refactored, then the panic hypervisor
> notifiers will effectively run very early in the panic path.
> 
> We also defer documenting it all properly in the subsequent refactor
> patch. While at it, we removed some useless header inclusions and
> fixed some notifiers return too (by using the standard NOTIFY_DONE).

> --- a/arch/mips/sgi-ip22/ip22-reset.c
> +++ b/arch/mips/sgi-ip22/ip22-reset.c
> @@ -195,7 +195,7 @@ static int __init reboot_setup(void)
>  	}
>  
>  	timer_setup(&blink_timer, blink_timeout, 0);
> -	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
> +	atomic_notifier_chain_register(&panic_hypervisor_list, &panic_block);

This notifier enables blinking. It is not much safe. It calls
mod_timer() that takes a lock internally.

This kind of functionality should go into the last list called
before panic() enters the infinite loop. IMHO, all the blinking
stuff should go there.

>  
>  	return 0;
>  }
> diff --git a/arch/mips/sgi-ip32/ip32-reset.c b/arch/mips/sgi-ip32/ip32-reset.c
> index 18d1c115cd53..9ee1302c9d13 100644
> --- a/arch/mips/sgi-ip32/ip32-reset.c
> +++ b/arch/mips/sgi-ip32/ip32-reset.c
> @@ -145,7 +144,7 @@ static __init int ip32_reboot_setup(void)
>  	pm_power_off = ip32_machine_halt;
>  
>  	timer_setup(&blink_timer, blink_timeout, 0);
> -	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
> +	atomic_notifier_chain_register(&panic_hypervisor_list, &panic_block);

Same here. Should be done only before the "loop".

>  
>  	return 0;
>  }
> --- a/drivers/firmware/google/gsmi.c
> +++ b/drivers/firmware/google/gsmi.c
> @@ -1034,7 +1034,7 @@ static __init int gsmi_init(void)
>  
>  	register_reboot_notifier(&gsmi_reboot_notifier);
>  	register_die_notifier(&gsmi_die_notifier);
> -	atomic_notifier_chain_register(&panic_notifier_list,
> +	atomic_notifier_chain_register(&panic_hypervisor_list,
>  				       &gsmi_panic_notifier);

I am not sure about this one. It looks like some logging or
pre_reboot stuff.


>  
>  	printk(KERN_INFO "gsmi version " DRIVER_VERSION " loaded\n");
> --- a/drivers/leds/trigger/ledtrig-activity.c
> +++ b/drivers/leds/trigger/ledtrig-activity.c
> @@ -247,7 +247,7 @@ static int __init activity_init(void)
>  	int rc = led_trigger_register(&activity_led_trigger);
>  
>  	if (!rc) {
> -		atomic_notifier_chain_register(&panic_notifier_list,
> +		atomic_notifier_chain_register(&panic_hypervisor_list,
>  					       &activity_panic_nb);

The notifier is trivial. It just sets a variable.

But still, it is about blinking and should be done
in the last "loop" list.


>  		register_reboot_notifier(&activity_reboot_nb);
>  	}
> --- a/drivers/leds/trigger/ledtrig-heartbeat.c
> +++ b/drivers/leds/trigger/ledtrig-heartbeat.c
> @@ -190,7 +190,7 @@ static int __init heartbeat_trig_init(void)
>  	int rc = led_trigger_register(&heartbeat_led_trigger);
>  
>  	if (!rc) {
> -		atomic_notifier_chain_register(&panic_notifier_list,
> +		atomic_notifier_chain_register(&panic_hypervisor_list,
>  					       &heartbeat_panic_nb);

Same here. Blinking => loop list.

>  		register_reboot_notifier(&heartbeat_reboot_nb);
>  	}
> diff --git a/drivers/misc/bcm-vk/bcm_vk_dev.c b/drivers/misc/bcm-vk/bcm_vk_dev.c
> index a16b99bdaa13..d9d5199cdb2b 100644
> --- a/drivers/misc/bcm-vk/bcm_vk_dev.c
> +++ b/drivers/misc/bcm-vk/bcm_vk_dev.c
> @@ -1446,7 +1446,7 @@ static int bcm_vk_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	/* register for panic notifier */
>  	vk->panic_nb.notifier_call = bcm_vk_on_panic;
> -	err = atomic_notifier_chain_register(&panic_notifier_list,
> +	err = atomic_notifier_chain_register(&panic_hypervisor_list,
>  					     &vk->panic_nb);

It seems to reset some hardware or so. IMHO, it should go into the
pre-reboot list.


>  	if (err) {
>  		dev_err(dev, "Fail to register panic notifier\n");
> --- a/drivers/power/reset/ltc2952-poweroff.c
> +++ b/drivers/power/reset/ltc2952-poweroff.c
> @@ -279,7 +279,7 @@ static int ltc2952_poweroff_probe(struct platform_device *pdev)
>  	pm_power_off = ltc2952_poweroff_kill;
>  
>  	data->panic_notifier.notifier_call = ltc2952_poweroff_notify_panic;
> -	atomic_notifier_chain_register(&panic_notifier_list,
> +	atomic_notifier_chain_register(&panic_hypervisor_list,
>  				       &data->panic_notifier);

I looks like this somehow triggers the reboot. IMHO, it should go
into the pre_reboot list.

>  	dev_info(&pdev->dev, "probe successful\n");
>  
> --- a/drivers/soc/bcm/brcmstb/pm/pm-arm.c
> +++ b/drivers/soc/bcm/brcmstb/pm/pm-arm.c
> @@ -814,7 +814,7 @@ static int brcmstb_pm_probe(struct platform_device *pdev)
>  		goto out;
>  	}
>  
> -	atomic_notifier_chain_register(&panic_notifier_list,
> +	atomic_notifier_chain_register(&panic_hypervisor_list,
>  				       &brcmstb_pm_panic_nb);

I am not sure about this one. It instruct some HW to preserve DRAM.
IMHO, it better fits into pre_reboot category but I do not have
strong opinion.

>  
>  	pm_power_off = brcmstb_pm_poweroff;

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
