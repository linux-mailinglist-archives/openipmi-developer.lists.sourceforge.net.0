Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 650F248F949
	for <lists+openipmi-developer@lfdr.de>; Sat, 15 Jan 2022 21:34:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8pl1-0006bQ-Q1; Sat, 15 Jan 2022 20:34:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n8ks3-0007gT-GT
 for openipmi-developer@lists.sourceforge.net; Sat, 15 Jan 2022 15:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OtNRmFDZXtKOmwqrXvin+zVWBOeaBiFWfj0fBGzZXdo=; b=IG72lX9dhigfiV5kgligi2n/Aq
 aJOKx4z/kq/Az8hlSBkclr6XtgKJC0wdmDUm/+lNxCYo4VzHTGSB+qAllVRN3uPcvNdQSgBZtfXnz
 BQyx/bEF4clTm+7PXSlDNMS/8EB6qlfXiAb4UGphZxu5tjbZxIRrr4mTiyUxSY2JQpPA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OtNRmFDZXtKOmwqrXvin+zVWBOeaBiFWfj0fBGzZXdo=; b=FOuFimN2WDsa9PhGVifYn+A9Wy
 rIPx8M6Uowz2ugoRrBeOdN8DE9rn/Zbc3evKnhHNCexqjmwGAWEFfG82aKeAV+Suf3FqouSlaW7ki
 aRmZAyqY4WrOTKxmNaRxnVwEw5rpn4Y09bl+8FYn3nynWKllfq2LUenUPAs9B/sd57eQ=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8ks1-00GbYT-2q
 for openipmi-developer@lists.sourceforge.net; Sat, 15 Jan 2022 15:21:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8krk-00024Z-CN; Sat, 15 Jan 2022 16:21:16 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8kra-00ASwx-3H; Sat, 15 Jan 2022 16:21:05 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8krY-0003aa-TV; Sat, 15 Jan 2022 16:21:04 +0100
Date: Sat, 15 Jan 2022 16:21:02 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20220115152102.m47snsdrw2elagak@pengutronix.de>
References: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeCI47ltlWzjzjYy@sirena.org.uk>
 <1df04d74-8aa2-11f1-54e9-34d0e8f4e58b@omp.ru>
 <20220113224319.akljsjtu7ps75vun@pengutronix.de>
 <CAMuHMdWjo36UGde3g5ysdXpLJn=mrPp31SDODuQNPUqoc-ARrQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWjo36UGde3g5ysdXpLJn=mrPp31SDODuQNPUqoc-ARrQ@mail.gmail.com>
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
 
 Content preview:  On Fri, Jan 14, 2022 at 10:58:51AM +0100, Geert Uytterhoeven
    wrote: > Hi Uwe, > > On Thu, Jan 13, 2022 at 11:43 PM Uwe Kleine-König >
   <u.kleine-koenig@pengutronix.de> wrote: > > On Thu, Jan 13, 2022 a [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n8ks1-00GbYT-2q
X-Mailman-Approved-At: Sat, 15 Jan 2022 20:34:36 +0000
Subject: Re: [Openipmi-developer] [PATCH] driver core: platform: Rename
 platform_get_irq_optional() to platform_get_irq_silent()
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
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Sebastian Reichel <sre@kernel.org>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5293191624531298356=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============5293191624531298356==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ocudook43fjcrvv4"
Content-Disposition: inline


--ocudook43fjcrvv4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 14, 2022 at 10:58:51AM +0100, Geert Uytterhoeven wrote:
> Hi Uwe,
>=20
> On Thu, Jan 13, 2022 at 11:43 PM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Thu, Jan 13, 2022 at 11:57:43PM +0300, Sergey Shtylyov wrote:
> > > On 1/13/22 11:17 PM, Mark Brown wrote:
> > > >> The subsystems regulator, clk and gpio have the concept of a dummy
> > > >> resource. For regulator, clk and gpio there is a semantic differen=
ce
> > > >> between the regular _get() function and the _get_optional() varian=
t.
> > > >> (One might return the dummy resource, the other won't. Unfortunate=
ly
> > > >> which one implements which isn't the same for these three.) The
> > > >> difference between platform_get_irq() and platform_get_irq_optiona=
l() is
> > > >> only that the former might emit an error message and the later won=
't.
> > >
> > >    This is only a current difference but I'm still going to return 0 =
ISO
> > > -ENXIO from latform_get_irq_optional(), no way I'd leave that -ENXIO =
there
> > > alone... :-)
> >
> > This would address a bit of the critic in my commit log. But as 0 isn't
> > a dummy value like the dummy values that exist for clk, gpiod and
> > regulator I still think that the naming is a bad idea because it's not
> > in the spirit of the other *_get_optional functions.
> >
> > Seeing you say that -ENXIO is a bad return value for
> > platform_get_irq_optional() and 0 should be used instead, I wonder why
> > not changing platform_get_irq() to return 0 instead of -ENXIO, too.
> > This question is for now only about a sensible semantic. That actually
> > changing platform_get_irq() is probably harder than changing
> > platform_get_irq_optional() is a different story.
> >
> > If only platform_get_irq_optional() is changed and given that the
> > callers have to do something like:
> >
> >         if (this_irq_exists()):
> >                 ... (e.g. request_irq)
> >         else:
> >                 ... (e.g. setup polling)
> >
> > I really think it's a bad idea that this_irq_exists() has to be
> > different for platform_get_irq() vs. platform_get_irq_optional().
>=20
> For platform_get_irq(), the IRQ being absent is an error condition,
> hence it should return an error code.
> For platform_get_irq_optional(), the IRQ being absent is not an error
> condition, hence it should not return an error code, and 0 is OK.

Please show a few examples how this simplifies the code. If it's only
that a driver has to check for =3D=3D 0 instead of =3D=3D -ENXIO, than that=
's
not a good enough motivation to make platform_get_irq_optional()
different to platform_get_irq().

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ocudook43fjcrvv4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHi5kAACgkQwfwUeK3K
7AmxjQf+LjEMbZ2BLPsszWOOyw2Xtjn8mpuOmCBImErsT+AnE5G2nUp9a//M8hxr
OxUaITVBvGpeAOf8afjOnacEHqcvNJGUdWblNwEGdc7auyl6qSe7agtR2LDjM5ir
x233Ner1R+O8K0t4zRM2+g/LeLLNwL9Y+9y6swNJvQcsqzy0z86I7/R1ebWk9NMa
w1paYTwYlIyghKS5pAN7yXeIAJFP9DFBDy0KGZG8uA+MZn1WWTk/vwK4/NR5XcrY
WXb6zM/0lZtQWhYlKW/dcj4b3LlOo8dgfuGuu8WIqoKxY0230JDSg1E+5ZNLyKq3
7VzijyuxAzaTNhwSnAvUB2ToosLs1g==
=EUgY
-----END PGP SIGNATURE-----

--ocudook43fjcrvv4--


--===============5293191624531298356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5293191624531298356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5293191624531298356==--

