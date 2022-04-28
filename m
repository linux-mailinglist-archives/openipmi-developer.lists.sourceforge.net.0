Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9CB513A7C
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 18:57:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nk7SP-0004Ye-43; Thu, 28 Apr 2022 16:57:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <deller@gmx.de>) id 1nk7SO-0004YY-1L
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Apr 2022 16:57:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qPmPtkvexOMadInTANC7BdzvVBSW8aZDkpoMsv2B6ZM=; b=mcC5OkiTPv8qWA9gCnNblTYoZd
 qGEZG/ZV09YnN3RFzoj0+QMAbWsJtordt4q2wyQZy/XlE7tDAhb8E2JYa5MX+iHqPgIrUgftixszf
 Ph8hV2Q7kzjOQ9UBioQr1KFNSAc5St3oc8ph8J/eEz70Lh8C+PPekfoK+h2eJdovaHAs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qPmPtkvexOMadInTANC7BdzvVBSW8aZDkpoMsv2B6ZM=; b=KCf/B/vMn2JGFO0TbVkTZPnGLA
 qZyJYYlqu8/Yxp8/xqvZWaRgPPu0ITIZb90L0TJ4GCLMn2sqJ0QD1aa4+oOklk/aQHoGJzK1YdvIj
 ffKomm2eqPDxMrHabwBBW/hDQGJ0JAw5NEDPYq+VquPBOQKS6uG1k6Fje2wZC1u1ZAgc=;
