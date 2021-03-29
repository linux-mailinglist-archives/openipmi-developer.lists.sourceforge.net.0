Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8ED34D635
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Mar 2021 19:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YDSWvipwGsYT0SS++V6evIaKPvHumJukdZEnEBomZHA=; b=S5Xwl/UU54I8cXdtPnxlDvYVeJ
	BTUZ4E4t7Z1tUtTrLfYLIjIE/5j9tClY187oCmm273WfnBXogwAbw9+4yKSR4RTWLT81TP9KUgZll
	qQ+eBMG377f2NCk/721va+aO/F748nndU/wWz3pl571uw/fpOyIz5754wFPBEOBA6UKw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lQvv9-0007fU-2Z; Mon, 29 Mar 2021 17:43:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1lQvv6-0007fH-P1
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Mar 2021 17:43:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HtlvKtuM6MihIyIrL118Lis3UII/LxYHW7mF9vKD0s4=; b=AEyWdTxo36gw/MLGxkvChBPgEW
 2cwu8FzJMGbIy/2n7v5zZHLJACEkdKVBoLtbiy+X3bRZKzG62CehemMUqhLNrq9qyOkDFo3sUilll
 /2Xho61wTKeolG3YXvfbUkQEV9/nwFg0tu/1VPUp9Ccd30yBRkOLfnBBliBPygs19rY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HtlvKtuM6MihIyIrL118Lis3UII/LxYHW7mF9vKD0s4=; b=O
 8RX8vDo2ThkiMPKbUsTMVODa1+l5KPlhJArlvb1v88BZ7fnQb1OqSaWbHv/3GiqQYPXLs5Ph1BXLe
 9V8v6sQZ/v+MWZZNESTEhZvqE94CWXhLyF8kJZSWoDoBptQ/WSc41Ju9D9C4lTz+5Kkj2pvtbaO1F
 V+tFDZ6wKpqijGXs=;
