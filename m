Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF60493D7B
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jan 2022 16:45:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nAD9S-00019v-DJ; Wed, 19 Jan 2022 15:45:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1nA9M8-0000LJ-KY
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 11:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KO6R821R4QTYXfgeq6Akr2WRgeqMVr/9I7oDAWh8F9c=; b=i485rj0spFL/IxrYGSQnlHxMIE
 1T+D9aHtI16p38VB8ekmyalQ70dfk65gb6kOaQAw/xszwqdmGNMUcop1/qvHoEKS8CE+rel4VgaJX
 LfTOupAiH6Zf4rAzk/tMDqKs40sHN3pzWDSur+ujkok7gSP0OqZWG6YRBvPPE8PZdd4o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KO6R821R4QTYXfgeq6Akr2WRgeqMVr/9I7oDAWh8F9c=; b=Qa8fJwkIbInDzus1w3zuMc9jjA
 FsGH1kYK+WzdNA7Uo6hzwf+V2W8qddTwfKSKr+7waNJHQ8SmuMg1dA5s85Lb2lNIoVPnqHO1G2WH7
 tdlY1b60KxCo73JHd5tOz4M431uVIIu4zK3eaSWp4Fj32TT5a45/auUzrTzaR3LJ+UOU=;
Received: from mxout04.lancloud.ru ([45.84.86.114])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nA9M5-00052C-4v
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 11:42:23 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout04.lancloud.ru 385F120D1C64
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220115183643.6zxalxqxrhkfgdfq@pengutronix.de> <YeQpWu2sUVOSaT9I@kroah.com>
 <20220118091819.zzxpffrxbckoxiys@pengutronix.de>
 <b6038ec2-da4a-de92-b845-cac2be0efcd1@omp.ru>
 <20220119113314.tpqfdgi6nurmzfun@pengutronix.de>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <a42e1c8b-2c3d-e3f2-e48c-ad145322ad3d@omp.ru>
Date: Wed, 19 Jan 2022 14:42:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20220119113314.tpqfdgi6nurmzfun@pengutronix.de>
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
 
 Content preview:  On 1/19/22 2:33 PM, Uwe Kleine-König wrote: [...] >>>>> A
   possible compromise: We can have both. We rename >>>>> platform_get_irq_optional()
    to platform_get_irq_silent() (or >>>>> platform_get_irq_silently() if this
    is preferred) and once all u [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nA9M5-00052C-4v
X-Mailman-Approved-At: Wed, 19 Jan 2022 15:45:32 +0000
Subject: Re: [Openipmi-developer] [PATCH 1/2] platform: make
 platform_get_irq_optional() optional (summary)
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
 alsa-devel@alsa-project.org, Jaroslav
 Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-phy@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Khuong
 Dinh <khuong@os.amperecomputing.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Jiri
 Slaby <jirislaby@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Daniel
 Lezcano <daniel.lezcano@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-serial@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 platform-driver-x86@vger.kernel.org, linux-pwm@vger.kernel.org,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John
 Garry <john.garry@huawei.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Eric Auger <eric.auger@redhat.com>,
 Takashi Iwai <tiwai@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, linux-gpio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 Joakim Zhang <qiangqing.zhang@nxp.com>, linux-spi@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Vinod
 Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian
 Norris <computersforpeace@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 1/19/22 2:33 PM, Uwe Kleine-K=F6nig wrote:

[...]
>>>>> A possible compromise: We can have both. We rename
>>>>> platform_get_irq_optional() to platform_get_irq_silent() (or
>>>>> platform_get_irq_silently() if this is preferred) and once all users =
are
>>>>> are changed (which can be done mechanically), we reintroduce a
>>>>> platform_get_irq_optional() with Sergey's suggested semantic (i.e.
>>>>> return 0 on not-found, no error message printking).
>>>>
>>>> Please do not do that as anyone trying to forward-port an old driver
>>>> will miss the abi change of functionality and get confused.  Make
>>>> build-breaking changes, if the way a function currently works is
>>>> changed in order to give people a chance.
>>>
>>> Fine for me. I assume this is a Nack for Sergey's patch?
>>
>>    Which patch do you mean? I'm starting to get really muddled... :-(
> =

> I'm talking about "[PATCH 1/2] platform: make
> platform_get_irq_optional() optional"

   I thought GregKH was talking about your renaming patch... :-/

> because "trying to forward-port an
> old driver will miss the abi" applies to it.

   Mhm... why not tell me right from the start? Jr even tell that to Andy
instead of merging his patch, so I wouldn't get sucked into this work? =

I wouldn't bother with v2 and it would have saved a lot of time spent on
email... :-(
   Do we also remember that "the stable API is a nonsense" thing? :-)

> Best regards
> Uwe

MBR, Sergey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
