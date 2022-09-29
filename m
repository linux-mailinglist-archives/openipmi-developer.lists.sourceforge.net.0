Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 513DD5EF239
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Sep 2022 11:37:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1odpym-0004d7-EN;
	Thu, 29 Sep 2022 09:37:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <quan@os.amperecomputing.com>) id 1odpyk-0004d0-AI
 for openipmi-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 09:37:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Content-Transfer-Encoding
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xkLjrU0IbDLniPUdX+5UbxDvBDLzB7ASERb4hD9UqjU=; b=QRq9694mZSR7U6fCGW39gCiUot
 veMOesL/4sXn9Qty1pFEDL0SW0ibiag+exMGCcIlR6D9rbVC70F2DhO96xAHOrTZMG/rLATzuRwqU
 IPdV8vYZA/1OSR9Jq5niOCnPQ8qxDMNRFvWNR/FV1YRgJivF1SH0aBDJF27AP9ytm4zM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xkLjrU0IbDLniPUdX+5UbxDvBDLzB7ASERb4hD9UqjU=; b=BE2DtJk+3TiCKRaTGefCsJjD68
 zhY2FjDqRYm1D5WE7SAqNtO7EZbM0LmB0XvTMRXveGXfxaG/DGBbf9h3bKDyJRnxWu6TO8wQKoJnW
 JzQfx4ui5FUJT8ZuCb5nX3BXehp63aCbTElnyk1xtLMpLxvWvNlECXTWKxQntPFkYwsw=;
Received: from mail-bn7nam10on2110.outbound.protection.outlook.com
 ([40.107.92.110] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odpyr-0004CB-Iz for openipmi-developer@lists.sourceforge.net;
 Thu, 29 Sep 2022 09:37:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QgWmzHh4tJuBBmc3IWJXuw4yQMt8zAkA1z01lBvnuc+LJpUFR4EIq/vvtOZogL0IAWisA1dvNAVCYvY1Ahlp9Y3LrqWhuK1k64tyfjdxrXYkUDn2DuVn//5inFMKcQR9/+/YGazB4usRhKLpjcutzm1Yx+SJ/4DrCwq8rJ42LnS2wDjJQcUS4hlco/zqV1dM/fK6/aDDOsN8OJfRgVBkjWzDhJlX3EIkjXAEkh0Ske3A4H/GH6b17d5xrzUvr4tyY6wxkbgUZrtPflnhIFOxJmp67buScdd2o0P/0YHpJ8/FgeuYEN0b0l8LYFrg2MyQ1B4vSJPjSxIOhl1AFEgbfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xkLjrU0IbDLniPUdX+5UbxDvBDLzB7ASERb4hD9UqjU=;
 b=krkYBlweui75/RYQhfTVJWDBpVr38qMyw3ne4yFs/l+UMdLlNR9F1EnAFDRJQ6UA/WVUl9EfiE/k4p7M+33uRXmVur9WoTZZYLcin73m6HrBltzbMGANe4gNNuCu+8nk2Ksk2cCBWwoIneZ52byf5goqe2jcNFYI/Kwq50EA3VJSwf4Z702HDaHFrbG/2GYnohlBvyCtmrAJtu4brKJGSPlZaDP9oc+R9F+Dy9+tBKqGwt8uZNfaPIUef5skKFs9yJ+BjcrJV4wQuEhdkxL15qS1q3uJt2rkR0NxsGxQZzptI417nRQpBgkfyQRscBiYE36YuLL8Hht9v724YzvNGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xkLjrU0IbDLniPUdX+5UbxDvBDLzB7ASERb4hD9UqjU=;
 b=GgODv9tip//V5jewGfmIDIdSBmk4qDhqIwVlsIi51dl6sAbkThlLhZLc4zTdmHTtyj375U07UdTa5914C8ZJKouo6AKsTbMhezkL4gQwy7MXv+3QUIpMHCvfT1UtJ1vg9cSlil+W+SdOkP5C377VVy//+q9mSdjWRi7bLDaYZIk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from SJ0PR01MB7282.prod.exchangelabs.com (2603:10b6:a03:3f2::24) by
 LV2PR01MB7885.prod.exchangelabs.com (2603:10b6:408:17f::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.15; Thu, 29 Sep 2022 08:04:03 +0000
Received: from SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7d50:e907:8e2e:1ff0]) by SJ0PR01MB7282.prod.exchangelabs.com
 ([fe80::7d50:e907:8e2e:1ff0%3]) with mapi id 15.20.5676.017; Thu, 29 Sep 2022
 08:04:02 +0000
To: Randy Dunlap <rdunlap@infradead.org>, Wolfram Sang <wsa@kernel.org>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Brendan Higgins <brendan.higgins@linux.dev>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 openipmi-developer@lists.sourceforge.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org,
 Open Source Submission <patches@amperecomputing.com>
