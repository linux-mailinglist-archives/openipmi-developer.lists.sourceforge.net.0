Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07695377BCF
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:45:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyiz-0005Ug-6j; Mon, 10 May 2021 05:45:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lfyix-0005UZ-V1
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:45:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WcWLsIVd7FBaVpMfmIuuKOIgK8kxwBSDHbabyxefQ2A=; b=kM8rQkalYavu1EcBEbbzKGuUS+
 5Vn0fyWKyJYa1Jo1ctp9MKqBpxxpcRG5ZxxzGCm14+PzszU2hWJxZ6AVbVzsNMOg5YIK8IL9uiofg
 mi6wJ0W/PjtRc0pA1mFuMPy+eL2REF2Epzpi9BSDPWnkQ4EIvl1T9CS2Z2XMK7JrR52Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WcWLsIVd7FBaVpMfmIuuKOIgK8kxwBSDHbabyxefQ2A=; b=YF1qmobU3TlN0TQrBvTm1joX83
 qpL8lcoJnm50U5sXquDH3FEywVgvGAONGuj+UDoaI1rgZgBeJDyTDh63ogl5OB6PTulEwpQd1stFy
 fdEafvvP1z/26ijCcVG58+8AQT1/7PSjP50jylecCtiSAamwyunaFCJ6wYOsrzLK4U+M=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lfyiq-0003Nt-7o
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:45:00 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5B78B5803EE;
 Mon, 10 May 2021 01:44:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 10 May 2021 01:44:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=WcWLsIVd7FBaV
 pMfmIuuKOIgK8kxwBSDHbabyxefQ2A=; b=aAyZNcO12+sQBN9IYuW333tWOLpYD
 ivdpU6xr9pkGxiSoJ3/ERzB7rxJDEihLIwL17hU55Im1u46uDZij3Qn59oVW0l1h
 TtCOlDC2JNtJsPleZj1E8pgvfMkivkMaFnRDTQvQyRJG/4PPNV8x/SCB7tQm6f74
 KYTjGMMqSJE2Ydfi+4LZqfTeMVi3/8gqRTB4igWRZ1L/XW2DoTlZfzPWRKrhe50a
 RSTytmerxBrSsink7S2Hv6xdOo0O79C03EXioPHmM+Y35JpvZJICjCxQI6STuYoq
 ksr61f/5q/q1H6cgSqfgJSvmBxzRiMIAvemiYKzIRozoa0MoEUEcqXAXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=WcWLsIVd7FBaVpMfmIuuKOIgK8kxwBSDHbabyxefQ2A=; b=FrmDWdZO
 xfFL021Yrm8QBWfY5wI6rI4hTj23Hiy4XBUTX0QjccAUBmwuzx4K95Eu+FybileB
 5ZXWiAiOFTuz32MLrJVOYAjXjWSIBttbt2IYW0qt01RW8ZOuz0n87ztLeqofzP/k
 CdkEQI9ozU+k3AhNfoUIlKP8YPjyrIWxFUFTzcPPAHjy2zV07mf01/zrHE4jo0R+
 Z8KFnf60RgCGr/1rQiARxoyMrOsJ6uiBlrlww+ryBLph80mxVX1TTCXKwAmr0lT2
 zNNvKOyCccojgXrFKp9blklECwEqis/pMXWhMVHEo3WJNFFttIcrsPJEQkxWo8xK
 kBb1QTzTiRj/Ww==
X-ME-Sender: <xms:T8iYYDfWYRQmjmBtgHYTuVvoFPLIvQAfDT5jwJclmR53Fslxk4SM_A>
 <xme:T8iYYJO7xwhdEIH_LHVGMIFA1-V2TNir9q0VcK71lW37dAbXLagUiMlSD5cyMtJx_
 yvtuK2xKlIRScPvYw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppedvtdefrdehjedrvdduhedrkeen
 ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:T8iYYMhHdYy13Q5u79AseoKClvbXi79vhj4G7gjvqzD5bYmG2M28hg>
 <xmx:T8iYYE-ssA2X01mwXShfDNUjR0bnyLoS57JBKwt0AuF5T2gY9M8Hnw>
 <xmx:T8iYYPsbICY8-hqbTQ8oH2PIR06nUtSw282Ii2ewVZUtd5Azmx9hGQ>
 <xmx:T8iYYIMPa7Bgq1lslYh-qpg-D3RGF0NyXjVjruH31oRQmR1VGw2wDA>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:44:41 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:13 +0930
