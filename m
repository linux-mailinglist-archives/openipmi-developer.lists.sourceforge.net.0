Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB672785FE1
	for <lists+openipmi-developer@lfdr.de>; Wed, 23 Aug 2023 20:39:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qYsln-0008RS-48;
	Wed, 23 Aug 2023 18:39:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <broonie@kernel.org>) id 1qYsll-0008RL-PY
 for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Aug 2023 18:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=asxMeG59goJrKZqpcF2iRdaVp/sUaPD7C4KvDd1RyOs=; b=azxi1MVttQPiWg2KMuQxaYDzlp
 jucH/ziOrWxqeVrFU18jzDYdC5sOPEAXBpgQA5Dtxq7Qfkg0BnHxLx6w+5HDXyiYciQLgG/Ioxdv6
 reh5Z9RHvMNKjXrPlwMhlD/yEbgfshfJ5NL+T+ooeyWtVC62U+RF/F3Dd8HG9LdQQfkg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=asxMeG59goJrKZqpcF2iRdaVp/sUaPD7C4KvDd1RyOs=; b=Yy82tR8XLgjVMyyosmg09DsjUH
 K4djospYdx3hd5valo8oglI/mMZ+apQ5izvx/dDNG7PsqUamoT9N3MvsAeIPufc7A2qVSOe7qghYy
 vHmtaak8TfHfSogmIkN86OExKtG+hbQTlmzxsb2G2K6eYxmJN8tNocbpRHzviRDAcvRQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qYsli-0006yr-89 for openipmi-developer@lists.sourceforge.net;
 Wed, 23 Aug 2023 18:39:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 09A4065660;
 Wed, 23 Aug 2023 18:39:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DBC4C433C7;
 Wed, 23 Aug 2023 18:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1692815982;
 bh=asxMeG59goJrKZqpcF2iRdaVp/sUaPD7C4KvDd1RyOs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WKFlXytsPC4AZKRXJ+Qa3aZloUnUGFQL+LYIK0C0yNJLrYaq3eMPpbo80zLpu4qto
 lpY+ICEHYrhqIDisEmDc8i+CTUU5M6YevwUcK+BBYB19uVE8LN3egnOYMfOK0BeJ4F
 WHWajKhvsx+/4coIQQsTBVHEQvqI+3hnbY9PdA2ra0NgL2OMcMm2cRGzFDJtKECskO
 uglY+LaDK2LlsoKxLflOIfuLU1v/oxQO7/zXj53GgYBIIYPaI5/qedFjKx1XEw5pTB
 IhIylskgfH1wBcxjjaptNhyC6vUYR254sjOYfyiHND++Dd24P9E0EGw1IaBu859/sW
 ksi0bflQh4y+g==
Date: Wed, 23 Aug 2023 19:39:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <603cf881-b423-40cc-8bbf-b09d929a8597@sirena.org.uk>
References: <20230823183749.2609013-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230823183749.2609013-1-robh@kernel.org>
X-Cookie: Some optional equipment shown.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 23, 2023 at 01:28:47PM -0500, Rob Herring wrote:
 > Cleanup bindings dropping the last remaining unneeded quotes. With this,
 > the check for this can be enabled in yamllint. Acked-by: Mark Brown
 <broonie@kernel.org>
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
X-Headers-End: 1qYsli-0006yr-89
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
 linux-gpio@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Andy Shevchenko <andy@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Leo Yan <leo.yan@linaro.org>,
 linux-media@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7015643618639754377=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============7015643618639754377==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hFdtHq9Mievm7JEW"
Content-Disposition: inline


--hFdtHq9Mievm7JEW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 23, 2023 at 01:28:47PM -0500, Rob Herring wrote:
> Cleanup bindings dropping the last remaining unneeded quotes. With this,
> the check for this can be enabled in yamllint.

Acked-by: Mark Brown <broonie@kernel.org>

--hFdtHq9Mievm7JEW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmTmUmEACgkQJNaLcl1U
h9C17Qf+LbbaWfPVYoNHCKOts2RLh6E9FZYojlWRsJWrOhMsIwoY8wMxMPxpOUUY
XP0Hy/LRxo4Khds4zZcNYO05Pkpx0eBSWvzrKSppmA6Pvn9Tu8NkUz7kDmjc7Kwx
7x9ZJKzezKxMkDc8yM45Kc+WC91fV84eflnTL8pAv54aLIuOXqWjh8rTfwT5no7m
59U8ovuRPz477vFNoOu3dqqxSk9mpvY4bLXFGfKZPXGVAoTiNhqt0XML2chc/qr0
tr8971bllC0KXR3Y/8NdZBPwgeHAADvHOIjIGMHVrF+ZbPLaP1b3f9Abc+yd0VBF
Z/wO8E7iZJaNTg95zGWIiXzaYmurpQ==
=kJ5/
-----END PGP SIGNATURE-----

--hFdtHq9Mievm7JEW--


--===============7015643618639754377==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7015643618639754377==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7015643618639754377==--

