Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D388435946E
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 07:18:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUjXG-0003oO-D1; Fri, 09 Apr 2021 05:18:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=5733813a0f=zweiss@equinix.com>)
 id 1lUjXE-0003oG-DJ
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:18:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DHW+RG3hh+I8LT7VTB218MzFXhkTpYAgI0EW1hEbfbY=; b=mpC/Yg8zB0w2m5CoDxXi904lNP
 BM5dRfeT4HXORlM9dDHumcraNaJKXtQeUtW19We1nUVqFdLgBFIwwwyD41+cNbK9AuBviBBxmPeMK
 +k9J6WepYuMIyBVi00d/0kfIJusyD5Kt4ze1GWmjWfgQLCDMXnPqNwPjVFWl6KLbaND8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DHW+RG3hh+I8LT7VTB218MzFXhkTpYAgI0EW1hEbfbY=; b=XMhymJ5509D05oY5fLOtWWAwGh
 Rmz173SODv7O4AFRV0z8vtN8ffv733a2c05WNS5/GRORBmI6mpT9+M+Wd/l8kXeCY00HY13E+Te7y
 rwhCdw0CQz3mn6yyEODEUaz3EXoM9tMPSwRLR5UhQ3OQM8dTmCILOW8QZaBxEYuYs2Ws=;
Received: from mx0a-00268f01.pphosted.com ([148.163.148.236])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUjWt-008XA6-5t
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 05:18:24 +0000
Received: from pps.filterd (m0165119.ppops.net [127.0.0.1])
 by mx0a-00268f01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 1395DWNm006286; Fri, 9 Apr 2021 05:17:31 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
 by mx0a-00268f01.pphosted.com with ESMTP id 37t8pf1aqj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 09 Apr 2021 05:17:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lPNRbXzox3dRMqoF6bPaze180Ew4WiHQj8oMW6EHId3kQYoFOpSBtUzl8PhCJwu4Y7ztz1+4MToPIJZaG849lBpFys34iL0Z26NycZm4iCD7HZAVZ6CqKqXx8d219MAPPk/aAGzKNqGSLCere8drAvOpNny3ge7NofBhbWgHx0/8r3mOfa86FMTLrZi7SCSbLWVckWhYY0mIHqMRgnnGLY2VWZxvqEuCvVOLzVtXEbVgwd8Sft4QbDUj00R1N2XvZx8r7U7OglgKRujdKaZyL0qLpyjQzhqJnSr8brqdhjcuM5E3xV2wWvWdTTXUsD9lrWh1qb99+LU3bHotkIGqWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DHW+RG3hh+I8LT7VTB218MzFXhkTpYAgI0EW1hEbfbY=;
 b=R3yN4VGnqiBFbJIrnUQfJgehL7Dv8yiM0VC3j7ArqVFbBDkNgg2j+fgrmfRwcRfSgjCeYK7Tp2WzimP5Ixe/ATqRyYiFHmt9aG5XpuD+GYIFymcYDQ3p+I/Og5FFGTfXn27gQ30/iL8Q7UtL4VBIhbc2C4ltMFiXAU9kaujylko6fkX7p6v9kYpxsExSZaWHRLDmTQDUmNz7TCN6Q67a64022wEEdyLgyuLl0NVWpuNlYJ3lLrXD0jRiAL4/V8dfkYTMrvcppCxVYjVVddm1vlnkZ9qhErNr3UqvHKhTOul9mVe7pDvgcRijWW2CxVEcNpvOkoIrT6sU1OQmCNBd7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=equinix.com; dmarc=pass action=none header.from=equinix.com;
 dkim=pass header.d=equinix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=equinixinc.onmicrosoft.com; s=selector2-equinixinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DHW+RG3hh+I8LT7VTB218MzFXhkTpYAgI0EW1hEbfbY=;
 b=drphhcpC69K1DNHiFDJbeBO+w76XYtHoRrxxre2r5t9xsxoD56a0bVsuWiF0jl9qiDmkMfu1s0/XrRE+AkcCyjBtCsW0ePWVGqc1gpBDAmoOMj759YPEz5k87KdubJ+5I3pI8VBg5muwHff2tvSyfOgo6uiiLhVoqKV1YOKVllg=
Received: from DM5PR04MB0762.namprd04.prod.outlook.com (2603:10b6:3:f3::13) by
 DM6PR04MB4266.namprd04.prod.outlook.com (2603:10b6:5:98::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.18; Fri, 9 Apr 2021 05:17:28 +0000
Received: from DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::4c98:aeb:87a8:13ad]) by DM5PR04MB0762.namprd04.prod.outlook.com
 ([fe80::4c98:aeb:87a8:13ad%5]) with mapi id 15.20.4020.017; Fri, 9 Apr 2021
 05:17:28 +0000
