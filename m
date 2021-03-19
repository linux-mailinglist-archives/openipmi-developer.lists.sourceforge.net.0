Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 445F1341562
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Mar 2021 07:28:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lN8cx-00010k-Bg; Fri, 19 Mar 2021 06:28:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lN8cv-00010H-Fe
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3rglRCF2+66zHKVRZ4boDJXOEtO8m9hvabADBH87BCQ=; b=XCVE2XZ8PIGjwFBvpQ2q7tYiLk
 tTvurlzcA8Wwmd83kQql7LoIkSUNz3QbzuA3Uzlf5uLKf6DBzan8rirQGARBaEfMFe0XJQNawL9Sj
 9EA3jJwiMdeD4AXfKKvZxgeAnUGzF8lC9ui3zM+/qut/F1CwytkaTk4tapFM0tMXIJYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3rglRCF2+66zHKVRZ4boDJXOEtO8m9hvabADBH87BCQ=; b=ObMjeHVkQuabZkWWUF2HkLyv9z
 7A1EPmgNH74b461ic/b8BJXsmMXLUPvHluiaSsXLZNvuMxrdh340XE6pfRIWkxLPW08LTGUUtuNTf
 4+DQ729KtHxf/Uky19a4YHIARCr0+tZUiaozfIxMCGPtlJHPxg8b/S5xc32kk/6/3qRc=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lN8ck-0004VW-Iv
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:28:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0E7FB580A7C;
 Fri, 19 Mar 2021 02:28:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 02:28:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=3rglRCF2+66zH
 KVRZ4boDJXOEtO8m9hvabADBH87BCQ=; b=OCmJLCs4g7q1/uXGIYjxhtHRAMwpJ
 MDuR7EJpwmYZPttmVjsipap02dNAwYtDVS3ji9A5IETgNYLJ397OcoRUiEcKix1s
 cJJbILPpuEpcQWmLPslWgV6/uQK5N4Tt8vr/XgeZ/RNKkUadcEmzEAVVCmY31KMu
 I0lJ2qfhcjrktRAhUK/v9Pm4DAZErB637f7Mwn8XaEe/Cf326Aw3uoGx+kN8jqfv
 OAtbpXJrQMUvp4a5xNQLRf3yiw0bibq1uicW5iVBM117P0lUhf1T+6xWVyyqEbO9
 bWvVxZndmZCXXTegYtfPXY4hxnO5PeTnofT8Vx7ouxg+LYJ1JELWyHL3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=3rglRCF2+66zHKVRZ4boDJXOEtO8m9hvabADBH87BCQ=; b=LqTz8BGA
 hDUGtrL4/ajCM3j9kl665R82qFQnrLOiRQVVRBk1KhD5uleW8s9+Zzf3Rsb15H5e
 AaIel1xvJDtYN3nc0RtdVgdPHpyBTx8ZTdV3E3YFMBISDyJr936YfPUo6/JAYxb5
 PxVb+mWvzZL1RTOyaccqnFaKxuqa1j2qQpCgbXshYnnTgXZ44H15iQHz7Xhlhc3e
 Vs8SAJlZDOeR6L4/3oFUc9rZs5xFgtf2zBHFSCf7KJBoz47zh7YNyp7a5HwRMvSR
 pjpT+0VVxUZKgOMN1ocEFVVwGanYamLbk/miJWshO48Og25FIIrd9P98xradh+F4
 RQU5QgDF4TgOqw==
