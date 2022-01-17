Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9374909FB
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Jan 2022 15:08:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9Sge-0000XE-MN; Mon, 17 Jan 2022 14:08:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n9Nh4-0007WW-UZ
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 08:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FVxkIVXvmC0Nrk/UWmSQOZ6cVlykJKmHFu7wmsgjKsA=; b=T/pZgbmK+RMN+Q5dzpJbwa4p0l
 8YrZRGg8cg2HrwSXnB63wUyBXJBEB79ZMFR4gfor6qt4t1nqQtTSCInU3EXcfyOHPePZVnEb6+GuM
 v7kOJjGQch9o3wcW6aJTdNsWvZ9gUGsbgK1ZpGyvZkphVqZDPBRvycSH4OkO6fSpIwkI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FVxkIVXvmC0Nrk/UWmSQOZ6cVlykJKmHFu7wmsgjKsA=; b=AC8GNWcQHtybONOPQET5avMNqM
 T4gwGyxiZpz6Y+td/PI8zVbmHAUPzKuDA26ZwDOziEyWuKPQTX6pBmCB4Q30N5OYf5Y6YUByp08K4
 yvlCwhnOva6YF4C6Aox/dMs474SBNbTGVz5OGpQ5nrkCDoioGv3wi1GgtpBZ+nyOL/Ns=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9Nh1-000bDX-Sm
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 08:48:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9Ng2-0001gr-D1; Mon, 17 Jan 2022 09:47:46 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9Nfp-00AmmL-Ku; Mon, 17 Jan 2022 09:47:32 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9Nfo-0000aW-I8; Mon, 17 Jan 2022 09:47:32 +0100
Date: Mon, 17 Jan 2022 09:47:32 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Message-ID: <20220117084732.cdy2sash5hxp4lwo@pengutronix.de>
References: <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <57af1851-9341-985e-7b28-d2ba86770ecb@omp.ru>
MIME-Version: 1.0
In-Reply-To: <57af1851-9341-985e-7b28-d2ba86770ecb@omp.ru>
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
 
 Content preview:  Hello, On Sun, Jan 16, 2022 at 09:15:20PM +0300, Sergey Shtylyov
    wrote: > On 1/14/22 11:22 PM, Uwe Kleine-König wrote: > > >>>>>>> To me it
    sounds much more logical for the driver to check if an > >>>>>>> op [...]
    
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n9Nh1-000bDX-Sm
X-Mailman-Approved-At: Mon, 17 Jan 2022 14:08:42 +0000
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
Content-Type: multipart/mixed; boundary="===============0320295818538858152=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============0320295818538858152==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2mz4a6sr5yneo75s"
Content-Disposition: inline


