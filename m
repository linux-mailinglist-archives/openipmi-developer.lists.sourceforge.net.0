Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CA3514D42
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 16:36:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkRjW-00010i-Gp; Fri, 29 Apr 2022 14:36:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1nkRjI-00010P-Sj
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:36:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZdZBPtTkXvskvklO0DqGHW3vJ6Arb57ZyicMdsmwPPs=; b=gBD4OQAZ6H8A+leOSI8vw/+ANJ
 NuAEoYI0JpQHELE0bl7yS0EvxbJtPuvUTBuQnAEAGPqz5tplgSaZCnnzXRRMi88UnyCpxI46Nzo9v
 gGEQPny30NrB3gVzMC/wfR2Ns7REx9GzBcC4yjiuG5NtzVj1N0ZDx1gDeCvw9++mayz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZdZBPtTkXvskvklO0DqGHW3vJ6Arb57ZyicMdsmwPPs=; b=OJgPbACFLV9HBbJtZTd1nGfEN2
 hN2SqgKKQztwUWxBCOFk2yiTbQxokTjE5cem7XawSODQNyKxyPv4kqe+U+xVmAJkr70kWV090PMY9
 XxvOZJivUAOM85aAjkxnxv6lm5KabOvXCCqM/aYiv+3VQnfbsS37AfUtEAUJtWoaCD+o=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkRjF-0006MX-2n
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:36:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZdZBPtTkXvskvklO0DqGHW3vJ6Arb57ZyicMdsmwPPs=; b=Id0YxwZLmWV943xSSctc382COx
 slYd+Mbgd8mluBGRTtubiqJcFH7Jw+KCfrIBUuJ6IBjkEi3jycQJ/GZIWCNzfYdJZGxOzIKlAq9i5
 NGU7dMo+j6aXXuC9zPnllvKUmp4j7d1NBQPsBNjzH1goO9ZNvF9j+05V5SxGqrz8IpFC/ke6Hqou9
 ZUhvlX5vvgSwWpU57PqA3cf0RcC09NkmKHiXH92FbdJDx27V/PJs6cBfrjjyUhrMtQCOhvF+z0Tsu
 zF1ocWG4HwYZ0G6pmdbbbK4PGRnRNWBCGP+4DKIndhzsOY9kfvz7NjpBrTKt1RM1gSIvJ0Gc9QwYA
 dmc3mStA==;
Received: from [179.113.53.197] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1nkRiK-0009WD-3O; Fri, 29 Apr 2022 16:35:20 +0200
Message-ID: <4a7d9670-92f8-3e12-a619-aaa64adca093@igalia.com>
Date: Fri, 29 Apr 2022 11:34:51 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Helge Deller <deller@gmx.de>, akpm@linux-foundation.org, bhe@redhat.com,
 pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-13-gpiccoli@igalia.com>
 <6a7c924a-54a9-c5ea-8a9d-3ea92987b436@gmx.de>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <6a7c924a-54a9-c5ea-8a9d-3ea92987b436@gmx.de>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 28/04/2022 13:55, Helge Deller wrote: > [...] > You may
 add: > Acked-by: Helge Deller <deller@gmx.de> # parisc > > Helge Thanks Helge, 
 added! Cheers, Guilherme 
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
X-Headers-End: 1nkRjF-0006MX-2n
Subject: Re: [Openipmi-developer] [PATCH 12/30] parisc: Replace regular
 spinlock with spin_trylock on panic path
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
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 hidehiro.kawai.ez@hitachi.com, sparclinux@vger.kernel.org, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 mikelley@microsoft.com, john.ogness@linutronix.de, corbet@lwn.net,
 paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, linux-edac@vger.kernel.org, jgross@suse.com,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 28/04/2022 13:55, Helge Deller wrote:
> [...]
> You may add:
> Acked-by: Helge Deller <deller@gmx.de> # parisc
> 
> Helge

Thanks Helge, added!
Cheers,


Guilherme

