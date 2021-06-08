Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDFC39F442
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:52:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZL2-0001ya-UP; Tue, 08 Jun 2021 10:52:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lqZJh-0001tz-9z
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zp5Sj6545goy2jvbLwVtWgZvM7P3/qvI4k+ZZiA1nWc=; b=kxX63E/GtiRHcD3I3fiC5FNx94
 EpJqbvTJn1MxE7BdbhZjlv5/aSiyH0klBfcUxN6ayriXWsdmdpsMvBSloWIua22o0TXq7YkYM5cwe
 lo4SfNbqLjLU6rcSbidAMnLkRfFKikz+1Ld7c04VC7SYO2SqIW2AwUCMmmF8mcfhqnXU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zp5Sj6545goy2jvbLwVtWgZvM7P3/qvI4k+ZZiA1nWc=; b=h0Eotu8zBHggT5hMqEY+UEfkST
 ucqyMUQj1bh4QUuMB+hVncII+MoQGOFNffNnwVSl4mddzfjj5QFQf4C1mFRN6fx9AHap/lFIj0mLy
 Dm6SSuBSdzg5TWbR7CFwjyn7rDZ6hh3zKR/V+CxsCrreSiz62YqVmzMcen+voyUY621c=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZJ5-000jhb-BD
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:14 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id CC44A5804DB;
 Tue,  8 Jun 2021 06:49:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 08 Jun 2021 06:49:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=zp5Sj6545goy2
 jvbLwVtWgZvM7P3/qvI4k+ZZiA1nWc=; b=i2OJGg4saV2aXcgVJ8bp+a0kXzEg6
 fpePiwN9umNYQlHSj5VbGTakBo8TxcAFQkJbd82kA+qmURo/AmeLmUutNpkRL82o
 rmueFlBgqHbK6Y0DMnxX4xQvxdSLv9muLmE0WUfEyo/YlrSiZxqWhIAiUnHz4Bhx
 TFnKnMSuYMTLo5IgEKysa0w1i4lUs0avy9dLOckhclYGuQCz2aKoL7S9NT5OxLor
 pLPVCEtcVFeHvQ85qIun26eoCuTMCx5fLPB6aNi0b/JiejZWb7iDybjAG3TpgL7L
 zfTO/vIDybQa8LSHqEv64XulCUxMPtnryYmDQgSR7aJRRVJEvr/NYZTvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=zp5Sj6545goy2jvbLwVtWgZvM7P3/qvI4k+ZZiA1nWc=; b=qxQM/Nl9
 NoMoReo7hSZ0VTb89TJa8ERd9ej4i7rGKvmXg+1Qb5Z2yRrPHv8v3UmumnTs4klY
 OHzLlHnlrTsymP+bsGaOwOyibSfvg3im68KDNGnovJJZUjY8j5AZYhiYeI5GICIQ
 9xPGhNbyGQ4OD/RTwn5fX16n8ej931sqDZytwvATHPKFjfGuJyNCGclGK3W2slqr
 htPoPrLvPHhxlLgryOhQmvcg1bZPGevgfESsdUGQZMbj0btUYMOgbJ/rr5dMhFy8
 OvBF6HU0pgOa1HtLLBSaBoOEyuvVqWjqNxhcUxMiKJgwSHi3maLiLGX+l90HKj6c
 RhuYdv8/OCPFVw==
X-ME-Sender: <xms:VUu_YJ6sBqX2fO6LtpSJptkDnCoTsgNmnzflZtN8lZ0Xtc9p6UIbnw>
 <xme:VUu_YG6Pi7Cjk4BjFVO76lQt15nbq5TsBcMdkVlW9zZ2XQ7M2YPULX1-8WFEttaaC
 XJ3Dkr7eGcZngXEYQ>
