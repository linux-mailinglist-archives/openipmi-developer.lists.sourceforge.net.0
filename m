Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D634930AC
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jan 2022 23:26:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9ww0-00076u-Dd; Tue, 18 Jan 2022 22:26:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1n9uzU-00071C-Au
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 20:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nLRNsKq/OI4R1ggbx32xx6ucZlXzrSR5l2HKH1nxbzc=; b=BocpLl0v4SZz2UABYWSeW1Ntk2
 bHToI3kCiBi4e+jNKsxS5keyb6CocS6bb+ry/I2aPjbghdnlA75F54PX+LclBs9QYFnoCBFBPoZIy
 hgAgILyVL6dmi6zkZu5NbLkiG63YU5TWiMZcox6tdB1GnoV39fp2o466xXwZmgkK6az0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nLRNsKq/OI4R1ggbx32xx6ucZlXzrSR5l2HKH1nxbzc=; b=N4uzgqYaee00TMNcthqhvNA2cK
 t3FdLAbBEqy8x54vBpicwQfz3XDv2kz56DQin1WAkxFh8GQphQKur+N32UEkZZhuYyHQMdy2cIfqj
 BoMrxi/MHTp4QSgCklnTiiEcbEPe33A3Q5PrbLuD14VOjpox5+kq0kbvOxEF69DxeaYw=;
Received: from mxout02.lancloud.ru ([45.84.86.82])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9uzN-0006zW-Vm
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 20:22:02 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout02.lancloud.ru 27A6E20B359D
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <57af1851-9341-985e-7b28-d2ba86770ecb@omp.ru>
 <20220117084732.cdy2sash5hxp4lwo@pengutronix.de>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <68d3bb7a-7572-7495-d295-e1d512ef509e@omp.ru>
