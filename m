Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 706443E9F88
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Aug 2021 09:40:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mE5Jr-00087J-3n; Thu, 12 Aug 2021 07:40:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <wsa@kernel.org>) id 1mE5Jp-00087C-Nh
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Aug 2021 07:40:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TwHD+GM4T00mGsh4pMuGbeqMxeUr2dbY5ZlfVo9OGT4=; b=Lkin2yXV4FUaDpbnrqXOor3jeB
 NOlA6jU7yizRfNbalKXJ6fsq1HJkdbtITTU5vyqqLMwN8cPW1Fu1iP+cVpEc4PpJ7RyhmA09s2d0g
 Z7IUPXh5XDLAPD1pVZb75nrKPrYe9jGSpLOBReLEskQtoeebATVl4GpEhwU8EaqBMWWk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TwHD+GM4T00mGsh4pMuGbeqMxeUr2dbY5ZlfVo9OGT4=; b=F3PPO3BOW2zglRFDKpT9OB8QAJ
 lSuiLWh5hh6MPupDlTm5Nd3cEHpTQmdimw3QCWrlxJ6gWezrZMXwwo2fqq+Xf12cqx/AdL73I/sQe
 vFAngvOnJSzJQj+WcLOi8yg+9A2STA0J1t9lK6sXypgouHTWy1D9EH6jo64XoTJKx+34=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mE5Jo-003q8R-Dn
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Aug 2021 07:40:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6E56360E78;
 Thu, 12 Aug 2021 07:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628753995;
 bh=irX84ooBnsiAdoz0s5VmTLIdLA7xUv8R2abt2xDslt4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cfS0KONckKE6S/yS1AUqL5MrF3jPpcJBiUIqHzeR7N07C2hRV9SfUfhixPcUuOKJf
 uL2V21XEwzGBvqfvdUMWTvXter/LPnHaUSv9PTPX4uabffL595ltUTRZ9JtP7gIOtj
 lEXzV5M9kwQzAzeTdpCEoQtsxCzBqKy6cEt8DPNZNqIFOgaC1US/vbWSvYDXy/vFk/
 O33qc4pB7hwzS3+U+dC7dPPuipH4fLongGgfpq1pnzCixNcwn8oub/4LRRBbs+4SQf
 Y8zAR2lxYZ8bwIcrszU9diSsnPH3ShW8nj7K3uleAqbPyJZzlQcdpa1T113/iVtotz
 R2EsLaCodzjIQ==
Date: Thu, 12 Aug 2021 09:39:43 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <YRTQP9sX0hkTJMTx@shikoro>
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
MIME-Version: 1.0
In-Reply-To: <20210714033833.11640-2-quan@os.amperecomputing.com>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mE5Jo-003q8R-Dn
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
Content-Type: multipart/mixed; boundary="===============4110011155160071646=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============4110011155160071646==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GwGWc7OEMm4Wptga"
Content-Disposition: inline


--GwGWc7OEMm4Wptga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

On Wed, Jul 14, 2021 at 10:38:31AM +0700, Quan Nguyen wrote:
> Slave needs time to prepare the response data before Master could
> enquiry via read transaction. However, there is no mechanism for
> i2c-aspeed Slave to notify Master that it needs more time to process
> and this make Master side to time out when trying to get the response.
>=20
> This commit introduces the slave_enable() callback in struct
> i2c_algorithm for Slave to temporary stop the Slave mode while working
> on the response and re-enable the Slave when response data ready.

Sorry that I couldn't chime in earlier, but NAK!

>  include/linux/i2c.h             |  2 ++

@Corey: Please do not change this file without my ACK. It is not a
trivial change but an API extenstion and that should really be acked by
the subsystem maintainer, in this case me. I was really surprised to see
this in linux-next already.

@all: Plus, I neither like the API (because it doesn't look generic to
me but mostly handling one issue needed here) nor do I fully understand
the use case. Normally, when a read is requested and the backend needs
time to deliver the data, the hardware should stretch the SCL clock
until some data register is finally written to. If it doesn't do it for
whatever reason, this is a quirky hardware in my book and needs handling
in the driver only. So, what is special with this HW? Can't we solve it
differently?

All the best,

   Wolfram


--GwGWc7OEMm4Wptga
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmEU0DsACgkQFA3kzBSg
KbY9lg//WuQBcK9qC8p75mupHENCaWqvbTpqZARXpEbhlHtaxT2SqoADaOlbbFX8
A2hu9n0efOSGZs1mEfLKL/y9BSBy0XLMLikoQgZw76ole8RWFjYJjJT1Oqqlk4p2
LpVhrGj+g54IuMLo+vD0R5V9GeK6iXfFMwCJP5pi/AZ5p71DmyHDq/O7yDHvR5Cq
m0e7SFKxyYt8oEUYFzqdi/EEx5ndMeIycipVFdNPRhAARJHixYprG4wmyqRBUhDM
Mm43mGSsalicQggJ6vhVBj1JloOAN7Of7p4TsElFEX7uRig8Pgv35ODmMxNGfv81
QCu1gV7gggqyt+V6dRl8TQoXb0bWcCZ3f7fodcRDdOWIHZhqq7IBURRoiVSGKZ7X
UVVwNTt1X55FBxKAkj1Coxu1JZnp5LPa6bIpA4o2NSd4hj/smutrDVGVsQRnNLEK
+sQ4ovJGK2YPjuOKxHyN+gZ4fO9Tj2nHlzm3AVWpalkd89qcclqDMRIaFdR9Wi3c
t1mtXjMjqKOj99+yYacMMSnI4EfqsuTD2NxEMEQCGjlU27rcfXagxeif7RJZeSWq
3tuvG7lGRNMKk59dC7/Rn9yl9vUUx5n1fiK4sNEaVvAK1lbXng8G4bxMgUW/EFN3
0kln133baUn8BIfoaHBRjGSQ+npxyGS84OsJfjg1bzxZViBDA74=
=05a4
-----END PGP SIGNATURE-----

--GwGWc7OEMm4Wptga--


--===============4110011155160071646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4110011155160071646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============4110011155160071646==--

