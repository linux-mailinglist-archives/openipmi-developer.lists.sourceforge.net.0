Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1696939F403
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:48:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZHl-00083Z-RJ; Tue, 08 Jun 2021 10:48:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lqZHl-00082H-2X
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5cVb9WHxunYwfjq2KjYBczrV4g18Mjpbcls8cjpsl7g=; b=ZHJmU2L2P0z39x6YG4W63TESMl
 lRThoFb55+IvW0yhfpf31fsHnjSf5a62pcKSp0jdvEiz+jIR2ASQd0abjtdLKMZoDNnmEnuM+SGTl
 ntJ7k0vIMIv5sBXz7WiLDTjVCJ0euQPOXd87rY1O/TSePuK4tgBG3nKSuiHD7Cycw36M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5cVb9WHxunYwfjq2KjYBczrV4g18Mjpbcls8cjpsl7g=; b=I0I+bswlhyJ2INitZG8cqzjZvm
 OilolneqVzbXIj2eBlbOmP+fZMrmbuPSgEjxO7vORba9AWDfcoDDimsqn99l4z/X0nw71szOdGhVl
 3Qc33ed7vQQznqRiAvbFnrtgUuYkRAmJHNmE1vEab8TNjsiDtcQ3jfb7jAF486vEXicQ=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZHb-0008GE-Ef
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:48:39 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id 44B0D580597;
 Tue,  8 Jun 2021 06:48:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Tue, 08 Jun 2021 06:48:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=5cVb9WHxunYwf
 jq2KjYBczrV4g18Mjpbcls8cjpsl7g=; b=BQls24J4T/nW43n53mEvc1ySdIfr3
 2AT1JfIiesR8ZkIX3IVoQYevSrThtS0yzmZH5DKniziaaSHxcAlVp+H8FecFShdi
 Gn0AvyoKttk9/5A4bpYWt5wW2LNZEgNZSsEtuqNbBmF8cheirpaNkhXFPrr3xfal
 ltU96f9YfKyJmaq9WRDcJGxjKQZkNTQ3cHNi5E87m1roIfZ61K7oq3kSIam6fBbx
 ZzClAG000yyRL9E6+dzBWHCXq/9dAKvuKJyLHwBDux26K0Q/wKl6VudYIC7lDdHS
 PMW3NCUxZrusUJ8+subOSt1P65fWvOl5X1HKZIGfkVNWKMcXaYSCPRVUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=5cVb9WHxunYwfjq2KjYBczrV4g18Mjpbcls8cjpsl7g=; b=s7LcEynk
 TUqq9z+6bWk1xsew3AXu3qnG6lXLSqHWj9WdgPyBe4BYdlX+md6zNDONUl8Tdgo5
 Zxn+UHwi9YYMrkE3cGiK8hq4JvsluOM3jU8DN1RNTKoaa6SoK49L09DkJNu5Y5dR
 TbEdJMpw8UFoKdomfEwSdsA1d1gQit5DUd+OfLidcXlq+9mEGu4nw9Qrb5jT5HRG
 BFIwpEEkClwofGYYbx4rxJE7sOckqOub1IsCIVsLPY922FFVQGZfz3uwNT+pJ30d
 EeBdL2yiTd5rQYHjODzl+Psi4feliUCt/wr/SNOLbn90JKAe61wB6LZq0i+jaCc2
 wUD8L9r6GLFGBQ==
X-ME-Sender: <xms:9kq_YMBZVDBbUp7W9jLaFApvxpC_QPQMTTsczq1_QHJ36HNwV7MDWA>
 <xme:9kq_YOjSguEbUyTX4QmJNjD_qeSsMbqs_8t4rYW_cW9s_Fzew6E8_T6gQGb4jVYy5
 GXqd5BM79UslQrTtQ>
X-ME-Received: <xmr:9kq_YPmUcCMM5ciI23Zc6VbKjw7v_MlT5drLsCw83rPrL3lD87foE9V8WPlFnitFVzufDxy9DPOGa32Xx82tCTGdy2icsY_qe8U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:9kq_YCyQNsWF8nCp_HQciqxd-obP6A5kfX0sFlrpjR1cVOcLXc6dbA>
 <xmx:9kq_YBSvlkrIGUCzsjuWONeX8CxPZgrRIEPQ5PXCWtszbJZKMaqv0Q>
 <xmx:9kq_YNYfy2LNF0oug5DzC3jNosaMz-FNgGJIRi2zzITYOD6Tb6-zKw>
 <xmx:-Eq_YCCvDuk0KVortASQMgaaWI3JhRcxA-xHi2i6oTzc8JFuxpULSA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:48:16 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:42 +0930
