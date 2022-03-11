Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0E34D5BCE
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Mar 2022 07:59:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nSZEz-00046P-7z; Fri, 11 Mar 2022 06:59:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wsa@kernel.org>) id 1nSZEy-00046J-1Y
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Mar 2022 06:59:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mml/YMZx72ynCffd2/JBjO4ydcJ18oStO8z6m9LIIIo=; b=MgP09y+o7XAV53kwY/M7k4Auvs
 YxbJTtQ1Jbqm1o1tIM2KczlaGg43ZkAsudAmndmHlNGTj8NvTYcBu+ZTkDKGwanKRDoWjauv4Tk+J
 qJWdoZC+ufeRXqt0t8tbw3UAspNMIHIaSkDT+mtCsv/PXelpqQnmoG/RWprp1aw4zH2A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mml/YMZx72ynCffd2/JBjO4ydcJ18oStO8z6m9LIIIo=; b=HtYHcM9XeaYfvuE4VB2N15RSul
 dQgjvVSISIOHdfnj6Jc1RESeikW2r6I3xGGauYDvb4/wUgfVeUF1Z9kugHTdMhy5bcL3BagFxRRRa
 sJYbjKoZePmM5usLfEsUy/wsAlquyaGhWU9fTrvKgWdw7puycGjyh5idNhlbNGYFHWBI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSZEu-0003Qc-0a
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Mar 2022 06:59:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C198761D48;
 Fri, 11 Mar 2022 06:58:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 808ECC340E9;
 Fri, 11 Mar 2022 06:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646981933;
 bh=57QZ3z3TEDeIuuizUKu4lfq1+BF92zuxMI5WApqedIc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E/bqfdCeMyOPzV6SS9ZruCs09qR+6vq8r1D1pyHSqRBRr9HN+JA6/AWG8pEfA2uKT
 3otvhvpBZf0OG3sUzODx2C7OLX18Ni/nq3XHNUMM3y/q9GXdQ2Au3AbdzuiE9e+ko6
 dCQIX8fa8v69mNfE71hxT3B1GxLH9tn0m6/F3RbYlZThnGObIz8umKrsLKGCqU3udv
 kMIdklBvY1wg+Gf3ZqMZx/ia9FvEtvmv+9gG1/Darl2KwHsF3N3QG/6JmetdYqpUAl
 ApnoeX9PXhnBfGMbeLB8jv/k2Th3dJdggjwGT24HDrsYrQKtUiHvygPJuVhzhhU+0S
 rgZa5ome2AaRQ==
Date: Fri, 11 Mar 2022 07:58:46 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <YirzJj/BBUQTbKS3@ninjato>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>
References: <20220310114119.13736-1-quan@os.amperecomputing.com>
 <20220310114119.13736-4-quan@os.amperecomputing.com>
MIME-Version: 1.0
In-Reply-To: <20220310114119.13736-4-quan@os.amperecomputing.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 10, 2022 at 06:41:18PM +0700, Quan Nguyen wrote:
 > From: Dan Carpenter <dan.carpenter@oracle.com> > > The copy_from_user()
 function returns the number of bytes remaining to > be copied but [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nSZEu-0003Qc-0a
Subject: Re: [Openipmi-developer] [PATCH v6 3/4] ipmi: ssif_bmc: Return
 -EFAULT if copy_from_user() fails
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
 Corey Minyard <minyard@acm.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Rob Herring <robh+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8862174256858475781=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8862174256858475781==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c+D6WiTH4AhpNkI6"
Content-Disposition: inline


--c+D6WiTH4AhpNkI6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 10, 2022 at 06:41:18PM +0700, Quan Nguyen wrote:
> From: Dan Carpenter <dan.carpenter@oracle.com>
>=20
> The copy_from_user() function returns the number of bytes remaining to
> be copied but we should return -EFAULT here.
>=20
> Fixes: 501c25b59508 ("ipmi: ssif_bmc: Add SSIF BMC driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Corey Minyard <cminyard@mvista.com>
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>

It is nice that you want to keep this patch seperate to give Dan
credits, but I still think it should be merged into patch 1, so the
initial driver is as flawless as it can be. You could give Dan still
credits by mentioning him in the commit message IMO. Dan, would you be
fine with this?

> v6:
>   + New add in v6, thanks Dan for the patch     [Dan]
>=20
>  drivers/char/ipmi/ssif_bmc.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index 62db97773654..91ac2cae756e 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -87,9 +87,8 @@ static ssize_t ssif_bmc_write(struct file *file, const =
char __user *buf, size_t
>  	if (count > sizeof(struct ssif_msg))
>  		return -EINVAL;
> =20
> -	ret =3D copy_from_user(&msg, buf, count);
> -	if (ret)
> -		return ret;
> +	if (copy_from_user(&msg, buf, count))
> +		return -EFAULT;
> =20
>  	if (!msg.len || count < ssif_msg_len(&msg))
>  		return -EINVAL;
> --=20
> 2.35.1
>=20

--c+D6WiTH4AhpNkI6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmIq8yIACgkQFA3kzBSg
KbZEgBAAiUx2Df2QUChkO0IP8Cx64ymzUxiS8tVADYlH1t77TAN/0RmIWSkUXD4U
eHPAqnUOUcScJqidUpOhNT8v/4JKeW2/SSw7NpJyDL3n9BqddH+3QRDVDxuvT7ga
I9pVMmEPoU5PjSOfWyzfMzbJhs99UwcFtkqOvZRUSQsoUxWsVoPCs6Aknwstz6DD
bmfDpwJxNKRadqLA/bO6uQcpxUvCQM4hIq/zKMWnF8Yqsxg8Rr4raQJFGj0VIcp9
Zd4WIs4ZauwTu0RGbOX7++6QslOY6FN0HfVqTuWWGsBF7Z9dep51gC06vFM9+92t
lTofulwsmdMNAKKRz2QFAsL9P7fL6pA5sF+qCKJdu3NcYIKm9Ql+nm0UQt9Oq8ZY
fJqR6uPYlcv773QThNTSj8dhWCbvGDsxRxGV85DBt3syfohIKt1q4hkD9QsoDlpg
bS5SVmVwNxRTRSqWk1Swuf0ARHqF6SHBj6XIR1c/w5FGrTJ7GMHn+KPeUlK4Qr+d
az0Sm7lOQCJeW3RnT7c3FMDL3D8vLWt1qvwxBY4IcBQmor4v+5PlMFKxbIYcsnYt
vThbUi+zj+XfbVFLdv2+7iOgNM+69pYMfkHfH7tnyhoCPeo5VCtH6urycWRx1Zlb
CkfWmKciuaVVasw5wHT8svjZqVqKFqkfecbL29RMHbkim4743Q0=
=s5hT
-----END PGP SIGNATURE-----

--c+D6WiTH4AhpNkI6--


--===============8862174256858475781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8862174256858475781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8862174256858475781==--

