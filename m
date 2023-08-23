Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B1C786082
	for <lists+openipmi-developer@lfdr.de>; Wed, 23 Aug 2023 21:19:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qYtOC-00078A-Ow;
	Wed, 23 Aug 2023 19:19:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wsa@kernel.org>) id 1qYtOB-000783-Nc
 for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Aug 2023 19:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z7owpDA4k2E0Ij+VJAllz0k9twsgKGzrUNXPPIMEbGc=; b=eSGJDQpcpOfn5UT77el/mKcqaU
 nFwjGKmraIlOip++w3DsbyI355wI5A/U9yEIHTZSoyNpyVMN0w9GO4/R9ibXnodhMqjO7wYAFfVGw
 4AXjSael2NUfFUSzf/x88YRsLFmkhr11Dg8/wxJEvUmrrhHodf1vGp9LuJs/D767kcUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z7owpDA4k2E0Ij+VJAllz0k9twsgKGzrUNXPPIMEbGc=; b=dnvrpXJWYhk5+C0jicj8xyRdqV
 w72059Pl21o760qSpJBOGvZf6Akv19HZPuc72j4dvH30NrJNCMyJNJ30DXzlKti5bKK06bf79jTEQ
 H+AwNTviq+7GVEWCBsan0eVzrA6wG0g8EdCKVVsxTMLpgXXKjiOXY+usTzAOFvXx9tTY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qYtOA-0008Eq-PJ for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Aug 2023 19:19:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E630D65D36;
 Wed, 23 Aug 2023 19:19:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBAFDC433CD;
 Wed, 23 Aug 2023 19:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1692818368;
 bh=z7owpDA4k2E0Ij+VJAllz0k9twsgKGzrUNXPPIMEbGc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RLK+HCznqKathi9Leh0P+xR1D8A/NYgTQJMo99gN/QSAnrhe1rGOwhqFu+HNYKKB7
 2oFKgjPA5KRsI8k9bM3r6fM63p4dgpOrMWVS3cNPMbRnDgP7p0VZhaKEqnNmvRLGq4
 8tzIsC7ROMJzD3+DcpGvGFUmtSoNTsHdCJWIMaD7uPpo6m3YGadz35mz6L3ILULNBF
 jpPX0PzakI7//HGxxl5lrQiUw4t/3xORFy++z4b8j5vZSoS3N/2gXdguykfxsD5ghQ
 fIRFPmPWhInlFvcrM+4EmP7zA6kapAXO9bpURBOpE/ujA7h3qLXTKOkhxqZ5cx81xj
 6cIxmFtSwXhuA==
Date: Wed, 23 Aug 2023 21:19:25 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <ZOZbvbQCfE/7za7A@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>, Rob Herring <robh@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>,
 James Clark <james.clark@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Andy Shevchenko <andy@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Corey Minyard <minyard@acm.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 M ark Brown <broonie@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org, linux-iio@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-mtd@lists.infradead.org,
 alsa-devel@alsa-project.org, linux-scsi@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20230823183749.2609013-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230823183749.2609013-1-robh@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 23, 2023 at 01:28:47PM -0500, Rob Herring wrote:
 > Cleanup bindings dropping the last remaining unneeded quotes. With this,
 > the check for this can be enabled in yamllint. > > Signed-off- [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qYtOA-0008Eq-PJ
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: Drop remaining
 unneeded quotes
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
Cc: linux-hwmon@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, linux-mips@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 James Clark <james.clark@arm.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-i3c@lists.infradead.org,
 Lars-Peter Clausen <lars@metafoo.de>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Magnus Damm <magnus.damm@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Guenter Roeck <linux@roeck-us.net>,
 Mike Leach <mike.leach@linaro.org>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-gpio@vger.kernel.org, M ark Brown <broonie@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-media@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4909075698490886340=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============4909075698490886340==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="W9LDWghRC/uN9wQg"
Content-Disposition: inline


--W9LDWghRC/uN9wQg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 23, 2023 at 01:28:47PM -0500, Rob Herring wrote:
> Cleanup bindings dropping the last remaining unneeded quotes. With this,
> the check for this can be enabled in yamllint.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Wolfram Sang <wsa@kernel.org> # for AT24/I2C


--W9LDWghRC/uN9wQg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmTmW70ACgkQFA3kzBSg
KbYDpQ//TxfkWdWliCVOwgunoynDj8QbT0LI4crB95MmkexsMTX8+s4LTc8eQGfV
pyqAEdN6UWa+iETe1rDdvwMKvSik7m3o9JvCy3BwxcTkHeVsnH3aqQvORh1ehka6
HKXT+KozcWWe7ZVqyqCApjqb9VIE6six7kI2381p9eSiSTzpjZR988QLcEcV3fIK
hdH21sLgCm+pt7vwnhNLyL4DqSKc4a3xBjcCDY2fW0XYAEhdsi8mVu58gnct1yTF
mRcbv717gndwG4XgL9wnA0DCZVPc27acPi/daHtp+jPsvsqMQSnQz9TDbkTRJX95
z47oWS6p2ol6iJqbbr80wZ2ozdE0avfydrdhwHEWx6ndnAQ3DZgqVeSwmwEE+mxQ
FZvFYVM06i7rX8DScen91PFvcLpkGmvmBED6KKvsrovou0cPlcTEIdycxKlNtxEk
bbahDY5Kl7MLuUxfLMZV03upU/y/S8AgWwd26kE0zUBolCi09v9e822TqLgfd2TO
VmPqs3dvxwmykO9s8HkGdTSrgkdgGv9NMXnm6Psg5MlTtkDk12CspSFQ4fdD4VgY
GPCKVGvGzdhrJ0vUe7GODt2C/uHGCO1W7/efVtFbcdOvLcmQIr9uqD/JpfBXGh70
tjpBBAx/9dVKkiFTHjhZ2CzBQS22G6GWuDFnJaWIygpWTE7XaE0=
=RXY7
-----END PGP SIGNATURE-----

--W9LDWghRC/uN9wQg--


--===============4909075698490886340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4909075698490886340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============4909075698490886340==--

