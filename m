Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F15F46308C
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Nov 2021 11:03:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mrzyv-0001Ir-BF; Tue, 30 Nov 2021 10:03:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wsa@kernel.org>) id 1mrzys-0001If-RN
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Nov 2021 10:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ooLHBJaYZHUDrWwQjMoSBAanGNnRqgoEsQqaC/oerh4=; b=GHx9tPvhxid1Z0V+E0Se9/HqV6
 d8/4f2A7u/tpfqfica8cizQEo0T3zrBB3bmeKcxCZj6KZ7N02QS6nuV7FSUbDCfRXeeQK1NcaJH3s
 qlNqx7m3yYN3dhhEiFqGIrXNkxG84G0dSk5LXQmbLNfGKxQa1EANqfZzyIlbVG3Ve3yA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ooLHBJaYZHUDrWwQjMoSBAanGNnRqgoEsQqaC/oerh4=; b=a8176Ntx9+u+Na1/bQt6Gpd5R+
 njjtOAzE1Q/UsIonNaeOhGlBaMQ9danlLeXhXLP4ZSqIPeNRU2oNMpSgn0OOc/bP4sv9XVh5Bsas2
 fm6rO/NSX5kze2kJN8SQU74zMYW7dG3Xr4MxZVWYRi+2nPryxrcdJ/55Rh1J9Us/owzs=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrzyk-0004t0-RG
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Nov 2021 10:03:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 4476ECE1872;
 Tue, 30 Nov 2021 10:03:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B4CFC53FC7;
 Tue, 30 Nov 2021 10:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638266582;
 bh=/x0GGzKFVt0Dy7r4zIhS59DKhLpLSCOv6TfyEvgAn/E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aiu3DAfh8MthxvWAwRpRhPEHK7GTD+ROtg4Dm6dvj0giFP+oAyQUQur5meks8hFGP
 xuoAtkqMJU7VwQOPbx31xQwgPdJ0+dqObWX30klV/fxaYpUJd1uxc3uuXN6efBS6t8
 qUf7xqXNNwIEhUchAaROr2KK0DqSjkUkxLr6cn1oBAjecy1FeMXbdsY5XGuDJKWubv
 cMOhPNvXlMq/NAdBslnbglXQvN8JZYemEbx+uDKiEVgmQ57wjqZJK+6hGy4YJ/CNNc
 vT+Yp2G1ct1I++ZlivOFy/AFf8+7eG88Vfgh17aIeLPuf6VzqN/6CGaw+a2S2Ch+im
 4/FQP9oDaLUdg==
Date: Tue, 30 Nov 2021 11:02:59 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <YaX2021qO696FG1D@ninjato>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>
References: <20210714033833.11640-1-quan@os.amperecomputing.com>
 <20210714033833.11640-2-quan@os.amperecomputing.com>
 <YRTQP9sX0hkTJMTx@shikoro> <YaUoeFZn6zLNoGed@kunai>
 <b8ee3be7-c0f6-d1fd-1ba1-13066b329ee3@os.amperecomputing.com>
MIME-Version: 1.0
In-Reply-To: <b8ee3be7-c0f6-d1fd-1ba1-13066b329ee3@os.amperecomputing.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, > Thanks Wolfram to help bring this up, Sure thing! It
 would be sad to see this work bitrot. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrzyk-0004t0-RG
Subject: Re: [Openipmi-developer] [PATCH v5 1/3] i2c: aspeed: Add
 slave_enable() to toggle slave mode
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Rob Herring <robh+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1074652257154002634=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============1074652257154002634==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GLgFZVkdCWguog1a"
Content-Disposition: inline


--GLgFZVkdCWguog1a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

> Thanks Wolfram to help bring this up,

Sure thing! It would be sad to see this work bitrot.

> This driver was tested with Aspeed ast2500 and we have tried many way to
> avoid using slave_enable() to toggle slave mode but there is no progress.

I see. I also can't help you there. I have neither experience with nor
access to this HW.

> Our expectation is still to have this driver upstream'ed and I'm thinking
> about testing this driver on other HW and re-post the driver.

That sounds like a good plan.

> I have to admit that you are all right with the above comments. The fact =
is
> we still not be able to find any way to solve this differently. We don't =
own
> this HW and dont know what happen on this particular issue. The SCL clock
> stretching on this HW does not work as expected and the slave_enable() is
> the only solution for now. I hope if someone could help with the issue as
> well.

=46rom this distance, it looks like HW access and a logic analyzer might
be helpful in understanding the behaviour. Pity that you don't own the
HW.

Good luck nonetheless!

   Wolfram


--GLgFZVkdCWguog1a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmGl9tAACgkQFA3kzBSg
Kba4dA/+LQ+TgyjbUYOZOjpRRji7agnQYuqCWgQAJb0L8O9WQWEaoPwlAYP2DpHP
WdVIVnuLhRvwWKSI2yNAJRZURY4fbvrSAXFoeyY1DrxxLVj7GB4Ku9dKGUQEu8vk
SufpI4wpozucy32ZHAY8sDlquSILlCHEchyb8851rfbBWKBhQfKwNtO+vwEYqcy6
UqEp1wxYUV0WpXCDiGXb3m+qViyb84t54YzBSHzKvBFYyRi1S94BESgQ3W2XVRPA
BGwy+uhgF32jeBFs6wdv+zCpq+NBmAZg/czXt2naPF6HkNjG4ZTMgROmqoery36M
VEuhlE6us23UVcCDujArrFcH1+qhhTYSAOxZZ9qDSWYmsxxF0k/fHi55bszcCoyE
Ba3OFUe8TKMfYARMkjpRtN60aLtq/E7M+X1/774Q2BUvvS9UVUMs5jK7umQsuJ/3
7BZIFiXT1RKExUKxD5dHVyCXnO6AoF1t3aNZlqlgo9IDmWhQeyfqM+oHwBjqINYD
hmLL3djjgpe9DksOXDFu17ywiSB33+OvfWhO502tbDrv+QxIbsIR4G+wffxcUG+b
Ts8pgy7y+6cdNxLvrpUv+SjzATHxRmwWuTGNr8hlgxtckDybKKkWeEmQLdIlrVYg
Y24ut60ocJP+alOr+eP2bqQDyNqx+ARwSFBP6FKA+04ASyeNrro=
=qe3w
-----END PGP SIGNATURE-----

--GLgFZVkdCWguog1a--


--===============1074652257154002634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1074652257154002634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1074652257154002634==--

