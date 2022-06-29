Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C917156490F
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 Jul 2022 20:21:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o84E6-0003gj-5w; Sun, 03 Jul 2022 18:21:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <christophe.leroy@csgroup.eu>)
 id 1o6SY9-0001gg-0H; Wed, 29 Jun 2022 07:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SiZWd74AOsn2ljeL5I4/vl9Bsa5oSL1qa4Ot50Pwl9I=; b=kfDTbRPrg+u3FFiDlgwF+1OczI
 LS1XOdszX1Yb5pqhpnZV0nl6dvZh67RlPDK+pJJRhPTr+Y98sZ4MxDcQM5SphzN6XRcvdeH5lCe1j
 laFfhbWXUxmpMIE2ys5hyPTXKZJFHTi9zdHhSLjfqNpEbglH0JXDS8YOVTbdx93NhPW4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SiZWd74AOsn2ljeL5I4/vl9Bsa5oSL1qa4Ot50Pwl9I=; b=K0sVJBOHkvZQb269dgqGCyRrmb
 Tg8HXufKLqv9JW1x4rG6XyqibP5UefHpgDnGvggAYMUMUl9DxHKzM6q0rr/tZGQODYQEHTYJ8cTLg
 sZK2HskQeb6F+Ml/IIH/hhDigRYtIsqHaHCT+mio4nza1Uo5QPRfvlSkX8ikAbHHUHJc=;
Received: from mail-eopbgr90040.outbound.protection.outlook.com ([40.107.9.40]
 helo=FRA01-MR2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o6SY6-000ZK4-Ew; Wed, 29 Jun 2022 07:55:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZGmPgwn0dfRTUbpxSxzAW31yflWGkYQTMUHL+mHscfZOv4cD5DcMjTsyAjaP5L4EUUXDybYpwvUqeEqVB6A8UNfkqEpwH3MX6d0XtlNHtSiPU3ZT5QdshH2FoRYw/YaeZgg+xKITEbKn1ro56ZH6ADm/mZSLNr/kwOvFJl3qf9VygHfnoY0IkJ4BxS2gNSfBwysp35LuHn3E8eOHroUNpJeZzYF3Wmw0qfVAkwHizcetpT5rraO7y7XsXSSFGbnOwmhBZuntkmuwClV/afiiQvPX9A0Ec5afM/Bz2eewEdqpR42vr1qJD26sttMOqYVqOOf20cLo7pd6AKUyLkNazA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SiZWd74AOsn2ljeL5I4/vl9Bsa5oSL1qa4Ot50Pwl9I=;
 b=jJHiDYl6vlPoASrQak392AHepuEzgOUkOkgIYeVRO5z7sORcit1x2BcGYQ1Mk2TNKi2grkfbUBHbWgsdmPfqMZcvqCnIiGzz3+/FZUMyauUrJBwgIIfmL2CtXyRZcRgxUUa16ziYlshpd1anjx7Vu4SJYtQSgbNu4aQpsr6Vkt+t4OApvf7A4uTN1e7Y3auqnM80mxJhF9/9Bz0Bx5PErBBHEmm6Q/F1xjraIxAq+OKMdQxNKziS/l6F+YFz38fx3lVfqLfBYa2Hd2XkizN6Wtrk72l/moe7dS2JAo7x80LDnGYaZLaSCQdPntkiK0dcyT+dJYESlGlemri1y4Tl9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csgroup.eu; dmarc=pass action=none header.from=csgroup.eu;
 dkim=pass header.d=csgroup.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=csgroup.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SiZWd74AOsn2ljeL5I4/vl9Bsa5oSL1qa4Ot50Pwl9I=;
 b=B6GdPV/k3v2tvsVJLBCIylo1pc8/FvtHnb0GXD67d3AURcDrZww0C3G0CVdehIMgRUwmJjwVraZgv1BUc8NcjhmDPVelKVMUNLg3NFa1HPpd2KfTNrpg2w7I7ECf13XvD+zDq+STDygxGdnUXRtYHT+jkvPIUIp0AcmRcM8g4YOKjCc5aVHnKoZwIun0Jb+nIdHkmEangvsXIq8cXh7eVNPuWDSEhU0WZ47EURJCKNr26gN34Fgc/jdZm/xHcSBFaOp1/EVpBAQyjC2V870Ghfui4oUcSCEwAu4djpn347TP4eb4xEP0/ftt/9RQlKegOmaYN8GzMmNM4EuH6WyB1Q==
Received: from MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:31::15)
 by MRZP264MB2426.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Wed, 29 Jun
 2022 07:55:38 +0000
