Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7098139F448
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:52:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZLk-0000B0-Di; Tue, 08 Jun 2021 10:52:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lqZJf-0008Ui-Ir
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RcW5ROXgyW9XQfhcLFsrjFXYe699upJtdQ4O8F1RtFY=; b=cdgz85y1qziP4G+xXT+z7j4i5v
 JyJFLfftohJ/jVjB+b+Ycye8nPr3MqzALvgeHF3Zr1tdUJnxe8Dp1zsQGUqAhQ2obTNFbEmbB0P9P
 FgGsuS9DQwIhfAFRrpAcxBoF0HBpuvUTMgPPCpq4c+jskgov+9bdo9AmXEQB8A8gfNAg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RcW5ROXgyW9XQfhcLFsrjFXYe699upJtdQ4O8F1RtFY=; b=cBoyUQRlZEcXiIK5GB7cySFA2D
 7FiUw9r8C2IM6ZPzU8pgby5L8w93NDFhZoXLlh+il+cIAHsmEx03yA48LMX2TloUi7760HAD4YKnq
 Q4sKF3hhrKuEff8oaEp+Ea7HRYP+VbOT6a3Jp2gwry5i0JL/0NzfOoLfcWhE+dTMgxok=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZJK-0008LE-Qx
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:23 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3FB3458060C;
 Tue,  8 Jun 2021 06:50:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 08 Jun 2021 06:50:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=RcW5ROXgyW9XQ
 fhcLFsrjFXYe699upJtdQ4O8F1RtFY=; b=GUODNA1XboZEhWUoLR4bk1tX157bO
 sb8ufTgQIklqyM8eqKhTKISsyMPZyOMt3fTTMW0l8vlpvVmedxU/FyLCAKZg9GLL
 WKkb20grDYsXsYvRT9w2gyP+iWr03EX4KTX/OnLfj+yBS+drj74DFJ0lcFdvjs9I
 KdB9muuuy5XT7qH1G4aaI/6KOtZLeOIQ1s0+M3J3i+HRsH6v1mSk1lU6EhVc+h/p
 +bEn1eAW3K3mINFos1zQMnDldh2Txbbp3aPdVFbW4NGtMJMm9uAp1TTMJpNcAXa3
 s38xR03HUhEzIbRwQxIdLPChNGnXOVWlx/vpaaqOjGQce6bdNvY2Zj3DA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=RcW5ROXgyW9XQfhcLFsrjFXYe699upJtdQ4O8F1RtFY=; b=qA+mMLSy
 c9ETPb45R/ndNVA6zya4a0UJMLT1n05q/d51L/jsTGO21Ia/ghWHWiF7T8naDHfZ
 XGyR4NJB5VoMRYveO9UfcEEScwNSWmeSBJBZRQAZHJvPQOHMWjLKoN7Je5suc2Dj
 WU6Qc84143GHV8oEhDuyzSWXZn/APysY58AWZkuP55az2UDfkKHuoGgwR5m3NM46
 adEYgmtp4kAmkxl4m/GIwSsGzj3mo2y2mpZwcGemZCZp8mICn64MSZUdE+x5M3F1
 L2QnbdvzBTv6AMQCRtEBPZTKfFIwWOKQyCDlMQpX9lEmavSAQeFYUVkax5UsXjmW
 +wH6ugsDUHjDEQ==
X-ME-Sender: <xms:Y0u_YMEX5zZ-agan78pfbFKc2MObFx0SgE0DleUR9fkmUMadpSRMYQ>
 <xme:Y0u_YFWfnotwQEwhHGIoDkwVHx8qK1gMSEbpV7xDisGv6f-blPtM9GIITDhWvys75
 G2JIBNP85NHWmlw9Q>
X-ME-Received: <xmr:Y0u_YGKNbIXkDRr00ABsObs7VIG59C2_ez3wIutZEvQZWy0oucV23WBWyXshXqGEaFPaTQziNAAr7tuOwEyO0vc-uU8S71s1mu4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecuvehluhhsthgvrhfuihiivgepvdenucfr
 rghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:Y0u_YOGqee0vT2ToyI61qUMQ2K-UGLcUiu45OyxM2OktahCHDR-Jiw>
 <xmx:Y0u_YCWsA05ODS1zDorIcO_J_PNxKfj_3ZSAEJ0vCw1X8H0tuzId8Q>
 <xmx:Y0u_YBMmPM2_IwUHKa25zY5BLT3Yo3LpWZfrAy2M1Y40uxq-Yby53g>
 <xmx:Zku_YOkf3JSsew-1fhFIVNz2sBp64TQlkhXFK3HtQAcyw-siRq9GmA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:50:04 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:57 +0930
Message-Id: <20210608104757.582199-17-andrew@aj.id.au>
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
X-Headers-End: 1lqZJK-0008LE-Qx
Subject: [Openipmi-developer] [PATCH v4 16/16] ipmi: kcs_bmc_aspeed:
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
 linux-aspeed@lists.ozlabs.org, KWLIU@nuvoton.com, avifishman70@gmail.com,
 venture@google.com, chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
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
 drivers/char/ipmi/kcs_bmc_aspeed.c | 116 +++++++++++++++++++++--------
 1 file changed, 83 insertions(+), 33 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 461cb2c9cc7e..0401089f8895 100644
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
@@ -504,18 +537,30 @@ static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
 	return -EINVAL;
 }
 
-static int aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev)
+static int
+aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev, u32 addrs[2])
 {
-	uint32_t slave;
 	int rc;
 
-	rc = of_property_read_u32(pdev->dev.of_node, "aspeed,lpc-io-reg", &slave);
-	if (rc || slave > 0xffff) {
-		dev_err(&pdev->dev, "no valid 'aspeed,lpc-io-reg' configured\n");
+	rc = of_property_read_variable_u32_array(pdev->dev.of_node,
+						 "aspeed,lpc-io-reg",
+						 addrs, 1, 2);
+	if (rc < 0) {
+		dev_err(&pdev->dev, "No valid 'aspeed,lpc-io-reg' configured\n");
+		return rc;
+	}
+
+	if (addrs[0] > 0xffff) {
+		dev_err(&pdev->dev, "Invalid data address in 'aspeed,lpc-io-reg'\n");
+		return -EINVAL;
+	}
+
+	if (rc == 2 && addrs[1] > 0xffff) {
+		dev_err(&pdev->dev, "Invalid status address in 'aspeed,lpc-io-reg'\n");
 		return -EINVAL;
 	}
 
-	return slave;
+	return rc;
 }
 
 static int aspeed_kcs_probe(struct platform_device *pdev)
@@ -524,9 +569,11 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
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
@@ -544,9 +591,9 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
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
@@ -575,7 +622,9 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	priv->obe.remove = false;
 	timer_setup(&priv->obe.timer, aspeed_kcs_check_obe, 0);
 
-	aspeed_kcs_set_address(kcs_bmc, addr);
+	rc = aspeed_kcs_set_address(kcs_bmc, addrs, nr_addrs);
+	if (rc)
+		return rc;
 
 	/* Host to BMC IRQ */
 	rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
@@ -602,7 +651,8 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 		return rc;
 	}
 
-	dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n", kcs_bmc->channel, addr);
+	dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
+			kcs_bmc->channel, addrs[0]);
 
 	return 0;
 }
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