Message-Id: <20210510054213.1610760-17-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510054213.1610760-1-andrew@aj.id.au>
References: <20210510054213.1610760-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfyiq-0003Nt-7o
Subject: [Openipmi-developer] [PATCH v3 16/16] ipmi: kcs_bmc_aspeed:
 Optionally apply status address
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
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, robh+dt@kernel.org, arnd@arndb.de, zweiss@equinix.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Some Aspeed KCS devices can derive the status register address from the
address of the data register. As such, the address of the status
register can be implicit in the configuration if desired. On the other
hand, sometimes address schemes might be requested that are incompatible
with the default addressing scheme. Allow these requests where possible
if the devicetree specifies the status register address.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 110 ++++++++++++++++++++---------
 1 file changed, 78 insertions(+), 32 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 558132b2b9f7..f6c58eb2883e 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -83,6 +83,8 @@
 #define LPC_STR2             0x040
 #define LPC_STR3             0x044
 #define LPC_HICRB            0x100
+#define     LPC_HICRB_EN16LADR2      BIT(5)
+#define     LPC_HICRB_EN16LADR1      BIT(4)
 #define     LPC_HICRB_IBFIE4         BIT(1)
 #define     LPC_HICRB_LPC4E          BIT(0)
 #define LPC_HICRC            0x104
@@ -96,6 +98,11 @@
 #define LPC_IDR4             0x114
 #define LPC_ODR4             0x118
 #define LPC_STR4             0x11C
+#define LPC_LSADR12	     0x120
+#define     LPC_LSADR12_LSADR2_MASK  GENMASK(31, 16)
+#define     LPC_LSADR12_LSADR2_SHIFT 16
+#define     LPC_LSADR12_LSADR1_MASK  GENMASK(15, 0)
+#define     LPC_LSADR12_LSADR1_SHIFT 0
 
 #define OBE_POLL_PERIOD	     (HZ / 2)
 
@@ -123,7 +130,7 @@ struct aspeed_kcs_bmc {
 
 struct aspeed_kcs_of_ops {
 	int (*get_channel)(struct platform_device *pdev);
-	int (*get_io_address)(struct platform_device *pdev);
+	int (*get_io_address)(struct platform_device *pdev, u32 addrs[2]);
 };
 
 static inline struct aspeed_kcs_bmc *to_aspeed_kcs_bmc(struct kcs_bmc_device *kcs_bmc)
@@ -217,38 +224,64 @@ static void aspeed_kcs_updateb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask,
  *     C. KCS4
  *        D / C : CA4h / CA5h
  */
-static void aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u16 addr)
+static int aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u32 addrs[2], int nr_addrs)
 {
 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
 
-	switch (kcs_bmc->channel) {
+	if (WARN_ON(nr_addrs < 1 || nr_addrs > 2))
+		return -EINVAL;
+
+	switch (priv->kcs_bmc.channel) {
 	case 1:
-		regmap_update_bits(priv->map, LPC_HICR4,
-				LPC_HICR4_LADR12AS, 0);
-		regmap_write(priv->map, LPC_LADR12H, addr >> 8);
-		regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
+		regmap_update_bits(priv->map, LPC_HICR4, LPC_HICR4_LADR12AS, 0);
+		regmap_write(priv->map, LPC_LADR12H, addrs[0] >> 8);
+		regmap_write(priv->map, LPC_LADR12L, addrs[0] & 0xFF);
+		if (nr_addrs == 2) {
+			regmap_update_bits(priv->map, LPC_LSADR12, LPC_LSADR12_LSADR1_MASK,
+					   addrs[1] << LPC_LSADR12_LSADR1_SHIFT);
+
+			regmap_update_bits(priv->map, LPC_HICRB, LPC_HICRB_EN16LADR1,
+					   LPC_HICRB_EN16LADR1);
+		}
 		break;
 
 	case 2:
-		regmap_update_bits(priv->map, LPC_HICR4,
-				LPC_HICR4_LADR12AS, LPC_HICR4_LADR12AS);
-		regmap_write(priv->map, LPC_LADR12H, addr >> 8);
-		regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
+		regmap_update_bits(priv->map, LPC_HICR4, LPC_HICR4_LADR12AS, LPC_HICR4_LADR12AS);
+		regmap_write(priv->map, LPC_LADR12H, addrs[0] >> 8);
+		regmap_write(priv->map, LPC_LADR12L, addrs[0] & 0xFF);
+		if (nr_addrs == 2) {
+			regmap_update_bits(priv->map, LPC_LSADR12, LPC_LSADR12_LSADR2_MASK,
+					   addrs[1] << LPC_LSADR12_LSADR2_SHIFT);
+
+			regmap_update_bits(priv->map, LPC_HICRB, LPC_HICRB_EN16LADR2,
+					   LPC_HICRB_EN16LADR2);
+		}
 		break;
 
 	case 3:
-		regmap_write(priv->map, LPC_LADR3H, addr >> 8);
-		regmap_write(priv->map, LPC_LADR3L, addr & 0xFF);
+		if (nr_addrs == 2) {
+			dev_err(priv->kcs_bmc.dev,
+				"Channel 3 only supports inferred status IO address\n");
+			return -EINVAL;
+		}
+
+		regmap_write(priv->map, LPC_LADR3H, addrs[0] >> 8);
+		regmap_write(priv->map, LPC_LADR3L, addrs[0] & 0xFF);
 		break;
 
 	case 4:
-		regmap_write(priv->map, LPC_LADR4, ((addr + 1) << 16) |
-			addr);
+		if (nr_addrs == 1)
+			regmap_write(priv->map, LPC_LADR4, ((addrs[0] + 1) << 16) | addrs[0]);
+		else
+			regmap_write(priv->map, LPC_LADR4, (addrs[1] << 16) | addrs[0]);
+
 		break;
 
 	default:
-		break;
+		return -EINVAL;
 	}
+
+	return 0;
 }
 
 static inline int aspeed_kcs_map_serirq_type(u32 dt_type)
@@ -457,18 +490,18 @@ static int aspeed_kcs_of_v1_get_channel(struct platform_device *pdev)
 	return channel;
 }
 
