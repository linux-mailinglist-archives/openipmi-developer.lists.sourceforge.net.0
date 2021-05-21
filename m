Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3712B38C221
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 May 2021 10:40:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lk0hn-0003tr-6V; Fri, 21 May 2021 08:40:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=6775408355=zweiss@equinix.com>)
 id 1lk0hl-0003tK-OZ
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 08:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/1FXGkYRJWYqACsXOQ4lX+b3a00yBOF67yEXu0LQl3g=; b=nVFDq0tqfVoOicaq0xlw843XEU
 U64gh/NDd0pPPKi2xgr96lIA3HPDHyKt+G0fz45B1qrMzfeuBqeHBl0e2hMg9JJbuJH5vs+1AtU8g
 NxILaqP8gUNO7YtI3Ap6I7j1NlByXwJxDr/0yurI4m11flAhjy835zTX4sCHUKCeKEww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/1FXGkYRJWYqACsXOQ4lX+b3a00yBOF67yEXu0LQl3g=; b=UYtuL8NPjFRfUZvs1VDOeRgfr3
 kn169DvyK50C6RokJsdFKElBNNLgcg/y20atitwQRCni0b6woTDmFZbr+XxSGEzjm+OpGluTbOba0
 tfhLrKKqpq7tKzoh9MKL+yoqNCA0Y/G0mBCtd4VLVpJ4fG66fS8dY6g1IXgDPc2jlYjg=;
Received: from mx0a-00268f01.pphosted.com ([148.163.148.236])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lk0hX-00022N-Sp
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 08:40:26 +0000
Received: from pps.filterd (m0165119.ppops.net [127.0.0.1])
 by mx0a-00268f01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 14L7Ie6k011957; Fri, 21 May 2021 07:20:34 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
 by mx0a-00268f01.pphosted.com with ESMTP id 38nku0uvg9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 21 May 2021 07:20:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YmWZmu47bByL8Jnk+MiVtTRhQxJKffMs/VT7qAD9ZcgTftyObVV1lh8ODFR6i/pcmCoUHsInCRjGT2TinWouqK9LQINGSCpfpePNR0qPHDKBzISxYYmtir3HtHZgXe8LGhKR2vpH+IwRGHsV/XxMdE47yxVYIAZPZPLCWK91jEFJqoE6KpHA9hyxLohywTIV7YjDmQQeNfiRTwJijdAe1rp6L++NnSNzDyADz9H2TGjOJgXSd0jXP9KRMU5h8rMlcr+nocl3PL02So9HmzUb7UYC9MzXgIqlnfcKAM50aO5dYo0tcoW37Ly4k+Z3yV8u3NCplhYoKJg1h+eQDSEpPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/1FXGkYRJWYqACsXOQ4lX+b3a00yBOF67yEXu0LQl3g=;
 b=NQ7rMqvb6DZf4oBS+7WK5zlX5cW7n8MSJs09Km6OEe1z3s7uoDGUTwF/2CYp2kmG26q2jSO4Q3Ht+XwhdrJNPmvm5ZpqHTyT+rdTUV5WCjjEalKOnnGVOvQ4D25tuMoNP+99PIe6+xn4MG8EHTJXnQjyYQ+AdrMHMJMB/BhgHqUpGMyZqFX9OgsApjD7NzkCGd2/efO0/Dzxo09i7bZabwQ9ckgsKbaR23p3AYIidgSYgwFVSxpgTR9/d5cc9Zpw7UzrCn7CkBsp8zwzH66AfXfcrrf1x3vQoXhUD4t2aVm5Xn3rybCczjQxSTm60f+rGjNBZMIIAGVdjmamtytUkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=equinix.com; dmarc=pass action=none header.from=equinix.com;
 dkim=pass header.d=equinix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=equinixinc.onmicrosoft.com; s=selector2-equinixinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/1FXGkYRJWYqACsXOQ4lX+b3a00yBOF67yEXu0LQl3g=;
 b=jD7Z9Ji5zswidPuPcXhDcQhM3wKydRSvxI+WFCESoqwg6CV7/383YTShDLWqsVR1UZf7jSPetaimkfGKQRxLwkxBIc65+ss0LZHQLTXvu5PmYq6+4p+h2ybMFerFA9vJRPIh1TSn+DmLbrixtkPpnHnlz7OIwv6AStSWk7B155k=
