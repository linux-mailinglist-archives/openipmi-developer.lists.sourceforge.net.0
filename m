Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F19E4941D8
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jan 2022 21:35:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nAHfW-0004Kv-Q5; Wed, 19 Jan 2022 20:34:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1nADEB-0000Y2-BX
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 15:50:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FK3xGE7f9uqDdmSWvZl52P0iSSo/v3B30KiFHzM97f0=; b=cGzscAWDlh38QCAe8jfUKlDrFE
 BuNPQvGpUnxfL4A/e+vds3AEfsRI/PwzIm7LF4AgIoWnh3ril9oZR4gXhvGS4+5DKlRpPZD1OGSOd
 G53bi7tiel+6m7JolyKl+30vZ4x5f5neUbTgt9EjK4csraDCgV4Uog55JpVM7ZCXHiCg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FK3xGE7f9uqDdmSWvZl52P0iSSo/v3B30KiFHzM97f0=; b=mqY/7EERt5hWQTwMRy3IhWMJrW
 M3rOtBR0qrrUxEsIm8UbQeYI6HJQIAnyihed1mlO0BK22CsphO4H6/tmvhPhJUqj0ithy9eedMzDh
 Txqh8XSufBTDeS0pWF29Y3dr6mJPj2jfvOGWo1KCd1Tr36vzsFiHQVLA1iwXA7NoD7BM=;
Received: from mxout02.lancloud.ru ([45.84.86.82])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nADE8-00016B-H9
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 15:50:26 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout02.lancloud.ru D5BDB20C97D7
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <770fb569-03c8-78f9-c174-94b31e866017@omp.ru>
 <20220119150238.5sru3vtuwsswdnkx@pengutronix.de>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <f0470e8b-67af-6788-0bca-0be03bb5d0b3@omp.ru>
Date: Wed, 19 Jan 2022 18:50:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220119150238.5sru3vtuwsswdnkx@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [192.168.11.198]
X-ClientProxiedBy: LFEXT01.lancloud.ru (fd00:f066::141) To
 LFEX1907.lancloud.ru (fd00:f066::207)
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 1/19/22 6:02 PM, Uwe Kleine-König wrote: [...] >>> This
    patch is based on the former Andy Shevchenko's patch: >>> >>> https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.shevchenko@linux.intel.com/
    >>> >>> Currently platform_get_irq_o [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nADE8-00016B-H9
X-Mailman-Approved-At: Wed, 19 Jan 2022 20:34:57 +0000
Subject: Re: [Openipmi-developer] [PATCH 1/2] platform: make
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
 Vignesh Raghavendra <vigneshr@ti.com>, kvm@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Guenter Roeck <groeck@chromium.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>, Florian
 Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>, Bartosz
 Golaszewski <brgl@bgdev.pl>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 platform-driver-x86@vger.kernel.org, linux-pwm@vger.kernel.org,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 John Garry <john.garry@huawei.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, Mark
 Gross <markgross@kernel.org>, linux-gpio@vger.kernel.org, Alex
 Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Eric Auger <eric.auger@redhat.com>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav
 Kysela <perex@perex.cz>, openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>, Pengutronix Kernel
 Team <kernel@pengutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, Tony Luck <tony.luck@intel.com>,
 Richard Weinberger <richard@nod.at>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian
 Norris <computersforpeace@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 1/19/22 6:02 PM, Uwe Kleine-K=F6nig wrote:

[...]
>>> This patch is based on the former Andy Shevchenko's patch:
>>>
>>> https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.shevchenko@l=
inux.intel.com/
>>>
>>> Currently platform_get_irq_optional() returns an error code even if IRQ
>>> resource simply has not been found. It prevents the callers from being
>>> error code agnostic in their error handling:
>>>
>>> 	ret =3D platform_get_irq_optional(...);
>>> 	if (ret < 0 && ret !=3D -ENXIO)
>>> 		return ret; // respect deferred probe
>>> 	if (ret > 0)
>>> 		...we get an IRQ...
>>>
>>> All other *_optional() APIs seem to return 0 or NULL in case an optional
>>> resource is not available. Let's follow this good example, so that the
>>> callers would look like:
>>>
>>> 	ret =3D platform_get_irq_optional(...);
>>> 	if (ret < 0)
>>> 		return ret;
>>> 	if (ret > 0)
>>> 		...we get an IRQ...
>>>
>>> Reported-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
>>> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
>> [...]
>>
>>    Please don't merge this as yet, I'm going thru this patch once again
>> and have already found some sloppy code. :-/
> =

> Who would you expect to merge this? I would have expected Greg, but he

   Me too, it's his area, the message was addressed to Greg KH...

> seems to have given up this thread.

   You instill too much uncertainty in him. :-)

