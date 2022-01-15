Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD0948FA56
	for <lists+openipmi-developer@lfdr.de>; Sun, 16 Jan 2022 03:15:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8v4p-0005CW-QO; Sun, 16 Jan 2022 02:15:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1n8qFe-000423-C3
 for openipmi-developer@lists.sourceforge.net; Sat, 15 Jan 2022 21:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XQJIsCoDA9XWHlT1hubSOl14qZzTpQ1P+L30BlKw4JI=; b=J7QHHG1Glo62gTShxdMxIUj5fu
 GMw/3DhLa/vB1PimNlfc4jeCYmQasFD9IliLlx2e8us4Bx3XDSaIwPVg2NDQr8SC8m98HBuKCJwhy
 /mjmwiJpKUIXdlqApmnlA1bLtn2qykfZp2J84BTyWCGPNrrB0Lj4uzC39tTB5moQs4Og=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XQJIsCoDA9XWHlT1hubSOl14qZzTpQ1P+L30BlKw4JI=; b=mOB+uHQn1l4s20GMZxFiGcaqyD
 bjuF8elIm8GItPPXDI1QI8GD8yG82iV3nF5SLAOFaZQv21EmFWpTkSXbbuu+8QrloK3P6H7RusJL5
 CbRoAzIeO7fqTED7yX/1vKZzv1r2dkHv+uw6oS+z08WHRc1BpdKWy8EYRUMPf5ZtijhA=;
Received: from mxout04.lancloud.ru ([45.84.86.114])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8qFb-00GrOZ-8M
 for openipmi-developer@lists.sourceforge.net; Sat, 15 Jan 2022 21:06:17 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout04.lancloud.ru 21DDC20ADE46
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>, "Geert
 Uytterhoeven" <geert@linux-m68k.org>
References: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeCI47ltlWzjzjYy@sirena.org.uk>
 <1df04d74-8aa2-11f1-54e9-34d0e8f4e58b@omp.ru>
 <20220113224319.akljsjtu7ps75vun@pengutronix.de>
 <CAMuHMdWjo36UGde3g5ysdXpLJn=mrPp31SDODuQNPUqoc-ARrQ@mail.gmail.com>
 <20220115152102.m47snsdrw2elagak@pengutronix.de>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <77cea138-977a-1454-4808-bd16dd7d2734@omp.ru>
Date: Sun, 16 Jan 2022 00:06:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220115152102.m47snsdrw2elagak@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [192.168.11.198]
X-ClientProxiedBy: LFEXT02.lancloud.ru (fd00:f066::142) To
 LFEX1907.lancloud.ru (fd00:f066::207)
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 1/15/22 6:21 PM, Uwe Kleine-König wrote: [...] >>>>>> The
    subsystems regulator, clk and gpio have the concept of a dummy >>>>>> resource.
    For regulator, clk and gpio there is a semantic difference >>>>>> between
    the regular _get() function a [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n8qFb-00GrOZ-8M
X-Mailman-Approved-At: Sun, 16 Jan 2022 02:15:25 +0000
Subject: Re: [Openipmi-developer] [PATCH] driver core: platform: Rename
 platform_get_irq_optional() to platform_get_irq_silent()
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
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 linux-spi <linux-spi@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Khuong
 Dinh <khuong@os.amperecomputing.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>, Bartosz
 Golaszewski <brgl@bgdev.pl>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>, "open
 list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>, Hans de
 Goede <hdegoede@redhat.com>, Saravanan
 Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam
 Girdwood <lgirdwood@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 John Garry <john.garry@huawei.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Takashi Iwai <tiwai@suse.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yoshihiro
 Shimoda <yoshihiro.shimoda.uh@renesas.com>, Cornelia Huck <cohuck@redhat.com>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian
 Norris <computersforpeace@gmail.com>, netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 1/15/22 6:21 PM, Uwe Kleine-K=F6nig wrote:

[...]
>>>>>> The subsystems regulator, clk and gpio have the concept of a dummy
>>>>>> resource. For regulator, clk and gpio there is a semantic difference
>>>>>> between the regular _get() function and the _get_optional() variant.
>>>>>> (One might return the dummy resource, the other won't. Unfortunately
>>>>>> which one implements which isn't the same for these three.) The
>>>>>> difference between platform_get_irq() and platform_get_irq_optional(=
) is
>>>>>> only that the former might emit an error message and the later won't.
>>>>
>>>>    This is only a current difference but I'm still going to return 0 I=
SO
>>>> -ENXIO from latform_get_irq_optional(), no way I'd leave that -ENXIO t=
here
>>>> alone... :-)
>>>
>>> This would address a bit of the critic in my commit log. But as 0 isn't
>>> a dummy value like the dummy values that exist for clk, gpiod and
>>> regulator I still think that the naming is a bad idea because it's not
>>> in the spirit of the other *_get_optional functions.
>>>
>>> Seeing you say that -ENXIO is a bad return value for
>>> platform_get_irq_optional() and 0 should be used instead, I wonder why
>>> not changing platform_get_irq() to return 0 instead of -ENXIO, too.
>>> This question is for now only about a sensible semantic. That actually
>>> changing platform_get_irq() is probably harder than changing
>>> platform_get_irq_optional() is a different story.
>>>
>>> If only platform_get_irq_optional() is changed and given that the
>>> callers have to do something like:
>>>
>>>         if (this_irq_exists()):
>>>                 ... (e.g. request_irq)
>>>         else:
>>>                 ... (e.g. setup polling)
>>>
>>> I really think it's a bad idea that this_irq_exists() has to be
>>> different for platform_get_irq() vs. platform_get_irq_optional().
>>
>> For platform_get_irq(), the IRQ being absent is an error condition,
>> hence it should return an error code.
>> For platform_get_irq_optional(), the IRQ being absent is not an error
>> condition, hence it should not return an error code, and 0 is OK.
> =

> Please show a few examples how this simplifies the code. If it's only

   As for platform_get_irq(), returning -ENXIO simplifies things a lot: you=
 don't
have to check for 0 at every freaking call site and have s/th like (every
time!):

	irq =3D platform_get_irq();
	if (irq <=3D 0)
		return irq ?: -ENXIO; // any error code you choose

instead of just:

	irq =3D platform_get_irq();
	if (irq < 0)
		return irq;

This scales better in my book.

> that a driver has to check for =3D=3D 0 instead of =3D=3D -ENXIO, than th=
at's
> not a good enough motivation to make platform_get_irq_optional()
> different to platform_get_irq().

   Again, it scales better... good motivation in my eyes.

> Best regards
> Uwe

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