Date: Tue, 18 Jan 2022 23:21:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220117084732.cdy2sash5hxp4lwo@pengutronix.de>
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
 
 Content preview:  Hello! On 1/17/22 11:47 AM, Uwe Kleine-König wrote: [...]
   >>>>>>>>> To me it sounds much more logical for the driver to check if an
   >>>>>>>>> optional irq is non-zero (available) or zero (not available), than
    to >>>>>>>>> sprinkle around checks for -EN [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n9uzN-0006zW-Vm
X-Mailman-Approved-At: Tue, 18 Jan 2022 22:26:33 +0000
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
 Vignesh Raghavendra <vigneshr@ti.com>, KVM list <kvm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org, Linus
 Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>, ALSA
 Development Mailing List <alsa-devel@alsa-project.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Jiri Slaby <jirislaby@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kishon Vijay
 Abraham I <kishon@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>, "open
 list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian
 Reichel <sre@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, netdev@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux
 MMC List <linux-mmc@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James
 Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian
 Norris <computersforpeace@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello!

On 1/17/22 11:47 AM, Uwe Kleine-K=F6nig wrote:

[...]
>>>>>>>>> To me it sounds much more logical for the driver to check if an
>>>>>>>>> optional irq is non-zero (available) or zero (not available), tha=
n to
>>>>>>>>> sprinkle around checks for -ENXIO. In addition, you have to remem=
ber
>>>>>>>>> that this one returns -ENXIO, while other APIs use -ENOENT or -EN=
OSYS
>>>>>>>>> (or some other error code) to indicate absence. I thought not hav=
ing
>>>>>>>>> to care about the actual error code was the main reason behind the
>>>>>>>>> introduction of the *_optional() APIs.
>>>>>>>
>>>>>>>> No, the main benefit of gpiod_get_optional() (and clk_get_optional=
()) is
>>>>>>>> that you can handle an absent GPIO (or clk) as if it were availabl=
e.
>>>>>>
>>>>>>    Hm, I've just looked at these and must note that they match 1:1 w=
ith
>>>>>> platform_get_irq_optional(). Unfortunately, we can't however behave =
the
>>>>>> same way in request_irq() -- because it has to support IRQ0 for the =
sake
>>>>>> of i8253 drivers in arch/...
>>>>>
>>>>> Let me reformulate your statement to the IMHO equivalent:
>>>>>
>>>>> 	If you set aside the differences between
>>>>> 	platform_get_irq_optional() and gpiod_get_optional(),
>>>>
>>>>    Sorry, I should make it clear this is actually the diff between a w=
ould-be
>>>> platform_get_irq_optional() after my patch, not the current code...
>>>
>>> The similarity is that with your patch both gpiod_get_optional() and
>>> platform_get_irq_optional() return NULL and 0 on not-found. The relevant
>>> difference however is that for a gpiod NULL is a dummy value, while for
>>> irqs it's not. So the similarity is only syntactically, but not
>>> semantically.
>>
>>    I have noting to say here, rather than optional IRQ could well have a=
 different
>> meaning than for clk/gpio/etc.
>>
>> [...]
>>>>> However for an interupt this cannot work. You will always have to che=
ck
>>>>> if the irq is actually there or not because if it's not you cannot ju=
st
>>>>> ignore that. So there is no benefit of an optional irq.
>>>>>
>>>>> Leaving error message reporting aside, the introduction of
>>>>> platform_get_irq_optional() allows to change
>>>>>
>>>>> 	irq =3D platform_get_irq(...);
>>>>> 	if (irq < 0 && irq !=3D -ENXIO) {
>>>>> 		return irq;
>>>>> 	} else if (irq >=3D 0) {
>>>>
>>>>    Rather (irq > 0) actually, IRQ0 is considered invalid (but still re=
turned).
>>>
>>> This is a topic I don't feel strong for, so I'm sloppy here. If changing
>>> this is all that is needed to convince you of my point ...
>>
>>    Note that we should absolutely (and first of all) stop returning 0 fr=
om platform_get_irq()
>> on a "real" IRQ0. Handling that "still good" zero absolutely doesn't sca=
le e.g. for the subsystems
>> (like libata) which take 0 as an indication that the polling mode should=
 be used... We can't afford
>> to be sloppy here. ;-)
> =

> Then maybe do that really first?

   I'm doing it first already:

https://lore.kernel.org/all/5e001ec1-d3f1-bcb8-7f30-a6301fd9930c@omp.ru/

   This series is atop of the above patch...

> I didn't recheck, but is this what the
> driver changes in your patch is about?

   Partly, yes. We can afford to play with the meaning of 0 after the above=
 patch.

> After some more thoughts I wonder if your focus isn't to align
> platform_get_irq_optional to (clk|gpiod|regulator)_get_optional, but to
> simplify return code checking. Because with your change we have:
> =

>  - < 0 -> error
>  - =3D=3D 0 -> no irq
>  - > 0 -> irq

   Mainly, yes. That's why the code examples were given in the description.

> For my part I'd say this doesn't justify the change, but at least I
> could better life with the reasoning. If you start at:
> =

> 	irq =3D platform_get_irq_optional(...)
> 	if (irq < 0 && irq !=3D -ENXIO)
> 		return irq
> 	else if (irq > 0)
> 		setup_irq(irq);
> 	else
> 		setup_polling()
> =

> I'd change that to
> =

> 	irq =3D platform_get_irq_optional(...)
> 	if (irq > 0) /* or >=3D 0 ? */

   Not >=3D 0, no...

> 		setup_irq(irq)
> 	else if (irq =3D=3D -ENXIO)
> 		setup_polling()
> 	else
> 		return irq
> =

> This still has to mention -ENXIO, but this is ok and checking for 0 just
> hardcodes a different return value.

   I think comparing with 0 is simpler (and shorter) than with -ENXIO, if y=
ou
consider the RISC CPUs, like e.g. MIPS...

> Anyhow, I think if you still want to change platform_get_irq_optional
> you should add a few patches converting some drivers which demonstrates
> the improvement for the callers.

   Mhm, I did include all the drivers where the IRQ checks have to be modif=
ied,
not sure what else you want me to touch...

> Best regards
> Uwe

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