Received: from mail-mw2nam10on2127.outbound.protection.outlook.com
 ([40.107.94.127] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lQvuw-0005ku-BR
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Mar 2021 17:43:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEwMST9Gsdjyp+CuxcPrAtK+2c5tOU38gplNyrmtQrVrqNCnCZkqTNIBlSTtVAc6jVs1yks0Tdu+AkIaw9YJ2+sfnW7V+Yi2I8FzjppWeSp80DM/apfgGWO/XtJZCq/f1DHVLij9tnGbxSMisvVHJubc4T2Lt8q3u9HzmTVVvOXDuEWHfb0ezUdbYqrAukLrqrMvzyEjofJ4SKlXYZZ2HZgHcH5J2eSNUkdNzX8rVtVXRmOqrUuRS3sBlKr1q7VU2jpwfPYx+EY4t2ZZKWyOpxEk8Jt0enlKTr+raa3qJImKiDO7USBbAm2pj2r7BLxqvU0naebXHfw4Ho3LBfF0Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HtlvKtuM6MihIyIrL118Lis3UII/LxYHW7mF9vKD0s4=;
 b=Io3Bfx0ZSIXA5QqWDq9k+LyK62cN/MpE6v4HJbPp9azVqKEyM4KisTYVJoIpYdkm57B0RGCU5ftUF7sXVcKqY9ybPz0kpndD+KDTudritu5LozPj9HCadTQVK9p548BFVrsI56wMxe3y971AFjXL0mbzXl4rrqjKl4Gubp14lmoUj07I05LJ3x17nJK1HYTUuYVvBTlp7CqCrVSeTnC5t3ez+9oNAyMPu3Pa1eLEaY0YVc6I2OAsG8MlsUdxKZVkGHFJpcRA79Fsmi4jQXpNSA5b5wJaIRJdjz762XcIPl1rvjdyi9gbqkTctHAbLiuTLDq+DwSiQLAIIfjRB4Lj2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HtlvKtuM6MihIyIrL118Lis3UII/LxYHW7mF9vKD0s4=;
 b=HJvUyOCVYASfrgtHOKh5fw7+w1DrzjcatQFYVETT8SUwPUqoTtA40M04hmbG1nI9h9S+gKs1Do8enti3z7fXt5ah0NcfFdPWr4LE8CN/IthvnpQO6CobijXfgz2jbyAfJaD0jFLIcY0ygQK98iqPGA6YIf6R3RnI1YQ/KywsQdM=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MWHPR01MB2320.prod.exchangelabs.com (2603:10b6:300:26::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.25; Mon, 29 Mar 2021 12:09:35 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.3977.033; Mon, 29 Mar 2021
 12:09:34 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Date: Mon, 29 Mar 2021 19:09:11 +0700
Message-Id: <20210329120914.4527-1-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HKAPR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:203:d0::20) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hcm-sw-17.amperecomputing.com (118.69.219.201) by
 HKAPR04CA0010.apcprd04.prod.outlook.com (2603:1096:203:d0::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.26 via Frontend Transport; Mon, 29 Mar 2021 12:09:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6503f41a-172e-4cfd-1244-08d8f2ab8407
X-MS-TrafficTypeDiagnostic: MWHPR01MB2320:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR01MB2320A355F7EC138F638EE835F27E9@MWHPR01MB2320.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nWQbmN1IeQ/9NDDefGJpwQGP3nfpsZ7ro1kpgB0vXMCcaU3x9Rur8Ucf9xb9AgauQvCDMiKiAvxpePNfzEqkwr8eHfNEKlE2UKNt9lGBjgmiDlHaZYOY/EeREPn6+kQ7DGR73J2RX8O3AokbZ5ESOKKCcNTiVjdm4n2s0bHY1+8ME1HD0yjGJDSPsuewJv5B22B06WsMcfVquY1ToYys8O7Gx31VJugdMJcTEvxElTkTO52lZ2vszbAzjjWgOa/yFFmDNSv5OpRCvEIO0P/eKH98vvLqBGx9NYHe4sOJfFfCLv/f5KmMlE68arFv08ElGxmn1RJZjIn5FUGley/O4pGYsagpusFoNK7Ql2sTl8IVv+CsBikJyvFaja1wZkG1+EXOM6WSbOZmRchop/bdIQlPUuuuLN3pZFw2AHRnImqXbChu7ForjjnGnNaIRRqshzMJF3Qd2mef/Ieu30xTru6N9w15wzGSfxRpIPLw3F3RobJCGT8mXDOX/EKB1TfffP1OxWaQcWlGV3C+ZkzwX+AGXk85P7gu4n3x/nLHEpOwoSrdiRBrzca19Du7LGY9+n9dJtj4UtKUp7E6Hcuq7KyLbn4Jp1dq1KOvlVGNM3NfnuVRm2Cvtr7b22Cxn5/xLJDXSgpmEie+i/6ip9Y56WZZZp2Y3DCSCeAzxm/jhUE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(346002)(376002)(39840400004)(7416002)(107886003)(921005)(86362001)(110136005)(6486002)(8676002)(52116002)(4326008)(8936002)(6512007)(66946007)(2906002)(956004)(5660300002)(2616005)(478600001)(26005)(6506007)(4744005)(1076003)(83380400001)(54906003)(186003)(16526019)(6666004)(316002)(66476007)(66556008)(38100700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?5njVkJq+schj7xWZe5EWzjoyRwMZI+a0jgmQg2NksCmVQAErq5SpIe0FFqS6?=
 =?us-ascii?Q?27O1gj+yiMwaWmi++fhOyKP/AT5vnNsrm+QlBT/V6hO/+Nsd9ZPhH3QydKf7?=
 =?us-ascii?Q?geL7F/7UEjwfNYdztKXg07H4JFLLH/1XdbiNHUumORKV7BqyKpR14ix/rklY?=
 =?us-ascii?Q?afXvfTLuItfdGiKxEddJcUxLQgGMpfw7k3TOVyNv5PfUh/WJ0xZr2xau+mfi?=
 =?us-ascii?Q?z5NfvtjGyHIGTTxqLYwkLEvX5AIZUPG4BxKt/xcOeJ2j4kE2OvgH2ed72Xj5?=
 =?us-ascii?Q?JthtUCetomVfILAVI45imYiNbwY1Sp7a2YmI4AwmDmVr+P5HAmuInQKk3PU/?=
 =?us-ascii?Q?Ncb5UoOdIfY3da46FCDT6W3tyGyYD2x78yNNU/S8TMBRhc4KBdDC8R8SVBoQ?=
 =?us-ascii?Q?o4vk/yIihxu4C4UoXwhhjkE3MOTw2q6Ga5500Uo3R1IW7/JPJp/rMw8nXw+J?=
 =?us-ascii?Q?JTHb4h/rAMIaGL2suC8MJX2rJiyBEXf9Ws5CsCd7s93uXP9IKlIW+meQ5pU+?=
 =?us-ascii?Q?YtzfjxMskA8OzLGTgK3xE7ewhV/Bd8yWUyVd8QaV6rSeFqkBCerp40T1naIm?=
 =?us-ascii?Q?UHjmFhbMe3DSheGyxRzPRXLoSvUt5M4j6q7ZOM5/I4vz7GmSbKfVfviWzPx3?=
 =?us-ascii?Q?j5HnjkJiKHsT0Sclsk/mhN3/6lCidrn0Ezz+TwyLjJj5ATjSZitQI6iNUc0J?=
 =?us-ascii?Q?D9hQP+GUbUdZWvFdm3aCkEvPZlTSJ3Ygf56trKmbicycCwG9GvLLlZretxmk?=
 =?us-ascii?Q?aauvcuru7qm08p/geLB0EwfeA9A5fX43RifLGnOGCH27Dtz2dc54cq1irWUg?=
 =?us-ascii?Q?hUQPR3lWLiDQrZk+cH4/XuzUWKslvPOzlBP2HmsCEDwMITQ94Px58kWczi6P?=
 =?us-ascii?Q?6xVCX3ZggFQGNtB3FFu0UAkldW7Gs4JEQGogdDHd4XruToigfUwVDk57XF/M?=
 =?us-ascii?Q?7gesQiTRZDYTJud4JdjQH5NxIrVF1z1ZTfbocvX/FbMBpBPEvrgpE9h5v/Gd?=
 =?us-ascii?Q?1jSNXxc+chlm6rqQn+7UnFegpjS97VOh6tltlwR+VUDm1XqMCMT4eu8okcIX?=
 =?us-ascii?Q?rY/gGxIV8utjVPt+k25I8wk+8ytv/CFmJjTmuL2VRDqZibXFqz5A/DA/absa?=
 =?us-ascii?Q?NEkuQxUjTkcwsFS7Vt9WPCeJNfu+cwBjBab021v+IO8IIvbOQQIILKe99nBG?=
 =?us-ascii?Q?7/b52wYhOgu/H31ZC0tzG2aztMwW+EsscHDhPUyJijyvvB0d/NyhAKnBFWfZ?=
 =?us-ascii?Q?TZbkCcwLTHgTKlos/U4r5wgmx35B8mfIE95NDI+BGfIx1ULOk0vZJOJiWaOW?=
 =?us-ascii?Q?7jC+n1R2oTVOojn73fuG6Epg?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6503f41a-172e-4cfd-1244-08d8f2ab8407
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2021 12:09:34.7157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +HqrnXmjVFWdgzC6L1yzgNNCgdnbt0N/vPxt92jvWbdzkjv+dtXrmOOXlwCCKYw01jhAGnBukpwEXPRkO/qoPuKrG5oi0/dDkUrLS5WOVFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2320
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.94.127 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.127 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lQvuw-0005ku-BR
Subject: [Openipmi-developer] [PATCH v1 0/3] Add Aspeed SSIF BMC driver
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This series add support for the Aspeed specific SSIF BMC driver which
is to perform in-band IPMI communication with the host in management
(BMC) side.

Quan Nguyen (3):
  i2c: i2c-core-smbus: Expose PEC calculate function for generic use
  drivers: char: ipmi: Add Aspeed SSIF BMC driver
  bindings: ipmi: Add binding for Aspeed SSIF BMC driver

 .../bindings/ipmi/aspeed-ssif-bmc.txt         |  18 +
 drivers/char/ipmi/Kconfig                     |  22 +
 drivers/char/ipmi/Makefile                    |   2 +
 drivers/char/ipmi/ssif_bmc.c                  | 645 ++++++++++++++++++
 drivers/char/ipmi/ssif_bmc.h                  |  92 +++
 drivers/char/ipmi/ssif_bmc_aspeed.c           | 132 ++++
 drivers/i2c/i2c-core-smbus.c                  |  12 +-
 include/linux/i2c.h                           |   1 +
 8 files changed, 922 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt
 create mode 100644 drivers/char/ipmi/ssif_bmc.c
 create mode 100644 drivers/char/ipmi/ssif_bmc.h
 create mode 100644 drivers/char/ipmi/ssif_bmc_aspeed.c

-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
