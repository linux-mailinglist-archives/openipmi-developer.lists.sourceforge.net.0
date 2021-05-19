Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BE0388A91
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 May 2021 11:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T+WIc61Q08f3tNROAbiOohFYVm/kyWUAFzgBDZ5gAsE=; b=ajx/xOWldRv0wxgTy1f5lu8kc
	JnCkUcV4FdKILL9PzRnS5bwxpZIbn/owwj/7Y+C6Cvt+eoE5GdsKIl6tFNzC9F9lSDRwMaNUWt3Mf
	cM5larz0chTDyUbIKFJiv36J1RAZbSpREwcCVU91iMbY0QHixlWG1DLoOa8W8T89qfRL0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljIQ9-0007zI-NX; Wed, 19 May 2021 09:23:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <quan@os.amperecomputing.com>) id 1ljIQ7-0007z2-KI
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 09:23:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=72qcUnPpdP0uEVnitS/qqBhvFc0fw0fVzMWmHey7FGA=; b=mVglk1BUIP8GkCHDcX3k8wWNgw
 u+mcCQvQUzoJQImb08i/XmkE0Ya7Gb89ya4EZ0lINalGzolJVwSAdl3CgWdVTGWLvc4v6MwKLrVey
 InSp2P2YCu9/ustgdb9ouDd04kxPR7cl4cOS0PF0F/b5FI1KTotC+b8PYgFUDiGUtCsI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=72qcUnPpdP0uEVnitS/qqBhvFc0fw0fVzMWmHey7FGA=; b=UlZYhWf+us8YqzJ4894iH3SQ1t
 EpDc2YoAlmCa2gN+NZ2Sv1Tcsr5aHMGmzsX9CfP0zjfIGjNvkiYAOFFxQdBgK96IL73iGsYtGXSjg
 tk3tA9K6fY4m5H31n5d9TR61zWIFLRKFdIBaJLHu0S7ApR98B99MgWEnTvNoiCy0c5QA=;
