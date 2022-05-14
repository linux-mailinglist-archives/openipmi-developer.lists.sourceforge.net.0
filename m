Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D15D527201
	for <lists+openipmi-developer@lfdr.de>; Sat, 14 May 2022 16:31:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1npso4-0002VV-0t; Sat, 14 May 2022 14:31:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wsa@kernel.org>) id 1npso2-0002VO-IS
 for openipmi-developer@lists.sourceforge.net; Sat, 14 May 2022 14:31:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KLDGJ+XUhBPXixy1Zg7PlcK9TVzkkUVTXCexNedRPdw=; b=fFiBqhqeU1T0ffpIxZqk1XjAhe
 DCAbbb6u8ULZlSGm5gudUvRTO7oTL9ryQwcy6GpmPUEZvf/0A6MoAnLWMe2wigfTCnrmMHDbFErLi
 B11kRM/zmni17e5bPkGdhSg5URJz3X2uol2xo3leGFuBQOsgrarQ9sLT/9j5VGcqoGQ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KLDGJ+XUhBPXixy1Zg7PlcK9TVzkkUVTXCexNedRPdw=; b=gZMoKBydfxIgX9M1cuZbI1u56N
 L/Ur6IJuU3nMaGLe75uEwEHN0FpVgoVRVM+7UhqA1rSr3xmDfY2a3Zi3tGeEGb7ZTWhN9Yu7VP8fz
 zTuRp7g/R8fjvpbOkh4cx+XId8loVFiHP/X6aI9AZ8iph1MNqe8C8oN/BLESySc8Hgjk=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1npso0-00CIrE-0G
 for openipmi-developer@lists.sourceforge.net; Sat, 14 May 2022 14:31:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A3338B808D0;
 Sat, 14 May 2022 14:31:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9849FC340EE;
 Sat, 14 May 2022 14:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652538692;
 bh=KLDGJ+XUhBPXixy1Zg7PlcK9TVzkkUVTXCexNedRPdw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sbzioa5hOPlt9gboLS22zB5omo907tZtRH6IInLQ1CrfnwkK2NfOpZOJ1gEhi6Fmz
 wJ889Mle+VD6igOIw2INvZpDAuHTEx9HKZdwk3ubcTh4BQLZq4OK+6Bv+FOUWtkAce
 OP2GafNWUcvJeVMModmVglfT7SsB1J/BwC2DR5vUxADkW4qDlDdXQseDx66NhqUybk
 sjRD7kqKoUxNbKI5Ll1jiuVmWjkX9OaAGWSdbfhlkOD5TYPKXSSJ6OzxdOP2VOjQvp
 q51Wk+roELj09l29LBs1MdWGOaWS9AHtfMKaEaj9GLEWTXV5dUnvfPmumqCI7qHjh4
 KpqruflA0jFgQ==
Date: Sat, 14 May 2022 16:31:28 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <Yn+9QBoPdH8fMm/m@shikoro>
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
References: <20220422040803.2524940-1-quan@os.amperecomputing.com>
 <20220422040803.2524940-4-quan@os.amperecomputing.com>
MIME-Version: 1.0
In-Reply-To: <20220422040803.2524940-4-quan@os.amperecomputing.com>
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 22, 2022 at 11:08:03AM +0700, Quan Nguyen wrote:
 > When processing I2C_SLAVE_WRITE_REQUESTED event, if slave returns > -EBUSY, 
 i2c controller should issue RxCmdLast command to assert NAK > [...] 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1npso0-00CIrE-0G
Subject: Re: [Openipmi-developer] [PATCH v7 3/3] i2c: aspeed: Assert NAK
 when slave is busy
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
Content-Type: multipart/mixed; boundary="===============6665738778612332316=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============6665738778612332316==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Jcb04ZVbWq3W2FY"
Content-Disposition: inline


--/Jcb04ZVbWq3W2FY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 22, 2022 at 11:08:03AM +0700, Quan Nguyen wrote:
> When processing I2C_SLAVE_WRITE_REQUESTED event, if slave returns
> -EBUSY, i2c controller should issue RxCmdLast command to assert NAK
> on the bus.

That should be I2C_SLAVE_WRITE_RECEIVED and it should be NAKed on all
errnos. Have you tested it?


--/Jcb04ZVbWq3W2FY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmJ/vT8ACgkQFA3kzBSg
KbYtRxAAnwySTv44cgVvd57fhPZJ4l4tcBSK97yFdMtZ2UNRFfyFclUiH9skwsuO
KOmHb1UatGOYAoMyxrPIkiOXkeIeL/vlIkgI0d4CjL0pWKNrNIqqSncRdnpsDO8u
4efBzlk9D2iNkA7y9OAuBxHwONT41qUX5fgOymGpF56b/X/4sHJjV20pcFewfb/0
3ykk9Y5QJDq+h5va+IXp0O2ED6u8nZxn+/RAy+JiJFX+ynFzf6MYMrsFEJ4uVB20
T8/0HKkL0I+TMOMwdu62Blkbo324e3mxvilD6D9buGzpclYxAQb5pw1TRKxkiBxu
hGrjg3J66VECV7Segwb9gO/JoV1u+jinAXD2xWmQoR29jfb4n9IW/WGy1/meEe43
GJ9tVo9DGxPUT+nwnpV14oZFQxmrRdZaHzwf4cFpnuVbZZspgSBMM2mjJzpHv3Qq
9pABXmjzY8LdzVQAAnCpk2062gS2r0hnVnCs7WdgAsAHqzZ/ioYBFyD7Qo5RChe5
ilimRgUz2brUuVf7K9VxR3JBCBMJ+C7O5Hc1Ii33pIw09mzI1395q6FbzfPz8oWJ
yXiOivGAf0xBdw8N3J2rQ6e/7lEBWH88KO/bttKAr1CJChuotX3enJH5gvDakGNb
7gPDMh7sDqcTC5a6vBSuhWF76dZlfgYFA6NYuCn2iNTL8LyBATs=
=xB1Q
-----END PGP SIGNATURE-----

--/Jcb04ZVbWq3W2FY--


--===============6665738778612332316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6665738778612332316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============6665738778612332316==--