X-ME-Sender: <xms:lERUYDm76GeCzQJtceZSGCCA53pQmjRl2qU4-nk-fXCP9ncPUp4nCg>
 <xme:lERUYG0Jz6SZtaDFU28jsaeAfZm72DO0s5w_WU9OeDYcIVprZaoaYYLQGsscJzBJv
 C32XnR3QQVwiiTvcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtffrrghtth
 gvrhhnpeejgfdvveehteekveeggeellefgleetteejffelffdvudduveeiffegteelvefh
 teenucfkphepuddukedrvddutddrudekuddrheehnecuvehluhhsthgvrhfuihiivgepud
 enucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:lERUYJpJe1ypQskdHwMh30yZLLphuMQ-Bf54SXhxhqGzlOGwHkyyBw>
 <xmx:lERUYLkees89apBR6wFMEEh0PoXsPGrJ0Z5Vc42-9HS-8HW1uQlL2Q>
 <xmx:lERUYB0PaQv5FvEM2cGNgtLOdbI5lR9TV4TD6NoJsZhsCW0MU0Q3Dg>
 <xmx:lURUYN526DlGWIh701Iy9bA8J2gy83SKRQF4P_8_29gLfAEboAOcuA>
Received: from localhost.localdomain
 (ppp118-210-181-55.adl-adc-lon-bras34.tpg.internode.on.net [118.210.181.55])
 by mail.messagingengine.com (Postfix) with ESMTPA id EC605240054;
 Fri, 19 Mar 2021 02:28:30 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Fri, 19 Mar 2021 16:57:34 +1030
Message-Id: <20210319062752.145730-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210319062752.145730-1-andrew@aj.id.au>
References: <20210319062752.145730-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lN8ck-0004VW-Iv
Subject: [Openipmi-developer] [PATCH v2 03/21] ipmi: kcs: aspeed: Adapt to
 new LPC DTS layout
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
Cc: devicetree@vger.kernel.org, Haiyue Wang <haiyue.wang@linux.intel.com>,
 ryan_chen@aspeedtech.com, tmaimon77@gmail.com, linux-aspeed@lists.ozlabs.org,
 avifishman70@gmail.com, venture@google.com, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 lee.jones@linaro.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>

Add check against LPC device v2 compatible string to
ensure that the fixed device tree layout is adopted.
The LPC register offsets are also fixed accordingly.

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Acked-by: Haiyue Wang <haiyue.wang@linux.intel.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index a140203c079b..eefe362f65f0 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -27,7 +27,6 @@
 
 #define KCS_CHANNEL_MAX     4
 
-/* mapped to lpc-bmc@0 IO space */
 #define LPC_HICR0            0x000
 #define     LPC_HICR0_LPC3E          BIT(7)
 #define     LPC_HICR0_LPC2E          BIT(6)
@@ -52,15 +51,13 @@
 #define LPC_STR1             0x03C
 #define LPC_STR2             0x040
 #define LPC_STR3             0x044
-
-/* mapped to lpc-host@80 IO space */
-#define LPC_HICRB            0x080
+#define LPC_HICRB            0x100
 #define     LPC_HICRB_IBFIF4         BIT(1)
 #define     LPC_HICRB_LPC4E          BIT(0)
-#define LPC_LADR4            0x090
-#define LPC_IDR4             0x094
-#define LPC_ODR4             0x098
-#define LPC_STR4             0x09C
+#define LPC_LADR4            0x110
+#define LPC_IDR4             0x114
+#define LPC_ODR4             0x118
+#define LPC_STR4             0x11C
 
 struct aspeed_kcs_bmc {
 	struct regmap *map;
@@ -348,12 +345,20 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	struct device_node *np;
 	int rc;
 
-	np = pdev->dev.of_node;
+	np = dev->of_node->parent;
+	if (!of_device_is_compatible(np, "aspeed,ast2400-lpc-v2") &&
+	    !of_device_is_compatible(np, "aspeed,ast2500-lpc-v2") &&
+	    !of_device_is_compatible(np, "aspeed,ast2600-lpc-v2")) {
+		dev_err(dev, "unsupported LPC device binding\n");
+		return -ENODEV;
+	}
+
+	np = dev->of_node;
 	if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc") ||
-			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
+	    of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
 		kcs_bmc = aspeed_kcs_probe_of_v1(pdev);
 	else if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc-v2") ||
-			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
+		 of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
 		kcs_bmc = aspeed_kcs_probe_of_v2(pdev);
 	else
 		return -EINVAL;
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
