Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F75631692
	for <lists+openipmi-developer@lfdr.de>; Sun, 20 Nov 2022 22:28:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1owrre-0004R7-Iv;
	Sun, 20 Nov 2022 21:28:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sebastian.reichel@collabora.com>) id 1owqWj-0000aA-BB
 for openipmi-developer@lists.sourceforge.net;
 Sun, 20 Nov 2022 20:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0D3dMIBX7aAulwEEjVVy2yJyqjbteA9Cxab+Ap7tD8A=; b=Zhz6Qmo0s30vrmIX3fFKDaB5ZW
 XSiR73JJBBQfllpVuy6a4o7GblOtQhE84mlpV0NGFu0gZSaWIPZh2fXw3S9/2nk5uDZrO1bZxRTuU
 UfB5iDHHpeuZPQ5cGR4rrd7H36iSIaVL6zpynAqj7Yre8vpPwUYhYqLiEgDH4Y0sbW60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0D3dMIBX7aAulwEEjVVy2yJyqjbteA9Cxab+Ap7tD8A=; b=Gzbd2xvW4heH1HOiQVIf1AJPoN
 fXKTRuCFlHvUir+wQO8cPpzECIZF1414pf+Gyr0GibQ/RGXuOUVkW7NJ7ZuIJwJfxZWClZiNmzsDg
 nkFL1cVVwlPvtg0ZH4ZHjBLkANs09weOHex8wQp3e43UfZ3yh9LLUNDRFUl3KgsbBZ3g=;
Received: from madras.collabora.co.uk ([46.235.227.172])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1owqWh-002qJX-Sc for openipmi-developer@lists.sourceforge.net;
 Sun, 20 Nov 2022 20:02:53 +0000
