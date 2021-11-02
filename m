Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B15C244260D
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 04:31:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhkW4-0005Ru-4x; Tue, 02 Nov 2021 03:31:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chiawei_wang@aspeedtech.com>) id 1mhkW2-0005Rn-3M
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 03:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RiJOQA75VAoJOEQj3MbLkmmiXnAnHNyYqz7OuhR1whM=; b=lL2Yh/yCB6OkNnh+cEfepG2lMN
 WzS3AUggwhvN8YGVmcbSdARJ8DwmGNu0PqrVljZU27BumCAJsG60IuJTrN6KAsqLnL4z4dW29mmOo
 FONbeAwnTBI10eXAULb7qX9P2C92eWYHJTmS2VGChvKkkAJfcwYu4Rg6FIo7/uDP5ac4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RiJOQA75VAoJOEQj3MbLkmmiXnAnHNyYqz7OuhR1whM=; b=dh2FMI66eXcB6Dsp6cB0AMUkEY
 0J4S1wS9mSeT8cMqVZSy+VGQO9rJUV8A/YM3vZoRIv5zlXb2xP0/aEGa/+mAWtotYfZ/eezjhvtqX
 QwSvUEn1ix814GJuyC1kTaZtLe/GoNFsxqa0puAH56t/tH5xqNai/3sDxdZhaIC63gIs=;
Received: from mail-eopbgr1320111.outbound.protection.outlook.com
 ([40.107.132.111] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhkVq-0002uP-LB
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 03:31:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHq/CnyS2KC8EsiBC/ab+0JtjC7oNa2jV6WemEgUXsp4pgMRCNedNle0tjZFLkvcJM8Tmkh2cgdFnSI5OrLYNnf9U/36k8Fr7UU5HO1YO9ScirszV1FEJmIsZ3RSEj0dnsr/5srM66DwNgjWphh4CuZNssJ249LUD89dd8p4V4C3knG32HwNBpvXkgXdS1OD0JqjP6LGA07xkzhzjMcY6oyDVg7O5uiYh4LhOsTuyG7/AM5k5sbMHDS5BQmeFF77adu5v6oXeuPdIWuh3M/2c/0zqUo/yHvHUFhxJZt642EvysuYf3rTdWSq9TBz0CrwzOQOjgvoAGCNO0X3rB67eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RiJOQA75VAoJOEQj3MbLkmmiXnAnHNyYqz7OuhR1whM=;
 b=McN0V07Zgs9cEuFC2SPMJMfMtwzCrvlKNfRzitroKJHfM52LmT76BJzHBNkk3ZIrmfiQjxOfhQ5Vuq1EnYVtxkZ/EwZtLYF9lSNM2aQtZFGxJ1lx7frw8voXJDovnGOIcU6C++ToJA/ePx7ndXZqOeYsw8iTt93RNub8VgAHMXXCtfNsK8wRAsO4Nbyq6UI9IlzJ4WeHaDtVeylbw4cEsIWv2HLxEZR/hXITERh8tTitOQqQpakYeTJGW9HHPANP25wGHvwU9/3QOgWShKSB5Cm75qchrjH0f+EqDYeQdeO2lnF72osJMaiSi7GWlQdDUTyqfXJ2KEq86ldlobzEXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RiJOQA75VAoJOEQj3MbLkmmiXnAnHNyYqz7OuhR1whM=;
 b=sso9ku8QgjrSDcJwP7Ca6mY1XMVoRbENPpIr62pdvZ3JyN33fWvaeOeSrTTuNI1nTHEfrjs5+gg3BFOCNvA2Q7j2bj4Xs1e0IDJhlCTTycr0E29eJNObLnDDFLQqkAkZ0INq5A4vGueVAfv8fAIjy93+Uxjgs4WcqniVM5ZSgACNCE92bUnDlG1KFeJaj4N16rc8bPlGwo1WeKWhqVY8OLBDEUQmuxBnNhMmRs4X4ysswt4LadU0hXSQcCzXg+fX1vQCQKvzgGjn2dwLEd5o5NoJw0bhBCotvcC5l7DNnIMkK9cWqlwtPq0OZnI7wpAMgdO3Z9A5mc58C+oZhJDE7A==
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com (2603:1096:203:b8::10)
 by HK0PR06MB2274.apcprd06.prod.outlook.com (2603:1096:203:4d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 03:15:53 +0000
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::f4aa:d005:b469:2a71]) by HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::f4aa:d005:b469:2a71%6]) with mapi id 15.20.4649.020; Tue, 2 Nov 2021
 03:15:53 +0000
