Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0761C34D06D
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Mar 2021 14:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b3DV8WzvZBXCrK21y2dDkBMxx7yuU0YD9S2WrcGLJR4=; b=JyXiqNbKidw06eVRly9DCxkhW
	SvM0io3DE329nqzbMs06Oap4hTdr1zI7qoFNLN5YkOQfcFI9CuBrqD0RtOtRHC5opJiCLhY+eE+v3
	RHUNf+feUQp9od14C5NvcKO9x0m3TiJXx2+MpnBTEsLMYCk4ehaq3VKILaQQcjFJOfscE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lQrNq-0007Y3-0x; Mon, 29 Mar 2021 12:52:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1lQr6r-0001tY-CH
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Mar 2021 12:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gDKOwdplJFsue3nynYNcN8vpg88fsI9i8TnpdlofzgA=; b=P7Ztc97P6qJJGAYIUMPPtMNLhQ
 Qcgu4P2bPUsc1zowhCnRnXQDxogu2KgfirBys8YGYv7igxYMZYWcEmlJoKo1hivhl9X3jqkwGCKMp
 FFGBnAUWJ3xXV6PiwJFSgwWUIo/X/MsZgmon0bwjx6rPIsUXOQ9OmEOmleecqIS8+XQs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gDKOwdplJFsue3nynYNcN8vpg88fsI9i8TnpdlofzgA=; b=fZxrMAbHOL5s3ZDT7QxOyxAtQp
 vjQnaYVFMCjG+Pe1MUbM/rui6E8aEDl9DC7TZ6pbmnJeU+hA7ZJMZ253OkvzYPDIVJmoLUA4HMH60
 ZPxaKk8ej3iXFFdxRlMEnvAtejMQOH6Ta4EPvyJRr/bn4RnuiogTzlW2zjxEksVqPy88=;