X-ME-Received: <xmr:VUu_YAc-ESNt5NEwJaxBFtVJs1RAuSgVPTWOty0WKtokXqOmlSLLxi99o1tHM0XUeV4TbvA0VdvGMh7HwQgnO7m4ddJq4UHixHY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecuvehluhhsthgvrhfuihiivgepudenucfr
 rghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:VUu_YCIfafG0Sq3Id_icW2z0R8lnIRp7r6oqq2edbH-BwzPWJFqJaA>
 <xmx:VUu_YNKRVqeAqR_Q3rrE3gAol7IekM4LLj_v_ZD8A671zNqHKX3Jlg>
 <xmx:VUu_YLxeXRF5hqTAAQq-In6h6toBUGyGIh4NgdX2Lc5Kldlc7hDtaA>
 <xmx:VUu_YG77-nlH_rckrkrq67TY61ska_ZTp7Ro2TLoD33ZE23Umc1GcQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:49:51 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:55 +0930
Message-Id: <20210608104757.582199-15-andrew@aj.id.au>
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
X-Headers-End: 1lqZJ5-000jhb-BD
Subject: [Openipmi-developer] [PATCH v4 14/16] ipmi: kcs_bmc_aspeed:
 Implement KCS SerIRQ configuration
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

Apply the SerIRQ ID and level/sense behaviours from the devicetree if
provided.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 182 ++++++++++++++++++++++++++++-
 1 file changed, 180 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 43994688dc8a..922fe41f6b05 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -9,6 +9,7 @@
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/irq.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -28,6 +29,22 @@
 
 #define KCS_CHANNEL_MAX     4
 
+/*
+ * Field class descriptions
+ *
+ * LPCyE	Enable LPC channel y
+ * IBFIEy	Input Buffer Full IRQ Enable for LPC channel y
+ * IRQxEy	Assert SerIRQ x for LPC channel y (Deprecated, use IDyIRQX, IRQXEy)
+ * IDyIRQX	Use the specified 4-bit SerIRQ for LPC channel y
+ * SELyIRQX	SerIRQ polarity for LPC channel y (low: 0, high: 1)
+ * IRQXEy	Assert the SerIRQ specified in IDyIRQX for LPC channel y
+ */
+
+#define LPC_TYIRQX_LOW       0b00
+#define LPC_TYIRQX_HIGH      0b01
+#define LPC_TYIRQX_RSVD      0b10
+#define LPC_TYIRQX_RISING    0b11
+
 #define LPC_HICR0            0x000
 #define     LPC_HICR0_LPC3E          BIT(7)
 #define     LPC_HICR0_LPC2E          BIT(6)
@@ -39,6 +56,19 @@
 #define LPC_HICR4            0x010
 #define     LPC_HICR4_LADR12AS       BIT(7)
 #define     LPC_HICR4_KCSENBL        BIT(2)
+#define LPC_SIRQCR0	     0x070
+/* IRQ{12,1}E1 are deprecated as of AST2600 A3 but necessary for prior chips */
+#define     LPC_SIRQCR0_IRQ12E1	     BIT(1)
+#define     LPC_SIRQCR0_IRQ1E1	     BIT(0)
+#define LPC_HICR5	     0x080
+#define     LPC_HICR5_ID3IRQX_MASK   GENMASK(23, 20)
+#define     LPC_HICR5_ID3IRQX_SHIFT  20
+#define     LPC_HICR5_ID2IRQX_MASK   GENMASK(19, 16)
+#define     LPC_HICR5_ID2IRQX_SHIFT  16
+#define     LPC_HICR5_SEL3IRQX       BIT(15)
+#define     LPC_HICR5_IRQXE3         BIT(14)
+#define     LPC_HICR5_SEL2IRQX       BIT(13)
+#define     LPC_HICR5_IRQXE2         BIT(12)
 #define LPC_LADR3H           0x014
 #define LPC_LADR3L           0x018
 #define LPC_LADR12H          0x01C
@@ -55,6 +85,13 @@
 #define LPC_HICRB            0x100
 #define     LPC_HICRB_IBFIF4         BIT(1)
 #define     LPC_HICRB_LPC4E          BIT(0)