-static int aspeed_kcs_of_v1_get_io_address(struct platform_device *pdev)
+static int
+aspeed_kcs_of_v1_get_io_address(struct platform_device *pdev, u32 addrs[2])
 {
-	u32 slave;
 	int rc;
 
-	rc = of_property_read_u32(pdev->dev.of_node, "kcs_addr", &slave);
-	if (rc || slave > 0xffff) {
+	rc = of_property_read_u32(pdev->dev.of_node, "kcs_addr", addrs);
+	if (rc || addrs[0] > 0xffff) {
 		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
 		return -EINVAL;
 	}
 
-	return slave;
+	return 1;
 }
 
 static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
@@ -504,16 +537,24 @@ static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
 	return -EINVAL;
 }
 
-static int aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev)
+static int
+aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev, u32 addrs[2])
 {
-	uint32_t slave;
 	int rc;
 
-	rc = of_property_read_u32(pdev->dev.of_node, "aspeed,lpc-io-reg", &slave);
-	if (rc || slave > 0xffff)
+	rc = of_property_read_variable_u32_array(pdev->dev.of_node,
+						 "aspeed,lpc-io-reg",
+						 addrs, 1, 2);
+	if (rc < 0)
+		return rc;
+
+	if (addrs[0] > 0xffff)
+		return -EINVAL;
+
+	if (rc == 2 && addrs[1] > 0xffff)
 		return -EINVAL;
 
-	return slave;
+	return rc;
 }
 
 static int aspeed_kcs_probe(struct platform_device *pdev)
@@ -522,9 +563,11 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	struct kcs_bmc_device *kcs_bmc;
 	struct aspeed_kcs_bmc *priv;
 	struct device_node *np;
-	int rc, channel, addr;
 	bool have_upstream_irq;
 	u32 upstream_irq[2];
+	int rc, channel;
+	int nr_addrs;
+	u32 addrs[2];
 
 	np = pdev->dev.of_node->parent;
 	if (!of_device_is_compatible(np, "aspeed,ast2400-lpc-v2") &&
@@ -542,9 +585,9 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	if (channel < 0)
 		return channel;
 
-	addr = ops->get_io_address(pdev);
-	if (addr < 0)
-		return addr;
+	nr_addrs = ops->get_io_address(pdev, addrs);
+	if (nr_addrs < 0)
+		return nr_addrs;
 
 	np = pdev->dev.of_node;
 	rc = of_property_read_u32_array(np, "aspeed,lpc-interrupts", upstream_irq, 2);
@@ -573,7 +616,9 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	priv->obe.remove = false;
 	timer_setup(&priv->obe.timer, aspeed_kcs_check_obe, 0);
 
-	aspeed_kcs_set_address(kcs_bmc, addr);
+	rc = aspeed_kcs_set_address(kcs_bmc, addrs, nr_addrs);
+	if (rc)
+		return rc;
 
 	/* Host to BMC IRQ */
 	rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
@@ -596,7 +641,8 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 
 	kcs_bmc_add_device(&priv->kcs_bmc);
 
-	dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n", kcs_bmc->channel, addr);
+	dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
+			kcs_bmc->channel, addrs[0]);
 
 	return 0;
 }
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