Received: from MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM
 ([fe80::e10e:bd98:2143:4d44]) by MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM
 ([fe80::e10e:bd98:2143:4d44%3]) with mapi id 15.20.5373.022; Wed, 29 Jun 2022
 07:55:38 +0000
From: Christophe Leroy <christophe.leroy@csgroup.eu>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>,
 Jeremy Kerr <jk@codeconstruct.com.au>
Thread-Topic: [PATCH 6/6] i2c: Make remove callback return void
Thread-Index: AQHYivfzv66d74QuGEeH1kE1xo+T/61l9tkAgAAFWwCAAAkYgA==
Date: Wed, 29 Jun 2022 07:55:38 +0000
Message-ID: <5517f329-b6ba-efbd-ccab-3d5caa658b80@csgroup.eu>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
 <60cc6796236f23c028a9ae76dbe00d1917df82a5.camel@codeconstruct.com.au>
 <20220629072304.qazmloqdi5h5kdre@pengutronix.de>
In-Reply-To: <20220629072304.qazmloqdi5h5kdre@pengutronix.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csgroup.eu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 846fb32b-6214-4099-d82e-08da59a4c1d0
x-ms-traffictypediagnostic: MRZP264MB2426:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CYomIx3nRK8MHvVOXFC46FqFYoYkf0bo/4h3Xkh9Q/zEx3vOhDgZ4cTm3BEjRMmtkQXvfxQ0QICVEnuVjNPfYX+EAm5xa0NkomLw7YuakKBsrjyUyfpuWuLZYPf0bHUOibAae716Ak0WNzG9ENkL2e1byLDGyP+HBIGTl0jL6XUqwTxIWvlOhEftjZZJMHrV2JWIb6cJEU58HycXD/rAb/MuIc0RQ89wGfOyWrWvWXiaGGedWX+f3R3RB4sjGn5mbRYpp0AkhnSQCfxccZ+/mXAPu1Om8Fa3N/fnfnIEuwnxZONOoM09FcsH5osILf6O7zPnmeazl5oXapgCqkbkVxcUt+nrqH1mTaD5+m+CNJ2kPOUmjnwE/TNTj3i4TNmoG/TQgaMaBvLShDQFmx87mtOIHmGZOn9MUL5s+zZn2+edT4C6ac4wrf2/li2YBGpl/rQ1kvqJwUmybFobso9lp14gb1cVisBaeRTT+mLc0DesSbqEVRXmac69TDbimKbh7Mxm3Sxt67Ty/oGO0ONlkyIKuawb4OBrD5Y3d4DjbfGTfuE+CEyQX6nup6VVdawF7JaBAdCX14tzoeEc3ul2n9DmVuWT6FjYwM4Uy9zevwNpaH1jtQAMJszRPoByTDpForTQR4pZKXlvZYrFVT3sW+ZAWeKK+YMqBVA4QBxXo5NAA0+9+gP5qfEuKq6Xt6zeFSc492B3XuTRDBijLpI9XDYdq7y5PL7qDLBifuBOE6mebafV0nGOaeMUtj67vgCTazq9OpTHlpU03MBeOWb+UVXD0PLvdyKbDbPTNtzKXKX1L9h44EJIAEUA+zC/lOYE/44v0R2q1FXEC7JgEP2vimbIS7DAbjk7UokWPkTZcqv7GDADALn60d3P96JesSu0N140vDdyP79s/lcWn+e5gQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(396003)(366004)(136003)(346002)(39850400004)(376002)(6486002)(966005)(8676002)(2906002)(7416002)(7406005)(71200400001)(44832011)(5660300002)(478600001)(122000001)(38070700005)(110136005)(91956017)(31696002)(86362001)(316002)(54906003)(64756008)(66946007)(66446008)(8936002)(76116006)(4326008)(66556008)(66476007)(186003)(83380400001)(66574015)(26005)(6512007)(41300700001)(2616005)(6506007)(38100700002)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXJYTXlTcHk0UTNxalNEMlNPL3h1K2F1M3dNc2Y1cUVqV0sxbVgwSVZSNGZu?=
 =?utf-8?B?a2J1VWlLWEl2cStZSC9ZaTBXRHJXK2UyTTZoM0ZjWVRRN2tTVForSnA3Y1Zt?=
 =?utf-8?B?a1dwVzJ5VTVZdytoL3h4UHExaGgrbkkwQlQ0T2E3YWNOVUY3YkM1dW5kcDk5?=
 =?utf-8?B?blRDMHRGeU0rQ0JST1FIYnRQZVJ1NkdaYjNpOXVTNHp6NjVJUEo2YUlGRmlk?=
 =?utf-8?B?cU1NVEQzTjZWY09JWjBIUFl5d2JrNmtZRVRObGtKSzlWeno4aHZNY0UvQnI2?=
 =?utf-8?B?cTB0R0JqYTdNOFJYZXF5b3UvTXMrVTdFRUI4Ky9YT2p5VUxjZXJKekJBOHNx?=
 =?utf-8?B?bHdyWUhBNFo1RE56RUVSczVYUWxZUWZORGVrdTBON3ZjSzNYRFdOeG00UjV0?=
 =?utf-8?B?clVhK25yZHVBMTdpcHpiQTh4cUFQSE5vakhXL2tWU0xpUHRjZ0g2L2t3TURj?=
 =?utf-8?B?elB3Smp3bGl6L0drU0NUN1E0Yklad0V5VkxxMmFZbGpNTkdhb1plNnJrLzRO?=
 =?utf-8?B?SENQOWhYQSt1RXhUM3gyczZVaDFOR2ZGclF5RnpqbjRYR1hBclJzUXNsR0wr?=
 =?utf-8?B?ZHQ0V2EyRE1EZlBSRUxIQ1VuUEFnRmpOK21nWmRHZGJwejNUbUR6VW54TVJT?=
 =?utf-8?B?RWx6YjR1SEpDUXZCZjFnd0FDZndhV1dDMFRBd0NnTFhIVWpMTmo2bXNydWlG?=
 =?utf-8?B?M3dkVlQzQmJXNkh0SjJncVkzSit0Q0lQRkg5Q25tL082cWVSVy9QdldBK0RG?=
 =?utf-8?B?YVNoL3E0TDR2aGxxeVFlaGFocjUvWmdqWXFjQzA1eit1U0pNQkNpV2hjV1Nz?=
 =?utf-8?B?RDJxbnQvREZkNGNDeUhZZVhHbkNNQmV2YytzWkZEUEFhTndtbndQYURwaXFE?=
 =?utf-8?B?cVJ6bk8wdjFtNTVhMnVLcG83Rlo0QnJ3VWN0RzlOUmVQRG9XVEQ2NW0wdVh1?=
 =?utf-8?B?QjhxTmVoTlByMXMrOUJCN3gzd1NqTE1xSEtiNXIvVjFTdzdJbFIzOUwrbnBP?=
 =?utf-8?B?aWtIVndJMHJVaTUrTGxwRDUyQ2l0YU12d3lMeWVDYTEwTkFCN0VaQjlhNUN6?=
 =?utf-8?B?T2J6cG5sL0xrWkEyNTcvMnY3d05Bc20yWmFDcWtudzdmV0tmS1BDZUFrZEsr?=
 =?utf-8?B?d3FUMWlFVXJ3bUh5VWZOUS9yOWp6OGIxRkNBbkQvZnpzTnRtSURYNzAzMTN6?=
 =?utf-8?B?ZG5kaDMvTThYaStQZHRNV3JPeVBSSDRaVDVtNkU3Y1NwWHJjMmpzSHNzNHJl?=
 =?utf-8?B?Zlk2MklyNm9pSFhhY25FcVhlYndDRnBUblBkTVBCODd2NDNqWTJNTWFwT29X?=
 =?utf-8?B?KzZBVEdENzdVZUV1NklWV1Vhd3pnM05IUnZtUCtQMXFoa0F5dHA2TEswUEgy?=
 =?utf-8?B?ZkVubElpN3RWbXczR1ExNEt5V1d4YjRnNjJFS0FSYkNkK0hFQjlJaG0wT3NY?=
 =?utf-8?B?eC9DNERnK1dNblExb3paOERSMTUvOFNDM0xCTGhBSlFYY3phWjJrdC9MS1ow?=
 =?utf-8?B?bGVTQTJYcGFoVUxuUTJhRXBzZThHeFR0MFJvaGRZcVZvRlVZdUpYZStHYTFj?=
 =?utf-8?B?YWN6Q2M2My83ZmdUME1qTE42UGpKdWpRY05CbHdzOGVFK3dsaTVRNzFBSkQy?=
 =?utf-8?B?RW41cnp5ZUZETURlOHpscGo0a1ZlMlZYYUgways1dDZvR2R2UlNRdUhTc1JR?=
 =?utf-8?B?aFF1aVJRdjNjaWhBbmN0RFZiNHBHSzN4dUtzUXJjeGxNZnBRMXZ4N2FTMjln?=
 =?utf-8?B?c2M2Q0tNVUI0YnhCYXR4Zml2cDBoYkEreVFjbXNHOEE0WGZhMkNZRlU5b211?=
 =?utf-8?B?TVBMQmVCN3FSVGZxQ1E5b2ROOFNQQ0tMc1FUUmx2aU1qWVNoaHN5dG02SlZw?=
 =?utf-8?B?UWlPbGhPYmRqMHlRYm5YeEdZVk8vNkF6RVB2NVhzd2N3cm9Talo3M09CbEZW?=
 =?utf-8?B?clVXelZaT2xrTGF3YkMrQjJRYWpMVkkrTTFaQjFDOUkzNDRmRllRaU53TlVO?=
 =?utf-8?B?RXQ4UTU4ZHJORExrVEZKNjBoZDNGNnc2bWJtZlZDLzYrS040ZEpiRC9oOUtH?=
 =?utf-8?B?VjNRQko3MzlTZjhZT0xPTllvNUpaUnFxTTNiZW5ZR3BacTVmeU1odWwwM0NS?=
 =?utf-8?B?RlFiTE05b3Fqd3o5YTlyNXVLeHdZR25BVE9zOE11QXphNjRqWTF6V3RnVW1M?=
 =?utf-8?Q?u+Wy+mgQrCfCDZS1C1j43WI=3D?=