+#define LPC_HICRC            0x104
+#define     LPC_HICRC_ID4IRQX_MASK   GENMASK(7, 4)
+#define     LPC_HICRC_ID4IRQX_SHIFT  4
+#define     LPC_HICRC_TY4IRQX_MASK   GENMASK(3, 2)
+#define     LPC_HICRC_TY4IRQX_SHIFT  2
+#define     LPC_HICRC_OBF4_AUTO_CLR  BIT(1)
+#define     LPC_HICRC_IRQXE4         BIT(0)
 #define LPC_LADR4            0x110
 #define LPC_IDR4             0x114
 #define LPC_ODR4             0x118
@@ -62,11 +99,21 @@
 
 #define OBE_POLL_PERIOD	     (HZ / 2)
 
+enum aspeed_kcs_irq_mode {
+	aspeed_kcs_irq_none,
+	aspeed_kcs_irq_serirq,
+};
+
 struct aspeed_kcs_bmc {
 	struct kcs_bmc_device kcs_bmc;
 
 	struct regmap *map;
 
+	struct {
+		enum aspeed_kcs_irq_mode mode;
+		int id;
+	} upstream_irq;
+
 	struct {
 		spinlock_t lock;
 		bool remove;
@@ -103,6 +150,49 @@ static void aspeed_kcs_outb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 data)
 
 	rc = regmap_write(priv->map, reg, data);
 	WARN(rc != 0, "regmap_write() failed: %d\n", rc);
+
+	/* Trigger the upstream IRQ on ODR writes, if enabled */
+
+	switch (reg) {
+	case LPC_ODR1:
+	case LPC_ODR2:
+	case LPC_ODR3:
+	case LPC_ODR4:
+		break;
+	default:
+		return;
+	}
+
+	if (priv->upstream_irq.mode != aspeed_kcs_irq_serirq)
+		return;
+
+	switch (kcs_bmc->channel) {
+	case 1:
+		switch (priv->upstream_irq.id) {
+		case 12:
+			regmap_update_bits(priv->map, LPC_SIRQCR0, LPC_SIRQCR0_IRQ12E1,
+					   LPC_SIRQCR0_IRQ12E1);
+			break;
+		case 1:
+			regmap_update_bits(priv->map, LPC_SIRQCR0, LPC_SIRQCR0_IRQ1E1,
+					   LPC_SIRQCR0_IRQ1E1);
+			break;
+		default:
+			break;
+		}
+		break;
+	case 2:
+		regmap_update_bits(priv->map, LPC_HICR5, LPC_HICR5_IRQXE2, LPC_HICR5_IRQXE2);
+		break;
+	case 3:
+		regmap_update_bits(priv->map, LPC_HICR5, LPC_HICR5_IRQXE3, LPC_HICR5_IRQXE3);
+		break;
+	case 4:
+		regmap_update_bits(priv->map, LPC_HICRC, LPC_HICRC_IRQXE4, LPC_HICRC_IRQXE4);
+		break;
+	default:
+		break;
+	}
 }
 
 static void aspeed_kcs_updateb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask, u8 val)
@@ -161,6 +251,73 @@ static void aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u16 addr)
 	}
 }
 