Received: from mout.gmx.net ([212.227.15.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nk7SN-00CyKu-CH
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Apr 2022 16:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1651164963;
 bh=DUb16bHT8ZVVcSBzzE8lnieko2RHZpG2zbwsEWdWo2c=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=TrwFfhoA2P1jqiZSh6qbThQbWQ3kajZ2U+JQrRL/jSZxckwFV1BopRKv6DRaeQSKC
 DM8QpY2fv9fsoSq055uYb4MCMz8e9HvG+guo2m9xr29cJoYbxYguo2PwZIKFp/JXdB
 qy9XbYXMKcmj9vbKxczpPpGqEow6LzKi+qj1B+ao=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.133.159]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MzyuS-1o6TNU3b1S-00x2R3; Thu, 28
 Apr 2022 18:56:03 +0200
Message-ID: <6a7c924a-54a9-c5ea-8a9d-3ea92987b436@gmx.de>
Date: Thu, 28 Apr 2022 18:55:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-13-gpiccoli@igalia.com>
From: Helge Deller <deller@gmx.de>
In-Reply-To: <20220427224924.592546-13-gpiccoli@igalia.com>
X-Provags-ID: V03:K1:5vdTXh07+igNuefls5XBW8Vnc+iEgtAi7WYk6EGDKuqY95FwGMe
 QwcWZKzUaEoh4UB+55vjZve/tYEaItgGsgQfOqHuHHkvtwYyxsf6YShgZsftQKYSmO6WQ+T
 ZC1GiQE33MbntUGomNddrKZxDF5sJxGJRqGlvPVNWYXBnGaRnQV/WvjdEKXY9QfAk5iDfpf
 2SF7pYcym4psStLDUUMNQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:seIPaj7dpZM=:yycTg0fvdDhrITiv3IZXzI
 e4yFHTYHbrGUy0XcNvNSnWURkRH0CwdNhQ3CWNfifJgMcKrsF971kE1ZPU9NMQWdlbTy3YHHQ
 kdbLaclaoLvW+e4KLLE5yocf48/EeAYglXhY84PxWcp1QGdF7y7nXLElZka6kp2R0F8+61JyB
 loph7JvlvHMoA0h4saDhDgOi28CBTeWf2mZxC+/EkMY8v85s5wN3/znVOlOIi2kLzQZEdEUxg
 qZqRAEH0zpZWVc5jenddLnwtNUslbH1ysbnT6Jz+8m3SINHv4Rwqo8qzXPYlIEhtABEOB2CCo
 zGH68oxcPKpqrqbFPSUrvmevYIsFthSN4Qa4ESwcyflnmJb/H2yYOm3idKBPcHZoAc7MXpKFp
 RR3P6Q1355mAy9N9Htg1IQRALV21oxx1PunXwbHOYiOH77jvrab76cf+pliKkaIi4EdHQpQqw
 9mxPXAGH7PZiMiQ7xVCBiONFGbdiXxNWW9WgP8A6pz6E89Sx90IwrTRc9D73bLfwpGwDmjWxi
 fFfVa4k8dmCqUPhBM1VhxPpxNRnj9QzEWrSQ0xThSfPtnfKEaiZ6CAhESljw6d2UOOHcDSLiC
 pYk2Il0xe7DktL7r83T2I0B8fYcU06QnK7MXlbmtGkMbQFBGucQc+IB7UEgTcN0uT8ZaS6/FI
 jkfGMBIY2eSkyrlErzq+vnajUsa0b9zENmsHS55RE7h43gLxmwE2UNFRUH8bWmdFhfJcUWhCo
 0TAcvRyne9VEKfs0HrQjTEdgbmSa875UQ1egzran3Xhi4XGH8Atz9id4q//uvXHDPEYGUcpM1
 1jCttDZecf4rq/B12RMkoMxP6zY3FZKwK7quDBpUSTid+jJEDxaXtx0XaeJ0Hg0rDMgviRyZ9
 HzUcPocKiz/LqCSxQKJ+5LacyVgyzC2Eg/QV5UE+RmBe/a0+mK1ccbKXN/YmWVo5xcoOe11r/
 LQC+womcGp8ubOddU8soGYLdecjhj+rpnt5TdzsPY9fawi7HlwarnA+ConVoG4a/SWDHYon/e
 QtxJhYG5A/NQ3aDfGGrPKFQkR4D9mAqQmSL7oHO9wv65NzEickiapaFqe4ZYqD4oBbohP/rOw
 OHyJm5CjSYyJJQ=
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/28/22 00:49, Guilherme G. Piccoli wrote: > The panic
 notifiers' callbacks execute in an atomic context, with > interrupts/preemption
 disabled, and all CPUs not running the panic > function are of [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [deller[at]gmx.de]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nk7SN-00CyKu-CH
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
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 4/28/22 00:49, Guilherme G. Piccoli wrote:
> The panic notifiers' callbacks execute in an atomic context, with
> interrupts/preemption disabled, and all CPUs not running the panic
> function are off, so it's very dangerous to wait on a regular
> spinlock, there's a risk of deadlock.
>
> This patch refactors the panic notifier of parisc/power driver
> to make use of spin_trylock - for that, we've added a second
> version of the soft-power function. Also, some comments were
> reorganized and trailing white spaces, useless header inclusion
> and blank lines were removed.
>
> Cc: Helge Deller <deller@gmx.de>
> Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>

You may add:
Acked-by: Helge Deller <deller@gmx.de> # parisc

Helge


> ---
>  arch/parisc/include/asm/pdc.h |  1 +
>  arch/parisc/kernel/firmware.c | 27 +++++++++++++++++++++++----
>  drivers/parisc/power.c        | 17 ++++++++++-------
>  3 files changed, 34 insertions(+), 11 deletions(-)
>
> diff --git a/arch/parisc/include/asm/pdc.h b/arch/parisc/include/asm/pdc.h
> index b643092d4b98..7a106008e258 100644
> --- a/arch/parisc/include/asm/pdc.h
> +++ b/arch/parisc/include/asm/pdc.h
> @@ -83,6 +83,7 @@ int pdc_do_firm_test_reset(unsigned long ftc_bitmap);
>  int pdc_do_reset(void);
>  int pdc_soft_power_info(unsigned long *power_reg);
>  int pdc_soft_power_button(int sw_control);
> +int pdc_soft_power_button_panic(int sw_control);
>  void pdc_io_reset(void);
>  void pdc_io_reset_devices(void);
>  int pdc_iodc_getc(void);
> diff --git a/arch/parisc/kernel/firmware.c b/arch/parisc/kernel/firmware.c
> index 6a7e315bcc2e..0e2f70b592f4 100644
> --- a/arch/parisc/kernel/firmware.c
> +++ b/arch/parisc/kernel/firmware.c
> @@ -1232,15 +1232,18 @@ int __init pdc_soft_power_info(unsigned long *power_reg)
>  }
>
>  /*
> - * pdc_soft_power_button - Control the soft power button behaviour
> - * @sw_control: 0 for hardware control, 1 for software control
> + * pdc_soft_power_button{_panic} - Control the soft power button behaviour
> + * @sw_control: 0 for hardware control, 1 for software control
>   *
>   *
>   * This PDC function places the soft power button under software or
>   * hardware control.
> - * Under software control the OS may control to when to allow to shut
> - * down the system. Under hardware control pressing the power button
> + * Under software control the OS may control to when to allow to shut
> + * down the system. Under hardware control pressing the power button
>   * powers off the system immediately.
> + *
> + * The _panic version relies in spin_trylock to prevent deadlock
> + * on panic path.
>   */
>  int pdc_soft_power_button(int sw_control)
>  {
> @@ -1254,6 +1257,22 @@ int pdc_soft_power_button(int sw_control)
>  	return retval;
>  }
>
> +int pdc_soft_power_button_panic(int sw_control)
> +{
> +	int retval;
> +	unsigned long flags;
> +
> +	if (!spin_trylock_irqsave(&pdc_lock, flags)) {
> +		pr_emerg("Couldn't enable soft power button\n");
> +		return -EBUSY; /* ignored by the panic notifier */
> +	}
> +
> +	retval = mem_pdc_call(PDC_SOFT_POWER, PDC_SOFT_POWER_ENABLE, __pa(pdc_result), sw_control);
> +	spin_unlock_irqrestore(&pdc_lock, flags);
> +
> +	return retval;
> +}
> +
>  /*
>   * pdc_io_reset - Hack to avoid overlapping range registers of Bridges devices.
>   * Primarily a problem on T600 (which parisc-linux doesn't support) but
> diff --git a/drivers/parisc/power.c b/drivers/parisc/power.c
> index 456776bd8ee6..8512884de2cf 100644
> --- a/drivers/parisc/power.c
> +++ b/drivers/parisc/power.c
> @@ -37,7 +37,6 @@
>  #include <linux/module.h>
>  #include <linux/init.h>
>  #include <linux/kernel.h>
> -#include <linux/notifier.h>
>  #include <linux/panic_notifier.h>
>  #include <linux/reboot.h>
>  #include <linux/sched/signal.h>
> @@ -175,16 +174,21 @@ static void powerfail_interrupt(int code, void *x)
>
>
>
> -/* parisc_panic_event() is called by the panic handler.
> - * As soon as a panic occurs, our tasklets above will not be
> - * executed any longer. This function then re-enables the
> - * soft-power switch and allows the user to switch off the system
> +/*
> + * parisc_panic_event() is called by the panic handler.
> + *
> + * As soon as a panic occurs, our tasklets above will not
> + * be executed any longer. This function then re-enables
> + * the soft-power switch and allows the user to switch off
> + * the system. We rely in pdc_soft_power_button_panic()
> + * since this version spin_trylocks (instead of regular
> + * spinlock), preventing deadlocks on panic path.
>   */
>  static int parisc_panic_event(struct notifier_block *this,
>  		unsigned long event, void *ptr)
>  {
>  	/* re-enable the soft-power switch */
> -	pdc_soft_power_button(0);
> +	pdc_soft_power_button_panic(0);
>  	return NOTIFY_DONE;
>  }
>
> @@ -193,7 +197,6 @@ static struct notifier_block parisc_panic_block = {
>  	.priority	= INT_MAX,
>  };
>
> -
>  static int __init power_init(void)
>  {
>  	unsigned long ret;



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
