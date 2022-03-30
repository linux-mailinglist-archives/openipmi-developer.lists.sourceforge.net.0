Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1244EBDAA
	for <lists+openipmi-developer@lfdr.de>; Wed, 30 Mar 2022 11:29:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZUVt-000751-JN; Wed, 30 Mar 2022 09:29:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wsa@kernel.org>) id 1nZUVs-00074v-LT
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 09:29:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hp4RlrHug0KaKVvDVGbTXqg7ImRDGfoP8dhsLxkB6M4=; b=G0x0UYvJ+QkSDXyhvOrmCjFucx
 LJakz2+30R19h2tTbxMcVVTQNITqWt1oIVH+qD3iSex3CQczyZh5p0o2F97KBH921huzHiZceG6Tv
 wzpdrG3O9sP0aL36IVRfqsJfGoHeZwnOurM+IurPjTaN2IddEQfqVlybWbuZnGECLoqk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hp4RlrHug0KaKVvDVGbTXqg7ImRDGfoP8dhsLxkB6M4=; b=lPNLoJ1alvwc1wvppHe8+cxDDQ
 GpPtJ8/T7i6hLG2LezlfPQWWG5YHVP9FONVWNBRbNyIS8QuASv4Ti7vilqugbV6kppJBEs7y5u/P7
 Imz/AeYODtLbpSzev7xp5rSuniMHq4FfIewpJV8IFOF3e1ccwUmdbs4kGJqPKgQDHsF4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZUdn-0003pW-He
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 09:29:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 42674B81BB9;
 Wed, 30 Mar 2022 09:29:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63DF3C340EE;
 Wed, 30 Mar 2022 09:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648632556;
 bh=Hp4RlrHug0KaKVvDVGbTXqg7ImRDGfoP8dhsLxkB6M4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eHN9Oa/qVk6GfP9pPC5136dbzWTGkgUCzxNCGUPttW4jmoujgyWAeFTzI1ZpM16kT
 DzfTygo+YvzQ4cTd/JcMPxR5FPt/Ip+m6MDBfRQ5MDrTDlJ1Yo9zrOzZjk2p0h2w+R
 oYrSHaBJXwAxFSgikqXdQhmfPoJ8r1ekzxHKb4qKTdOOPgilZSgutP1os57LFIcBri
 FseRO0GDiMi+Yao88CHI102+lHfF0Vs3PucVi6KDRPZ00l+/IAbmQAEqwRn+cHJaog
 brs1GXJC5SP2LB8NEv5VQ8JvS30gOlQbxLtMqh4ZKjLt6kmqNkIq8Eum4cPmLSCxDu
 fg4SYPRKPMnNQ==
Date: Wed, 30 Mar 2022 11:29:12 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Stephen Kitt <steve@sk2.org>
Message-ID: <YkQi6EIhknRJgv3i@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Stephen Kitt <steve@sk2.org>, Corey Minyard <minyard@acm.org>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20220324171159.544565-1-steve@sk2.org>
MIME-Version: 1.0
In-Reply-To: <20220324171159.544565-1-steve@sk2.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 24, 2022 at 06:11:59PM +0100, Stephen Kitt wrote:
 > The i2c probe functions here don't use the id information provided in >
 their second argument, so the single-parameter i2c probe functio [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nZUdn-0003pW-He
Subject: Re: [Openipmi-developer] [PATCH] ipmi: use simple i2c probe function
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: multipart/mixed; boundary="===============7344401013389215774=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============7344401013389215774==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y5Y8YpsuyBp6Sni+"
Content-Disposition: inline


--Y5Y8YpsuyBp6Sni+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 24, 2022 at 06:11:59PM +0100, Stephen Kitt wrote:
> The i2c probe functions here don't use the id information provided in
> their second argument, so the single-parameter i2c probe function
> ("probe_new") can be used instead.
>=20
> This avoids scanning the identifier tables during probes.
>=20
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Looks good and builds fine:

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--Y5Y8YpsuyBp6Sni+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmJEIugACgkQFA3kzBSg
KbYzPxAAnN1jaP+MzBCgNTKk4nwfK6Tfc/1LLV3SQv1oX178sDzuUrJCLJWe7TAV
Isu/tGqzNlJZdaSYlgEsyvQe+fymxhssUAnkjZPdLai40THDXihpxGBQ3vI4K+mX
B0Qq8nwkhdNF3qSyAT7o3fBghte8NbrzXPxs9SVD6zIpS+BOzyA3pfkPRkwS//iv
qAJ5UiFPuJB0RfleP62P7yQ9H7XkdyGtmDtnKSETmUQHor9ipcOJzH6bgOwL+TIK
TwyhQHFpDIbe5382QxiSMKBCPTUeDCtsEeRaKbKgwkD8rhrnFYkn71Ft0q0P3Vp2
EQkytOq0gtxAwRkAa6+QhiPCmABILQruuSi9TwhWWn41cgC0e+q/x8ZwnMFQ/93I
Y06hHmGBRxtsfgCwZ5jDGyy8pXGxk/3DMxNQW+rggAigHBgbRpl4MyPHABN1iAk6
3Bg/wp7EP5X3j+irYx+RNwhyP4l9RsZj+/SIajubYSU+uH+ZgxPHy834wIcWexUk
pgQKFL8UiJI8o3IN69uCexCPBgc4FAbhHixJI/nLKthios3aUhNYEoUKyqCWg7/D
/UESDwwBnma4ARZtAEuXbuIf1rZwy9T1t+0WBah5r9//MKcROOmU8yg+vHReKIZP
mYPdWdB/KYVg5CIVfTB75Zhpxwmtvq0oz9tNk+5m9PlBQDXP5vc=
=oWtJ
-----END PGP SIGNATURE-----

--Y5Y8YpsuyBp6Sni+--


--===============7344401013389215774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7344401013389215774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7344401013389215774==--

