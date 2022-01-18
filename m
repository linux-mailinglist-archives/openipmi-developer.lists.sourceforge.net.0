Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E6349266E
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jan 2022 14:05:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9oBA-0001p4-4m; Tue, 18 Jan 2022 13:05:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n9kde-0003iO-KN
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 09:18:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QTsoAnuoWcQ/PFOWSJs39mR42Nn8nM5FQvOxHuCGoOA=; b=Q0ILs7Ut+dVJKrHPCSJrgJ6qsG
 +5JYFmn1x0Km+7+uXDDA0H3Oof2GrA3tBjF7rzjZEoPeI4y+twIsvtidr49Q8FhlbYFeyJUi7KgOz
 y0uQBwXf75FUTdl9OBN+mqBbfa0/cnLLi9n2qWjGFqqf9K+7ybzmM2hakP7BWLcwUxsk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QTsoAnuoWcQ/PFOWSJs39mR42Nn8nM5FQvOxHuCGoOA=; b=B/SJ+Gg8iZeGCbrE/lO8JcEo91
 l4yLb0kBK4I5LSw55LV4EtQWN4nX5Fh1R6qX0o8zn4XbhP2rJpssNkcEm6BIWOA7ckDFTuGW1NlPc
 oEaUYPJ59kGsULCXEs2GQvK6RaeQanZ8+qC0+YPKj5L11cmPd/XgIY1wWPclMKx2XAqM=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9kdb-0004sE-Sc
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 09:18:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9kdD-0006Nd-T3; Tue, 18 Jan 2022 10:18:23 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9kdA-00Ayd5-Tc; Tue, 18 Jan 2022 10:18:20 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9kd9-0003a7-SE; Tue, 18 Jan 2022 10:18:19 +0100
Date: Tue, 18 Jan 2022 10:18:19 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20220118091819.zzxpffrxbckoxiys@pengutronix.de>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220115183643.6zxalxqxrhkfgdfq@pengutronix.de>
 <YeQpWu2sUVOSaT9I@kroah.com>
MIME-Version: 1.0
In-Reply-To: <YeQpWu2sUVOSaT9I@kroah.com>
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
 
 Content preview:  On Sun, Jan 16, 2022 at 03:19:06PM +0100, Greg Kroah-Hartman
    wrote: > On Sat, Jan 15, 2022 at 07:36:43PM +0100, Uwe Kleine-König wrote:
    > > A possible compromise: We can have both. We rename > > platf [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n9kdb-0004sE-Sc
X-Mailman-Approved-At: Tue, 18 Jan 2022 13:05:37 +0000
Subject: Re: [Openipmi-developer] [PATCH 1/2] platform: make
 platform_get_irq_optional() optional (summary)
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
 alsa-devel@alsa-project.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-phy@lists.infradead.org, linux-spi@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Jiri Slaby <jirislaby@kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-pwm@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 John Garry <john.garry@huawei.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, linux-gpio@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>, netdev@vger.kernel.org,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Sergey Shtylyov <s.shtylyov@omp.ru>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============2798704889243406619=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============2798704889243406619==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4nmi7jsy4ulpuolr"
Content-Disposition: inline


--4nmi7jsy4ulpuolr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 16, 2022 at 03:19:06PM +0100, Greg Kroah-Hartman wrote:
> On Sat, Jan 15, 2022 at 07:36:43PM +0100, Uwe Kleine-K=F6nig wrote:
> > A possible compromise: We can have both. We rename
> > platform_get_irq_optional() to platform_get_irq_silent() (or
> > platform_get_irq_silently() if this is preferred) and once all users are
> > are changed (which can be done mechanically), we reintroduce a
> > platform_get_irq_optional() with Sergey's suggested semantic (i.e.
> > return 0 on not-found, no error message printking).
>=20
> Please do not do that as anyone trying to forward-port an old driver
> will miss the abi change of functionality and get confused.  Make
> build-breaking changes, if the way a function currently works is
> changed in order to give people a chance.

Fine for me. I assume this is a Nack for Sergey's patch?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--4nmi7jsy4ulpuolr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHmhdgACgkQwfwUeK3K
7AlOfwf/RajwcOGZOaXu4/Hu0uIDDH01Izth3e7+cbt0DvzofBxZhrwLi6+7R8Ii
FDvio63jvvz41IZoKpB3Sp3cJe6N5nHxfoeVbVFx1oDC5ZSb3xpzIKBpz6usYWSK
mpEzG1FLl/zHhNcFBvzOrkoJNhHOKKqTkCMQ9+SMFB2QpzY2GlhGyeloYsR5wRlS
36dfdheA3MnzMe+YgqcykvdU78oW4Ajcnq+31xfkY4u4FtLXz44Pz4j32buAaqtw
/Ryrr0NnSSAdwMkNMebBf3XX8emOhXd3w/ActLJA50YN3K1ePF1ViBaNwB6wIGGA
DmnwP6lCav2JoRm3yOWVlcLDeltVJA==
=IrhS
-----END PGP SIGNATURE-----

--4nmi7jsy4ulpuolr--


--===============2798704889243406619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2798704889243406619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============2798704889243406619==--