Received: from mercury (unknown [185.209.196.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: sre)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 981D16602381;
 Sun, 20 Nov 2022 19:43:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1668973425;
 bh=T3nU7r4TDRBfUE21qBPtx6/vbbqNd5aTZrUhEKVEpe8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eTDOl2wCVRsu/tyZH+YPJZtqzX+lTk+zyDWIOt7B5OERtVQXV05JqgkECzvZaxhvq
 GWHynwzbAdTGjQc4EiizPb4JzuNJErOOA6MGMcIE1OOBJsR2nJxdyKqik4rZXW8I8S
 YL9hLYJH9B0qYNlv0ofE25pkedfO3Zr0ukRr6nTWoiYIF0ElBn0uG1ehB/KKpnJkB6
 LmHZCe95IKsjPugXIHsbUyR3TPbe/Uz/FTgEe5YV5fHfIiRZ+dwYB8lU4/MgAmu4vM
 BZjO4bgM9A0wAKu6Ub+wy7zE/lgrgtzyeA/1iFwakjmg/vd8UL0auYvToqpQCZqsxv
 +Bmg67/Ow+Rwg==
Received: by mercury (Postfix, from userid 1000)
 id 1C1D2106F223; Sun, 20 Nov 2022 20:43:43 +0100 (CET)
Date: Sun, 20 Nov 2022 20:43:43 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Message-ID: <20221120194343.nnpzhgjapep7iwqk@mercury.elektranox.org>
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
In-Reply-To: <20221118224540.619276-1-uwe@kleine-koenig.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Fri, Nov 18, 2022 at 11:35:34PM +0100, Uwe Kleine-König
    wrote: > Hello, > > since commit b8a1a4cd5a98 ("i2c: Provide a temporary
   .probe_new() > call-back type") from 2016 there is a "temporary" alt [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: collabora.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1owqWh-002qJX-Sc
X-Mailman-Approved-At: Sun, 20 Nov 2022 21:28:31 +0000
Subject: Re: [Openipmi-developer] [PATCH 000/606] i2c: Complete conversion
 to i2c_probe_new
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-fbdev@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 Grant Likely <grant.likely@linaro.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-actions@lists.infradead.org,
 linux-gpio@vger.kernel.org, Angel Iglesias <ang.iglesiasg@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Purism Kernel Team <kernel@puri.sm>,
 patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Wolfram Sang <wsa@kernel.org>, linux-crypto@vger.kernel.org,
 kernel@pengutronix.de, netdev@vger.kernel.org, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============9214899114653307221=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============9214899114653307221==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wvm2z6appxwdd5fa"
Content-Disposition: inline


--wvm2z6appxwdd5fa
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 18, 2022 at 11:35:34PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
>=20
> since commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new()
> call-back type") from 2016 there is a "temporary" alternative probe
> callback for i2c drivers.
>=20
> This series completes all drivers to this new callback (unless I missed
> something). It's based on current next/master.
> A part of the patches depend on commit 662233731d66 ("i2c: core:
> Introduce i2c_client_get_device_id helper function"), there is a branch t=
hat
> you can pull into your tree to get it:
>=20
> 	https://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/client=
_device_id_helper-immutable
>=20
> I don't think it's feasable to apply this series in one go, so I ask the
> maintainers of the changed files to apply via their tree. I guess it
> will take a few kernel release iterations until all patch are in, but I
> think a single tree creates too much conflicts.
>=20
> The last patch changes i2c_driver::probe, all non-converted drivers will
> fail to compile then. So I hope the build bots will tell me about any
> driver I missed to convert. This patch is obviously not for application
> now.
>=20
> I dropped most individuals from the recipents of this mail to not
> challenge the mail servers and mailing list filters too much. Sorry if
> you had extra efforts to find this mail.
>=20
> Best regards
> Uwe

=2E..

>   power: supply: adp5061: Convert to i2c's .probe_new()
>   power: supply: bq2415x: Convert to i2c's .probe_new()
>   power: supply: bq24190: Convert to i2c's .probe_new()
>   power: supply: bq24257: Convert to i2c's .probe_new()
>   power: supply: bq24735: Convert to i2c's .probe_new()
>   power: supply: bq2515x: Convert to i2c's .probe_new()
>   power: supply: bq256xx: Convert to i2c's .probe_new()
>   power: supply: bq25890: Convert to i2c's .probe_new()
>   power: supply: bq25980: Convert to i2c's .probe_new()
>   power: supply: bq27xxx: Convert to i2c's .probe_new()
>   power: supply: ds2782: Convert to i2c's .probe_new()
>   power: supply: lp8727: Convert to i2c's .probe_new()
>   power: supply: ltc2941: Convert to i2c's .probe_new()
>   power: supply: ltc4162-l: Convert to i2c's .probe_new()
>   power: supply: max14656: Convert to i2c's .probe_new()
>   power: supply: max17040: Convert to i2c's .probe_new()
>   power: supply: max17042_battery: Convert to i2c's .probe_new()
>   power: supply: rt5033_battery: Convert to i2c's .probe_new()
>   power: supply: rt9455: Convert to i2c's .probe_new()
>   power: supply: sbs: Convert to i2c's .probe_new()
>   power: supply: sbs-manager: Convert to i2c's .probe_new()
>   power: supply: smb347: Convert to i2c's .probe_new()
>   power: supply: ucs1002: Convert to i2c's .probe_new()
>   power: supply: z2_battery: Convert to i2c's .probe_new()
>   [...]

Thanks, I queued patches 513-536 to the power-supply subsystem.

-- Sebastian

--wvm2z6appxwdd5fa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmN6g2YACgkQ2O7X88g7
+pocPA/+MG7rp45xJuAH0zlIFTM8ovBviXnLvra0hpvK+vMB8SVdh4K8vRCAoeoT
lxML9oRVfhraHzo/3X6+7V87cw+QzEx3GZbYsIasGqic46MoFYkbA2i3Q8s8hS5y
qpAcKn/efXJaBtdIxWQnOc0xU0YCiteiIik8Idb9MjHFupUspLxtIjCzTAmvKQ0k
hJ5u5cqv3d/MP6VpsOCUYPDet9nS9ByPeg8Kr9Ux1a0WEldPYUO+dU0ObqRdhliZ
agftaEtCvFYkfO9k8ubBL/x00gTn002xOB7gp+5s0V0D3wKfT5EPVYOoUZbeYMIu
QOZaLHkNkBtV85kGm18h7IFdQZQY9ahcaGTYZplyz/YzHlK/AlfjA2umKS1+rs5m
A+DDqnAkuWw9fLg0MJ4dLSPwOSPX3VfgmVS3By3Do2gotQkCqXsRdhrG1cIoE1aL
AZYpSwLTn2rAYF59poL3rgSqx/MhgrLwmKQOH3fjwZ3R7PIAWFhYP1We2UtKdCEM
Gjpr7QfAUiOuXDKi5OrBbWr4m2eX26A4uifwR62OyldwH8pUWAq3umgkw3rotQAA
hdwOOPM+cHTyLbtP8kaP1XSR6u0ybuTbw8OQE/XPDNVceoMqR4XxUSYbs0Q0UzY6
fwljGfbakuGbaNlb7s2LBsy0ESZuiz64Za/0gfJhI5rP1eNRR1U=
=Dh+o
-----END PGP SIGNATURE-----

--wvm2z6appxwdd5fa--


--===============9214899114653307221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9214899114653307221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============9214899114653307221==--

