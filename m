Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0723534E9EC
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 16:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b3DV8WzvZBXCrK21y2dDkBMxx7yuU0YD9S2WrcGLJR4=; b=U2bUg3CPA9TlXpAxWAg92u3yN
	mnpvoDa69oTkRpGQV5ip4CWU8HRNbEPG7ZznykX0cbxAL0m4O82nFTjOKBZFoIWqMlrabGoSFJkgu
	UqPFNSHYBUVv5lSf6WwMpKRNseiFADIdsT0JmEjQcBfYbRKSzhgeR1MXcHSXxpBMdBr2k=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRF5g-0007ml-47; Tue, 30 Mar 2021 14:11:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <quan@os.amperecomputing.com>) id 1lRF5e-0007me-BJ
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 14:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gDKOwdplJFsue3nynYNcN8vpg88fsI9i8TnpdlofzgA=; b=MNzdz4Bo6RN9Ymq9MwmIS+OA94
 jOCmDMG3BIDmHV+1j+5gE9G5p8GJvEg7pqkzqcVD+U/vKmL3CF7lrNKW/AN/LEZB1rudN+/AnsZEJ
 MEg37ktGOULiPYCbHJx8IDwCX/3iZY+F1etpkGnU2FeCZ81cu4vPbUVuD8GPtoZcuz8k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gDKOwdplJFsue3nynYNcN8vpg88fsI9i8TnpdlofzgA=; b=TqcJWXHXTFBJ+10C0rs7rH0O+g
 W0lkoAcn2BOpHXTPGfhlVrEGwioBqmEKghdyo2QtFdXNUtGhCDFiXlaP/RwEccmXeVZWPV4JeTD2D
 7Kk8N6gI8b1ca3ICLk9gyOTkr98Sxx45zDIHEIPFa6vGrgbihJBADjr+JAh/FqeLWbIw=;
