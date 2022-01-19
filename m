Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FFC4941D6
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jan 2022 21:35:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nAHfW-0004L1-VO; Wed, 19 Jan 2022 20:34:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1nADZh-00014L-J9
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 16:12:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jhIUp5oaa6qk2EWF6vYVen0Zm+BXH1x+10Y9voNQ3pc=; b=WzpZObkibAvMJhiw4d+L4HlChV
 7H0yc9NWAHhJklOek0vg/b+t3dVf2F/HY8y3qN0ABUArZje2jSrzvSC+ItmhlIWSnvsp0CTM0uP+9
 wW5te/7k0zM8/aOk9TePrfIYeuY2S4anGQWEOYS3WRWPbyRfh7/e09HdQSbVXpfSYHQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jhIUp5oaa6qk2EWF6vYVen0Zm+BXH1x+10Y9voNQ3pc=; b=NTatqDnU7lhLy0mbEf/EWzX/1R
 S8OozINu6Zu8NC4iVJH1FgtCBSH7i45s+5aBdyMEXqmMkASRtXOIk90sdp/pY3BYyBQrVj7ci6GcZ
 +dGk42AAZoiG/yCadA+wyKm9r6qg0lLJJwPU4536j1fB+1DrogWxIhP0KReeH4dsdQiw=;
Received: from mxout03.lancloud.ru ([45.84.86.113])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nADZb-003ru8-Lf
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 16:12:40 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout03.lancloud.ru AAAEC20F6A78
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>, "Geert
 Uytterhoeven" <geert@linux-m68k.org>
References: <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
 <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
 <20220117114923.d5vajgitxneec7j7@pengutronix.de>
 <CAMuHMdWCKERO20R2iVHq8P=BaoauoBAtiampWzfMRYihi3Sb0g@mail.gmail.com>
 <20220117170609.yxaamvqdkivs56ju@pengutronix.de>
 <CAMuHMdXbuZqEpYivyS6hkaRN+CwTOGaHq_OROwVAWvDD6OXODQ@mail.gmail.com>
 <20220118090913.pjumkq4zf4iqtlha@pengutronix.de>
 <CAMuHMdUW8+Y_=uszD+JOZO3Lpa9oDayk+GO+cg276i2f2T285w@mail.gmail.com>
 <20220118120806.pbjsat4ulg3vnhsh@pengutronix.de>
 <CAMuHMdWkwV9XE_R5FZ=jPtDwLpDbEngG6+X2JmiDJCZJZvUjYA@mail.gmail.com>
 <20220118142945.6y3rmvzt44pjpr4z@pengutronix.de>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <6370798a-7a7e-243d-99f9-09bf772ddbac@omp.ru>