From: Zev Weiss <zweiss@equinix.com>
To: Andrew Jeffery <andrew@aj.id.au>
Thread-Topic: [PATCH v2 16/21] ipmi: kcs_bmc: Add a "raw" character device
 interface
Thread-Index: AQHXLP+ixkD/Mjw7YkWgt1pcIAA5Iw==
Date: Fri, 9 Apr 2021 05:17:28 +0000
Message-ID: <YG/jZyx3huwqewgX@packtop>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-16-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-16-andrew@aj.id.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none header.from=equinix.com;
x-originating-ip: [24.181.166.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95c9115a-7a81-4391-de72-08d8fb16c4e5
x-ms-traffictypediagnostic: DM6PR04MB4266:
x-microsoft-antispam-prvs: <DM6PR04MB42666FF0A2D343DC72936762C3739@DM6PR04MB4266.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WKSfUAx13qIOL255650+2PFbNlisz21FzcMpA4J2/1jKfeR2iJWrvhIBPJO4Orb/EkoGbVIMWK+kWwzSIZdnpNSbGpkn4x5bEFS2ZFGfaO95iROSMNirBUliw4JS0oVwJzUhjLvDiPR+auOLf67e7oDjzNQh6hXmVshgMAYaxlSv7bS1Bzw9xBv2sbzyt3qIVWruMt9EjMUpToKO/k60iNnvNJpJv7DRm3yXCExTt5IRBDM/gDs/Ye0eirBPJqNxJ9rdZHfcpypJb9snzDh+vxJMQKhn/j5uAhFSo+zWQCcTawZCiWQjlyf76SKwDDuBJ50x6qk22udg2GVPXx+T91oe8NBfZ8RTsiUxGZJHvJc6PldhZPy4EGEB5HZAunWgwN7MFnGZ7+n6XHioVikThdoGwKBa1T5x5aHg66h1IRrEJbY9XH1IlRoc1273vPcW8iJa0AyYYXCJX21a+DJka0EeYG3kfiymM1Bc39S2EfKf3fMyXz5HJ4019u9EYexyW88J6YQaxykA2IbAFgnG1mzxh/CFyzAuDgPHsTAletaNGpiLWHhA6uAcdoKZlgoVIudyGqjTc/Z0SvTFbyVYjlEDYF+Aiqd6oeUQipPhgvzNWj9DAyG4goxvL6/owIlPALIgzgk5OuDERGbbVCx5ZAw4vtMtQ5Ms1k7I1Fq7COPELZJCY1Jj5MB0GQqen49v+aOLZdCh2AGlaF5ZXbUv8DYpW+T4iq6rj6vOPhfDNW88TF8XKBS63FvAD862dX5z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR04MB0762.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(7916004)(136003)(346002)(376002)(396003)(366004)(39860400002)(83380400001)(6916009)(4326008)(54906003)(38100700001)(316002)(30864003)(9686003)(33716001)(966005)(6512007)(86362001)(7416002)(478600001)(26005)(186003)(76116006)(66476007)(66556008)(8936002)(66946007)(6506007)(6486002)(71200400001)(5660300002)(2906002)(8676002)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?PgcUrGnulMlTrNOJDwfXPpXfgpVYGdoFIh/CzvglBq1zLVRF8givX1U0GxDb?=
 =?us-ascii?Q?SsVaWSNVS1oyMcOYkUpPyGuHraI3N5uuUQIj0sQv+T+55LCLVKjetbI7oNq+?=
 =?us-ascii?Q?N4N1slLW86BmxOF60ZYu6SHTqdi5wWsQ5xJLNO45nT1y0BjbG/siQOm+Gyr5?=
 =?us-ascii?Q?seZOGvg0yV/6p5tEJ0OlGFN1zGgHDNLgJJDIMS0mEaSSLnGkGPPjjxcmsclD?=
 =?us-ascii?Q?qrOg2ZzDWoIs8DncfE81ZqjYIV3gcHbkI9d1cKAfQr8s4E5qkAVWxi6bAoNm?=
 =?us-ascii?Q?mD22WjDwh2iRi2yDT51QxeRw5UedjhxgEa0b88TQN8RonmMPwk/WO2paVJXH?=
 =?us-ascii?Q?gTj8nExHAf7AlhRRIMeaojC6cbwfa8QgCpIl1SUy5vkRaGolChNuWHX0klnp?=
 =?us-ascii?Q?hRhfJCPn5H8LAhMrn3GqxuYN7R7weWKJkUYiJbbZHalbpDM2f/idOPCQ6lgq?=
 =?us-ascii?Q?qkpHkpHwtp4ZAq7Yp1uhfcRNZHov+oiXnA0nO1htmdSryGT3rF6jVJcDWEFN?=
 =?us-ascii?Q?94UUKIpIAinoAPRyx7ClQAFgBUQOXGh62Z1r4o2jO1GAKUNBWDPWRCg3luDd?=
 =?us-ascii?Q?XLHe85g56Llyy5buf0oZKcWAMUurJOwhEdRP5dASfPCioZHD0sTJLoAjv/kI?=
 =?us-ascii?Q?L9xO7KCFSFNuI8S74+O5lnMjZPQvKDNjVMdO4kYs9S9Dosadui0C3thCx7iH?=
 =?us-ascii?Q?EyscscQUfrah1R0sN4cx/iBpVs7N6L3SCQVtzSlVwvk+CbpH/uzS2TK4Rl4q?=
 =?us-ascii?Q?SN072c6DkU7CB95e4AF9oxSRxCDFr+vRO5vbTO2+k3oQHS4hJNXhd5I3Z3dr?=
 =?us-ascii?Q?XsDZnhBBbShRqQ6eYgsvfM42azOUqAulz05OayDHeOEmMq4RokodkVnIR481?=
 =?us-ascii?Q?3GQb23Pq2UJIQTf8z95xwVVf44JKVlJN9JuQZNU8PPaGQj/7KP1EV4rxJ0A4?=
 =?us-ascii?Q?V57oy3Bz0R9o90Mmza14Scx89WapHXRv5WYnbpZkyNzkcbpQofDbkogf8Ti/?=
 =?us-ascii?Q?kOo8lwvIJBm7zpdcBs38cLfAQjQb1ctSIPAGH1IgxIKeQlIgXhu4AMv/1Zme?=
 =?us-ascii?Q?cCfvVH5cCiMAgXX20q0nt7zs2QKi8SvLGskxXU5+RhjFAwBCQOfF69xxF5EA?=
 =?us-ascii?Q?afF5q/mMlpK1JNiTy9IFI5AjA0z3gS9gbD6huTiH6Q3Eif3rlXwH88J2xkqs?=
 =?us-ascii?Q?mEn91XPr4tXQZ4wT5/soQGRCARpgnlcSa4A0ykiT3ZNb09SHDoeetq3ucMku?=
 =?us-ascii?Q?3fa38yZT9+tdYnUwdyqiqss2JRliW2WXBNZKVG1G9dEr81A+IrqbqiKwYSDY?=
 =?us-ascii?Q?1G+TpnbOdaWobUKGkuMQ1qlr+9Fp2xxOrkNLWSNHgEMOHA=3D=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <A144C86CA3348448B1AE858F18441515@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: equinix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR04MB0762.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95c9115a-7a81-4391-de72-08d8fb16c4e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2021 05:17:28.2737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72adb271-2fc7-4afe-a5ee-9de6a59f6bfb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hPnnwh/KPNGPFCI9fucybmTgrKyr1GpPJjPRvO3Rm5WjM7HuZDLh8MH4u3V56fJElQqzzgszMfMr9U1TJcp4Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4266
X-Proofpoint-GUID: xhY-1s7MmR-Iy7GLu4h2tlJrBicIo0nH
X-Proofpoint-ORIG-GUID: xhY-1s7MmR-Iy7GLu4h2tlJrBicIo0nH
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.761
 definitions=2021-04-09_03:2021-04-08,
 2021-04-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 mlxlogscore=999 mlxscore=0
 spamscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104090038
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [148.163.148.236 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUjWt-008XA6-5t
Subject: Re: [Openipmi-developer] [PATCH v2 16/21] ipmi: kcs_bmc: Add a
 "raw" character device interface
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

On Fri, Mar 19, 2021 at 01:27:47AM CDT, Andrew Jeffery wrote:
>The existing IPMI chardev encodes IPMI behaviours as the name suggests.
>However, KCS devices are useful beyond IPMI (or keyboards), as they
>provide a means to generate IRQs and exchange arbitrary data between a
>BMC and its host system.
>
>Implement a "raw" KCS character device that exposes the IDR, ODR and STR
>registers to userspace via read() and write() implemented on a character
>device:
>
>+--------+--------+---------+
>| Offset | read() | write() |
>+--------+--------+---------+
>|   0    |   IDR  |   ODR   |
>+--------+--------+---------+
>|   1    |   STR  |   STR   |
>+--------+--------+---------+
>
>This interface allows userspace to implement arbitrary (though somewhat
>inefficient) protocols for exchanging information between a BMC and host
>firmware. Conceptually the KCS interface can be used as an out-of-band
>machanism for interrupt-signaled control messages while bulk data

Typo ("mechanism")

>transfers occur over more appropriate interfaces between the BMC and the
>host (which may lack their own interrupt mechanism, e.g. LPC FW cycles).
>
>poll() is provided, which will wait for IBF or OBE conditions for data
>reads and writes respectively. Reads of STR on its own never blocks,
>though accessing both offsets in the one system call may block if the
>data registers are not ready.
>
>Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>---
> Documentation/ABI/testing/dev-raw-kcs |  25 ++
> drivers/char/ipmi/Kconfig             |  17 +
> drivers/char/ipmi/Makefile            |   1 +
> drivers/char/ipmi/kcs_bmc_cdev_raw.c  | 443 ++++++++++++++++++++++++++
> 4 files changed, 486 insertions(+)
> create mode 100644 Documentation/ABI/testing/dev-raw-kcs
> create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_raw.c
>
>diff --git a/Documentation/ABI/testing/dev-raw-kcs b/Documentation/ABI/testing/dev-raw-kcs
>new file mode 100644
>index 000000000000..06e7e2071562
>--- /dev/null
>+++ b/Documentation/ABI/testing/dev-raw-kcs
>@@ -0,0 +1,25 @@
>+What:		/dev/raw-kcs*
>+Date:		2021-02-15
>+KernelVersion:	5.13
>+Contact:	openbmc@lists.ozlabs.org
>+Contact:	openipmi-developer@lists.sourceforge.net
>+Contact:	Andrew Jeffery <andrew@aj.id.au>
>+Description:	``/dev/raw-kcs*`` exposes to userspace the data and
>+		status registers of Keyboard-Controller-Style (KCS) IPMI
>+		interfaces via read() and write() syscalls. Direct
>+		exposure of the data and status registers enables
>+		inefficient but arbitrary protocols to be implemented
>+		over the device. A typical approach is to use KCS
>+		devices for out-of-band signalling for bulk data
>+		transfers over other interfaces between a Baseboard
>+		Management Controller and its host.
>+
>+		+--------+--------+---------+
>+		| Offset | read() | write() |
>+		+--------+--------+---------+
>+		|   0    |   IDR  |   ODR   |
>+		+--------+--------+---------+
>+		|   1    |   STR  |   STR   |
>+		+--------+--------+---------+
>+
>+Users:		libmctp: https://github.com/openbmc/libmctp
>diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
>index bc5f81899b62..273ac1a1f870 100644
>--- a/drivers/char/ipmi/Kconfig
>+++ b/drivers/char/ipmi/Kconfig
>@@ -137,6 +137,23 @@ config IPMI_KCS_BMC_CDEV_IPMI
> 	  This support is also available as a module. The module will be
> 	  called kcs_bmc_cdev_ipmi.
>
>+config IPMI_KCS_BMC_CDEV_RAW
>+	depends on IPMI_KCS_BMC
>+	tristate "Raw character device interface for BMC KCS devices"
>+	help
>+	  Provides a BMC-side character device directly exposing the
>+	  data and status registers of a KCS device to userspace. While
>+	  KCS devices are commonly used to implement IPMI message
>+	  passing, they provide a general interface for exchange of
>+	  interrupts, data and status information between the BMC and
>+	  its host.
>+
>+	  Say YES if you wish to use the KCS devices to implement
>+	  protocols that are not IPMI.
>+
>+	  This support is also available as a module. The module will be
>+	  called kcs_bmc_cdev_raw.
>+
> config ASPEED_BT_IPMI_BMC
> 	depends on ARCH_ASPEED || COMPILE_TEST
> 	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
>diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
>index fcfa676afddb..c8cc248ddd90 100644
>--- a/drivers/char/ipmi/Makefile
>+++ b/drivers/char/ipmi/Makefile
>@@ -24,6 +24,7 @@ obj-$(CONFIG_IPMI_WATCHDOG) += ipmi_watchdog.o
> obj-$(CONFIG_IPMI_POWEROFF) += ipmi_poweroff.o
> obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o
> obj-$(CONFIG_IPMI_KCS_BMC_CDEV_IPMI) += kcs_bmc_cdev_ipmi.o
>+obj-$(CONFIG_IPMI_KCS_BMC_CDEV_RAW) += kcs_bmc_cdev_raw.o
> obj-$(CONFIG_ASPEED_BT_IPMI_BMC) += bt-bmc.o
> obj-$(CONFIG_ASPEED_KCS_IPMI_BMC) += kcs_bmc_aspeed.o
> obj-$(CONFIG_NPCM7XX_KCS_IPMI_BMC) += kcs_bmc_npcm7xx.o
>diff --git a/drivers/char/ipmi/kcs_bmc_cdev_raw.c b/drivers/char/ipmi/kcs_bmc_cdev_raw.c
>new file mode 100644
>index 000000000000..bdd258648c8e
>--- /dev/null
>+++ b/drivers/char/ipmi/kcs_bmc_cdev_raw.c
>@@ -0,0 +1,443 @@
>+// SPDX-License-Identifier: GPL-2.0-or-later
>+/* Copyright (c) 2021 IBM Corp. */
>+
>+#include <linux/delay.h>
>+#include <linux/device.h>
>+#include <linux/errno.h>
>+#include <linux/fs.h>
>+#include <linux/list.h>
>+#include <linux/miscdevice.h>
>+#include <linux/module.h>
>+#include <linux/poll.h>
>+
>+#include "kcs_bmc_client.h"
>+
>+#define DEVICE_NAME "raw-kcs"
>+
>+struct kcs_bmc_raw {
>+	struct list_head entry;
>+
>+	struct kcs_bmc_client client;
>+
>+	wait_queue_head_t queue;
>+	u8 events;
>+	bool writable;
>+	bool readable;
>+	u8 idr;
>+
>+	struct miscdevice miscdev;
>+};
>+
>+static inline struct kcs_bmc_raw *client_to_kcs_bmc_raw(struct kcs_bmc_client *client)
>+{
>+	return container_of(client, struct kcs_bmc_raw, client);
>+}
>+
>+/* Call under priv->queue.lock */
>+static void kcs_bmc_raw_update_event_mask(struct kcs_bmc_raw *priv, u8 mask, u8 state)
>+{
>+	kcs_bmc_update_event_mask(priv->client.dev, mask, state);
>+	priv->events &= ~mask;
>+	priv->events |= state & mask;
>+}
>+
>+static int kcs_bmc_raw_event(struct kcs_bmc_client *client)
>+{
>+	struct kcs_bmc_raw *priv;
>+	struct device *dev;
>+	u8 status, handled;
>+
>+	priv = client_to_kcs_bmc_raw(client);
>+	dev = priv->miscdev.this_device;
>+
>+	spin_lock(&priv->queue.lock);
>+
>+	status = kcs_bmc_read_status(client->dev);
>+	handled = 0;
>+
>+	if ((priv->events & KCS_BMC_EVENT_TYPE_IBF) && (status & KCS_BMC_STR_IBF)) {
>+		if (priv->readable)
>+			dev_err(dev, "Storm brewing!");

That seems a *touch* cryptic...

>+
>+		dev_dbg(dev, "Disabling IDR events for back-pressure\n");
>+		kcs_bmc_raw_update_event_mask(priv, KCS_BMC_EVENT_TYPE_IBF, 0);
>+		priv->idr = kcs_bmc_read_data(client->dev);
>+		priv->readable = true;
>+
>+		dev_dbg(dev, "IDR read, waking waiters\n");
>+		wake_up_locked(&priv->queue);
>+
>+		handled |= KCS_BMC_EVENT_TYPE_IBF;
>+	}
>+
>+	if ((priv->events & KCS_BMC_EVENT_TYPE_OBE) && !(status & KCS_BMC_STR_OBF)) {
>+		kcs_bmc_raw_update_event_mask(priv, KCS_BMC_EVENT_TYPE_OBE, 0);
>+		priv->writable = true;
>+
>+		dev_dbg(dev, "ODR writable, waking waiters\n");
>+		wake_up_locked(&priv->queue);
>+
>+		handled |= KCS_BMC_EVENT_TYPE_OBE;
>+	}
>+
>+	spin_unlock(&priv->queue.lock);
>+
>+	return handled ? KCS_BMC_EVENT_HANDLED : KCS_BMC_EVENT_NONE;

Hm, if we're just treating it as a boolean here, is there any need to
muck around with setting specific bits of 'handled' in the if-blocks
above?

>+}
>+
>+static const struct kcs_bmc_client_ops kcs_bmc_raw_client_ops = {
>+	.event = kcs_bmc_raw_event,
>+};
>+
>+static inline struct kcs_bmc_raw *file_to_kcs_bmc_raw(struct file *filp)
>+{
>+	return container_of(filp->private_data, struct kcs_bmc_raw, miscdev);
>+}
>+
>+static int kcs_bmc_raw_open(struct inode *inode, struct file *filp)
>+{
>+	struct kcs_bmc_raw *priv = file_to_kcs_bmc_raw(filp);
>+
>+	return kcs_bmc_enable_device(priv->client.dev, &priv->client);
>+}
>+
>+static bool kcs_bmc_raw_prepare_obe(struct kcs_bmc_raw *priv)
>+{
>+	bool writable;
>+
>+	/* Enable the OBE event so we can catch the host clearing OBF */
>+	kcs_bmc_raw_update_event_mask(priv, KCS_BMC_EVENT_TYPE_OBE, KCS_BMC_EVENT_TYPE_OBE);
>+
>+	/* Now that we'll catch an OBE event, check if it's already occurred */
>+	writable = !(kcs_bmc_read_status(priv->client.dev) & KCS_BMC_STR_OBF);
>+
>+	/* If OBF is clear we've missed the OBE event, so disable it */
>+	if (writable)
>+		kcs_bmc_raw_update_event_mask(priv, KCS_BMC_EVENT_TYPE_OBE, 0);
>+
>+	return writable;
>+}
>+
>+static __poll_t kcs_bmc_raw_poll(struct file *filp, poll_table *wait)
>+{
>+	struct kcs_bmc_raw *priv;
>+	__poll_t events = 0;
>+
>+	priv = file_to_kcs_bmc_raw(filp);
>+
>+	poll_wait(filp, &priv->queue, wait);
>+
>+	spin_lock_irq(&priv->queue.lock);
>+	if (kcs_bmc_raw_prepare_obe(priv))
>+		events |= (EPOLLOUT | EPOLLWRNORM);
>+
>+	if (priv->readable || (kcs_bmc_read_status(priv->client.dev) & KCS_BMC_STR_IBF))
>+		events |= (EPOLLIN | EPOLLRDNORM);
>+	spin_unlock_irq(&priv->queue.lock);
>+
>+	return events;
>+}
>+
>+static ssize_t kcs_bmc_raw_read(struct file *filp, char __user *buf,
>+			     size_t count, loff_t *ppos)
>+{
>+	struct kcs_bmc_device *kcs_bmc;
>+	struct kcs_bmc_raw *priv;
>+	bool read_idr, read_str;
>+	struct device *dev;
>+	u8 idr, str;
>+	ssize_t rc;
>+
>+	priv = file_to_kcs_bmc_raw(filp);
>+	kcs_bmc = priv->client.dev;
>+	dev = priv->miscdev.this_device;
>+
>+	if (!count)
>+		return 0;
>+
>+	if (count > 2 || *ppos > 1)
>+		return -EINVAL;
>+
>+	if (*ppos + count > 2)
>+		return -EINVAL;
>+
>+	read_idr = (*ppos == 0);
>+	read_str = (*ppos == 1) || (count == 2);
>+
>+	spin_lock_irq(&priv->queue.lock);
>+	if (read_idr) {
>+		dev_dbg(dev, "Waiting for IBF\n");
>+		str = kcs_bmc_read_status(kcs_bmc);
>+		if ((filp->f_flags & O_NONBLOCK) && (str & KCS_BMC_STR_IBF)) {
>+			rc = -EWOULDBLOCK;
>+			goto out;
>+		}
>+
>+		rc = wait_event_interruptible_locked(priv->queue,
>+						     priv->readable || (str & KCS_BMC_STR_IBF));
>+		if (rc < 0)
>+			goto out;
>+
>+		if (signal_pending(current)) {
>+			dev_dbg(dev, "Interrupted waiting for IBF\n");
>+			rc = -EINTR;
>+			goto out;
>+		}
>+
>+		/*
>+		 * Re-enable events prior to possible read of IDR (which clears
>+		 * IBF) to ensure we receive interrupts for subsequent writes
>+		 * to IDR. Writes to IDR by the host should not occur while IBF
>+		 * is set.
>+		 */
>+		dev_dbg(dev, "Woken by IBF, enabling IRQ\n");
>+		kcs_bmc_raw_update_event_mask(priv, KCS_BMC_EVENT_TYPE_IBF,
>+					      KCS_BMC_EVENT_TYPE_IBF);
>+
>+		/* Read data out of IDR into internal storage if necessary */
>+		if (!priv->readable) {
>+			WARN(!(str & KCS_BMC_STR_IBF), "Unknown reason for wakeup!");
>+
>+			priv->idr = kcs_bmc_read_data(kcs_bmc);
>+		}
>+
>+		/* Copy data from internal storage to userspace */
>+		idr = priv->idr;
>+
>+		/* We're done consuming the internally stored value */
>+		priv->readable = false;
>+	}
>+
>+	if (read_str) {
>+		str = kcs_bmc_read_status(kcs_bmc);
>+		if (*ppos == 0 || priv->readable)
>+			/*
>+			 * If we got this far with `*ppos == 0` then we've read
>+			 * data out of IDR, so set IBF when reporting back to
>+			 * userspace so userspace knows the IDR value is valid.
>+			 */
>+			str |= KCS_BMC_STR_IBF;
>+
>+		dev_dbg(dev, "Read status 0x%x\n", str);
>+
>+	}
>+
>+	rc = count;
>+out:
>+	spin_unlock_irq(&priv->queue.lock);
>+
>+	if (rc < 0)
>+		return rc;
>+
>+	/* Now copy the data in to the userspace buffer */
>+
>+	if (read_idr)
>+		if (copy_to_user(buf++, &idr, sizeof(idr)))
>+			return -EFAULT;
>+
>+	if (read_str)
>+		if (copy_to_user(buf, &str, sizeof(str)))
>+			return -EFAULT;
>+
>+	return count;
>+}
>+
>+static ssize_t kcs_bmc_raw_write(struct file *filp, const char __user *buf,
>+			      size_t count, loff_t *ppos)
>+{
>+	struct kcs_bmc_device *kcs_bmc;
>+	bool write_odr, write_str;
>+	struct kcs_bmc_raw *priv;
>+	struct device *dev;
>+	uint8_t data[2];
>+	ssize_t result;
>+	u8 str;
>+
>+	priv = file_to_kcs_bmc_raw(filp);
>+	kcs_bmc = priv->client.dev;
>+	dev = priv->miscdev.this_device;
>+
>+	if (!count)
>+		return count;
>+
>+	if (count > 2)
>+		return -EINVAL;
>+
>+	if (*ppos >= 2)
>+		return -EINVAL;
>+
>+	if (*ppos + count > 2)
>+		return -EINVAL;
>+
>+	if (copy_from_user(data, buf, count))
>+		return -EFAULT;
>+
>+	write_odr = (*ppos == 0);
>+	write_str = (*ppos == 1) || (count == 2);
>+
>+	spin_lock_irq(&priv->queue.lock);
>+
>+	/* Always write status before data, we generate the SerIRQ by writing ODR */
>+	if (write_str) {
>+		/* The index of STR in the userspace buffer depends on whether ODR is written */
>+		str = data[*ppos == 0];
>+		if (!(str & KCS_BMC_STR_OBF))
>+			dev_warn(dev, "Clearing OBF with status write: 0x%x\n", str);
>+		dev_dbg(dev, "Writing status 0x%x\n", str);
>+		kcs_bmc_write_status(kcs_bmc, str);
>+	}
>+
>+	if (write_odr) {
>+		/* If we're writing ODR it's always the first byte in the buffer */
>+		u8 odr = data[0];
>+
>+		str = kcs_bmc_read_status(kcs_bmc);
>+		if (str & KCS_BMC_STR_OBF) {
>+			if (filp->f_flags & O_NONBLOCK) {
>+				result = -EWOULDBLOCK;
>+				goto out;
>+			}
>+
>+			priv->writable = kcs_bmc_raw_prepare_obe(priv);
>+
>+			/* Now either OBF is already clear, or we'll get an OBE event to wake us */
>+			dev_dbg(dev, "Waiting for OBF to clear\n");
>+			wait_event_interruptible_locked(priv->queue, priv->writable);
>+
>+			if (signal_pending(current)) {
>+				kcs_bmc_raw_update_event_mask(priv, KCS_BMC_EVENT_TYPE_OBE, 0);
>+				result = -EINTR;
>+				goto out;
>+			}
>+
>+			WARN_ON(kcs_bmc_read_status(kcs_bmc) & KCS_BMC_STR_OBF);
>+		}
>+
>+		dev_dbg(dev, "Writing 0x%x to ODR\n", odr);
>+		kcs_bmc_write_data(kcs_bmc, odr);
>+	}
>+
>+	result = count;
>+out:
>+	spin_unlock_irq(&priv->queue.lock);
>+
>+	return result;
>+}
>+
>+static int kcs_bmc_raw_release(struct inode *inode, struct file *filp)
>+{
>+	struct kcs_bmc_raw *priv = file_to_kcs_bmc_raw(filp);
>+
>+	kcs_bmc_disable_device(priv->client.dev, &priv->client);
>+
>+	return 0;
>+}
>+
>+static const struct file_operations kcs_bmc_raw_fops = {
>+	.owner          = THIS_MODULE,
>+	.open		= kcs_bmc_raw_open,
>+	.llseek		= no_seek_end_llseek,
>+	.read           = kcs_bmc_raw_read,
>+	.write          = kcs_bmc_raw_write,
>+	.poll		= kcs_bmc_raw_poll,
>+	.release	= kcs_bmc_raw_release,
>+};
>+
>+static DEFINE_SPINLOCK(kcs_bmc_raw_instances_lock);
>+static LIST_HEAD(kcs_bmc_raw_instances);
>+
>+static int kcs_bmc_raw_attach_cdev(struct kcs_bmc_device *kcs_bmc)
>+{
>+	struct kcs_bmc_raw *priv;
>+	int rc;
>+
>+	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
>+	if (!priv)
>+		return -ENOMEM;
>+
>+	priv->client.dev = kcs_bmc;
>+	priv->client.ops = &kcs_bmc_raw_client_ops;
>+
>+	init_waitqueue_head(&priv->queue);
>+	priv->writable = false;
>+	priv->readable = false;
>+
>+	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
>+	priv->miscdev.name = devm_kasprintf(kcs_bmc->dev, GFP_KERNEL, "%s%u", DEVICE_NAME,
>+					   kcs_bmc->channel);
>+	if (!priv->miscdev.name)
>+		return -EINVAL;
>+
>+	priv->miscdev.fops = &kcs_bmc_raw_fops;
>+
>+	/* Initialise our expected events. Listen for IBF but ignore OBE until necessary */
>+	kcs_bmc_raw_update_event_mask(priv, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
>+				      KCS_BMC_EVENT_TYPE_IBF);
>+
>+	rc = misc_register(&priv->miscdev);
>+	if (rc) {
>+		dev_err(kcs_bmc->dev, "Unable to register device\n");
>+		return rc;
>+	}
>+
>+	spin_lock_irq(&kcs_bmc_raw_instances_lock);
>+	list_add(&priv->entry, &kcs_bmc_raw_instances);
>+	spin_unlock_irq(&kcs_bmc_raw_instances_lock);
>+
>+	dev_info(kcs_bmc->dev, "Initialised raw client for channel %d", kcs_bmc->channel);
>+
>+	return 0;
>+}
>+
>+static int kcs_bmc_raw_detach_cdev(struct kcs_bmc_device *kcs_bmc)
>+{
>+	struct kcs_bmc_raw *priv = NULL, *pos;
>+
>+	spin_lock_irq(&kcs_bmc_raw_instances_lock);
>+	list_for_each_entry(pos, &kcs_bmc_raw_instances, entry) {
>+		if (pos->client.dev == kcs_bmc) {
>+			priv = pos;
>+			list_del(&pos->entry);
>+			break;
>+		}
>+	}
>+	spin_unlock_irq(&kcs_bmc_raw_instances_lock);
>+
>+	if (!priv)
>+		return 0;

Similarly to patch #12, might we want to indicate some sort of failure
here, or is this a normal/expected case?

>+
>+	misc_deregister(&priv->miscdev);
>+	kcs_bmc_disable_device(kcs_bmc, &priv->client);
>+	devm_kfree(priv->client.dev->dev, priv);
>+
>+	return 0;
>+}
>+
>+static const struct kcs_bmc_cdev_ops kcs_bmc_raw_cdev_ops = {
>+	.add_device = kcs_bmc_raw_attach_cdev,
>+	.remove_device = kcs_bmc_raw_detach_cdev,
>+};
>+
>+static struct kcs_bmc_cdev kcs_bmc_raw_cdev = {
>+	.ops = &kcs_bmc_raw_cdev_ops,
>+};
>+
>+static int kcs_bmc_raw_init(void)
>+{
>+	return kcs_bmc_register_cdev(&kcs_bmc_raw_cdev);
>+}
>+module_init(kcs_bmc_raw_init);
>+
>+static void kcs_bmc_raw_exit(void)
>+{
>+	int rc;
>+
>+	rc = kcs_bmc_unregister_cdev(&kcs_bmc_raw_cdev);
>+	if (rc)
>+		pr_warn("Failed to remove KCS BMC client: %d", rc);
>+}
>+module_exit(kcs_bmc_raw_exit);
>+
>+MODULE_LICENSE("GPL v2");
>+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
>+MODULE_DESCRIPTION("Character device for raw access to a KCS device");
>-- 
>2.27.0
>

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
