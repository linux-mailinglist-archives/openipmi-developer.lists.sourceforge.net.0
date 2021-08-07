Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EE63E3443
	for <lists+openipmi-developer@lfdr.de>; Sat,  7 Aug 2021 11:12:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mCINX-0006DP-Kl; Sat, 07 Aug 2021 09:12:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ukl@pengutronix.de>) id 1mCINT-0006Cu-Ui
 for openipmi-developer@lists.sourceforge.net; Sat, 07 Aug 2021 09:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MOty1/Csdm/DhHYJOtZaBY/p7yp9A6ws27urylrDkiA=; b=K7KInNP5/isGUqUAtvSLHLIYAN
 pxRVDkozO6ciJg12QAvR2JbPNeXs/bh36ojIKu0L1HQCmsfzITaqBFl+DiW55b6jEXC9I+zgPwB69
 wdZEelq6+HPlQDiGU2MSU2aJXg2h27msW3XtP2OWe0jPeA9mi5eBLOeCe5BNOR6PaUNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MOty1/Csdm/DhHYJOtZaBY/p7yp9A6ws27urylrDkiA=; b=Ut7pFueq8zU6MnyYKmqCYyYG7U
 jAIW9tdMylFhvF2aHHaTwvJjsmexMQ1xY9UABOeOsO5lY++D/HfYJOCnUh+a0Xh2SWAx68SWRRZg1
 Iz7E5RPCq0R3UgSywCyzsJR9N/hqGokMqfuqDvI9gK34A+W9TtrLEbZlQdfR0OoPE5Ho=;
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mCINL-00FjIn-MN
 for openipmi-developer@lists.sourceforge.net; Sat, 07 Aug 2021 09:12:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mCIMv-00079k-AT; Sat, 07 Aug 2021 11:11:49 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mCIMp-0007S4-8u; Sat, 07 Aug 2021 11:11:43 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1mCIMp-00079k-7J; Sat, 07 Aug 2021 11:11:43 +0200
Date: Sat, 7 Aug 2021 11:11:35 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20210807091135.xgenctifq3wgn3ro@pengutronix.de>
References: <20210806093938.1950990-1-u.kleine-koenig@pengutronix.de>
 <20210806174927.GJ3406@minyard.net>
MIME-Version: 1.0
In-Reply-To: <20210806174927.GJ3406@minyard.net>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: openipmi-developer@lists.sourceforge.net
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mCINL-00FjIn-MN
Subject: Re: [Openipmi-developer] [PATCH] parisc: Make struct
 parisc_driver::remove() return void
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
Cc: linux-input@vger.kernel.org, alsa-devel@alsa-project.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-parisc@vger.kernel.org, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Helge Deller <deller@gmx.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 netdev@vger.kernel.org, kernel@pengutronix.de, linux-scsi@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Jiri Slaby <jirislaby@kernel.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============3220810149163888491=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============3220810149163888491==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="45vk6qaqgnzlimcx"
Content-Disposition: inline


--45vk6qaqgnzlimcx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Aug 06, 2021 at 12:49:27PM -0500, Corey Minyard wrote:
> On Fri, Aug 06, 2021 at 11:39:38AM +0200, Uwe Kleine-K=F6nig wrote:
> > -int ipmi_si_remove_by_dev(struct device *dev)
> > +void ipmi_si_remove_by_dev(struct device *dev)
>=20
> This function is also used by ipmi_si_platform.c, so you can't change
> this.

Did you see that I adapted ipmi_si_platform.c below? That is an instance
of "Make [ipmi_si_remove_by_dev] return void, too, as for all other
callers the value is ignored, too." (In ipmi_si_platform.c the return
value is used in a struct platform_driver::remove function. The value
returned there is ignored, see commit
e5e1c209788138f33ca6558bf9f572f6904f486d.)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--45vk6qaqgnzlimcx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmEOTkQACgkQwfwUeK3K
7Alj/wf+K39kaQNGHDkIhb/MnReZtTqJ7A4TTKfWOCggUIlF0kf2wXSKnlTK2HPV
BPYqMYRAi5ZeO6n1X4beQCN8FSCnnD+s52mCB1nRELRizA8xhnIdK0uD8tqGR43c
iRUEonO4k6ZppBtRgK5uABKENDAaDRQvylQZ9PAzunPbORpMEJJ9U9uaL7fUDtSz
wwjGdfUTeuKFdZN8Ac+OfR7pgHkixcvH9/ECq/VzrsclVCB5DMtP9hckr0LPn5u1
9mtgbkWMsFcj+FfkPo8KZgKoPA+NuTmhK6X17hUR5m7eNrPDt05uVH+MiBmmsY+s
p6siiJxoVX8l60PKy7apKloWP9Ku8w==
=Hx8e
-----END PGP SIGNATURE-----

--45vk6qaqgnzlimcx--


--===============3220810149163888491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3220810149163888491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============3220810149163888491==--

