Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B766C2FA254
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 Jan 2021 15:00:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l1V4c-0001BC-Mw; Mon, 18 Jan 2021 14:00:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wsa+renesas@sang-engineering.com>)
 id 1l03El-0001nC-8j
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Jan 2021 14:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d2lXb/N+Awz6le1TWtmOeOjpaOVKpL4iekl7ArC7X9M=; b=TGSNeZnugsgqJHcU4+2FH8KtjE
 cSk3U7vrco8r0K3kQyKCUhwC8DwcorCVczwTL7hAFNmjUX0xvdq3iPaTF2pPES8yHxK1tWEEdKGtb
 W/gSho4RWA4XpdcAVf/nklmWmh6lQ7WtVm+9QVtO6axy2HunzOrFmj4biYxxhwSovwnk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d2lXb/N+Awz6le1TWtmOeOjpaOVKpL4iekl7ArC7X9M=; b=BAW0XaOISn1mejIco0RFHee0rZ
 IOYLXMZYC7+wBR8Q3nF6sG1nRjDNXzlgHPpY1YeFaN04mFoMNzPK7aFivin6+1PF3mIS5+dap29nB
 iwoBHJ7FD51OsyaBfd/vqIpBM8ESPMFrM4/pVFR245kgkU/F55yiRcvi1oCic2Ua52Ds=;
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l03Ea-00G97J-L7
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Jan 2021 14:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=k1; bh=XYkIYw8kXYr0WVS9+2HEs7b4ExRD
 AHL7hAMoLwRnuhs=; b=jEynJZOCa0wXW6Sxo/cdadXQbmnkFb0zCbxSlq2NLVRp
 FzkLrNbJwFB7vC59c7YZuCwh+o3/amsZmNp05TKfzLoQecioj4Gk2I1AKYcZP3MH
 m4JSAw6v+6MIYVmCwKAwjQ9fzSbCpPsEHXqLlvk016S5fIltsCfEkZZK0vQGbu8=
Received: (qmail 3538568 invoked from network); 14 Jan 2021 15:04:04 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 14 Jan 2021 15:04:04 +0100
X-UD-Smtp-Session: l3s3148p1@3JJSuty4NNMgAwDPXwjsANskl+1DI0tg
Date: Thu, 14 Jan 2021 15:04:01 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20210114140401.GA973@kunai>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Corey Minyard <minyard@acm.org>, linux-i2c@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 Vijay Khemka <vijaykhemka@fb.com>,
 Asmaa Mnebhi <Asmaa@mellanox.com>
References: <20210112164130.47895-1-wsa+renesas@sang-engineering.com>
 <20210112164130.47895-4-wsa+renesas@sang-engineering.com>
 <20210114004822.GY3348@minyard.net>
MIME-Version: 1.0
In-Reply-To: <20210114004822.GY3348@minyard.net>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.117.254.33 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lkml.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [194.117.254.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1l03Ea-00G97J-L7
X-Mailman-Approved-At: Mon, 18 Jan 2021 14:00:01 +0000
Subject: Re: [Openipmi-developer] [PATCH RFC 3/3] ipmi: remove open coded
 version of SMBus block write
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
Cc: linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 openipmi-developer@lists.sourceforge.net, Vijay Khemka <vijaykhemka@fb.com>
Content-Type: multipart/mixed; boundary="===============7410890376273613612=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============7410890376273613612==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tThc/1wpZn/ma/RB"
Content-Disposition: inline


--tThc/1wpZn/ma/RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> I asked the original authors of this about the change, and apparently is
> results in a stack size warning.  Arnd Bergmann ask for it to be changed
> from what you are suggesting to what it currently is.  See:
>=20
> https://www.lkml.org/lkml/2019/6/19/440
>=20
> So apparently this change will cause compile warnings due to the size of
> struct i2c_client.

Wow, didn't know that my patch was actually a revert. I replaced now the
stack usage with kmemdup and will have a second thought about this
patch. Thanks for the heads up!


--tThc/1wpZn/ma/RB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmAAT0kACgkQFA3kzBSg
KbYBKA/+KGwiJWaUiU0+N17bTU/45Nmz2omMARKtrKFuDnxqUBSvbp0QVpMvtXvV
IP9YN0TVopn2OQ4TbUssjPKeF/bsRK9La45lvdDHOpeFKYdXQcTD2O+EWVKGneXR
Qp8dGNO0aMHcSi1Gmexd0OycizF9NbQ8vGSxXzvMgoLqjTe1RCFCNEEXgYQ+8sgW
3QMDPYVrDo53A5+d0au3PEvFdJtTI7yZuiG1M9+pn9j/awM26yIDU4+VCsQxoxic
6oh5DJVQUSzUL2VpEIlwbp32Jl7eDKTz7lrgSIObAY/IFz/siWlwFvaTxbQb9t6V
4hgZQ0ts4xX/OL64PlA706d6wHajmQ1rxDl0tSrhPMEyxVI20gIn/NxMkWeYVwv3
pI7FmNqqfHamZM6QTpODv4edzcNgYQvlXjVlFFe67mjmKVzTTsj8hRwVSM77WIct
FhozjJTQ1nL28UJwqYcbxd4NCUK7xmv/XbG/0LHdgEOE8J0QOwmj9S5CJoyRjz+A
hVv2elcCtEXFb5UxhZcwdD2lTExbzfJ2LmP54eTHR5iwLcS/HHLmEmMEDiQFbMBt
1iD5KZNjif+Ep2A3L2+o3AE/QzIMOfutwcZh0WcYw//WnHMbLzIc3pjjBt5l9+dl
u7Oqn7CsmdtU70IKAUjRFM/jwYMk3jaZwVKMU11ki6NyXZqQ59A=
=hJuM
-----END PGP SIGNATURE-----

--tThc/1wpZn/ma/RB--


--===============7410890376273613612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7410890376273613612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7410890376273613612==--