Received: from mail-co1nam11on2106.outbound.protection.outlook.com
 ([40.107.220.106] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ljIPw-00EokJ-Vo
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 09:23:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mmo1ucoAErzFkDermmw7nrZHuPeNrNs8nLo+viP5O5oglfa5xJ8RaGjfhgDbNjX2n1Y4jLEQoRKva5VBocu5JNGltqktpAjftK/b8/+mztqgHcVJUFh7oxWhribYZo8OZ6ONNuCxDbL/meOr2jD2MHXjXFN4XjJa8yQudSrP2M8mMCusJ5t0zdhzZW9vjQsB4WF/4omrmRdzPGywcneUG8pvKwbhvNHhVBQNvygSuTWV5Tt0KbYXHLWwwx1xI9JNkdtKsG4GOGbB0TvAapqxaZvSw0itP0eu9FQ2aKsUh1ZvoY3EVFwh5tPJ/U9UCu+iboEr0AXyMyyoFxt0DwSh0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=72qcUnPpdP0uEVnitS/qqBhvFc0fw0fVzMWmHey7FGA=;
 b=MxdiJjzVImpZmiVT+it9jIuFk3u4UgLwdRgQq5gbk3tztnQYzVmKiRwyJk4T4n1duuRBVZH94jYI6+bY5R6/sXOgq4qDY6lz5hJyv/9PTKAWezWWH8Oz+zVF62EAjoNGgGE+DPdMYjcTO1wROdqqiQzijlEXRqz4KK9UQcd6ucYL6ROU612PtazrxJfNFNB1igi3IfwMvW3dGwXD2LXUgJjg4tNAuF0ie2xYNq1kTmjH3fDrGQ9wDEnTFuSx2fYUZt6G/O81pWvYGF/8M0qLsdq2rgB0vVpIGBDCgjo+eNOkXn2Ac9rCGYqhI++dXNj+ofeX+2f95jSHybWwmbtwSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=72qcUnPpdP0uEVnitS/qqBhvFc0fw0fVzMWmHey7FGA=;
 b=TR51DahRdRYzr13diEQLnqXIfulqcsqHDPA2AjOZVRELRV/A2+gUcOSrbOvf0YN6df/t7xwavnZ3PAVCNydVWkjBnx5HbbW+vSGZ090Il/9+OcqUtBuW/6m1GXFDxcotNCMEwq4RYhYc6A+6DDyly4Kadsx7U5Z3qVE7W1s0SDE=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 CO1PR01MB6743.prod.exchangelabs.com (2603:10b6:303:d5::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.26; Wed, 19 May 2021 07:50:41 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.4129.032; Wed, 19 May 2021
 07:50:41 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Date: Wed, 19 May 2021 14:49:33 +0700
Message-Id: <20210519074934.20712-7-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210519074934.20712-1-quan@os.amperecomputing.com>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HK2PR04CA0081.apcprd04.prod.outlook.com
 (2603:1096:202:15::25) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hcm-sw-17.amperecomputing.com (118.69.219.201) by
 HK2PR04CA0081.apcprd04.prod.outlook.com (2603:1096:202:15::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.25 via Frontend Transport; Wed, 19 May 2021 07:50:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 27675c48-38e8-47a8-9dad-08d91a9acc76
X-MS-TrafficTypeDiagnostic: CO1PR01MB6743:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR01MB67439234686033057921A6A6F22B9@CO1PR01MB6743.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:608;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jmQbRJyqkQsM3HQxPPe2ExOMpCGWdYyELMlPs26DRO879XiSDdEoqZsb86upnnOCTQYcXP+zsV+Yw4Juk+/PDZolpnwzHAUYZXwhhmAnZt1jK85EgP7La1+vO/8q07YYCwHIkbHc15Nrg3GyFEBSTFhnwO4fggneSUa6Yh6z6CjsmDJ0EBONuXZTJUEZmI29D6it9nA98y/qI16++cyMDWppwH5hldqdLVRWX6rmpXwN/GCa+RKyLahjsYqSFVhKcvHA5x/DoWzYanz7cjzPLbcC8yAxZNXsQ63oJLGR5BiM6bWFvCBzSTELV8G1JuByYW6BPgK6/769xKt4Dofbg6Xm6AT83GmC/1XBEp324bvgVDHsulLDlulARjS2gICHmvaoAE0w8NftYfGwUyiK7SLgRM9DkXBg5BTP5UBbSi0M93vIj7eImPq+RgGfnRZ7vQGBofrPwVOLXweuXN/fPAuh1HKByC8XySBGww1EACNdD2iVC+aFqCPfheZ/JSlYuqNTG50e3TlavIyzoKz7wMYIrjJcLfiwNCAubOar8jAj8LdckknCKMn579W2oIGEcV1moCoiohMaZCrjmm6pS/qnb5WH8/MxSo0S+9oM+DruwoP3EMVhe1Wz+7PWtii7jp4DqhXRjaHO5ujk4TUpHNa6ZVq+pRFFfq4PXuxJdeo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39850400004)(376002)(136003)(346002)(396003)(478600001)(66946007)(66476007)(8676002)(8936002)(956004)(921005)(66556008)(52116002)(6506007)(2616005)(6512007)(5660300002)(86362001)(4326008)(38100700002)(1076003)(38350700002)(7416002)(316002)(83380400001)(186003)(6666004)(2906002)(110136005)(54906003)(6486002)(16526019)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?VAawtY7SzeMI7QhtbdIb09nw0D0d3Uces2E33FdmxdpbI08M/snAAOCFceL3?=
 =?us-ascii?Q?qFVBp6rx44sIOVI8LIC+p4HF9fIpKoddetwnjYwNPbM1Pxs5AA1hcIzFC0g3?=
 =?us-ascii?Q?J+ueRerPNNmTXmdf1B6Vwg1JWijf2GulwvrAFuK36JmsUf53g23DFRSuy2mn?=
 =?us-ascii?Q?Sx/oW24BpICLW59tWEYn5vWA5HXPkF1FEysf0VcPigkJ/hr096AbeabpslmE?=
 =?us-ascii?Q?uvSlIpgUuUAuZeVSG2g7F76ZCZvV038nQEL2psK6hiHCQG7H2T17/PiEoMyp?=
 =?us-ascii?Q?Quscwbyzrx9kuHiMYqw6BIY62wFJPKzVycTQJo/t0i7ay+0ZhYCu5zG2P/nC?=
 =?us-ascii?Q?Xj0X+UqVGSPKZd34WUYgHCqM7Pwa9Zz8XGB2j5/1tKtmmkyxgbg5PjjLBC3o?=
 =?us-ascii?Q?CvkV8m+FYDwQmMTQxnIFHKHZm9zo+/lUEiFBi5olCHX5cL72WKiJRPsw59o3?=
 =?us-ascii?Q?VxqKP8JdzTU5cxCesetRTZvoOCLU3DF6swMJgQborpK67EWfGUK5IcxvkNK6?=
 =?us-ascii?Q?fF5f1RVsF0EH1oh5o/+v9Z3P3fzxKdS9T6lwNxmtGqDSEFmTSBElaGvknxkB?=
 =?us-ascii?Q?hcCgrdSAUccGSwtYwnOwomCCN2oqpzjfx6fXr89EAVg/ypx554tXbhOBhRHF?=
 =?us-ascii?Q?MSlKGxfLclFglWC2NPL0JfLGGL9BU8yYKGyZhIDkURPuZbngjIaMfhR0GbqJ?=
 =?us-ascii?Q?t+TnTLC/mniVPC+7vPhbNQDGhOeDjR5VHtd9ddSc85QcoeFr2JdH4GXR5Q9N?=
 =?us-ascii?Q?XdkGDQFRJH4YxN9y219dfz9/DsE7he4ajVYuP3c3KcNv/kBrKlXG/z1TTE3R?=
 =?us-ascii?Q?Tt9eQyaSafSP2ZkvrShI3TzIerQRIgG0Fm7T5JEm/idpTOONM1S5+eG2dBWx?=
 =?us-ascii?Q?KOvK5G0tRVfrC9vyKjI+659SupeloJOFegCq9N+vAd+b31Ao8PieVW8WZpgr?=
 =?us-ascii?Q?bkkOpxUpBBPfDCeMsWdv/q69kgNStk0AqvGCRu2Ddy8jGz6O5T7TUklZ2NoW?=
 =?us-ascii?Q?e1mWVZDCAw/1OBpT4dJEde00gdx4nz7DK461lvL1ZOGgrQHTnsXhWtqiCtMu?=
 =?us-ascii?Q?j6e1nJ3ACYfU0MiN35KsUa2B70Y08aQUEb8zXRT0FJX95aF528WSLoWBtxn+?=
 =?us-ascii?Q?8OxoDQ2OhukbmQm3aAEYTrll2AzcHf8Jnx8ho4KYJ5zrCCDxVKjgUx097ZXf?=
 =?us-ascii?Q?/+c61ss8aLeBCrmjmr5QS+i9JuLkGBOd+5JF4AFao6QOXwpdD8smaNhu3F8+?=
 =?us-ascii?Q?CWDFIo+GaludA1CsRoxLsEp9ZoUyXeP7uxfNxUPDVaJCvUKTT/cyo/5gFO5S?=
 =?us-ascii?Q?nTqUPuZwi1+1ctAVMQ81Nhld?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27675c48-38e8-47a8-9dad-08d91a9acc76
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2021 07:50:41.0955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Er5F6RneK7Kw2/80WzW8+Ct8nFVih5PKQxO02Rg3dCDs+9ymYDnvdGU57hha5i2nGN5bELf7+HnX/oDO8WfxzvVvUU8b0wdUem00ytFJ14s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR01MB6743
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.220.106 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.106 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1ljIPw-00EokJ-Vo
Subject: [Openipmi-developer] [PATCH v3 6/7] ipmi: ssif_bmc: Add Aspeed SSIF
 BMC driver
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
 Phong Vo <phong@os.amperecomputing.com>, openbmc@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This commits adds SSIF BMC driver specifically for Aspeed AST2500 which
commonly used as Board Management Controllers.

Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
---
v3:
  + Splited into separate commit [Corey, Joel]
  + Invoked aspeed-specific aspeed_set_slave_busy() when busy
to address deadlock from Graeme and comment from Philipp
  + Combined two interrupts to mask/unmask together [Corey]

 drivers/char/ipmi/Kconfig           | 11 +++++
 drivers/char/ipmi/Makefile          |  1 +
 drivers/char/ipmi/ssif_bmc_aspeed.c | 75 +++++++++++++++++++++++++++++
 3 files changed, 87 insertions(+)
 create mode 100644 drivers/char/ipmi/ssif_bmc_aspeed.c

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index ad5c5161bcd6..45be57023577 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -144,6 +144,17 @@ config SSIF_IPMI_BMC
 	  The driver implements the BMC side of the SMBus system
 	  interface (SSIF).
 
+config ASPEED_SSIF_IPMI_BMC
+	depends on ARCH_ASPEED || COMPILE_TEST
+	select SSIF_IPMI_BMC
+	tristate "Aspeed SSIF IPMI BMC driver"
+	help
+	  Provides a driver for the SSIF IPMI interface found on
+	  Aspeed AST2500 SoC.
+
+	  The driver implements the BMC side of the SMBus system
+	  interface (SSIF), specific for Aspeed AST2500 SoC.
+
 config IPMB_DEVICE_INTERFACE
 	tristate 'IPMB Interface handler'
 	depends on I2C
diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index d04a214d74c4..05b993f7335b 100644
--- a/drivers/char/ipmi/Makefile
+++ b/drivers/char/ipmi/Makefile
@@ -28,3 +28,4 @@ obj-$(CONFIG_ASPEED_KCS_IPMI_BMC) += kcs_bmc_aspeed.o
 obj-$(CONFIG_NPCM7XX_KCS_IPMI_BMC) += kcs_bmc_npcm7xx.o
 obj-$(CONFIG_IPMB_DEVICE_INTERFACE) += ipmb_dev_int.o
 obj-$(CONFIG_SSIF_IPMI_BMC) += ssif_bmc.o
+obj-$(CONFIG_ASPEED_SSIF_IPMI_BMC) += ssif_bmc_aspeed.o
diff --git a/drivers/char/ipmi/ssif_bmc_aspeed.c b/drivers/char/ipmi/ssif_bmc_aspeed.c
new file mode 100644
index 000000000000..019e51e16a7e
--- /dev/null
+++ b/drivers/char/ipmi/ssif_bmc_aspeed.c
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * The driver for BMC side of Aspeed SSIF interface
+ * Copyright (c) 2021, Ampere Computing LLC
+ */
+
+#include <linux/i2c.h>
+#include <linux/miscdevice.h>
+#include <linux/module.h>
+#include <linux/poll.h>
+#include <linux/iopoll.h>
+
+#include "ssif_bmc.h"
+
+extern void aspeed_set_slave_busy(struct i2c_adapter *adap, bool busy);
+static void aspeed_set_ssif_bmc_status(struct ssif_bmc_ctx *ssif_bmc, unsigned int status)
+{
+	if (status & SSIF_BMC_BUSY)
+		aspeed_set_slave_busy((struct i2c_adapter *)ssif_bmc->priv, true);
+	else if (status & SSIF_BMC_READY)
+		aspeed_set_slave_busy((struct i2c_adapter *)ssif_bmc->priv, false);
+}
+
+static int ssif_bmc_probe(struct i2c_client *client, const struct i2c_device_id *id)
+{
+	struct ssif_bmc_ctx *ssif_bmc;
+
+	ssif_bmc = ssif_bmc_alloc(client, 0);
+	if (IS_ERR(ssif_bmc))
+		return PTR_ERR(ssif_bmc);
+
+	ssif_bmc->priv = i2c_get_adapdata(client->adapter);
+	ssif_bmc->set_ssif_bmc_status = aspeed_set_ssif_bmc_status;
+
+	return 0;
+}
+
+static int ssif_bmc_remove(struct i2c_client *client)
+{
+	struct ssif_bmc_ctx *ssif_bmc = i2c_get_clientdata(client);
+
+	i2c_slave_unregister(client);
+	misc_deregister(&ssif_bmc->miscdev);
+
+	return 0;
+}
+
+static const struct of_device_id ssif_bmc_match[] = {
+	{ .compatible = "aspeed,ast2500-ssif-bmc" },
+	{ },
+};
+
+static const struct i2c_device_id ssif_bmc_id[] = {
+	{ DEVICE_NAME, 0 },
+	{ },
+};
+
+MODULE_DEVICE_TABLE(i2c, ssif_bmc_id);
+
+static struct i2c_driver ssif_bmc_driver = {
+	.driver		= {
+		.name		= DEVICE_NAME,
+		.of_match_table = ssif_bmc_match,
+	},
+	.probe		= ssif_bmc_probe,
+	.remove		= ssif_bmc_remove,
+	.id_table	= ssif_bmc_id,
+};
+
+module_i2c_driver(ssif_bmc_driver);
+
+MODULE_AUTHOR("Chuong Tran <chuong@os.amperecomputing.com>");
+MODULE_AUTHOR("Quan Nguyen <quan@os.amperecomputing.com>");
+MODULE_DESCRIPTION("Linux device driver of Aspeed BMC IPMI SSIF interface.");
+MODULE_LICENSE("GPL v2");
-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
