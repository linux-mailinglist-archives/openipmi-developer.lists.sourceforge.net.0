Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B483711F27
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 May 2023 07:17:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1q2Pp4-00064i-MC;
	Fri, 26 May 2023 05:17:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ukl@pengutronix.de>) id 1q2Pp2-00064R-O8
 for openipmi-developer@lists.sourceforge.net;
 Fri, 26 May 2023 05:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4EpKvmKYkbgGExk03SajeoLMqsE6uHQ7y7C/1fOvGq8=; b=HOgYc1GmmfIR89u3CWG7qV23Cw
 WsDfO3Yr6h9UCfD7WT5phjCMCFILePHHA8OATjMnFu+VSssIJ6PRe4yhy5/nC4mRvgwnQDfpRWh0r
 x5/snkKPFylTR5h0zei9fGlex/zEVDikui7Mh/i/JVWmy9QQd0zbXz5R6qCV0DczFTWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4EpKvmKYkbgGExk03SajeoLMqsE6uHQ7y7C/1fOvGq8=; b=mXsDxJJ1Rc8ZWQwkkzRFsT0FQZ
 gfgGZ3Lw/QNNd58AkXN+/Mpk0W+ffx1o3HuiMtc+5m+uxxlmLB2IJB18sAEOv9ioesrziJFY6E9zi
 pndJ1/4SgEWVCve8R5qjYccFEj/T1Qli2bPTNnAIjydlVNd7r/O+rlUcjSirTR3cVtpg=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q2Pox-002w8t-PV for openipmi-developer@lists.sourceforge.net;
 Fri, 26 May 2023 05:17:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1q2Pok-0005HB-Vy; Fri, 26 May 2023 07:16:47 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1q2Poj-002ssI-UK; Fri, 26 May 2023 07:16:45 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1q2Poj-00842S-4d; Fri, 26 May 2023 07:16:45 +0200
Date: Fri, 26 May 2023 07:16:45 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20230526051645.kgc4h3r5j5tshd6b@pengutronix.de>
References: <20230525204021.696858-1-u.kleine-koenig@pengutronix.de>
 <ZG/05x7x6ubuOUUJ@mail.minyard.net>
MIME-Version: 1.0
In-Reply-To: <ZG/05x7x6ubuOUUJ@mail.minyard.net>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Corey, On Thu, May 25, 2023 at 06:53:11PM -0500, Corey
    Minyard wrote: > On Thu, May 25, 2023 at 10:40:21PM +0200, Uwe Kleine-König
    wrote: > > After commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new()
    [...] 
 
 Content analysis details:   (-0.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [85.220.165.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1q2Pox-002w8t-PV
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Switch i2c drivers back to
 use .probe()
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
Content-Type: multipart/mixed; boundary="===============7796175362875290199=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============7796175362875290199==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jzd7pnftikf75jyq"
Content-Disposition: inline


--jzd7pnftikf75jyq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Corey,

On Thu, May 25, 2023 at 06:53:11PM -0500, Corey Minyard wrote:
> On Thu, May 25, 2023 at 10:40:21PM +0200, Uwe Kleine-K=F6nig wrote:
> > After commit b8a1a4cd5a98 ("i2c: Provide a temporary .probe_new()
> > call-back type"), all drivers being converted to .probe_new() and then
> > 03c835f498b5 ("i2c: Switch .probe() to not take an id parameter") conve=
rt
> > back to (the new) .probe() to be able to eventually drop .probe_new() f=
rom
> > struct i2c_driver.
>=20
> Ok, this is in my for-next tree.
>=20
> Or, if you prefer:
>=20
> Acked-by: Corey Minyard <cminyard@mvista.com>
>=20
> if you would prefer to apply this, and I can drop mine.

Thanks, please keep it in your tree. I'm happy about every driver that I
don't have to care for in the PR that eventually drops .probe_new().
There is no urge, I'll address the last step when all the preconditions
are in via their usual tree.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--jzd7pnftikf75jyq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmRwQLwACgkQj4D7WH0S
/k5uzwf/ZIYx0b1tZgpTl233EOgXHuqxvg+924kMrzuoyOhDxTaPahBQKKoLfmjf
PJgyY+iA0Jz/lecI4mfh2hDbfpMiBiZV0UBkpUltVCnG3mftUjM6OXxV5d0s1s8/
8cUDNQer6g8AcuCfw8kXXMf/7KBxKp5QAv7fONad/KH0/hAAXq0uEsYniwHg8wgV
JDa6tYtiBCFeI2BiLc4KRox4FRPDaU961c6qpkRkSKsKMUGq2JTTZKjsvZqN+adr
yCWj3Zg9hIaDUdWMmFWZS/AhWh/OneVBhSKut/nPwG9TLPE7JB/N1+SI1xVpkYTn
DjRz9eTmsb9i7mJ1+hqYBqvMhJp5fw==
=KGIQ
-----END PGP SIGNATURE-----

--jzd7pnftikf75jyq--


--===============7796175362875290199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7796175362875290199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7796175362875290199==--

