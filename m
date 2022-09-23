Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 881315E70AA
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Sep 2022 02:24:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1obWU6-00034k-7h;
	Fri, 23 Sep 2022 00:24:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chiawei_wang@aspeedtech.com>) id 1obWU1-00034W-95
 for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 00:24:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0ZK4Ko/DoywjxvVj+lSkA5JJETN0urQdyGXUdxOdPBA=; b=eSqEwTRQlSLD3XrRmEAjIoITci
 YGmUW/ePV0mkOYQLw5wuvh1LZxJggUyy/bRBO5Eyh1q7EXdAaN8cjL8Lbe4GgXAO0Aqzx3lLv/793
 P7wAjjz56JvUqk+/6UfIphw4vsCvXrJ+8P99zac9dKJZCBsc0Vb8g0c5gsU4IR5S3XCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0ZK4Ko/DoywjxvVj+lSkA5JJETN0urQdyGXUdxOdPBA=; b=XTHNm6n78Sjo/K1Lcb30HatHoA
 5MUanzOaK7+2a9sKxP1/0BadzZbTi9pt1ziRpr1rrSrgOqFZcjq+a9j4tHeLGM7KUw/wP7wXTxktl
 j85MelqnxsitI7c1soTFPBqairb3d1inDlhmiaXmj6TYTSvleb0N/H/wPNq1ENLHDs08=;
Received: from mail-tyzapc01on2101.outbound.protection.outlook.com
 ([40.107.117.101] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obWTw-0003EP-Ow for openipmi-developer@lists.sourceforge.net;
 Fri, 23 Sep 2022 00:24:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzyCqzKY+4w076pfwC/2euMyr9pYKivL4Fa3ilW6yNCYSb+T6TvO62N1+5L6urMoLABnNBFF3RnsxyIiwqvXYvG9dPszVsHDSRDTJkjo++VNUfITRwhbpcEcr2ZAnV2WIpXWe3MkIFp534VpcCgsDPkwIx33tU9g5y+meU90A5JK+UzauLIMjfP4PjIEdqwxU+KgA8KvVrRCdISA/tN9Tmk+DZaTuo87q2vU11x4wLPjbyIdtR2X/JZNg4BRhyI7WAPWJV5NyegPxqTB6lzvBQs8SXeg+tv1VBUnSHChS4rTtG3ohWnJrJfLwYsOmygfuMUqYi8JZJK+fwB2fxhgUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZK4Ko/DoywjxvVj+lSkA5JJETN0urQdyGXUdxOdPBA=;
 b=C7pADFxRhpMsspw4rua3M6lAJUDqdHM7mgemhilPdKFByOFrDiSK6tKCmHdujNmsbJMCiQuzqSuOuT74EnfSbq6w18cN4zrxhf70re4cx+13Ja6lTliyGLhMTwpLDsVcmDIZ4hYICL+BGpzKiE00VyZceZacToXlr/E7fyYJZIwc+opERl5X1fXt4ZP00f9cJD0lOFExqAzVdWqEM0EfhwoyLejiZDz8KO7dtsTm0xp3OzTkdDmH853MtH0yN5I8ahn5uGo0r/XP9iANXYhJ71btp/dtxBwkPYl5tc0P8axx3R+rcsw1qpuUikENDi4k+w5BxU0HqhHHmRaLGs1BHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0ZK4Ko/DoywjxvVj+lSkA5JJETN0urQdyGXUdxOdPBA=;
 b=a8rHwmMWurNe0ZpRspvKaUorQVpJU3FTlmvUlzhhwPPxswamRlpHMdg0fs26DP6qnG5roY7Q/YiRzngJwdXS4EIySub2j5u3W8W9uh+a4IpvA63rvm9eSrPTsy8kdx6rBE0wVFpOkcOn7+3s4hqGZq/8s1qkKPlZy41f8Guz9MD8pygPl7N5PvlAU3uolGJ7ELVs7NNLKC9NfPc9Ru5zHs52iaFx1GrDc0fnmayzGW3nl4Grtsv1ZNlEJQyUcp9sMBqs7HlYR0yCKBaqYxhyl8XQcV6salRtVKfX4TE8tg9ZB7zm8oXDltft5V0ooF0dxOzsojsDKwUSj3teN+/6gg==
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com (2603:1096:203:b8::10)
 by SI2PR06MB5161.apcprd06.prod.outlook.com (2603:1096:4:1ac::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Fri, 23 Sep
 2022 00:08:07 +0000
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::b70:5d66:bdf1:ff47]) by HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::b70:5d66:bdf1:ff47%7]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 00:08:07 +0000
From: ChiaWei Wang <chiawei_wang@aspeedtech.com>
To: "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH] ipmi: kcs: aspeed: Update port address comments
Thread-Index: AQHYzJVUtbRY+/SRCUqfvaXOF1k3N63r0TSAgABVS9A=
Date: Fri, 23 Sep 2022 00:08:07 +0000
Message-ID: <HK0PR06MB37794D51E9DB4A864249F96691519@HK0PR06MB3779.apcprd06.prod.outlook.com>
References: <20220920020333.601-1-chiawei_wang@aspeedtech.com>
 <YyywI8265vECnEHv@minyard.net>
