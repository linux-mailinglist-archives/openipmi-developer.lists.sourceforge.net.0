Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB35B359372
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 05:57:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUiGS-0000Ru-Lu; Fri, 09 Apr 2021 03:57:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=5733813a0f=zweiss@equinix.com>)
 id 1lUiGR-0000Rm-9o
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LdqnQLHGFQMyGQ3rr3giJ3xBiR66orltmmSNi1APXLc=; b=Xxd+T/xnsrRUAb6Ax11P3igUPz
 r+ACHZeZP0bCGBrHxsJ8Ufz2mbIV41BSE1dUYySULmWktxnLlN7urDpIz79UPaHW5nIE1MY7A0nBs
 dzYaavhYjO79Lx5F/NOLPY3xGb0vSou4o2wNn9afsUi3040a0z7m7jQhA3LkEX2RSsy8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LdqnQLHGFQMyGQ3rr3giJ3xBiR66orltmmSNi1APXLc=; b=Ip0v+nwUlGGIt6IXWR9IEFoXq3
 uYowNMBuRqv4+FodgpToUUfAXuSpb0iNQD977x7ArbBVS+OvoSm2nS4NlMvYiEtkuDu9H4LOCt7U2
 T/DboSBoueHQX0A2bAH2rNzJCf/R1Y8/uCFZ7DmCbZ52tbtQRpoLlZ702BlJkOHbb7WQ=;
Received: from mx0a-00268f01.pphosted.com ([148.163.148.236])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUiGA-00876e-3R
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:56:59 +0000
Received: from pps.filterd (m0105196.ppops.net [127.0.0.1])
 by mx0a-00268f01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 1393n4in003942; Fri, 9 Apr 2021 03:56:05 GMT
Received: from nam04-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2054.outbound.protection.outlook.com [104.47.44.54])
 by mx0a-00268f01.pphosted.com with ESMTP id 37t48m26u1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 09 Apr 2021 03:56:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bodHrKey1PKOrSke6bpgSQ/6YnnruVBdMFEDxjQoek2H1SA+bFU5uHHAgXPCACqPKFp8mjAu6S76x6uX7CRFvnfQ/lb98J79dIg3gldlSI63hKO8KU82c0K+UOjQYwtke2ZdxshPk8F5lFROpgMzxZ9xnpYHVjX0GvqYJ6IdfiNW4wPzCjBjeRjVnebNzujKSd/4sFFNxIQJK00kyLpcA9Q25x+Sc3QFwtRTrfTinaEllebP3eC3EIR3bswuN1029lVk1+t0U4yB+87StxAtCYelPp8cjeyBZTMXYIt/sTNKB+X1p980Tbk0ru/UsoFcK0Obl2hpts8ifFke1qlKcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LdqnQLHGFQMyGQ3rr3giJ3xBiR66orltmmSNi1APXLc=;
 b=dpyAZtEdl97i70GRlVMphS4zfkMRu+M1pJZrqWU7Sr/y2nWxkwVyeXaf7uzjU6RkFVLPaRxTa0W9HcxUXsVur0omz4TCTrN5O94xGKdvl+c7EiSoHagkN2TZUwV8blkkFvARaz50S/MU8yd9LnOle3xC4Z0+wzHqeVu6JMjbobJQMZwmWfxnlIYY4T2VaL1Ud9BLRFiOHOKZvVyS59w0fqPGNUo6kKSt5bwFNEGFh6LTBnv+Bm1xRbWGBQzsAyoxliKMpx27NwRVP5r3ptXCma7KMcMnYzeGx58lRvG2WUma2ZUx0a2lXbaB/K36weOewgAGlD+GgehySg7Nqcqk2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=equinix.com; dmarc=pass action=none header.from=equinix.com;
 dkim=pass header.d=equinix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=equinixinc.onmicrosoft.com; s=selector2-equinixinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LdqnQLHGFQMyGQ3rr3giJ3xBiR66orltmmSNi1APXLc=;
 b=ebRhjkEovGARjXrZlA44lZQszRNaW3gsI3TUUswsuY0lOElKXnQ+jdjDNtHnCyoGSOKmMSu9CsW0fX9kFjKBTif6uSui2OVPyJ/xsuigGP3s2x+6SuZtls1mlJbj5Jv2mO7LYFaY+4Q0P0GPVbwWngUTx/H5vkN/aJw2Jg+I9Sk=
Received: from DM5PR04MB0762.namprd04.prod.outlook.com (2603:10b6:3:f3::13) by
 DM6PR04MB6281.namprd04.prod.outlook.com (2603:10b6:5:1e8::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3999.28; Fri, 9 Apr 2021 03:56:02 +0000
Received: from DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::4c98:aeb:87a8:13ad]) by DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::4c98:aeb:87a8:13ad%5]) with mapi id 15.20.4020.017; Fri, 9 Apr 2021
 03:56:01 +0000
