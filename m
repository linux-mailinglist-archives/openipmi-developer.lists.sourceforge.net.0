Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C776E6AC848
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Mar 2023 17:38:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pZDr5-0002YW-TK;
	Mon, 06 Mar 2023 16:38:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jgross@suse.com>) id 1pZ5vy-0000ar-5J
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Mar 2023 08:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eqsn968J0cCVrLZWYWjZfL9JRrTtcZJUf2GKxlH4pcQ=; b=e0PlZ0CAdXTcgPKqaTpO4/lVi5
 onlAN0jqRZWK/aFPL4dYF6Dv0S3P4KHNKyi6ldlng4DCN1H2RExcz0wszVlL7GyYQKMS/CW/4g7kK
 Drav9BJ1/JVk1MRQ2/0Kdyd52PEMqcPvcGUs16PPWWpuVNhuMTBtkFjhacT399V8+ED4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eqsn968J0cCVrLZWYWjZfL9JRrTtcZJUf2GKxlH4pcQ=; b=UA6t1QmM6Efp7Cx+vF+Dfe5KLr
 flEZoq/24CG5zSD8y/zwf7/ElPi7Dt+DV2G/6yxiYTfcPlrHe6BZqUvtNPAygf46eIEyKsroCRRVw
 lZw7a0IfSftqO+NtrQ/VP82yEysWruUxlP6ROCX5VNUkrgHmMZpi4LMRQwjdb+HA1mQ4=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pZ5vv-0002O2-K6 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Mar 2023 08:11:01 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 5DEEA22370;
 Mon,  6 Mar 2023 08:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1678090251; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eqsn968J0cCVrLZWYWjZfL9JRrTtcZJUf2GKxlH4pcQ=;
 b=PdpeJ3+WlkwHUCyDxfOU4oUlyi45jTM8bCwD1xRH7VogqLYwkFHHuTujXj7Nn5ducCF3U4
 MsX7DKbaXKWZmNwGt21FRnTv0JidlNvKGRIBDBgF70SokY3yIqdPIerI03XxfSaVse6b6N
 cxhKcHEIGqChRAkLHqUaRvN+hEuBXaI=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7789E13A66;
 Mon,  6 Mar 2023 08:10:50 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id P9ajGwqgBWQDPQAAMHmgww
 (envelope-from <jgross@suse.com>); Mon, 06 Mar 2023 08:10:50 +0000
Message-ID: <453a66f5-5443-01a5-7161-8c888eea1957@suse.com>
Date: Mon, 6 Mar 2023 09:10:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Luis Chamberlain <mcgrof@kernel.org>, ebiederm@xmission.com,
 keescook@chromium.org, yzaikin@google.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, minyard@acm.org, kys@microsoft.com,
 haiyangz@microsoft.com, wei.liu@kernel.org, decui@microsoft.com,
 song@kernel.org, robinmholt@gmail.com, steve.wahl@hpe.com,
 mike.travis@hpe.com, arnd@arndb.de, gregkh@linuxfoundation.org,
 jirislaby@kernel.org, sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
References: <20230302204612.782387-1-mcgrof@kernel.org>
 <20230302204612.782387-8-mcgrof@kernel.org>
In-Reply-To: <20230302204612.782387-8-mcgrof@kernel.org>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 02.03.23 21:46,
 Luis Chamberlain wrote: > register_sysctl_table()
 is a deprecated compatibility wrapper. > register_sysctl_init() can do the
 directory creation for you so just > use that. > > Signe [...] 
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pZ5vv-0002O2-K6
X-Mailman-Approved-At: Mon, 06 Mar 2023 16:38:30 +0000
Subject: Re: [Openipmi-developer] [PATCH 7/7] xen: simplify sysctl
 registration for balloon
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
From: Juergen Gross via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Juergen Gross <jgross@suse.com>
Cc: j.granados@samsung.com, linux-hyperv@vger.kernel.org,
 linux-scsi@vger.kernel.org, sujiaxun@uniontech.com, tangmeng@uniontech.com,
 apparmor@lists.ubuntu.com, patches@lists.linux.dev, willy@infradead.org,
 linux-kernel@vger.kernel.org, linux-raid@vger.kernel.org,
 zhangpeng362@huawei.com, linux-fsdevel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, nixiaoming@huawei.com
