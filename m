Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9075F6AAC
	for <lists+openipmi-developer@lfdr.de>; Thu,  6 Oct 2022 17:33:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogSsF-0006nP-4X;
	Thu, 06 Oct 2022 15:33:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wsa@kernel.org>) id 1ogSsD-0006nJ-N0
 for openipmi-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 15:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b5fz2Faps9g6VlZUHemqmOjeGlkHE/XuO+Ju+7K214A=; b=B7E2qDfhUndhFv69SZ+iWNoqIU
 jJmzuCDh2HGOvGzPpcNIsoUBub6VYh1dSXUglOnUxidPZAhgKLTbWXpnyqKQYr5heV3RKmn7rBvB4
 2r3AJsWooyUzE1K3Sy4froPQ3+K8dTZszGByYymad/bdmQ3d+Qab1SJnzKG08nBDlf/w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b5fz2Faps9g6VlZUHemqmOjeGlkHE/XuO+Ju+7K214A=; b=Rdj8lsu6yqAW3sqLEaMWIzWGzZ
 WxJNjIHLEe45Sjs8QGe844SXPIQZEU0I3e5V4rUZQD0cLLsogQkolBL53i0rCME6uDmXz8TDY0q/V
 ihRhwDlrP9eny+722z/IVI4gRErqqeDEyaXQBDorNhLpyVm3e37PIZVoCY48m755p48A=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ogSsC-00Eq3K-Ve for openipmi-developer@lists.sourceforge.net;
 Thu, 06 Oct 2022 15:33:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9AF18B82067;
 Thu,  6 Oct 2022 15:33:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2208C433D7;
 Thu,  6 Oct 2022 15:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1665070393;
 bh=b5fz2Faps9g6VlZUHemqmOjeGlkHE/XuO+Ju+7K214A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dqylxaX+JXllTIj8yLEPkVZBqPOA8RVrx3AnU9xEinCebuNlOnMyggpT2Y80GCOKD
 jn8iiFVa+0tWfLJIarZ3gsc9/5t0tmhNFVpZDSmYTxEm3+VkTnm0l0SUpgjsEB63l2
 CggpubewSFAbm+eamVnZO4CyMN9gRy+UD59XmmVr4BYO4qxyiS9KmAjYRaSobvpfXz
 DnSX30IFKdyjSNgEeCssZktyaIUkNxCpFB7k0Lc+SXVgkoMAgW8m2BDe1NFSnP52GJ
 X4HbSOH8Yj7yBUvZLDbotfkDUcHGpOI7PFo5Ulpg6CEjrH0C7sa5mARjW+j67nRLWp
 XjHxO0UAdVaJw==
Date: Thu, 6 Oct 2022 17:33:10 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <Yz71NjbmLZeRpmM2@shikoro>
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
 <Yz3VmWCqdolKg5sm@shikoro>
 <c8c774c5-b274-a6f9-303b-e84c50800b5c@os.amperecomputing.com>
MIME-Version: 1.0
In-Reply-To: <c8c774c5-b274-a6f9-303b-e84c50800b5c@os.amperecomputing.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > Thank you for your patience with me through many versions.
 You are welcome. In the end, I think the update of the target interface is
 an improvement, in deed. So, thank you for that! 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ogSsC-00Eq3K-Ve
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
Content-Type: multipart/mixed; boundary="===============8235958638114840442=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8235958638114840442==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+SCqpgtCPKo+UDYP"
Content-Disposition: inline


--+SCqpgtCPKo+UDYP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Thank you for your patience with me through many versions.

You are welcome. In the end, I think the update of the target interface
is an improvement, in deed. So, thank you for that!


--+SCqpgtCPKo+UDYP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmM+9TYACgkQFA3kzBSg
KbYACw/9E3V2Y6ViQwRZW439rY0GLtJGPos89UPLB3b8h2XUl/8KWQBrU4MDD46d
6VEho+Ae8+5OHpqczwMiXkgc+Z/Yc0OtfOUXCqEr339KH09Z2k930RdTb20dZf6t
UZbq+wAaD9xn4nXBMEBM3YoBDbncbhTEamK0mKkh5lHmD2fZqXXRqpbBtwSZXN5s
Y+Oshsl9cuGEkqde5gVhRR1DWJrOesWHmg51VhBvq0E74sSlWc3D4ByKYJ2K95qw
w0gd48NMY5vtSvM8e2X2SqA/1rwYYi91bn5xFCM0hSXWmAU+hKhEW6O0rQrbZPu1
9mwoOHEvTanaLpYiWCsnevEgEsLifpiKMlojSmQZIQLeFLTg69K36Gdyb57mNzD1
4+Mb5QP4yjHkjA9uwr03qJv08xDKmQtnQhO/dkjz0iAE3uxdpGYb3XB0chL+YI7p
rJV9CIETC+HFpzrKiOu9XGRNnLzu7dJ6Jx489UKzS+d2cofL+gZMTsAkeu1WXBEj
UY8cqIm1rxaOJgy8SBotNJssqRS7TGL/TYtXFgFtQIJ2pISQHB1Yc9FdZSRdXHLF
5wRpQZlTnIS9/wL/K29aAvePtLJHbDhUgaDIqU0JgNEdA1wA9wUj0RK0FrQyHBP0
W96sDicwz7oVBGNZuX1lQHtfYGZqdBPIllgG8XaGlwNlwgRCiyg=
=WHBN
-----END PGP SIGNATURE-----

--+SCqpgtCPKo+UDYP--


--===============8235958638114840442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8235958638114840442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8235958638114840442==--

