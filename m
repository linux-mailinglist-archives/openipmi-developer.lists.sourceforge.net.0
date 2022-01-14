Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 857D448E9D6
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 13:30:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8Lif-0002VR-LU; Fri, 14 Jan 2022 12:30:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n8Ir6-0003bm-K8
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 09:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jcxG4UEsOqvdbdpIQRoIMRnW+b39kHWvziozaxd+5MI=; b=g+izc+YQx0sGvqMwcJSHwAotdl
 jILF6gzILWFnUBr5BMn2GMnjsD1/nRE0HOaZXsBYGsvxVSdo/KPAEGHqX9FCkqoYYkkmwDMQPaeBc
 Kfx0yb1X9qN4IkkZKYklwq9ii2TzmQavxoc5xb38UzeY+GJuSGc2t0kKBjaOpZb7UdkI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jcxG4UEsOqvdbdpIQRoIMRnW+b39kHWvziozaxd+5MI=; b=VDdcBtdm9IRqWpPygCZyIGmaq0
 1oo982cMyzdlN30rIeTpqfXk/1a/7Uysk9FdzdAd5lbvzirvO27Gi1cZYJUwyLK80rhTcdUs6YNIZ
 KK9Oyju9J7ZZyai6XD5GvuRpE0NTi/3CHsAcVtptMkPF4+MF0kQ1ji+bmWM0pQ+PMOlk=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8Ir4-0001hm-VE
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 09:26:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8IqX-0007Po-Mn; Fri, 14 Jan 2022 10:26:09 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8IqP-00AEBU-7g; Fri, 14 Jan 2022 10:26:00 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8IqN-0000tG-Uq; Fri, 14 Jan 2022 10:25:59 +0100
Date: Fri, 14 Jan 2022 10:25:57 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Message-ID: <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
MIME-Version: 1.0
In-Reply-To: <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
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
 Content preview:  Hello Sergey, On Thu, Jan 13, 2022 at 11:35:34PM +0300,
 Sergey
 Shtylyov wrote: > On 1/13/22 12:45 AM, Mark Brown wrote: > >>> To me it sounds
 much more logical for the driver to check if an > >>> optional irq is no
 [...] Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n8Ir4-0001hm-VE
X-Mailman-Approved-At: Fri, 14 Jan 2022 12:30:11 +0000
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
 "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5977069897727533735=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============5977069897727533735==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pqpclpjbrmroys3t"
Content-Disposition: inline


--pqpclpjbrmroys3t
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Sergey,

On Thu, Jan 13, 2022 at 11:35:34PM +0300, Sergey Shtylyov wrote:
> On 1/13/22 12:45 AM, Mark Brown wrote:
> >>> To me it sounds much more logical for the driver to check if an
> >>> optional irq is non-zero (available) or zero (not available), than to
> >>> sprinkle around checks for -ENXIO. In addition, you have to remember
> >>> that this one returns -ENXIO, while other APIs use -ENOENT or -ENOSYS
> >>> (or some other error code) to indicate absence. I thought not having
> >>> to care about the actual error code was the main reason behind the
> >>> introduction of the *_optional() APIs.
> >=20
> >> No, the main benefit of gpiod_get_optional() (and clk_get_optional()) =
is
> >> that you can handle an absent GPIO (or clk) as if it were available.
>=20
>    Hm, I've just looked at these and must note that they match 1:1 with
> platform_get_irq_optional(). Unfortunately, we can't however behave the
> same way in request_irq() -- because it has to support IRQ0 for the sake
> of i8253 drivers in arch/...

Let me reformulate your statement to the IMHO equivalent:

	If you set aside the differences between
	platform_get_irq_optional() and gpiod_get_optional(),
	platform_get_irq_optional() is like gpiod_get_optional().

The introduction of gpiod_get_optional() made it possible to simplify
the following code:

	reset_gpio =3D gpiod_get(...)
	if IS_ERR(reset_gpio):
		error =3D PTR_ERR(reset_gpio)
		if error !=3D -ENDEV:
			return error
	else:
		gpiod_set_direction(reset_gpiod, INACTIVE)

to

	reset_gpio =3D gpiod_get_optional(....)
	if IS_ERR(reset_gpio):
		return reset_gpio
	gpiod_set_direction(reset_gpiod, INACTIVE)

and I never need to actually know if the reset_gpio actually exists.
Either the line is put into its inactive state, or it doesn't exist and
then gpiod_set_direction is a noop. For a regulator or a clk this works
in a similar way.

However for an interupt this cannot work. You will always have to check
if the irq is actually there or not because if it's not you cannot just
ignore that. So there is no benefit of an optional irq.

Leaving error message reporting aside, the introduction of
platform_get_irq_optional() allows to change

	irq =3D platform_get_irq(...);
	if (irq < 0 && irq !=3D -ENXIO) {
		return irq;
	} else if (irq >=3D 0) {
		... setup irq operation ...
	} else { /* irq =3D=3D -ENXIO */
		... setup polling ...
	}

to
=09
	irq =3D platform_get_irq_optional(...);
	if (irq < 0 && irq !=3D -ENXIO) {
		return irq;
	} else if (irq >=3D 0) {
		... setup irq operation ...
	} else { /* irq =3D=3D -ENXIO */
		... setup polling ...
	}

which isn't a win. When changing the return value as you suggest, it can
be changed instead to:

	irq =3D platform_get_irq_optional(...);
	if (irq < 0) {
		return irq;
	} else if (irq > 0) {
		... setup irq operation ...
	} else { /* irq =3D=3D 0 */
		... setup polling ...
	}

which is a tad nicer. If that is your goal however I ask you to also
change the semantic of platform_get_irq() to return 0 on "not found".
Note the win is considerably less compared to gpiod_get_optional vs
gpiod_get however. And then it still lacks the semantic of a dummy irq
which IMHO forfeits the right to call it ..._optional().

Now I'm unwilling to continue the discussion unless there pops up a
suggestion that results in a considerable part (say > 10%) of the
drivers using platform_get_irq_optional not having to check if the
return value corresponds to "not found".

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--pqpclpjbrmroys3t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHhQaIACgkQwfwUeK3K
7AmkQAf/d5PfPw0IAOs7Wqvc6r/p6+1tkvEg9YM43cQ03LWApgcX+mJuGNq/lpcb
MvZUP4vJwOgXf4HlzKhY5cmrtlcjY+gTojfSCWGvV2oO7t1vx/19Mqh9zY3W297j
f5fYMWJx8DicM/I+7Clo5cNGZiBiwEcH3eptaX6YahEQXjSg45gPcXIpGNotj8AO
O/Xl9hviFVW48prFLlFLY+qfKNsJPVNtu/Gnl8qdD/USm6Wa7361ko6G32lHIHUf
7NnENwu96Qw92tZN7jHMMmHbiW1xwp5Yu3yd4xf2/h/RBc3iRsgbEoSgjoUYbMgS
v/GqERP7XEBCpDmg1fzMNr/LcXeBxQ==
=hCsr
-----END PGP SIGNATURE-----

--pqpclpjbrmroys3t--


--===============5977069897727533735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5977069897727533735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5977069897727533735==--

