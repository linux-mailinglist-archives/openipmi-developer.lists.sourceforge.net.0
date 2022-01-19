Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DF0493D7C
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jan 2022 16:45:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nAD9S-0001A1-Fd; Wed, 19 Jan 2022 15:45:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1nACUU-0004DH-55
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 15:03:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eqqygOJ27Mqt0iHtXs/T0r2wmBqQRCD5XUBXfynpCWM=; b=Y7gwiL29djNoJel1+hlOoRXXE/
 RQac2c3oImGdn4HbZybJikjQbbvJLZKqhYC0dmiXKb0WRfzfbytL1Hz3OQXjmB4HY0fxqdFNMH952
 I+CSJ/1Q8hxvOGDtW7CL6TIrbfoaVW9EIFJ0Ps4ZJvYGLN+EKYP2xnO4kAbqgIX8A3Vc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eqqygOJ27Mqt0iHtXs/T0r2wmBqQRCD5XUBXfynpCWM=; b=kPJVMZ6i6vpxqYuNe9J8KME8dC
 5NHp10q4WWJhpZLRtPOROO3WdaCbP62NkiT1dIn5qOdNovN8Yj6590KQvctA3YAKeFLj0a8sZ7qZQ
 rf+eelEomDkhHeLPMhZhiY20kMc9P4Te57b8cJmF9UB805cJ+anfcfnI7DQeeyJYEaQU=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nACUO-0005YS-6k
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jan 2022 15:03:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nACU6-0000Mu-Qo; Wed, 19 Jan 2022 16:02:50 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nACTw-00BCee-8V; Wed, 19 Jan 2022 16:02:39 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nACTv-0005e5-0v; Wed, 19 Jan 2022 16:02:39 +0100
Date: Wed, 19 Jan 2022 16:02:38 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Message-ID: <20220119150238.5sru3vtuwsswdnkx@pengutronix.de>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <770fb569-03c8-78f9-c174-94b31e866017@omp.ru>
MIME-Version: 1.0
In-Reply-To: <770fb569-03c8-78f9-c174-94b31e866017@omp.ru>
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
 Content preview:  On Mon, Jan 17, 2022 at 02:57:32PM +0300, Sergey Shtylyov
 wrote: > On 1/10/22 10:54 PM, Sergey Shtylyov wrote: > > > This patch is based
 on the former Andy Shevchenko's patch: > > > > https://lore.ker [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1nACUO-0005YS-6k
X-Mailman-Approved-At: Wed, 19 Jan 2022 15:45:32 +0000
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
 Vignesh Raghavendra <vigneshr@ti.com>, kvm@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Guenter Roeck <groeck@chromium.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 platform-driver-x86@vger.kernel.org, linux-pwm@vger.kernel.org,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 John Garry <john.garry@huawei.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, linux-gpio@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Eric Auger <eric.auger@redhat.com>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Sebastian Reichel <sre@kernel.org>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1759853172015859222=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============1759853172015859222==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="axfsyc4ql4z6wxfj"
Content-Disposition: inline


--axfsyc4ql4z6wxfj
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 17, 2022 at 02:57:32PM +0300, Sergey Shtylyov wrote:
> On 1/10/22 10:54 PM, Sergey Shtylyov wrote:
>=20
> > This patch is based on the former Andy Shevchenko's patch:
> >=20
> > https://lore.kernel.org/lkml/20210331144526.19439-1-andriy.shevchenko@l=
inux.intel.com/
> >=20
> > Currently platform_get_irq_optional() returns an error code even if IRQ
> > resource simply has not been found. It prevents the callers from being
> > error code agnostic in their error handling:
> >=20
> > 	ret =3D platform_get_irq_optional(...);
> > 	if (ret < 0 && ret !=3D -ENXIO)
> > 		return ret; // respect deferred probe
> > 	if (ret > 0)
> > 		...we get an IRQ...
> >=20
> > All other *_optional() APIs seem to return 0 or NULL in case an optional
> > resource is not available. Let's follow this good example, so that the
> > callers would look like:
> >=20
> > 	ret =3D platform_get_irq_optional(...);
> > 	if (ret < 0)
> > 		return ret;
> > 	if (ret > 0)
> > 		...we get an IRQ...
> >=20
> > Reported-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> > Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> [...]
>=20
>    Please don't merge this as yet, I'm going thru this patch once again
> and have already found some sloppy code. :-/

Who would you expect to merge this? I would have expected Greg, but he
seems to have given up this thread.

> > diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> > index 7450904e330a..fdc63bfa5be4 100644
> > --- a/drivers/char/ipmi/bt-bmc.c
> > +++ b/drivers/char/ipmi/bt-bmc.c
> > @@ -382,12 +382,14 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bm=
c,
> >  	bt_bmc->irq =3D platform_get_irq_optional(pdev, 0);
> >  	if (bt_bmc->irq < 0)
> >  		return bt_bmc->irq;
> > +	if (!bt_bmc->irq)
> > +		return 0;
>=20
>    Hm, this is sloppy. Will recast and rebase to the -next branch.

