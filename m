Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 307EE8A0976
	for <lists+openipmi-developer@lfdr.de>; Thu, 11 Apr 2024 09:15:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ruoen-00044s-4V;
	Thu, 11 Apr 2024 07:15:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1ruoei-00044l-HJ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 11 Apr 2024 07:15:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JnSh5llQFukFrwsWEXgkPXpy2+JWHVrpRmUhVAVuutY=; b=OcW6SKAs2iovRj6FSW9q/52H7X
 BF1FSbUaUmUjCsYXcDq9pDZ/qEJiHy0hv1krbiM0ZvInDYfnhKY6D5VcqppS7cTWPhyxskvmt5208
 qupEsTcqixcIm1D5MP/GEj5viYEUxxkDicHqn2wExCvshlBxbt1onDCRpcnpy86dJncQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JnSh5llQFukFrwsWEXgkPXpy2+JWHVrpRmUhVAVuutY=; b=I929YSW/advuhI1OUWJdPbKjZk
 uxqqu4MHyZxl7r7eH2kTPD9k3m80ZYP9IPdS/qUo+lY1+lOFjAwNGzD1auDiEGiTCeqDxNXse3GNl
 0Wtnt83A0vZrXAvQd1RLoQnAOhPb74uRuXHD/oUhFY65yZb399yYIOorwF/LdWsYTmsc=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruoeh-00074y-BX for openipmi-developer@lists.sourceforge.net;
 Thu, 11 Apr 2024 07:15:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ruoeG-0003hE-DG; Thu, 11 Apr 2024 09:15:04 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1ruoeF-00Bdrr-Mg; Thu, 11 Apr 2024 09:15:03 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1ruoeF-000PVS-1v;
 Thu, 11 Apr 2024 09:15:03 +0200
Date: Thu, 11 Apr 2024 09:15:03 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>, Michael Ellerman <mpe@ellerman.id.au>, 
 Joel Stanley <joel@jms.id.au>, Avi Fishman <avifishman70@gmail.com>, 
 Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>
Message-ID: <3uhfeeahn2u23mxyumyxcyx4kmcxzczipkan7eqh4aslsmhxyz@zgsmwj2jvb2v>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, On Tue, Mar 05, 2024 at 05:26:57PM +0100, Uwe Kleine-König
    wrote: > this series converts all drivers below drivers/char/ipmi to struct
    > platform_driver::remove_new(). See commit 5c5a7680e67b ("platfo [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: pengutronix.de]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [185.203.201.7 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ruoeh-00074y-BX
Subject: Re: [Openipmi-developer] [PATCH 0/6] ipmi: Convert to platform
 remove callback returning void
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
Cc: Benjamin Fair <benjaminfair@google.com>, linux-aspeed@lists.ozlabs.org,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>, Nancy Yuen <yuenn@google.com>,
 Nicholas Piggin <npiggin@gmail.com>, kernel@pengutronix.de,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 openipmi-developer@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2259188372336636533=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============2259188372336636533==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lcngjfs7wpvalyyt"
Content-Disposition: inline


--lcngjfs7wpvalyyt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, Mar 05, 2024 at 05:26:57PM +0100, Uwe Kleine-K=F6nig wrote:
> this series converts all drivers below drivers/char/ipmi to struct
> platform_driver::remove_new(). See commit 5c5a7680e67b ("platform: Provid=
e a
> remove callback that returns no value") for an extended explanation and t=
he
> eventual goal.
>=20
> All conversations are trivial, because their .remove() callbacks
> returned zero unconditionally.
>=20
> There are no interdependencies between these patches, so they could be
> picked up individually. But I'd hope that they get picked up all
> together by Corey.

Apart from a (positive) review reply I didn't get any feedback to this
series. My quest to change the prototype of struct
platform_driver::remove depends on these patches, so it would be great
if they made it in during the next merge window.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--lcngjfs7wpvalyyt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmYXjfYACgkQj4D7WH0S
/k5niAgApNMQneCEXf2z/4f0oMw7n29zB1VBA8XqNBe8gywAwtS/EIYj+LTG2anz
YAwL1f4zIxTxn3XvSroSLY1oQXVdCEXgVOUaBzmBdDqhcp71M1+RiQ1ihROhFN/7
LoWdNpmjMSZKGe53xy2t0uFeIOQ0GhS5POyZ+YMN/MCbTXwqO2BhEJFKOVf13oDT
gtDaoLPom1R/TIqsVXzjj9qq9r68Lgt21ELjpu4dAr9ZElsiezenS67LKWMgbqTq
o5oupsG/zwlOSYmOeXKWo/CuIVBwXMbQwKIzuRZc32zDJhVD5U4F0h0F/tAgMsTB
z2FsEhWmTytqEVPVdMij2fk7MuaICw==
=MgkB
-----END PGP SIGNATURE-----

--lcngjfs7wpvalyyt--


--===============2259188372336636533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2259188372336636533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============2259188372336636533==--

