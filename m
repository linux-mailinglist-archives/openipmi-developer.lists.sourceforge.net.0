Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D454E0CD
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jun 2022 14:30:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1odf-0004JU-Ub; Thu, 16 Jun 2022 12:30:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wsa@kernel.org>) id 1o1odc-0004JO-TQ
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 12:30:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xPrMkd3cPQrEnsXa7HxJaHp/rZElsuAkgCwfxIhpx74=; b=d5jAwY6BmnhPpiw7fpQpAjO3cF
 1Ro5+gc29mB8eYEAtSIPtwKGEWCPe7nAqDXTrIMdE0Z8MNTXs1KgFP1ASeavxCuLiAoR7fTqjkpOp
 kqBGlprWFSVM0OZBB77gr1D4T14N6WvyoQZf4NU6Q6KzqPXDTAdMl8zO/3bms2GCD61s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xPrMkd3cPQrEnsXa7HxJaHp/rZElsuAkgCwfxIhpx74=; b=B4dex12Q+/dTqD176D5F7/UqWl
 gXOIjfjh1Th5gCmWPUBN4/JX2rCbogvwoYeK6TX41IwWdoWpIcj5VYR07mQnE+aF0adSXJE2KuYkH
 VV/mYPux/OuQFCyyhzlvq+sfrA+gtcAIP8KJCLn4Nvh70eJBrY3uR9FAZLYwLMlqroLU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1odb-00496t-Cl
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jun 2022 12:30:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3153B6167F;
 Thu, 16 Jun 2022 12:30:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC804C34114;
 Thu, 16 Jun 2022 12:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655382604;
 bh=7Znl3b92aroi5ubP2QPuFHtUeB1lmREHe3yTZnLMKio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KMYhbB4MGHuQC7Z7rXOsc2FXhm6jOgJDQRBz44Z8dcYeoscvlfWLHXSfXfOu68EQu
 BoSKD2hDsNQOQK6jicDyREOSlXJrg6n8CXz79Vc7dXdOtFAU2eRbyR5GbKzsyHxzNi
 t/Zlz3LGMch7uZaMNxdmHjingGmKLyS9M2YxTemFZBuK4E1zwzbxxiYUWHjcf4liR6
 3A2ifUFhYkleDyAuQaW685HxWajaIcJ1Vaie+QK/2f68+TECqshItMI7aXiwRlgZTd
 gl8Sm2UnRnBdg2Q3S5rUd0xAEC37GnKbcZdZRiFXXiRPepFplJ/duGh0Argx9ybpb5
 L3VcbWVU3R6rQ==
Date: Thu, 16 Jun 2022 14:29:57 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <YqsiRW78NAL9rX9S@shikoro>
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
 <Yn+9QBoPdH8fMm/m@shikoro>
 <fc422a06-c035-f6e5-231b-74ea6afe8467@os.amperecomputing.com>
 <YqpB8A2uBi+4epHM@shikoro>
 <bf001ece-e981-3a06-53fe-6a8b637d69fe@os.amperecomputing.com>
MIME-Version: 1.0
In-Reply-To: <bf001ece-e981-3a06-53fe-6a8b637d69fe@os.amperecomputing.com>
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Quan,
 > On the first occurrence of I2C_SLAVE_WRITE_REQUESTED, 
 the address is already > received with ACK. So if slave return -EBUSY, the
 NAK will occur on the next > Rx byte (on I2C_SLAVE_WRITE_RECEIVED eve [...]
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1odb-00496t-Cl
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
Content-Type: multipart/mixed; boundary="===============9219585127238154601=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============9219585127238154601==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XXmZpPF7iOB6E+2/"
Content-Disposition: inline


--XXmZpPF7iOB6E+2/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Quan,

> On the first occurrence of I2C_SLAVE_WRITE_REQUESTED, the address is alre=
ady
> received with ACK. So if slave return -EBUSY, the NAK will occur on the n=
ext
> Rx byte (on I2C_SLAVE_WRITE_RECEIVED event).

This is exactly why I2C_SLAVE_WRITE_RECEIVED allows for an error code.
=46rom the docs:

=3D=3D=3D

* I2C_SLAVE_WRITE_RECEIVED (mandatory)

  'val': bus driver delivers received byte

  'ret': 0 if the byte should be acked, some errno if the byte should be na=
cked

Another I2C master has sent a byte to us which needs to be set in 'val'. If=
 'ret'
is zero, the bus driver should ack this byte. If 'ret' is an errno, then th=
e byte
should be nacked.

=3D=3D=3D

'ret' is used to ACK/NACK the current byte in 'val'. That's exactly what
you need, or? Does the aspeed driver not support acking the current
byte?


--XXmZpPF7iOB6E+2/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmKrIkEACgkQFA3kzBSg
KbasSRAAnlwPKEfQRtRslfq95yxrYXbK6A2BATY1x3Thu50cFfbarxu+e7KMBRtt
GXFMJrp6wZaXio1xyqtc34OmNOFnZXpPUN6jClpYG04GMaJ4kZCC9F2gNmiTEE0y
RrL7ujffpI6IP4TGFP8SRuxHCJiNRN8KdGdGepah5J6r+y3AnMoaOFwmD9ha/ItQ
nhVcPtEPTF/JKbP0st9jr4EIvjLGEi3f+HWuzUwio/MaC/OFRjmzgw9Zwbu0qY1X
YoqHBh9SmbNwPcI/Enp54kjyWScxnWhtY3SEOY7bsdguBLGL4MWlsYGQOIeDxlen
Io/4k5V4Iw5S7oBAcN7YLin2knRiTgyY/IHGlA4G+UbDhH7VbCRVgJ+EE9HsaEHy
iBN/o3YtN6QmmM1DLYrZY3S4JlLFARhNNdCb6Im4+HGMWAP+3t0vBOJEYBH+/0or
v1Xv3/bzlHkniG0EtOKfVWLCmSLpFA97p2T98KPBFx5K3NTV42+G9hao529crYtD
JtLUDJYXKYxs5CdmX4tvpQzBET+GB/NbyzMiFOUJzkydVuOBOpMMRN80GTdbJTOc
9legjiqnXk797FKiB5zhApNH6UQ8HSmsja5Mr+Jhyi5lr52zZCj0bUJD+rP5Nz2c
SlNDdUkpNr6Pxkklt/bLg8R0L/Y75gQ2PWPWjOJSaK6JM3tdArg=
=B2+q
-----END PGP SIGNATURE-----

--XXmZpPF7iOB6E+2/--


--===============9219585127238154601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9219585127238154601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============9219585127238154601==--