From: Zev Weiss <zweiss@equinix.com>
To: Andrew Jeffery <andrew@aj.id.au>
Thread-Topic: [PATCH v2 09/21] ipmi: kcs_bmc: Split out kcs_bmc_cdev_ipmi
Thread-Index: AQHXLPRB0XKWw1jtxk6ym3nb33svGw==
Date: Fri, 9 Apr 2021 03:56:01 +0000
Message-ID: <YG/QUCIdEzW1ghVA@packtop>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-9-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-9-andrew@aj.id.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none header.from=equinix.com;
x-originating-ip: [24.181.166.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e00c22f-8b1b-4bbc-77f4-08d8fb0b6457
x-ms-traffictypediagnostic: DM6PR04MB6281:
x-microsoft-antispam-prvs: <DM6PR04MB62817E948151F48922E6B34DC3739@DM6PR04MB6281.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:121;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dhXBKUlHyGfWvxCh8d57fiV6nA9Vlyk3RRG0pWU9AERQAwQKMkd01ph7Q3eTzf8CYxW3d/gG2PwaTsQeyHdcOGojhWHmlUlcZXbTN/B9TV7Fky5bzLIwJqZBRbCD+B0rgQKkVtUzlXO6R38SQAk7NGVfXqa1V9P7y7mdEO/7ADIibsvHdEhPZ/zm4g0+MAmNeLvOubx8VJTABgbSbqI9HS13r+qJlbTn+BXgb2vOdb0nmLpEp36BDSIQiiRPZaFrNQ2W8WcLyrxdWrhwQ3W4UKMZdJgMtH+HWUpL8niI416x/s9rA2+IKgdv6EWk1wIWnqO89LDF8FsIfOAdDcPCBM/Bz8qKI02dYGQxuZ3zsBvVo7EW+dxxOo4ULDhbw14wmEB49s4XSz8n4KaTZ5mx5Ui+hmxJsSDg1/0ukw7IUMBz23rIaEZkDIrFbr2ObRFJvXyFTIM/nFucGrHjCA9J6j4tDyB3wST0gn84i7AAqB5B1tgqDTcJjaWsPdp0FwagMRqdiDb06RnOMO4SCTKmJvrm9hUVyed/lw2WmmMeVD5vTZLCgqhvZ7duguszL3vChGh4iDRIakVV6nkRIPuecsq3EjSqQoaHv/3K0R0QslGNCBnBarwpYed4hK8envJ6U4v6DXDmcUhkwychWPY219HtImAK+njWn6jVjDqPlIc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR04MB0762.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(346002)(136003)(366004)(39860400002)(376002)(396003)(4326008)(8676002)(66476007)(66946007)(64756008)(26005)(6916009)(86362001)(7416002)(186003)(33716001)(2906002)(6512007)(8936002)(9686003)(38100700001)(76116006)(83380400001)(71200400001)(66446008)(66556008)(5660300002)(6506007)(6486002)(478600001)(316002)(54906003)(30864003)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?4bwGbLwpAuY/Jawk40rcTkDOgIwTy9/eYBQMUJY5z1URFFxNRvT0OI8I4J1u?=
 =?us-ascii?Q?npKXWHveBBAfNDoRW6zz0GGMQaQVlENpO43iW0+mDCtUpxWJQHctJnpMgfnU?=
 =?us-ascii?Q?UyaJtG0HoTn8yD2XO2zLiDbPsKQaeIxwKmH4yz3D1eTGCBrTiUotxee8MyWT?=
 =?us-ascii?Q?ccjbJbE9/7a0vh5BZ1TKF7Umi4bdVIyFqnnoNCiHtsKNlJGkqQ6M6EtFadUt?=
 =?us-ascii?Q?PwdLL/Dv1v0iMHVWZGOYpWVv+CCXjDaWiS2UA98/ZwewkVFDlwhbN1XbkncK?=
 =?us-ascii?Q?woToF4OEeyDuWO84bcvfER6EkGi0rsnLwUk7IQunZ+Fy4OrrN2OBRf/9V9Ne?=
 =?us-ascii?Q?xzb9vxU+Hc10svHFaS5c8ABYZ68SHQ7LqEW5tmgM9BgaDaUEWY68mnUEugaa?=
 =?us-ascii?Q?C8Thcw9uC17OPrFep+ZdI9fW8QJ1ZFER4KFmWoquwgW0WlsP3WytRd5i78Sb?=
 =?us-ascii?Q?cboOzhBOTS+6w2gp1HZ7vb4FrfkBRVVmWOr19a9VLRG/hLZfHDNcon9XZ4OW?=
 =?us-ascii?Q?8VDbMbb2GlxM7juOav+rNhZEurjV/NamV6ynNtLYmrbOmO6Vn5rs3hdq93mC?=
 =?us-ascii?Q?64u/uy4ORGRe+6d3ipvy8sKByvXfKjQpGQFkoUcivMMx2OPOVEvguKo1EbET?=
 =?us-ascii?Q?AYdk0gHXoHgddMQbR/OzvuuhB0OCEuclUUtlfTw7HEOZpGYz0+fgRPrijdrO?=
 =?us-ascii?Q?8p8cM5BkAEep5CNRH6QNCVyToSjGoTojnovxGa1NSn3w6K6TPpNeyvUIYiZo?=
 =?us-ascii?Q?vzPEXd4iC4a79jAEtHc2ZXjf16pianYSGVhmN/9Os2VcLVzdxWKQVuKsYDRP?=
 =?us-ascii?Q?AuGmZzrLyvlldSVpBC9hAE6nG3eAILgM64uUbz12ifIe/rgJhumy6MlnKg5t?=
 =?us-ascii?Q?a7bC/rTsCX+rXHWDKVBU/G08DOOMTd659TpqzMtM6OrbyqSd8yEH+JpE7a/z?=
 =?us-ascii?Q?Ho6YEQOaS8t3fgB/BqH7kBXl1u7hjr2n4D5wduUKgUICcviYk07DtTtlyXwh?=
 =?us-ascii?Q?6zKIcRw7ZydJq39+sJoWXKFVMNSIv+XQHoO6JhlF6bGwAnAq5/OIZ0ckedWR?=
 =?us-ascii?Q?my2BHjWEeGqD2mBarIP1c6zImdMFmuYNEsKcqWN+g/lmwlgJbjD4eLqE2E6/?=
 =?us-ascii?Q?DklskuQYRRHJnso08PQDElnAz5jUgvQ6XmeBfbNwOuMDutDjavEGZDoPcDCn?=
 =?us-ascii?Q?sil/ETwb4cIQFFiXkgwNcxVX50/8thhIEw5oYAtVHBzrBiH6Z4HS0l7WGvNe?=
 =?us-ascii?Q?3jI2RkuMr+8GlLczTfSHTdaX2ji1mvGQTeE6JFHc/WMZ3PDdo6JrvQv3wnEW?=
 =?us-ascii?Q?ExCiRidgak7tk3UAp6AoQ5H1RX3oTD2OoELdVt0Vu+7bxg=3D=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <EE6753343E0E8B41A5CD502C97EF8C4C@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: equinix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR04MB0762.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e00c22f-8b1b-4bbc-77f4-08d8fb0b6457
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2021 03:56:01.7682 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72adb271-2fc7-4afe-a5ee-9de6a59f6bfb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IWAEezmlTQidopuo3XxIL1sSZeeqY6eCEL9EmECAj+/cMdNIqeCgryOqSv31hjgLp9VPw+WYDR0vDp2n8AYlpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6281
X-Proofpoint-ORIG-GUID: vLUZRBDHBfdffWSbEI8B6Yt2s-yBVOK3
X-Proofpoint-GUID: vLUZRBDHBfdffWSbEI8B6Yt2s-yBVOK3
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-04-09_03:2021-04-08,
 2021-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 priorityscore=1501 mlxlogscore=999 bulkscore=0 mlxscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104090025
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.148.236 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lUiGA-00876e-3R
Subject: Re: [Openipmi-developer] [PATCH v2 09/21] ipmi: kcs_bmc: Split out
 kcs_bmc_cdev_ipmi
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

On Fri, Mar 19, 2021 at 01:27:40AM CDT, Andrew Jeffery wrote:
>Take steps towards defining a coherent API to separate the KCS device
>drivers from the userspace interface. Decreasing the coupling will
>improve the separation of concerns and enable the introduction of
>alternative userspace interfaces.
>
>For now, simply split the chardev logic out to a separate file. The code
>continues to build into the same module.
>
>Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>---
> drivers/char/ipmi/Makefile            |   2 +-
> drivers/char/ipmi/kcs_bmc.c           | 423 +------------------------
> drivers/char/ipmi/kcs_bmc.h           |  10 +-
> drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 428 ++++++++++++++++++++++++++
> 4 files changed, 451 insertions(+), 412 deletions(-)
> create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
>
>diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
>index 0822adc2ec41..a302bc865370 100644
>--- a/drivers/char/ipmi/Makefile
>+++ b/drivers/char/ipmi/Makefile
>@@ -22,7 +22,7 @@ obj-$(CONFIG_IPMI_SSIF) += ipmi_ssif.o
> obj-$(CONFIG_IPMI_POWERNV) += ipmi_powernv.o
> obj-$(CONFIG_IPMI_WATCHDOG) += ipmi_watchdog.o
> obj-$(CONFIG_IPMI_POWEROFF) += ipmi_poweroff.o
>-obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o
>+obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o kcs_bmc_cdev_ipmi.o
> obj-$(CONFIG_ASPEED_BT_IPMI_BMC) += bt-bmc.o
> obj-$(CONFIG_ASPEED_KCS_IPMI_BMC) += kcs_bmc_aspeed.o
> obj-$(CONFIG_NPCM7XX_KCS_IPMI_BMC) += kcs_bmc_npcm7xx.o
>diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
>index c4336c1f2d6d..ef5c48ffe74a 100644
>--- a/drivers/char/ipmi/kcs_bmc.c
>+++ b/drivers/char/ipmi/kcs_bmc.c
>@@ -3,446 +3,51 @@
>  * Copyright (c) 2015-2018, Intel Corporation.
>  */
>
>-#define pr_fmt(fmt) "kcs-bmc: " fmt
>-
>-#include <linux/errno.h>
>-#include <linux/io.h>
>-#include <linux/ipmi_bmc.h>
> #include <linux/module.h>
>-#include <linux/platform_device.h>
>-#include <linux/poll.h>
>-#include <linux/sched.h>
>-#include <linux/slab.h>
>
> #include "kcs_bmc.h"
>
>-#define DEVICE_NAME "ipmi-kcs"
>-
>-#define KCS_MSG_BUFSIZ    1000
>-
>-#define KCS_ZERO_DATA     0
>-
>-
>-/* IPMI 2.0 - Table 9-1, KCS Interface Status Register Bits */
>-#define KCS_STATUS_STATE(state) (state << 6)
>-#define KCS_STATUS_STATE_MASK   GENMASK(7, 6)
>-#define KCS_STATUS_CMD_DAT      BIT(3)
>-#define KCS_STATUS_SMS_ATN      BIT(2)
>-#define KCS_STATUS_IBF          BIT(1)
>-#define KCS_STATUS_OBF          BIT(0)
>-
>-/* IPMI 2.0 - Table 9-2, KCS Interface State Bits */
>-enum kcs_states {
>-	IDLE_STATE  = 0,
>-	READ_STATE  = 1,
>-	WRITE_STATE = 2,
>-	ERROR_STATE = 3,
>-};
>-
>-/* IPMI 2.0 - Table 9-3, KCS Interface Control Codes */
>-#define KCS_CMD_GET_STATUS_ABORT  0x60
>-#define KCS_CMD_WRITE_START       0x61
>-#define KCS_CMD_WRITE_END         0x62
>-#define KCS_CMD_READ_BYTE         0x68
>-
>-static inline u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc)
>+u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc)
> {
> 	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
> }
>+EXPORT_SYMBOL(kcs_bmc_read_data);
>
>-static inline void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data)
>+void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data)
> {
> 	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
> }
>+EXPORT_SYMBOL(kcs_bmc_write_data);
>
>-static inline u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc)
>+u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc)
> {
> 	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
> }
>+EXPORT_SYMBOL(kcs_bmc_read_status);
>
>-static inline void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data)
>+void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data)
> {
> 	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
> }
>+EXPORT_SYMBOL(kcs_bmc_write_status);
>
>-static void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
>+void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
> {
> 	kcs_bmc->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
> }
>+EXPORT_SYMBOL(kcs_bmc_update_status);
>
>-static inline void set_state(struct kcs_bmc *kcs_bmc, u8 state)
>-{
>-	kcs_bmc_update_status(kcs_bmc, KCS_STATUS_STATE_MASK,
>-					KCS_STATUS_STATE(state));
>-}
>-
>-static void kcs_force_abort(struct kcs_bmc *kcs_bmc)
>-{
>-	set_state(kcs_bmc, ERROR_STATE);
>-	kcs_bmc_read_data(kcs_bmc);
>-	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>-
>-	kcs_bmc->phase = KCS_PHASE_ERROR;
>-	kcs_bmc->data_in_avail = false;
>-	kcs_bmc->data_in_idx = 0;
>-}
>-
>-static void kcs_bmc_handle_data(struct kcs_bmc *kcs_bmc)
>-{
>-	u8 data;
>-
>-	switch (kcs_bmc->phase) {
>-	case KCS_PHASE_WRITE_START:
>-		kcs_bmc->phase = KCS_PHASE_WRITE_DATA;
>-		fallthrough;
>-
>-	case KCS_PHASE_WRITE_DATA:
>-		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
>-			set_state(kcs_bmc, WRITE_STATE);
>-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>-			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
>-						kcs_bmc_read_data(kcs_bmc);
>-		} else {
>-			kcs_force_abort(kcs_bmc);
>-			kcs_bmc->error = KCS_LENGTH_ERROR;
>-		}
>-		break;
>-
>-	case KCS_PHASE_WRITE_END_CMD:
>-		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
>-			set_state(kcs_bmc, READ_STATE);
>-			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
>-						kcs_bmc_read_data(kcs_bmc);
>-			kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
>-			kcs_bmc->data_in_avail = true;
>-			wake_up_interruptible(&kcs_bmc->queue);
>-		} else {
>-			kcs_force_abort(kcs_bmc);
>-			kcs_bmc->error = KCS_LENGTH_ERROR;
>-		}
>-		break;
>-
>-	case KCS_PHASE_READ:
>-		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
>-			set_state(kcs_bmc, IDLE_STATE);
>-
>-		data = kcs_bmc_read_data(kcs_bmc);
>-		if (data != KCS_CMD_READ_BYTE) {
>-			set_state(kcs_bmc, ERROR_STATE);
>-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>-			break;
>-		}
>-
>-		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
>-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>-			kcs_bmc->phase = KCS_PHASE_IDLE;
>-			break;
>-		}
>-
>-		kcs_bmc_write_data(kcs_bmc,
>-			kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
>-		break;
>-
>-	case KCS_PHASE_ABORT_ERROR1:
>-		set_state(kcs_bmc, READ_STATE);
>-		kcs_bmc_read_data(kcs_bmc);
>-		kcs_bmc_write_data(kcs_bmc, kcs_bmc->error);
>-		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR2;
>-		break;
>-
>-	case KCS_PHASE_ABORT_ERROR2:
>-		set_state(kcs_bmc, IDLE_STATE);
>-		kcs_bmc_read_data(kcs_bmc);
>-		kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>-		kcs_bmc->phase = KCS_PHASE_IDLE;
>-		break;
>-
>-	default:
>-		kcs_force_abort(kcs_bmc);
>-		break;
>-	}
>-}
>-
>-static void kcs_bmc_handle_cmd(struct kcs_bmc *kcs_bmc)
>-{
>-	u8 cmd;
>-
>-	set_state(kcs_bmc, WRITE_STATE);
>-	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>-
>-	cmd = kcs_bmc_read_data(kcs_bmc);
>-	switch (cmd) {
>-	case KCS_CMD_WRITE_START:
>-		kcs_bmc->phase = KCS_PHASE_WRITE_START;
>-		kcs_bmc->error = KCS_NO_ERROR;
>-		kcs_bmc->data_in_avail = false;
>-		kcs_bmc->data_in_idx = 0;
>-		break;
>-
>-	case KCS_CMD_WRITE_END:
>-		if (kcs_bmc->phase != KCS_PHASE_WRITE_DATA) {
>-			kcs_force_abort(kcs_bmc);
>-			break;
>-		}
>-
>-		kcs_bmc->phase = KCS_PHASE_WRITE_END_CMD;
>-		break;
>-
>-	case KCS_CMD_GET_STATUS_ABORT:
>-		if (kcs_bmc->error == KCS_NO_ERROR)
>-			kcs_bmc->error = KCS_ABORTED_BY_COMMAND;
>-
>-		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR1;
>-		kcs_bmc->data_in_avail = false;
>-		kcs_bmc->data_in_idx = 0;
>-		break;
>-
>-	default:
>-		kcs_force_abort(kcs_bmc);
>-		kcs_bmc->error = KCS_ILLEGAL_CONTROL_CODE;
>-		break;
>-	}
>-}
>-
>+int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc);

