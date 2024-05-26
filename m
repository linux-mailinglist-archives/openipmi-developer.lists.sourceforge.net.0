Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E468D2B42
	for <lists+openipmi-developer@lfdr.de>; Wed, 29 May 2024 05:09:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sC9gk-0000Me-Mg;
	Wed, 29 May 2024 03:09:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1sC9gi-0000MR-Aa
 for openipmi-developer@lists.sourceforge.net;
 Wed, 29 May 2024 03:09:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G+7l9fwaZ+s39Z6w+7uwzDuwXc5/ozPwbBbEZwJYILw=; b=LEqYSRQkWf4K1Cz54C3O/AMcc1
 UNlVUcIpATNyDnKWxV9tlSzEm4MbzCu7oibGzyAAruyoPGaCoHAkzliOUZ+1lEe/NautYEZYXD1w0
 vZJwlOYVQIPkFRWYG875Ykz95UYODh1H3KJyeO6fqcapG5PyZmEaTzeNV+xb1ofuc/A0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G+7l9fwaZ+s39Z6w+7uwzDuwXc5/ozPwbBbEZwJYILw=; b=Y5uGm/jEO2ARmEVV3Ft0ItvYU9
 XEUqeOmJoaahpNcj306ekq/ILladfTun8paUQmfgR2mGFLLa4KZASSxgYN59DS/tI7A0PKzaVYHdU
 JvNyci860i0re4u2JU5mGrjWO+IBZ60Pad/VVDyQdgTCOgGntfYtKxdqev8k76m/Nyz4=;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sC9gi-000838-6F for openipmi-developer@lists.sourceforge.net;
 Wed, 29 May 2024 03:09:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.whiteo.stw.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1sBB3o-0002ub-4H; Sun, 26 May 2024 12:25:04 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1sBB3i-0032ch-Nm; Sun, 26 May 2024 12:24:58 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
 (envelope-from <ukl@pengutronix.de>) id 1sBB3i-00CPaP-22;
 Sun, 26 May 2024 12:24:58 +0200
Date: Sun, 26 May 2024 12:24:58 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <corey@minyard.net>
Message-ID: <nkhpr2ddrc4i7ai6gwamxrednx327atigoaxmamwq763bgpi46@fghhdinrqda7>
References: <cover.1709655755.git.u.kleine-koenig@pengutronix.de>
 <3uhfeeahn2u23mxyumyxcyx4kmcxzczipkan7eqh4aslsmhxyz@zgsmwj2jvb2v>
 <Zhf9mQx/KgXOzPTs@mail.minyard.net>
 <sjgseqireuaswtbuwl3rvcszpsjzph4opq52x2kbudczxutz7o@2tua2oueufdd>
 <ZlH4KFZ3MYzelzZK@mail.minyard.net>
MIME-Version: 1.0
In-Reply-To: <ZlH4KFZ3MYzelzZK@mail.minyard.net>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Corey, On Sat, May 25, 2024 at 09:39:36AM -0500, Corey
    Minyard wrote: > On Sat, May 25, 2024 at 12:10:38PM +0200, Uwe Kleine-König
    wrote: > > These changes are in next since a while but didn't land in Linus
    [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [185.203.201.7 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [185.203.201.7 listed in sa-accredit.habeas.com]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: pengutronix.de]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sC9gi-000838-6F
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
Cc: Corey Minyard <minyard@acm.org>, Benjamin Fair <benjaminfair@google.com>,
 linux-aspeed@lists.ozlabs.org, Avi Fishman <avifishman70@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>,
 Tali Perry <tali.perry1@gmail.com>,
 "Aneesh Kumar K.V" <aneesh.kumar@kernel.org>, Nancy Yuen <yuenn@google.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, kernel@pengutronix.de,
 Patrick Venture <venture@google.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 openipmi-developer@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Tomer Maimon <tmaimon77@gmail.com>
Content-Type: multipart/mixed; boundary="===============8654528060187239964=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8654528060187239964==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iom6itn46xokgfg6"
Content-Disposition: inline


--iom6itn46xokgfg6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Corey,

On Sat, May 25, 2024 at 09:39:36AM -0500, Corey Minyard wrote:
> On Sat, May 25, 2024 at 12:10:38PM +0200, Uwe Kleine-K=F6nig wrote:
> > These changes are in next since a while but didn't land in Linus tree
> > for v6.10-rc1. I intend to send a PR to Greg early next week changing
> > platform_driver::remove to match remove_new. If these commits don't make
> > it in in time, I'll be so bold and just include the commits from your
> > for-next branch in my PR.
>=20
> I sent them to Linus right after 6.9 dropped, let me resend...

That worked, they landed now in Linus' tree. Thanks, that makes it a bit
less ugly for me.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--iom6itn46xokgfg6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmZTDfkACgkQj4D7WH0S
/k7BPwgAr6xD+4ieftmbUYTU20hpTMCFNQIGMGywkgy6RQbW9ETmo4DTqDfVVtQw
rOTCz1AIpQXqREfEmaf6Z+mUHHXwl3+9M1H0VdEnDQXJNbGTEpoL7hW5fBNXeBEw
t5OnxEpvcN3nggHf8XRynW9SSgnw7RMepD0veOWeUxe76AmJZrYOTNwgYwp61ade
7vOgwlSmPQ6s5ygQ0YJCckbVxfthPXBwMHFmdu1NcBDIzXz+b0jYwe2ixKfZEXZz
N8Ti522H4WgTjtr9TMXXNkQd3cjLmBMdbFLr6xtKpxrsvJKkjOlJhm+irzw+Mhgj
b04pbiT3qFEfsmSj+LMFKeWPl29liw==
=Qytg
-----END PGP SIGNATURE-----

--iom6itn46xokgfg6--


--===============8654528060187239964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8654528060187239964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8654528060187239964==--