Received: from mail-dm6nam12on2125.outbound.protection.outlook.com
 ([40.107.243.125] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lRF5b-0001dB-Dd
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 14:11:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JMIGl6P/xHnIr1zPAnGfw3zfvwtRqb1KjH/mGgIqr0WgtgqJ59hnZMgjJ7nlE5A1qNRFZ6lVkLtYLJaI6STxRhJksXW00zYVoE5ENv0fbKgML4K8a0cKECa9ZUPsuvQJuxa7LsmdFZGdamPzjFr6N6Kt6okvr7n+Uh7rhokdbXknSFzvH9MVcdH7nJF0ESObgkG5tn5X0Vis8AKZNv5iywz3/aUmhJCKpKpODX2/VVlrGASRDKIboFIW41rNjMKpxF9GLSwuXOI6u8N1jtxKIvfe3PTplPZk6u0yoBib7eLXNvjGgAsfQeMwr3fVTnyrKzT2SOscCl78kYeBB02iFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDKOwdplJFsue3nynYNcN8vpg88fsI9i8TnpdlofzgA=;
 b=hZ8bHLI50i1lGw2joobkac8Tuf+zb++85I4oihttvVJezHLEWBCfJJ1E0lAAytoj5vEo+N+Yr49a5RVJKbfy3oi6dPtU6hGqYfSvRGsUUCh2OA5y8Fpjmkc2RbMFPusgS6e7APbSldB4WVOhij5XhTVt5xnfiOtG2Krni0Wp/VPCD2r5mMgb2yWRkjKFJJjypiD01Fgvn6PjmTOCXluAnJvIB5a5udAauOzV3KJ1bi77/Et9bSSO4Cfqdj0YkwhEfFQkufK6civnkaRdZErG9C9hvszlb41xwb3mq5vgmdwbywds7vyCLGRdY/L8/yLj1h85LXPhVWWJy2cJmCx53g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDKOwdplJFsue3nynYNcN8vpg88fsI9i8TnpdlofzgA=;
 b=ZI+kAnFk5uBQ1jCf1avVZAZhXcso1+ql3nhm4pIUsmBj6XumRylYFojIfnZKRgfiAsJ4YfYTEoy5Z7TmAA4756UmhdPkWFRBgBkX9GGGFR8hsmPNKEkPPsyVDRRrgvN7evwWjofa9cFaZSiQe+U+DFgf87Vkd8PDnsShUvkZuic=
Authentication-Results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from MW2PR0102MB3482.prod.exchangelabs.com (2603:10b6:302:c::32) by
 MW4PR01MB6338.prod.exchangelabs.com (2603:10b6:303:7b::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.30; Tue, 30 Mar 2021 14:11:03 +0000
Received: from MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503]) by MW2PR0102MB3482.prod.exchangelabs.com
 ([fe80::d840:7aa7:58d4:b503%5]) with mapi id 15.20.3977.033; Tue, 30 Mar 2021
 14:11:03 +0000
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
Date: Tue, 30 Mar 2021 21:10:29 +0700
Message-Id: <20210330141029.20412-4-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210330141029.20412-1-quan@os.amperecomputing.com>
References: <20210330141029.20412-1-quan@os.amperecomputing.com>
X-Originating-IP: [118.69.219.201]
X-ClientProxiedBy: HK0PR03CA0120.apcprd03.prod.outlook.com
 (2603:1096:203:b0::36) To MW2PR0102MB3482.prod.exchangelabs.com
 (2603:10b6:302:c::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from hcm-sw-17.amperecomputing.com (118.69.219.201) by
 HK0PR03CA0120.apcprd03.prod.outlook.com (2603:1096:203:b0::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3977.29 via Frontend Transport; Tue, 30 Mar 2021 14:10:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c17f7c28-f108-4f8b-062b-08d8f385a6fb
X-MS-TrafficTypeDiagnostic: MW4PR01MB6338:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MW4PR01MB6338D69ABDA6978058604AFBF27D9@MW4PR01MB6338.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PJELqQPkrrtarTKCK0I7uxJKglbuTeDw2pM/gwPm1vmFeW4Q1alAS8EbET51rjTmwlV3wY5b53+okD0FTlSPJKVO4yuo4C70Gr0ODK8FZz/SgdSP1oO5WEXhIIriEDfpbiD72YffMoBuVCF9NPMHl7JfFyyj+NB22uGOqPHZUB7yB0fnSAoMfJOmz84UipwWxZ73bHUsagNc7xXqDwGotsRCNZ2zSybXD8eOlaSGsXRJnFzoTUYly+e2vDvV79C/mGEV8c4VTh47ZFYbl+MNPbH778HogJKGn5VR1aM8gx0f90ieyN5tucFHDEHcYzGN8EN4Vliq0rVn0TOZziyEuQnNu7xN033pR8OezIQ2c34TQ4VVHb2FBkdRfPePDcm80E8oNbriU3tkkmrTI5Kiznjse2XGNQm2cAIyp9OJz0HX3qW9+JQW/fz0rC3c5wzxe+3hp5yyCsPJBGOsIySfFQBGxl9LuoXM/79nA7LUutM5Vmfp7mwMZoAzzCniSg9PGn4rgV5AGOjFSpzie4Pbd/eep2eOigPBCRKRK7k4FuvQhMDDNNfsDSkz5ybikmWG7ijWIx9mWF+srickVq1jEpSx2XW/KlHqQ6bwVkPqKB9zKwNrm4coSjjtrWMLRYQdHq+9gx1zcnVKmER/AaeWKWAdsxHW+UKG5wEeR58WPFg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW2PR0102MB3482.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(39850400004)(376002)(346002)(396003)(2616005)(5660300002)(2906002)(956004)(186003)(16526019)(6512007)(66556008)(66476007)(6666004)(921005)(107886003)(52116002)(8676002)(7416002)(8936002)(86362001)(38100700001)(66946007)(110136005)(316002)(6506007)(478600001)(6486002)(4326008)(1076003)(26005)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?bWNow2FAcJRJjGDIznI0l4MXWekNoADC17QyTRZd4xjw+Nb2Fp2QkMCdlFPH?=
 =?us-ascii?Q?WEgE0746P7GL3gllaoZ80CbLfw4aZqSxksB+vva26om+Qp98cr91FY7vlFgi?=
 =?us-ascii?Q?KuiNhxIUzvCPRAn8sdmIFKxMhv62JkL3mWwE+oyu5vlewmf0O7Nvd6uCtanQ?=
 =?us-ascii?Q?Mwg8E6isefWa4JxwlrLeCgVBcLzdk2+z2/cseUUl7T1cSwxduFuhLHvRMzXs?=
 =?us-ascii?Q?xDVxd5Hg4DwK5zkkTMI4SQ1cwicMhtixxMJ/tf+btcREDw5JgWxYypvONM1t?=
 =?us-ascii?Q?WhvE8mLvolzac+wr56KG4jaM+6CcWjUc8gG4mJn2PeTmkKljqmWiZDwCrRWq?=
 =?us-ascii?Q?IsDZTLHiB4Yz+r73N1u+sJb4pk+ym3WGxPY87GHYWabW7IglbS9myG4/b3me?=
 =?us-ascii?Q?cgi8OGctWVvrah/U7gFNNquChzlpFqmcP0n4ihC6lZ1WayZH0hIHAtrU4L/T?=
 =?us-ascii?Q?fw31EGUC5iM6vzvbO/Z6MtDfMQgFZaqGNUsnGoI24VBjBuqeJusdfxayQfa2?=
 =?us-ascii?Q?uXj3mWEzQbs5Tjw0G3K41AZk+5jiCxftsRpyh0APE5iDaYYKtRCz4u/lUDIR?=
 =?us-ascii?Q?GpC1dKXKDQ1BGWZ8eDU+wbA37j2Hnv0ZyhEMmwoz+/+Ql1EWJWB+2ZM6C07Q?=
 =?us-ascii?Q?aAb8oyJBxN32WfGSMLWbGv79pqsejHZYeswhsmtZhuIm7Rc0MjuJKRdXy+zD?=
 =?us-ascii?Q?dv7zDSaw3Df0ApOa4noJZe6QEolZvsOAsjd1ds1A++Htrm7Lm0leaoqXQgoR?=
 =?us-ascii?Q?utsmbWnUxp0CnFp3JwO9689uLrX3VOnA4yrhvKdU4JPWqQ8QYAI3hLRboPKr?=
 =?us-ascii?Q?QH28D+VV0DyNxDNvRqotD3a5DeBnllriTT5z9OQrbbp1M7RMyHXejxv6jU/9?=
 =?us-ascii?Q?bwJH3GgBo6W8Cwoh/8XCaECeI9Z/oAYj8ksWmeIJsFme4JOQ0BlKwMAAVd//?=
 =?us-ascii?Q?aEdFfh/HlS1QwdF329P8JOFkjZD+tSWtHqkUQ/uL43pZnEr2MgGCp/ATKApK?=
 =?us-ascii?Q?nAVad/0zR2iFW85avoUBmE/pboaalI2RBGnWGdw43oS0f6zXeNYuPUQJ/Brk?=
 =?us-ascii?Q?a+NA+9svNeCiUtrYcGd/OtoHLrtTVGxCcf+nOfBC/n4m6/OO0npPyEYy69aD?=
 =?us-ascii?Q?Vt8RyJGQ3fjMdRShyrOO2K2r8FWLq6UZdTTee2Zz9O5diJvuVI4uoRTxDiEk?=
 =?us-ascii?Q?pkxQFhg3oLAIMkNvd3m2x/nVGxoCCyFurrQjhNouioOfksf8piwkhfiHZazU?=
 =?us-ascii?Q?q8L555+tjrZV3QMJ2hClav2Q//NJPU3vJa3b6aGD0luwPqUYonKmKUsoa7w8?=
 =?us-ascii?Q?9OfDWgxNwNT1NlpSNqFy2fWo?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c17f7c28-f108-4f8b-062b-08d8f385a6fb
X-MS-Exchange-CrossTenant-AuthSource: MW2PR0102MB3482.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2021 14:11:03.7460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MC08wVW6Bplx56qU3R4MoQV1IxjCBMW2WOhf+yrSVynA/fX4wkypouc0qMRESHkPDAu9OTosM/zUnketGkKnxQFnz+OxAwGV798HhzopbDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR01MB6338
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.243.125 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.125 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lRF5b-0001dB-Dd
Subject: [Openipmi-developer] [PATCH v2 3/3] bindings: ipmi: Add binding for
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
