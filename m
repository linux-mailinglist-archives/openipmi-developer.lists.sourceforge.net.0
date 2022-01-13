Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 521CF48DB1A
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jan 2022 16:53:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n82PO-0002T6-Cp; Thu, 13 Jan 2022 15:53:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n7xzA-0002SN-Av
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 11:09:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=13x7GmhEd/tTFV4fArR5vgcN+SrVZ6BcG4PrbR5yT2g=; b=kmLbVfmquyA0rUjl3Ua5wdfIce
 /9bG2LUP226xGQjFazwlZeKbR51HgBqPomLWQtKI+z6JbMxZPRPjaWRZsNShr27JI+oFrYbuiBh4Y
 fNXWvJ8hNzjnDuf3SEtKXEjwk9zLolbbqTX8nckNFQVsCM1YVRUGZDNjk9s6BAj8cjCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=13x7GmhEd/tTFV4fArR5vgcN+SrVZ6BcG4PrbR5yT2g=; b=mL4qcmzGA/ju6kqb8JeWyx0kxj
 mxntLh13O/HaxQQDFPTiaGTXStpKoMlUfJOezpLVGQS8DfHtQqsC9GeU7wP1lezeYYMAaHe2nOM7d
 ntKH4DRe/1cZQd6FShPGEHDIjrsh66lb4wUFhX9BjM6DmAVb3VkJUuptqOIBKebBBQlk=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7xz8-00066w-A0
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 11:09:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n7xyF-0006Q7-HJ; Thu, 13 Jan 2022 12:08:43 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n7xy5-00A3Hi-BT; Thu, 13 Jan 2022 12:08:32 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n7xy3-0005lb-Nu; Thu, 13 Jan 2022 12:08:31 +0100
Date: Thu, 13 Jan 2022 12:08:31 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <Yd9L9SZ+g13iyKab@sirena.org.uk>
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
 
 Content preview:  On Wed, Jan 12, 2022 at 09:45:25PM +0000, Mark Brown wrote:
    > On Wed, Jan 12, 2022 at 10:31:21PM +0100, Uwe Kleine-König wrote: > > On
    Wed, Jan 12, 2022 at 11:27:02AM +0100, Geert Uytterhoeven wrote: [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
X-Headers-End: 1n7xz8-00066w-A0
X-Mailman-Approved-At: Thu, 13 Jan 2022 15:52:57 +0000
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
 Alex Williamson <alex.williamson@redhat.com>, Tony Luck <tony.luck@intel.com>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Mun Yew Tham <mun.yew.tham@intel.com>,
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
Content-Type: multipart/mixed; boundary="===============8821908644960744246=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8821908644960744246==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zcdy7nemyxfoojub"
Content-Disposition: inline


--zcdy7nemyxfoojub
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 12, 2022 at 09:45:25PM +0000, Mark Brown wrote:
> On Wed, Jan 12, 2022 at 10:31:21PM +0100, Uwe Kleine-K=F6nig wrote:
> > On Wed, Jan 12, 2022 at 11:27:02AM +0100, Geert Uytterhoeven wrote:
>=20
> (Do we really need *all* the CCs here?)

It's probably counteractive to finding an agreement because there are
too many opinions on that matter. But I didn't dare to strip it down,
too :-)

> > That convinces me, that platform_get_irq_optional() is a bad name. The
> > only difference to platform_get_irq is that it's silent. And returning
> > a dummy irq value (which would make it aligned with the other _optional
> > functions) isn't possible.
>=20
> There is regulator_get_optional() which is I believe the earliest of
> these APIs, it doesn't return a dummy either (and is silent too) - this
> is because regulator_get() does return a dummy since it's the vastly
> common case that regulators must be physically present and them not
> being found is due to there being an error in the system description.
> It's unfortunate that we've ended up with these two different senses for
> _optional(), people frequently get tripped up by it.

Yeah, I tripped over that one already, too. And according to my counting
this results in three different senses now :-\ :

 a) regulator
    regulator_get returns a dummy, regulator_get_optional returns ERR_PTR(-=
ENODEV)
 b) clk + gpiod
    ..._get returns ERR_PTR(-ENODEV), ..._get_optional returns a dummy
 c) platform_get_irq()
    platform_get_irq_optional() is just a silent variant of
    platform_get_irq(); the return values are identical.
   =20
This is all very unfortunate. In my eyes b) is the most sensible
sense, but the past showed that we don't agree here. (The most annoying
part of regulator_get is the warning that is emitted that regularily
makes customers ask what happens here and if this is fixable.)

I think at least c) is easy to resolve because
platform_get_irq_optional() isn't that old yet and mechanically
replacing it by platform_get_irq_silent() should be easy and safe.
And this is orthogonal to the discussion if -ENOXIO is a sensible return
value and if it's as easy as it could be to work with errors on irq
lookups.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--zcdy7nemyxfoojub
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHgCCsACgkQwfwUeK3K
7AktbAf/UzNin6+fnXTmkdrTvXWaXCV8TB76EIUtIdNWwJEjmXxWes5jyBpp/jXj
7gSmYT3gi4oK0wjB6dKmqF6jba5/RPL4cdS6/8iQDp32Xey0hzWymBPENLc/Nxt5
Ge81cdot6EFxqSkuW1Zbe55wzmNUmEsez7+e+8gJAviPB6zQndDE/zAkwxczzb04
GfD6Uixgm4a29NwXNIignwNm8pACez/px2A8cVhILZ8135X0rdwYM17BiQtfM5Uq
s2hZsLfxWm9ZvdyxA7gGvsfefPmiPfS3k/HWagHMDB8nQq4vqnMmPTu01YJs34dM
+ycJZkglW3eJnCZ9Fr5sjnuP6uLExw==
=5Hn7
-----END PGP SIGNATURE-----

--zcdy7nemyxfoojub--


--===============8821908644960744246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8821908644960744246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8821908644960744246==--

