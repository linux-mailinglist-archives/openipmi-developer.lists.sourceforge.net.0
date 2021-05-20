Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A1138AD37
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 13:58:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljhJm-0003CT-TW; Thu, 20 May 2021 11:58:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ryan_chen@aspeedtech.com>) id 1ljh5T-0003QA-2Y
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 11:43:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gs7zI1JsXrqyljc3mFMjF+/D3mgAIJn+TVqdI5LubsU=; b=gI2Spp8WR8m0BG0qWTQa6Bv/IQ
 eB/NlN2AyP88StyBFT88hDgF/CQcG9la6CE6myuNX61Qd1DGg8N+3RyJsrCaKWZ1HmyoFE1PN4t2R
 plnVi6gL9lrG+SBej+Vcb2tk4K1RbwB9UX0pojlkvE7vckFnHFxlKWXrfxBI7aqCT5XA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gs7zI1JsXrqyljc3mFMjF+/D3mgAIJn+TVqdI5LubsU=; b=HB9n6B5j/nNHsoHIPyxgS+bm/d
 GlC3dXDUJ+G+qcQWZpGUjlxWORbOPv8uw/p9vxCuSuLZD3oKzg1/4O5zmLsmPdpSeiwyMx7FI7a6v
 e8JSbRq57aMoQODyttfN4cEeBAHfHa3r7FWtVArRlvCXla/0lEXd6lGVOoB1nn8cunCk=;
