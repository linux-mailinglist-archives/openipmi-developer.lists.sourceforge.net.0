Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 525EE34156D
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Mar 2021 07:29:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lN8dJ-000872-GM; Fri, 19 Mar 2021 06:29:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lN8dH-00086X-LR
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Wz3rX2JLSP5UmNsodg+6xxFvrCs/exUmWb2IW/KKfH8=; b=knngAiGUqhS2hYNQrxe+iKYZl7
 AD0O4k0PfS2LIGXjpkKnoE486sbkvk4NMeRyTPtsJyDhxdL+dnsI+aiSWoMYceMRaUm2OkIhgij5d
 mHkmnfhJjjgo+RaLLylnaXFpJ2z6BBCANlcRy2n6X/1T8rl749A8MXzLMZUcl16Gav+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wz3rX2JLSP5UmNsodg+6xxFvrCs/exUmWb2IW/KKfH8=; b=EVA4pHxb9besritnO9hRTC+wJd
 3r+oKg6nRdUsyw2jew6hGgVbWCp0U/tz4hVtybNwSpihdIswAt/D13OzKHZdpYqtGIQPrewh7w2Rt
 DGiEBVKW6wy7uXrp6jFVQGrE3Cvss0zSvCVV0zzrKa+tgDJQTJI3oZNea8+L47SZXOSQ=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lN8d2-0004WA-9A
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:29:14 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id B93FB580A7B;
 Fri, 19 Mar 2021 02:28:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 02:28:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Wz3rX2JLSP5Um
 Nsodg+6xxFvrCs/exUmWb2IW/KKfH8=; b=cHzx2hl0tLsTSvPyl9/UXEPRRPcFk
 yuY09IrTbQHscFSX3y8ZZn7qHWy9vha28nlV303U3XwOntUfsQ8+zfgT/jXQdSl2
 U+u8j6998vK+OHZpPn7sAG5KIGYHOIadnxprpifF2AGWzNxmfRyhDWWBaNdQBTI4
 lFxuXomzz4H0dwsj1ccKZ/Ivh7LwznjhjIvPVEHNRqZI1dJ5DPzYrh9Zk1QzJqIb
 QM3iYQT6Aas+vB14Ndj4w891JMn55/r+jcDG4qOmavC8OeTpu1An56gHcqXiB479
 nQqZkj8+ii/amMHQtYYmJIKQXeFVh3cfnCkfR94Y/uGFHjnq7acYQAg2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Wz3rX2JLSP5UmNsodg+6xxFvrCs/exUmWb2IW/KKfH8=; b=WuAyjie2
 Yazv/h+GiGt2+SRycZK36jgfj0mmS0ScCZskPwNRX/JvmzWym4b09UToOYzDE8dU
 mEGyu2++mN0qOuxg4r+O3fzdKYpNMJ5CGbryPQWys5vRQvWcWSjlxkjNZ4UlTcBR
 6ZYoCN0KkRz24J4NIv4pVAGMvO/z4QAQA5wdgEZLe2keKnxhuPW5AsKHiEhBTkoN
 rgRiyoZ8lXgWhRZqOy2sqJSJR1t+lRv/B7gJiR+IoS3s/PJwB2V03PsgEC2PX4wc
 vxT2qy30mDcnHHbiLyVi6oWCjN2+Hn5NFG9EwXutzTx4ABn13JVegvl8Uq/uoUwQ
 JG7H9WJLRG+L0g==
X-ME-Sender: <xms:pkRUYAcD8cluuSqgWFkiM3YPYkhO6F_6u21P_oLeJNnoWH3foLynxg>
 <xme:pkRUYCOwwKgqvSiC1l0_VeSuodtWi4mY9bl82sz804SvZdeIn77HEMRJjRk6-PMlu
 _jjlSXrpHKd-5ZGOA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppeduudekrddvuddtrddukedurdeh
 heenucevlhhushhtvghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnh
 gurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:pkRUYBjJ7qm1Wds82YqYUgxl4HCfIDdwy_FPHZlWa5g_0bV4Rw5c-Q>
 <xmx:pkRUYF-bWlq-ZXtIjU0svV40d6yG0wYVgVoSKqtH8VtEB7nZiIGscg>
 <xmx:pkRUYMtFA7qu_SYIpKeNucF-4KxoHKedWsr70jcDziFqD-XuhgomFg>
 <xmx:pkRUYN_laaQ8sPzvWYmJvzcb4kp6xVxJilUr-lPj2eCJcRjQr8uB0A>
Received: from localhost.localdomain
 (ppp118-210-181-55.adl-adc-lon-bras34.tpg.internode.on.net [118.210.181.55])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2C5B0240054;
 Fri, 19 Mar 2021 02:28:48 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Fri, 19 Mar 2021 16:57:37 +1030
Message-Id: <20210319062752.145730-6-andrew@aj.id.au>
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
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lN8d2-0004WA-9A
Subject: [Openipmi-developer] [PATCH v2 06/21] ipmi: kcs_bmc_aspeed: Use of
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
Cc: devicetree@vger.kernel.org, ryan_chen@aspeedtech.com, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 chiawei_wang@aspeedtech.com, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Unpack and remove the aspeed_kcs_probe_of_v[12]() functions to aid
rearranging how the private device-driver memory is allocated.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 146 ++++++++++++++---------------
 1 file changed, 68 insertions(+), 78 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index eefe362f65f0..061f53676206 100644
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
@@ -245,105 +247,78 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
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
-
-	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc), channel);
-	if (!kcs)
-		return ERR_PTR(-ENOMEM);
-
-	kcs->ioreg = ioreg;
-
-	priv = kcs_bmc_priv(kcs);
-	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
-	if (IS_ERR(priv->map)) {
-		dev_err(&pdev->dev, "Couldn't get regmap\n");
-		return ERR_PTR(-ENODEV);
+	for (i = 0; i < ARRAY_SIZE(ast_kcs_bmc_ioregs); i++) {
+		if (!memcmp(&ast_kcs_bmc_ioregs[i], &ioreg, sizeof(ioreg)))
+			return i + 1;
 	}
 
-	rc = of_property_read_u32(np, "aspeed,lpc-io-reg", &slave);
-	if (rc)
-		return ERR_PTR(rc);
+	return -EINVAL;
+}
 
-	aspeed_kcs_set_address(kcs, slave);
+static int aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev)
+{
+	uint32_t slave;
+	int rc;
 
-	return kcs;
+	rc = of_property_read_u32(pdev->dev.of_node, "aspeed,lpc-io-reg", &slave);
+	if (rc || slave > 0xffff)
+		return -EINVAL;
+
+	return slave;
 }
 
 static int aspeed_kcs_probe(struct platform_device *pdev)
 {
+	const struct aspeed_kcs_of_ops *ops;
 	struct device *dev = &pdev->dev;
 	struct kcs_bmc *kcs_bmc;
 	struct device_node *np;
-	int rc;
+	int rc, channel, addr;
 
 	np = dev->of_node->parent;
 	if (!of_device_is_compatible(np, "aspeed,ast2400-lpc-v2") &&
@@ -352,23 +327,28 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
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
+	aspeed_kcs_set_address(kcs_bmc, addr);
+
 	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
 	if (rc)
 		return rc;
@@ -400,11 +380,21 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
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
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
