Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C60495731
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 Jan 2022 01:06:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nAhRL-0003k0-Oq; Fri, 21 Jan 2022 00:06:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1nASKT-0003QQ-Jm
 for openipmi-developer@lists.sourceforge.net; Thu, 20 Jan 2022 07:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SiFRhEFAle14KmEgr0WcA6pdolhotxhbY/6D0GleGu4=; b=QUEMwphhPdaigJK4JXBv4JW+1F
 GezmVn9NcHBvUUktdrypAThgfDDhNmrRyv1KL6vA5Q8EVGFyjm9fD0M0xw7XVuXqw4PkqMS9RBsGK
 srcSJA9nKYfYMLbpcLHGRz15TczVPuDbSzOk1NJup0oPyFS4EKVGg/RlqZbz0dIgjUFo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SiFRhEFAle14KmEgr0WcA6pdolhotxhbY/6D0GleGu4=; b=I6UWIQ2NT8zXGNhggPR6bSoIB6
 DNbZ+9aX2HACnw0FQIgDppTuUiI4pOgnBK2KBcESjwaPwERJZ7c4t8SpF0pbnbCaWiuY1fPt8nDgQ
 dTnDlAknKW9WaNp3vN0LX7ZS2Eny4r6CSk8FdKSXqLnPPVHW8xXtxMiW7iI+a6tTmKqM=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nASKQ-00052q-Lr
 for openipmi-developer@lists.sourceforge.net; Thu, 20 Jan 2022 07:57:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nASK7-0002RI-3O; Thu, 20 Jan 2022 08:57:35 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nASJu-00BJom-IA; Thu, 20 Jan 2022 08:57:21 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nASJt-000Bvo-3V; Thu, 20 Jan 2022 08:57:21 +0100
Date: Thu, 20 Jan 2022 08:57:18 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20220120075718.5qtrpc543kkykaow@pengutronix.de>
References: <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeF05vBOzkN+xYCq@smile.fi.intel.com>
 <20220115154539.j3tsz5ioqexq2yuu@pengutronix.de>
 <YehdsUPiOTwgZywq@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <YehdsUPiOTwgZywq@smile.fi.intel.com>
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
 
 Content preview:  On Wed, Jan 19, 2022 at 08:51:29PM +0200, Andy Shevchenko
   wrote: > On Sat, Jan 15, 2022 at 04:45:39PM +0100, Uwe Kleine-König wrote:
    > > On Fri, Jan 14, 2022 at 03:04:38PM +0200, Andy Shevchenko wrote [...]
    
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1nASKQ-00052q-Lr
X-Mailman-Approved-At: Fri, 21 Jan 2022 00:06:00 +0000
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
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, John Garry <john.garry@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Benson Leung <bleung@chromium.org>,
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
 netdev@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3511088265031528279=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============3511088265031528279==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vtmtr3soi3npiqhl"
Content-Disposition: inline


--vtmtr3soi3npiqhl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 19, 2022 at 08:51:29PM +0200, Andy Shevchenko wrote:
> On Sat, Jan 15, 2022 at 04:45:39PM +0100, Uwe Kleine-K=F6nig wrote:
> > On Fri, Jan 14, 2022 at 03:04:38PM +0200, Andy Shevchenko wrote:
> > > On Thu, Jan 13, 2022 at 08:43:58PM +0100, Uwe Kleine-K=F6nig wrote:
> > > > > It'd certainly be good to name anything that doesn't correspond t=
o one
> > > > > of the existing semantics for the API (!) something different rat=
her
> > > > > than adding yet another potentially overloaded meaning.
> > > >=20
> > > > It seems we're (at least) three who agree about this. Here is a pat=
ch
> > > > fixing the name.
> > >=20
> > > And similar number of people are on the other side.
> >=20
> > If someone already opposed to the renaming (and not only the name) I
> > must have missed that.
> >=20
> > So you think it's a good idea to keep the name
> > platform_get_irq_optional() despite the "not found" value returned by it
> > isn't usable as if it were a normal irq number?
>=20
> I meant that on the other side people who are in favour of Sergey's patch.
> Since that I commented already that I opposed the renaming being a standa=
lone
> change.
>=20
> Do you agree that we have several issues with platform_get_irq*() APIs?
>=20
> 1. The unfortunate naming