Received: from mail-dm6nam11on2136.outbound.protection.outlook.com
 ([40.107.223.136] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lQr6Z-0000I9-6y
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Mar 2021 12:35:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fVO8+G/yVE+0hzptPYhPgxrRr1uvDpCDnALSPGpGynussmHgABuUUhmMkDPmGo4t23U9HMQlg34VTaUlZltvgwaKwD3rIPM+IZ66S1FDm8Eb1WZB01AQtKQ7qi0yVgNRJLJ8iYzpI6s8QwJ81d8LgcC93QksgHYpUrZP5c8Uq0NulWBXfeNXjCx8MaX+S7WyMjCiff/v7dRUOp42wFwOsHcflW7kU95z/H59NyN3LEQGpOT7yx+LSfBe2zhGRVYMpChg5dtARdlIUQkui/wETNmC9yDKFYwV7LSm3wcXdVN1CKmNRawQZNqUF/alMIB5VFlwdzkXiEx8d44yIeJD4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDKOwdplJFsue3nynYNcN8vpg88fsI9i8TnpdlofzgA=;
 b=lCM/QLpKeATeGO2wpydCHh2LCaT2H35IhkTiLDNN38onjGx9QjRcv2jlRPyoRVoRhdZX/a7LOx+1PY628Hg4750EkIIrN9v9taNsqIjvT4QMyKhrbsrrjZZyf4FUxGBE4qEJBm5bYYDDSsiQZ7kttRzPhCKP88hzKYhjCNBLa3YMOlH93BCxhKmYz/YFEL2yzRbIK8i+ouMVUFrRcjv071hU8lFSd9ANB+94BCGkFVQF8rQi4En8e/ZUKzPX3YIaBTOJpwnys6Y/s9ZoAU5IwrhKrBWZbZ91UFUWmyeRoTQlshKjF4YclgO/frHB8rVGT5JD6Dlxap/utQI3jiMIpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDKOwdplJFsue3nynYNcN8vpg88fsI9i8TnpdlofzgA=;
 b=aXNDbJms5Jic0RFSuN6MwiTMAihgavQS/svT+7eTUf2OcJSiy2fUnVcHoJPdNcd82PkARKmzCW9zjmbA10PbnVeB4m0Bgf8ZDBYz1WJkdNyAfbjsCu4v1sWvJ7N7VVJ56oSHuY6EAP9g5zyifLnsPOX/LSijJPNaWeM2DXYcACs=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 CO1PR01MB6679.prod.exchangelabs.com (2603:10b6:303:f5::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.24; Mon, 29 Mar 2021 12:18:40 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.3977.033; Mon, 29 Mar 2021
 12:18:40 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Date: Mon, 29 Mar 2021 19:17:59 +0700
Message-Id: <20210329121759.5644-4-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210329121759.5644-1-quan@os.amperecomputing.com>
References: <20210329121759.5644-1-quan@os.amperecomputing.com>
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HKAPR03CA0027.apcprd03.prod.outlook.com
 (2603:1096:203:c9::14) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hcm-sw-17.amperecomputing.com (118.69.219.201) by
 HKAPR03CA0027.apcprd03.prod.outlook.com (2603:1096:203:c9::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3999.14 via Frontend Transport; Mon, 29 Mar 2021 12:18:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 46ea3989-e7c9-4691-91e2-08d8f2acc942
X-MS-TrafficTypeDiagnostic: CO1PR01MB6679:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR01MB66796052D613491CE3F5B150F27E9@CO1PR01MB6679.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZSjvsP07r12ybwdhCSpuKWhi2qRPzMUHkD9LP7+0LoKMfaAm0PuxdfTJT+TZZKwr7iX6OmumHVb9RZdYsbNN7ijBK1FtifjBsqaxjDXLaNQzl0X7IlsYk8kDPzjlFXEqkkpaXANvmymizeJ5V+voI9B3G56/sXWx4YfM8t2LSEljyj1lew39/G1Gn+BhcHyM0BqAbvYHtt3CFKQooPqLY3/3To12deD7lUVYPqgaA40ukKXF4FNod2fNNMefGRyCcuJmbqLkIhhc8V0PxY55YBRXz5gWcNE5RGJ0v+i6hs1hsHulLBEgvRtT/GegInxPi6xsdfSWpsRb3km6VPyq7asVVzQJqXLGizoKbDKHUFkn9OVXJ2/RBE6kwlr0AFXPrHSOcUrDoIYaMhYghuEonTAH5THz4C7pu+0BFEJQcD5gYS1Fbr1fMhyFys500kL83vV8LQSXnW4/cUumd6dCFQ+QCAaVatIaQieMgXYhQTQRUcPvd1AA4tSBEUD4E/zmSwHObGS2eZgLMvhyO68abQ8mo28pf247+U49qf5AgkLpdokWkZvRy77xxLkTyCdhMBoSghnJerbS8iHEsbKFEXbKbYMrTHrxXR8GFKR4Z5yK9+HjYoM7888Qft921bDogTh7jg0E0dTF6CeLb2eJ+0nQq5s66aKDju+tnE5vHl0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(39840400004)(396003)(346002)(136003)(921005)(52116002)(6506007)(66556008)(4326008)(6486002)(16526019)(54906003)(2906002)(107886003)(956004)(6512007)(110136005)(86362001)(8676002)(38100700001)(8936002)(1076003)(66476007)(5660300002)(2616005)(7416002)(316002)(26005)(478600001)(66946007)(6666004)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?/mwKPzIZJsdMvpHpvGdAgrYSiPtlzGwGB1GYOfN08x0zZxp1/rS8DDbEM9cW?=
 =?us-ascii?Q?Jaw+w87WhVNFs2+A7ajdBP8Es28azjHTgmqwdqBpWdR55fhXgXXTfN8vmYxX?=
 =?us-ascii?Q?zkLn87yKmS1IJmYmiAjU5ronEEXyBypyP0Gy54YLU0kXWdkirCV86yYJ3yW3?=
 =?us-ascii?Q?1mMNv4pOG1S3+ADUEn8y2Uv2w6eKLRkA7f7lR5vQXo3BS0g6SHVAp+UZefRX?=
 =?us-ascii?Q?JuRzogRMGifiAVFSaygfAMVWo6KiY9zPn4e28YZBtmslMELr5bSdWaQZkfsP?=
 =?us-ascii?Q?RPu7xLkLUmzXH15vI4Q6fDeN7yLSCHzYERaNtTLa32gxr06iwSugdltM+46x?=
 =?us-ascii?Q?j79sAh/qpYNjQ6QbSCgWPQ54bS4x30d/1V2XIRQXvhHDgqoPH/eJ9hEoTcYB?=
 =?us-ascii?Q?JeHod1XvFDUORX5OCxRcjw35CizMH/uZa0+vU6w61TdOqbXHFS8LVczPfagP?=
 =?us-ascii?Q?jJBVxbj37P1ma9cdERGptZfGk1DWZ89Ttult2G+6MNVhmxk1y50uPzSw6JCW?=
 =?us-ascii?Q?u+SCpfXXut8MYcw7LZwZnvygzK2/hEuZ742tY/DC+2uA1KMVFnav6NQAeInB?=
 =?us-ascii?Q?EzWZjfoC4bZq4BBhj3uVG8gF7wndF93vjVD/OXLRDcosu5vnGjfHCuV1M5cS?=
 =?us-ascii?Q?H0+BKeju1UiOIW3AeZztPOWRGn86dRBt4f+4djZPhSPx8xvNfX2Ml1DEAj1H?=
 =?us-ascii?Q?ze25W8PThe3azFz8zoRcsDUZlJhLIktjyvB+FjXP1HEC8IFds0hpqETov7Nq?=
 =?us-ascii?Q?PdnRP8s0yjVKrkYKTshuquzeUHH5bGRh9c61dgT1zfN6T7VU5JrVu9xfj958?=
 =?us-ascii?Q?q/298Jh/JIbHYqA+xb0DGg6l12poO+BbzntyEsxQNlQ2QNKnvC1s+7Ln91N/?=
 =?us-ascii?Q?4P0pH+0k3hNjBeVLGplOUCLXI/Nr8yAUrEfEVfx70tKqsjiwHGNuCxjU+QS1?=
 =?us-ascii?Q?rroBglQQKIqRYRiwgKNJr3qwJgXXi0eIwv2YHOYMpDn4krx8DKAuewKaHLzw?=
 =?us-ascii?Q?HX+Zs7cnH1Rem9d5tWWKH7/jOqpV6bhVnvvbYSgp0Gz2+WODqNPbpSdACHgg?=
 =?us-ascii?Q?K/aB/kW3ekvuVd3TgNFgTCSBoz/lTPoVza0WzuD43GAD3yKQr/Ayx7ne5+0e?=
 =?us-ascii?Q?tZJLjrzFtKK2sQVLyuoG2puq4UntYsMefo4IM0cOoDap/8a7cWPhCMGelRPQ?=
 =?us-ascii?Q?Q+gB1OrhnXfAS6wh54k50qAVef5PRhowmuS4t4saK7oP1qFvhP32NZ9xfJ1B?=
 =?us-ascii?Q?lsjf80rhqYRjn90DLcdH+Mwq1d4vZdrEQjl8EBTN8AZ756yCtQCQBl50xnRS?=
 =?us-ascii?Q?NbfS60xjktBP/3mORJ3Eg4b5?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46ea3989-e7c9-4691-91e2-08d8f2acc942
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2021 12:18:40.3891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: reBwA3rMYilNvsFOEQbxHp95W50/CLt8fPjKrcm3lhGa98Mb2P0IDGVPQMYIypkhz63wrULkj7i5acLFH++dNu4wUez2IBQ/LqXepeQKmSs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR01MB6679
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.136 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.223.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lQr6Z-0000I9-6y
X-Mailman-Approved-At: Mon, 29 Mar 2021 12:52:40 +0000
Subject: [Openipmi-developer] [PATCH v1 3/3] bindings: ipmi: Add binding for
 Aspeed SSIF BMC driver
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
From: Quan Nguyen via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Quan Nguyen <quan@os.amperecomputing.com>
Cc: openbmc@lists.ozlabs.org, "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Add device tree binding document for the Aspeed SSIF BMC driver.

Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
---
 .../bindings/ipmi/aspeed-ssif-bmc.txt          | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt
new file mode 100644
index 000000000000..1616f0188db9
--- /dev/null
+++ b/Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt
@@ -0,0 +1,18 @@
+# Aspeed SSIF (SMBus system interface) IPMI BMC interface
+
+The Aspeed AST2500 are commonly used as BMCs (Baseboard Management Controllers)
+and the SSIF slave interface can be used to perform in-band IPMI communication
+with their host.
+
+Required properties:
+
+- compatible : should be
+       "aspeed,ast2500-ssif-bmc"
+- reg: I2C address the registers
+
+Example:
+
+       ssif-bmc@10 {
+               compatible = "aspeed,ast2500-ssif-bmc";
+               reg = <0x10>;
+       };
-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
