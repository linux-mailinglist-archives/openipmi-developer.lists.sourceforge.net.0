Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7344941DE
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jan 2022 21:35:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nAHfX-0004M3-QN; Wed, 19 Jan 2022 20:35:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nAGV6-0006G5-LK
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 19:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UADm4z46yZ+cH51wpsF/WZjv8Tpcr0UsGCdXYSR9kiU=; b=Qb9Qdpajr0RZnOCZz5c1RhK8T5
 aLA6hYl7fDrAV3PO0zOQMxoz1+U/Ec8ZUsL3L7VO5kQ8GSivobnRD0yX8kYKB/K1FLIS1MIk1fm/d
 qjL/ipemosGXw7EY15gPD3Wy58M0mydu1Jd85Y5UHAT6+3pPueU9Lx/ihgGFibxz7dOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UADm4z46yZ+cH51wpsF/WZjv8Tpcr0UsGCdXYSR9kiU=; b=HbUmx7sy0AcAG+PyJUyZa7pzBL
 3RQyVnFtDUhyBPapeSSmmJgWMdjTMpkNenrtTvECC8rngZfjXEcoLTgldzZ1wGn7jbDSlkz9gcj8O
 1g5RwPrYdlhkaLhaL6yJssnvt+dShXQbsXIv7iywdMRd4DTDK0zjkSY9wZOzz3a32xzc=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nAGV4-0007rj-KE
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 19:20:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642620006; x=1674156006;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GrIa/eIkS4G4kb2rO6T4E37qSkXPKSwhy4Oe6Ceo9GE=;
 b=MKz8/s+rrdsOqpbtzyVkDw/QVph2Plvybaq7AfYmHs42c64OslqA5XHS
 2Nk8pNfKw7c6VFAtTfOGVViQaQX8okxvym5FfjVT8VWJPKMR3VBPjNaTd
 v34BI0RAIqYvY1WHoclbDOv3okuQrEs8krH+Tnd44bt0EpOqQAzpVhhhe
 DctQFtcZm1FGrS9bh+BEA7llXh9GXRrtiRnwR5CdoD8889mMNUC2TSQ7v
 bGlqFXP26lWvQqZgl6/wphGzCH48cwDBIigaz0C58+pR1SdTJNJT1koJd
 BxEY1P4N0xy4+TFHB2/DYRKFES+ePEFxU97I5jqIekPwGIpg6EVrjuhoa A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="242727865"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="242727865"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 11:01:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="595498167"
Received: from smile.fi.intel.com ([10.237.72.61])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 11:01:29 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nAG9n-00CEAT-Kb; Wed, 19 Jan 2022 20:58:07 +0200
Date: Wed, 19 Jan 2022 20:58:07 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <YehfP23nMd4wn48K@smile.fi.intel.com>
References: <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <57af1851-9341-985e-7b28-d2ba86770ecb@omp.ru>
 <20220117084732.cdy2sash5hxp4lwo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117084732.cdy2sash5hxp4lwo@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Jan 17, 2022 at 09:47:32AM +0100, Uwe Kleine-König
    wrote: > On Sun, Jan 16, 2022 at 09:15:20PM +0300, Sergey Shtylyov wrote:
    ... > Because with your change we have: > > - < 0 -> error > - == 0 -> no
    irq > - > 0 -> irq > > For my part I'd say this doesn't justify the change,
    but at least I > could better life with the reasoning. [...] 
 
 Content analysis details:   (-5.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [192.55.52.93 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nAGV4-0007rj-KE
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
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
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
 Daniel Lezcano <daniel.lezcano@linaro.org>, Tony Luck <tony.luck@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, netdev@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Jan 17, 2022 at 09:47:32AM +0100, Uwe Kleine-K=F6nig wrote:
> On Sun, Jan 16, 2022 at 09:15:20PM +0300, Sergey Shtylyov wrote:

...

> Because with your change we have:
> =

>  - < 0 -> error
>  - =3D=3D 0 -> no irq
>  - > 0 -> irq
> =

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
> 		setup_irq(irq)
> 	else if (irq =3D=3D -ENXIO)
> 		setup_polling()
> 	else
> 		return irq
> =

> This still has to mention -ENXIO, but this is ok and checking for 0 just
> hardcodes a different return value.

It's what we are against of. The idea is to have

	irq =3D platform_get_irq_optional(...)
	if (irq < 0) // we do not care about special cookies here
		return irq;

	if (irq)
		setup_irq(irq)
	else
		setup_polling()

See the difference? Your code is convoluted.

> Anyhow, I think if you still want to change platform_get_irq_optional
> you should add a few patches converting some drivers which demonstrates
> the improvement for the callers.



-- =

With Best Regards,
Andy Shevchenko




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