This declaration looks a bit out of place here; should it be in
kcs_bmc.h instead?

> int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
> {
>-	unsigned long flags;
>-	int ret = -ENODATA;
>-	u8 status;
>-
>-	spin_lock_irqsave(&kcs_bmc->lock, flags);
>-
>-	status = kcs_bmc_read_status(kcs_bmc);
>-	if (status & KCS_STATUS_IBF) {
>-		if (!kcs_bmc->running)
>-			kcs_force_abort(kcs_bmc);
>-		else if (status & KCS_STATUS_CMD_DAT)
>-			kcs_bmc_handle_cmd(kcs_bmc);
>-		else
>-			kcs_bmc_handle_data(kcs_bmc);
>-
>-		ret = 0;
>-	}
>-
>-	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
>-
>-	return ret;
>+	return kcs_bmc_ipmi_event(kcs_bmc);
> }
> EXPORT_SYMBOL(kcs_bmc_handle_event);
>
>-static inline struct kcs_bmc *to_kcs_bmc(struct file *filp)
>-{
>-	return container_of(filp->private_data, struct kcs_bmc, miscdev);
>-}
>-
>-static int kcs_bmc_open(struct inode *inode, struct file *filp)
>-{
>-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>-	int ret = 0;
>-
>-	spin_lock_irq(&kcs_bmc->lock);
>-	if (!kcs_bmc->running)
>-		kcs_bmc->running = 1;
>-	else
>-		ret = -EBUSY;
>-	spin_unlock_irq(&kcs_bmc->lock);
>-
>-	return ret;
>-}
>-
>-static __poll_t kcs_bmc_poll(struct file *filp, poll_table *wait)
>-{
>-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>-	__poll_t mask = 0;
>-
>-	poll_wait(filp, &kcs_bmc->queue, wait);
>-
>-	spin_lock_irq(&kcs_bmc->lock);
>-	if (kcs_bmc->data_in_avail)
>-		mask |= EPOLLIN;
>-	spin_unlock_irq(&kcs_bmc->lock);
>-
>-	return mask;
>-}
>-
>-static ssize_t kcs_bmc_read(struct file *filp, char __user *buf,
>-			    size_t count, loff_t *ppos)
>-{
>-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>-	bool data_avail;
>-	size_t data_len;
>-	ssize_t ret;
>-
>-	if (!(filp->f_flags & O_NONBLOCK))
>-		wait_event_interruptible(kcs_bmc->queue,
>-					 kcs_bmc->data_in_avail);
>-
>-	mutex_lock(&kcs_bmc->mutex);
>-
>-	spin_lock_irq(&kcs_bmc->lock);
>-	data_avail = kcs_bmc->data_in_avail;
>-	if (data_avail) {
>-		data_len = kcs_bmc->data_in_idx;
>-		memcpy(kcs_bmc->kbuffer, kcs_bmc->data_in, data_len);
>-	}
>-	spin_unlock_irq(&kcs_bmc->lock);
>-
>-	if (!data_avail) {
>-		ret = -EAGAIN;
>-		goto out_unlock;
>-	}
>-
>-	if (count < data_len) {
>-		pr_err("channel=%u with too large data : %zu\n",
>-			kcs_bmc->channel, data_len);
>-
>-		spin_lock_irq(&kcs_bmc->lock);
>-		kcs_force_abort(kcs_bmc);
>-		spin_unlock_irq(&kcs_bmc->lock);
>-
>-		ret = -EOVERFLOW;
>-		goto out_unlock;
>-	}
>-
>-	if (copy_to_user(buf, kcs_bmc->kbuffer, data_len)) {
>-		ret = -EFAULT;
>-		goto out_unlock;
>-	}
>-
>-	ret = data_len;
>-
>-	spin_lock_irq(&kcs_bmc->lock);
>-	if (kcs_bmc->phase == KCS_PHASE_WRITE_DONE) {
>-		kcs_bmc->phase = KCS_PHASE_WAIT_READ;
>-		kcs_bmc->data_in_avail = false;
>-		kcs_bmc->data_in_idx = 0;
>-	} else {
>-		ret = -EAGAIN;
>-	}
>-	spin_unlock_irq(&kcs_bmc->lock);
>-
>-out_unlock:
>-	mutex_unlock(&kcs_bmc->mutex);
>-
>-	return ret;
>-}
>-
>-static ssize_t kcs_bmc_write(struct file *filp, const char __user *buf,
>-			     size_t count, loff_t *ppos)
>-{
>-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>-	ssize_t ret;
>-
>-	/* a minimum response size '3' : netfn + cmd + ccode */
>-	if (count < 3 || count > KCS_MSG_BUFSIZ)
>-		return -EINVAL;
>-
>-	mutex_lock(&kcs_bmc->mutex);
>-
>-	if (copy_from_user(kcs_bmc->kbuffer, buf, count)) {
>-		ret = -EFAULT;
>-		goto out_unlock;
>-	}
>-
>-	spin_lock_irq(&kcs_bmc->lock);
>-	if (kcs_bmc->phase == KCS_PHASE_WAIT_READ) {
>-		kcs_bmc->phase = KCS_PHASE_READ;
>-		kcs_bmc->data_out_idx = 1;
>-		kcs_bmc->data_out_len = count;
>-		memcpy(kcs_bmc->data_out, kcs_bmc->kbuffer, count);
>-		kcs_bmc_write_data(kcs_bmc, kcs_bmc->data_out[0]);
>-		ret = count;
>-	} else {
>-		ret = -EINVAL;
>-	}
>-	spin_unlock_irq(&kcs_bmc->lock);
>-
>-out_unlock:
>-	mutex_unlock(&kcs_bmc->mutex);
>-
>-	return ret;
>-}
>-
>-static long kcs_bmc_ioctl(struct file *filp, unsigned int cmd,
>-			  unsigned long arg)
>-{
>-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>-	long ret = 0;
>-
>-	spin_lock_irq(&kcs_bmc->lock);
>-
>-	switch (cmd) {
>-	case IPMI_BMC_IOCTL_SET_SMS_ATN:
>-		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
>-		break;
>-
>-	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
>-		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
>-		break;
>-
>-	case IPMI_BMC_IOCTL_FORCE_ABORT:
>-		kcs_force_abort(kcs_bmc);
>-		break;
>-
>-	default:
>-		ret = -EINVAL;
>-		break;
>-	}
>-
>-	spin_unlock_irq(&kcs_bmc->lock);
>-
>-	return ret;
>-}
>-
>-static int kcs_bmc_release(struct inode *inode, struct file *filp)
>-{
>-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>-
>-	spin_lock_irq(&kcs_bmc->lock);
>-	kcs_bmc->running = 0;
>-	kcs_force_abort(kcs_bmc);
>-	spin_unlock_irq(&kcs_bmc->lock);
>-
>-	return 0;
>-}
>-
>-static const struct file_operations kcs_bmc_fops = {
>-	.owner          = THIS_MODULE,
>-	.open           = kcs_bmc_open,
>-	.read           = kcs_bmc_read,
>-	.write          = kcs_bmc_write,
>-	.release        = kcs_bmc_release,
>-	.poll           = kcs_bmc_poll,
>-	.unlocked_ioctl = kcs_bmc_ioctl,
>-};
>-
>+struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel);

