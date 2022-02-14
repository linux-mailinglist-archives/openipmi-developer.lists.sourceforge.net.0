Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AEB4B5AFF
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Feb 2022 21:31:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nJi0n-0005Y1-PK; Mon, 14 Feb 2022 20:31:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1nJYpL-0000JE-Tk
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 10:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e/Wq7bOVgpxnbXQM61Exln6Ju2BaauDVhteCPddkxnA=; b=M/lRy4NzFBHsVY4G81VlcZcA1T
 tOytJyvKKXvRCtetpvaRQ89BnjQA+oQPGnd2mIPfdyZDVaIpba7dBJY8t8tAvg6QmHE5yzk4ColuW
 9ns4tObiSOZguw+Tg9macJD2pHnCYt68Sm04kwMWOY8FBvbClwLlphC8kF0x6kaY/9PI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e/Wq7bOVgpxnbXQM61Exln6Ju2BaauDVhteCPddkxnA=; b=F5LAxMM5bGewHGpyVV7IzptppC
 s7g30A/4ji/0CzFodiMnLkhrAo2svoh7KPxKu00VDsE1wB0JiqWogAnv0NozL1AnFdYdQ3s0k5aoQ
 1xy4fQmaazQ3fB9GwBgBgUxQ9XA8Ey1RDcsWypPfVstaOCE9HjZQyRaNAoI3aHkx/UsA=;
Received: from mxout03.lancloud.ru ([45.84.86.113])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nJYpF-001P9e-Ji
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 10:43:26 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout03.lancloud.ru 5C61B20EAFAD
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20220212201631.12648-1-s.shtylyov@omp.ru>
 <20220212201631.12648-2-s.shtylyov@omp.ru>
 <CAMuHMdUPxX7Tja6BCjEb4KDobNFPMcM66Fk7Z+VsO7pgb8JnjA@mail.gmail.com>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <41b49828-e0bc-3e7a-32d7-5ee41c778206@omp.ru>
Date: Mon, 14 Feb 2022 13:43:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUPxX7Tja6BCjEb4KDobNFPMcM66Fk7Z+VsO7pgb8JnjA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [192.168.11.198]
X-ClientProxiedBy: LFEXT02.lancloud.ru (fd00:f066::142) To
 LFEX1907.lancloud.ru (fd00:f066::207)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello! On 2/14/22 11:54 AM, Geert Uytterhoeven wrote: [...]
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nJYpF-001P9e-Ji
X-Mailman-Approved-At: Mon, 14 Feb 2022 20:31:49 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 1/2] platform: make
 platform_get_irq_optional() optional
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
Cc: Andrew Lunn <andrew@lunn.ch>, Ulf Hansson <ulf.hansson@linaro.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jiri Slaby <jirislaby@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 alsa-devel@alsa-project.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-phy@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, Miquel
 Raynal <miquel.raynal@bootlin.com>, Guenter
 Roeck <groeck@chromium.org>, linux-spi@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, openipmi-developer@lists.sourceforge.net,
 Peter Korsgaard <peter@korsgaard.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, kvm@vger.kernel.org,
 Kamal Dasu <kdasu.kdev@gmail.com>, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, platform-driver-x86@vger.kernel.org,
 linux-pwm@vger.kernel.org, Zha Qipeng <qipeng.zha@intel.com>,
 Corey Minyard <minyard@acm.org>, linux-pm@vger.kernel.org, Liam
 Girdwood <lgirdwood@gmail.com>, John Garry <john.garry@huawei.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi
 Iwai <tiwai@suse.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleksij Rempel <linux@rempel-privat.de>,
 linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello!

On 2/14/22 11:54 AM, Geert Uytterhoeven wrote:

[...]

>> This patch is based on the former Andy Shevchenko's patch:
>>
>> https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.shevchenko@linux.intel.com/
>>
>> Currently platform_get_irq_optional() returns an error code even if IRQ
>> resource simply has not been found.  It prevents the callers from being
>> error code agnostic in their error handling:
>>
>>         ret = platform_get_irq_optional(...);
>>         if (ret < 0 && ret != -ENXIO)
>>                 return ret; // respect deferred probe
>>         if (ret > 0)
>>                 ...we get an IRQ...
>>
>> All other *_optional() APIs seem to return 0 or NULL in case an optional
>> resource is not available.  Let's follow this good example, so that the
>> callers would look like:
>>
>>         ret = platform_get_irq_optional(...);
>>         if (ret < 0)
>>                 return ret;
>>         if (ret > 0)
>>                 ...we get an IRQ...
>>
>> Reported-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
>> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
>> ---
>> Changes in version 2:
> 
> Thanks for the update!
> 
>>  drivers/base/platform.c                  | 60 +++++++++++++++---------
> 
> The core change LGTM.

   Thanx! :-)