Received: from DM5PR04MB0762.namprd04.prod.outlook.com (2603:10b6:3:f3::13) by
 DM6PR04MB3802.namprd04.prod.outlook.com (2603:10b6:5:ac::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.28; Fri, 21 May 2021 07:20:32 +0000
Received: from DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::d9ba:6e7f:b51e:6cab]) by DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::d9ba:6e7f:b51e:6cab%2]) with mapi id 15.20.4129.034; Fri, 21 May 2021
 07:20:32 +0000
From: Zev Weiss <zweiss@equinix.com>
To: Andrew Jeffery <andrew@aj.id.au>
Thread-Topic: [PATCH v3 11/16] ipmi: kcs_bmc: Add serio adaptor
Thread-Index: AQHXThHJ0Wzyi2EsNEaEqPvq/0WbSw==
Date: Fri, 21 May 2021 07:20:32 +0000
Message-ID: <YKdfP6br29Te0VZ6@packtop>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210510054213.1610760-12-andrew@aj.id.au>
In-Reply-To: <20210510054213.1610760-12-andrew@aj.id.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none header.from=equinix.com;
x-originating-ip: [24.181.166.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1b0ee95-0782-401d-262b-08d91c28eb98
x-ms-traffictypediagnostic: DM6PR04MB3802:
x-microsoft-antispam-prvs: <DM6PR04MB3802A06DABF42A2DBA40F5CFC3299@DM6PR04MB3802.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j9l2QBhdNcLQeoY0LFhnrB9BeMy/7USjz46omz8oGbBWnTYNTzgMENX9Npp7dCUO1zyJ5Az+aorq815+AP6xrR+5EIQyf6nWZ8BwIQ8tWfW3RLKXGnk14OwNhIdiKVECQCoRN3MpfCOy+JK1AWDOscbAbLVOssqD/WDxZXxlVVd7S1yYNnZgqVH5Y+yt1rYh1Ty4NRrJ1AIiarhOhF1ddRRVuGglnTceTLLYmA8SLYqEPXuE46ns9YievjNSOg0wBecHMohkdz4lRDiE/+9Rba+M0CWfz+m1eGFnpafBIIDbw2BCFsE9dcrgH3wf5jLNw5ExUEZNHE/prTw35ocIzDYlnumBCGDcGaITp3jadKdqzwJ537Rg4xPbGAguYln3rYul6Ju0gt7CAYZUxQd1zgZGGczD3BGF20kVd18zK4xNHGXUT8t/Q9KjV6E4pxvoBMM3w5o0A8sEkJ0JfxSbVzpiHgJz5phC50g7A1Yo3MBgVXxPZD5mVeG3wXYYkxI7Cddk9hfK5KbSd3b5Sd+pUoQSzoyTi0CDYyMW4iYzPAr4TJT2q8JNnKAfHBtqRAQFbVYIZasujE8/kcDExstKcE+1oWd4AngA8Fps4yaXG30=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR04MB0762.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(7916004)(4636009)(136003)(366004)(376002)(39860400002)(346002)(396003)(8936002)(4326008)(8676002)(66946007)(9686003)(6916009)(54906003)(71200400001)(26005)(76116006)(66476007)(66446008)(66556008)(86362001)(316002)(6486002)(2906002)(6512007)(186003)(6506007)(64756008)(83380400001)(122000001)(5660300002)(33716001)(38100700002)(7416002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?rW/ysUvMiWiJSjJ/hChdnDVQ4doZJMA5okDnt0rvHMEG5o/2Sf0Ppzil8BHw?=
 =?us-ascii?Q?U/VaXp3NqUP5SKiRs0sjWSqFIBA2vMtzqnckCOPWzPgM0rNfGnJitpkG/00x?=
 =?us-ascii?Q?K8PI8uaEDVd4NexXmfumd2C5yCC41s74rufhpz0HrVukTqa9kjliNxnX38fm?=
 =?us-ascii?Q?zRkeLGc+Brrm+PMb1apH3Ihg8VRrJZQ4ILoZgGGQRIZbNTJy8gjGq4hBEo0A?=
 =?us-ascii?Q?5MhjbnBRh6i1ERo4w/iW811XUGu2WLw5vl39jg/AIvIZeMdREVmhM1jkcjdi?=
 =?us-ascii?Q?0py14Ogha+eVdzXZjSZOmSH0HKcBXrAeYBOvAFzMYro4ZCIKkGrrTQmSa8Rz?=
 =?us-ascii?Q?8tMBjcpY8gb7gewAQS8LS6REhPY1u1mAlwcMCXt3dC04AURsLsIPGN69qcO7?=
 =?us-ascii?Q?XnouT6TaFctMbVVQUTMentZKjrmSbghTGLQliskR8DcWbvpU+08kJ7CmKcWt?=
 =?us-ascii?Q?+4QFhzQpe26eGE2PAc9EC0f1N0tlsrvjO1AJzEaT/lsMxBY2rF5zZybhP1IV?=
 =?us-ascii?Q?AvKpe451tvYkMPWR+rvWRY1Tw67+s2NXZvPC+GpTM3yP53HHPW/4cUyQEQfe?=
 =?us-ascii?Q?c8Xx8pEqlX42+oMMnPpWwJWU233/TNyNvVhcrx+R/6yil6wMOeaYq5vf6W/I?=
 =?us-ascii?Q?GzQNKmJk3VY2RfhSNH8LWyUB30XH6MiRsqmmKDU1S9Plhm8OI7753Nvvvscq?=
 =?us-ascii?Q?I2Xe6HG6Z4Tlr3jZm/3OkEwyLZDZUlPkOejylfvbPn5oa4X8AKGFqVPfCqi1?=
 =?us-ascii?Q?F3taRbLJeffAPF1ZkR74BzD2Sx74EBdAjCmLVUL/8W9Sgf9Wg1kW9+FRFbHb?=
 =?us-ascii?Q?Y5874ZGysAJ8kxVyznddTEgUFcNkFhcFEfITBX6ZZwozG6gKXDIFsgrtWaRa?=
 =?us-ascii?Q?Qv8PtZNK8KJxkBr/CMgGaOZjv+L73a4JZKj7C1oI430xB29foMeijCsUnLyh?=
 =?us-ascii?Q?PiLcdXpkkwUaLbuPGqfnZ/29WkT/Iwqvogn6CGtdR5ibg0aWlFwkX1gNAUKQ?=
 =?us-ascii?Q?cwW/s3o7eXTlbfdIIcX0bZv+FBR5F8+/iwJ1aw/cYbTaAlgEydIc0mOTjySj?=
 =?us-ascii?Q?pfiBhYG6Z+1XXLKlKMT9Z50h3fV1reR5PykSjCN2QX5ykqE7k+99Xx1RyOSR?=
 =?us-ascii?Q?GpWHaj9BTZ5IyT6rmm3RoRhB1cDYXcg8GStgpQd9r4jSkw5P2jLCJNmA4Ejz?=
 =?us-ascii?Q?GMc2Asn+djkMiWM83b1h3QWDvIPK5Ay/czLCsIqbI4h6gd3exwdjElE2by84?=
 =?us-ascii?Q?IEC6noXDgTr4oH9ggvP8wc4r/eqBPnqWNotxuXJd1LI5nkGa4Q+lXlxFJyl/?=
 =?us-ascii?Q?s1WVUesR1EHHt6MfcZgk/kIPRH1RpGO3QBz5QPjSt/Eudg=3D=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <84BD1F289500B843B6EDD9638B1D62EF@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: equinix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR04MB0762.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1b0ee95-0782-401d-262b-08d91c28eb98
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 07:20:32.4603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72adb271-2fc7-4afe-a5ee-9de6a59f6bfb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E8EkmuMJq67/OEKcpBPZ9qTtq43FnwrHCMta+2q51qw/gPGLAnXOXes4qme13/tIGwk3xX5jLPxa4eXyKxpmmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB3802
X-Proofpoint-ORIG-GUID: HFDoPQNSkJ1EmU4h6HLObcJkbTfvqL6g
X-Proofpoint-GUID: HFDoPQNSkJ1EmU4h6HLObcJkbTfvqL6g
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-05-21_03:2021-05-20,
 2021-05-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105210046
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.148.236 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lk0hX-00022N-Sp
Subject: Re: [Openipmi-developer] [PATCH v3 11/16] ipmi: kcs_bmc: Add serio
 adaptor
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
 "minyard@acm.org" <minyard@acm.org>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "avifishman70@gmail.com" <avifishman70@gmail.com>,
 "venture@google.com" <venture@google.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tali.perry1@gmail.com" <tali.perry1@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "benjaminfair@google.com" <benjaminfair@google.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "chiawei_wang@aspeedtech.com" <chiawei_wang@aspeedtech.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "tmaimon77@gmail.com" <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, May 10, 2021 at 12:42:08AM CDT, Andrew Jeffery wrote:
>kcs_bmc_serio acts as a bridge between the KCS drivers in the IPMI
>subsystem and the existing userspace interfaces available through the
>serio subsystem. This is useful when userspace would like to make use of
>the BMC KCS devices for purposes that aren't IPMI.
>
>Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>---
> drivers/char/ipmi/Kconfig         |  14 +++
> drivers/char/ipmi/Makefile        |   1 +
> drivers/char/ipmi/kcs_bmc_serio.c | 151 ++++++++++++++++++++++++++++++
> 3 files changed, 166 insertions(+)
> create mode 100644 drivers/char/ipmi/kcs_bmc_serio.c
>
>diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
>index bc5f81899b62..249b31197eea 100644
>--- a/drivers/char/ipmi/Kconfig
>+++ b/drivers/char/ipmi/Kconfig
>@@ -137,6 +137,20 @@ config IPMI_KCS_BMC_CDEV_IPMI
> 	  This support is also available as a module. The module will be
> 	  called kcs_bmc_cdev_ipmi.
>
>+config IPMI_KCS_BMC_SERIO
>+	depends on IPMI_KCS_BMC && SERIO
>+	tristate "SerIO adaptor for BMC KCS devices"
>+	help
>+	  Adapts the BMC KCS device for the SerIO subsystem. This allows users
>+	  to take advantage of userspace interfaces provided by SerIO where
>+	  appropriate.
>+
>+	  Say YES if you wish to expose KCS devices on the BMC via SerIO
>+	  interfaces.
>+
>+	  This support is also available as a module. The module will be
>+	  called kcs_bmc_serio.
>+
> config ASPEED_BT_IPMI_BMC
> 	depends on ARCH_ASPEED || COMPILE_TEST
> 	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
>diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
>index fcfa676afddb..84f47d18007f 100644
>--- a/drivers/char/ipmi/Makefile
>+++ b/drivers/char/ipmi/Makefile
>@@ -23,6 +23,7 @@ obj-$(CONFIG_IPMI_POWERNV) += ipmi_powernv.o
> obj-$(CONFIG_IPMI_WATCHDOG) += ipmi_watchdog.o
> obj-$(CONFIG_IPMI_POWEROFF) += ipmi_poweroff.o
> obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o
>+obj-$(CONFIG_IPMI_KCS_BMC_SERIO) += kcs_bmc_serio.o
> obj-$(CONFIG_IPMI_KCS_BMC_CDEV_IPMI) += kcs_bmc_cdev_ipmi.o
> obj-$(CONFIG_ASPEED_BT_IPMI_BMC) += bt-bmc.o
> obj-$(CONFIG_ASPEED_KCS_IPMI_BMC) += kcs_bmc_aspeed.o
>diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
>new file mode 100644
>index 000000000000..30a2b7ab464b
>--- /dev/null
>+++ b/drivers/char/ipmi/kcs_bmc_serio.c
>@@ -0,0 +1,151 @@
>+// SPDX-License-Identifier: GPL-2.0-or-later
>+/* Copyright (c) 2021 IBM Corp. */
>+
>+#include <linux/delay.h>
>+#include <linux/device.h>
>+#include <linux/errno.h>
>+#include <linux/list.h>
>+#include <linux/module.h>
>+#include <linux/sched/signal.h>
>+#include <linux/serio.h>
>+#include <linux/slab.h>
>+
>+#include "kcs_bmc_client.h"
>+
>+struct kcs_bmc_serio {
>+	struct list_head entry;
>+
>+	struct kcs_bmc_client client;
>+	struct serio *port;
>+
>+	spinlock_t lock;
>+};
>+
>+static inline struct kcs_bmc_serio *client_to_kcs_bmc_serio(struct kcs_bmc_client *client)
>+{
>+	return container_of(client, struct kcs_bmc_serio, client);
>+}
>+
>+static irqreturn_t kcs_bmc_serio_event(struct kcs_bmc_client *client)
>+{
>+	struct kcs_bmc_serio *priv;
>+	u8 handled = IRQ_NONE;
>+	u8 status;
>+
>+	priv = client_to_kcs_bmc_serio(client);
>+
>+	spin_lock(&priv->lock);
>+
>+	status = kcs_bmc_read_status(client->dev);
>+
>+	if (status & KCS_BMC_STR_IBF)
>+		handled = serio_interrupt(priv->port, kcs_bmc_read_data(client->dev), 0);
>+
>+	spin_unlock(&priv->lock);
>+
>+	return handled;
>+}
>+
>+static const struct kcs_bmc_client_ops kcs_bmc_serio_client_ops = {
>+	.event = kcs_bmc_serio_event,
>+};
>+
>+static int kcs_bmc_serio_open(struct serio *port)
>+{
>+	struct kcs_bmc_serio *priv = port->port_data;
>+
>+	return kcs_bmc_enable_device(priv->client.dev, &priv->client);
>+}
>+
>+static void kcs_bmc_serio_close(struct serio *port)
>+{
>+	struct kcs_bmc_serio *priv = port->port_data;
>+
>+	kcs_bmc_disable_device(priv->client.dev, &priv->client);
>+}
>+
>+static DEFINE_SPINLOCK(kcs_bmc_serio_instances_lock);
>+static LIST_HEAD(kcs_bmc_serio_instances);
>+
>+static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
>+{
>+	struct kcs_bmc_serio *priv;
>+	struct serio *port;
>+
>+	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
>+	port = kzalloc(sizeof(*port), GFP_KERNEL);

Is there a particular reason to allocate port with a raw kzalloc()
instead of another devm_kzalloc()?

>+	if (!(priv && port))
>+		return -ENOMEM;
>+
>+	port->id.type = SERIO_8042;
>+	port->open = kcs_bmc_serio_open;
>+	port->close = kcs_bmc_serio_close;
>+	port->port_data = priv;
>+	port->dev.parent = kcs_bmc->dev;
>+
>+	spin_lock_init(&priv->lock);
>+	priv->port = port;
>+	priv->client.dev = kcs_bmc;
>+	priv->client.ops = &kcs_bmc_serio_client_ops;
>+
>+	spin_lock_irq(&kcs_bmc_serio_instances_lock);
>+	list_add(&priv->entry, &kcs_bmc_serio_instances);
>+	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
>+
>+	serio_register_port(port);
>+
>+	dev_info(kcs_bmc->dev, "Initialised serio client for channel %d", kcs_bmc->channel);
>+
>+	return 0;
>+}
>+
>+static int kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
>+{
>+	struct kcs_bmc_serio *priv = NULL, *pos;
>+
>+	spin_lock_irq(&kcs_bmc_serio_instances_lock);
>+	list_for_each_entry(pos, &kcs_bmc_serio_instances, entry) {
>+		if (pos->client.dev == kcs_bmc) {
>+			priv = pos;
>+			list_del(&pos->entry);
>+			break;
>+		}
>+	}
>+	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
>+
>+	if (!priv)
>+		return -ENODEV;
>+
>+	serio_unregister_port(priv->port);
>+	kcs_bmc_disable_device(kcs_bmc, &priv->client);
>+	devm_kfree(priv->client.dev->dev, priv);

Looks like the priv->port allocation would leak here I think?

Also, is the asymmetry of having kcs_bmc_disable_device() here but no
corresponding kcs_bmc_enable_device() in kcs_bmc_serio_add_device()
intentional?  If so, an explanatory comment of some sort might be nice
to add.

>+
>+	return 0;
>+}
>+
>+static const struct kcs_bmc_driver_ops kcs_bmc_serio_driver_ops = {
>+	.add_device = kcs_bmc_serio_add_device,
>+	.remove_device = kcs_bmc_serio_remove_device,
>+};
>+
>+static struct kcs_bmc_driver kcs_bmc_serio_driver = {
>+	.ops = &kcs_bmc_serio_driver_ops,
>+};
>+
>+static int kcs_bmc_serio_init(void)
>+{
>+	kcs_bmc_register_driver(&kcs_bmc_serio_driver);
>+
>+	return 0;
>+}
>+module_init(kcs_bmc_serio_init);
>+
>+static void kcs_bmc_serio_exit(void)
>+{
>+	kcs_bmc_unregister_driver(&kcs_bmc_serio_driver);
>+}
>+module_exit(kcs_bmc_serio_exit);
>+
>+MODULE_LICENSE("GPL v2");
>+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
>+MODULE_DESCRIPTION("Adapter driver for serio access to BMC KCS devices");
>-- 
>2.27.0
>

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
