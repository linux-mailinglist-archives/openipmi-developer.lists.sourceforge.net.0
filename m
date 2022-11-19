Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E80D630E50
	for <lists+openipmi-developer@lfdr.de>; Sat, 19 Nov 2022 12:10:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1owLk4-00007j-Bd;
	Sat, 19 Nov 2022 11:10:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wsa@kernel.org>) id 1owLjy-00007J-66
 for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Nov 2022 11:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7GiyKXlPGJcCWq5EAt/PR5yun8Eo3eNEdDox2orLTb0=; b=OM29zayj4ISa9R+PLehSM3lJsj
 0oJI3sI604qUcFqVrHYo/YB/NalQ2R6t8DLMlTvFzt4V4lG7W8jUSYr2MGHPO5Fl+DNTEaNh+64ks
 XOYEEc55xD3KO46LRcdlxtIDm6GO8rToI5qOF1f8NAiMdFvUzqYJF4/XoogErcWt21KE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7GiyKXlPGJcCWq5EAt/PR5yun8Eo3eNEdDox2orLTb0=; b=BlbIiYu9xgIvXFhku6N9C/qr34
 tByCEVTMIMWboJC4V7pmPe38e5RGFTBifHHzgNFy0ff4SS6E+KW1f3bD01BQ+gcgQ1t0/jgOzjCK4
 1g/KUXCoAfsr6XLKEq2abkOCLs05NbUlAZvQe8qn/fItSo2RBFehpvyWHB1/sJvruHUU=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1owLjx-0000FO-C0 for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Nov 2022 11:10:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4B4D3B802C0;
 Sat, 19 Nov 2022 11:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 763BCC433C1;
 Sat, 19 Nov 2022 11:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1668856217;
 bh=ene1SzTvsJEbW7r9yE4HzkF6rHfAR+aLIm+4UV/wgpo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AwWwg8hTEvU1lRotHevSh1bppQ+LWfLwM9aU/yyuaFSoeFCmSwjJ4hNXPYNKPqyxF
 RwoQt69tGMzjEml+0YwDwVnLfETtKSINebD6ZDDIjJG2YZ26iP67zsjgz4cgG6uGnz
 NeH6bx6FUo9hgiiy06aaBkM2k9pRw5peXY9fXGbpIdefsltNF4FVq05z66zkCjnicj
 f/YnghTN3aq/ykMs6EmMfO5tnMvkQz4JaZBC1pmyIfU8l5HPFc7Qkk3nYySibldc2a
 4zm4rXtEkUSkKLdGBy0DoGhHf7XI5Gph/tChnTnqwzMKjNhd3aisTxqnB1pP+2RhuX
 Z5WZrjjMLqJaQ==
Date: Sat, 19 Nov 2022 12:10:11 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Message-ID: <Y3i5kz6IL7tFbVwX@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Angel Iglesias <ang.iglesiasg@gmail.com>,
 Lee Jones <lee.jones@linaro.org>,
 Grant Likely <grant.likely@linaro.org>, linux-i2c@vger.kernel.org,
 kernel@pengutronix.de, linux-integrity@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-gpio@vger.kernel.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-iio@vger.kernel.org,
 linux-input@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-media@vger.kernel.org, patches@opensource.cirrus.com,
 linux-actions@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org,
 linux-amlogic@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-omap@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-mtd@lists.infradead.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-pm@vger.kernel.org, Purism Kernel Team <kernel@puri.sm>,
 linux-pwm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-watchdog@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net
References: <20221118224540.619276-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
In-Reply-To: <20221118224540.619276-1-uwe@kleine-koenig.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Uwe,
 > This series completes all drivers to this new callback
 (unless I missed > something). It's based on current next/master. Thanks
 for this work, really, but oh my poor inbox... 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1owLjx-0000FO-C0
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
Cc: alsa-devel@alsa-project.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-leds@vger.kernel.org,
 linux-rtc@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 Grant Likely <grant.likely@linaro.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-gpio@vger.kernel.org, Angel Iglesias <ang.iglesiasg@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Purism Kernel Team <kernel@puri.sm>,
 patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-crypto@vger.kernel.org,
 kernel@pengutronix.de, netdev@vger.kernel.org, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============5267762375784477197=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============5267762375784477197==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xRatB1/o2GNYTDWD"
Content-Disposition: inline


--xRatB1/o2GNYTDWD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Uwe,

> This series completes all drivers to this new callback (unless I missed
> something). It's based on current next/master.

Thanks for this work, really, but oh my poor inbox...

> I don't think it's feasable to apply this series in one go, so I ask the
> maintainers of the changed files to apply via their tree.

This seems reasonable. It would have made sense to send "patch series
per subsystem" then. So people only see the subset they are interested
in. I know filename-to-subsys mapping is hardly ever perfect. But in my
experience, even imperfect, it is more convenient than such a huge patch
series.

Happy hacking,

   Wolfram


--xRatB1/o2GNYTDWD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmN4uY8ACgkQFA3kzBSg
KbYEfw/+L6nVN4bUDqiN6AeU0yv+Wq/oAFkIUgM8TLT/4gzeEwPsCcTwHBaHQFEF
sO9yZWukjVYlt2YlcEZglBVIAl7Ha17oQfv2HbWzZXl4cv8PEMfodh6PuOpcPuna
P+RjiB40nPPxUt5hZ7EjiOpqML0Xy9G8X9Uzs5rA4Yt2OSXcGSYhCZb+U/Vygwlo
VmLhSQhUnluCyhMZlbTn+bnmVCSHW8Bk5YBKOWygj8K7/LRYKfcNKXjMV35OsBix
3rezawgwT9KZlZ6ABJZ6U/o5Lp91OP/XeUfhMp76fmAOBcrh25HhWcunmbfRNto7
gsYho2Ov6yLtz3/Gq4gsDB2HULSajZW1behtfyfufpmkyGd8+C5+/uUjfltWtpqm
qaAL4YC+kjzarFDRKtIINCqlixjh0VUUKCkf6c4IDCNoLD4HW5KGevjvMvG0kJ9S
ftPKDwBpZ+cMZtpTcYgRQRiEb30VekQVyWM8SL+350sLO2dVhy7tjAX1jTnWZ843
4L3c6tSTioFtNmuIREzKl4EX2xkZUq6ajI4QeAcleHXAsBKHB5kvDpfKYIfGZ49X
mvIEEWRaUXGZAyqx2tMBXvuSA2aL+Gk9hrW3cvCHoBh6EkGfa6R4flw7yN0RkYHR
Fzq+Jpg1jOHfQhNDoZ8yqFo2xQZQpp1oDdVAjW70IRrE5KPvV0k=
=eSNj
-----END PGP SIGNATURE-----

--xRatB1/o2GNYTDWD--


--===============5267762375784477197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5267762375784477197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5267762375784477197==--

