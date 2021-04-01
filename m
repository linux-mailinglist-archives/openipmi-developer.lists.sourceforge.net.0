Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCAB351BFE
	for <lists+openipmi-developer@lfdr.de>; Thu,  1 Apr 2021 20:18:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lS1u8-0000UY-GO; Thu, 01 Apr 2021 18:18:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=57252e1af0=zweiss@equinix.com>)
 id 1lS1u6-0000UJ-Um
 for openipmi-developer@lists.sourceforge.net; Thu, 01 Apr 2021 18:18:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D6n771te6bi3qxA4ZtqeVJGmxpWBlw+7ByqZOVhCC0Q=; b=jwEAmbraLx/i0QkodJM2MdGvOm
 didEolmGZArWNI7zkdWFx61x2YCu3X8nwXuWoV7QFop8e3sBltrt95KX0lNLEr4dB1XcOkvTfhM3L
 KT1TqV5V7VpwQB+Le26obd45mhOZU65fGXi8Rfcr4CZCh7XlRwPtmg5bc260ki2X7RfU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D6n771te6bi3qxA4ZtqeVJGmxpWBlw+7ByqZOVhCC0Q=; b=V36ee84ekPBO6QZOE1TLXFF58x
 z840lzbVthcTXGSc0yeTpWXcqnONPcJ/kWY+U71f2yTDiTEgPFTY6n8gv3ke9lu8Tuecm/lmgNbza
 Aai0gqGRGY0bGKcLwj87+Z7MM+EzTT0Zb8vj40WF+Q2JghZcf1keotXcgx8yDXSuyo1U=;
Received: from mx0b-00268f01.pphosted.com ([148.163.159.192])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lS1tz-0007Vg-Ri
 for openipmi-developer@lists.sourceforge.net; Thu, 01 Apr 2021 18:18:50 +0000
Received: from pps.filterd (m0105197.ppops.net [127.0.0.1])
 by mx0a-00268f01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 131IEVqW024091; Thu, 1 Apr 2021 18:18:12 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2172.outbound.protection.outlook.com [104.47.59.172])
 by mx0a-00268f01.pphosted.com with ESMTP id 37n3ceuhp5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 01 Apr 2021 18:18:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GT4Vt3froka342vNCrd0QlOBVGbRUms38hxMeJlwtjZqO4iIINmwQyv1+hbt+DmNeZN/z9Pf3Ce/Q6Q0jxyE67RW9JIyu5Vu5yxj+MZZhD4YqHzUeAbzXiCSaBajz96Kj4jsCWW1YLARwbAcPBtLfIW4Npefy2dsau3bFgCMGzT3PNty1AeUzAAIjKMMjA2TEUjmz4xfo+QaoaG6PlwhNyuMGdXYYVEZI1UjRpzD1wmwlUtSrR+4KxwucByLGhaZsnKZVZbxHV/3Qdj7AFnfSj6TmNfW/jvWVWlIklGbN2H0LR6xGQlfWDDCV3k/G+U4864uYviL+yOvNadbvqdYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6n771te6bi3qxA4ZtqeVJGmxpWBlw+7ByqZOVhCC0Q=;
 b=CoeQ2dnuGrGkvQMS3zMzzts9bgVmhVzIzmUtapp3cdqMEMCIPF5/yr1PBV34iQX1jH0/QwSWV1u9n81i1XGutIj/R6o6vzbEMaG6g8DL0M3TfDG8x0HFww0aqQsYfVhQrxuomCJtGvT8nPNjErsbKAkTy2CNmmI6Iqi7RbygXhdfg8r6jtKOPWfbQvzUdDFYBwcW4sT+sBD3xhVdx2HOZpoxp5QltkQ0AqD6dwAmYAf7aT7GfZAh5UfrME0MewH4hPGKKqLyCJB6W9qZxUFINtCXWEAadVGMyfmtvD6YxuYYhYNdmwMupS+Bhw2zQWVVqL2nn8pUH1J8nF0VCx8g4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=equinix.com; dmarc=pass action=none header.from=equinix.com;
 dkim=pass header.d=equinix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=equinixinc.onmicrosoft.com; s=selector2-equinixinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6n771te6bi3qxA4ZtqeVJGmxpWBlw+7ByqZOVhCC0Q=;
 b=F00hgXFU07boSiVxHx3QRrCb0eD5KhF3tn3oyDZ/Dut3VCqT15hdsVhnpODd/vcARElK/V0UXhVYSnW8U/3PsKrHDB9XZptPsta6k+QuIWXluGVu7RZue5fo/1i0ohx1CQxtEwp1jf/uJMcbyIZZmmWVqAPOErkuJA4AuHP7tqU=