Content-ID: <39828658DC65DC4C831FDA136BD44EB9@FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: csgroup.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MRZP264MB2988.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 846fb32b-6214-4099-d82e-08da59a4c1d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2022 07:55:38.7075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9914def7-b676-4fda-8815-5d49fb3b45c8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jWJw5Q3ejJJE6olRWuuRrdOPzCjdRptR0XegOyT8t8a3QdfUnesEWOYx/mHkRkwOXeYBol3k++f1J5K5J5cUoH+SRpzbNEynWupEewBpo9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2426
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 29/06/2022 à 09:23, Uwe Kleine-König a écrit : > Hello,
    > > [I dropped nearly all individuals from the Cc: list because various >
    bounces reported to be unhappy about the long (logical) line.] 
 
 Content analysis details:   (-2.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: csgroup.eu]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.9.40 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.9.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o6SY6-000ZK4-Ew
X-Mailman-Approved-At: Sun, 03 Jul 2022 18:21:42 +0000
Subject: Re: [Openipmi-developer] [PATCH 6/6] i2c: Make remove callback
 return void
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "chrome-platform@lists.linux.dev" <chrome-platform@lists.linux.dev>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "acpi4asus-user@lists.sourceforge.net" <acpi4asus-user@lists.sourceforge.net>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wolfram Sang <wsa@kernel.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-integrity@vger.kernel.org" <linux-integrity@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