> 
> 
>> ---
>>  arch/parisc/include/asm/pdc.h |  1 +
>>  arch/parisc/kernel/firmware.c | 27 +++++++++++++++++++++++----
>>  drivers/parisc/power.c        | 17 ++++++++++-------
>>  3 files changed, 34 insertions(+), 11 deletions(-)
>>
>> diff --git a/arch/parisc/include/asm/pdc.h b/arch/parisc/include/asm/pdc.h
>> index b643092d4b98..7a106008e258 100644
>> --- a/arch/parisc/include/asm/pdc.h
>> +++ b/arch/parisc/include/asm/pdc.h
>> @@ -83,6 +83,7 @@ int pdc_do_firm_test_reset(unsigned long ftc_bitmap);
>>  int pdc_do_reset(void);
>>  int pdc_soft_power_info(unsigned long *power_reg);
>>  int pdc_soft_power_button(int sw_control);
>> +int pdc_soft_power_button_panic(int sw_control);
>>  void pdc_io_reset(void);
>>  void pdc_io_reset_devices(void);
>>  int pdc_iodc_getc(void);
>> diff --git a/arch/parisc/kernel/firmware.c b/arch/parisc/kernel/firmware.c
>> index 6a7e315bcc2e..0e2f70b592f4 100644
>> --- a/arch/parisc/kernel/firmware.c
>> +++ b/arch/parisc/kernel/firmware.c
>> @@ -1232,15 +1232,18 @@ int __init pdc_soft_power_info(unsigned long *power_reg)
>>  }
>>
>>  /*
>> - * pdc_soft_power_button - Control the soft power button behaviour
>> - * @sw_control: 0 for hardware control, 1 for software control
>> + * pdc_soft_power_button{_panic} - Control the soft power button behaviour
>> + * @sw_control: 0 for hardware control, 1 for software control
>>   *
>>   *
>>   * This PDC function places the soft power button under software or
>>   * hardware control.
>> - * Under software control the OS may control to when to allow to shut
>> - * down the system. Under hardware control pressing the power button
>> + * Under software control the OS may control to when to allow to shut
>> + * down the system. Under hardware control pressing the power button
>>   * powers off the system immediately.
>> + *
>> + * The _panic version relies in spin_trylock to prevent deadlock
>> + * on panic path.
>>   */
>>  int pdc_soft_power_button(int sw_control)
>>  {
>> @@ -1254,6 +1257,22 @@ int pdc_soft_power_button(int sw_control)
>>  	return retval;
>>  }
>>
>> +int pdc_soft_power_button_panic(int sw_control)
>> +{
>> +	int retval;
>> +	unsigned long flags;
>> +
>> +	if (!spin_trylock_irqsave(&pdc_lock, flags)) {
>> +		pr_emerg("Couldn't enable soft power button\n");
>> +		return -EBUSY; /* ignored by the panic notifier */
>> +	}
>> +
>> +	retval = mem_pdc_call(PDC_SOFT_POWER, PDC_SOFT_POWER_ENABLE, __pa(pdc_result), sw_control);
>> +	spin_unlock_irqrestore(&pdc_lock, flags);
>> +
>> +	return retval;
>> +}
>> +
>>  /*
>>   * pdc_io_reset - Hack to avoid overlapping range registers of Bridges devices.
>>   * Primarily a problem on T600 (which parisc-linux doesn't support) but
>> diff --git a/drivers/parisc/power.c b/drivers/parisc/power.c
>> index 456776bd8ee6..8512884de2cf 100644
>> --- a/drivers/parisc/power.c
>> +++ b/drivers/parisc/power.c
>> @@ -37,7 +37,6 @@
>>  #include <linux/module.h>
>>  #include <linux/init.h>
>>  #include <linux/kernel.h>
>> -#include <linux/notifier.h>
>>  #include <linux/panic_notifier.h>
>>  #include <linux/reboot.h>
>>  #include <linux/sched/signal.h>
>> @@ -175,16 +174,21 @@ static void powerfail_interrupt(int code, void *x)
>>
>>
>>
>> -/* parisc_panic_event() is called by the panic handler.
>> - * As soon as a panic occurs, our tasklets above will not be
>> - * executed any longer. This function then re-enables the
>> - * soft-power switch and allows the user to switch off the system
>> +/*
>> + * parisc_panic_event() is called by the panic handler.
>> + *
>> + * As soon as a panic occurs, our tasklets above will not
>> + * be executed any longer. This function then re-enables
>> + * the soft-power switch and allows the user to switch off
>> + * the system. We rely in pdc_soft_power_button_panic()
>> + * since this version spin_trylocks (instead of regular
>> + * spinlock), preventing deadlocks on panic path.
>>   */
>>  static int parisc_panic_event(struct notifier_block *this,
>>  		unsigned long event, void *ptr)
>>  {
>>  	/* re-enable the soft-power switch */
>> -	pdc_soft_power_button(0);
>> +	pdc_soft_power_button_panic(0);
>>  	return NOTIFY_DONE;
>>  }
>>
>> @@ -193,7 +197,6 @@ static struct notifier_block parisc_panic_block = {
>>  	.priority	= INT_MAX,
>>  };
>>
>> -
>>  static int __init power_init(void)
>>  {
>>  	unsigned long ret;
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
