Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E776D5F5A59
	for <lists+openipmi-developer@lfdr.de>; Wed,  5 Oct 2022 21:06:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1og9ii-0001YK-Kc;
	Wed, 05 Oct 2022 19:06:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wsa@kernel.org>) id 1og9ih-0001YE-UX
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 19:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qZOYdCT1aCe/JZjmiQhjcaPpLA57KvbcqFM3TGd0KYo=; b=nWXcyDP0xkkN6P1MDNjfFyTFmZ
 5LAiDQshzteZO/XMPkdjmboOWFm4cS1kBsk94Pmh5kfApEhlvbAc6aGWQBBiUXikHoCDLsgkgyYI7
 SWgXTIwUuuIvF1rdVUVgZeO81jnxijRRZETADADIvSsooDazoi3X91NB/jZHg6a8589g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qZOYdCT1aCe/JZjmiQhjcaPpLA57KvbcqFM3TGd0KYo=; b=CJJRSzhkjv2n4YvgJJc+AkunL8
 JStflg8EW+rxve6r+vhJlbX37O575YVy4PPqs7ipm/b0eO+RGYpEU+9CuUXaO8VX3EC1+kaT7SN1H
 LXSP2WfkI2JQSiDQYDRBG3iexgoxjgCEj2rhxDJTCFquGs1dbKGbR4cSuOHtWLr4Xetc=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1og9ih-0003Tp-4F for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Oct 2022 19:06:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E804CB81DE9;
 Wed,  5 Oct 2022 19:06:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E786DC433D6;
 Wed,  5 Oct 2022 19:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664996766;
 bh=qZOYdCT1aCe/JZjmiQhjcaPpLA57KvbcqFM3TGd0KYo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qg03rLPpbYIdisynjImLpdYkJO/sEMunrsh0dpMnd0msNKM4q0kwSn9oYsEkYyuoX
 RsSS3sZyqYQJRRR1IrpPXdANdbfCfehXhdmGhrYuQO3LIkr5VNd8jT0d+EjGP+P2Ed
 GFpOL3ADwr16c/4Ad0PTCYiNsIu6SuZa5PNluanuFkHkI2ZZAhaLL07kMIDcjNhx33
 VTm/sxf0RICxP5JnMhRPjFNiYtbYWgVVykluIoecv2Dh7WEsFrF37e121miiJId13X
 QqPVEx5p/xT0sRv3o+iMP4DlRHIUgYvEatArxXRRPQ1TqCcTXJxfHqWsD3NHrxTj20
 b5B48nBs9QVvQ==
Date: Wed, 5 Oct 2022 21:06:01 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <Yz3VmWCqdolKg5sm@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Brendan Higgins <brendan.higgins@linux.dev>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 thang@os.amperecomputing.com
References: <20221004093106.1653317-1-quan@os.amperecomputing.com>
 <20221004093106.1653317-4-quan@os.amperecomputing.com>
MIME-Version: 1.0
In-Reply-To: <20221004093106.1653317-4-quan@os.amperecomputing.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 04, 2022 at 04:31:06PM +0700, Quan Nguyen wrote:
 > On I2C_SLAVE_WRITE_REQUESTED event, Slave already ACK'ed on the address
 > phase. But as the backend driver is busy and unable to process [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1og9ih-0003Tp-4F
Subject: Re: [Openipmi-developer] [PATCH v10 3/3] i2c: aspeed: Assert NAK
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
Cc: devicetree@vger.kernel.org, thang@os.amperecomputing.com,
 linux-aspeed@lists.ozlabs.org, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>,
 Brendan Higgins <brendan.higgins@linux.dev>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4233105076785140244=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============4233105076785140244==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SJMSzPuygRaHqOAa"
Content-Disposition: inline


--SJMSzPuygRaHqOAa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 04, 2022 at 04:31:06PM +0700, Quan Nguyen wrote:
> On I2C_SLAVE_WRITE_REQUESTED event, Slave already ACK'ed on the address
> phase. But as the backend driver is busy and unable to process any
> request from Master, issue RxCmdLast for Slave to auto send NACK on
> next incoming byte.
>=20
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>

Applied to for-current, thanks!


--SJMSzPuygRaHqOAa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmM91ZkACgkQFA3kzBSg
KbYyDQ/9HuJtmUfec7mVOzYN9yOLKYOWOR5hIQd4A3+vP+K+7P1jObIubesRu2Xn
4OTZ9aEZMgumnmIWX7dGG9seW67U8FDCXjmRTVXZK1SLasgoL+0FRJbzfvLIqLUY
/dThu2R6w4xXOScan+snd98o5xj2gJIiRRUdNH0nNP7CioU5aWdxUykvqjoKYdzK
EVP2nDsPTfLp36vBt2+edcZpJFV2wXtPGhzV7hcypWURm7F7+Phao9vsWphXdPt2
aLZTFMNrjhkzE/M4PK4HVR11630Xan6D318KoJ3QcSWv0EAax+uxChijf03OYctM
sz2oXSExvYUGpdgCiErUX3a/3to4HgJZSq6Gqjy4IuScNnpWV55teyW/rWs4gTK9
yJF3O4Tn2Jq6hBN4WeDs4R79mR3rrAyVSddLzh+9DRQyISYBvVkqyJ5JQ6au+Ps9
HJsIKXC8G/yq7dd9vop+fBSR6743sLE0Sge67fhxrv4h8tr4xZnXvgr5eRgwMJZW
Jc/RDTPQGNZVrmiJYvKnUclNRLEbgnKrtryINWGt5nrRLMLu3gVjJGZxhESQqt8b
C5uVsf1wyyw+K02minkivCVbD0un6hafek5bpILCzjZzLjh1HYoOGY0x6Xcog0uX
tG4tTm/fOBqpHkJy4WbMBjuT5belbMyNwVrZNkNYjMK1WVRjZwc=
=U+bJ
-----END PGP SIGNATURE-----

--SJMSzPuygRaHqOAa--


--===============4233105076785140244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4233105076785140244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============4233105076785140244==--

