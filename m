Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE31848F94B
	for <lists+openipmi-developer@lfdr.de>; Sat, 15 Jan 2022 21:34:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8pl1-0006bi-V3; Sat, 15 Jan 2022 20:34:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1n8nvR-0008Mn-Vj
 for openipmi-developer@lists.sourceforge.net; Sat, 15 Jan 2022 18:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rw65GdievkQ5vrto3VSeua39uDeVgR+Q8oPdWh6CYkU=; b=W94i8aatXoK5OgdHK6/19cHgn4
 S+0mw0FJ/swDtDsGCH+zhEk4ZxtgpTwIs/BV5NCrHI77EABluCNKMT0Qp9y64feJxqVjawC1NbBL0
 ueQx9E+8W6GEAkk4HFYkbI/+CLuS7rAUy2Z0ZdtmJ/IGYpFzRfgNlb/f4qUaj4Frxc/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rw65GdievkQ5vrto3VSeua39uDeVgR+Q8oPdWh6CYkU=; b=iXNVISxo5l+pf6jiDPTfbUpGcZ
 97i5mk9a37V+Fv7470zEImorr4TcSlu/RS/z+cLtfw/xfa43Wnm45lpQf226s4ejpTrPMewI6laTm
 V97esa9Bp8+ZGmcKHf1edsRS5PVgb97ISjDw9OlIHUdaolX88M4lwo8A7mnfi0U4u0kE=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8nvO-00GjCQ-Rz
 for openipmi-developer@lists.sourceforge.net; Sat, 15 Jan 2022 18:37:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8nvA-0003Jj-3l; Sat, 15 Jan 2022 19:37:00 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8nux-00AUOf-7m; Sat, 15 Jan 2022 19:36:46 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1n8nuv-0005gB-Q6; Sat, 15 Jan 2022 19:36:45 +0100
Date: Sat, 15 Jan 2022 19:36:43 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Message-ID: <20220115183643.6zxalxqxrhkfgdfq@pengutronix.de>
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
MIME-Version: 1.0
In-Reply-To: <20220110195449.12448-2-s.shtylyov@omp.ru>
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
 Content preview:  Hello, I'm trying to objectively summarize the discussions
 in this thread in the hope this helps finding a way that most people can
 live with. First a description of the status quo: 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n8nvO-00GjCQ-Rz
X-Mailman-Approved-At: Sat, 15 Jan 2022 20:34:36 +0000
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
Content-Type: multipart/mixed; boundary="===============4373863452099311926=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============4373863452099311926==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j6ppxzwmobiijznr"
Content-Disposition: inline


--j6ppxzwmobiijznr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to objectively summarize the discussions in this thread in
the hope this helps finding a way that most people can live with.

First a description of the status quo:

There are several function pairs *get() and *get_optional() that however
are different in various aspects. Their relevant properties are listes
in the following table. Ideally each line had only identical entries.

					| clk_get		| gpiod_get		| platform_get_irq	| regulator_get		|
	return value			|			|			|			|			|
	on not-found			| ERR_PTR(-ENOENT)	| ERR_PTR(-ENOENT)	| -ENXIO		| dummy[1]	=
	|
	(plain get)			|			|			|			|			|
					|			|			|			|			|
	return value			|			|			|			|			|
	on not-found			| dummy[1]		| dummy[1]		| -ENXIO		| ERR_PTR(-ENOENT)	|
	(get_optional)			|			|			|			|			|
					|			|			|			|			|
	emits an error message		|			|			|			|			|
	on error (including 		| no			| no			| yes[2]		| no			|
	not-found)			|			|			|			|			|
					|			|			|			|			|
	get_optional emits an error	|			|			|			|			|
	message on error (including	| no			| no			| no			| no			|
	not-found)			|			|			|			|			|
					|			|			|			|			|
	summary:			| returning a dummy	| returning a dummy	| doesn't emit an	| ret=
urning error code	|
	*_get_optional() differs from	| on not-found		| on not-found		| error mess=
age		| on not-found		|
	*_get by:			|			|			|			|			|


	[1] the dummy value is a valid resource descriptor, the API functions
	    are a noop for this dummy value. This dummy value is NULL for
	    all three subsystems.
	[2] no error is printed for -EPROBE_DEFER.

The inversion between clk+gpio vs. regulator is unforunate, swaping one
or the other would be good for consistency, but this isn't the topic of
this thread. Only so much: It's not agreed upon which variant is the
better one and the difference is of historical origin.

There are now different suggestions to improve the situation regarding
platform_get_irq() compared to the other functions:

a) by Sergey
   platform_get_irq_optional() is changed to return 0 on not-found.

b) by Uwe
   rename platform_get_irq_optional() to platform_get_irq_silent()

The argument pro a) is:

	platform_get_irq_optional() is aligned to clk_get() and
	gpiod_get() by returning 0 on not-found.

The argument contra a)=20

	The return value 0 for platform_get_irq() is only syntactically
	nearer to the dummy value of clk_get() and gpiod_get(). A dummy
	value isn't available and probably not sensible to introduce for
	irq because most drivers have to check for the not-found
	situation anyhow to setup polling.=20

The argument pro b) is:

	The relevant difference between platform_get_irq() and its
	optional variant is that the latter is silent. This is a
	different concept for the meaning of optional compared to the
	other *_get_optional().

The argument contra b) is:

	The chosen name is bad, because driver authors might wonder what
	a silent irq is.

---- end of summary
=09
A possible compromise: We can have both. We rename
platform_get_irq_optional() to platform_get_irq_silent() (or
platform_get_irq_silently() if this is preferred) and once all users are
are changed (which can be done mechanically), we reintroduce a
platform_get_irq_optional() with Sergey's suggested semantic (i.e.
return 0 on not-found, no error message printking).

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--j6ppxzwmobiijznr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmHjFDcACgkQwfwUeK3K
7Al8ywf+IeUGmQ++ZSqrHA1sy8iG93DkE7XqgEI+/OYaQABSzKpE6w55cBp0EbHJ
TXkVcUUkd5e6eFtr5FwZEgzO1/vKIlB6IkuD5jbuqXJy0oRz9whaVLAJvpYN/mmy
KTHzmFssgA4mbUBx8XRteoVSNn6k9z0UF6EGrb0Vyfu70Q4yTdZKDP2mznyAnLee
rw1Oj2UCu2Jn5QrSTg0jNrPqGbHrmEeadE08d3oZRpL/ZcO1Er30Oj3aYFDiiE1V
p0J5fzDs0GZN4r/mwNSUDyq2edsIF3F2/ILOt05pf6AsFudhufarTMh2VWIu/mz7
mMHkAm6dYTtw1VKd1mp/RwSpxhhJSw==
=6uea
-----END PGP SIGNATURE-----

--j6ppxzwmobiijznr--


--===============4373863452099311926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4373863452099311926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============4373863452099311926==--