> I'm only looking at Renesas drivers below...
> 
>> --- a/drivers/mmc/host/sh_mmcif.c
>> +++ b/drivers/mmc/host/sh_mmcif.c
>> @@ -1465,14 +1465,14 @@ static int sh_mmcif_probe(struct platform_device *pdev)
>>         sh_mmcif_sync_reset(host);
>>         sh_mmcif_writel(host->addr, MMCIF_CE_INT_MASK, MASK_ALL);
>>
>> -       name = irq[1] < 0 ? dev_name(dev) : "sh_mmc:error";
>> +       name = irq[1] <= 0 ? dev_name(dev) : "sh_mmc:error";
> 
> "== 0" should be sufficient here, if the code above would bail out
> on errors returned by platform_get_irq_optional(), which it currently
> doesn't do.
> As this adds missing error handling, this is to be fixed by a separate
> patch later?

   Yes.

[...]
>>                 ret = devm_request_threaded_irq(dev, irq[1],
>>                                                 sh_mmcif_intr, sh_mmcif_irqt,
>>                                                 0, "sh_mmc:int", host);
> 
>> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
>> @@ -439,7 +439,7 @@ static int rcar_gen3_phy_usb2_init(struct phy *p)
>>         u32 val;
>>         int ret;
>>
>> -       if (!rcar_gen3_is_any_rphy_initialized(channel) && channel->irq >= 0) {
>> +       if (!rcar_gen3_is_any_rphy_initialized(channel) && channel->irq > 0) {
>>                 INIT_WORK(&channel->work, rcar_gen3_phy_usb2_work);
>>                 ret = request_irq(channel->irq, rcar_gen3_phy_usb2_irq,
>>                                   IRQF_SHARED, dev_name(channel->dev), channel);
>> @@ -486,7 +486,7 @@ static int rcar_gen3_phy_usb2_exit(struct phy *p)
>>                 val &= ~USB2_INT_ENABLE_UCOM_INTEN;
>>         writel(val, usb2_base + USB2_INT_ENABLE);
>>
>> -       if (channel->irq >= 0 && !rcar_gen3_is_any_rphy_initialized(channel))
>> +       if (channel->irq > 0 && !rcar_gen3_is_any_rphy_initialized(channel))
>>                 free_irq(channel->irq, channel);
>>
>>         return 0;
> 
> LGTM, but note that all errors returned by platform_get_irq_optional()
> are currently ignored, even real errors, which should be propagated
> up.
> As this adds missing error handling, this is to be fixed by a separate
> patch later?

   Yes.

>> --- a/drivers/thermal/rcar_gen3_thermal.c
>> +++ b/drivers/thermal/rcar_gen3_thermal.c
>> @@ -432,6 +432,8 @@ static int rcar_gen3_thermal_request_irqs(struct rcar_gen3_thermal_priv *priv,
>>                 irq = platform_get_irq_optional(pdev, i);
>>                 if (irq < 0)
>>                         return irq;
>> +               if (!irq)
>> +                       return -ENXIO;
> 
> While correct, and preserving existing behavior, this looks strange
> to me.  Probably this should return zero instead (i.e. the check
> above should be changed to "<= 0"), and the caller should start caring
> about and propagating up real errors.

   Hm, you're right... should be <= 0 there, it seems.

> As this adds missing error handling, this is to be fixed by a separate
> patch later?

   Propagating errors from the probe() method is a matter of separate patch, yes.

>>
>>                 irqname = devm_kasprintf(dev, GFP_KERNEL, "%s:ch%d",
>>                                          dev_name(dev), i);
>> diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
>> index fb65dc601b23..328ab074fd89 100644
> 
>> --- a/drivers/tty/serial/sh-sci.c
>> +++ b/drivers/tty/serial/sh-sci.c
> 
> I think you missed
> 
>     #define SCIx_IRQ_IS_MUXED(port)                 \
>             ((port)->irqs[SCIx_ERI_IRQ] ==  \
>              (port)->irqs[SCIx_RXI_IRQ]) || \
>             ((port)->irqs[SCIx_ERI_IRQ] &&  \
>              ((port)->irqs[SCIx_RXI_IRQ] < 0))
> 
> above? The last condition should become "<= 0".

   Yes, probably... TY!

> Gr{oetje,eeting}s,
> 
>                         Geert

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
