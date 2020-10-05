Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9DC286756
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC6-0008Hm-Lm; Wed, 07 Oct 2020 18:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <thierry.reding@gmail.com>) id 1kPNrr-0002gF-BF
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 10:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EQcMf3aBHGTHbFtiLcGPyEnLeByAfRIiKvJYpM7dHjI=; b=V5LZWtuAdDgDS019YD6PKlJkRd
 zKggQKCFkDJvflKcvjFE6QOgFNvfDrbvvLEPN723J2rbHEvpHulPL6x9RhpjodSWNsWz7d1XmnzPX
 UE7XAZ3wfNkUICX/fPrSPEHx37H6opIr9Kgu+ud0TAxhYm0xLQin2Hu+NUFvNk92LIF0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EQcMf3aBHGTHbFtiLcGPyEnLeByAfRIiKvJYpM7dHjI=; b=i2JURX6xHJsNuaXvu7tBN0WDiw
 a2Q0WAieKIHA16Skm2bUAjZ4LprOUFV6ZOhC59Qm/hlbwCkujscbLM8ZdCO4pSX4x8lT7FW8TjmFL
 Yb4KWZ5cXK5cqVsZGSF+mCLOVIdpTycDF92rjku8Qcao/EKjO82T7lcqPxw/yYnY0w3M=;
Received: from mail-ej1-f68.google.com ([209.85.218.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPNrk-003Eag-Ef
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 10:37:19 +0000
Received: by mail-ej1-f68.google.com with SMTP id u21so11184227eja.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 05 Oct 2020 03:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EQcMf3aBHGTHbFtiLcGPyEnLeByAfRIiKvJYpM7dHjI=;
 b=JMXtpOzBphG2KW05zXFj2vXclgc2K+H8JNLe4wZm7v+D9biCrsBBlunvumrZBdu1ay
 dGsC3P+vCBgpuvq8Us5VYT17QD/j1PGdTs3yayROXo3Im6WBME+yzVPRs9dhmCnhv+Kp
 deAaGEl4mX/k8HNSg+lcAp97KgIlUIgmSSwwdLTGDqN7XE8+lWKnDQvOaVfL9MZ14U+a
 QRIvo/0Rw3hXEZYEYP0VkWPlkV5tVRSOzoq3CiZiRn3rvyx0WeBnBNIUIK3FrMGOYn9N
 QIQdKyuVIgtZvtCvpApddnOAphNZZn8AUAHtmpPXbjSAxqojzQj+J6GDsnofUdkYSHTP
 MAYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EQcMf3aBHGTHbFtiLcGPyEnLeByAfRIiKvJYpM7dHjI=;
 b=SPw3JR+bSMllF8wg/avxBIo7ps7NggGj095pEPj1eKwcUAU9uP9+HBa9TZe+UVs7Ov
 hSnf23Ncf28sId3dWFMXOkO9fkBau3tIg3Vuq3ceSxZ1UQ/E/Zs8QG0rNl/nz+grpKra
 72aoQgsDi+WE0HNm35TzbutK5xHxpsSfMxgOUU1Z+jXz+o01IBFxPzIpmp54aRDP9zyc
 Vm7yKIsRSDdgTofUQZF/qc7N3TMKaYHMIh1zeJH+NqlbRn+q5vpNOOUj0KfVYHdIva5E
 +NymOeXjprAtSqAnJr4LEw2w0EtUyvaw1/6NC2u8ftHK4kiE8ayVdevXGyVhCr3SxvN9
 xH5Q==
X-Gm-Message-State: AOAM533NZ7QB3C8YZImAHDJa4ZOHivUAwJ/0G2HxRmn0aTXr48uoIHXJ
 Pc0cY+Ih44NfOJa7Yj4lItI=
X-Google-Smtp-Source: ABdhPJyAUrA9v+oT7mNxthuQoeotTCXMOOGXsGx3LdAG3pM2W9hPKJEenugRGvwJUGZXAZHqegPZ7g==
X-Received: by 2002:a17:906:6545:: with SMTP id
 u5mr14725364ejn.346.1601894226145; 
 Mon, 05 Oct 2020 03:37:06 -0700 (PDT)
Received: from localhost ([217.111.27.204])
 by smtp.gmail.com with ESMTPSA id yz15sm7567670ejb.9.2020.10.05.03.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 03:37:04 -0700 (PDT)
Date: Mon, 5 Oct 2020 12:37:03 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Message-ID: <20201005103703.GN425362@ulmo>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
User-Agent: Mutt/1.14.7 (2020-08-29)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (thierry.reding[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.218.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kPNrk-003Eag-Ef
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:29 +0000
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: Another round of
 adding missing 'additionalProperties'
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Baolin Wang <baolin.wang7@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============1235669617308276594=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============1235669617308276594==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="CQDko/0aYvuiEzgn"
Content-Disposition: inline


--CQDko/0aYvuiEzgn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 02, 2020 at 06:41:43PM -0500, Rob Herring wrote:
[...]
>  .../arm/tegra/nvidia,tegra20-pmc.yaml         |  2 ++
[...]
>  .../bindings/sound/nvidia,tegra186-dspk.yaml  |  2 ++
>  .../sound/nvidia,tegra210-admaif.yaml         |  2 ++
>  .../bindings/sound/nvidia,tegra210-dmic.yaml  |  2 ++
>  .../bindings/sound/nvidia,tegra210-i2s.yaml   |  2 ++
[...]
>  .../bindings/usb/nvidia,tegra-xudc.yaml       |  2 ++
[...]

Acked-by: Thierry Reding <treding@nvidia.com>

--CQDko/0aYvuiEzgn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl96908ACgkQ3SOs138+
s6Hn/g/+OAyAW+yLaNZ0EuRduaLOLtd19HpvVqZdf68FWcAxWHANPdIKnVuc++CF
2r+nHjgPy4zI3LGP1bGlgPufCdAapy2QTx9sGt/VeTEOuo9uTjb6J4Y7xXC11qQT
pVI+v4ofSi48FN6vY6VWsotDscDJFLkJy/eZdb1RRuU44SG4dw04Z3fn1STm9wAN
PS6hKtpUTbZYzgI0hngx2Ph30t7fyu18NIRPsKZ6/3WgR4HwD8cdpVi+06ThN3GQ
s5CEQ/J7l9z1tfQhUypxLic1JV21su9fCERZQd96CKyIvcpJ5RByk7d7EnnZ4A53
ZDRzwiymRP29X0IUzvEoHc7XvUP/mIZIkRNtTc3tLGZHZ34+Gc805Hcy5slbzhRz
V+Gl3oXG56OhWLSbyNQXOOlbJJAmdFS1IDAoV752G6kq5fFZ397AW34DLF5YJX0k
lYF3NWBTpuxxWCGuceKkACfscLE1dAifN2Rtgf9mbM1k2mIG7mVa6tdpxJ3sjf8Y
1T0v3HYAwfOKTajaYUY4UYLMIJcZNjjJsw/olvcM6a9c8x/g79W3BgSjS6F/pEww
DtuObW8366dl2WoqlYTJ9eWvKXSbCHRBhPpYLamHRBOBj7HKqGSHyyq0hEGPvd6X
Hr+OJUghj7CHS+5vXEq5oNiT4bE6x9ytJdHNf5hIiRchRu6TeOQ=
=hMJa
-----END PGP SIGNATURE-----

--CQDko/0aYvuiEzgn--


--===============1235669617308276594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1235669617308276594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1235669617308276594==--