I didn't think about what you mean with sloppy, but the code is
equivalent to

	if (bt_bmc->irq <=3D 0)
		return bt_bmc->irq;=20

> > =20
> >  	rc =3D devm_request_irq(dev, bt_bmc->irq, bt_bmc_irq, IRQF_SHARED,
> >  			      DEVICE_NAME, bt_bmc);
> >  	if (rc < 0) {
> >  		dev_warn(dev, "Unable to request IRQ %d\n", bt_bmc->irq);
> > -		bt_bmc->irq =3D rc;
> > +		bt_bmc->irq =3D 0;
>=20
>    This change isn't needed...
>=20
> >  		return rc;
> >  	}
> > =20
> [...]
> > diff --git a/drivers/edac/xgene_edac.c b/drivers/edac/xgene_edac.c
> > index 2ccd1db5e98f..0d1bdd27cd78 100644
> > --- a/drivers/edac/xgene_edac.c
> > +++ b/drivers/edac/xgene_edac.c
> > @@ -1917,7 +1917,7 @@ static int xgene_edac_probe(struct platform_devic=
e *pdev)
> > =20
> >  		for (i =3D 0; i < 3; i++) {
> >  			irq =3D platform_get_irq_optional(pdev, i);
>=20
>    Is *_optinal() even correct here?

_optinal isn't correct, _optional maybe is. :-)
Anyhow, look at e26124cd5f7099949109608845bba9e9bf96599c, the driver was
fixed not to print two error messages and the wrong option was picked.

> > -			if (irq < 0) {
> > +			if (irq <=3D 0) {
> >  				dev_err(&pdev->dev, "No IRQ resource\n");
> >  				rc =3D -EINVAL;
> >  				goto out_err;

What's wrong here is that the return code is hardcoded ...

> [...]
> > diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nan=
d/raw/brcmnand/brcmnand.c
> > index f75929783b94..ac222985efde 100644
> > --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> > +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> > @@ -1521,7 +1521,7 @@ static irqreturn_t brcmnand_ctlrdy_irq(int irq, v=
oid *data)
> > =20
> >  	/* check if you need to piggy back on the ctrlrdy irq */
> >  	if (ctrl->edu_pending) {
> > -		if (irq =3D=3D ctrl->irq && ((int)ctrl->edu_irq >=3D 0))
> > +		if (irq =3D=3D ctrl->irq && ((int)ctrl->edu_irq > 0))
>=20
>    Note to self: the cast to *int* isn't needed, the edu_irq field is *in=
t* already...
>=20
> [...]
> > diff --git a/drivers/power/supply/mp2629_charger.c b/drivers/power/supp=
ly/mp2629_charger.c
> > index bdf924b73e47..51289700a7ac 100644
> > --- a/drivers/power/supply/mp2629_charger.c
> > +++ b/drivers/power/supply/mp2629_charger.c
> > @@ -581,9 +581,9 @@ static int mp2629_charger_probe(struct platform_dev=
ice *pdev)
> >  	platform_set_drvdata(pdev, charger);
> > =20
> >  	irq =3D platform_get_irq_optional(to_platform_device(dev->parent), 0);
>=20
>    Again, is *_optional() even correct here?
>=20
> > -	if (irq < 0) {
> > +	if (irq <=3D 0) {
> >  		dev_err(dev, "get irq fail: %d\n", irq);
> > -		return irq;
> > +		return irq < 0 ? irq : -ENXIO;

Ack, could be simplified by switching to platform_get_irq().

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--axfsyc4ql4z6wxfj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHoKAsACgkQwfwUeK3K
7AnJ3wf8Cq4VBWsvtLpuPywS2t8zcX9OLW+0bsxWsDjOHqeg0f9tl0AUgxmt8S9X
SWtqXkvnd0fKD/AWHIowmqZNGujzE45BD9vwkw+ukhavxyl0lKuWHitl19jLf2tF
LaBokU8H4RFjBZg81G2SeyXBeDWI+toak3seZ4mnpeDIrSgl7RrEyyKdZRVyeCvS
PVAC4TvXo94UopGC0KiLom/BRpY9pB6M4M2J/vZRYI2+Eb2tjizO6vc77DQlqTEs
SVeOuA4nagghgp5Ej7LJ1RpUqI/Ud34jbrXinsPr+F53/9ObxRRRShqRTqmRTQwj
91WhtqHtqhEzcn1OajDmLZZRPbVc3A==
=bHLP
-----END PGP SIGNATURE-----

--axfsyc4ql4z6wxfj--


--===============1759853172015859222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1759853172015859222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1759853172015859222==--