Date: Thu, 29 Sep 2022 15:03:25 +0700
Message-Id: <20220929080326.752907-3-quan@os.amperecomputing.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929080326.752907-1-quan@os.amperecomputing.com>
References: <20220929080326.752907-1-quan@os.amperecomputing.com>
X-ClientProxiedBy: SI2P153CA0002.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::16) To SJ0PR01MB7282.prod.exchangelabs.com
 (2603:10b6:a03:3f2::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR01MB7282:EE_|LV2PR01MB7885:EE_
X-MS-Office365-Filtering-Correlation-Id: a84d68aa-4932-4590-672e-08daa1f12bfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +On/CMzd0jO9gpchQ0eSP9VfnL4w4sblLVlR1n+49yLwvkxxJ0ceU+DG4GanN5/DW06cd+LRpzB6HFTQf+VD0F9eSD/DZZgP3hXZ/OsqnjkEozKu5DrgBDlqv25jHeQcnI0XcdJQMvZCmnYJ3pQYaGGxvUi2Hpr1aDJhpiQCOnaRlJToeEkk0eANRAVF2D3CeVEg9YJu1guHVxeFzHLXBuGq+/Qe/TdjLPprZDTcSSaBkYTyIp5VtELnWehKcmirP/nPoI9XV6VT5Np/ykCJwDZz1ac5pDsaTUmsAxRnokaxPfs64ulkC9TMceYVEHESqKggeOVoBpdAX6KxrYqIu9z958gtZABh92C/HAyPDmxgSe+2EgaXHubaUMFUEzITzEPXcO6TyDTKv2GDl46G3VU3xR9QAfniRI6NKB49VEa9JdiSXmMt9Hp0IjAZSXtUGC1QzIqWvyLLowNLW04vzO2QBuh8iMAgKfwkiSmkc+iUbv/AziFnBzEjqvnDxRe2OkM13SZ7CjArRh4PPYAUXtUROXHn4GMu+SF/dx+jVZEqqOtcSUjzYFsh9M418rkX5FIe6g747ZDBMPpZ6aqbafv3UeOjwtaXADMWV57OtRSwkltIITQFxUWh1/ODOTe/zsa6kN5YUppSPQTiwfRnxslbU+u37GBoCe7FLPR5ect+i6YXb7hSJ81ztMZnjbRRnCEYp4A+qR76mHdqzieYFiGRXZ4kz6G46qMOo/rUlmMG1Z5JqVOKSv5igLqYjxOINtTSXVthFUxN+5+PvuDBZ44fMBaCAAvWV5ZEYaWuILyg5dyZG4L3yZIDEnvAspA9/VYL/JX5aYNAqQtzLYCIHGjpPughU4UjfnE8k1tzAeU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR01MB7282.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(366004)(346002)(376002)(136003)(39850400004)(396003)(451199015)(6666004)(2906002)(8936002)(66476007)(26005)(6506007)(6512007)(66946007)(4326008)(86362001)(54906003)(7416002)(66556008)(5660300002)(38350700002)(38100700002)(110136005)(921005)(41300700001)(966005)(6486002)(316002)(478600001)(52116002)(8676002)(186003)(2616005)(1076003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WXUcBnLZu8F1cuiaitrYA5PnOt8SwvOeMnh9wXTm5X2osLy2DrsTb36cKhBZ?=
 =?us-ascii?Q?D7iceMbRd25Rrzg5gckb2lyWngsdGZZwQ6nBRY572qCk3AOd5u+QemmX+vpk?=
 =?us-ascii?Q?OGANnlBt3f34BRpUXJqOEwnWFgdEunHNieA7rjNyGd7ZWOev4dXj7BnVMlOe?=
 =?us-ascii?Q?1rhxL+QPslBpUK8kdPm7KuyYfHIvVOvWD4vdkHTpVGHN3Yjdhc9s4ANi/f6s?=
 =?us-ascii?Q?M/Ix0cEC71ypGSXqRzT6ZsIu0GY66CuAyunKcj/kMwrHNONm2kE0/6LctgvP?=
 =?us-ascii?Q?No7tHoOEMIdkRMmAw5njSmizCpCbkc1z5DrNf+t69/3rbZeRoIsQf5h4SzEp?=
 =?us-ascii?Q?gBHbIMcgWI/k/WYQA9+sByMXY8YirnHRhk1rYkepwsqnSeMvPe3Bu/ff2x+N?=
 =?us-ascii?Q?h6YArW+Egv/G+TVw2gTtBNiRj/EsWuhkBb9+UMQuIhjkEJy2vhF6IashKotB?=
 =?us-ascii?Q?CAcBNgJTvopPPDTV9EirMoewuUlsO80Caf4ywcTN3scACa0sTQbcMnoPKBNt?=
 =?us-ascii?Q?qO9jwkg2Xkta4PpGsSchqofxKTLUpezIofL2rjbeuJZ2J9J2S5D+tTCbH+k+?=
 =?us-ascii?Q?8gsmJf/bH0mN0rm/EtT8EUKhRqOuhvk2XZOCA9VQbIp7SSwCOMnKuT1/fNZ5?=
 =?us-ascii?Q?FX5qiQZ/yIO/xyWal/l2QvRWf3/jsseNor1wGhdHsNiS5ft+y1URtx6nUy6x?=
 =?us-ascii?Q?U1a1obqyQ3/PZ3NoWzQqumAAdp0LxLI7vJifawFdswxSf5YmBE9LfphzRdDB?=
 =?us-ascii?Q?eqVIQRTBd332nW+1KdozPWrbhi0SV4HXzCiwUNO3cVJVF5Ds9gewzxRX7Tkh?=
 =?us-ascii?Q?3eztfZPo2MWqlvFJl+PKgY1kBLJy4iGrGjjgnGP5r+hITjvcalBeleE5/35W?=
 =?us-ascii?Q?+U/s1hueVlvqyZVhg9AyDo2XJSmChJf1n+q9hnNJV+3Y2VrRAJ/228P/4O8x?=
 =?us-ascii?Q?tQDh1Nl+oIOWtupHovqEWTj31YE5QTBcLkUA3bfvdAZhl+/ctI2agB0HoNp8?=
 =?us-ascii?Q?Hk9scwi+YhyCIutJHiB3V/4Jb6lTWNnMFdtpwJrKbYhanDxhOGeRSDBz/eFi?=
 =?us-ascii?Q?osoQSORxFjT6uwG+aKXoV6c/TFkZ3hVeDtJtnX0qw5k+n8615H2JZo2epjAq?=
 =?us-ascii?Q?BaL6r+mlQseuOAh8jo3C55e4ktSeWbBFHepU6hdCU+EgnYgi8+s7SPFJ71S9?=
 =?us-ascii?Q?dHWDkr1je6jHp+AnTaTdNpKJ1f9R/b1Xsy34RAT6S8JfbKgcYJKBpaoqSd52?=
 =?us-ascii?Q?3UTdEgL9jRM+r3YxPoOUqD/wW9cJcH8ZSSMzhHt/Jgf9Omg0304JOjqu3InP?=
 =?us-ascii?Q?k4VcddgJkR2bVwZ4/MyBQPu6MHrsISV2aQDKn+tsbNbyfMHeP4hZYKDfAOoJ?=
 =?us-ascii?Q?Rp3fRSyUiW0UiSr0w4ku2kq26w2fjBnnnE32BzDmUvhUJGGaBL+LFeqQ61aq?=
 =?us-ascii?Q?q6HEXRVrh7fZDLA1rKVRyFl9BxlipyB/r4ihQvcfIDHAGHFs595BsoA7bvCl?=
 =?us-ascii?Q?0yHoAvueCIu0Nm2GC17/Q+0EYZJKMFDkkN2Do459bola2rtL0MzQOsVC96Sd?=
 =?us-ascii?Q?VwlGrtOjggySGCQSnl64Ou8C0Y+KLamEAuoKYN/qodOJtD77DEt1X1kGsATM?=
 =?us-ascii?Q?hLZmoCpnP6pTpl5XE+0BEEk=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a84d68aa-4932-4590-672e-08daa1f12bfb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR01MB7282.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 08:04:02.7182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /98gMqbhkyZTEUIEu6Kzd/tRYvK2Y9KnQFmeWUm/DC++AvwBXe6SA3ez+GWdsEUkhzAEvGOQ1UESO05eHSIC3U0OB5hJkeq3Vb9wozGJw1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR01MB7885
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add device tree binding document for the SSIF BMC driver.
 Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com> Reviewed-by: Rob
 Herring <robh@kernel.org> --- v9: + Update missing Reviewed-by tag from v7
 [Rob] Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.92.110 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.110 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1odpyr-0004CB-Iz
Subject: [Openipmi-developer] [PATCH v9 2/3] bindings: ipmi: Add binding for
 SSIF BMC driver
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
Cc: Rob Herring <robh@kernel.org>, thang@os.amperecomputing.com,
 Phong Vo <phong@os.amperecomputing.com>,
 Quan Nguyen <quan@os.amperecomputing.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Add device tree binding document for the SSIF BMC driver.

Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v9:
  + Update missing Reviewed-by tag from v7                         [Rob]

v8:
  + None

v7:
  + Change compatible string from "ampere,ssif-bmc" to "ssif-bmc"  [Jae]

v6:
  + None

v5:
  + None

v4:
  + Fix warning with dt_binding_check [Rob]
  + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml [Quan]

v3:
  + Switched to use DT schema format [Rob]

v2:
  + None

 .../devicetree/bindings/ipmi/ssif-bmc.yaml    | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml

diff --git a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
new file mode 100644
index 000000000000..02b662d780bb
--- /dev/null
+++ b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ipmi/ssif-bmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SSIF IPMI BMC interface
+
+description: SSIF IPMI BMC device bindings
+
+maintainers:
+  - Quan Nguyen <quan@os.amperecomputing.com>
+
+properties:
+  compatible:
+    enum:
+      - ssif-bmc
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ssif-bmc@10 {
+            compatible = "ssif-bmc";
+            reg = <0x10>;
+        };
+    };
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