Content-Type: multipart/mixed; boundary="===============5538919765360499740=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5538919765360499740==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cK08nbi0V3641a7DHkBg1e2W"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cK08nbi0V3641a7DHkBg1e2W
Content-Type: multipart/mixed; boundary="------------DF6mDcbQeAPh0wqxZibFzCd0";
 protected-headers="v1"
From: Juergen Gross <jgross@suse.com>
To: Luis Chamberlain <mcgrof@kernel.org>, ebiederm@xmission.com,
 keescook@chromium.org, yzaikin@google.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, minyard@acm.org, kys@microsoft.com,
 haiyangz@microsoft.com, wei.liu@kernel.org, decui@microsoft.com,
 song@kernel.org, robinmholt@gmail.com, steve.wahl@hpe.com,
 mike.travis@hpe.com, arnd@arndb.de, gregkh@linuxfoundation.org,
 jirislaby@kernel.org, sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
Cc: j.granados@samsung.com, zhangpeng362@huawei.com, tangmeng@uniontech.com,
 willy@infradead.org, nixiaoming@huawei.com, sujiaxun@uniontech.com,
 patches@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 apparmor@lists.ubuntu.com, linux-raid@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-hyperv@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Message-ID: <453a66f5-5443-01a5-7161-8c888eea1957@suse.com>
Subject: Re: [PATCH 7/7] xen: simplify sysctl registration for balloon
References: <20230302204612.782387-1-mcgrof@kernel.org>
 <20230302204612.782387-8-mcgrof@kernel.org>
In-Reply-To: <20230302204612.782387-8-mcgrof@kernel.org>

--------------DF6mDcbQeAPh0wqxZibFzCd0
Content-Type: multipart/mixed; boundary="------------MsaV4p6uFuvvpR0Tnh9bv8Z8"

--------------MsaV4p6uFuvvpR0Tnh9bv8Z8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMDIuMDMuMjMgMjE6NDYsIEx1aXMgQ2hhbWJlcmxhaW4gd3JvdGU6DQo+IHJlZ2lzdGVy
X3N5c2N0bF90YWJsZSgpIGlzIGEgZGVwcmVjYXRlZCBjb21wYXRpYmlsaXR5IHdyYXBwZXIu
DQo+IHJlZ2lzdGVyX3N5c2N0bF9pbml0KCkgY2FuIGRvIHRoZSBkaXJlY3RvcnkgY3JlYXRp
b24gZm9yIHlvdSBzbyBqdXN0DQo+IHVzZSB0aGF0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
THVpcyBDaGFtYmVybGFpbiA8bWNncm9mQGtlcm5lbC5vcmc+DQoNClJldmlld2VkLWJ5OiBK
dWVyZ2VuIEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+DQoNCg0KSnVlcmdlbg0KDQo=
--------------MsaV4p6uFuvvpR0Tnh9bv8Z8
Content-Type: application/pgp-keys; name="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Disposition: attachment; filename="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
jR/i1DG86lem3iBDXzXsZDn8R38=3D
=3D2wuH
-----END PGP PUBLIC KEY BLOCK-----

--------------MsaV4p6uFuvvpR0Tnh9bv8Z8--

--------------DF6mDcbQeAPh0wqxZibFzCd0--

--------------cK08nbi0V3641a7DHkBg1e2W
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmQFoAoFAwAAAAAACgkQsN6d1ii/Ey/O
cQf/UgUlm7Jf2BZLvJhuDsq9O+IW6Npn1h2rQdo60ZYboq1o5TQYMejnC1JeUpLLrC4U2R6d5miv
5qdjYRtM6HEuoeibfi+fZQsn1QOhlIo42hVx1l2pCW4EMasDGDYyYiHBz9knt8nEXXBKNVejiIWK
vHTAI9eelFBkaCs4VWAYByv/g5A2LZ3k4FIi1Ns6qYztfXY2wGEh2D2usSG9qqTh3uGXbf4+wrLZ
n+iGnhXZhK9sScOuypGb94iOCUNHFBo/F0gtDqyIIXvqR50NvxOcZWx5HVH8PJOoMcsfLRQ/K2us
rQKj/rLlj+U4DbCEmuCSdLIV9MJ+iqfEiRlC8ppxEg==
=b1HF
-----END PGP SIGNATURE-----

--------------cK08nbi0V3641a7DHkBg1e2W--


--===============5538919765360499740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5538919765360499740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============5538919765360499740==--

