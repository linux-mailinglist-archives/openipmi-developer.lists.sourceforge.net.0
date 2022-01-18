Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AD5492670
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jan 2022 14:05:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9oBA-0001pQ-Hk; Tue, 18 Jan 2022 13:05:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n9nIK-0008AJ-7P
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 12:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H8uLTPRhAlDBjywgg3yfKwkHKzk9pMqAPU44Quhu/VI=; b=SrbsteFQ6IJ74vgYMi509XqhaL
 GnXYTRghna3uakW4pC1SUpgqd1Fv4VlrG6gxbtyMjADNGLKan2kp5lS+vpGwUcCAxUcMh9IOWimAU
 usKayGBdm3B7LaDA8abadMvwGlSLTvJHt1cFeTeEPHx+n8BBmKsp9GJLcCok3WH8DdnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H8uLTPRhAlDBjywgg3yfKwkHKzk9pMqAPU44Quhu/VI=; b=Cd1B94NEkv1uKw0sDGWxBnK9wJ
 rF26uw/gJfhKRARQIvSXEGmNwJG/0c50p16UHPg8ERcv4Nj80NP23zEnesqU+1i+yIxe0lfhWpc5b
 xTfmNgjqV6IctFQ6F3SLM5dg4UNiNboE3qi/b2zzEjEg+OBZm3ieq25MfYZqzKlvZCwc=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9nIH-0006yr-IW
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 12:08:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9nHg-0001Dm-Ou; Tue, 18 Jan 2022 13:08:20 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9nHT-00AzwP-Do; Tue, 18 Jan 2022 13:08:06 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9nHS-0004EX-Dv; Tue, 18 Jan 2022 13:08:06 +0100
Date: Tue, 18 Jan 2022 13:08:06 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20220118120806.pbjsat4ulg3vnhsh@pengutronix.de>
References: <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
 <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
 <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
 <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
 <20220117114923.d5vajgitxneec7j7@pengutronix.de>
 <CAMuHMdWCKERO20R2iVHq8P=BaoauoBAtiampWzfMRYihi3Sb0g@mail.gmail.com>
 <20220117170609.yxaamvqdkivs56ju@pengutronix.de>
 <CAMuHMdXbuZqEpYivyS6hkaRN+CwTOGaHq_OROwVAWvDD6OXODQ@mail.gmail.com>
 <20220118090913.pjumkq4zf4iqtlha@pengutronix.de>
 <CAMuHMdUW8+Y_=uszD+JOZO3Lpa9oDayk+GO+cg276i2f2T285w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUW8+Y_=uszD+JOZO3Lpa9oDayk+GO+cg276i2f2T285w@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Geert, On Tue, Jan 18, 2022 at 10:37:25AM +0100, Geert
    Uytterhoeven wrote: > On Tue, Jan 18, 2022 at 10:09 AM Uwe Kleine-König >
    <u.kleine-koenig@pengutronix.de> wrote: > > For the (clk|gpiod|regulator)_get_
    [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n9nIH-0006yr-IW
X-Mailman-Approved-At: Tue, 18 Jan 2022 13:05:37 +0000
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
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============3007012392615607128=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============3007012392615607128==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2svqigojwuu4sr3n"
Content-Disposition: inline


--2svqigojwuu4sr3n
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Geert,

On Tue, Jan 18, 2022 at 10:37:25AM +0100, Geert Uytterhoeven wrote:
> On Tue, Jan 18, 2022 at 10:09 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > For the (clk|gpiod|regulator)_get_optional() you don't have to check
> > against the magic not-found value (so no implementation detail magic
> > leaks into the caller code) and just pass it to the next API function.
> > (And my expectation would be that if you chose to represent not-found by
> > (void *)66 instead of NULL, you won't have to adapt any user, just the
> > framework internal checks. This is a good thing!)
>=20
> Ah, there is the wrong assumption: drivers sometimes do need to know
> if the resource was found, and thus do need to know about (void *)66,
> -ENODEV, or -ENXIO.  I already gave examples for IRQ and clk before.
> I can imagine these exist for gpiod and regulator, too, as soon as
> you go beyond the trivial "enable" and "disable" use-cases.

My premise is that every user who has to check for "not found"
explicitly should not use (clk|gpiod)_get_optional() but
(clk|gpiod)_get() and do proper (and explicit) error handling for
-ENODEV. (clk|gpiod)_get_optional() is only for these trivial use-cases.

> And 0/NULL vs. > 0 is the natural check here: missing, but not
> an error.

For me it it 100% irrelevant if "not found" is an error for the query
function or not. I just have to be able to check for "not found" and
react accordingly.

And adding a function

	def platform_get_irq_opional():
		ret =3D platform_get_irq()
		if ret =3D=3D -ENXIO:
			return 0
		return ret

it's not a useful addition to the API if I cannot use 0 as a dummy
because it doesn't simplify the caller enough to justify the additional
function.

The only thing I need to be able is to distinguish the cases "there is
an irq", "there is no irq" and anything else is "there is a problem I
cannot handle and so forward it to my caller". The semantic of
platform_get_irq() is able to satisfy this requirement[1], so why introduce
platform_get_irq_opional() for the small advantage that I can check for
not-found using

	if (!irq)

instead of

	if (irq !=3D -ENXIO)

? The semantic of platform_get_irq() is easier ("Either a usable
non-negative irq number or a negative error number") compared to
platform_get_irq_optional() ("Either a usable positive irq number or a
negative error number or 0 meaning not found"). Usage of
platform_get_irq() isn't harder or more expensive (neither for a human
reader nor for a maching running the resulting compiled code).
For a human reader

	if (irq !=3D -ENXIO)

is even easier to understand because for

	if (!irq)

they have to check where the value comes from, see it's
platform_get_irq_optional() and understand that 0 means not-found.

This function just adds overhead because as a irq framework user I have
to understand another function. For me the added benefit is too small to
justify the additional function. And you break out-of-tree drivers.
These are all no major counter arguments, but as the advantage isn't
major either, they still matter.

Best regards
Uwe

[1] the only annoying thing is the error message.

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--2svqigojwuu4sr3n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHmraMACgkQwfwUeK3K
7Ak1qwf6Am8XN0nqXfS0pbngp7EaV4pL4oNS8RQxKSvsObY254xYZ+ARuc9D/qcI
/twFVp0MmVPlJHmpEM8KLdVakfXpJlaJRkoNiXFxGO6FJGbPNXIQvl33fM4L9u3c
k8jyDoz2mdmZdpc6JSLgLroVyQXOl/WygxRbgqO0WCHu762nPfCuaaKUb2yzQ0I1
m+08eRtqVh8WqbbOHrpIhcpfPYzkCeRiGeaqGkO5YwvqeH6kv6eudm8RkAfo6DE9
IwzIaWANKnEqD3UzsSUPdPTmMPfqWML7RJPs6sZCdumiS+Ox36ZGrc7Ewn2ffU/V
Q83qyxKFK+RfjJQmmPycReC6KM89bw==
=RHyZ
-----END PGP SIGNATURE-----

--2svqigojwuu4sr3n--


--===============3007012392615607128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3007012392615607128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============3007012392615607128==--

