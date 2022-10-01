Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C155F207C
	for <lists+openipmi-developer@lfdr.de>; Sun,  2 Oct 2022 00:55:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oelNv-0005ww-9M;
	Sat, 01 Oct 2022 22:55:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wsa@kernel.org>) id 1oelNu-0005wm-Dh
 for openipmi-developer@lists.sourceforge.net;
 Sat, 01 Oct 2022 22:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5D0tlCaaTgTNPt7pyH9zht3sE9mn4czFawIp4pc4mcU=; b=c/csE4UobxTRrS6a8Ao9VL7yOe
 dE9BObtsBND9hNNDxxnn3TOIOyxX9CmFttOcg8pEzv93SOG5HUaLJSvvayVPM1ubNu1Y207z1rHwo
 mxGxGC3wHvRfFetNuCd9+dMoWlSvylr6W3dnEtgOIAGRSjapqF86nltE8bNg0jAU1Oq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5D0tlCaaTgTNPt7pyH9zht3sE9mn4czFawIp4pc4mcU=; b=kh36nrQJIwu3ROcHh/d9oDyh/i
 8xWJUR+vf3HrRSr+ZrfPtlO7AM/J+oPjsPs7TAue3HIKKXDEJKw18ruUSb8StwllCBi5h7beG2bJN
 N0biM7ckCZx9ds1L2H+VDWZ38nJPr4AMUNi/0zatiKY0wGtdGmbkYbBfZB3BmzwpxSuo=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oelO6-0003fj-41 for openipmi-developer@lists.sourceforge.net;
 Sat, 01 Oct 2022 22:55:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BEB5EB80C01;
 Sat,  1 Oct 2022 22:55:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D07AEC433D6;
 Sat,  1 Oct 2022 22:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1664664906;
 bh=XXrUTnO/jGDvrU3xZMl4EIcYRbQHHkKeA6gIDbBw3ts=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YT/Ih2HpM9PZUXELCietG1opxKRPTU/fq3SfDqEG7oyuI+ujvcG64lrsq4Vjpkcjf
 sAz4X5c7Wn8u6VJFm5dqoqXdbLNIyWfrXTF4Mf05DHPZej4MWnEL/tIVrWDTz/K8zk
 lCbV4kqwGgL8mfpED1TqVKUNEDNfk9uv89KNpH8BKG1YFKBFqL1IiWKOA/I7y2tD/m
 gmCONOOBIy2RmoEJ9GRNdski5/c1Bc71NR/LGe53OPHVyCX11duNZ/OJmJqrpvu6cC
 JY6lgmXKu+MsxF0JbMf9XmeJAPySRFVlQaFfXrhNRTgFU5SQjGI1PTjAMJlspTH6xx
 jofzzx5igcGug==
Date: Sun, 2 Oct 2022 00:55:02 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <YzjFRrCRZBAaSRBL@shikoro>
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
References: <20220929080326.752907-1-quan@os.amperecomputing.com>
 <20220929080326.752907-4-quan@os.amperecomputing.com>
MIME-Version: 1.0
In-Reply-To: <20220929080326.752907-4-quan@os.amperecomputing.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > + if (ret == -EBUSY) Since we documented this: "+ 'ret':
 0 if the backend is ready, otherwise some errno" 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oelO6-0003fj-41
Subject: Re: [Openipmi-developer] [PATCH v9 3/3] i2c: aspeed: Assert NAK
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
Content-Type: multipart/mixed; boundary="===============1848685184115613995=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============1848685184115613995==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IxEzN7Ip5LYkgIP5"
Content-Disposition: inline


--IxEzN7Ip5LYkgIP5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> +		if (ret == -EBUSY)

Since we documented this:

"+  'ret': 0 if the backend is ready, otherwise some errno"

the code above should be '(ret < 0)'


--IxEzN7Ip5LYkgIP5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmM4xUYACgkQFA3kzBSg
KbZdkhAAqUK8dp016LtVTkYRjmSJrym+/WMeAvZxlaB6ZEcEyi3XNOWPIt3v02lQ
8zs6VMgNd4FwbNmdaRxmsc8kNZEYmUcY5oPhkugt/6QcEKYxcjaqEdn26Rd26Ro8
C01y93rYoDlPfBvAxxnsdnUtmyeKEz653skr5v7W3HGnUyEhq3CpQfBFVEmhb5dQ
HpCYACbDMG6Sq3g5PxJdRxAbFfogiWDBfuay86w7D1UYl2h8qG8c3IR/pn35xDPO
n33QwX3XoNCRceYOulMJ49ZSBI+Ikb4MgX00SKxhuUCdCpC8OGVHS7fcmUMnyIh8
9W2RDloFDGZIbnPtvB7XmpC3Pmzf3atkGvZxHNpw6KFJdxvBONObgkE7+lPLzO6h
I2I+vbdkFQeJ8b9xyncnaDH9Kil10BE/DPBRQd9H8Okh+YnzitNjcXNOCehZFU4z
aRaYJQh3VY5d+/vUqQU0xj35TF7IndzgiMM2HX/XxL08QqNmqpbb24ush/U/Sa26
WiPaBbDF8O1wCLEMqUjYpbRecP8vJNAWF3uzRUrBjXWVYgMerL2o9Q5MHChi0Ng1
/RBW/2VZPSJXSQrcGv9EBXKTbjEmkrkFRznjLj/IxPye53k4TnzOqqhyfhridGBC
VXc1UXhtbxn/ycsVNy3FU2JXf6np6S2f4Xso8uFyTUsshK5vtDI=
=e9CN
-----END PGP SIGNATURE-----

--IxEzN7Ip5LYkgIP5--


--===============1848685184115613995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1848685184115613995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============1848685184115613995==--

