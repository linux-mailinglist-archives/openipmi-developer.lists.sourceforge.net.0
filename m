Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7BA48E1CC
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 01:55:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8AsU-0000FG-P3; Fri, 14 Jan 2022 00:55:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <broonie@kernel.org>) id 1n86Xu-0001ze-51
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 20:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P+vCoi7wNnNx99gRdxFM+Ughrg6Num7mlnrxqHh626A=; b=MxMAbsoXMIOe3V/BHoWxTFRVBn
 zvBS2omul09ZhUqUQPWID87/mJ5zgNYDL4tut5+9FYjyBITvUFRr9iQg4Tc0dOcixdwZu7tbZdZQr
 Qyf1G0dZ7upUhMIA8dEdxoAPPxWrOWMWzHvJz1Q6O0tQCMZ9+809gnLSBZ6xtmY/AQNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P+vCoi7wNnNx99gRdxFM+Ughrg6Num7mlnrxqHh626A=; b=j3NwpKT4lrqFsTSg6SWRpFDQqb
 rnV6qly2cS9eoCbz+LHzFZxamqYLrbcZPkUIDJOmgKjSY+8OtIVxslbU7kUeQX7BTOFre8spvWEem
 kPR6XQ5aPNb/ulTVM8GPB9QaYfooQ1DGrwtt7uxMuPR4Lhu7unZs8+xxC1o4nVdioHFE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n86Xr-00EpYr-1b
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 20:18:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 75B8361DC1;
 Thu, 13 Jan 2022 20:17:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD3FDC36AE9;
 Thu, 13 Jan 2022 20:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642105076;
 bh=P+vCoi7wNnNx99gRdxFM+Ughrg6Num7mlnrxqHh626A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aTWLTeW2+US6XFjr0IeK4MW8hptcFgfTgzfAoEoi+BJwyaiRzFU6gH5hq1NL1ZlUv
 /DQwqilofY0WLFvsF8d74DdUbIpzgs0bETzZqOJzFXqM64Lz0A/Qfeh8qxrvihqmVy
 xgwPD3HPglDgErZ1Jz6iGQKBUyY3K9WksHonymEdM9xCxPTiVZtYmYrbnczDaLasWd
 yrPtAk8U7+ExUAXePSh3l6uXki2GGHwlfI/cEpOiKZ11aT9awJXMGd4nhni8BCKEn6
 OWBQwG61UMT1yA7Q8HHbxmZ9hYq2o1l8pNm+0IIwCWAjZRb04oZmTMKsZJ9SipUYqo
 hfFABLCe7UChQ==
Date: Thu, 13 Jan 2022 20:17:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <YeCI47ltlWzjzjYy@sirena.org.uk>
References: <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20220113194358.xnnbhsoyetihterb@pengutronix.de>
X-Cookie: Slow day.  Practice crawling.
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jan 13, 2022 at 08:43:58PM +0100, Uwe Kleine-König
    wrote: > The subsystems regulator, clk and gpio have the concept of a dummy
    > resource. For regulator, clk and gpio there is a semantic diffe [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
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
                             [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n86Xr-00EpYr-1b
X-Mailman-Approved-At: Fri, 14 Jan 2022 00:55:37 +0000
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
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-spi <linux-spi@vger.kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, Khuong Dinh <khuong@os.amperecomputing.com>,
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
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Borislav Petkov <bp@alien8.de>,
 Jakub Kicinski <kuba@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
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
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============8578759305268892646=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8578759305268892646==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="R/43kckW41lQLx5e"
Content-Disposition: inline


--R/43kckW41lQLx5e
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 13, 2022 at 08:43:58PM +0100, Uwe Kleine-K=F6nig wrote:
> The subsystems regulator, clk and gpio have the concept of a dummy
> resource. For regulator, clk and gpio there is a semantic difference
> between the regular _get() function and the _get_optional() variant.
> (One might return the dummy resource, the other won't. Unfortunately
> which one implements which isn't the same for these three.) The
> difference between platform_get_irq() and platform_get_irq_optional() is
> only that the former might emit an error message and the later won't.

Reviewed-by: Mark Brown <broonie@kernel.org>

--R/43kckW41lQLx5e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHgiOIACgkQJNaLcl1U
h9Cg3gf/W4m9gden1y/CRqXbudeIS5o86rgl7aSHGJ8sspVowtin+xIScyALL6hN
iMujjX/XY6/HIl9ExSDF2Tfn2qvHXOjYRspS4KcxU74XtxNXTkZt1hTFqDgiK6AN
sxr4uJMtFAtJVkibADtU/hN92yX3wEJPVyXbhDI0q1RCHLJEfWISOhyYGOZzO+rg
+umqMRe7HjLgYT6LcWu/fIQbm73/hxtjK1fakHcMXEj4urJTi+HF3HpYHK1UjgRH
XAnyMclm3MFYXN+hJ4tXt+oIfs/JY1DL5cPGBvF2aD/WZotIfoqehsstB2jcEjIv
U2dlHZo6p71WHH31Zeg1/3AeucLIlA==
=AUmf
-----END PGP SIGNATURE-----

--R/43kckW41lQLx5e--


--===============8578759305268892646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8578759305268892646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8578759305268892646==--