--2mz4a6sr5yneo75s
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Sun, Jan 16, 2022 at 09:15:20PM +0300, Sergey Shtylyov wrote:
> On 1/14/22 11:22 PM, Uwe Kleine-K=F6nig wrote:
>=20
> >>>>>>> To me it sounds much more logical for the driver to check if an
> >>>>>>> optional irq is non-zero (available) or zero (not available), tha=
n to
> >>>>>>> sprinkle around checks for -ENXIO. In addition, you have to remem=
ber
> >>>>>>> that this one returns -ENXIO, while other APIs use -ENOENT or -EN=
OSYS
> >>>>>>> (or some other error code) to indicate absence. I thought not hav=
ing
> >>>>>>> to care about the actual error code was the main reason behind the
> >>>>>>> introduction of the *_optional() APIs.
> >>>>>
> >>>>>> No, the main benefit of gpiod_get_optional() (and clk_get_optional=
()) is
> >>>>>> that you can handle an absent GPIO (or clk) as if it were availabl=
e.
> >>>>
> >>>>    Hm, I've just looked at these and must note that they match 1:1 w=
ith
> >>>> platform_get_irq_optional(). Unfortunately, we can't however behave =
the
> >>>> same way in request_irq() -- because it has to support IRQ0 for the =
sake
> >>>> of i8253 drivers in arch/...
> >>>
> >>> Let me reformulate your statement to the IMHO equivalent:
> >>>
> >>> 	If you set aside the differences between
> >>> 	platform_get_irq_optional() and gpiod_get_optional(),
> >>
> >>    Sorry, I should make it clear this is actually the diff between a w=
ould-be
> >> platform_get_irq_optional() after my patch, not the current code...
> >=20
> > The similarity is that with your patch both gpiod_get_optional() and
> > platform_get_irq_optional() return NULL and 0 on not-found. The relevant
> > difference however is that for a gpiod NULL is a dummy value, while for
> > irqs it's not. So the similarity is only syntactically, but not
> > semantically.
>=20
>    I have noting to say here, rather than optional IRQ could well have a =
different
> meaning than for clk/gpio/etc.
>=20
> [...]
> >>> However for an interupt this cannot work. You will always have to che=
ck
> >>> if the irq is actually there or not because if it's not you cannot ju=
st
> >>> ignore that. So there is no benefit of an optional irq.
> >>>
> >>> Leaving error message reporting aside, the introduction of
> >>> platform_get_irq_optional() allows to change
> >>>
> >>> 	irq =3D platform_get_irq(...);
> >>> 	if (irq < 0 && irq !=3D -ENXIO) {
> >>> 		return irq;
> >>> 	} else if (irq >=3D 0) {
> >>
> >>    Rather (irq > 0) actually, IRQ0 is considered invalid (but still re=
turned).
> >=20
> > This is a topic I don't feel strong for, so I'm sloppy here. If changing
> > this is all that is needed to convince you of my point ...
>=20
>    Note that we should absolutely (and first of all) stop returning 0 fro=
m platform_get_irq()
> on a "real" IRQ0. Handling that "still good" zero absolutely doesn't scal=
e e.g. for the subsystems
> (like libata) which take 0 as an indication that the polling mode should =
be used... We can't afford
> to be sloppy here. ;-)

Then maybe do that really first? I didn't recheck, but is this what the
driver changes in your patch is about?

After some more thoughts I wonder if your focus isn't to align
platform_get_irq_optional to (clk|gpiod|regulator)_get_optional, but to
simplify return code checking. Because with your change we have:

 - < 0 -> error
 - =3D=3D 0 -> no irq
 - > 0 -> irq

For my part I'd say this doesn't justify the change, but at least I
could better life with the reasoning. If you start at:

	irq =3D platform_get_irq_optional(...)
	if (irq < 0 && irq !=3D -ENXIO)
		return irq
	else if (irq > 0)
		setup_irq(irq);
	else
		setup_polling()

I'd change that to

	irq =3D platform_get_irq_optional(...)
	if (irq > 0) /* or >=3D 0 ? */
		setup_irq(irq)
	else if (irq =3D=3D -ENXIO)
		setup_polling()
	else
		return irq

This still has to mention -ENXIO, but this is ok and checking for 0 just
hardcodes a different return value.

Anyhow, I think if you still want to change platform_get_irq_optional
you should add a few patches converting some drivers which demonstrates
the improvement for the callers.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--2mz4a6sr5yneo75s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHlLSEACgkQwfwUeK3K
7AmyYgf/XGQlmMOUl2lAj4GQW7CiS0lV2TuFuhlnDJf7F3PzQ2L1ZVscbjBxxIXN
fsZPjxz917pgWPixWRPYgXzkeU3If7KNJ5f9/292eCe0By1fl+utu3I9WysE1hdr
PuW7Agx3O7iU6i4vgBzZwgsXhX1Lsmncj4/gBgrEr2pBghxy0BIv+tTmGrYXlmtJ
XRwbdG3Vvwwo7wBrJhY1BQafu9cvLp3DwecEhMLBuavyKMrZxRg81gVHsuuox+Bp
OCOzyMTz2kRs5wf3x8L6Hytaa9Qy6EHRw/hfHWaJJE1zZ6vs89ZNbD5agngTlucq
HqzlfNxrLhuHolxSw3kKK9ueKcEycg==
=bX8l
-----END PGP SIGNATURE-----

--2mz4a6sr5yneo75s--


--===============0320295818538858152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0320295818538858152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============0320295818538858152==--

