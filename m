Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC4B49B408
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Jan 2022 13:33:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nCL0V-0004CD-Qj; Tue, 25 Jan 2022 12:33:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1nC6Tx-0005zh-Vc
 for openipmi-developer@lists.sourceforge.net; Mon, 24 Jan 2022 21:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NIUc8QBKX/h12rKVs5+VoNpJ4D+KnvjVQrH2k92KlqQ=; b=JnzB1C9LPcvSkb22ZIl9CXBqHy
 ArAZKfXorJGdJkr9XDONmaPkE4foLDZXwtpY11RzKpIts1Z+N7W/UHNjrObmR3ezjGmOcNfVOgyKh
 Bxs1yt7C/sAlgp5urJy0BLfPL+YcRpw0uk0muWny06PACAbgecBMUmgAfKO1ETBywuJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NIUc8QBKX/h12rKVs5+VoNpJ4D+KnvjVQrH2k92KlqQ=; b=JNAJ4Xf/L6YxRTG1oZrJc1kdqY
 hEnV/NojKC5Bd6DngBN69seJnmO6+lpHTfXpDQaaKWq7V7H5tqV0C4VhCNgv8tFTb0/WrGtPXptop
 /X1gbIRPwIdrDu+enPUJsrfA/dqNUygZ1xsJC0PirtWYnOpleieWAX1hbZryO0e56Mro=;
Received: from mxout03.lancloud.ru ([45.84.86.113])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nC6Tp-0008Hj-2v
 for openipmi-developer@lists.sourceforge.net; Mon, 24 Jan 2022 21:02:32 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout03.lancloud.ru 81E05208CA4D
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeF05vBOzkN+xYCq@smile.fi.intel.com>
 <20220115154539.j3tsz5ioqexq2yuu@pengutronix.de>
 <YehdsUPiOTwgZywq@smile.fi.intel.com>
 <20220120075718.5qtrpc543kkykaow@pengutronix.de>
 <Ye6/NgfxsZnpXE09@smile.fi.intel.com>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <15796e57-f7d4-9c66-3b53-0b026eaf31d8@omp.ru>
Date: Tue, 25 Jan 2022 00:02:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <Ye6/NgfxsZnpXE09@smile.fi.intel.com>
Content-Language: en-US
X-Originating-IP: [192.168.11.198]
X-ClientProxiedBy: LFEXT01.lancloud.ru (fd00:f066::141) To
 LFEX1907.lancloud.ru (fd00:f066::207)
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello! On 1/24/22 6:01 PM, Andy Shevchenko wrote: >>>>>>>
 It'd certainly be good to name anything that doesn't correspond to one >>>>>>>
 of the existing semantics for the API (!) something different rather >>>>>>>
 than adding yet another potentially [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nC6Tp-0008Hj-2v
X-Mailman-Approved-At: Tue, 25 Jan 2022 12:33:05 +0000
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
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, John Garry <john.garry@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux
 MMC List <linux-mmc@vger.kernel.org>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James
 Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>, Sebastian
 Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello!

On 1/24/22 6:01 PM, Andy Shevchenko wrote:

>>>>>>> It'd certainly be good to name anything that doesn't correspond to one
>>>>>>> of the existing semantics for the API (!) something different rather
>>>>>>> than adding yet another potentially overloaded meaning.
>>>>>>
>>>>>> It seems we're (at least) three who agree about this. Here is a patch
>>>>>> fixing the name.
>>>>>
>>>>> And similar number of people are on the other side.
>>>>
>>>> If someone already opposed to the renaming (and not only the name) I
>>>> must have missed that.
>>>>
>>>> So you think it's a good idea to keep the name
>>>> platform_get_irq_optional() despite the "not found" value returned by it
>>>> isn't usable as if it were a normal irq number?
>>>
>>> I meant that on the other side people who are in favour of Sergey's patch.
>>> Since that I commented already that I opposed the renaming being a standalone
>>> change.
>>>
>>> Do you agree that we have several issues with platform_get_irq*() APIs?
[...]
>>> 2. The vIRQ0 handling: a) WARN() followed by b) returned value 0
>>
>> I'm happy with the vIRQ0 handling. Today platform_get_irq() and it's
>> silent variant returns either a valid and usuable irq number or a
>> negative error value. That's totally fine.
> 
> It might return 0.
> Actually it seems that the WARN() can only be issued in two cases:
> - SPARC with vIRQ0 in one of the array member
> - fallback to ACPI for GPIO IRQ resource with index 0

   You have probably missed the recent discovery that arch/sh/boards/board-aps4*.c
causes IRQ0 to be passed as a direct IRQ resource?

> But the latter is bogus, because it would mean a bug in the ACPI code.

   Worth changing >= 0 to > 0 there, maybe?

> The bottom line here is the SPARC case. Anybody familiar with the platform
> can shed a light on this. If there is no such case, we may remove warning
> along with ret = 0 case from platfrom_get_irq().

   I'm afraid you're too fast here... :-)
   We'll have a really hard time if we continue to allow IRQ0 to be returned by
platform_get_irq() -- we'll have oto fileter it out in the callers then...

>>> 3. The specific cookie for "IRQ not found, while no error happened" case
>>
>> Not sure what you mean here. I have no problem that a situation I can
>> cope with is called an error for the query function. I just do error
>> handling and continue happily. So the part "while no error happened" is
>> irrelevant to me.
> 
> I meant that instead of using special error code, 0 is very much good for
> the cases when IRQ is not found. It allows to distinguish -ENXIO from the
> low layer from -ENXIO with this magic meaning.

   I don't see how -ENXIO can trickle from the lower layers, frankly...

[...]

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