+static inline int aspeed_kcs_map_serirq_type(u32 dt_type)
+{
+	switch (dt_type) {
+	case IRQ_TYPE_EDGE_RISING:
+		return LPC_TYIRQX_RISING;
+	case IRQ_TYPE_LEVEL_HIGH:
+		return LPC_TYIRQX_HIGH;
+	case IRQ_TYPE_LEVEL_LOW:
+		return LPC_TYIRQX_LOW;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int aspeed_kcs_config_upstream_irq(struct aspeed_kcs_bmc *priv, u32 id, u32 dt_type)
+{
+	unsigned int mask, val, hw_type;
+
+	if (id > 15)
+		return -EINVAL;
+
+	hw_type = aspeed_kcs_map_serirq_type(dt_type);
+	if (hw_type < 0)
+		return hw_type;
+
+	priv->upstream_irq.mode = aspeed_kcs_irq_serirq;
+	priv->upstream_irq.id = id;
+
+	switch (priv->kcs_bmc.channel) {
+	case 1:
+		/* Needs IRQxE1 rather than (ID1IRQX, SEL1IRQX, IRQXE1) before AST2600 A3 */
+		break;
+	case 2:
+		if (!(hw_type == LPC_TYIRQX_LOW || hw_type == LPC_TYIRQX_HIGH))
+			return -EINVAL;
+
+		mask = LPC_HICR5_SEL2IRQX | LPC_HICR5_ID2IRQX_MASK;
+		val = (id << LPC_HICR5_ID2IRQX_SHIFT);
+		val |= (hw_type == LPC_TYIRQX_HIGH) ? LPC_HICR5_SEL2IRQX : 0;
+		regmap_update_bits(priv->map, LPC_HICR5, mask, val);
+
+		break;
+	case 3:
+		if (!(hw_type == LPC_TYIRQX_LOW || hw_type == LPC_TYIRQX_HIGH))
+			return -EINVAL;
+
+		mask = LPC_HICR5_SEL3IRQX | LPC_HICR5_ID3IRQX_MASK;
+		val = (id << LPC_HICR5_ID3IRQX_SHIFT);
+		val |= (hw_type == LPC_TYIRQX_HIGH) ? LPC_HICR5_SEL3IRQX : 0;
+		regmap_update_bits(priv->map, LPC_HICR5, mask, val);
+
+		break;
+	case 4:
+		mask = LPC_HICRC_ID4IRQX_MASK | LPC_HICRC_TY4IRQX_MASK | LPC_HICRC_OBF4_AUTO_CLR;
+		val = (id << LPC_HICRC_ID4IRQX_SHIFT) | (hw_type << LPC_HICRC_TY4IRQX_SHIFT);
+		regmap_update_bits(priv->map, LPC_HICRC, mask, val);
+		break;
+	default:
+		dev_warn(priv->kcs_bmc.dev,
+			 "SerIRQ configuration not supported on KCS channel %d\n",
+			 priv->kcs_bmc.channel);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static void aspeed_kcs_enable_channel(struct kcs_bmc_device *kcs_bmc, bool enable)
 {
 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
@@ -262,7 +419,7 @@ static irqreturn_t aspeed_kcs_irq(int irq, void *arg)
 	return kcs_bmc_handle_event(kcs_bmc);
 }
 
-static int aspeed_kcs_config_irq(struct kcs_bmc_device *kcs_bmc,
+static int aspeed_kcs_config_downstream_irq(struct kcs_bmc_device *kcs_bmc,
 			struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -368,6 +525,8 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	struct aspeed_kcs_bmc *priv;
 	struct device_node *np;
 	int rc, channel, addr;
+	bool have_upstream_irq;
+	u32 upstream_irq[2];
 
 	np = pdev->dev.of_node->parent;
 	if (!of_device_is_compatible(np, "aspeed,ast2400-lpc-v2") &&
@@ -376,6 +535,7 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "unsupported LPC device binding\n");
 		return -ENODEV;
 	}
+
 	ops = of_device_get_match_data(&pdev->dev);
 	if (!ops)
 		return -EINVAL;
@@ -388,6 +548,13 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	if (addr < 0)
 		return addr;
 
+	np = pdev->dev.of_node;
+	rc = of_property_read_u32_array(np, "aspeed,lpc-interrupts", upstream_irq, 2);
+	if (rc && rc != -EINVAL)
+		return -EINVAL;
+
+	have_upstream_irq = !rc;
+
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
@@ -410,10 +577,20 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 
 	aspeed_kcs_set_address(kcs_bmc, addr);
 
-	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
+	/* Host to BMC IRQ */
+	rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
 	if (rc)
 		return rc;
 
+	/* BMC to Host IRQ */
+	if (have_upstream_irq) {
+		rc = aspeed_kcs_config_upstream_irq(priv, upstream_irq[0], upstream_irq[1]);
+		if (rc < 0)
+			return rc;
+	} else {
+		priv->upstream_irq.mode = aspeed_kcs_irq_none;
+	}
+
 	platform_set_drvdata(pdev, priv);
 
 	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
@@ -480,4 +657,5 @@ module_platform_driver(ast_kcs_bmc_driver);
 
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
 MODULE_DESCRIPTION("Aspeed device interface to the KCS BMC device");
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
