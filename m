Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BAC286757
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC6-0008IC-Ph; Wed, 07 Oct 2020 18:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@kernel.org>) id 1kPOFQ-0005Ao-RT
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 11:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zT1ggZQfYdTWKaaKhhfthWc1Wmu2z51MEgqhMdjk+B0=; b=m94k3+hfL00PSf48L7r04h0ToJ
 l7DrLQflULftPRvbj+VuP6nhF4rExDyGTErx4uknajb8Qnk1+UaqflEHaotCqrsz8X/Vg7zJTaJ0h
 2KnHM6Gii+cqm26/Kf8o1OyB/ux1zWvGJ81qtaih8srP9v647qiWsUREz/09bvqZYVAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zT1ggZQfYdTWKaaKhhfthWc1Wmu2z51MEgqhMdjk+B0=; b=Lz2kOROiQMhOJCRfnfTPym9O2B
 FdBcZ673h6ZfuAAlFmvjM8aHqIhE37VLIUvQ1xwBoAXpPJUbb10miDKJI2B0Ml3KXPE8Rt4GSX5nL
 r0j/lUgbuXVTTK73vqaXmryGGHOO1mkRhnpjBxX9ZLKW/qyHEMJ9JCGuyfx1piWErOWE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kPOFH-003Fb6-DX
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 11:01:40 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 831DF20578;
 Mon,  5 Oct 2020 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601895686;
 bh=zT1ggZQfYdTWKaaKhhfthWc1Wmu2z51MEgqhMdjk+B0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SD/Qgw9FIMuzORoe+m+VTXdFP3akbnWWNU81Odi9c5GKdU7J+GKmby2c8netpfgmA
 adZ1oHsaoFEdzavqQfYQskxWQibYcQ5HrNcWX5oNl7SvediEUDK9mfzz+po5gPOLGv
 GYaHousl0JgdpMqFSA4SRgxVcsLFkSnV03Ue+OnE=
Date: Mon, 5 Oct 2020 12:00:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <20201005110022.GB5139@sirena.org.uk>
References: <20201002234143.3570746-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20201002234143.3570746-1-robh@kernel.org>
X-Cookie: Most of your faults are not your fault.
User-Agent: Mutt/1.10.1 (2018-07-13)
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
X-Headers-End: 1kPOFH-003Fb6-DX
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:27 +0000
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
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org,
 linux-serial@vger.kernel.org, linux-mips@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-gpio@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-hwmon@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 linux-spi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org, Baolin Wang <baolin.wang7@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============0596349963317395160=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============0596349963317395160==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6sX45UoQRIJXqkqR"
Content-Disposition: inline


--6sX45UoQRIJXqkqR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 02, 2020 at 06:41:43PM -0500, Rob Herring wrote:

> Another round of wack-a-mole. The json-schema default is additional
> unknown properties are allowed, but for DT all properties should be
> defined.

Acked-by: Mark Brown <broonie@kernel.org>

--6sX45UoQRIJXqkqR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl96/MYACgkQJNaLcl1U
h9DVIAf/YahMxzxRA1HRo6CR552Pzfu8pWuFTeWzZTi4iIVW4oR/TUvjaBuMBAZF
jIi3Kk2yR9lW+bCaPvUIjXsdB31S0iHgXORKR9ByRsx4fZS4MC/x9KFlv/v5dziQ
nMO+lF+vyZQrYQrfwQmBJ5JdbeM9r2Oh+tUBcsKZkPsvg10glGuisr1mO1CEaEuL
zcz31MfKpdGbLUEOlPzruZ5uNt0/FHU6FxOusAGW9lkYx+c7GjNWtdDh8h7gzd1n
SzrDKnBlTWCZ+Owy2r9hJS6ow+fIjoYDT+Xtp6AvrSk9oJ6hggQ6NyxPpesZWbKV
3Kfe7+KGLuHI4AMEU0u/czJWmNdEJw==
=5yDb
-----END PGP SIGNATURE-----

--6sX45UoQRIJXqkqR--


--===============0596349963317395160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0596349963317395160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============0596349963317395160==--

