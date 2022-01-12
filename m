Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4628F48DB15
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jan 2022 16:53:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n82PN-0002St-UU; Thu, 13 Jan 2022 15:53:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <broonie@kernel.org>) id 1n7lRH-0003E5-I3
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 21:45:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rl4cYWMV8h1J8XxpmCmzqZfaoBMwLhpNARBfd20DoT4=; b=ey0qYsMaNu+rFvL/jR1/w4z+Q3
 ImVABPbjKDl3IIKD8eKj+MEC9pgk4VZ+zi7LHVElPLOYKCyF0KuyzsTwfNEnlZlw6zDlsOpu9ZVqs
 UFc0O344Ct58zcSRF+a04mVs1fD+sgXHHqCsjhWQ4Q3Gefqo49yKki+moNcstvRWYAmM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rl4cYWMV8h1J8XxpmCmzqZfaoBMwLhpNARBfd20DoT4=; b=gzMPFQO8lnkTKm6MdA6lRDputY
 CC/1EJeStN86F7LYncgerFQlaZ9pGdun2stlHOzE/Ld2Y96+IaUTnji0e4DpQPbVtnwRX1cJN85LC
 xfq66CFC0Ym6/8QtA4dfRdzIVqzihm6p20TN4fYKsFngISZe2QLHT3kmYxN1qYWdrz/o=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n7lRG-00066U-V4
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 21:45:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 83260B820E0;
 Wed, 12 Jan 2022 21:45:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6540C36AE5;
 Wed, 12 Jan 2022 21:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642023943;
 bh=Rl4cYWMV8h1J8XxpmCmzqZfaoBMwLhpNARBfd20DoT4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Khszb13U1jmu+m7bsIzdnnnT1iCYGXg5GGE42/oJuMQsK9Yn6UuauPQmmihxCed8g
 I1F6FNxWdahiv8HObXLZ1MgG9aNbNh1vuWd5lPBPEE8jOf+os+a0Eg3ZNc61OeDpAd
 oG1pZPxuhBAj0VIDmNNIk5GiF3ZYFM98qq+jWT/t93oYg9ih3f230JowrUn42Y60WL
 bkt6CNPh+5WsNOS7M+9MpTJWTFF/zRWDIyY+MuNMqob1T2eWMhLpwtYRPlw8g7cffu
 gO+N6rZqa7cTguyMABuPC7x4dDwKst9lAVidnA7ik+1nWq+j4fbnhftwUHOLMDmzq6
 MQ+g/36gi+i7A==
Date: Wed, 12 Jan 2022 21:45:25 +0000
From: Mark Brown <broonie@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <Yd9L9SZ+g13iyKab@sirena.org.uk>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
X-Cookie: Bridge ahead.  Pay troll.
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jan 12, 2022 at 10:31:21PM +0100, Uwe Kleine-König
    wrote: > On Wed, Jan 12, 2022 at 11:27:02AM +0100, Geert Uytterhoeven wrote:
    (Do we really need *all* the CCs here?) > That convinces me, that platform_get_irq_optional()
    is a bad name. The > only difference to platform_get_irq is that it's silent.
    And returning > a dummy irq value (which would make it aligned with [...]
    
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n7lRG-00066U-V4
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
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Jiri Slaby <jirislaby@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Borislav Petkov <bp@alien8.de>,
 Eric Auger <eric.auger@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 netdev@vger.kernel.org, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8179745905625939517=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8179745905625939517==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bKSGz4pQDpFpvPus"
Content-Disposition: inline


--bKSGz4pQDpFpvPus
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 12, 2022 at 10:31:21PM +0100, Uwe Kleine-K=F6nig wrote:
> On Wed, Jan 12, 2022 at 11:27:02AM +0100, Geert Uytterhoeven wrote:

(Do we really need *all* the CCs here?)

> That convinces me, that platform_get_irq_optional() is a bad name. The
> only difference to platform_get_irq is that it's silent. And returning
> a dummy irq value (which would make it aligned with the other _optional
> functions) isn't possible.

There is regulator_get_optional() which is I believe the earliest of
these APIs, it doesn't return a dummy either (and is silent too) - this
is because regulator_get() does return a dummy since it's the vastly
common case that regulators must be physically present and them not
being found is due to there being an error in the system description.
It's unfortunate that we've ended up with these two different senses for
_optional(), people frequently get tripped up by it.

> > To me it sounds much more logical for the driver to check if an
> > optional irq is non-zero (available) or zero (not available), than to
> > sprinkle around checks for -ENXIO. In addition, you have to remember
> > that this one returns -ENXIO, while other APIs use -ENOENT or -ENOSYS
> > (or some other error code) to indicate absence. I thought not having
> > to care about the actual error code was the main reason behind the
> > introduction of the *_optional() APIs.

> No, the main benefit of gpiod_get_optional() (and clk_get_optional()) is
> that you can handle an absent GPIO (or clk) as if it were available.

Similarly for the regulator API, kind of.

--bKSGz4pQDpFpvPus
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHfS/QACgkQJNaLcl1U
h9BO/wf/X52fQIYQFCYJDsHS4pHQDXMDv8aCyyoEen4dO7d7t6fuflAYrOGj/MXP
UkHWhHmjH5EJrD5XQQmsOLQV5qXKD/mmvAuXQzNA/aUITdBah/r9xt3Y2nYb4+zR
Nm3ZzFmvTZVLATEdRt39LZxBwD/gCkwQpEd1tSBKsiNsq2k9eyGs6zff3Aj5xUzC
+9zfg/GCQOESdU+jRATqvdl69QGdA5N6dPgzgIQEtecGNmx02jn8bEqmaN0SX1NZ
zQXn1ChOAI4lWDhW4uAEnD4aF8hUN//xR2DiHIjNuGFgb7vTKdJgbI0iG2iH30Nm
zgsgo5YMgTHurpX6yL8pMaJC54r/Pg==
=MHmO
-----END PGP SIGNATURE-----

--bKSGz4pQDpFpvPus--


--===============8179745905625939517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8179745905625939517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8179745905625939517==--