Similarly here.

> struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel)
> {
>-	struct kcs_bmc *kcs_bmc;
>-
>-	kcs_bmc = devm_kzalloc(dev, sizeof(*kcs_bmc) + sizeof_priv, GFP_KERNEL);
>-	if (!kcs_bmc)
>-		return NULL;
>-
>-	spin_lock_init(&kcs_bmc->lock);
>-	kcs_bmc->channel = channel;
>-
>-	mutex_init(&kcs_bmc->mutex);
>-	init_waitqueue_head(&kcs_bmc->queue);
>-
>-	kcs_bmc->data_in = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>-	kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>-	kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>-
>-	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
>-	kcs_bmc->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "%s%u",
>-					       DEVICE_NAME, channel);
>-	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
>-	    !kcs_bmc->miscdev.name)
>-		return NULL;
>-	kcs_bmc->miscdev.fops = &kcs_bmc_fops;
>-
>-	return kcs_bmc;
>+	return kcs_bmc_ipmi_alloc(dev, sizeof_priv, channel);
> }
> EXPORT_SYMBOL(kcs_bmc_alloc);
>
>diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
>index 970f53892f2d..febea0c8deb4 100644
>--- a/drivers/char/ipmi/kcs_bmc.h
>+++ b/drivers/char/ipmi/kcs_bmc.h
>@@ -104,6 +104,12 @@ static inline void *kcs_bmc_priv(struct kcs_bmc *kcs_bmc)
> }
>
> int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc);
>-struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv,
>-					u32 channel);
>+struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel);
>+
>+u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc);
>+void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data);
>+u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc);
>+void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data);
>+void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val);
>+
> #endif /* __KCS_BMC_H__ */
>diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
>new file mode 100644
>index 000000000000..82c77994e481
>--- /dev/null
>+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
>@@ -0,0 +1,428 @@
>+// SPDX-License-Identifier: GPL-2.0
>+/*
>+ * Copyright (c) 2015-2018, Intel Corporation.
>+ */
>+
>+#define pr_fmt(fmt) "kcs-bmc: " fmt
>+
>+#include <linux/errno.h>
>+#include <linux/io.h>
>+#include <linux/ipmi_bmc.h>
>+#include <linux/module.h>
>+#include <linux/platform_device.h>
>+#include <linux/poll.h>
>+#include <linux/sched.h>
>+#include <linux/slab.h>
>+
>+#include "kcs_bmc.h"
>+
>+#define DEVICE_NAME "ipmi-kcs"
>+
>+#define KCS_MSG_BUFSIZ    1000
>+
>+#define KCS_ZERO_DATA     0
>+
>+
>+/* IPMI 2.0 - Table 9-1, KCS Interface Status Register Bits */
>+#define KCS_STATUS_STATE(state) (state << 6)
>+#define KCS_STATUS_STATE_MASK   GENMASK(7, 6)
>+#define KCS_STATUS_CMD_DAT      BIT(3)
>+#define KCS_STATUS_SMS_ATN      BIT(2)
>+#define KCS_STATUS_IBF          BIT(1)
>+#define KCS_STATUS_OBF          BIT(0)
>+
>+/* IPMI 2.0 - Table 9-2, KCS Interface State Bits */
>+enum kcs_states {
>+	IDLE_STATE  = 0,
>+	READ_STATE  = 1,
>+	WRITE_STATE = 2,
>+	ERROR_STATE = 3,
>+};
>+
>+/* IPMI 2.0 - Table 9-3, KCS Interface Control Codes */
>+#define KCS_CMD_GET_STATUS_ABORT  0x60
>+#define KCS_CMD_WRITE_START       0x61
>+#define KCS_CMD_WRITE_END         0x62
>+#define KCS_CMD_READ_BYTE         0x68
>+
>+static inline void set_state(struct kcs_bmc *kcs_bmc, u8 state)
>+{
>+	kcs_bmc_update_status(kcs_bmc, KCS_STATUS_STATE_MASK,
>+					KCS_STATUS_STATE(state));
>+}
>+
>+static void kcs_bmc_ipmi_force_abort(struct kcs_bmc *kcs_bmc)
>+{
>+	set_state(kcs_bmc, ERROR_STATE);
>+	kcs_bmc_read_data(kcs_bmc);
>+	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>+
>+	kcs_bmc->phase = KCS_PHASE_ERROR;
>+	kcs_bmc->data_in_avail = false;
>+	kcs_bmc->data_in_idx = 0;
>+}
>+
>+static void kcs_bmc_ipmi_handle_data(struct kcs_bmc *kcs_bmc)
>+{
>+	u8 data;
>+
>+	switch (kcs_bmc->phase) {
>+	case KCS_PHASE_WRITE_START:
>+		kcs_bmc->phase = KCS_PHASE_WRITE_DATA;
>+		fallthrough;
>+
>+	case KCS_PHASE_WRITE_DATA:
>+		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
>+			set_state(kcs_bmc, WRITE_STATE);
>+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>+			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
>+						kcs_bmc_read_data(kcs_bmc);
>+		} else {
>+			kcs_bmc_ipmi_force_abort(kcs_bmc);
>+			kcs_bmc->error = KCS_LENGTH_ERROR;
>+		}
>+		break;
>+
>+	case KCS_PHASE_WRITE_END_CMD:
>+		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
>+			set_state(kcs_bmc, READ_STATE);
>+			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
>+						kcs_bmc_read_data(kcs_bmc);
>+			kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
>+			kcs_bmc->data_in_avail = true;
>+			wake_up_interruptible(&kcs_bmc->queue);
>+		} else {
>+			kcs_bmc_ipmi_force_abort(kcs_bmc);
>+			kcs_bmc->error = KCS_LENGTH_ERROR;
>+		}
>+		break;
>+
>+	case KCS_PHASE_READ:
>+		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
>+			set_state(kcs_bmc, IDLE_STATE);
>+
>+		data = kcs_bmc_read_data(kcs_bmc);
>+		if (data != KCS_CMD_READ_BYTE) {
>+			set_state(kcs_bmc, ERROR_STATE);
>+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>+			break;
>+		}
>+
>+		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
>+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>+			kcs_bmc->phase = KCS_PHASE_IDLE;
>+			break;
>+		}
>+
>+		kcs_bmc_write_data(kcs_bmc,
>+			kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
>+		break;
>+
>+	case KCS_PHASE_ABORT_ERROR1:
>+		set_state(kcs_bmc, READ_STATE);
>+		kcs_bmc_read_data(kcs_bmc);
>+		kcs_bmc_write_data(kcs_bmc, kcs_bmc->error);
>+		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR2;
>+		break;
>+
>+	case KCS_PHASE_ABORT_ERROR2:
>+		set_state(kcs_bmc, IDLE_STATE);
>+		kcs_bmc_read_data(kcs_bmc);
>+		kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>+		kcs_bmc->phase = KCS_PHASE_IDLE;
>+		break;
>+
>+	default:
>+		kcs_bmc_ipmi_force_abort(kcs_bmc);
>+		break;
>+	}
>+}
>+
>+static void kcs_bmc_ipmi_handle_cmd(struct kcs_bmc *kcs_bmc)
>+{
>+	u8 cmd;
>+
>+	set_state(kcs_bmc, WRITE_STATE);
>+	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
>+
>+	cmd = kcs_bmc_read_data(kcs_bmc);
>+	switch (cmd) {
>+	case KCS_CMD_WRITE_START:
>+		kcs_bmc->phase = KCS_PHASE_WRITE_START;
>+		kcs_bmc->error = KCS_NO_ERROR;
>+		kcs_bmc->data_in_avail = false;
>+		kcs_bmc->data_in_idx = 0;
>+		break;
>+
>+	case KCS_CMD_WRITE_END:
>+		if (kcs_bmc->phase != KCS_PHASE_WRITE_DATA) {
>+			kcs_bmc_ipmi_force_abort(kcs_bmc);
>+			break;
>+		}
>+
>+		kcs_bmc->phase = KCS_PHASE_WRITE_END_CMD;
>+		break;
>+
>+	case KCS_CMD_GET_STATUS_ABORT:
>+		if (kcs_bmc->error == KCS_NO_ERROR)
>+			kcs_bmc->error = KCS_ABORTED_BY_COMMAND;
>+
>+		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR1;
>+		kcs_bmc->data_in_avail = false;
>+		kcs_bmc->data_in_idx = 0;
>+		break;
>+
>+	default:
>+		kcs_bmc_ipmi_force_abort(kcs_bmc);
>+		kcs_bmc->error = KCS_ILLEGAL_CONTROL_CODE;
>+		break;
>+	}
>+}
>+
>+int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc);

