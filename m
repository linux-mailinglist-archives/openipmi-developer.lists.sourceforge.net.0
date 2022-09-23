Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8795E70B6
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Sep 2022 02:38:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1obWhu-0003HE-Fp;
	Fri, 23 Sep 2022 00:38:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chiawei_wang@aspeedtech.com>) id 1obWht-0003H7-8g
 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 00:38:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lQIVCAiTF8lFixLGVtQeq+9YKPnkFjB/yOjCH9QCaeM=; b=ROeao+lI0mmI9uuwCIawlOuEQ2
 sVW6Hg5FwbOOELe/ymH9fI4PB7X6ttyN4hDwWKgQm8T6xZqeHYWpxIKiWoPlYJiRqMzlnSVfiAxmB
 fGEEzLDxA1ZB3Y/AdfU2vXBBqBJCwhDYjNpJLRkqis1l95lC1wP7U2uUb1k/AYG/wNk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lQIVCAiTF8lFixLGVtQeq+9YKPnkFjB/yOjCH9QCaeM=; b=j8/XBvTBPll2aDR1naYMfyuDGn
 mC8DaYhWgC5/PDVmk5xXVdQhTsP+DzOGxns7Q/b6KIVvgdaxXVisivl7vbinChmWDj1e/aT1Kn98C
 40VWZ2oZ+2elsNIQ/x9D1RpCBazfJv8hGOu4Lp7ZuQsznwbmoPamdMRorzBQVQzAO/m0=;
Received: from mail-tyzapc01on2119.outbound.protection.outlook.com
 ([40.107.117.119] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obWhy-00H3Og-1R for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 00:38:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Puh32ym3Y4SM2bkH1uSWpN1XdYBDLHQ1V8FHlOdPs+pd5SzK1lujZFAEN2voZRJknt/YhdFLHlb0rINauOcTIC5rRb2mMWJTBTCuWQy+y3Je0kwYJrpu4/Mg+gQ74JvnIZT27e0rAgQjBqkysRGfX1pc6NYj09vskrTDp6cgAgWEeJmil0PHiXqB8WF9Mx0L2gjIXOsnOlSeOm8m0HNHiKsmrD2/HcR2qwcF/4Oyxep2SLe070eV6DxkgdFhw1nWpXAaLLk0jNq3y55F9Ew6QBiO1EgtBYTw9BoO+HrQmm2Ht1bbLbehw/01eIM+VzLmcZul9uNRuZtdOFesXx0LXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lQIVCAiTF8lFixLGVtQeq+9YKPnkFjB/yOjCH9QCaeM=;
 b=LNGbf9SCAvMomrNm2k2unbaIo+7znV8MipkeBjNPVGFiESR93O6lCVweubkqVeruGcfLxPsMwBN8nlyBNA3a9D6NBVTn+x2LsDxWRyfGJGzyYr3zp0G0e3lJgSTIQCQ5d7jV8UrazMk85wXGeph5xStN3bcwfuOAe51Xch/LvwACPVHyE1bhgFUarNQG4ztVyOyhxXm7r9+TFpKYuIpUBOPOyTRr+q2bHRT2tpW5ebBmOMg5DgePNVfe3ihA3Byh/sfarZhBbO54CXGs2mi+hBWmWqPt7e1Hs1DSqfraQFEF26J8j7776qf9gPOgh5hcuvb9YIaEtlxez8HB83jVTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lQIVCAiTF8lFixLGVtQeq+9YKPnkFjB/yOjCH9QCaeM=;
 b=SjJPQJ4kBX7pc28C55ZzFX9oI4tBq2fitqFYDHiiHF17EkZyxX9A+KwreI1WMi86NlisiwlQIKdOozArrId2LCSkBkg+4pO0TVpSC/KOOKYlH/Aq34uvBxiFOPXRhbDIRM6TNEJTlT/8V9lPzNbamaqKAEI/5rSLv1As1e/4mg2p2BBrNVND+ndAoz7YkJsH1ACAyYCQHa6T1D0iFlDPirFTquaDCa05jmJBOOYzQA9z3I9B8eQ6skohcm4dmtsoK7xl8J7exRFJx+l2Y1EF13lf4n5dh2ICgO3V2/OdG+7uo89LfHIh2yHJdccjSw2XlJG6PP4QWK35UXZJ9LGBmw==
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com (2603:1096:203:b8::10)
 by TYUPR06MB6269.apcprd06.prod.outlook.com (2603:1096:400:351::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.17; Fri, 23 Sep
 2022 00:38:08 +0000
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::b70:5d66:bdf1:ff47]) by HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::b70:5d66:bdf1:ff47%7]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 00:38:08 +0000
From: ChiaWei Wang <chiawei_wang@aspeedtech.com>
To: "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH] ipmi: kcs: aspeed: Update port address comments
Thread-Index: AQHYzJVUtbRY+/SRCUqfvaXOF1k3N63r0TSAgABVS9CAAATrAIAAASRQ
Date: Fri, 23 Sep 2022 00:38:08 +0000
Message-ID: <HK0PR06MB377992E9AF7B91CE41452B4A91519@HK0PR06MB3779.apcprd06.prod.outlook.com>
References: <20220920020333.601-1-chiawei_wang@aspeedtech.com>
 <YyywI8265vECnEHv@minyard.net>
 <HK0PR06MB37794D51E9DB4A864249F96691519@HK0PR06MB3779.apcprd06.prod.outlook.com>
 <Yyz70LckHqyiNhGa@minyard.net>
