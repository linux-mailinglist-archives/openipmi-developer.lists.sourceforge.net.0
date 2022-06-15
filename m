Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 781DD54D29E
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jun 2022 22:33:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1ZhL-0005u8-0L; Wed, 15 Jun 2022 20:33:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wsa@kernel.org>) id 1o1ZhK-0005u2-GR
 for openipmi-developer@lists.sourceforge.net; Wed, 15 Jun 2022 20:33:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lBqHeIh7QN6W7gjFQBn65/oTIFXlRPRhYhbYeNGnRZo=; b=YpkhNbFhWqo00gBL3zGXney6Xk
 fQpiDzVebdMC7CW9oGf274GzU019rRkH2Uyh4URPxqlotzFsPJYzKpXgxGJmRXQQBhSQpn6KgXj5g
 bvw/JZCJ5jXnqNYIalDAiHLGBQ9Foy+8yZbSQ9mSdhS74z219J33jFLWys/fzCnDoCSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lBqHeIh7QN6W7gjFQBn65/oTIFXlRPRhYhbYeNGnRZo=; b=HyTd3yVL8IojTVyAQxt1XXKQw1
 QQ/Zy6RoJhxyikLlq3MCSHrFGhiaybmMSZ39lX6ONSYMA31s0QlunR+vIZj5G84BxxH4PxAfCcXgS
 ZdiwVfOp285phrUvaLYb3xiZw5gdJkhrJgXkcnIt0PCAMlI2El/wBK7L+OT+1ksS60+g=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1ZhK-0038vv-HP
 for openipmi-developer@lists.sourceforge.net; Wed, 15 Jun 2022 20:33:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 46FF8616BE;
 Wed, 15 Jun 2022 20:32:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8E81C3411A;
 Wed, 15 Jun 2022 20:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655325175;
 bh=xweyU4/oqSOwHkI/hoomOugSz3ECvQLAuoo5JQYmEfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TaEB3qqtKQ7sFL15nSzdXBJU4cC65s35LLseLFBizPWZY6R0fkh1UNU118TVUYK1o
 +RgR2Kb7+JUTTRc6tXQLDV5Yr04FvNjjexnZN+hnW90VBWcBBSmrbQ/DXQNlArTmrO
 88eeDrMzneYDF4mE5yZwMpYmHLHbGZJzvBkYY1WhFONh3L/S7j8pbx+i3oaleJ/16y
 srDQGXS6Uj5dnKWP+vtWmZ2wEE+3fMfy6S0WYzEs60VGbb09bKpzasdEvB9av9Kcsp
 1a9AufleimVC0Yf7ajnDauhN/ir1rOjEJDExZ/LCrCN22uG968pCcUBS8atRmknu0U
 syD3CL+ZAGM4Q==
Date: Wed, 15 Jun 2022 22:32:48 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <YqpB8A2uBi+4epHM@shikoro>
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
MIME-Version: 1.0
In-Reply-To: <fc422a06-c035-f6e5-231b-74ea6afe8467@os.amperecomputing.com>
X-Spam-Score: -6.4 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Quan, > When tested with ast2500,
 it is observed that there's
 always a > I2C_SLAVE_WRITE_REQUESTED comes first then other
 I2C_SLAVE_WRITE_RECEIVED's
 > follow for all transactions. Yes, that's the design of the interface :)
 Content analysis details:   (-6.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o1ZhK-0038vv-HP
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
Content-Type: multipart/mixed; boundary="===============0422561048624107485=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============0422561048624107485==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ic1hM2GHeE5Hfcvc"
Content-Disposition: inline


--ic1hM2GHeE5Hfcvc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Quan,

> When tested with ast2500, it is observed that there's always a
> I2C_SLAVE_WRITE_REQUESTED comes first then other I2C_SLAVE_WRITE_RECEIVED=
's
> follow for all transactions.

Yes, that's the design of the interface :)

> In case slave is busy, the NAK will be asserted on the first occurrence of
> I2C_SLAVE_WRITE_REQUESTED make host to stop the current transaction (host
> later will retry with other transaction) until slave ready.
>=20
> This behavior is expected as we want host to drop all transactions while
> slave is busy on working on the response. That is why we choose to assert
> NAK on the first I2C_SLAVE_WRITE_REQUESTED of the transaction instead of
> I2C_SLAVE_WRITE_RECEIVED.

=46rom Documentation/i2c/slave-interface.rst:

=3D=3D=3D

About ACK/NACK
--------------

It is good behaviour to always ACK the address phase, so the master knows i=
f a
device is basically present or if it mysteriously disappeared. Using NACK to
state being busy is troublesome. SMBus demands to always ACK the address ph=
ase,
while the I2C specification is more loose on that. Most I2C controllers also
automatically ACK when detecting their slave addresses, so there is no opti=
on
to NACK them. For those reasons, this API does not support NACK in the addr=
ess
phase.

=3D=3D=3D

So, the proper design is to NACK on the first received byte. All EEPROMs
do it this way when they are busy because of erasing a page.

All the best,

   Wolfram


--ic1hM2GHeE5Hfcvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmKqQewACgkQFA3kzBSg
KbaRvBAAhGHBikwxwBVjvxYQ3WkD53anNZCb8H7DLS+EBHUqZUhE3sB1E0xjhLw9
/D56GGMOC0z26eO0epBcCjharkSDE5kolGFghi/5ymiKkHoS/wGCHuTr6nJVt0xO
CXf1YVkIb4I3bHHxgiAPrOc+N6jw5e+Ujao7nOXjpaTuJ84RNT4hHPNKUcJIqZNR
ciM/xRqC0CslNEW4RH2fapeCw97/HksITYb/1Ix3DabxRnLj6obVmAtuokUr7Tmd
Aro8RsCKMzkJmknyhX4A/cbVuRKXGiWLthW3srmUKPCgu9dndoBsIoTty+E3vJXY
QZO0uNLBRydxJOBXT/+skne0wB3xo4RNuAzYXov/RMVkTGO2r3n3Q99wjSyHv7Zh
BWIy/QnYni2FguU4NtjgBXurWfvqguvLr37+5QMcruMLFsRKkeifb1zfOlVV9RVU
whpoeJrrFrxE3wI/L4Ol3eBokDneI4Ldo4dUvFv+CQ2GNQgj1qLfZcUnqE/SKNKj
JhcvsMNszDV7QXk8jIbzdkWbL5zxijQ4y+q+vOou/b3BZTVJ+d+wXXH72LeIxxPY
JqQD9F2vzrULR55rbXw+ZBU0jESxcBrx3aC54ksz1vIPM7gsuOldNICk00eBI8tD
HmatAjq9W/yS0VpX7XlTsBwk8w8MXJc2/VXzlJaO4M8yLddwLW0=
=SfIi
-----END PGP SIGNATURE-----

--ic1hM2GHeE5Hfcvc--


--===============0422561048624107485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0422561048624107485==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============0422561048624107485==--