Another instance...

>+int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc)
>+{
>+	unsigned long flags;
>+	int ret = -ENODATA;
>+	u8 status;
>+
>+	spin_lock_irqsave(&kcs_bmc->lock, flags);
>+
>+	status = kcs_bmc_read_status(kcs_bmc);
>+	if (status & KCS_STATUS_IBF) {
>+		if (!kcs_bmc->running)
>+			kcs_bmc_ipmi_force_abort(kcs_bmc);
>+		else if (status & KCS_STATUS_CMD_DAT)
>+			kcs_bmc_ipmi_handle_cmd(kcs_bmc);
>+		else
>+			kcs_bmc_ipmi_handle_data(kcs_bmc);
>+
>+		ret = 0;
>+	}
>+
>+	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
>+
>+	return ret;
>+}
>+EXPORT_SYMBOL(kcs_bmc_ipmi_event);
>+
>+static inline struct kcs_bmc *to_kcs_bmc(struct file *filp)
>+{
>+	return container_of(filp->private_data, struct kcs_bmc, miscdev);
>+}
>+
>+static int kcs_bmc_ipmi_open(struct inode *inode, struct file *filp)
>+{
>+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>+	int ret = 0;
>+
>+	spin_lock_irq(&kcs_bmc->lock);
>+	if (!kcs_bmc->running)
>+		kcs_bmc->running = 1;
>+	else
>+		ret = -EBUSY;
>+	spin_unlock_irq(&kcs_bmc->lock);
>+
>+	return ret;
>+}
>+
>+static __poll_t kcs_bmc_ipmi_poll(struct file *filp, poll_table *wait)
>+{
>+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>+	__poll_t mask = 0;
>+
>+	poll_wait(filp, &kcs_bmc->queue, wait);
>+
>+	spin_lock_irq(&kcs_bmc->lock);
>+	if (kcs_bmc->data_in_avail)
>+		mask |= EPOLLIN;
>+	spin_unlock_irq(&kcs_bmc->lock);
>+
>+	return mask;
>+}
>+
>+static ssize_t kcs_bmc_ipmi_read(struct file *filp, char __user *buf,
>+			    size_t count, loff_t *ppos)
>+{
>+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>+	bool data_avail;
>+	size_t data_len;
>+	ssize_t ret;
>+
>+	if (!(filp->f_flags & O_NONBLOCK))
>+		wait_event_interruptible(kcs_bmc->queue,
>+					 kcs_bmc->data_in_avail);
>+
>+	mutex_lock(&kcs_bmc->mutex);
>+
>+	spin_lock_irq(&kcs_bmc->lock);
>+	data_avail = kcs_bmc->data_in_avail;
>+	if (data_avail) {
>+		data_len = kcs_bmc->data_in_idx;
>+		memcpy(kcs_bmc->kbuffer, kcs_bmc->data_in, data_len);
>+	}
>+	spin_unlock_irq(&kcs_bmc->lock);
>+
>+	if (!data_avail) {
>+		ret = -EAGAIN;
>+		goto out_unlock;
>+	}
>+
>+	if (count < data_len) {
>+		pr_err("channel=%u with too large data : %zu\n",
>+			kcs_bmc->channel, data_len);
>+
>+		spin_lock_irq(&kcs_bmc->lock);
>+		kcs_bmc_ipmi_force_abort(kcs_bmc);
>+		spin_unlock_irq(&kcs_bmc->lock);
>+
>+		ret = -EOVERFLOW;
>+		goto out_unlock;
>+	}
>+
>+	if (copy_to_user(buf, kcs_bmc->kbuffer, data_len)) {
>+		ret = -EFAULT;
>+		goto out_unlock;
>+	}
>+
>+	ret = data_len;
>+
>+	spin_lock_irq(&kcs_bmc->lock);
>+	if (kcs_bmc->phase == KCS_PHASE_WRITE_DONE) {
>+		kcs_bmc->phase = KCS_PHASE_WAIT_READ;
>+		kcs_bmc->data_in_avail = false;
>+		kcs_bmc->data_in_idx = 0;
>+	} else {
>+		ret = -EAGAIN;
>+	}
>+	spin_unlock_irq(&kcs_bmc->lock);
>+
>+out_unlock:
>+	mutex_unlock(&kcs_bmc->mutex);
>+
>+	return ret;
>+}
>+
>+static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
>+			     size_t count, loff_t *ppos)
>+{
>+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>+	ssize_t ret;
>+
>+	/* a minimum response size '3' : netfn + cmd + ccode */
>+	if (count < 3 || count > KCS_MSG_BUFSIZ)
>+		return -EINVAL;
>+
>+	mutex_lock(&kcs_bmc->mutex);
>+
>+	if (copy_from_user(kcs_bmc->kbuffer, buf, count)) {
>+		ret = -EFAULT;
>+		goto out_unlock;
>+	}
>+
>+	spin_lock_irq(&kcs_bmc->lock);
>+	if (kcs_bmc->phase == KCS_PHASE_WAIT_READ) {
>+		kcs_bmc->phase = KCS_PHASE_READ;
>+		kcs_bmc->data_out_idx = 1;
>+		kcs_bmc->data_out_len = count;
>+		memcpy(kcs_bmc->data_out, kcs_bmc->kbuffer, count);
>+		kcs_bmc_write_data(kcs_bmc, kcs_bmc->data_out[0]);
>+		ret = count;
>+	} else {
>+		ret = -EINVAL;
>+	}
>+	spin_unlock_irq(&kcs_bmc->lock);
>+
>+out_unlock:
>+	mutex_unlock(&kcs_bmc->mutex);
>+
>+	return ret;
>+}
>+
>+static long kcs_bmc_ipmi_ioctl(struct file *filp, unsigned int cmd,
>+			  unsigned long arg)
>+{
>+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>+	long ret = 0;
>+
>+	spin_lock_irq(&kcs_bmc->lock);
>+
>+	switch (cmd) {
>+	case IPMI_BMC_IOCTL_SET_SMS_ATN:
>+		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
>+		break;
>+
>+	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
>+		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
>+		break;
>+
>+	case IPMI_BMC_IOCTL_FORCE_ABORT:
>+		kcs_bmc_ipmi_force_abort(kcs_bmc);
>+		break;
>+
>+	default:
>+		ret = -EINVAL;
>+		break;
>+	}
>+
>+	spin_unlock_irq(&kcs_bmc->lock);
>+
>+	return ret;
>+}
>+
>+static int kcs_bmc_ipmi_release(struct inode *inode, struct file *filp)
>+{
>+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
>+
>+	spin_lock_irq(&kcs_bmc->lock);
>+	kcs_bmc->running = 0;
>+	kcs_bmc_ipmi_force_abort(kcs_bmc);
>+	spin_unlock_irq(&kcs_bmc->lock);
>+
>+	return 0;
>+}
>+
>+static const struct file_operations kcs_bmc_fops = {
>+	.owner          = THIS_MODULE,
>+	.open           = kcs_bmc_ipmi_open,
>+	.read           = kcs_bmc_ipmi_read,
>+	.write          = kcs_bmc_ipmi_write,
>+	.release        = kcs_bmc_ipmi_release,
>+	.poll           = kcs_bmc_ipmi_poll,
>+	.unlocked_ioctl = kcs_bmc_ipmi_ioctl,
>+};
>+
>+struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel);

Here too.

>+struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel)
>+{
>+	struct kcs_bmc *kcs_bmc;
>+
>+	kcs_bmc = devm_kzalloc(dev, sizeof(*kcs_bmc) + sizeof_priv, GFP_KERNEL);
>+	if (!kcs_bmc)
>+		return NULL;
>+
>+	spin_lock_init(&kcs_bmc->lock);
>+	kcs_bmc->channel = channel;
>+
>+	mutex_init(&kcs_bmc->mutex);
>+	init_waitqueue_head(&kcs_bmc->queue);
>+
>+	kcs_bmc->data_in = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>+	kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>+	kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
>+
>+	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
>+	kcs_bmc->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "%s%u",
>+					       DEVICE_NAME, channel);
>+	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
>+	    !kcs_bmc->miscdev.name)
>+		return NULL;
>+	kcs_bmc->miscdev.fops = &kcs_bmc_fops;
>+
>+	return kcs_bmc;
>+}
>+EXPORT_SYMBOL(kcs_bmc_ipmi_alloc);
>+
>+MODULE_LICENSE("GPL v2");
>+MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
>+MODULE_DESCRIPTION("KCS BMC to handle the IPMI request from system software");
>-- 
>2.27.0
>

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