Message-Id: <20210608104757.582199-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210608104757.582199-1-andrew@aj.id.au>
References: <20210608104757.582199-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lqZHb-0008GE-Ef
Subject: [Openipmi-developer] [PATCH v4 01/16] ipmi: kcs_bmc_aspeed: Use of
 match data to extract KCS properties
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, KWLIU@nuvoton.com, avifishman70@gmail.com,
 venture@google.com, chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, robh+dt@kernel.org, arnd@arndb.de, zweiss@equinix.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Unpack and remove the aspeed_kcs_probe_of_v[12]() functions to aid
rearranging how the private device-driver memory is allocated.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 154 ++++++++++++++---------------
 1 file changed, 77 insertions(+), 77 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index eefe362f65f0..69be873f40ac 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -13,6 +13,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/poll.h>
 #include <linux/regmap.h>
@@ -63,6 +64,10 @@ struct aspeed_kcs_bmc {
 	struct regmap *map;
 };
 
+struct aspeed_kcs_of_ops {
+	int (*get_channel)(struct platform_device *pdev);
+	int (*get_io_address)(struct platform_device *pdev);
+};
 
 static u8 aspeed_kcs_inb(struct kcs_bmc *kcs_bmc, u32 reg)
 {
@@ -231,13 +236,10 @@ static const struct kcs_ioreg ast_kcs_bmc_ioregs[KCS_CHANNEL_MAX] = {
 	{ .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
 };
 
-static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
+static int aspeed_kcs_of_v1_get_channel(struct platform_device *pdev)
 {
-	struct aspeed_kcs_bmc *priv;
 	struct device_node *np;
-	struct kcs_bmc *kcs;
 	u32 channel;
-	u32 slave;
 	int rc;
 
 	np = pdev->dev.of_node;
@@ -245,105 +247,81 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
 	rc = of_property_read_u32(np, "kcs_chan", &channel);
 	if ((rc != 0) || (channel == 0 || channel > KCS_CHANNEL_MAX)) {
 		dev_err(&pdev->dev, "no valid 'kcs_chan' configured\n");
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	}
 
-	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc), channel);
-	if (!kcs)
-		return ERR_PTR(-ENOMEM);
+	return channel;
+}
 
-	priv = kcs_bmc_priv(kcs);
-	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
-	if (IS_ERR(priv->map)) {
-		dev_err(&pdev->dev, "Couldn't get regmap\n");
-		return ERR_PTR(-ENODEV);
-	}
+static int aspeed_kcs_of_v1_get_io_address(struct platform_device *pdev)
+{
+	u32 slave;
+	int rc;
 
-	rc = of_property_read_u32(np, "kcs_addr", &slave);
-	if (rc) {
+	rc = of_property_read_u32(pdev->dev.of_node, "kcs_addr", &slave);
+	if (rc || slave > 0xffff) {
 		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	}
 
-	kcs->ioreg = ast_kcs_bmc_ioregs[channel - 1];
-	aspeed_kcs_set_address(kcs, slave);
-
-	return kcs;
-}
-
-static int aspeed_kcs_calculate_channel(const struct kcs_ioreg *regs)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(ast_kcs_bmc_ioregs); i++) {
-		if (!memcmp(&ast_kcs_bmc_ioregs[i], regs, sizeof(*regs)))
-			return i + 1;
-	}
-
-	return -EINVAL;
+	return slave;
 }
 
-static struct kcs_bmc *aspeed_kcs_probe_of_v2(struct platform_device *pdev)
+static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
 {
-	struct aspeed_kcs_bmc *priv;
 	struct device_node *np;
 	struct kcs_ioreg ioreg;
-	struct kcs_bmc *kcs;
 	const __be32 *reg;
-	int channel;
-	u32 slave;
-	int rc;
+	int i;
 
 	np = pdev->dev.of_node;
 
 	/* Don't translate addresses, we want offsets for the regmaps */
 	reg = of_get_address(np, 0, NULL, NULL);
 	if (!reg)
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	ioreg.idr = be32_to_cpup(reg);
 
 	reg = of_get_address(np, 1, NULL, NULL);
 	if (!reg)
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	ioreg.odr = be32_to_cpup(reg);
 
 	reg = of_get_address(np, 2, NULL, NULL);
 	if (!reg)
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	ioreg.str = be32_to_cpup(reg);
 
-	channel = aspeed_kcs_calculate_channel(&ioreg);
-	if (channel < 0)
-		return ERR_PTR(channel);
+	for (i = 0; i < ARRAY_SIZE(ast_kcs_bmc_ioregs); i++) {
+		if (!memcmp(&ast_kcs_bmc_ioregs[i], &ioreg, sizeof(ioreg)))
+			return i + 1;
+	}
 
-	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc), channel);
-	if (!kcs)
-		return ERR_PTR(-ENOMEM);
+	return -EINVAL;
+}
 
