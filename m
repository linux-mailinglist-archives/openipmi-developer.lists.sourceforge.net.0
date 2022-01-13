Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFC548DB1B
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jan 2022 16:53:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n82PO-0002TS-H9; Thu, 13 Jan 2022 15:53:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <broonie@kernel.org>) id 1n81Mf-0004hD-S9
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 14:46:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qGUpScSrM6PHOQ9896+ovOSrylwTkuQlIpt7KlyEp5s=; b=B1rVj/E99cfYlSlGmKynmQi2n2
 hMdDg59XXKRtwpInFr51NttdCcV7Jcno/pHIDoqUI4jstSdT/qFlvYgu831EBRWwCvmqSFxKgq5Hz
 K9QV9z591UB8Y1VUfaS1aGg0Y/QJCA2OBvGKj5A2qyCgn0yCBRyt9M70iENkDZHHs/gQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qGUpScSrM6PHOQ9896+ovOSrylwTkuQlIpt7KlyEp5s=; b=dGkqjfIg0P5xK4+0YXOgu0WfIi
 jiXfFfTouvBm8vItQM1HVjzCNOv1rK7sin3nHLcgUvQZmVtbb8utGzwDX7v6BDjYCDwPMnF/NxLGW
 7hw+G5Pl8tt7QGvethhxwULR6F6d2tAiRytC0QA2dByyagQMisFeQaxkljeIfm1BGWz8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n81Ma-00EawI-Bb
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 14:46:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E19ACB822A0;
 Thu, 13 Jan 2022 14:45:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AA3CC36AEB;
 Thu, 13 Jan 2022 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642085148;
 bh=qGUpScSrM6PHOQ9896+ovOSrylwTkuQlIpt7KlyEp5s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rIF3lS/tm9sqFT+BginWJM2+mt1t0i+1rbRTwFGO/b5RO54FFqysidEmT2WSnXujo
 cGDZLPUBbnFnBovZVRCzJE12OIxe0UaqPbmDiXkUfgTiIFTn2YGRAzH3LqjFaP+tZD
 stowk5nOSDH2HzMR+0nMTCmGiZrfOpEXlbtFzEEyyHKSnxaKn6wp5i+0CBOwWaYud8
 h6IHjIqf66cMB/zCEPF7AQwqZAp9MkoApoumfwu6VFfqqNiQcfv/H1IDJvKTA9xbou
 r4uQpom3hKk5szByYDLACU4vgN5e9UWDsM5Igx38QRWaZyToUoz1pHBLnnGGGgQZOi
 t54X3kfj11igw==
Date: Thu, 13 Jan 2022 14:45:30 +0000
From: Mark Brown <broonie@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <YeA7CjOyJFkpuhz/@sirena.org.uk>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
X-Cookie: Slow day.  Practice crawling.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jan 13, 2022 at 12:08:31PM +0100, Uwe Kleine-König
    wrote: > This is all very unfortunate. In my eyes b) is the most sensible
    > sense, but the past showed that we don't agree here. (The most annoying
    > part of regulator_get is the warning that is emitted that [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
X-Headers-End: 1n81Ma-00EawI-Bb
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
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5956014015899012144=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============5956014015899012144==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="W6TsDGUCC61npB/4"
Content-Disposition: inline


--W6TsDGUCC61npB/4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 13, 2022 at 12:08:31PM +0100, Uwe Kleine-K=F6nig wrote:

> This is all very unfortunate. In my eyes b) is the most sensible
> sense, but the past showed that we don't agree here. (The most annoying
> part of regulator_get is the warning that is emitted that regularily
> makes customers ask what happens here and if this is fixable.)

Fortunately it can be fixed, and it's safer to clearly specify things.
The prints are there because when the description is wrong enough to
cause things to blow up we can fail to boot or run messily and
forgetting to describe some supplies (or typoing so they haven't done
that) and people were having a hard time figuring out what might've
happened.

> I think at least c) is easy to resolve because
> platform_get_irq_optional() isn't that old yet and mechanically
> replacing it by platform_get_irq_silent() should be easy and safe.
> And this is orthogonal to the discussion if -ENOXIO is a sensible return
> value and if it's as easy as it could be to work with errors on irq
> lookups.

It'd certainly be good to name anything that doesn't correspond to one
of the existing semantics for the API (!) something different rather
than adding yet another potentially overloaded meaning.

--W6TsDGUCC61npB/4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHgOwoACgkQJNaLcl1U
h9DB2wf+MsmuWAbFkx7w6dSqBFg+5BMfRX917lHiCsn2CYARHwyaPL5M5EVrbehK
70/euCaJWItviAfkx+6AAOYCmbHs8mt+zpvgLriDTnZOumRiZfiGXMZHt85uxFOg
+CON0NcPugM2d7SZyRdxLTQBcBJt3wzMoV71nZv43fG+BMfssZy/ADYB75p648wU
r7n86P+i3Kh+8hkINY1UdrfNXf7GkWehj0fZhkQ6PO+sH6jH8JFft+mMsKvTkCfp
th2g66aUCkHb8ML7wNc5DEOQZlW9A7QyBKZpFWcduJs7uD92dqsoRJ7ch05zM3z/
HtLt6l6YJ3XD702pvFQA2C4cb/OGkA==
=d1L9
-----END PGP SIGNATURE-----

--W6TsDGUCC61npB/4--


--===============5956014015899012144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5956014015899012144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5956014015899012144==--

