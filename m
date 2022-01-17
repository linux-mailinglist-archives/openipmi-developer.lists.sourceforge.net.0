Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 433D04909FD
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Jan 2022 15:08:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9Sge-0000XO-RD; Mon, 17 Jan 2022 14:08:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n9OGf-0005of-Lx
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 09:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DX4IX4IzvLi9QDR894djCcOKKkO8RZvycfG7E8OcpGc=; b=CmvLCU4lMvS2goqpwSH/udmq8E
 qFFQ9HaVqZ5q+RnfCXOKro0OsCe2n33rijPFFWezTBEtaH/yb960TaCgyVjSEt8qg5jLGAeaj+NRb
 RHdT9+leZ0uTF1+uw7mI7o0ZK2ilnOisjc7+3mHhiPb6ztCx0qTikHhvglUG5yyUtuFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DX4IX4IzvLi9QDR894djCcOKKkO8RZvycfG7E8OcpGc=; b=m5y2TBF1I38/ZaFkIrRDrPGLbI
 L6RHK6fYZtYdHUgz8bFUtiVWhW1M50Klw7ofNUvMYQa0NbL4LkvEQlVY/EyZpEdZE0jCJSqQD74qC
 MdK+xyoKCAyB4mEZ0iG92U9HgNqtW1Rnw8RI+Q3LIWgJeuzCxNyDha2Ei2w7EyDEB7kA=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9OGc-000ctC-At
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 09:25:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9OFv-0006KR-Ei; Mon, 17 Jan 2022 10:24:51 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9OFp-00AnDX-Gd; Mon, 17 Jan 2022 10:24:44 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9OFo-0002fs-6r; Mon, 17 Jan 2022 10:24:44 +0100
Date: Mon, 17 Jan 2022 10:24:44 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
References: <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
 <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
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
 
 Content preview:  Hello Geert, On Mon, Jan 17, 2022 at 09:41:42AM +0100, Geert
    Uytterhoeven wrote: > On Sat, Jan 15, 2022 at 9:22 PM Sergey Shtylyov <s.shtylyov@omp.ru>
    wrote: > > On 1/14/22 11:22 PM, Uwe Kleine-König wrote: > > > [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n9OGc-000ctC-At
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
 Daniel Lezcano <daniel.lezcano@linaro.org>, Tony Luck <tony.luck@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
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
 Eric Auger <eric.auger@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>,
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
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============5878259910086444499=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============5878259910086444499==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ycu5k3o6g2lyq6o4"
Content-Disposition: inline


--ycu5k3o6g2lyq6o4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Geert,

On Mon, Jan 17, 2022 at 09:41:42AM +0100, Geert Uytterhoeven wrote:
> On Sat, Jan 15, 2022 at 9:22 PM Sergey Shtylyov <s.shtylyov@omp.ru> wrote:
> > On 1/14/22 11:22 PM, Uwe Kleine-K=F6nig wrote:
> > > You have to understand that for clk (and regulator and gpiod) NULL is=
 a
> > > valid descriptor that can actually be used, it just has no effect. So
> > > this is a convenience value for the case "If the clk/regulator/gpiod =
in
> > > question isn't available, there is nothing to do". This is what makes
> > > clk_get_optional() and the others really useful and justifies their
> > > existence. This doesn't apply to platform_get_irq_optional().
> >
> >    I do understand that. However, IRQs are a different beast with their
> > own justifications...
>=20
> > > clk_get_optional() is sane and sensible for cases where the clk might=
 be
> > > absent and it helps you because you don't have to differentiate betwe=
en
> > > "not found" and "there is an actual resource".
> > >
> > > The reason for platform_get_irq_optional()'s existence is just that
> > > platform_get_irq() emits an error message which is wrong or suboptimal
> >
> >    I think you are very wrong here. The real reason is to simplify the
> > callers.
>=20
> Indeed.

The commit that introduced platform_get_irq_optional() said:

	Introduce a new platform_get_irq_optional() that works much like
	platform_get_irq() but does not output an error on failure to
	find the interrupt.

So the author of 8973ea47901c81a1912bd05f1577bed9b5b52506 failed to
mention the real reason? Or look at
31a8d8fa84c51d3ab00bf059158d5de6178cf890:

	[...] use platform_get_irq_optional() to get second/third IRQ
	which are optional to avoid below error message during probe:
	[...]

Look through the output of

	git log -Splatform_get_irq_optional

to find several more of these.

Also I fail to see how a caller of (today's) platform_get_irq_optional()
is simpler than a caller of platform_get_irq() given that there is no
semantic difference between the two. Please show me a single
conversion from platform_get_irq to platform_get_irq_optional that
yielded a simplification.

So you need some more effort to convince me of your POV.

> Even for clocks, you cannot assume that you can always blindly use
> the returned dummy (actually a NULL pointer) to call into the clk
> API.  While this works fine for simple use cases, where you just
> want to enable/disable an optional clock (clk_prepare_enable() and
> clk_disable_unprepare()), it does not work for more complex use cases.

Agreed. But for clks and gpiods and regulators the simple case is quite
usual. For irqs it isn't.

And if you cannot blindly use the dummy, then you're not the targetted
caller of *_get_optional() and should better use *_get() and handle
-ENODEV explicitly.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ycu5k3o6g2lyq6o4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHlNdMACgkQwfwUeK3K
7AkbyQf/dzwfw39nzRfi8yss0CiqoAU/yS+7MsnZvnWGKQxcIojgK1OX/xdxiMKI
C4HnYtImt4dRHJdZDTL5+BWmwrkKo3ytJl8YRHBffgzQdKfAXOit1Pce623dbYvd
wKJedLR6H9VXuTa1ULEvTnC0cXupHaoxjvQbKkUhlz/PahrhX91+dNJcoWTB6eB2
YSb6MMcqwMFJ6y2P4pDKDoCf0RNjt8EzTKMWUdx1zcCrqT+wDzA0Ub0UvM7EpUXn
ziLd4JEC+3SxJZvr2Y8jPQUGb4RMr+Z20vfEOG154m+zZ5lZe7Pcp1ggo6wb+fZ9
qM6JVYjExAvA43UcTTna2uSeE/+nfA==
=gHVT
-----END PGP SIGNATURE-----

--ycu5k3o6g2lyq6o4--


--===============5878259910086444499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5878259910086444499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5878259910086444499==--

