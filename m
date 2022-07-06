Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3327568381
	for <lists+openipmi-developer@lfdr.de>; Wed,  6 Jul 2022 11:32:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o91OA-000129-87; Wed, 06 Jul 2022 09:32:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1o91O8-000122-Vy
 for openipmi-developer@lists.sourceforge.net; Wed, 06 Jul 2022 09:32:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tMU3E4eYksx+zNdAVlL51uq6GohePbaqlSk6+eyDGGY=; b=fD9uzmptr8cxGpypS4nizr7Jv5
 1k68TJj4MumtwWPPWMjwpQi5uwinJgonNyAxQDTjzgfinQIWjwPLbYEhBJqfbNnbjcFr0DMI37d3h
 HZ6xJFxdfuNLL3FKKXsmbcueXJ5Ltyb//3mdfcD1B229AR+iH5i6JWXzEnuvwTjX2VME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tMU3E4eYksx+zNdAVlL51uq6GohePbaqlSk6+eyDGGY=; b=ccsyi9nl2upVUOYYPfudiyGZUk
 jBWQU0NizUx1OrPXImPYipUaxP7fOdIqwnGaFqqtw5kmzRIBDQzddPC87db+Eh0HzjGpTWWuE6kQo
 Laa80MIlH2D7io7TqBJ6U8PE3U+qSDtvguuiht8bGk2f7DNsefidk7/LRLqRvalG1b9g=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o91O4-008fnx-CM
 for openipmi-developer@lists.sourceforge.net; Wed, 06 Jul 2022 09:32:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1o91Nj-0005lo-Ss; Wed, 06 Jul 2022 11:31:39 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1o91Na-004jSK-Sg; Wed, 06 Jul 2022 11:31:34 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1o91Nd-003KbY-Gm; Wed, 06 Jul 2022 11:31:33 +0200
Date: Wed, 6 Jul 2022 11:31:30 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Vladimir Oltean <olteanv@gmail.com>
Message-ID: <20220706093130.cet7y7upl76rp6ug@pengutronix.de>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
 <20220706091315.p5k2jck3rmyjhvqw@skbuf>
MIME-Version: 1.0
In-Reply-To: <20220706091315.p5k2jck3rmyjhvqw@skbuf>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jul 06, 2022 at 12:13:15PM +0300, Vladimir Oltean
   wrote: > On Tue, Jun 28, 2022 at 04:03:12PM +0200, Uwe Kleine-König wrote:
    > > From: Uwe Kleine-König <uwe@kleine-koenig.org> > > > > The valu [...]
    
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o91O4-008fnx-CM
Subject: Re: [Openipmi-developer] [PATCH 6/6] i2c: Make remove callback
 return void
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
Cc: alsa-devel@alsa-project.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-staging@lists.linux.dev, kasan-dev@googlegroups.com,
 linux-clk@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 linux-pm@vger.kernel.org, acpi4asus-user@lists.sourceforge.net,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org, patches@opensource.cirrus.com,
 linux-usb@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============1565606607527785831=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============1565606607527785831==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yp3ilhvx53xygi7l"
Content-Disposition: inline


--yp3ilhvx53xygi7l
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 06, 2022 at 12:13:15PM +0300, Vladimir Oltean wrote:
> On Tue, Jun 28, 2022 at 04:03:12PM +0200, Uwe Kleine-K=F6nig wrote:
> > From: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> >=20
> > The value returned by an i2c driver's remove function is mostly ignored.
> > (Only an error message is printed if the value is non-zero that the
> > error is ignored.)
> >=20
> > So change the prototype of the remove function to return no value. This
> > way driver authors are not tempted to assume that passing an error to
> > the upper layer is a good idea. All drivers are adapted accordingly.
> > There is no intended change of behaviour, all callbacks were prepared to
> > return 0 before.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
>=20
> Assuming you remove the spurious kasan change:

It's already gone in my tree, see
https://git.pengutronix.de/cgit/ukl/linux/commit/?h=3Di2c-remove-void

> Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--yp3ilhvx53xygi7l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmLFVmcACgkQwfwUeK3K
7AkOwAgAkt7aZ38n1lpOoBzXslSDQyp/lKc47Ehs+a1LTESfOP6+4frSHSJhaIMw
WX2bIAZO2kfHd2GJJ1+miP0YO3eys+YJus7vlVp9LsZCtTrR7uUlJ9PhG4eVmYxD
ZPZMbP533Mkp9Tj201PJRSbnOlhRhKnwpl4kQfj9nXD478yP1zbT/7CDh4Im1isE
dOUnNdPTAnT17u0fIRREu6TIC/hKy5Lh772ukCBsHwkBWQD4WTtLmdL1uZrspPa3
fKxI4tIGoKufFCNMNNzK8li/dghhpkn4uy8iNwyjkkmjfCXAkNdwNJiCDlo6qPwb
idJ3DvpJEEx44L8KdcjzBYUHdSNUkQ==
=ZnQL
-----END PGP SIGNATURE-----

--yp3ilhvx53xygi7l--


--===============1565606607527785831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1565606607527785831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1565606607527785831==--

