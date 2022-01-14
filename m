Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C9348F0FC
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 21:30:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8TD7-0005RJ-Vd; Fri, 14 Jan 2022 20:30:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1n8S1t-0006rK-2m
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 19:14:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:References:CC:To:Subject:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X/o9mIv6XfWXGgBrYjMBRUDMMcnNTpXgBh+nmx0RnQQ=; b=WX2FsipKOU55moIOQEzcT63H30
 UMiXwXq5CRKNNosRz9RM5pvjjDxQkIifQu9U6Tml7/ud6TyHEvebVbRnnN9KuIbCK/Vf+lUJWywIP
 C+OBFOqBV2GUMEuua3rYx2vbjukQO0o7j/wqSsRavyZ5RMhgh7Ost6M5s/EjeiKeI9t8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:References:CC:To:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X/o9mIv6XfWXGgBrYjMBRUDMMcnNTpXgBh+nmx0RnQQ=; b=fiMz+4KZnqdfJ/bTyxTt/vrc8Q
 cvAU89lrWzhlEbMP5gGoO6ln6mSLeRAssASfzd/eSaRnsxQO6qoKOD+6CJI/9NP2tFWwAXqjKUocA
 Sp8mmNckbH01+8uM7U1x++2P11ZYhEsR+nCqOfZdqbVSXwb5E5yENMkb+W1lHH27M5Fw=;
Received: from mxout03.lancloud.ru ([45.84.86.113])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8S1n-00FpxS-Hi
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 19:14:27 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout03.lancloud.ru 922E5206F628
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
From: Sergey Shtylyov <s.shtylyov@omp.ru>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de> <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
Organization: Open Mobile Platform
Message-ID: <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
Date: Fri, 14 Jan 2022 22:14:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
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
 
 Content preview:  On 1/14/22 12:25 PM, Uwe Kleine-König wrote: >>>>> To me it
    sounds much more logical for the driver to check if an >>>>> optional irq
    is non-zero (available) or zero (not available), than to >>>>> sprinkle around
    checks for -ENXIO. In addition, [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n8S1n-00FpxS-Hi
X-Mailman-Approved-At: Fri, 14 Jan 2022 20:30:08 +0000
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
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Guenter
 Roeck <groeck@chromium.org>, Thierry Reding <thierry.reding@gmail.com>, MTD
 Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Jiri Slaby <jirislaby@kernel.org>, openipmi-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>, Lee
 Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Daniel
 Lezcano <daniel.lezcano@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro
 Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 1/14/22 12:25 PM, Uwe Kleine-K=F6nig wrote:

>>>>> To me it sounds much more logical for the driver to check if an
>>>>> optional irq is non-zero (available) or zero (not available), than to
>>>>> sprinkle around checks for -ENXIO. In addition, you have to remember
>>>>> that this one returns -ENXIO, while other APIs use -ENOENT or -ENOSYS
>>>>> (or some other error code) to indicate absence. I thought not having
>>>>> to care about the actual error code was the main reason behind the
>>>>> introduction of the *_optional() APIs.
>>>
>>>> No, the main benefit of gpiod_get_optional() (and clk_get_optional()) =
is
>>>> that you can handle an absent GPIO (or clk) as if it were available.
>>
>>    Hm, I've just looked at these and must note that they match 1:1 with
>> platform_get_irq_optional(). Unfortunately, we can't however behave the
>> same way in request_irq() -- because it has to support IRQ0 for the sake
>> of i8253 drivers in arch/...
> =

> Let me reformulate your statement to the IMHO equivalent:
> =

> 	If you set aside the differences between
> 	platform_get_irq_optional() and gpiod_get_optional(),

   Sorry, I should make it clear this is actually the diff between a would-=
be
platform_get_irq_optional() after my patch, not the current code...

> 	platform_get_irq_optional() is like gpiod_get_optional().
> =

> The introduction of gpiod_get_optional() made it possible to simplify
> the following code:
> =

> 	reset_gpio =3D gpiod_get(...)
> 	if IS_ERR(reset_gpio):
> 		error =3D PTR_ERR(reset_gpio)
> 		if error !=3D -ENDEV:

   ENODEV?

> 			return error
> 	else:
> 		gpiod_set_direction(reset_gpiod, INACTIVE)
> =

> to
> =

> 	reset_gpio =3D gpiod_get_optional(....)
> 	if IS_ERR(reset_gpio):
> 		return reset_gpio
> 	gpiod_set_direction(reset_gpiod, INACTIVE)
> =

> and I never need to actually know if the reset_gpio actually exists.
> Either the line is put into its inactive state, or it doesn't exist and
> then gpiod_set_direction is a noop. For a regulator or a clk this works
> in a similar way.
> =

> However for an interupt this cannot work. You will always have to check
> if the irq is actually there or not because if it's not you cannot just
> ignore that. So there is no benefit of an optional irq.
> =

> Leaving error message reporting aside, the introduction of
> platform_get_irq_optional() allows to change
> =

> 	irq =3D platform_get_irq(...);
> 	if (irq < 0 && irq !=3D -ENXIO) {
> 		return irq;
> 	} else if (irq >=3D 0) {

   Rather (irq > 0) actually, IRQ0 is considered invalid (but still returne=
d).

> 		... setup irq operation ...
> 	} else { /* irq =3D=3D -ENXIO */
> 		... setup polling ...
> 	}
> =

> to
> 	=

> 	irq =3D platform_get_irq_optional(...);
> 	if (irq < 0 && irq !=3D -ENXIO) {
> 		return irq;
> 	} else if (irq >=3D 0) {
> 		... setup irq operation ...
> 	} else { /* irq =3D=3D -ENXIO */
> 		... setup polling ...
> 	}
> =

> which isn't a win. When changing the return value as you suggest, it can
> be changed instead to:
> =

> 	irq =3D platform_get_irq_optional(...);
> 	if (irq < 0) {
> 		return irq;
> 	} else if (irq > 0) {
> 		... setup irq operation ...
> 	} else { /* irq =3D=3D 0 */
> 		... setup polling ...
> 	}
> =

> which is a tad nicer. If that is your goal however I ask you to also
> change the semantic of platform_get_irq() to return 0 on "not found".

    Well, I'm not totally opposed to that... but would there be a considera=
ble win?
Anyway, we should 1st stop returning 0 for "valid" IRQs -- this is done by =
my patch
the discussed patch series are atop of.

> Note the win is considerably less compared to gpiod_get_optional vs

   If there's any at all... We'd basically have to touch /all/ platform_get=
_irq()
calls (and get an even larger CC list ;-)).

> gpiod_get however. And then it still lacks the semantic of a dummy irq
> which IMHO forfeits the right to call it ..._optional().

   Not quite grasping it... Why e.g. clk_get() doesn't return 0 for a not f=
ound clock?

> Now I'm unwilling to continue the discussion unless there pops up a
> suggestion that results in a considerable part (say > 10%) of the
> drivers using platform_get_irq_optional not having to check if the
> return value corresponds to "not found".

   Note that many actual drivers don't follow the pattern prescribed in the=
 comment to
platform_get_irq_optional() and their check for an optional IRQ look like i=
rq < 0
(and, after my patches, irq <=3D 0). Maybe we shouldn't even bother returni=
ng the error
codes and just return 0 for all kinds of misfortunes instead? :-)

> Best regards
> Uwe

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
