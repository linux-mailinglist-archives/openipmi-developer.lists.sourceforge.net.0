Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBF348DB16
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jan 2022 16:53:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n82PM-0002Rf-ST; Thu, 13 Jan 2022 15:53:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1n7fC2-0008VQ-AO
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 15:05:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mDkkJsDtN2LTMtwbj0kLXxL+NsK1Cy8bcdezZL6tkDc=; b=I6EotYrb0m+O2EVZnM+DNa3hel
 JslPBZByExS55C2QYzHoC7NuLgzZ2O+IsO0iB3Ip0e+SdZjTxx7JB6dAFoRwFtNHj0Ohmt4G0HNXP
 T6Y8zr7JycWQhxLIUlVcxWkdqaVh1DSsrEmglqHy5zYi5XGFmjiDKRJ1Q/XMlEe/Zf2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mDkkJsDtN2LTMtwbj0kLXxL+NsK1Cy8bcdezZL6tkDc=; b=jechfWfv8aqvppAnRQV891CFw1
 A+h71KQ84310nq9ZqhUYglfKo0KO8IhJTzZ8GWn5DvT91a3ygPbwbJKh+eTq7+m3UXd2uSVjf7LnY
 GaByNnJk5obHUPalRpd0jzuSVvKqpEHDBCziJB/L6BSC6wk+thE8BCc6iJm2WmL4G1dI=;
Received: from mxout03.lancloud.ru ([45.84.86.113])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7fBx-0007Wu-FJ
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 15:05:42 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout03.lancloud.ru ECD1A20EE6DC
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: "Rafael J. Wysocki" <rafael@kernel.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de> <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <Yd7Z3Qwevb/lEwQZ@lunn.ch>
 <CAMuHMdV2cGvqMppwt9xhpze=pcnHfTozDZMjwT1DkivLD+_nbQ@mail.gmail.com>
 <CAJZ5v0iyAHtDe1kFObQorXOX0Xraxac0j29Dh+8sq7zxzbsmcQ@mail.gmail.com>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <78a17bae-435b-e35e-b2dc-1166777725a0@omp.ru>
Date: Wed, 12 Jan 2022 18:05:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0iyAHtDe1kFObQorXOX0Xraxac0j29Dh+8sq7zxzbsmcQ@mail.gmail.com>
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
 Content preview:  On 1/12/22 5:41 PM, Rafael J. Wysocki wrote: [...] >>>> If
 an optional IRQ is not present, drivers either just ignore it (e.g. >>>>
 for devices that can have multiple interrupts or a single muxed IRQ), >>>>
 or they have to resort to polling. For [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n7fBx-0007Wu-FJ
X-Mailman-Approved-At: Thu, 13 Jan 2022 15:52:57 +0000
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
 linux-iio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, Amit
 Kucheria <amitk@kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Guenter
 Roeck <groeck@chromium.org>, Thierry Reding <thierry.reding@gmail.com>, MTD
 Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev <netdev@vger.kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>, Bartosz
 Golaszewski <brgl@bgdev.pl>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>, "open
 list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan
 Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John
 Garry <john.garry@huawei.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:EDAC-CORE" <linux-edac@vger.kernel.org>,
 Tony Luck <tony.luck@intel.com>, Mun Yew
 Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux
 MMC List <linux-mmc@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>, "moderated
 list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 1/12/22 5:41 PM, Rafael J. Wysocki wrote:

[...]
>>>> If an optional IRQ is not present, drivers either just ignore it (e.g.
>>>> for devices that can have multiple interrupts or a single muxed IRQ),
>>>> or they have to resort to polling. For the latter, fall-back handling
>>>> is needed elsewhere in the driver.
>>>> To me it sounds much more logical for the driver to check if an
>>>> optional irq is non-zero (available) or zero (not available), than to
>>>> sprinkle around checks for -ENXIO. In addition, you have to remember
>>>> that this one returns -ENXIO, while other APIs use -ENOENT or -ENOSYS
>>>> (or some other error code) to indicate absence. I thought not having
>>>> to care about the actual error code was the main reason behind the
>>>> introduction of the *_optional() APIs.
>>>
>>> The *_optional() functions return an error code if there has been a
>>> real error which should be reported up the call stack. This excludes
>>> whatever error code indicates the requested resource does not exist,
>>> which can be -ENODEV etc. If the device does not exist, a magic cookie
>>> is returned which appears to be a valid resources but in fact is
>>> not. So the users of these functions just need to check for an error
>>> code, and fail the probe if present.
>>
>> Agreed.
>>
>> Note that in most (all?) other cases, the return type is a pointer
>> (e.g. to struct clk), and NULL is the magic cookie.
>>
>>> You seems to be suggesting in binary return value: non-zero
>>> (available) or zero (not available)
>>
>> Only in case of success. In case of a real failure, an error code
>> must be returned.
>>
>>> This discards the error code when something goes wrong. That is useful
>>> information to have, so we should not be discarding it.
>>
>> No, the error code must be retained in case of failure.
>>
>>> IRQ don't currently have a magic cookie value. One option would be to
>>> add such a magic cookie to the subsystem. Otherwise, since 0 is
>>> invalid, return 0 to indicate the IRQ does not exist.
>>
>> Exactly. And using 0 means the similar code can be used as for other
>> subsystems, where NULL would be returned.
>>
>> The only remaining difference is the "dummy cookie can be passed
>> to other functions" behavior.  Which is IMHO a valid difference,
>> as unlike with e.g. clk_prepare_enable(), you do pass extra data to
>> request_irq(), and sometimes you do need to handle the absence of
>> the interrupt using e.g. polling.
>>
>>> The request for a script checking this then makes sense. However, i
>>> don't know how well coccinelle/sparse can track values across function
>>> calls. They probably can check for:
>>>
>>>    ret = irq_get_optional()
>>>    if (ret < 0)
>>>       return ret;
>>>
>>> A missing if < 0 statement somewhere later is very likely to be an
>>> error. A comparison of <= 0 is also likely to be an error. A check for
>>>> 0 before calling any other IRQ functions would be good. I'm
>>> surprised such a check does not already existing in the IRQ API, but
>>> there are probably historical reasons for that.
>>
>> There are still a few platforms where IRQ 0 does exist.
> 
> Not just a few even.  This happens on a reasonably recent x86 PC:
> 
> rafael@gratch:~/work/linux-pm> head -2 /proc/interrupts
>            CPU0       CPU1       CPU2       CPU3       CPU4       CPU5
>   0:         10          0          0          0          0          0
>  IR-IO-APIC    2-edge
> timer

   IIRC Linus has proclaimed that IRQ0 was valid for the i8253 driver (living in
arch/x86/); IRQ0 only was frowned upon when returned by platform_get_irq() and its
ilk.

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