Received: from DM5PR04MB0762.namprd04.prod.outlook.com (2603:10b6:3:f3::13) by
 DM6PR04MB5531.namprd04.prod.outlook.com (2603:10b6:5:123::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3999.27; Thu, 1 Apr 2021 18:18:10 +0000
Received: from DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::4c98:aeb:87a8:13ad]) by DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::4c98:aeb:87a8:13ad%5]) with mapi id 15.20.3977.033; Thu, 1 Apr 2021
 18:18:09 +0000
From: Zev Weiss <zweiss@equinix.com>
To: Andrew Jeffery <andrew@aj.id.au>
Thread-Topic: Re [PATCH v2 21/21] ipmi: kcs_bmc_aspeed: Optionally apply
 status address
Thread-Index: AQHXJyNeAUueKu6Dl0GGRLjVvWP0kA==
Date: Thu, 1 Apr 2021 18:18:09 +0000
Message-ID: <YGYOX4HcdKcWOUx1@packtop>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-21-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-21-andrew@aj.id.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none header.from=equinix.com;
x-originating-ip: [24.181.166.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7608cad5-7260-44a4-1166-08d8f53a815a
x-ms-traffictypediagnostic: DM6PR04MB5531:
x-microsoft-antispam-prvs: <DM6PR04MB5531088A3E332A47D2E654B2C37B9@DM6PR04MB5531.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U4QCcC1p9L1v3ToW9Xwq4TBV3xfFQWy/3v21xxhgk1GHwK0K7ctaaivvIkVwOg/yKvb52ZzQYXfwsmCGolbkDrcYDDNXGH94r2jFIFMUY4wRbwCyx1oI2cuT/8BkRZgyoHRwPK8y43t9lcCMlsR/mY+IU3M/ofJK6WrLUQOAyhmdBwehSdmjZw6qXPwBU5LvBaXQd54p0LKs04LM334uhw3xgf0GL3SwcP6zc5TAau8cxhGqshtIPI4c9ll8We83PfixpgwkJJZWid97yFM/56BpcNvY0JknSwxvq/oFYGC5JufE3qCT24fBLwtuijQdR/brDV/lLFpM8ZZUTHJCMcMUw4tsUhPEg34iMFa2JdBzEA2Va4oSqGv4aK4SelKVOtImtc3mWXdU29jOTWEjHwZNo3x660jQZKuK+18cMC2cTydvKMyTCV8gZP/Oq9Q0FYa/RfDzSN+2Z4UHQURWE+dFY6uGvLD+zTXKUK4bLliBRs/w5Vvac1VMNB+m9Il7vDTrEmdL0svuzDZdWZ3FsQQox25fWSlFJ7jeSc2NsHmSTjBF6TEvRbnhgJ6isClfsUiUu91vBXyM9Z+ubG9e/WVpe9YNZHtiTWd/hWscKiwj9z4b0vi3eqr3VKyMgtGOmKSIUFnNlErzK1Va/c6ntg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR04MB0762.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(366004)(396003)(136003)(376002)(39860400002)(346002)(8936002)(64756008)(478600001)(5660300002)(4326008)(66556008)(66446008)(6916009)(6512007)(26005)(66476007)(83380400001)(6486002)(7416002)(9686003)(6506007)(86362001)(316002)(71200400001)(66946007)(38100700001)(33716001)(8676002)(76116006)(2906002)(186003)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?3m+AaOfKI0JyT373TXLmB6CMAOu+OcOC6NaRec+hfmTxjnpkL3MrhT3IsCyb?=
 =?us-ascii?Q?Vm0Ju9dwW0euAyiVW5XftBhFA9v1iY+b2Il6J0xe1bfJ7hANuCo7/zXBrQGd?=
 =?us-ascii?Q?E3rOZQTsb7cyq8P7ReQbE4sVFDOzI36wHD2RAYpti7N8bIqn35c4Ig+JrFVz?=
 =?us-ascii?Q?0NnKS5AjQDFJbnqZsCME12eTLqTJ2sMjMhQvX/qJ5LtQTL/x4NNShamp2ewa?=
 =?us-ascii?Q?ouEAnpq9Jgyay1rYxW2z1UlsXkE+iMNum0rq1QxH5UcImEj401sDCVMtxJzN?=
 =?us-ascii?Q?Qv39gWo6tajXNkhCKmvNVHwPcjeRNyTwqnwglnPBWA4pgVvrVJe21l+v4Jxl?=
 =?us-ascii?Q?58ouRHVLvaNVjjIp5/RgSeCnh8FIEtV/lbhr/oHaHINhNZCJJzmSdwjWf1ut?=
 =?us-ascii?Q?/1ICMQgd+ocZ3hHcNQqiPeaX0Ii2CdOQn41VXOZet4V8Tp9JnhnOLjXze/vZ?=
 =?us-ascii?Q?RoFt2ku8FrDMvc2ncZn8i46Mfq/Kzz7lkMt+96Jx9lUUivqXrZm74F/1z5oB?=
 =?us-ascii?Q?bQcZ8cZQxFoSUhv4GbaxBSlVzGzjLDDh8FXu/VmElxVjryfld/bXEbgBDlBE?=
 =?us-ascii?Q?KRyAXOHQK8dVqIqTKGFGs+TSYh/0XqKr4/2JwP/J7LotIAVLo3uObo5Ku6kV?=
 =?us-ascii?Q?5R2mq/gG5nVWUePdtSgH/6UOPPY0YpnaMIz1KdwXPGbU5yJS0scLRUf7ORZ8?=
 =?us-ascii?Q?YWZTQStr74p4JswpNPRP//w7/vUTv08JbgrwAA81qqRsagEYsVKYStX/JdJ8?=
 =?us-ascii?Q?vcqrFn8Had9I2+/dAlK3XB5ctTPT0H5chT8QZwGVzqpPEHe2aHE9Ys1djMmo?=
 =?us-ascii?Q?CXhSaGNhOCdkFy4gT0We8R1pApeB1N7dbrWc5Chd2K/DPxyAygXLaqWqGs9N?=
 =?us-ascii?Q?9VNhUIULqbl+GdZ/AOySgGtwkLHXdPcH55xIrvN8tVop+fAKjnI1MooWI29e?=
 =?us-ascii?Q?uXFq5IFRRahsrBO+TRZcto3ejAXwMzzaLT71acjBK47VnVM1I4J3un2EGd4q?=
 =?us-ascii?Q?fptqpEMxMW12bo27LrQFfjLc+Qn8dYzhetg1XKyQn0LbZEny4PzW+K8Qsah+?=
 =?us-ascii?Q?pnE+WVCpDT7Q48nm8XhvDenrWC94lxevCbVf8u8hXG13SBKqdrODYs6JbXIw?=
 =?us-ascii?Q?oZIh3oRDK/CSvEhdUgvPOihc/zWcFG2TDncXixjOCFUJLZ5S1A5Te1jmnZNg?=
 =?us-ascii?Q?2qgcXK66/JDDlazVegCFtIAFYlUV4pgCJdG3PRClcr4P+9CcTee8vVkdMAAp?=
 =?us-ascii?Q?WoWTR5Vob8L757vK0TnR5U0RTU/z7cwfoVUCjDTAegMTwrGhccAoDPnjLKDh?=
 =?us-ascii?Q?DNzkWQk40Og1XJO3FP5dYHaL?=
x-ms-exchange-transport-forked: True
Content-ID: <AC3397F50CBE58469B51BB8E9DC2F662@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: equinix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR04MB0762.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7608cad5-7260-44a4-1166-08d8f53a815a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2021 18:18:09.8867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72adb271-2fc7-4afe-a5ee-9de6a59f6bfb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UGeVNydP2XiYIOmax/4ChE+ZeAJjVqku8jbSKXdvZCmnwLJQOZAo5sc4u1Ns6iAWArjOIJuSnUkBxYZpKpfaJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5531
X-Proofpoint-ORIG-GUID: 9xFTfW-aWC2nPu82TyuKK2VFTkpxKw2F
X-Proofpoint-GUID: 9xFTfW-aWC2nPu82TyuKK2VFTkpxKw2F
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-04-01_09:2021-04-01,
 2021-04-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 suspectscore=0
 malwarescore=0 mlxscore=0 adultscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2103310000 definitions=main-2104010119
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.159.192 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lS1tz-0007Vg-Ri
Subject: [Openipmi-developer] Re [PATCH v2 21/21] ipmi: kcs_bmc_aspeed:
 Optionally apply status address
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
 "chiawei_wang@aspeedtech.com" <chiawei_wang@aspeedtech.com>,
 "ryan_chen@aspeedtech.com" <ryan_chen@aspeedtech.com>,
 "tmaimon77@gmail.com" <tmaimon77@gmail.com>,
 "minyard@acm.org" <minyard@acm.org>,
 "avifishman70@gmail.com" <avifishman70@gmail.com>,
 "venture@google.com" <venture@google.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tali.perry1@gmail.com" <tali.perry1@gmail.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "benjaminfair@google.com" <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Mar 19, 2021 at 01:27:52AM CDT, Andrew Jeffery wrote:
>Some Aspeed KCS devices can derive the status register address from the
>address of the data register. As such, the address of the status
>register can be implicit in the configuration if desired. On the other
>hand, sometimes address schemes might be requested that are incompatible
>with the default addressing scheme. Allow these requests where possible
>if the devicetree specifies the status register address.
>
>Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>---
> drivers/char/ipmi/kcs_bmc_aspeed.c | 113 +++++++++++++++++++++--------
> 1 file changed, 81 insertions(+), 32 deletions(-)
>
>diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
>index 7334b1f51dcc..98789b837690 100644
>--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
>+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
>@@ -83,6 +83,8 @@
> #define LPC_STR2             0x040
> #define LPC_STR3             0x044
> #define LPC_HICRB            0x100
>+#define     LPC_HICRB_EN16LADR2      BIT(5)
>+#define     LPC_HICRB_EN16LADR1      BIT(4)
> #define     LPC_HICRB_IBFIE4         BIT(1)
> #define     LPC_HICRB_LPC4E          BIT(0)
> #define LPC_HICRC            0x104
>@@ -96,6 +98,11 @@
> #define LPC_IDR4             0x114
> #define LPC_ODR4             0x118
> #define LPC_STR4             0x11C
>+#define LPC_LSADR12	     0x120
>+#define     LPC_LSADR12_LSADR2_MASK  GENMASK(31, 16)
>+#define     LPC_LSADR12_LSADR2_SHIFT 16
>+#define     LPC_LSADR12_LSADR1_MASK  GENMASK(15, 0)
>+#define     LPC_LSADR12_LSADR1_SHIFT 0
>
> #define OBE_POLL_PERIOD	     (HZ / 2)
>
>@@ -123,7 +130,7 @@ struct aspeed_kcs_bmc {
>
> struct aspeed_kcs_of_ops {
> 	int (*get_channel)(struct platform_device *pdev);
>-	int (*get_io_address)(struct platform_device *pdev);
>+	int (*get_io_address)(struct platform_device *pdev, u32 addrs[2]);
> };
>
> static inline struct aspeed_kcs_bmc *to_aspeed_kcs_bmc(struct kcs_bmc_device *kcs_bmc)
>@@ -217,38 +224,64 @@ static void aspeed_kcs_updateb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask,
>  *     C. KCS4
>  *        D / C : CA4h / CA5h
>  */
>-static void aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u16 addr)
>+static int aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u32 addrs[2], int nr_addrs)
> {
> 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
>
>-	switch (kcs_bmc->channel) {
>+	if (WARN_ON(nr_addrs < 1 || nr_addrs > 2))
>+		return -EINVAL;
>+
>+	switch (priv->kcs_bmc.channel) {
> 	case 1:
>-		regmap_update_bits(priv->map, LPC_HICR4,
>-				LPC_HICR4_LADR12AS, 0);
>-		regmap_write(priv->map, LPC_LADR12H, addr >> 8);
>-		regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
>+		regmap_update_bits(priv->map, LPC_HICR4, LPC_HICR4_LADR12AS, 0);
>+		regmap_write(priv->map, LPC_LADR12H, addrs[0] >> 8);
>+		regmap_write(priv->map, LPC_LADR12L, addrs[0] & 0xFF);
>+		if (nr_addrs == 2) {
>+			regmap_update_bits(priv->map, LPC_LSADR12, LPC_LSADR12_LSADR1_MASK,
>+					   addrs[1] << LPC_LSADR12_LSADR1_SHIFT);
>+
>+			regmap_update_bits(priv->map, LPC_HICRB, LPC_HICRB_EN16LADR1,
>+					   LPC_HICRB_EN16LADR1);
>+		}
> 		break;
>
> 	case 2:
>-		regmap_update_bits(priv->map, LPC_HICR4,
>-				LPC_HICR4_LADR12AS, LPC_HICR4_LADR12AS);
>-		regmap_write(priv->map, LPC_LADR12H, addr >> 8);
>-		regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
>+		regmap_update_bits(priv->map, LPC_HICR4, LPC_HICR4_LADR12AS, LPC_HICR4_LADR12AS);
>+		regmap_write(priv->map, LPC_LADR12H, addrs[0] >> 8);
>+		regmap_write(priv->map, LPC_LADR12L, addrs[0] & 0xFF);
>+		if (nr_addrs == 2) {
>+			regmap_update_bits(priv->map, LPC_LSADR12, LPC_LSADR12_LSADR2_MASK,
>+					   addrs[1] << LPC_LSADR12_LSADR2_SHIFT);
>+
>+			regmap_update_bits(priv->map, LPC_HICRB, LPC_HICRB_EN16LADR2,
>+					   LPC_HICRB_EN16LADR2);
>+		}
> 		break;
>
> 	case 3:
>-		regmap_write(priv->map, LPC_LADR3H, addr >> 8);
>-		regmap_write(priv->map, LPC_LADR3L, addr & 0xFF);
>+		if (nr_addrs == 2) {
>+			dev_err(priv->kcs_bmc.dev,
>+				"Channel 3 only supports inferred status IO address\n");
>+			return -EINVAL;
>+		}
>+
>+		regmap_write(priv->map, LPC_LADR3H, addrs[0] >> 8);
>+		regmap_write(priv->map, LPC_LADR3L, addrs[0] & 0xFF);
> 		break;
>
> 	case 4:
>-		regmap_write(priv->map, LPC_LADR4, ((addr + 1) << 16) |
>-			addr);
>+		if (nr_addrs == 1)
>+			regmap_write(priv->map, LPC_LADR4, ((addrs[0] + 1) << 16) | addrs[0]);
>+		else
>+			regmap_write(priv->map, LPC_LADR4, (addrs[1] << 16) | addrs[0]);
>+
> 		break;
>
> 	default:
>-		break;
>+		return -EINVAL;
> 	}
>+
>+	return 0;
> }
>
> static inline int aspeed_kcs_map_serirq_type(u32 dt_type)
>@@ -462,18 +495,18 @@ static int aspeed_kcs_of_v1_get_channel(struct platform_device *pdev)
> 	return channel;
> }
>
>-static int aspeed_kcs_of_v1_get_io_address(struct platform_device *pdev)
>+static int
>+aspeed_kcs_of_v1_get_io_address(struct platform_device *pdev, u32 addrs[2])
> {
>-	u32 slave;
> 	int rc;
>
>-	rc = of_property_read_u32(pdev->dev.of_node, "kcs_addr", &slave);
>-	if (rc || slave > 0xffff) {
>+	rc = of_property_read_u32(pdev->dev.of_node, "kcs_addr", addrs);
>+	if (rc || addrs[0] > 0xffff) {
> 		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
> 		return -EINVAL;
> 	}
>
>-	return slave;
>+	return 1;
> }
>
> static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
>@@ -509,16 +542,27 @@ static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
> 	return -EINVAL;
> }
>
>-static int aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev)
>+static int
>+aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev, u32 addrs[2])
> {
>-	uint32_t slave;
> 	int rc;
>
>-	rc = of_property_read_u32(pdev->dev.of_node, "aspeed,lpc-io-reg", &slave);
>-	if (rc || slave > 0xffff)
>+	rc = of_property_read_variable_u32_array(pdev->dev.of_node,
>+						 "aspeed,lpc-io-reg",
>+						 addrs, 1, 2);
>+	if (rc < 0)
>+		return rc;
>+
>+	if (WARN_ON(rc == 0))
>+		return -EINVAL;

Is this check necessary?  It looks like
of_property_read_variable_u32_array() should fail in that case given
sz_min==1, so this seems like it should be impossible to trigger.

>+
>+	if (addrs[0] > 0xffff)
>+		return -EINVAL;
>+
>+	if (rc == 2 && addrs[1] > 0xffff)
> 		return -EINVAL;
>
>-	return slave;
>+	return rc;
> }
>
> static int aspeed_kcs_probe(struct platform_device *pdev)
>@@ -527,9 +571,11 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
> 	struct kcs_bmc_device *kcs_bmc;
> 	struct aspeed_kcs_bmc *priv;
> 	struct device_node *np;
>-	int rc, channel, addr;
> 	bool have_upstream_irq;
> 	u32 upstream_irq[2];
>+	int rc, channel;
>+	int nr_addrs;
>+	u32 addrs[2];
>
> 	np = pdev->dev.of_node->parent;
> 	if (!of_device_is_compatible(np, "aspeed,ast2400-lpc-v2") &&
>@@ -547,9 +593,9 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
> 	if (channel < 0)
> 		return channel;
>
>-	addr = ops->get_io_address(pdev);
>-	if (addr < 0)
>-		return addr;
>+	nr_addrs = ops->get_io_address(pdev, addrs);
>+	if (nr_addrs < 0)
>+		return nr_addrs;
>
> 	np = pdev->dev.of_node;
> 	rc = of_property_read_u32_array(np, "aspeed,lpc-interrupts", upstream_irq, 2);
>@@ -578,7 +624,9 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
> 	priv->obe.remove = false;
> 	timer_setup(&priv->obe.timer, aspeed_kcs_check_obe, 0);
>
>-	aspeed_kcs_set_address(kcs_bmc, addr);
>+	rc = aspeed_kcs_set_address(kcs_bmc, addrs, nr_addrs);
>+	if (rc)
>+		return rc;
>
> 	/* Host to BMC IRQ */
> 	rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
>@@ -600,7 +648,8 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
> 	if (rc < 0)
> 		return rc;
>
>-	dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n", kcs_bmc->channel, addr);
>+	dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
>+			kcs_bmc->channel, addrs[0]);
>
> 	return 0;
> }
>-- 
>2.27.0
>

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