unfortunate naming for the currently implemented semantic, yes.

> 2. The vIRQ0 handling: a) WARN() followed by b) returned value 0

I'm happy with the vIRQ0 handling. Today platform_get_irq() and it's
silent variant returns either a valid and usuable irq number or a
negative error value. That's totally fine.

> 3. The specific cookie for "IRQ not found, while no error happened" case

Not sure what you mean here. I have no problem that a situation I can
cope with is called an error for the query function. I just do error
handling and continue happily. So the part "while no error happened" is
irrelevant to me.

Additionally I see the problems:

4. The semantic as implemented in Sergey's patch isn't better than the
current one. platform_get_irq*() is still considerably different from
(clk|gpiod)_get* because the not-found value for the _optional variant
isn't usuable for the irq case. For clk and gpio I get rid of a whole if
branch, for irq I only change the if-condition. (And if that change is
considered good or bad seems to be subjective.)

For the idea to add a warning to platform_get_irq_optional for all but
-ENXIO (and -EPROBE_DEFER), I see the problem:

5. platform_get_irq*() issuing an error message is only correct most of
the time and given proper error handling in the caller (which might be
able to handle not only -ENXIO but maybe also -EINVAL[1]) the error message
is irritating. Today platform_get_irq() emits an error message for all
but -EPROBE_DEFER. As soon as we find a driver that handles -EINVAL we
need a function platform_get_irq_variant1 to be silent for -EINVAL,
-EPROBE_DEFER and -ENXIO (or platform_get_irq_variant2 that is only
silent for -EINVAL and -EPROBE_DEFER?)

IMHO a query function should always be silent and let the caller do the
error handling. And if it's only because

	mydev: IRQ index 0 not found

is worse than

	mydev: neither TX irq not a muxed RX/TX irq found

=2E Also "index 0" is irritating for devices that are expected to have
only a single irq (i.e. the majority of all devices).

Yes, I admit, we can safe some code by pushing the error message in a
query function. But that doesn't only have advantages.

Best regards
Uwe

[1] Looking through the source I wonder: What are the errors that can happen
    in platform_get_irq*()? (calling everything but a valid irq number
    an error) Looking at many callers, they only seem to expect "not
    found" and some "probe defer" (even platform_get_irq() interprets
    everything but -EPROBE_DEFER as "IRQ index %u not found\n".)
    IMHO before we should consider to introduce a platform_get_irq*()
    variant with improved semantics, some cleanup in the internals of
    the irq lookup are necessary.

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--vtmtr3soi3npiqhl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHpFdoACgkQwfwUeK3K
7AlpCwf8CIVWD1ztALs4saPfU+hCAXGdHPMYsVb4ZTfj+uT0g5uOPF3Vn08Dfosw
tyqmKEnwGKIMZpavCJ+pScDwmT2FfANDq+R3xZzWj1hEcEvhjMFWB/IDU+s33/IB
9pbnCAE8Oa/2PGjM3+FGf5OA6q8vCcuO8XHluolGQqPqvajsCulKZytLIFnnTc9t
UXm+5HxATeIlvcxF5NHMcNFRt2ADkTGVGj0zrEOxinsiT3edhaWLDR5/vSnbXySV
NKWnnkWO/T3Huohcr85IS2dVfqbqxuMmfU6RyQKdMat7ZUzOqtffi2I6KdXRRjog
OHR+PLT7KSOdf6ODGMs+9P8AMEotwg==
=El6G
-----END PGP SIGNATURE-----

--vtmtr3soi3npiqhl--


--===============3511088265031528279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3511088265031528279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============3511088265031528279==--

