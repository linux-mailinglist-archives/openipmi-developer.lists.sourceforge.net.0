Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CA68D2B43
	for <lists+openipmi-developer@lfdr.de>; Wed, 29 May 2024 05:09:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sC9gx-00083F-EH;
	Wed, 29 May 2024 03:09:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1sC9gv-000838-Hw
 for openipmi-developer@lists.sourceforge.net;
 Wed, 29 May 2024 03:09:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C5Y2a2l6raFE4uTXKiwyFf6oT5GuAPuEZwYmkD0jXZw=; b=EGhkdA864gpVF10NMwZG1IA9Wu
 gk8OKpdNkusm5ChYmDQAEpNvx4c1uENk3zW503rVySPZrIgTKlV2b2tGPhOpYwhffCNvL/5Yrnscj
 XWFX2vL9zREjn29cIOPNZigsM/HnIRb8aWxNV/7GomGwlK2MOCYJ1OWsWT2JVqmYwj3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C5Y2a2l6raFE4uTXKiwyFf6oT5GuAPuEZwYmkD0jXZw=; b=XtyXC+Q/ZQKT5Qk5tMjHdI5k+n
 OUuqk+yxGFAc1QF9ke4IftbShyPo+Z2gj6MlkSCWJXleXFbcGLjZK34cCXNMSN3k8ct3WnrdKDI1w
 HjDg8MPwYY783CH82/9mUVArxcu0M99vtbaBi3T8ASfdwyUGA1pppFKcIAjqu4/x/3RM=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sC9gu-00083P-LW for openipmi-developer@lists.sourceforge.net;
 Wed, 29 May 2024 03:09:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1sAoMN-0005QQ-16; Sat, 25 May 2024 12:10:43 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1sAoMI-002uS7-MQ; Sat, 25 May 2024 12:10:38 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1sAoMI-00Bs4j-1u;
 Sat, 25 May 2024 12:10:38 +0200
Date: Sat, 25 May 2024 12:10:38 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <sjgseqireuaswtbuwl3rvcszpsjzph4opq52x2kbudczxutz7o@2tua2oueufdd>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
 <3uhfeeahn2u23mxyumyxcyx4kmcxzczipkan7eqh4aslsmhxyz@zgsmwj2jvb2v>
 <Zhf9mQx/KgXOzPTs@mail.minyard.net>
MIME-Version: 1.0
In-Reply-To: <Zhf9mQx/KgXOzPTs@mail.minyard.net>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Corey, On Thu, Apr 11, 2024 at 10:11:21AM -0500, Corey
    Minyard wrote: > On Thu, Apr 11, 2024 at 09:15:03AM +0200, Uwe Kleine-König
    wrote: > > Hello, > > > > On Tue, Mar 05, 2024 at 05:26:57PM +0100, Uwe Klei
    [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: pengutronix.de]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sC9gu-00083P-LW
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
 Avi Fishman <avifishman70@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>,
 openbmc@lists.ozlabs.org, Tomer Maimon <tmaimon77@gmail.com>,
 Nicholas Piggin <npiggin@gmail.com>, Tali Perry <tali.perry1@gmail.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>, Nancy Yuen <yuenn@google.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, kernel@pengutronix.de,
 Patrick Venture <venture@google.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 openipmi-developer@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5543896828217750709=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============5543896828217750709==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ajph324orx2jafee"
Content-Disposition: inline


--ajph324orx2jafee
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Corey,

On Thu, Apr 11, 2024 at 10:11:21AM -0500, Corey Minyard wrote:
> On Thu, Apr 11, 2024 at 09:15:03AM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello,
> >=20
> > On Tue, Mar 05, 2024 at 05:26:57PM +0100, Uwe Kleine-K=F6nig wrote:
> > > this series converts all drivers below drivers/char/ipmi to struct
> > > platform_driver::remove_new(). See commit 5c5a7680e67b ("platform: Pr=
ovide a
> > > remove callback that returns no value") for an extended explanation a=
nd the
> > > eventual goal.
> > >=20
> > > All conversations are trivial, because their .remove() callbacks
> > > returned zero unconditionally.
> > >=20
> > > There are no interdependencies between these patches, so they could be
> > > picked up individually. But I'd hope that they get picked up all
> > > together by Corey.
>=20
> Yeah, I was kind of waiting for more reviews, but this is pretty
> straightforward.  I've pulled this into my tree.

These changes are in next since a while but didn't land in Linus tree
for v6.10-rc1. I intend to send a PR to Greg early next week changing
platform_driver::remove to match remove_new. If these commits don't make
it in in time, I'll be so bold and just include the commits from your
for-next branch in my PR.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ajph324orx2jafee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmZRuR0ACgkQj4D7WH0S
/k7iXQf+JY2QTPcPdx/jTOE0dUvCeBEjZ4bRh4mIpawNO0kdNbwYcQUVpo5OrDQ8
qnEQRMBPPam51IgxAWEEO1+xa86RbYUrSqNsVQn+chiBr+EQHeAXYpGKuHK8STRO
8Mg38AeS0M4k35+W9RE5WdQQRPbVv/SvIZIWHvqnK7unCaCJmWxbL6LHj6Vy5cR/
BMMd87EEIR+dBbK1EvHqJgKqrtlF58qBMWWiIA9N67SdRSE96WXwRffe+o63evky
YHUl2bvlEn3uwDDwLyFUV6Inqu0RR8YLCS1M2nYpGZE91xQFN9DG7AyXEKMPbXyD
nAHcivIcWONurbCNqax3/T91fn8ftA==
=mxtd
-----END PGP SIGNATURE-----

--ajph324orx2jafee--


--===============5543896828217750709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5543896828217750709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5543896828217750709==--