-	kcs->ioreg = ioreg;
+static int aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev)
+{
+	uint32_t slave;
+	int rc;
 
-	priv = kcs_bmc_priv(kcs);
-	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
-	if (IS_ERR(priv->map)) {
-		dev_err(&pdev->dev, "Couldn't get regmap\n");
-		return ERR_PTR(-ENODEV);
+	rc = of_property_read_u32(pdev->dev.of_node, "aspeed,lpc-io-reg", &slave);
+	if (rc || slave > 0xffff) {
+		dev_err(&pdev->dev, "no valid 'aspeed,lpc-io-reg' configured\n");
+		return -EINVAL;
 	}
 
-	rc = of_property_read_u32(np, "aspeed,lpc-io-reg", &slave);
-	if (rc)
-		return ERR_PTR(rc);
-
-	aspeed_kcs_set_address(kcs, slave);
-
-	return kcs;
+	return slave;
 }
 
 static int aspeed_kcs_probe(struct platform_device *pdev)
 {
+	const struct aspeed_kcs_of_ops *ops;
 	struct device *dev = &pdev->dev;
+	struct aspeed_kcs_bmc *priv;
 	struct kcs_bmc *kcs_bmc;
 	struct device_node *np;
-	int rc;
+	int rc, channel, addr;
 
 	np = dev->of_node->parent;
 	if (!of_device_is_compatible(np, "aspeed,ast2400-lpc-v2") &&
@@ -352,23 +330,35 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 		dev_err(dev, "unsupported LPC device binding\n");
 		return -ENODEV;
 	}
-
-	np = dev->of_node;
-	if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc") ||
-	    of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
-		kcs_bmc = aspeed_kcs_probe_of_v1(pdev);
-	else if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc-v2") ||
-		 of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
-		kcs_bmc = aspeed_kcs_probe_of_v2(pdev);
-	else
+	ops = of_device_get_match_data(&pdev->dev);
+	if (!ops)
 		return -EINVAL;
 
-	if (IS_ERR(kcs_bmc))
-		return PTR_ERR(kcs_bmc);
+	channel = ops->get_channel(pdev);
+	if (channel < 0)
+		return channel;
 
+	kcs_bmc = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc), channel);
+	if (!kcs_bmc)
+		return -ENOMEM;
+
+	kcs_bmc->ioreg = ast_kcs_bmc_ioregs[channel - 1];
 	kcs_bmc->io_inputb = aspeed_kcs_inb;
 	kcs_bmc->io_outputb = aspeed_kcs_outb;
 
+	addr = ops->get_io_address(pdev);
+	if (addr < 0)
+		return addr;
+
+	priv = kcs_bmc_priv(kcs_bmc);
+	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
+	if (IS_ERR(priv->map)) {
+		dev_err(&pdev->dev, "Couldn't get regmap\n");
+		return -ENODEV;
+	}
+
+	aspeed_kcs_set_address(kcs_bmc, addr);
+
 	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
 	if (rc)
 		return rc;
@@ -400,11 +390,21 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct aspeed_kcs_of_ops of_v1_ops = {
+	.get_channel = aspeed_kcs_of_v1_get_channel,
+	.get_io_address = aspeed_kcs_of_v1_get_io_address,
+};
+
+static const struct aspeed_kcs_of_ops of_v2_ops = {
+	.get_channel = aspeed_kcs_of_v2_get_channel,
+	.get_io_address = aspeed_kcs_of_v2_get_io_address,
+};
+
 static const struct of_device_id ast_kcs_bmc_match[] = {
-	{ .compatible = "aspeed,ast2400-kcs-bmc" },
-	{ .compatible = "aspeed,ast2500-kcs-bmc" },
-	{ .compatible = "aspeed,ast2400-kcs-bmc-v2" },
-	{ .compatible = "aspeed,ast2500-kcs-bmc-v2" },
+	{ .compatible = "aspeed,ast2400-kcs-bmc", .data = &of_v1_ops },
+	{ .compatible = "aspeed,ast2500-kcs-bmc", .data = &of_v1_ops },
+	{ .compatible = "aspeed,ast2400-kcs-bmc-v2", .data = &of_v2_ops },
+	{ .compatible = "aspeed,ast2500-kcs-bmc-v2", .data = &of_v2_ops },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