In-Reply-To: <YyywI8265vECnEHv@minyard.net>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aspeedtech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: HK0PR06MB3779:EE_|SI2PR06MB5161:EE_
x-ms-office365-filtering-correlation-id: 487dca59-d019-4bc9-ebb8-08da9cf7b153
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kg5jgopkZj84crKGQhvPXwNwo9iKTpdHd5RGvt08w+Tid5i76ay0XUmeArxfYCA52hlaALsVxPIBEf6Y+PPjMs5/45++LoAV+0nsgTX7L1Pxrm+1RBykc3vcodBvbhv4AcxkTyPvzvgcbyDDibZ8bEB7XJpg3rUYEZGlLgfj26d1GJuu3BYJS9EFdh0bdEIVVOZGUXSe+Y8pw/AmLjS82gES8g2yc/GbRc+L+okEk2HNvnpD0AEQJEj+R88RlZuQ04aXY8JTWkSgj1Q2Z4mmT0MFvv6girDlv/uEs3qg6In0Rd2TjGShPOvqeMM72IFQhgUB1tqA4JMVX9ltATkL0au8FnGc3kgV05I6Ptv6pqPgd7gjpAtBi0ftSydmJe3flO57HuXPDJbyu0ich7U+SUXSKoVkEJO482bR6YkeZcsdwHw/JALjcGRVGkeU9zr4RqiN0DHkM3skyczZBzd/qspRkzg07xfPUYTp/pguNYBYhpw8neKmZL8Q9WLQRqhH4SqOgPz+qe8EW9kUOmaItU+bcv97Pp3l1FMerwFxgoRG4mEE9qsWKi3Lk49ESWiwcEDT+6GfXlpmRTzbyN9APK8vGBxGbAMnB7yEVU4KWvVY8QS8uQJbPYYkuwC/h7RPNx9ztN+c4HgpKe9VOVhqJDF2F3ly6pZSG1TbhTkLpYYwV90uDGf3QzgED62xH5bBxUvphclQ1xQ6c9r2BSdIm/O8M89bpOAPKixJAFI3MebOL31ae+DJ6+VVUrPL5DtXptyQ9KeJ7CApM+HunNbYeg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR06MB3779.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(39840400004)(346002)(366004)(451199015)(55016003)(26005)(71200400001)(8936002)(5660300002)(9686003)(6506007)(7696005)(6916009)(54906003)(186003)(8676002)(38070700005)(76116006)(2906002)(86362001)(52536014)(66556008)(64756008)(66946007)(66446008)(66476007)(41300700001)(316002)(15650500001)(83380400001)(122000001)(38100700002)(33656002)(478600001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SlhIWml4RXdHZHNDc09wODBralFsRjBIc2FQeisyNzhxVnFSOTNKaHdibEFI?=
 =?utf-8?B?SXNGdXppUnBwb1lvWGVMK1JYVGttUUM5b0dMZm10ZGZTbHg1SlR1STlmVnVV?=
 =?utf-8?B?UTdhdGdMdGNSN1hrMTEyeVRzR0xkVWQ1cjdZS21YZEZNSVJaano0b1h4Unls?=
 =?utf-8?B?cFdMUCtJSzRuQzUrN2syZjNZVjJ3OC9XaXlsUDRkbkRscHduNEMwdllnSDZF?=
 =?utf-8?B?OXBuVTZteFFuTFdGeUUvR2R1Z2M1SGZIQys0c2J3QmQyVVVjVFlOS3JSRnM0?=
 =?utf-8?B?M1krWjdWanIxZ0lvTmlGYVdRd3pNNmc1SHAwNWJhVUVHV01NeDAvUmhJclFP?=
 =?utf-8?B?L1J1WVhtSXRoTGtNS3JMcHA4Qm8zYzBHZk40YmpkUUNkTzROQjZEZkpQVy9X?=
 =?utf-8?B?SHFoQmN3b3g1dkVrVVFoMmY4Y29rTWRHV2tOT0JtRmZRMWxJRWJuam02VzRr?=
 =?utf-8?B?cHNGYmM4SVAvY2NlQXNqZlVyNGlYamVCUW1zUUJpL1h2bjdXNlovWnpIRU5o?=
 =?utf-8?B?bTV5VmFjcGhaZXNZSUtBb09DbDh0TmgvNkgweGEyZ0Zsb1M3R2g3VmZHSTNH?=
 =?utf-8?B?MDBpYW5YZXFXUkdPNSs4azdUZjkwRlJzdHZ5OUxHODlpOFFCZGdGam4wQndo?=
 =?utf-8?B?emVzWDN2TitGZWkzTUxiNy9hRktLV0Q4bkRGdmFhb2VzRm9leHNpZFZ4akpR?=
 =?utf-8?B?WC9yNnlGMlhpdzV0ZW9KdlBZQ0FhWENZK1h1MzVNMk95ZzE0Y2FkOUhNMWNS?=
 =?utf-8?B?Z3ArOWVqdEhUZlJ3ZWVQTmJpUEQzdHhxUnRZcDVCamhVekhidDB1dXpSRGpp?=
 =?utf-8?B?VFNwMXVST3lhRGJwbHdmV3dqVU1raGZFR3I5SnoybkFOWllIQW9SZUFPU1Ji?=
 =?utf-8?B?U2ZmREF1N1B0K0V6QzV6bFRMQWJmSklkM0hWaTV5c1Z2S2hHeG9jTVdGNTlm?=
 =?utf-8?B?M1A2ZDIzenhKQlVaN2hhSmUwSitSQngxcE1taHZ0cldYcUVENGRPM1oydUhj?=
 =?utf-8?B?TGNYRFJFOE9BSWd5SFhPblhjQm43K1djeFB0Uy9QQmJwWldTSkNqNjArZXVh?=
 =?utf-8?B?QSsrNnA2ekV6eC93TEtYRDIvSi9IUU1IRk1IVTNTTG5KZlJXNWJPeC9vL0lH?=
 =?utf-8?B?VFo5QWlBR3lwN0ZYUWNGWnNUOExtSE9kQmk1bklvcGNJNnY5YjRqbEFISnJa?=
 =?utf-8?B?MXBGdHVtNjVncENQM0tIMUlWZnk0UmZQdGdmUlNkYlJ1UTAxQnV1d0RUZU9s?=
 =?utf-8?B?TzJmdkw0ZWxJQURIU2l5MWRtTXZYWWUxdWJXNmZkcGhIdUtIM0hDSE84czBK?=
 =?utf-8?B?alVxaHkrSlowbDNZSVNoc2dBQWx6Z2doTE5oL3JqNUFmS2dtd0xHZjNxeU83?=
 =?utf-8?B?Z2dBQk4zdVFpaSszdHZIQXIvOTVIMElleXBscUFhQWFvd1phSEE1bFlNSUc0?=
 =?utf-8?B?Tzg5M0FYdmQ1Mjg2SlhERFVDUkFBQ3lKTlpGN3JzMmJkNzFjZXlnR2cwZ1E1?=
 =?utf-8?B?aVpxZ0NoWmJQaFFMWk8zMVJaMllkeE1aK1ZVNDl1ekZCbGxlSUNtWVBhZ09k?=
 =?utf-8?B?dlM5Zk1mVUJSRC80Mm1MT2Q1UFBrMnkyY0E5V3BhbXpmWU1OUUNNWnVQY3Bq?=
 =?utf-8?B?U2xDaE82STB5K2xJNnlWTU9YbzdvWVhaK2FIN0xOYnRsOHdrS1Y1bkNxQ1lp?=
 =?utf-8?B?R0pURE5DV0JYcHZ5SlRZYU02WG0rRnVZQnkwM0dBdGE3cWt0UEZCdk9jVktH?=
 =?utf-8?B?OTFvRWdLUEhMZnVxSERwb2lXS1lRMVMyNi81WnhJNzRHamozY3R5S1BGVENv?=
 =?utf-8?B?NWF0c21CZ2pLdFpKdUJVRGRSR2lTR2N0YXY1RFFhZWJyT1Z6Z2lJZW1lZUhi?=
 =?utf-8?B?Si8xNGI3dncrYjVsODZzUG9ZU0k1aUNRS0VkUWliSGdYM1VJREEyQXFHN0FL?=
 =?utf-8?B?SzdWd2RGbnJReWo2MW80NHA2UTB5TUxHMGtnRWp6UXY3VTFUTjRIZWhtZ2hn?=
 =?utf-8?B?cW91ZkdPK3RLd1duK1g1M2pSdkFaWEYrZ1k5L3Z6Q1ZoWEV5MThOenMxYm84?=
 =?utf-8?B?SWQ0ODBjV0JhRGZIdjVPSmcrb0p6UXpoV0xSOTkxNitCZHk2WVJ4bEgzYktN?=
 =?utf-8?B?S291ekI3eG5JSFhYenhvZi9WTUFTMlgyUGY1Q2xpZi9XMDVmV2k2akNzZmFN?=
 =?utf-8?B?anc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR06MB3779.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 487dca59-d019-4bc9-ebb8-08da9cf7b153
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 00:08:07.1643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 98Jh43N6qjm3Mx7m8BRu8AvzEArEdT6H5LYUEl3ixPneWU6MmYJCQiXxrA4+XRSd29JhQ9AV8I5/ozDasJS1Xv+GpJspB88HDAY3AUm1PJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR06MB5161
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Corey,
 > From: Corey Minyard <tcminyard@gmail.com> On Behalf
 Of Corey Minyard > Sent: Friday, September 23, 2022 2:58 AM > > On Tue, Sep
 20, 2022 at 10:03:33AM +0800, Chia-Wei Wang wrote: > > Remove AST_usrG [...]
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.117.101 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.117.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1obWTw-0003EP-Ow
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

Hi Corey,

> From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
> Sent: Friday, September 23, 2022 2:58 AM
> 
> On Tue, Sep 20, 2022 at 10:03:33AM +0800, Chia-Wei Wang wrote:
> > Remove AST_usrGuide_KCS.pdf as it is no longer maintained.
> 
> Even if it's no longer maintained, is it useful?  It seems better to leave in
> useful documentation unless it has been replaced with something else.

This document has no permeant public link to access.
Aspeed has dropped this file but we keep receiving customer request asking for this document.
The most important part regarding KCS port rule is still kept in the updated comment.

Regards,
Chiawei

> 
> 
> >
> > Add more descriptions as the driver now supports the I/O address
> > configurations for both the KCS Data and Cmd/Status interface
> > registers.
> >
> > Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
> > ---
> >  drivers/char/ipmi/kcs_bmc_aspeed.c | 29 ++++++++++++++++++-----------
> >  1 file changed, 18 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c
> > b/drivers/char/ipmi/kcs_bmc_aspeed.c
> > index cdc88cde1e9a..19c32bf50e0e 100644
> > --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> > +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> > @@ -207,17 +207,24 @@ static void aspeed_kcs_updateb(struct
> > kcs_bmc_device *kcs_bmc, u32 reg, u8 mask,  }
> >
> >  /*
> > - * AST_usrGuide_KCS.pdf
> > - * 2. Background:
> > - *   we note D for Data, and C for Cmd/Status, default rules are
> > - *     A. KCS1 / KCS2 ( D / C:X / X+4 )
> > - *        D / C : CA0h / CA4h
> > - *        D / C : CA8h / CACh
> > - *     B. KCS3 ( D / C:XX2h / XX3h )
> > - *        D / C : CA2h / CA3h
> > - *        D / C : CB2h / CB3h
> > - *     C. KCS4
> > - *        D / C : CA4h / CA5h
> > + * We note D for Data, and C for Cmd/Status, default rules are
> > + *
> > + * 1. Only the D address is given:
> > + *   A. KCS1/KCS2 (D/C: X/X+4)
> > + *      D/C: CA0h/CA4h
> > + *      D/C: CA8h/CACh
> > + *   B. KCS3 (D/C: XX2/XX3h)
> > + *      D/C: CA2h/CA3h
> > + *   C. KCS4 (D/C: X/X+1)
> > + *      D/C: CA4h/CA5h
> > + *
> > + * 2. Both the D/C addresses are given:
> > + *   A. KCS1/KCS2/KCS4 (D/C: X/Y)
> > + *      D/C: CA0h/CA1h
> > + *      D/C: CA8h/CA9h
> > + *      D/C: CA4h/CA5h
> > + *   B. KCS3 (D/C: XX2/XX3h)
> > + *      D/C: CA2h/CA3h
> >   */
> >  static int aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u32
> > addrs[2], int nr_addrs)  {
> > --
> > 2.25.1
> >

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
