Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E67C88488B8
	for <lists+openipmi-developer@lfdr.de>; Sat,  3 Feb 2024 21:38:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rWMm9-00022K-7O;
	Sat, 03 Feb 2024 20:38:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wsa@kernel.org>) id 1rWMm6-00022E-S7
 for openipmi-developer@lists.sourceforge.net;
 Sat, 03 Feb 2024 20:38:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W8B5GA4aI6bx4wqUX9zAX4Qx8/YjkIEPKsQBl+hu8aw=; b=VHnPy4oCaf2cuxcz7rEBTFelcb
 MnPIdskRCcT5HDI/pU2gNV9NOiEJa2tdbMavaDgvNv9TtFOpVbKS7OGZrU5Z3hQplD1HXmeReQzpV
 i8Nim3NUUpuY3Dl+rsffVby4K1SvxVOIH2H0T+uN/+xsr1EF9g3Ps7I9w0onrpo/ZC/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W8B5GA4aI6bx4wqUX9zAX4Qx8/YjkIEPKsQBl+hu8aw=; b=AEfssoEs9Dy84lg2vYQd4xci0p
 20T2GKDZtOgIqDCzWj5iqbD4LHjGVRoDDKUJcqj7KJJqTe4iIunbm60zzjv9NyxMZcUhfHSWT5XG8
 U+eDfW+3S7rjUdK7mwYgtlesab3FjzllFK3JYjI5RBeBVjJPkqVGnD9UL7CyOBfOIBdc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rWMm6-0003qo-4Z for openipmi-developer@lists.sourceforge.net;
 Sat, 03 Feb 2024 20:38:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6529760BCA;
 Sat,  3 Feb 2024 20:37:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 972F3C433C7;
 Sat,  3 Feb 2024 20:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1706992676;
 bh=W8B5GA4aI6bx4wqUX9zAX4Qx8/YjkIEPKsQBl+hu8aw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nxreOzbCMBBz0AsMv75i0BYduZ/DlPEAtZwFXxnpZiB9k+lZWP1pUlH3tBYVKo2l4
 ri2BZeg7O0cQi7sjZTy50qF989NaEpvhFaHSS77Ja2/fC5CtZAMp8rs8za+lv9/GUu
 z8Egle3Do+wQJIF9xVhCZgKvfj8JuNWlQNZ8H/H1H36uKr9dl5JQ2b6ZvgCGPNGNBA
 jvHvaVdx1Y8AxxRV71jiJzMBU/5p06+I9pNwZbhpI0sJwWCwT3wEAUsEFuMRrWxpiR
 uIGhaGSau8kxUNakH9P0NsyQHPRtofmQbch20zYZpOpIM4JDvXAk5hYZFyIBcO6iSV
 XJwMFqoErWoWQ==
Date: Sat, 3 Feb 2024 21:37:52 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <Zb6kIC9CUQTjDVAU@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Corey Minyard <minyard@acm.org>,
 openipmi-developer@lists.sourceforge.net,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
References: <18568237-0b57-4b74-86ec-a6c358a4e058@gmail.com>
MIME-Version: 1.0
In-Reply-To: <18568237-0b57-4b74-86ec-a6c358a4e058@gmail.com>
X-Spam-Score: -7.3 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Jan 27, 2024 at 04:15:06PM +0100, Heiner Kallweit
 wrote: > Class-based I2C probing requires detect() and address_list to be
 > set in the I2C client driver, see checks in i2c_detect(). > It's m [...]
 Content analysis details:   (-7.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rWMm6-0003qo-4Z
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: Remove I2C_CLASS_HWMON
 from drivers w/o detect and address_list
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
Cc: openipmi-developer@lists.sourceforge.net,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Corey Minyard <minyard@acm.org>
Content-Type: multipart/mixed; boundary="===============1305080020076020519=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============1305080020076020519==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CxYVmCU3aZiSEgm1"
Content-Disposition: inline


--CxYVmCU3aZiSEgm1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 27, 2024 at 04:15:06PM +0100, Heiner Kallweit wrote:
> Class-based I2C probing requires detect() and address_list to be
> set in the I2C client driver, see checks in i2c_detect().
> It's misleading to declare I2C_CLASS_HWMON support if this
> precondition isn't met.
>=20
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--CxYVmCU3aZiSEgm1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmW+pB8ACgkQFA3kzBSg
KbYCEw/8Cp3VA4xTWQdiDEub1oUz3rwtKhb4liAVr0X/f4F0jOYM+YNwhtfdrt3X
LGuSPmAtl2LfbtmaSNC8ExvRyEqB0l76/nMJcIJ4SqTmgm1piY3B1RHM6DcvodV4
tDuY5e4Jr2NYE/rW+/d/DLF5yJicp0J26clD1g6j8SjlycjKGwj+gf7W8ABUsOG3
UzX7bRcIvSiJmm6vXzjUGp3jbOn5xn8FfffRRxmsPcnPs7JZQn9WeqB41w406/1d
cZ+vAS7q/p+hdM3kJHr22RfFtPmMLvFctyMMP4luUpYd56vU7BlO9JKeqQnL6hz9
eMALAjIsLgcMAbrbyQztEZU6Mvi/6KstJ8rR//taQ3LQvkvV3p6bV1pqi+zGrJUb
n0UuPQFxlIBiF6BoWjIkL9vHJIQ6MwoBFSA0UaqmahALq3I5B642jjlJ8EEsvWak
TQrtZxgP88FING7U+wlMH1h9ysNVAlBKa7vbHC+HFmRZh2WybDPeyDJLWBcmik9a
SGndsuy6DqkbU3ymN1T0Bh2dlyuDn/M9U3LYyQCocJByN8JtZm7VV8o+2f+6KHH0
hBe20E2lxCx8nGsukakyFqJfNW9ZyN4rMuHax2BJ8/4rWt181qZkVd430NyHjB4e
WCtONyYLkkLxIaUTlnllrf4kTjfo5D53CRyWNMrKBynFL0L2TCE=
=jQIq
-----END PGP SIGNATURE-----

--CxYVmCU3aZiSEgm1--


--===============1305080020076020519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1305080020076020519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1305080020076020519==--

