Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A661B6347E4
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Nov 2022 21:17:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oxZhw-0003jJ-J9;
	Tue, 22 Nov 2022 20:17:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1oxZhv-0003jC-0h
 for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 20:17:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zXWYp+lacttuxq7vlwY6Bebnu9x98XECqGXfYOeLvRg=; b=YawmEyTLdYaf9gyxTZWmF6efRc
 nb/Lnb4B8LEdEXqbOhXj24csWxtL8RPCr9jCwyC+kvynPmu8nVK32eJodN1Jd2sCzGGkH3MNAWJCI
 gEVFn6Ws02q+z/YPEd2HG8IqXXm8gfEJahbax9mEZ2DBTVefL61pPo/vP5uGgXy0tBBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zXWYp+lacttuxq7vlwY6Bebnu9x98XECqGXfYOeLvRg=; b=OBeGpJxk2MmXRSydaoOtxwUP9w
 ktDzpXp29zSoz6TTaBPoBfIAkDa8zXgUtnD1pQk8pdh6SZ9daGNY23zKDAfamB8jy6voc767NWLLo
 8dLEUO1XdQbP5rMTYsnRidJqmbeu8wxSwtG9zYC7h3sfXGvAQjI/+8ZpmhZ2WZtYEmmA=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxZhq-00Crrl-Iw for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Nov 2022 20:17:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1oxZhX-0006Qx-Bo; Tue, 22 Nov 2022 21:17:03 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1oxZhR-005v1B-UM; Tue, 22 Nov 2022 21:16:58 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1oxZhS-000s7U-3N; Tue, 22 Nov 2022 21:16:58 +0100
Date: Tue, 22 Nov 2022 21:16:54 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jonathan Cameron <jic23@kernel.org>
Message-ID: <20221122201654.5rdaisqho33buibj@pengutronix.de>
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
 <20221122185818.3740200d@jic23-huawei>
MIME-Version: 1.0
In-Reply-To: <20221122185818.3740200d@jic23-huawei>
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
 Content preview:  On Tue, Nov 22, 2022 at 06:58:18PM +0000, Jonathan Cameron
 wrote: > > Queued all of the below: > with one tweaked as per your suggestion
 and the highlighted one dropped on basis > I was already carryi [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oxZhq-00Crrl-Iw
Subject: Re: [Openipmi-developer] [PATCH 000/606] i2c: Complete conversion
 to i2c_probe_new
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
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, netdev@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 linux-staging@lists.linux.dev,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 Grant Likely <grant.likely@linaro.org>, linux-media@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 linux-pm@vger.kernel.org, linux-actions@lists.infradead.org,
 Wolfram Sang <wsa@kernel.org>, linux-gpio@vger.kernel.org,
 Angel Iglesias <ang.iglesiasg@gmail.com>, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, openipmi-developer@lists.sourceforge.net,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-crypto@vger.kernel.org, kernel@pengutronix.de,
 patches@opensource.cirrus.com, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============2364131209403919952=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============2364131209403919952==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t3mjk627u66tfbb3"
Content-Disposition: inline


--t3mjk627u66tfbb3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 22, 2022 at 06:58:18PM +0000, Jonathan Cameron wrote:
>=20
> Queued all of the below:
> with one tweaked as per your suggestion and the highlighted one dropped o=
n basis
> I was already carrying the equivalent - as you pointed out.
>=20
> I was already carrying the required dependency.
>=20
> Includes the IIO ones in staging.
>=20
> Thanks,
>=20
> Jonathan
>=20
> p.s. I perhaps foolishly did this in a highly manual way so as to
> also pick up Andy's RB.  So might have dropped one...

You could have done:

	H=3D$(git rev-parse @)
	b4 am -P 49-190 20221118224540.619276-1-uwe@kleine-koenig.org
	git am ...
	git filter-branch -f --msg-filter "grep -v 'Signed-off-by: Jonathan'; echo=
 'Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>'; echo '=
Signed-off-by: Jonathan Cameron <jic23@kernel.org>'" $H..

(untested, but you get the idea).

> Definitely would have been better as one patch per subsystem with
> a cover letter suitable for replies like Andy's to be picked up
> by b4.

Next time I will go for one series per subsystem which I like better
than one patch per subsystem.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--t3mjk627u66tfbb3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmN9LjMACgkQwfwUeK3K
7An96wf/RMtsCSXVJy8BDrXiXMhey9OEm8p08ulRn0lKYlG54KR8nU/s77uuMjGS
99aUfUU56Abxk02DuBv6N5Bax8nlFyIlUgkfaYPP9iN1TkF5XiucQ0Se4/haYL4A
q11UqWIcKBS+5BL3K6Bl1Cqv4dPYpRvs99X3jlU6JmhFqJPPhPgAu0p74arSvLie
kN6wgOGVdCjZTRD+Z7FxfIQPZqvVo7anPAynyk7XfgTXMSAK80JPR2UeMfvQ7yr2
W28htsacTaJSnPOb1VIrhN8OytpxASYa120EJ8augNmBXC0IzvjosWI0LZnNljAU
izPd/d6lzDCP0Mz/LU9QCBYUR1jxuQ==
=KmMu
-----END PGP SIGNATURE-----

--t3mjk627u66tfbb3--


--===============2364131209403919952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2364131209403919952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============2364131209403919952==--