Received: from mail-eopbgr1320113.outbound.protection.outlook.com
 ([40.107.132.113] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ljh5J-00GPNT-Ur
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 11:43:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+jmUuFPt1KQ3lwwkQnzoHFZpBqplpg3MSKUkJeiknu76LH1VMeM3y0yYROMDmOsTWh92HfL1ebW7Gr+UBWqvKgPVxa0gF5XfC0LCKOtqYW5VQjanHLgO576DLcUzea0A27ZGAtrB7jou/+QLXDHsOF1R160rY2vZY6Xu0b2bYO1UOcTtVamJ0apKKuyCH5W2LQPcuXzjJaaN5I7EhhQFipxQ+RP5bkVlwp+U6FhVbE8CLO5niWcvqW7Z6fxr+Cmo9VlcPc+Uuv80xiYVW6R6OD2wk6k/F1sI3AHgXUyVoZTMBGzEyh8AccTm5UVeV78fiS8V0rk64ZdVsVgoekMrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gs7zI1JsXrqyljc3mFMjF+/D3mgAIJn+TVqdI5LubsU=;
 b=m5RRUSGVx/pK3UNvho3E2IrQyXwGTe8fTMp0AWDwnk0NQm4inSQ6gZZdVk3aTFaHFo49w8CrmjcBCGISrym+zyVFSGjmejifNxSubK4KfTBlS9YltcdX2r5+gAciGgOKCtEhdpC+D8o+lgYzgslUcifnHKu/t/57Poattuu3VUX8DkGcmMXobRWf/+1ot0P+E8fWlTparrcr9b35AWD1aV/H2Wk0ZTu9OvyjsEgiUUDqf6GX995DzOtTsCuQLKgzxA2w2MLOxxRKw3UpvaHjEKUDaoDrcJYiiIenfg7vKm8nh7FHl/RkL8xoZSXRrITPE/XSCaUfwWLYLGRwCUUcjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gs7zI1JsXrqyljc3mFMjF+/D3mgAIJn+TVqdI5LubsU=;
 b=2q20Be2gXHHYTJoBfxaeEbHhGH66Xv/jAi7vCxDnyJMH9ddgdZ6XFHxWO2PovGiynUPYriyB2FO8dcUkjYLtyYJ33rO9gMwNe37jYB4wVgiE3HhEO8GpyiRcfT9VeO70FXBUmwsgjRNUNTrV6w9974M2j0YUJx+H7ZFA8LDd1Tr2eaVvoie4nAEHhQeEqqVYkKgFa3AHQ/TagyK26ykm+NW7OoU9v7S2mYPN2DpEe4hbW42zM2dC9/pFwtbmd3Vg2s4d1MZ4a1nrn7hT/PgGlUV+jdgYWIZiYLt1aFBGQxf+mJMgWOvlYaxqD5QI5jhnqxl54njRJhiyvlYxccSFbw==
Received: from HK0PR06MB3380.apcprd06.prod.outlook.com (2603:1096:203:82::18)
 by HK0PR06MB3124.apcprd06.prod.outlook.com (2603:1096:203:8b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Thu, 20 May
 2021 11:28:59 +0000
Received: from HK0PR06MB3380.apcprd06.prod.outlook.com
 ([fe80::2984:f1bd:e1f9:5ed6]) by HK0PR06MB3380.apcprd06.prod.outlook.com
 ([fe80::2984:f1bd:e1f9:5ed6%7]) with mapi id 15.20.4129.033; Thu, 20 May 2021
 11:28:58 +0000
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Joel Stanley <joel@jms.id.au>, Quan Nguyen <quan@os.amperecomputing.com>
Thread-Topic: [PATCH v3 3/7] i2c: aspeed: Fix unhandled Tx done with NAK
Thread-Index: AQHXTIPiaDlIMxFG4EScG2hlz3/zyKrrdFqAgADIwhA=
Date: Thu, 20 May 2021 11:28:58 +0000
Message-ID: <HK0PR06MB3380D7B693922C3D6B3C14F0F22A9@HK0PR06MB3380.apcprd06.prod.outlook.com>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-4-quan@os.amperecomputing.com>
 <CACPK8XeFsuEXeCvG9DC0z+tiri6ptjOFOXe3x+COEZTVqUbVFg@mail.gmail.com>
In-Reply-To: <CACPK8XeFsuEXeCvG9DC0z+tiri6ptjOFOXe3x+COEZTVqUbVFg@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: jms.id.au; dkim=none (message not signed)
 header.d=none;jms.id.au; dmarc=none action=none header.from=aspeedtech.com;
x-originating-ip: [211.20.114.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14e8e689-ba9d-4bca-1087-08d91b827608
x-ms-traffictypediagnostic: HK0PR06MB3124:
x-microsoft-antispam-prvs: <HK0PR06MB31242AF71CFB022423C4E75BF22A9@HK0PR06MB3124.apcprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FV1IVRyFZ2jDKwCfATrk1HSRZcvRJkSp45XkhlPITmJfN31iJz+3R2QdkGdJ+VAz3gIBK7kR8+h4ynqeSmPsfXgo4Qqv8QQehPOc2o5JqKqELBA+sfeFOqNO8Oocl0+qnz4ITQ9u2Fv4uTTDGdfEiZxBtkwK6sUtH2TPe5Lkg558JpDuJRDMHUDP/VBoj+kUneHLTgBomo/ej5bzAmpeeZ7bXwBRwVVKUvb3r2IxogyYoT2GJibYucX76bn89PvFp2mwUPDeBWDRkgLvmttb2wIp91/8SrH2/Gx6/uHSNtiKt8t8JeiRkd1IkYK59HbXEaH2kdy+YiKbMfez250wOc/rMP0Q3bFt1wCYblzj7x7a4xLNPFUeMtsmaoVpMztGKMLsBX3pMMIR66wyafOzIl9hN5Qi+pL808opkVQ1TJaf2JTfOAIh9M5lexpGvr22FEOhlmNRaFzSsTIh9b9Lzs2kxK0OnGBc58uNqZ/x1FKYhRZJfb0QJlcI2YRXghB4DL7p5pSRIHipK5RCpG8ZVWTjJtmblybfdaBukidTp0o4K630V/2q7qyezg5H8sH2zMUN8F5Ew0+nWuXIujIxXFSF+SVdnyLvO24pVi59rsc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR06MB3380.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(346002)(39850400004)(366004)(396003)(8936002)(86362001)(9686003)(2906002)(7416002)(478600001)(55016002)(8676002)(66946007)(83380400001)(76116006)(66446008)(53546011)(64756008)(110136005)(66476007)(55236004)(7696005)(54906003)(26005)(66556008)(52536014)(71200400001)(33656002)(38100700002)(6506007)(186003)(5660300002)(122000001)(316002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?MVlSSVZiMnlPRm1iQmxhaXZWbFluM2dxSmhWYU9mamZwTWp5bjZiK2lkYzVk?=
 =?utf-8?B?NENHbWNGVXJxam9ib0lXTk0zM1UvUC8wVHVXV0xuU09iQ2p6YXdpNVhUVmhO?=
 =?utf-8?B?ZXNhTFlqWDlGd1FVNE83aDhvbVhoL3FjSS9hWFR0MUwrMTRaN1VVTytTVzVN?=
 =?utf-8?B?ZXNWcTJhejNleVBEWi9DT29mMGRPQUZpNUQwMEdBQzc2QTdJeGIrYWdUYVBP?=
 =?utf-8?B?R2F2RW1xT0dmdE5HalRIQjFxb21nSVNncFpEUWM1M001QklwcUYxY2ZOOTA0?=
 =?utf-8?B?VnZzQlhtYk9ZKzEwamhIN0Q1bUNUWWRGcHNuV1NUdkJVeDByc1VEMldHTUFX?=
 =?utf-8?B?a0M1bk1adWcydUdHV3c3M2YwMUZUWEY0TmhmTXN4VVN1K2NJeXpBYWY2OXdm?=
 =?utf-8?B?b2Q1NnpsTHVZZGhFR3R0eU12aVNXMlJCek1rNENaUFNOZWhkTFppMjV3b1Iw?=
 =?utf-8?B?b2lLMS9obnlQVEJWZ1JZNUV0V0FOVlpVM01vSUltL21iczhRSmwxc0dTZGkr?=
 =?utf-8?B?OXlScVZ5T2h5cnc2aWpkYlNYYmxaa0dvNXE2bGpBN3VIL0V4SGt2S0R0eDZ6?=
 =?utf-8?B?UkFmZHBobVJoUUloZlMwQ3VCcG80K1h4UHA2aFQ5cWh1bGVVbmhCa3FtZzBN?=
 =?utf-8?B?d0habWRjYVhFYVh4Z3I2ZFVkbVp1cXdzM2tBMkttaXMrcXFTV2pJYTNvMkNs?=
 =?utf-8?B?aUVWZndXaitoV0pPMFJLOC9nZ0taTUhVTXR2MzBNVm5reXVyU01IQzZSZ3VW?=
 =?utf-8?B?ME1nWVdlRjZVWStqeG1jVnJTdHBaWVlVSnpIVjVEMzNMOTdCSFJqV1U3b2xq?=
 =?utf-8?B?OHd0RllwY2VFRzV1aCtyYk50Z0Zra0dUVlFVaUZyTGVDaHM5b3FTcEozTlM3?=
 =?utf-8?B?dzBrb25YQktEcmQ4T2RwdW9SZjZLdEF6SEk1WXpSZFRiSnV5Q2swbEJwUGU4?=
 =?utf-8?B?NUpIK290alZrT25uSlFKbHVKOFQ1b2tDZGRRYkRscHBCeEVVQ2E0Qmw0dmg5?=
 =?utf-8?B?Ni9NSnBjdHZla1o0UDR6T2QzWTRWei9lOUNkcWN5czRUWjZicWFYa0k5NFBR?=
 =?utf-8?B?RmpFa2ZxNnYvVDF2eGR0Q01tZjUxMlZTQmMvWjZnNWJua1RkVG9rKzFFUFpZ?=
 =?utf-8?B?SlV6NWdKVG9raUZXL2NUL2JCNmxTaDExMStBUm5YV0FmMVdwTEFYYmJtSTdW?=
 =?utf-8?B?eHJ4dFo2Y2lLUXNxTitIQTFBanRyR05iTXN0ajZYZ1Z4M2g5eHBmemRQNG9I?=
 =?utf-8?B?dyszWmNDNzk3L1UyQmNTdWdzN21LV1g0RjhDU2RtaTE2UktsbXMzRWljbzVa?=
 =?utf-8?B?TlA5NW9tcnozMDk1b3hMUUdFb2JFQVE3L0NBeFVtUGtOV0pnNkZiWmhZL1N6?=
 =?utf-8?B?U1I5SExXU3BNSXFucVVRSW1nWXpYeXBKOWJzbHl5SEhEcldDWlVhdzlOdGEz?=
 =?utf-8?B?ajdrRVBhVko2TEpjM1VlVWFHRjdWT2Q2Z1RWRVdkOWp0NGZ4RGQ5aGVPOTJs?=
 =?utf-8?B?a2FkYjRzK0psbXpvZHFPZTdRdnMxcHEvQ0FoZkFqeEVHNG41S2ppRS9sWSs1?=
 =?utf-8?B?QkZ4WnZMMkFrMlNxTDhIaERyT0VWbWNlNnRMQytLSlJDQ2hPWUVQZzBmQkVX?=
 =?utf-8?B?MXNUL0JUOTJKVXd3cVZzZ0laT1dKSlM5bUIzaEdiTGVGM0d3Z1NvNXhVNXR0?=
 =?utf-8?B?RHdpVjRvVTlvVUtmaUYvWmxoL1VwYTl2SlJOWmpudm1XazQ4WktWN0k1ZzRE?=
 =?utf-8?Q?uAh4iNIpCJTI6wIOVh9wp5+R50C8jvivZe1Ae/+?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR06MB3380.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14e8e689-ba9d-4bca-1087-08d91b827608
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2021 11:28:58.7845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r8gnCH5KT6kR+bRAhCTJ16lv6e+O/P966Mlc0iGjg/TTvDLJ5kxWOdE0n0eFo52GSZXLLevR+ttA7agYPIuQNw/7Pey/qeX+VlGsqUFhMwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR06MB3124
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.132.113 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.132.113 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ljh5J-00GPNT-Ur
X-Mailman-Approved-At: Thu, 20 May 2021 11:58:21 +0000
Subject: Re: [Openipmi-developer] [PATCH v3 3/7] i2c: aspeed: Fix unhandled
 Tx done with NAK
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 Open Source Submission <patches@amperecomputing.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> -----Original Message-----
> From: Joel Stanley <joel@jms.id.au>
> Sent: Thursday, May 20, 2021 7:29 AM
> To: Quan Nguyen <quan@os.amperecomputing.com>; Ryan Chen
> <ryan_chen@aspeedtech.com>
> Cc: Corey Minyard <minyard@acm.org>; Rob Herring <robh+dt@kernel.org>;
> Andrew Jeffery <andrew@aj.id.au>; Brendan Higgins
> <brendanhiggins@google.com>; Benjamin Herrenschmidt
> <benh@kernel.crashing.org>; Wolfram Sang <wsa@kernel.org>; Philipp Zabel
> <p.zabel@pengutronix.de>; openipmi-developer@lists.sourceforge.net;
> devicetree <devicetree@vger.kernel.org>; Linux ARM
> <linux-arm-kernel@lists.infradead.org>; linux-aspeed
> <linux-aspeed@lists.ozlabs.org>; Linux Kernel Mailing List
> <linux-kernel@vger.kernel.org>; linux-i2c@vger.kernel.org; Open Source
> Submission <patches@amperecomputing.com>; Phong Vo
> <phong@os.amperecomputing.com>; Thang Q . Nguyen
> <thang@os.amperecomputing.com>; OpenBMC Maillist
> <openbmc@lists.ozlabs.org>
> Subject: Re: [PATCH v3 3/7] i2c: aspeed: Fix unhandled Tx done with NAK
> 
> Ryan, can you please review this change?
> 
> On Wed, 19 May 2021 at 07:50, Quan Nguyen
> <quan@os.amperecomputing.com> wrote:
> >
> > It is observed that in normal condition, when the last byte sent by
> > slave, the Tx Done with NAK irq will raise.
> > But it is also observed that sometimes master issues next transaction
> > too quick while the slave irq handler is not yet invoked and Tx Done
> > with NAK irq of last byte of previous READ PROCESSED was not ack'ed.
> > This Tx Done with NAK irq is raised together with the Slave Match and
> > Rx Done irq of the next coming transaction from master.
> > Unfortunately, the current slave irq handler handles the Slave Match
> > and Rx Done only in higher priority and ignore the Tx Done with NAK,
> > causing the complain as below:
> > "aspeed-i2c-bus 1e78a040.i2c-bus: irq handled != irq. expected
> > 0x00000086, but was 0x00000084"
> >
> > This commit handles this case by emitting a Slave Stop event for the
> > Tx Done with NAK before processing Slave Match and Rx Done for the
> > coming transaction from master.
> 
> It sounds like this patch is independent of the rest of the series, and can go in
> on it's own. Please send it separately to the i2c maintainers and add a suitable
> Fixes line, such as:
> 
>   Fixes: f9eb91350bb2 ("i2c: aspeed: added slave support for Aspeed I2C
> driver")
> 
> >
> > Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> > ---
> > v3:
> >   + First introduce in v3 [Quan]
> >
> >  drivers/i2c/busses/i2c-aspeed.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/i2c/busses/i2c-aspeed.c
> > b/drivers/i2c/busses/i2c-aspeed.c index 724bf30600d6..3fb37c3f23d4
> > 100644
> > --- a/drivers/i2c/busses/i2c-aspeed.c
> > +++ b/drivers/i2c/busses/i2c-aspeed.c
> > @@ -254,6 +254,11 @@ static u32 aspeed_i2c_slave_irq(struct
> > aspeed_i2c_bus *bus, u32 irq_status)
> >
> >         /* Slave was requested, restart state machine. */
> >         if (irq_status & ASPEED_I2CD_INTR_SLAVE_MATCH) {
> 
> Can you explain why you need to do this handing inside the SLAVE_MATCH
> case?
> 
> Could you instead move the TX_NAK handling to be above the SLAVE_MATCH
> case?
> 
> > +               if (irq_status & ASPEED_I2CD_INTR_TX_NAK &&
> > +                   bus->slave_state ==
> > + ASPEED_I2C_SLAVE_READ_PROCESSED) {
> 
> Either way, this needs a comment to explain what we're working around.
> 
> > +                       irq_handled |= ASPEED_I2CD_INTR_TX_NAK;
> > +                       i2c_slave_event(slave, I2C_SLAVE_STOP,
> &value);

According the patch assume slave receive TX_NAK will be go to SLAVE_STOP state?

> > +               }
> >                 irq_handled |= ASPEED_I2CD_INTR_SLAVE_MATCH;
> >                 bus->slave_state = ASPEED_I2C_SLAVE_START;
> >         }
> > --
> > 2.28.0
> >

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
