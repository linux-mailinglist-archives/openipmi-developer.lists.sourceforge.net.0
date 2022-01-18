Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DB949266D
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jan 2022 14:05:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9oB9-0001oy-UV; Tue, 18 Jan 2022 13:05:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n9kUw-0003Zl-2Q
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 09:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HgJTDcOuNrlsJaIDt2f+9e7RjfZgDJWS1+yjGbvW9HY=; b=jaKP0+uvjQfe9jyIVf9RtfHDSQ
 Mg2jiuhZgj01yE8aBo3rR2D2RiSr23fzNWtT/KKzfq5tNXmzP+8hfra5gEN4YSSY1Y0fsoI7gBWEF
 q/MlibV4UKglNWiPUGA1HfvBcdUeK8dBFFaEAfVpz6/oFIE6dWwhUdqW+a+T2ZGrm5as=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HgJTDcOuNrlsJaIDt2f+9e7RjfZgDJWS1+yjGbvW9HY=; b=La8b08Cra7/vqMrXyslJZ+COeI
 rWnwlXzT27bp92te6utwdcxNv0pbImatNEgyRTzX+FYtABSR74tDeqpSbxBXAdOmJ40EQj6NOYnTx
 EuY2EAdyCyFNbTV502TfyRoIsTWVond25PccUuKXq6OpkawxMrZz8It4IWSIje39LMFU=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9kUq-0004QJ-Ja
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 09:09:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9kUa-0004vq-CT; Tue, 18 Jan 2022 10:09:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9kUO-00AyFG-5e; Tue, 18 Jan 2022 10:09:15 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n9kUN-0002sb-15; Tue, 18 Jan 2022 10:09:15 +0100
Date: Tue, 18 Jan 2022 10:09:13 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20220118090913.pjumkq4zf4iqtlha@pengutronix.de>
References: <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
 <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
 <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
 <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
 <20220117114923.d5vajgitxneec7j7@pengutronix.de>
 <CAMuHMdWCKERO20R2iVHq8P=BaoauoBAtiampWzfMRYihi3Sb0g@mail.gmail.com>
 <20220117170609.yxaamvqdkivs56ju@pengutronix.de>
 <CAMuHMdXbuZqEpYivyS6hkaRN+CwTOGaHq_OROwVAWvDD6OXODQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXbuZqEpYivyS6hkaRN+CwTOGaHq_OROwVAWvDD6OXODQ@mail.gmail.com>
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
 
 Content preview:  Hello Geert, On Tue, Jan 18, 2022 at 09:25:01AM +0100, Geert
    Uytterhoeven wrote: > On Mon, Jan 17, 2022 at 6:06 PM Uwe Kleine-König >
   <u.kleine-koenig@pengutronix.de> wrote: > > On Mon, Jan 17, 2022 at 02:08:19PM
    [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n9kUq-0004QJ-Ja
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
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 linux-spi <linux-spi@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Takashi Iwai <tiwai@suse.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 netdev <netdev@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Sebastian Reichel <sre@kernel.org>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Content-Type: multipart/mixed; boundary="===============2608546691291947604=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============2608546691291947604==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bm2t43tlpbmr2x5i"
Content-Disposition: inline


--bm2t43tlpbmr2x5i
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Geert,

On Tue, Jan 18, 2022 at 09:25:01AM +0100, Geert Uytterhoeven wrote:
> On Mon, Jan 17, 2022 at 6:06 PM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Mon, Jan 17, 2022 at 02:08:19PM +0100, Geert Uytterhoeven wrote:
> > > On Mon, Jan 17, 2022 at 12:49 PM Uwe Kleine-K=F6nig
> > > <u.kleine-koenig@pengutronix.de> wrote:
> > > > > So there are three reasons: because the absence of an optional IRQ
> > > > > is not an error, and thus that should not cause (a) an error code
> > > > > to be returned, and (b) an error message to be printed, and (c)
> > > > > because it can simplify the logic in device drivers.
> > > >
> > > > I don't agree to (a). If the value signaling not-found is -ENXIO or=
 0
> > > > (or -ENODEV) doesn't matter much. I wouldn't deviate from the return
> > > > code semantics of platform_get_irq() just for having to check again=
st 0
> > > > instead of -ENXIO. Zero is then just another magic value.
> > >
> > > Zero is a natural magic value (also for pointers).
> > > Errors are always negative.
> > > Positive values are cookies (or pointers) associated with success.
> >
> > Yeah, the issue where we don't agree is if "not-found" is special enough
> > to deserve the natural magic value. For me -ENXIO is magic enough to
> > handle the absence of an irq line. I consider it even the better magic
> > value.
>=20
> It differs from other subsystems (clk, gpio, reset), which do return
> zero on not found.

IMHO it doesn't matter at all that the return value is zero, relevant is
the semantic of the returned value. For clk, gpio, reset and regulator
NULL is a usable dummy, for irqs it's not. So what you do with the value
returned by platform_get_irq_whatever() is: you compare it with the
(magic?) not-found value, and if it matches, you enter a suitable
if-block.

For the (clk|gpiod|regulator)_get_optional() you don't have to check
against the magic not-found value (so no implementation detail magic
leaks into the caller code) and just pass it to the next API function.
(And my expectation would be that if you chose to represent not-found by
(void *)66 instead of NULL, you won't have to adapt any user, just the
framework internal checks. This is a good thing!)

> What's the point in having *_optional() APIs if they just return the
> same values as the non-optional ones?

The upside is that functions with a similar name have similar semantics.
But I agree, having platform_get_irq_optional() with the same return
value for not-found is bad. Changing the return semantic is only one way
to cope with that, renaming such the actual semantic difference is
obvious from the function name is another (IMHO better one).=20

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--bm2t43tlpbmr2x5i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHmg7YACgkQwfwUeK3K
7Amhogf/dAjmJCBciWgz5NV3TfnJ8zBdFusKYKkLMRX6hggDS981lVDd/+0J/CXt
OTZ/mg6pMVEdM4ZgmE7oLUUXSj26rQAXG0Tn0LElJNjNi2w6+jApwXacf1NIrjdY
xuNSbiN94DwWHsG5fgK6ij9XQ1Y0VM23PBPhfBFJUBh2uwTWa/N2akSLPpO4xpcI
qRk9h8QiaRxs+68qmLL5RA1wkp7oyAigMEUcgBr3qUFhTdSGAENP2ZWfgy1ONoFr
ajWgfvPfJ0DAwLiGwyrLebtzFgmd1NwSqNEVsBLdDSkGDq1ysDF6kccVIYnJmWdD
ioq82+vTregbKeZC6dz5wBLZ/E1KSA==
=u/8Z
-----END PGP SIGNATURE-----

--bm2t43tlpbmr2x5i--


--===============2608546691291947604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2608546691291947604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============2608546691291947604==--

