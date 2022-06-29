Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC7455F8C8
	for <lists+openipmi-developer@lfdr.de>; Wed, 29 Jun 2022 09:23:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o6S36-0000b6-1s; Wed, 29 Jun 2022 07:23:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>) id 1o6S34-0000b0-QC
 for openipmi-developer@lists.sourceforge.net; Wed, 29 Jun 2022 07:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mvmBWOVRqRY9R9e6hFPCadXxdAVVPSLY1ijc7/cFi0Q=; b=BKZ7uE+k1AVKquVH+36VXP8SVo
 ezIsKrZyjIualx66ZneENt8DhaLNsIubL7IItm+3ysgi10b+MwqwoebD9ZyvhaePLRlvnJB6RDZpD
 KYrl+H+OC75S/0ssZRlf2Srw/VyECajDEKvxaY/CDTlAY1wYVjeuF+cH7rcJtik1pYys=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mvmBWOVRqRY9R9e6hFPCadXxdAVVPSLY1ijc7/cFi0Q=; b=JmuEprhafhZTT+4n6cExl3xUmI
 25xE62lR8SN0uKm7D2EY95JhK5IooN/M+16TMI+2TQADAtHR9fyv6QYgInJ7WUDZ4s1PGA5bK+oGQ
 fzKv+60nKZwcZDLnhb+EusS76PfH0y4/bvLcT1GjIu7Hd9g14VQLiC37D3ZGYc6SrgYM=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o6S34-00024P-0l
 for openipmi-developer@lists.sourceforge.net; Wed, 29 Jun 2022 07:23:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1o6S2d-0005UO-4V; Wed, 29 Jun 2022 09:23:15 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1o6S2S-003M3c-Vk; Wed, 29 Jun 2022 09:23:08 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1o6S2V-001qeU-Nu; Wed, 29 Jun 2022 09:23:07 +0200
Date: Wed, 29 Jun 2022 09:23:04 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jeremy Kerr <jk@codeconstruct.com.au>
Message-ID: <20220629072304.qazmloqdi5h5kdre@pengutronix.de>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
 <60cc6796236f23c028a9ae76dbe00d1917df82a5.camel@codeconstruct.com.au>
MIME-Version: 1.0
In-Reply-To: <60cc6796236f23c028a9ae76dbe00d1917df82a5.camel@codeconstruct.com.au>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, [I dropped nearly all individuals from the Cc: list
 because various bounces reported to be unhappy about the long (logical) line.]
 On Wed, Jun 29, 2022 at 03:03:54PM +0800, Jeremy Kerr wrote: > Looks good
 - just one minor change for the mctp-i2c driver, but only > worthwhile if
 you end up re-rolling this series for other reasons: [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pengutronix.de]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [85.220.165.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1o6S34-00024P-0l
Subject: Re: [Openipmi-developer] [PATCH 6/6] i2c: Make remove callback
 return void
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
Cc: linux-fbdev@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-rtc@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-staging@lists.linux.dev,
 kasan-dev@googlegroups.com,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-media@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-pm@vger.kernel.org,
 acpi4asus-user@lists.sourceforge.net, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Wolfram Sang <wsa@kernel.org>, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>, patches@opensource.cirrus.com,
 linux-integrity@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============1626950806396920767=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============1626950806396920767==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3yzpq2rgg2xm7tqn"
Content-Disposition: inline


--3yzpq2rgg2xm7tqn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

[I dropped nearly all individuals from the Cc: list because various
bounces reported to be unhappy about the long (logical) line.]

On Wed, Jun 29, 2022 at 03:03:54PM +0800, Jeremy Kerr wrote:
> Looks good - just one minor change for the mctp-i2c driver, but only
> worthwhile if you end up re-rolling this series for other reasons:
>=20
> > -static int mctp_i2c_remove(struct i2c_client *client)
> > +static void mctp_i2c_remove(struct i2c_client *client)
> > =A0{
> > =A0=A0=A0=A0=A0=A0=A0=A0struct mctp_i2c_client *mcli =3D i2c_get_client=
data(client);
> > =A0=A0=A0=A0=A0=A0=A0=A0struct mctp_i2c_dev *midev =3D NULL, *tmp =3D N=
ULL;
> > @@ -1000,7 +1000,6 @@ static int mctp_i2c_remove(struct i2c_client *cli=
ent)
> > =A0=A0=A0=A0=A0=A0=A0=A0mctp_i2c_free_client(mcli);
> > =A0=A0=A0=A0=A0=A0=A0=A0mutex_unlock(&driver_clients_lock);
> > =A0=A0=A0=A0=A0=A0=A0=A0/* Callers ignore return code */
> > -=A0=A0=A0=A0=A0=A0=A0return 0;
> > =A0}
>=20
> The comment there no longer makes much sense, I'd suggest removing that
> too.

Yeah, that was already pointed out to me in a private reply. It's
already fixed in

	https://git.pengutronix.de/cgit/ukl/linux/log/?h=3Di2c-remove-void

> Either way:
>=20
> Reviewed-by: Jeremy Kerr <jk@codeconstruct.com.au>

Added to my tree, too.

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--3yzpq2rgg2xm7tqn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmK7/dUACgkQwfwUeK3K
7AnTJgf9GW2H7fk9/Je11PRlCnUOSZ1sz/49RHAm4xj66pI/hdRP++D8L5o7ntEU
Hl5hKosR36cUyX12ie+YQtiCRkjhLqUoJnPzJOtcXQNV7mlMt6ds2INSO4iHYtMa
b2UH+lLQ6K/DO0+1KquElKJhfBOKucYY1WQAVK4cfasBKMR4MtukcHAgcYClRYdj
Nvvy6bCjqr8M1+uqDTJUUR/d0rWYHxFKygYRUfK7YPpz57gaVgaR9Js9GDGkVFB4
qVL5x23NzgB/Djr1Ls1F6Z5eFMjbtVb+S1HDRsU+HJOYD6v1LkT2OFx9iFpme+8m
+4HHNR5pxKogz59u4YpP1pIb0MejhA==
=ibah
-----END PGP SIGNATURE-----

--3yzpq2rgg2xm7tqn--


--===============1626950806396920767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1626950806396920767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1626950806396920767==--