>>> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
>>> index 7450904e330a..fdc63bfa5be4 100644
>>> --- a/drivers/char/ipmi/bt-bmc.c
>>> +++ b/drivers/char/ipmi/bt-bmc.c
>>> @@ -382,12 +382,14 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bm=
c,
>>>  	bt_bmc->irq =3D platform_get_irq_optional(pdev, 0);
>>>  	if (bt_bmc->irq < 0)
>>>  		return bt_bmc->irq;
>>> +	if (!bt_bmc->irq)
>>> +		return 0;
>>
>>    Hm, this is sloppy. Will recast and rebase to the -next branch.
> =

> I didn't think about what you mean with sloppy, but the code is
> equivalent to
> =

> 	if (bt_bmc->irq <=3D 0)
> 		return bt_bmc->irq;

   Exactly.

[...]
>>> diff --git a/drivers/edac/xgene_edac.c b/drivers/edac/xgene_edac.c
>>> index 2ccd1db5e98f..0d1bdd27cd78 100644
>>> --- a/drivers/edac/xgene_edac.c
>>> +++ b/drivers/edac/xgene_edac.c
>>> @@ -1917,7 +1917,7 @@ static int xgene_edac_probe(struct platform_devic=
e *pdev)
>>>  =

>>>  		for (i =3D 0; i < 3; i++) {
>>>  			irq =3D platform_get_irq_optional(pdev, i);
>>
>>    Is *_optinal() even correct here?
> =

> _optinal isn't correct, _optional maybe is. :-)

   No. :-)

> Anyhow, look at e26124cd5f7099949109608845bba9e9bf96599c, the driver was
> fixed not to print two error messages and the wrong option was picked.

   I think this patch is wrong...

>>> -			if (irq < 0) {
>>> +			if (irq <=3D 0) {
>>>  				dev_err(&pdev->dev, "No IRQ resource\n");

   This is what needed to be thrown overboard... :-)

>>>  				rc =3D -EINVAL;
>>>  				goto out_err;
> =

> What's wrong here is that the return code is hardcoded ...

  This is wrong as well -- kills the deferred probing. I have 2 separate pa=
tches
for this driver now... just need some time to get 'em ready...

[...]
>>> index bdf924b73e47..51289700a7ac 100644
>>> --- a/drivers/power/supply/mp2629_charger.c
>>> +++ b/drivers/power/supply/mp2629_charger.c
>>> @@ -581,9 +581,9 @@ static int mp2629_charger_probe(struct platform_dev=
ice *pdev)
>>>  	platform_set_drvdata(pdev, charger);
>>>  =

>>>  	irq =3D platform_get_irq_optional(to_platform_device(dev->parent), 0);
>>
>>    Again, is *_optional() even correct here?
>>
>>> -	if (irq < 0) {
>>> +	if (irq <=3D 0) {
>>>  		dev_err(dev, "get irq fail: %d\n", irq);
>>> -		return irq;
>>> +		return irq < 0 ? irq : -ENXIO;
> =

> Ack, could be simplified by switching to platform_get_irq().

   Have a draft patch...

> Best regards
> Uwe

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
