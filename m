Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BD048E1D1
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 01:55:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8AsV-0000GA-FV; Fri, 14 Jan 2022 00:55:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n88pI-0004wl-6q
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 22:44:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NXr6YWZwL8gSrKHdEkijqv/JAcijC5wrWYPBSx5m2Tw=; b=NFLhqOgPnmukbV1sMDs4oyUj9p
 jWx4+Hgz524GD35gaTrugpySt3/J/R2HUxUpHk+pN8idV+63jBLUCkSwtOUTPkAhEcxSZMd+dvRkL
 IzknxVF1Hqy8pAO6m86svIwDbaiaZo3tEW3msBCh/AqKQg1I9VpPXGOkZQ1mdtvMkRXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NXr6YWZwL8gSrKHdEkijqv/JAcijC5wrWYPBSx5m2Tw=; b=lRMDGhClWT8VAEJSswS7s17RJT
 /Dq2wlnJ69yR5RU70tQ0KXvgGn/7G19d3Xi+wZsSfJdAi3UmvUaIjhQCjHjT39yuUd9b1g80Fqu2C
 iQYkRLuiTZ2bbpq981EY02gcPAP37LqUeijqmLUXfjZ3Sd/jS8goqpv1Bep/Mz4LC8Ag=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n88pC-00EvbP-SD
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 22:44:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n88oe-0007pY-PW; Thu, 13 Jan 2022 23:43:32 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n88oS-00A973-DR; Thu, 13 Jan 2022 23:43:19 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n88oR-0000VL-8T; Thu, 13 Jan 2022 23:43:19 +0100
Date: Thu, 13 Jan 2022 23:43:19 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Message-ID: <20220113224319.akljsjtu7ps75vun@pengutronix.de>
References: <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeCI47ltlWzjzjYy@sirena.org.uk>
 <1df04d74-8aa2-11f1-54e9-34d0e8f4e58b@omp.ru>
MIME-Version: 1.0
In-Reply-To: <1df04d74-8aa2-11f1-54e9-34d0e8f4e58b@omp.ru>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jan 13, 2022 at 11:57:43PM +0300, Sergey Shtylyov
 wrote: > On 1/13/22 11:17 PM, Mark Brown wrote: > > >> The subsystems regulator,
 clk and gpio have the concept of a dummy > >> resource. For r [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n88pC-00EvbP-SD
X-Mailman-Approved-At: Fri, 14 Jan 2022 00:55:37 +0000
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
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
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
 Daniel Lezcano <daniel.lezcano@linaro.org>,
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
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, netdev@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8078753557010296079=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8078753557010296079==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7tuoe52njhyotvsc"
Content-Disposition: inline


--7tuoe52njhyotvsc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 13, 2022 at 11:57:43PM +0300, Sergey Shtylyov wrote:
> On 1/13/22 11:17 PM, Mark Brown wrote:
>=20
> >> The subsystems regulator, clk and gpio have the concept of a dummy
> >> resource. For regulator, clk and gpio there is a semantic difference
> >> between the regular _get() function and the _get_optional() variant.
> >> (One might return the dummy resource, the other won't. Unfortunately
> >> which one implements which isn't the same for these three.) The
> >> difference between platform_get_irq() and platform_get_irq_optional() =
is
> >> only that the former might emit an error message and the later won't.
>=20
>    This is only a current difference but I'm still going to return 0 ISO
> -ENXIO from latform_get_irq_optional(), no way I'd leave that -ENXIO there
> alone... :-)

This would address a bit of the critic in my commit log. But as 0 isn't
a dummy value like the dummy values that exist for clk, gpiod and
regulator I still think that the naming is a bad idea because it's not
in the spirit of the other *_get_optional functions.

Seeing you say that -ENXIO is a bad return value for
platform_get_irq_optional() and 0 should be used instead, I wonder why
not changing platform_get_irq() to return 0 instead of -ENXIO, too.
This question is for now only about a sensible semantic. That actually
changing platform_get_irq() is probably harder than changing
platform_get_irq_optional() is a different story.

If only platform_get_irq_optional() is changed and given that the
callers have to do something like:

	if (this_irq_exists()):
		... (e.g. request_irq)
	else:
		... (e.g. setup polling)

I really think it's a bad idea that this_irq_exists() has to be
different for platform_get_irq() vs. platform_get_irq_optional().

> > Reviewed-by: Mark Brown <broonie@kernel.org>
>=20
>    Hm... I'm seeing a tag bit not seeing the patch itself...

See https://lore.kernel.org/all/20220113194358.xnnbhsoyetihterb@pengutronix=
=2Ede/

This is just a tree-wide
s/platform_get_irq_optional/platform_get_irq_silent/ + a macro to not
break callers of platform_get_irq_optional().

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--7tuoe52njhyotvsc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHgqwMACgkQwfwUeK3K
7AlyrggAnnNuI35GvxF5VtWAxjQVEMBwQAZzFN2zmbCN56PVqEEi+hrB3o4qCrg5
RVngj3mJZBBvnB/EPzv0cg7FWq2/jPiopb8JGnPMf2HyN6pE6vQRw/vgdCAw1tSa
Z1uE/p+FA63qrrD0UrCjr+6bQaobnf20ljmXq6EmZ6oPXvcQLnTureudQD0YJdII
xZcTKIPC5wH7+yFedZzk1AovNre37jVzG74IzyB6Bbk4Jl22v8GJ8Nq3VUP7x2jE
Ps6AsNLRubU3vuJ1T43P8/yY0B7PRiyRHvXS+N/qCCf44UuRmpvKziXUP2vnspWR
9RIT5bkqqtknA+dRrLt/xWijFiViOQ==
=EM1y
-----END PGP SIGNATURE-----

--7tuoe52njhyotvsc--


--===============8078753557010296079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8078753557010296079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8078753557010296079==--

