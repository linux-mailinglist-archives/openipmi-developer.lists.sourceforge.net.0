Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7DC6DF95C
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Apr 2023 17:07:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pmc4S-0006AK-Hq;
	Wed, 12 Apr 2023 15:07:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1pmc4Q-0006AE-F9
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Apr 2023 15:07:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7+M+WSifEYp7I5QGUgk3jg1s1fnOgY2wZIDXsZYotUU=; b=Il5VFSIF6jXgMwrf578uBLxsbg
 tNoQ1GDsCrbY8yr9p/5YaghFdoNEsyWb49fczKWt4hp2CjF6vy0Uh+NtQQ4HOKhmFRDcsIHm8tiVi
 474j4yMqRKo+GWso2OccKVcjzWtioMJiOBVP0GHKNEXvw5PjczQ5Po6pNiW/ws4GtVfQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7+M+WSifEYp7I5QGUgk3jg1s1fnOgY2wZIDXsZYotUU=; b=HtkqFAHK4GPeDwsaew8+mkHdXx
 Var9mBedeWIBzadDc4Rx7GlTmzJsoOlxPnKZjwAZ7aL9ojo6OKIDxxbRQptnjopntJD4AREV+95nw
 SLk1CiWWXe0rtRqEEdoqt3dmHlRbvkpVKIo/JTMIERxrF1ugO1UrSSUIP1Zp/ZJmWuRs=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pmc4M-005OlZ-AH for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Apr 2023 15:07:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1pmc4B-0006ck-Fn; Wed, 12 Apr 2023 17:07:23 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1pmc4A-00AllD-Cl; Wed, 12 Apr 2023 17:07:22 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1pmc49-00Cdiu-NZ; Wed, 12 Apr 2023 17:07:21 +0200
Date: Wed, 12 Apr 2023 17:07:21 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20230412150721.7qk5qzedtflmseh6@pengutronix.de>
References: <20221230124431.202474-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20221230124431.202474-1-u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, Dec 30, 2022 at 01:44:31PM +0100, Uwe Kleine-König
    wrote: > For both variants (platform and i2c driver) after a successful bind
    > (i.e. .probe completed without error) driver data is set to a [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [85.220.165.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1pmc4M-005OlZ-AH
Subject: Re: [Openipmi-developer] [PATCH] ipmi:ssif: Drop if blocks with
 always false condition
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
Cc: openipmi-developer@lists.sourceforge.net, kernel@pengutronix.de
Content-Type: multipart/mixed; boundary="===============2932480719098770279=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============2932480719098770279==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="73iyidxfocoyclj2"
Content-Disposition: inline


--73iyidxfocoyclj2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 30, 2022 at 01:44:31PM +0100, Uwe Kleine-K=F6nig wrote:
> For both variants (platform and i2c driver) after a successful bind
> (i.e. .probe completed without error) driver data is set to a non-NULL
> value.
>=20
> So the return value of i2c_get_clientdata and dev_get_drvdata
> respectively are not NULL and so the if blocks are never executed. (And
> if you fear they might, they shouldn't return silently and yield a
> resource leak.)
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

This patch waits for feedback now for > 3 month. Is this still on
someone's todo list?

Best regards
Uwe

> ---
>  drivers/char/ipmi/ipmi_ssif.c | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 4bfd1e306616..a0090ea54e48 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1286,9 +1286,6 @@ static void ssif_remove(struct i2c_client *client)
>  	struct ssif_info *ssif_info =3D i2c_get_clientdata(client);
>  	struct ssif_addr_info *addr_info;
> =20
> -	if (!ssif_info)
> -		return;
> -
>  	/*
>  	 * After this point, we won't deliver anything asychronously
>  	 * to the message handler.  We can unregister ourself.
> @@ -2074,9 +2071,6 @@ static int ssif_platform_remove(struct platform_dev=
ice *dev)
>  {
>  	struct ssif_addr_info *addr_info =3D dev_get_drvdata(&dev->dev);
> =20
> -	if (!addr_info)
> -		return 0;
> -
>  	mutex_lock(&ssif_infos_mutex);
>  	list_del(&addr_info->link);
>  	kfree(addr_info);
> --=20
> 2.38.1
>=20
>=20
>=20

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--73iyidxfocoyclj2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmQ2ySgACgkQj4D7WH0S
/k5H7wf9HKD5nLOZ++4GnTNqv5PqSy4ogriVw7Xycn0UGE1EMZjNUof20Oj+MaHS
BoKNfoexCiMzyze65a1o7ZL2oBlbPCEGOQ8KMaPyvl5StM+BG7vVr5e8b6eFENRf
74YqZBQVzorrL+s9qNndwgCmVwkc1+pO6LcgTP1ewk2Hp+DlLnopV4Q/dgmyy1HB
uysslHqAFxfmivQNy1qLwNamqWc+GpwyLAhsdGl1b4n/o5B8J2Uq9DLO6E1dKhye
xMzwihPkBQ3GAC2+N819GXjT150XFJpXfdKfnRGPKxlywpY/KX/+/Z1zVzsHdS7N
UiND0KXh4EvBLnfdQ2hqW/x4kPPcrg==
=Vjbr
-----END PGP SIGNATURE-----

--73iyidxfocoyclj2--


--===============2932480719098770279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2932480719098770279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============2932480719098770279==--

