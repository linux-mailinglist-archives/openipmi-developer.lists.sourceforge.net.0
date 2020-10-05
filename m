Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC09286758
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC7-0008J8-1d; Wed, 07 Oct 2020 18:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sre@kernel.org>) id 1kPSaO-0001um-Tr
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 15:39:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZlsIb8lIX1C8QK9j7togtR9tb0iFc6n7/C78r6YsUSg=; b=lTrCFWHI/r4D8O40fH3Z7iBGHb
 Vi7j1b4SIrsAeCLhBlcxB4d7P7gPWSqQBu/HirkwGw3i5R0g3BntNeXFmBy+foVu0NGm362eBNEdu
 2B8sMcX7Y7+9VX7x+3oT/E76HoifrRpJe+8K1Jywu3H080GjEaVpntFhdqGBy4pZNwiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZlsIb8lIX1C8QK9j7togtR9tb0iFc6n7/C78r6YsUSg=; b=TbFfZROrcpblpYoCBFeibCY5Sb
 K0XwZO3NMzX1lzgH9GKOsmCHfNk0Vynvc6MTtP7E9tgyfimTyeCpScIw7UiJTjb5knVKJQBSRo16a
 KuJ83dahQ54v1+2519tcSoffQr0ZqrXdgIoAYVpixbGM5kiyp27HkL8m/aktmLhqZH9A=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kPSaF-00HPkh-KQ
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 15:39:36 +0000
Received: from earth.universe (dyndsl-095-033-158-146.ewe-ip-backbone.de
 [95.33.158.146])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CD5C2085B;
 Mon,  5 Oct 2020 15:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601912361;
 bh=YDa9qgcYN/rLvsHl7wxHnDzXxyPxrajJMh139W2bTQc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yt3ruZa68573tch0c/Ho1ALzHfCpTDMLesbdlPmWRDYNKB50IT55EoZp87fsRkzgz
 7+6j5JNoNjJ3AsqOjA1un0djegx8x339kHr5uakI101R3J4o5G+KgoyioglXZXg5dL
 Bxy38eyfhsJbMySPsKZTFlatV3r6LR8AuCR8oLYA=
Received: by earth.universe (Postfix, from userid 1000)
 id 1CDCB3C0C87; Mon,  5 Oct 2020 17:39:19 +0200 (CEST)
Date: Mon, 5 Oct 2020 17:39:19 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20201005153919.llmcjbz4hiqvzd4x@earth.universe>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kPSaF-00HPkh-KQ
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-iio@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-serial@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, netdev@vger.kernel.org,
 Baolin Wang <baolin.wang7@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============7196387456477270155=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============7196387456477270155==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ruzfmjzmyxibtjj5"
Content-Disposition: inline


--ruzfmjzmyxibtjj5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 02, 2020 at 06:41:43PM -0500, Rob Herring wrote:
> Another round of wack-a-mole. The json-schema default is additional
> unknown properties are allowed, but for DT all properties should be
> defined.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>=20
> I'll take this thru the DT tree.
>=20
>  [...]
>  .../bindings/power/supply/cw2015_battery.yaml |  2 ++
>  .../bindings/power/supply/rohm,bd99954.yaml   |  8 ++++++++
> [...]

Acked-by: Sebastian Reichel <sre@kernel.org>

-- Sebastian

--ruzfmjzmyxibtjj5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl97PhAACgkQ2O7X88g7
+pqkbg/9HQHD97P7Thh0rG2tNf/oTuwqdbqpGz8XffiIbWso3SaAukPavFc/b34T
Bhf9ldAe4Jy7Sz8qDavKYO8qMWOF8av5Je5ajNG3fFmRAO28Jz1vcRsxn7JiTvlU
SnlrNgxMlppGfzCt59G/IH6GyJVUVhZduf1HhaterbutugRNLE6LKY85rtwPlCR6
d4+sJE+gKYJmNhxj1XYyVrXoWQs22IA8nJggb2g2l5nHfFolffKHFRXTX5Ax7WFL
vhm/uSgz/4T9RyObm3lx4ODSSZqC3oc1E0DR3jf97rWH6xGUVFuJoAtE5ZpS5AJt
uC3k2QQJ8mCt5fUA+khtnS4DIsF07uOzd5Hbex8NcXiFnlO/9GYWlmGXxlAnhdrk
vSk8jlPgslc4xKpae1y8DFQiMndd9+1g0b4ZOJ6RnhaNpnOoFOIIPmC2ViRnQ8/0
kv5w7Hop2CIxAYj3Jk1IzlmtbmJeQt39ya7uHNJhV2ISd8P3AmrkcNedPd8OV7MO
7DrV+n/aKjH2gLYX0+377iH59APbluDQd64e+iDir2L5PP4BWXmyMOGqZ+Od7ScJ
YT7hlpoKPVwZ1lqta77S7LDpYrRtyv8Ce5EsFineimEc1b4N51GTMh6lDPIGVcXz
Xa1GC6kpGXU9Cx39fOb5K64cnrJ5Whplgiyv+4xd1suU1q25CZM=
=XHTx
-----END PGP SIGNATURE-----

--ruzfmjzmyxibtjj5--


--===============7196387456477270155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7196387456477270155==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7196387456477270155==--

