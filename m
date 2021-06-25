Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD943B4758
	for <lists+openipmi-developer@lfdr.de>; Fri, 25 Jun 2021 18:22:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lwoaZ-0001xN-B3; Fri, 25 Jun 2021 16:21:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <wsa@kernel.org>) id 1lwnLh-0001Q7-Dy
 for openipmi-developer@lists.sourceforge.net; Fri, 25 Jun 2021 15:02:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+nC2189eKCU6T28/hcgTvLONm44gotEpXOHRDCHlrOs=; b=B8oTJ9VzGLJhkKYlBCBVKW/QI4
 CIsrazJlCWldUVZsCrOUZH9EX7RRta1DPZaBtPT+xICWg/m3XGOE+3gwxfFe8w5u7OdEOQ6hw3Bwa
 R44XbJzEwl+Su0XJzp+AhNLxXdjYzGNevApnSxkucy70brdMYGw89Fm0xteb1eaJjas0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+nC2189eKCU6T28/hcgTvLONm44gotEpXOHRDCHlrOs=; b=gc8AGRIOrCnk5T9dZnsJ2JA5vJ
 myUHmGN+eYVkAs/zsUrL3Lby6QQuGRAVmQ8/rM+qpC4M6GLA6tbWfXVn/LXl/5UzlxBzpLlySlGoV
 VdGJrSzHJ2fXI9qYvVKc5ZkNWNC0xDQo9CGIY0p0aHbfhoqDvL1yi1BvgU4ZkVmHktzM=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lwnLd-0005bR-MG
 for openipmi-developer@lists.sourceforge.net; Fri, 25 Jun 2021 15:02:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3EEA56197B;
 Fri, 25 Jun 2021 15:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624633341;
 bh=+nC2189eKCU6T28/hcgTvLONm44gotEpXOHRDCHlrOs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q8YzMdkakrr+6yUHSuakRSX6dve5Mt0T++6DuB0We2J28fogIsOo9FQ11MXaOVy2u
 rMUydL3PCwwARSXaHl8pAA7iOIwtiBSx/3lJhrsDlT18J00aw03AkGPXCKWYYHn22c
 6x8x0KYIP+Rb18j/gcfQtkoTocm2zRF7nf/1glRBNHgDJwkOlZmOLG0/9g7w4UqlKO
 wxMSaeyFhVjQpGqSdpoLNLurW/2P4e4IEX8KG1GvlUu9S74GoSaRbFQEfYfYZfuzLG
 FaVEaVw+r0cBBB+ROFDPC6JXDaskPV1CI5+PhiaB1ieS6y8YtbbfDjtSzEy+ObKl92
 v37ZiTceM2Ppw==
Date: Fri, 25 Jun 2021 17:02:19 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <YNXv+2SpsTLStsIE@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 openbmc@lists.ozlabs.org
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-2-quan@os.amperecomputing.com>
MIME-Version: 1.0
In-Reply-To: <20210519074934.20712-2-quan@os.amperecomputing.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lwnLd-0005bR-MG
X-Mailman-Approved-At: Fri, 25 Jun 2021 16:21:50 +0000
Subject: Re: [Openipmi-developer] [PATCH v3 1/7] i2c: i2c-core-smbus: Expose
 PEC calculate function for generic use
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0525570513302760769=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============0525570513302760769==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+2nERxd5au+gK8PN"
Content-Disposition: inline


--+2nERxd5au+gK8PN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 19, 2021 at 02:49:28PM +0700, Quan Nguyen wrote:
> Expose the PEC calculation i2c_smbus_pec() for generic use.
>=20
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>

You are the second one who wanted this exported. I agree it makes sense
for slave drivers. So, I'll skip the required user because two are in
flight. Applied to for-next, thanks!


--+2nERxd5au+gK8PN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmDV7/oACgkQFA3kzBSg
KbZ8xg//dLfzMR1eQtBMxT1tUHLNopwRIXCsraVBzK+s0nbpuIDwP7mxiTLlLnQ9
vp/mzzur/NvhOqJ7uBrc1tPIyo6fcNtH9sq1S1hGQcV6kFR/fZ920TvGo/uE1AvN
GHU8vUz2TBjYvctu9fiBIYecfDB0KAkYPHTV6zpANUn2CnifvIdBJ7E38IVUk5n/
b0cZEsjj1HV7Hnp+GHw5CPsHYOV3LP9Nlbu+z++AzcYhhbEXxUEFaiMUS4LQ58Px
idn6ndXW8L5r69OH7Y+YR2EvEKm4rwqs21rnh0Iql1U+eQVYrL9cafa1/uXdah3r
OKWrcFEhyomnHAI8QQ1aK6fIyDB9ms93asIwhKdy9oKO7ZDTXH5gsUvE35L+mhoZ
tv5IiOfNoI6stXCotmaqAWXIP5/B/ucuyEMiA5Dyjfa+uutIHgT+l4tGvchnpe3T
jKbmr7SlGW410XhyVc+No8zD0yug7YpC6IQ+AEWHMsSXR4dIU87ZTxcGRXZKeKv5
agJ5M0eRWRKjJpatkK/7mOumtaIcnT4jyGfXiwKOlsS8XIYzeq6WsT08EpVXQIKR
eQVYbm3Y1d8rI3AYts1le1VqEv69PShYBXuvbm4FG9H6fKkAVX9i2dLGwiS8GiWM
lskRRpMa6GpsLn0t+uurUWkgXzK+c06NBejGsWTs9nq5s41Y1bU=
=X8AV
-----END PGP SIGNATURE-----

--+2nERxd5au+gK8PN--


--===============0525570513302760769==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0525570513302760769==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============0525570513302760769==--

