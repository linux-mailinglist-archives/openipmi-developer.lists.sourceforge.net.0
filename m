Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 411D84909F7
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Jan 2022 15:08:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9Sgb-0006VV-1r; Mon, 17 Jan 2022 14:08:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1n9A44-00027F-Hz
 for openipmi-developer@lists.sourceforge.net; Sun, 16 Jan 2022 18:15:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=laqWQh8IgBRD7FH3T9QB21K1K6xCBZZ9yDD6Igt6odk=; b=lGnzRKROK/8S9fR8lmNi2jFqqj
 mlOOOT3n12bqEFItMhL033gWjextdjMHVQUHrrwbIRgEhdVFSbBH42/iwNDb0rmoNGmm9FIpq6CTQ
 xHHaQ5FAvOwHwYoCfr7pBpZ/OEm+8ZuKcF9hD8HPJXmgd2vluhkKYKJf6dMMyHtVnWvk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=laqWQh8IgBRD7FH3T9QB21K1K6xCBZZ9yDD6Igt6odk=; b=ObU1eWe8YBK5s2X1eQvMPUJ+RD
 wXAzDYdQJVJwpeWc4SU7B58ZUEMh8UlV8+qDxvULyA1N0A/4A5AeEMaPGQP0CfSttDPY9gDWKtCJv
 ZNuyo2y5+SS5nd54/qzR9p0NUNiyQHHPcRaCFtY32T75E5LCfqSIE0VtAGJW4I3TXqE0=;
Received: from mxout02.lancloud.ru ([45.84.86.82])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9A3y-0001E1-3G
 for openipmi-developer@lists.sourceforge.net; Sun, 16 Jan 2022 18:15:39 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout02.lancloud.ru 20CE0205BB5A
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <57af1851-9341-985e-7b28-d2ba86770ecb@omp.ru>
Date: Sun, 16 Jan 2022 21:15:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
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
 
 Content preview:  Hello! On 1/14/22 11:22 PM, Uwe Kleine-König wrote: >>>>>>>
    To me it sounds much more logical for the driver to check if an >>>>>>> optional
    irq is non-zero (available) or zero (not available), than to >>>>>>> sprinkle
    around checks for -ENXIO. In addi [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n9A3y-0001E1-3G
X-Mailman-Approved-At: Mon, 17 Jan 2022 14:08:38 +0000
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
 Development Mailing List <alsa-devel@alsa-project.org>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-spi <linux-spi@vger.kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>, Bartosz
 Golaszewski <brgl@bgdev.pl>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Peter Korsgaard <peter@korsgaard.com>, William
 Breathitt Gray <vilhelm.gray@gmail.com>, Mark Gross <markgross@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC
 List <linux-mmc@vger.kernel.org>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian
 Norris <computersforpeace@gmail.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello!

On 1/14/22 11:22 PM, Uwe Kleine-K=F6nig wrote:

>>>>>>> To me it sounds much more logical for the driver to check if an
>>>>>>> optional irq is non-zero (available) or zero (not available), than =
to
>>>>>>> sprinkle around checks for -ENXIO. In addition, you have to remember
>>>>>>> that this one returns -ENXIO, while other APIs use -ENOENT or -ENOS=
YS
>>>>>>> (or some other error code) to indicate absence. I thought not having
>>>>>>> to care about the actual error code was the main reason behind the
>>>>>>> introduction of the *_optional() APIs.
>>>>>
>>>>>> No, the main benefit of gpiod_get_optional() (and clk_get_optional()=
) is
>>>>>> that you can handle an absent GPIO (or clk) as if it were available.
>>>>
>>>>    Hm, I've just looked at these and must note that they match 1:1 with
>>>> platform_get_irq_optional(). Unfortunately, we can't however behave the
>>>> same way in request_irq() -- because it has to support IRQ0 for the sa=
ke
>>>> of i8253 drivers in arch/...
>>>
>>> Let me reformulate your statement to the IMHO equivalent:
>>>
>>> 	If you set aside the differences between
>>> 	platform_get_irq_optional() and gpiod_get_optional(),
>>
>>    Sorry, I should make it clear this is actually the diff between a wou=
ld-be
>> platform_get_irq_optional() after my patch, not the current code...
> =

> The similarity is that with your patch both gpiod_get_optional() and
> platform_get_irq_optional() return NULL and 0 on not-found. The relevant
> difference however is that for a gpiod NULL is a dummy value, while for
> irqs it's not. So the similarity is only syntactically, but not
> semantically.

   I have noting to say here, rather than optional IRQ could well have a di=
fferent
meaning than for clk/gpio/etc.

[...]
>>> However for an interupt this cannot work. You will always have to check
>>> if the irq is actually there or not because if it's not you cannot just
>>> ignore that. So there is no benefit of an optional irq.
>>>
>>> Leaving error message reporting aside, the introduction of
>>> platform_get_irq_optional() allows to change
>>>
>>> 	irq =3D platform_get_irq(...);
>>> 	if (irq < 0 && irq !=3D -ENXIO) {
>>> 		return irq;
>>> 	} else if (irq >=3D 0) {
>>
>>    Rather (irq > 0) actually, IRQ0 is considered invalid (but still retu=
rned).
> =

> This is a topic I don't feel strong for, so I'm sloppy here. If changing
> this is all that is needed to convince you of my point ...

   Note that we should absolutely (and first of all) stop returning 0 from =
platform_get_irq()
on a "real" IRQ0. Handling that "still good" zero absolutely doesn't scale =
e.g. for the subsystems
(like libata) which take 0 as an indication that the polling mode should be=
 used... We can't afford
to be sloppy here. ;-)

[...]

> Best regards
> Uwe

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