DQoNCkxlIDI5LzA2LzIwMjIgw6AgMDk6MjMsIFV3ZSBLbGVpbmUtS8O2bmlnIGEgw6ljcml0wqA6
DQo+IEhlbGxvLA0KPiANCj4gW0kgZHJvcHBlZCBuZWFybHkgYWxsIGluZGl2aWR1YWxzIGZyb20g
dGhlIENjOiBsaXN0IGJlY2F1c2UgdmFyaW91cw0KPiBib3VuY2VzIHJlcG9ydGVkIHRvIGJlIHVu
aGFwcHkgYWJvdXQgdGhlIGxvbmcgKGxvZ2ljYWwpIGxpbmUuXQ0KDQpHb29kIGlkZWEsIGV2ZW4g
cGF0Y2h3b3JrIG1hZGUgYSBtZXNzIG9mIGl0LCBzZWUgDQpodHRwczovL3BhdGNod29yay5vemxh
YnMub3JnL3Byb2plY3QvbGludXhwcGMtZGV2L3BhdGNoLzIwMjIwNjI4MTQwMzEzLjc0OTg0LTct
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlLw0KDQo+IA0KPiBPbiBXZWQsIEp1biAyOSwg
MjAyMiBhdCAwMzowMzo1NFBNICswODAwLCBKZXJlbXkgS2VyciB3cm90ZToNCj4+IExvb2tzIGdv
b2QgLSBqdXN0IG9uZSBtaW5vciBjaGFuZ2UgZm9yIHRoZSBtY3RwLWkyYyBkcml2ZXIsIGJ1dCBv
bmx5DQo+PiB3b3J0aHdoaWxlIGlmIHlvdSBlbmQgdXAgcmUtcm9sbGluZyB0aGlzIHNlcmllcyBm
b3Igb3RoZXIgcmVhc29uczoNCj4+DQo+Pj4gLXN0YXRpYyBpbnQgbWN0cF9pMmNfcmVtb3ZlKHN0
cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpDQo+Pj4gK3N0YXRpYyB2b2lkIG1jdHBfaTJjX3JlbW92
ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQ0KPj4+ICDCoHsNCj4+PiAgwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBtY3RwX2kyY19jbGllbnQgKm1jbGkgPSBpMmNfZ2V0X2NsaWVudGRhdGEoY2xp
ZW50KTsNCj4+PiAgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBtY3RwX2kyY19kZXYgKm1pZGV2ID0g
TlVMTCwgKnRtcCA9IE5VTEw7DQo+Pj4gQEAgLTEwMDAsNyArMTAwMCw2IEBAIHN0YXRpYyBpbnQg
bWN0cF9pMmNfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpDQo+Pj4gIMKgwqDCoMKg
wqDCoMKgwqBtY3RwX2kyY19mcmVlX2NsaWVudChtY2xpKTsNCj4+PiAgwqDCoMKgwqDCoMKgwqDC
oG11dGV4X3VubG9jaygmZHJpdmVyX2NsaWVudHNfbG9jayk7DQo+Pj4gIMKgwqDCoMKgwqDCoMKg
wqAvKiBDYWxsZXJzIGlnbm9yZSByZXR1cm4gY29kZSAqLw0KPj4+IC3CoMKgwqDCoMKgwqDCoHJl
dHVybiAwOw0KPj4+ICDCoH0NCj4+DQo+PiBUaGUgY29tbWVudCB0aGVyZSBubyBsb25nZXIgbWFr
ZXMgbXVjaCBzZW5zZSwgSSdkIHN1Z2dlc3QgcmVtb3ZpbmcgdGhhdA0KPj4gdG9vLg0KPiANCj4g
WWVhaCwgdGhhdCB3YXMgYWxyZWFkeSBwb2ludGVkIG91dCB0byBtZSBpbiBhIHByaXZhdGUgcmVw
bHkuIEl0J3MNCj4gYWxyZWFkeSBmaXhlZCBpbg0KPiANCj4gCWh0dHBzOi8vZ2l0LnBlbmd1dHJv
bml4LmRlL2NnaXQvdWtsL2xpbnV4L2xvZy8/aD1pMmMtcmVtb3ZlLXZvaWQNCj4gDQo+PiBFaXRo
ZXIgd2F5Og0KPj4NCj4+IFJldmlld2VkLWJ5OiBKZXJlbXkgS2VyciA8amtAY29kZWNvbnN0cnVj
dC5jb20uYXU+DQo+IA0KPiBBZGRlZCB0byBteSB0cmVlLCB0b28uDQo+IA0KPiBUaGFua3MNCj4g
VXdlDQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpP
cGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