From: ChiaWei Wang <chiawei_wang@aspeedtech.com>
To: "jae.hyun.yoo@intel.com" <jae.hyun.yoo@intel.com>, Rob Herring
 <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>, Joel Stanley
 <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Cedric Le Goater
 <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>, Jae Hyun Yoo
 <jae.hyun.yoo@linux.intel.com>
Thread-Topic: [PATCH -next 4/4] ipmi: kcs_bmc_aspeed: add clock control logic
Thread-Index: AQHXz3eMHFa1vZeuBUOQ1Q58VTwgpKvvjSAw
Date: Tue, 2 Nov 2021 03:15:52 +0000
Message-ID: <HK0PR06MB3779F8E273396ED805EE5D81918B9@HK0PR06MB3779.apcprd06.prod.outlook.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-5-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-5-jae.hyun.yoo@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3da4d7bf-06f8-4091-92ea-08d99daf141e
x-ms-traffictypediagnostic: HK0PR06MB2274:
x-microsoft-antispam-prvs: <HK0PR06MB227484DB05CAB7BC1B1EA55E918B9@HK0PR06MB2274.apcprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dMCho9z8WbmnZ9+n4AyA6fWHb5Mfca1O2WrSkO8yW1AvGVCznWpFLVAg0QBBAougyNZ4YX/FrDKG+vAhT12jSk8qCr7Dw2HeZ9kBWOMXiiQNqWvDowTOZ4u2+iJtmJFxB7ftuCm9NZ5BUFpptzKhcqCmnmWeOef7i4mBNVsSEFOcfD/PYDo7eTCR81gm0ogIwx6YfBf/MCLN+G0XTmEJeEOrpfjjAQyuTd9hFFoppe7vVn121akD42xW0hEHOWtUzrf0NWbEiZPJcqJkKUKSufpCSdoMCUsBAlrx7updKvYlItTUx5riMXFosE08fp85KQWkFJQNb4xdvUvBzyJ73ZYRVwuCmoxdHY1NSMuq8o+1yZe0/RSSO4/2OuCMrQiKU2iKoVGgiK/yVBjU3Ob536ZuwdGv/tra26XadA/DJgc8Q7z5U1271oIkfQINGcjQCjusU2MkOf+ma3x+52pxpAZEwT4Zil9smUKTwNDM92WMmOYoaWfwQoOGcm8IKXXM9hsgpynIa1k+Z1yhBnjdckxHAOr2rWoyUcM4J+tEx0WScQwgS+CWGKU0d8gfO0pWLB8nxR0Y7EEyeBgyNAB1E7b44N6pRJSeKzLZJ+oq2erUvirS7bUGf7HkVPiUJecRHwLCH+CuNZeTBdYri9Lb+jpbT8eNWShsCkQUuaKlYFdxW5AK61E60NYdPRfbObmEvIeTqP6XqDjo83xEFksC53N1gxSPnEKYmI4vx9fL+/iaFdDLf75hQ8jzGOaB2NmiL9AHpRhoK45HpqfFjz7GHfrdbloBd0ZFYrYw/SgeOr4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR06MB3779.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(376002)(39840400004)(366004)(396003)(7416002)(86362001)(186003)(26005)(316002)(52536014)(110136005)(6506007)(54906003)(508600001)(8676002)(122000001)(966005)(9686003)(38070700005)(5660300002)(2906002)(7696005)(55016002)(71200400001)(66446008)(107886003)(76116006)(66556008)(64756008)(83380400001)(66476007)(66946007)(33656002)(8936002)(4326008)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SU9mTlRvcjhLSDhLRzlTZkxwblFlcm91b2RDRUpXY0VtRDVZdEpyMzVldElZ?=
 =?utf-8?B?d0RyaGphV1FCbkdrN0ViVGxEcC93M2IweS9TdFp4UXlCbDVxYWZNRzFRSzlj?=
 =?utf-8?B?RkpRcThFbU1xZFRNZXV5VzI0RzhkYndhdEVTKzR3NmdqVzZYOWdsOFdvamRi?=
 =?utf-8?B?Tm04UEtwVitqd2s1VFlmb05jVU16UGZZdGdEenNxa2hyOUtFRWlZVXlSL0g4?=
 =?utf-8?B?cGNTcEd1TlZoR1JpcU1vdjZqZVVaUk0rNi9xZ2gvMEFOY3MwY3IyUTdtUTVh?=
 =?utf-8?B?SlJHN0FlU21sL3RmVHNYSnlXTDVSQnZrV3B0YjFCcjArRDBhcTdTZ2VyR3VV?=
 =?utf-8?B?RERHR29nWjdFWk5pZHlKVERtR0t1VkRRV1lRd01QbmNzaHFvUkZIOUFZVHNp?=
 =?utf-8?B?NzQrUW5aaTZGWWtjcEdhUHJnSDhqNkkrMmJUUWNWTlRIVE5Xbk13ejdsQWpX?=
 =?utf-8?B?QU5LY3Ftbjh1NVZ0YVdqYUduN0lISmRaV3NCYWpPRUxMLzVGTjF5eEdjWGlV?=
 =?utf-8?B?TGprYkFPTlBGeHc5WkNXU2dRMWlIZVVCWGJNK2ZqQkNwTDhnRE9hS1NBdnU1?=
 =?utf-8?B?R3lOSUVFSW83dXJMclFyTEdqWmNGRFNZbU1Ha01uVzhhNlRGTk9FK3g5L3Q4?=
 =?utf-8?B?MmlpNWY0ME5BNjBiTWNpR3NqWlJsZnFGelh3REVGZmF5VFRjYUI5UTRCb0M1?=
 =?utf-8?B?amg5LzJObWU2ZEh2bjhiYUZSc2RYMzg5S0R0eGhMQkx4RHRmZkZ2R3NwVGpj?=
 =?utf-8?B?NGNtbnJ5dUN6RmdOWVhSS0d1cmVnbTgybjY2bFk3OWNpODZXZUFvZ2pEVEgw?=
 =?utf-8?B?ejVXUHRFZFBLRXNlNW14MFFtdTN4MHVFUi9QQ21Lc2xSd3FDTUNQMndjNXhP?=
 =?utf-8?B?ZUtWMG45eWFocGdIUFBTeDZYeGJoZEtGZXZGRjAyaG1JOVNDak1CU21HY09C?=
 =?utf-8?B?R3lMNkk3akozNjN3VGdWT1pkdldWVER3TUQvbWtVTk1xK29qWkRaeHZoMjEr?=
 =?utf-8?B?VnBDL1h0MUdwdFJGUkR2TDhValVZazEvV29DdE9DSnl1d04rc0xObmo3cjhF?=
 =?utf-8?B?dkZzYnFEVVowd1JKVWhnRXgxa3pzRUxnbHRQY2t0RlJtNWp6SjFTZnVjS0cx?=
 =?utf-8?B?Lyt1cnZhMlU2QTNSdzNWYTE5eUxLU3JYaVkyR1M5WGxoQ1gyUjMzVFdtTWFj?=
 =?utf-8?B?dktQMGxJOTV2akhnRFZ6TjFQRGtBRmM3aUh0TUMxTUxtK01wdFJzOHZkWUUz?=
 =?utf-8?B?STFxSy9wT2wyOVoyWllsU29FZE9kTVE1ODkwTWl2aWpnNlVkLzFxcFltQWlq?=
 =?utf-8?B?UGZHSzFveDRsb2xKdStJNlROS3ZhRzgwbTlLU2tueElIZ053ZnZZL09EcGpH?=
 =?utf-8?B?OTdIZXo4aThyRERPNzBaaWhweHpwS2hMRVVzTThsR3piaVNORk5nVFYzQzQx?=
 =?utf-8?B?c2JPYWlIVzVCdUROU3RSSEkxa0xNTkNCemliKzVJZ2VEN3c1VGtoOEVuVTRC?=
 =?utf-8?B?YjF6VERCRG1iaDRqbnk4UzdSRHZYekNOR0hlZ2d6NjRkT1ZPSGVqNkZsajVY?=
 =?utf-8?B?ZVphd0ZJUG1yR2U1NDRldFdBU2l0d1Y4MVJnaWxzY1ZDaHdOTWRXRjVIU1NM?=
 =?utf-8?B?bFZnc3Q2aDc4U1Q5U3lVVVpoZkpUUG0zOU5WVlU1a2VPOFpZbEtEYk5PeDFL?=
 =?utf-8?B?YlplK2ZLeTMxdkFPK0c2SVZCQVRzTFhQUTNPc3pJQjNaSHlJWWJmNEh4Tnh0?=
 =?utf-8?B?WVdkOUNjc0lVbjZRTWFvTTZyQTFhOS9rSVRHNXoyR0FLYmtMaEFXZ0NacDVR?=
 =?utf-8?B?aFV5SWJYUWtYbXZYWUVyd2w2a1FDdnE5MTRJSXlud2dqUUUvK2NNZy9XbmZM?=
 =?utf-8?B?QmN1Z29XNS95S1FnWmhhcWE3UkpIRk8ybVVodnlMMzZRaEdjR0VuNjZ0WExJ?=
 =?utf-8?B?blR5UGhOakUvOGEwb2dYN3Ntc0x0cjZNdVZWUlpIL2gwbXQ4eENaQnQ3SkN6?=
 =?utf-8?B?NTNZbUlLWWVzK2Y1OWZtN3E1enFUOVRsNUxMT2plRzFsZFpad2o0SjU3aU1r?=
 =?utf-8?B?TDBWOFBkVjZZRVhkZW43c0V6RzBKdVdUK1JxeVl6UzQvSDd1MFd6Q3Y3dnIx?=
 =?utf-8?B?M255a0lZNEFBQ2RpTkgvMkRKdHdJTFkvVjZHdmFCNEtLNGxKdzdWRm1USDR2?=
 =?utf-8?B?aVZCS3NLLzdBbllseEh0TXlLaXRvaUY1OEhQRlpOMmRjcmNubGZjcmNhdDAr?=
 =?utf-8?B?bS9oZlNZdmVoNXFoMFExNEZvVUVRPT0=?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR06MB3779.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3da4d7bf-06f8-4091-92ea-08d99daf141e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 03:15:53.0052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o/yARwJIYV3iWxzXNlTFb1P4fX7LUQUTdJoUHdDUxn3m2mKqrG7xgGNvUXZjXaeF2upBdbARw8UXNpeF0U/I3d6bJgqorC6p6wzrUvTT538=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR06MB2274
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Jae,
 > From: linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org>
 On > > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > If LPC KCS driver
 is registered ahead of lpc-ctrl module, LPC KCS b [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.132.111 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aspeedtech.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.132.111 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mhkVq-0002uP-LB
Subject: Re: [Openipmi-developer] [PATCH -next 4/4] ipmi: kcs_bmc_aspeed:
 add clock control logic
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ryan Chen <ryan_chen@aspeedtech.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Jenmin Yuan <jenmin_yuan@aspeedtech.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Jae,

> From: linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org> On
> 
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> If LPC KCS driver is registered ahead of lpc-ctrl module, LPC KCS block will be
> enabled without heart beating of LCLK until lpc-ctrl enables the LCLK. This
> issue causes improper handling on host interrupts when the host sends
> interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with dumping stack and
> printing a 'nobody cared this irq' message out.
> 
> To prevent this issue, all LPC sub drivers should enable LCLK individually so this
> patch adds clock control logic into the LPC KCS driver.

Have all LPC sub drivers could result in entire LPC block down if any of them disables the clock (e.g. driver unload).
The LPC devices such as SIO can be used before kernel booting, even without any BMC firmware.
Thereby, we recommend to make LCLK critical or guarded by protected clock instead of having all LPC sub drivers hold the LCLK control.

The previous discussion for your reference:
https://lkml.org/lkml/2020/9/28/153

Regards,
Chiawei

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
