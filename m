Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 518454B5AFD
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Feb 2022 21:31:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nJi0n-0005Y7-Rg; Mon, 14 Feb 2022 20:31:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1nJbqj-0006on-Fw
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 13:57:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XUPhhTFUrcxziTyM9ICjbangxL/7FfK6vBwsw4umz0g=; b=S2zipNaoAULWQMHrOj0CQoIH+h
 iRMQSKhb8i2xfVBJUXRStTSC+xOR9Ih1hBzj2sO4bwAU2hpVYlC8+ogsJyd883HXQEraZItehwxgF
 /LG1EY+aIl5N6X8sxoGzM2RwVHQOrwL+sqG/UBwDLttyuF35lI+sSwrB9hYCeFa/d8LI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XUPhhTFUrcxziTyM9ICjbangxL/7FfK6vBwsw4umz0g=; b=SDdFvVoHaNQFYtwuHFQS1iUQIK
 sgYMAlMPNag/MPw6zCq0JSaVTwC4g2Yx2Ny8FHpB7ACI0B1uDi4Q6h3IWJ3Yb/S6TRZwkYHuzGFEl
 hubXOrnHtKPZdqF6kQNhBryxPd9qHAwLTAdxeB452MDw25rSXfyFA6fBJf8G/CoG1TDA=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nJbqg-001Z7P-UT
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Feb 2022 13:57:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nJbqA-0006T5-AI; Mon, 14 Feb 2022 14:56:30 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nJbq0-00GYf6-Ms; Mon, 14 Feb 2022 14:56:19 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nJbpy-0038Nh-VX; Mon, 14 Feb 2022 14:56:18 +0100
Date: Mon, 14 Feb 2022 14:56:18 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20220214135618.kdiikxi3j4j4erks@pengutronix.de>
References: <20220212201631.12648-1-s.shtylyov@omp.ru>
 <20220212201631.12648-2-s.shtylyov@omp.ru>
 <20220214071351.pcvstrzkwqyrg536@pengutronix.de>
 <YgorLXUr8aT+1ttv@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <YgorLXUr8aT+1ttv@smile.fi.intel.com>
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
 
 Content preview:  Hello Andy, On Mon, Feb 14, 2022 at 12:13:01PM +0200, Andy
    Shevchenko wrote: > On Mon, Feb 14, 2022 at 08:13:51AM +0100, Uwe Kleine-König
    wrote: > > On Sat, Feb 12, 2022 at 11:16:30PM +0300, Sergey Shtylyov wrote
    [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1nJbqg-001Z7P-UT
X-Mailman-Approved-At: Mon, 14 Feb 2022 20:31:50 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 1/2] platform: make
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
 Vignesh Raghavendra <vigneshr@ti.com>, kvm@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 alsa-devel@alsa-project.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 Guenter Roeck <groeck@chromium.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-spi@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, openipmi-developer@lists.sourceforge.net,
 Peter Korsgaard <peter@korsgaard.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Jiri Slaby <jirislaby@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-pwm@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, linux-gpio@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Oleksij Rempel <linux@rempel-privat.de>,
 linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============7795651128883615782=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============7795651128883615782==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="woc7fbustut2ntcm"
Content-Disposition: inline


--woc7fbustut2ntcm
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Andy,

On Mon, Feb 14, 2022 at 12:13:01PM +0200, Andy Shevchenko wrote:
> On Mon, Feb 14, 2022 at 08:13:51AM +0100, Uwe Kleine-K=F6nig wrote:
> > On Sat, Feb 12, 2022 at 11:16:30PM +0300, Sergey Shtylyov wrote:
> > > This patch is based on the former Andy Shevchenko's patch:
> > >=20
> > > https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.shevchenko=
@linux.intel.com/
> > >=20
> > > Currently platform_get_irq_optional() returns an error code even if I=
RQ
> > > resource simply has not been found.  It prevents the callers from bei=
ng
> > > error code agnostic in their error handling:
> > >=20
> > > 	ret =3D platform_get_irq_optional(...);
> > > 	if (ret < 0 && ret !=3D -ENXIO)
> > > 		return ret; // respect deferred probe
> > > 	if (ret > 0)
> > > 		...we get an IRQ...
> > >=20
> > > All other *_optional() APIs seem to return 0 or NULL in case an optio=
nal
> > > resource is not available.  Let's follow this good example, so that t=
he
> > > callers would look like:
> > >=20
> > > 	ret =3D platform_get_irq_optional(...);
> > > 	if (ret < 0)
> > > 		return ret;
> > > 	if (ret > 0)
> > > 		...we get an IRQ...
> > >=20
> > > Reported-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> > > Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> >=20
> > While this patch is better than v1, I still don't like it for the
> > reasons discussed for v1. (i.e. 0 isn't usable as a dummy value which I
> > consider the real advantage for the other _get_optional() functions.)
>=20
> I think you haven't reacted anyhow to my point that you mixing apples and
> bananas together when comparing this 0 to the others _optional APIs.

Is this a question to me or Sergey?

I fully agree, when the 0 of platform_get_irq_optional is an apple and
the NULL of gpio_get_optional is a banana, I doubt "All other
*_optional() APIs seem to return 0 or NULL in case an optional resource
is not available.  Let's follow this good example, [...]".

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--woc7fbustut2ntcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmIKX38ACgkQwfwUeK3K
7AnLpgf9EdBYBZTRjJVoNGFFTEqmmhehKa4KFk5v/UfvgXZenr00B/u2K/MHO4lF
HHazTdjZ6XfXR0zlckqQaisXEU2TXb/YxxUC3K7hBgh1k2dtS14XlUQHbh2zQXQI
HKw3Yitn6vDghQH9WkSROTJNBOvMg3PcAg8i5h8g17e0D9BI5sdJERnMTFNeMzpz
cY95lA6BqyVoJn2GW+QxAKYiYCMB5CSNw3yIxV8nd8CKPKMUQNt4aX4EFwglsJKP
dB7ddBCRW0+mJcywV7mjkU7B7q6hTtPyAkNBQrWYtaAY4xcsIH7E2T64AaNc4Rah
C/iCiRD7LGScn9QG72fV+C+upY3/gg==
=VmOP
-----END PGP SIGNATURE-----

--woc7fbustut2ntcm--


--===============7795651128883615782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7795651128883615782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7795651128883615782==--