Date: Wed, 19 Jan 2022 19:12:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220118142945.6y3rmvzt44pjpr4z@pengutronix.de>
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
 
 Content preview:  On 1/18/22 5:29 PM, Uwe Kleine-König wrote: >> nst the magic
    not-found value (so no implementation detail magic >>>>> leaks into the caller
    code) and just pass it to the next API function= >> . >>>>> (And my expectation
    would be that if you cho [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nADZb-003ru8-Lf
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
 Vignesh Raghavendra <vigneshr@ti.com>, KVM list <kvm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org, Linus
 Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>, ALSA
 Development Mailing List <alsa-devel@alsa-project.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev <netdev@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>, "open
 list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>, Saravanan
 Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark
 Brown <broonie@kernel.org>, Borislav Petkov <bp@alien8.de>, Sebastian
 Reichel <sre@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC
 List <linux-mmc@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James
 Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian
 Norris <computersforpeace@gmail.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 1/18/22 5:29 PM, Uwe Kleine-K=F6nig wrote:

>> nst the magic not-found value (so no implementation detail magic
>>>>> leaks into the caller code) and just pass it to the next API function=
=3D
>> .
>>>>> (And my expectation would be that if you chose to represent not-found=
=3D
>>  by
>>>>> (void *)66 instead of NULL, you won't have to adapt any user, just th=
=3D
>> e
>>>>> framework internal checks. This is a good thing!)
>>>>
>>>> Ah, there is the wrong assumption: drivers sometimes do need to know
>>>> if the resource was found, and thus do need to know about (void *)66,
>>>> -ENODEV, or -ENXIO.  I already gave examples for IRQ and clk before.
>>>> I can imagine these exist for gpiod and regulator, too, as soon as
>>>> you go beyond the trivial "enable" and "disable" use-cases.
>>>
>>> My premise is that every user who has to check for "not found"
>>> explicitly should not use (clk|gpiod)_get_optional() but
>>> (clk|gpiod)_get() and do proper (and explicit) error handling for
>>> -ENODEV. (clk|gpiod)_get_optional() is only for these trivial use-cases.
>>>
>>>> And 0/NULL vs. > 0 is the natural check here: missing, but not
>>>> an error.
>>>
>>> For me it it 100% irrelevant if "not found" is an error for the query
>>> function or not. I just have to be able to check for "not found" and
>>> react accordingly.
>>>
>>> And adding a function
>>>
>>>         def platform_get_irq_opional():
>>>                 ret =3D3D platform_get_irq()
>>>                 if ret =3D3D=3D3D -ENXIO:
>>>                         return 0
>>>                 return ret
>>>
>>> it's not a useful addition to the API if I cannot use 0 as a dummy
>>> because it doesn't simplify the caller enough to justify the additional
>>> function.
>>>
>>> The only thing I need to be able is to distinguish the cases "there is
>>> an irq", "there is no irq" and anything else is "there is a problem I
>>> cannot handle and so forward it to my caller". The semantic of
>>> platform_get_irq() is able to satisfy this requirement[1], so why intro=
du=3D
>> ce
>>> platform_get_irq_opional() for the small advantage that I can check for
>>> not-found using
>>>
>>>         if (!irq)
>>>
>>> instead of
>>>
>>>         if (irq !=3D3D -ENXIO)
>>>
>>> ? The semantic of platform_get_irq() is easier ("Either a usable
>>> non-negative irq number or a negative error number") compared to
>>> platform_get_irq_optional() ("Either a usable positive irq number or a
>>> negative error number or 0 meaning not found"). Usage of
>>> platform_get_irq() isn't harder or more expensive (neither for a human
>>> reader nor for a maching running the resulting compiled code).
>>> For a human reader
>>>
>>>         if (irq !=3D3D -ENXIO)
>>>
>>> is even easier to understand because for
>>>
>>>         if (!irq)
>>>
>>> they have to check where the value comes from, see it's
>>> platform_get_irq_optional() and understand that 0 means not-found.
>>
>> "vIRQ zero does not exist."
> =

> With that statement in mind I would expect that a function that gives me
> an (v)irq number never returns 0.
> =

>>> This function just adds overhead because as a irq framework user I have
>>> to understand another function. For me the added benefit is too small to
>>> justify the additional function. And you break out-of-tree drivers.
>>> These are all no major counter arguments, but as the advantage isn't
>>> major either, they still matter.
>>>
>>> Best regards
>>> Uwe
>>>
>>> [1] the only annoying thing is the error message.
>>
>> So there's still a need for two functions.
> =

> Or a single function not emitting an error message together with the
> callers being responsible for calling dev_err().
> =

> So the options in my preference order (first is best) are:
> =

>  - Remove the printk from platform_get_irq() and remove
>    platform_get_irq_optional();

   Strong NAK here:
- dev_err() in our function saves a lot of (repeatable!) comments;
- we've already discussed that it's more optimal to check againt 0 than
  against -ENXIO in the callers.

>  - Rename platform_get_irq_optional() to platform_get_irq_silently()

   NAK as well. We'd better off complaining about irq < 0 in this function.

>  - Keep platform_get_irq_optional() as is

   NAK, it's suboptimal in the call sites.

>  - Collect underpants
> =

>  - ?

   You're on your own here. :-)

>  - Change semantic of platform_get_irq_optional()

   Yes, we should change the semantics if it serves our goals better. =


> Best regards
> Uwe

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