In-Reply-To: <Yyz70LckHqyiNhGa@minyard.net>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: HK0PR06MB3779:EE_|TYUPR06MB6269:EE_
x-ms-office365-filtering-correlation-id: 2488154e-5b35-40fe-05cd-08da9cfbe2be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rz7gJiNjI5lX0Wq0enDshCzbc489BBGdv1EhpiPrRyTN+amMMsbQ0TZcVDt9d5KQpSGmTt02wDB1SllwFiCd4jEEFFCJuZdgQ/uthOBOgLsAyBmDdFHyVIsFuO+UFTjRdP6sFL1urWpVv2CMJVkhcUi2srO6KHqpntZODo8iMOkSvYRZ9Dt0BERNxcWvGIZZxbpqzC43D36dbYi0n3+bUBvnipu2TRuYlxBmd0lCBw+pJnSJzHrAjl9jibsi801OzZw6F/fnmLTjXk28Zv1L6THUDfah9DtBubVy6riBpKMZpPWFhRUN0nbgqFVtSQUVOnOmWyqEpiUZR6ye0MHx9a99zr5YbEYDCUQ/kd6Cc/I6eMuIh3i8NVXAvityUxP20rxEium/uTgSO514+YXwSfauUOCgd7QXQoC0ZbyXkM7S8Extmxx6Mp+A7pI6R4tWJzxo4MYCZwgR9muBJlGJiWFDzt3SBo3hImoNyDc85FgIGomJa03k5XGrKCtnB/JzKvPS2Tk5ogmz88d0619cbMICjVUcs7xDB796R995pZch5j3EswxjDcpm6P107Dc/IY2zyQ+wCGDr63wcvmsKjR5/ZtS59SsFRjBK0rt6jsiwMmixS5hxUh2NRSv0BR4l1IJKGXI0yEkDzPtFlpA1fkQNQHzHh5HwFlmRiXyB/7l07qKMrbT5QU/de5/HKzDG1lAfEiTR/TPKLC1q2p863ANsq614h145onR3S7aXK4U6+IR2ufqCWgU/DcxOfqlLc5eq2LnkOyD/wrnfDq4Ycw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR06MB3779.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(376002)(136003)(39850400004)(451199015)(54906003)(6916009)(316002)(2906002)(38100700002)(33656002)(66946007)(15650500001)(76116006)(8936002)(6506007)(7696005)(4326008)(26005)(41300700001)(64756008)(66556008)(38070700005)(66446008)(66476007)(86362001)(8676002)(52536014)(5660300002)(55016003)(122000001)(478600001)(186003)(83380400001)(9686003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTlWRW5SMzVOQndaZ29qWWJYb2pzcmRSdVYvcG9oeU1lM2JGSllGampqN3pm?=
 =?utf-8?B?bVgyYWpRUWMybk40R1lVNXg3RC93eGRiUVQydTBjbWgySndHdytMNFRqTzV6?=
 =?utf-8?B?dnZKQXplQXg0djBQR3JRcDFYWTUrZzZTc3VtSThiSDk2cVFpTVh6OFNGZW11?=
 =?utf-8?B?RXBHeThYOHRoOTBxcE9KQWNOV1dXVXNKMXNFSFU3MFlXQTZlaE15OVEzRHVy?=
 =?utf-8?B?bVNwZnlPWnVhbFRDK1hBQitIVndobVNvS0EvbkdPeWxVU2hEN0xFOHgyZ3dO?=
 =?utf-8?B?ZCs0TWwxZTFZd01FbmlONTNpYzJUb2ZhRjFydFdmbEd0R1lhbUxLRzQ1cVlr?=
 =?utf-8?B?MEpvWEpYdjlBR2IrbkVYTnA0WVhGeHdmeFJoOHVrblZNVDJ5WkY5SU5hdUNT?=
 =?utf-8?B?RHZGUmVpZUorSjgzYUprSGc4RkRlcmJhNFoxR0s0dFhlOXp0QjBTOS9mbEhH?=
 =?utf-8?B?c0loMWoxaStWNHJjVmFJMk1pVnVKWDErY213bDI0QTJSTktDN3d4N2YxQlZ2?=
 =?utf-8?B?a0grVkZEZENQUW50amhYQVBDa2ZjR2MvQzJzK0dTYkJLZU14MUpwajB1V013?=
 =?utf-8?B?NmRMSTZwWlgrSENtNVRtTkZEbWVxdGxVMmp5MERoVVprekxLN3NmT2RHdDNB?=
 =?utf-8?B?cWVTVjBNeGMxZGozbFROSGczRTF0R2t1Y21mQy9rWGhDZFJUMXhrZ3g0RUEz?=
 =?utf-8?B?OUNXY3hMbjVqa2FRVDJzVUJJbnpkdy9oYkp0WmRxZ1hzeDdCazIybGM1dndS?=
 =?utf-8?B?NVUwcDRKSU1VSFNQUGRXb1czVldsR3hMRlJFS0Q0TzFHNTQ2RUQ4b0szRW9C?=
 =?utf-8?B?N2pFZXUrb2NVaUZVSCtMaUtCT1JqbVB3Z1RNdnN3anp4UDZIb1BObXJnUkRu?=
 =?utf-8?B?Z0t6bUhSWG9BVlZrQVFzOExXRUVOZUQ0SmxnN0E1blpudkF0ZTZNeFRHNzBm?=
 =?utf-8?B?QWZPdTFzTW1qeEVkS3pQa1NFU1Jlc1YybTFsOHArTWNKaXpDM1NYdi9DekV2?=
 =?utf-8?B?R0RyaloyYnFwVEh5UTl5RkJ5QzJka2psdDFrN2U5MnZSb3dSbERmUUNFWS92?=
 =?utf-8?B?dDB5T2tJd2VHb3NVTnRyQXlwOEUzNXkzZzU5bjI1SUJkVEFING91elJPQjcr?=
 =?utf-8?B?a28zTEs0cWx4c0FNWThycDJxVWxzWEY5eXRoRk8vb053aGt6cEhHVmd6aHo2?=
 =?utf-8?B?NmhNSXcvek5IVnFwZGF4dWE4THFiNmNWVjBhVlNkOTlVUkhlYVBUS3pZRllB?=
 =?utf-8?B?aGx3WUszMmpOUWdzNDQrUk42N2MxanZIMmpmQ0dhVWxFdVVMV2xMVEE2VDRz?=
 =?utf-8?B?NTJHalE2U3R3SUZYQkpFend4UGU0REN5WW42VWVnRzEvcjZpeGVnSnB5ZTJC?=
 =?utf-8?B?YXptYmtQWmhIblFEd3R6NGpSNE8zczhOZC81eE1pTDRIZVlxSnVNbDZXcDhW?=
 =?utf-8?B?NWw0M2Z1ZWtWWjlNTGhFRm1xUUF4QkZpL0NqNkFNTkNWZG5KM3A0MXZXLzV1?=
 =?utf-8?B?NmtIUzVaWXJkWEh5dDU3ZVdHZEZvUXMrTjc3REpubXF2L3YzMEtTUVp2Vi9O?=
 =?utf-8?B?aWpSdDJYM25rTEVINHEyVFo3MHNkZzUzR0hMazZyYXMwdXlPT2Q2OWxuTXJK?=
 =?utf-8?B?ZUx5WmV1SnViQmFtR0pzeVlyOENMcERnWGhFUVZxVE9YUCtBY0twMUliOW9H?=
 =?utf-8?B?RjlJQitEMkRNZGIwSzlQTCtFaFBINHJQc21iWEh2dk9pYlFVUU93Rk9LcUdI?=
 =?utf-8?B?SExNWTZ6ZXpSdDI2T0VqZ3dJWEhMaG9weEhDZjBZbjd5MXRxdGFkY3VXaXFQ?=
 =?utf-8?B?UUoxcFM5ZmR5emhqdUxwWms5ZUlUbHpqcEVmRyttRGw5cW0yQzY1aElFdGJF?=
 =?utf-8?B?V0s3OEtqQ0txTW55S01mcFFzdzNPZU1hM0RoUXdqQlZrSzBBRzJpRm0xRmNw?=
 =?utf-8?B?R0VnZVh0d0JxcGZtR3krM0hvSjRJTmNLUDJvcHhZZklMOHc4SGtKYXdxdUZn?=
 =?utf-8?B?amQyZ2piN0UrT3p3YkVvU3lJZVFOSlBST2luMGozV01mUFpBUDZwK0F5Nzgy?=
 =?utf-8?B?L1I1Z1hOc0U5ZnFPVXNtME44eHFsUXdGZ3JSWktha0ZsbVczb3lKQWE0TnJy?=
 =?utf-8?B?blZHU3Nza3NONG1yOTJVZ3dLaWp1UVEzcTZwUnRENWNLZWkvN3hubUUzWXJH?=
 =?utf-8?B?V3c9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR06MB3779.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2488154e-5b35-40fe-05cd-08da9cfbe2be
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 00:38:08.0706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gZP9uSuFr89EMVWwkiNBtIQv/f78AnSR1JOlMzgznI8vndzNhkqOv7kdvz8Lu1RyvGEEE0AXPU/lVRWZ30WrcBdJ0goRnuyCxPD0mTNLDfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYUPR06MB6269
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of
 Corey
 Minyard > Sent: Friday, September 23, 2022 8:21 AM > > On Fri, Sep 23, 2022
 at 12:08:07AM +0000, ChiaWei Wang wrote: > > Hi Corey, > > > [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.117.119 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.117.119 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1obWhy-00H3Og-1R
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Update port
 address comments
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
> Sent: Friday, September 23, 2022 8:21 AM
> 
> On Fri, Sep 23, 2022 at 12:08:07AM +0000, ChiaWei Wang wrote:
> > Hi Corey,
> >
> > > From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey
> Minyard
> > > Sent: Friday, September 23, 2022 2:58 AM
> > >
> > > On Tue, Sep 20, 2022 at 10:03:33AM +0800, Chia-Wei Wang wrote:
> > > > Remove AST_usrGuide_KCS.pdf as it is no longer maintained.
> > >
> > > Even if it's no longer maintained, is it useful?  It seems better to
> > > leave in useful documentation unless it has been replaced with something
> else.
> >
> > This document has no permeant public link to access.
> > Aspeed has dropped this file but we keep receiving customer request asking
> for this document.
> > The most important part regarding KCS port rule is still kept in the updated
> comment.
> 
> I mean, if you have code that is implementing what is documented, why did
> you remove the document?  I don't understand why you would retire
> documentation that people still want to use.
> 
> I could put it on the IPMI sourceforge or github page as a historical document.

This document is a personal note of one of our former employee.
It is known to only the owner and his supporting customers.
Most of us has no access to this document.
In addition, after chip revision, certain information is not guaranteed anymore.

Regards,
Chiawei

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
