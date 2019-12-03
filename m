Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A61D10FE32
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Dec 2019 13:56:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ic7j6-00009c-Rj; Tue, 03 Dec 2019 12:56:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1ic7j4-00008T-Py
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 12:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kjWpovueN8CzOesF420v4iyncH+ByIeT2cD2JH7lblI=; b=U10aywHxD98Io5lqrwe+zgqc+U
 8N6yC9YcnNEYChS5DixtDyAYpUH0TgKAsW8lCNxxwfw+HhohxiQT9L0ooqDTmcV6vyqaLyHl7BPEG
 yusAf72O7s6sD6YyGPbN20zmgnZXAg5pAdBM2xqWXK20SqZ0J1jOoxq5QapYLckE+d5s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kjWpovueN8CzOesF420v4iyncH+ByIeT2cD2JH7lblI=; b=hIzJKyt8NKp/pFvy5eRx6nJUg2
 HsMwex6Uy8qfs633OYHDtGxpubSPRACB8jHVECMwya+eocIMEvOEQw5XNYbvQOgxP4HjFs9++8lLu
 CIWT7OU7Ck2mBa5xtBE5RgrSJDnBqbDjGHHjXoXSLL78/Nd09Laxyc/9NYvx791cBYd0=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ic7iz-005m0j-2j
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 12:56:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4D9A86DE1;
 Tue,  3 Dec 2019 07:36:56 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:36:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=kjWpovueN8CzO
 esF420v4iyncH+ByIeT2cD2JH7lblI=; b=T5CKLPD+spFW1igauzqE8+IrNWikW
 3Qpwh1ZRCcALvz/non+Glg6hMwkFrcuiwUKm+hH/VYqi4+LsHT6KHwapzeUscqVX
 /TfiaKF4XP3cYYmqmMJXctkmVNRRNdjd6Ln11PKkS2ByUB3K36tbmmQjFRu0RYSF
 H20rNf86NBR+qA2HcmhEvmr20cdh28hZQTQEvhMfZdcwfCQU9n3ozSwp9vhrQ0dv
 3OF4XUaXAcgt1kNzi1qAZJBBGhjezLsdVaQyf/bkiALhU7T3UHOIgrU7NCoP7Zz6
 c/COaXQQ/MkNBULbVDPuK09r1Yzfo2tyfajG//5CQfx6GnLk/A0XBLDEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=kjWpovueN8CzOesF420v4iyncH+ByIeT2cD2JH7lblI=; b=BcqBHJDT
 yycSW8cZYYAuQlu9+h6RthTMirtCmI0XXsToehA55RFutmDylPvqP0ZMcsgL+pde
 gAmyug5sfJUE/GTJtJIMQ7u4EqopvX1BxaCS5aLlJwVrhHnF2d9mteSUfuhPzxv7
 VXnbz8cOwJ2rNVNKUwhP7nyHt8Ft2k+0tC7VAslYvXSpig9qLgHxx1pMIEldqvBy
 fT4GluyakCab7XezF6etV6UWTG85wO/h3KJzMLuLvRLyG6OsCeQHgzWTcBsMqbXs
 dewHBqiCTV85CVRofrfrLknR/b46JCysWtEvi6IH51tSH2WRm7iiiVcfpmHeQcle
 fgBCfjZQ0fc5wQ==
X-ME-Sender: <xms:6FbmXWT95O0CWteAxP0WBCn_xYNd5W4NOhsmjX-u2al4BB7Y-fRcuA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedv
X-ME-Proxy: <xmx:6FbmXWrXU8yHp46kF_4pgnAJRlwoG_pjs2BFWskoVY-ypp7GFOGotw>
 <xmx:6FbmXeA_Wqa4mgPsSOWUnL8Ccrt6T627QzZo__dl4wTkMd67Q4joDA>
 <xmx:6FbmXTuwT9yS-HHx-s_iWbEG_7IdG4C07T_lxzlv19YdOw9rpxGwmQ>
 <xmx:6FbmXYIiMhg-sBX9RKzSZAn-GYTlCTs8clJBvNx1K9pwKMQeKimy3w>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id E0C8630600AA;
 Tue,  3 Dec 2019 07:36:51 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Date: Tue,  3 Dec 2019 23:08:25 +1030
Message-Id: <4e9def3a71d67a190982f22dbfe723ad42ca3661.1575376664.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
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
X-Headers-End: 1ic7iz-005m0j-2j
Subject: [Openipmi-developer] [PATCH 3/3] ipmi: kcs: aspeed: Implement v2
 bindings
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, minyard@acm.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The v2 bindings allow us to extract the resources from the devicetree.
The table in the driver is retained to derive the channel index, which
removes the need for kcs_chan property from the v1 bindings. The v2
bindings allow us to reduce the number of warnings generated by the
existing devicetree nodes.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 144 +++++++++++++++++++++++++-----
 1 file changed, 121 insertions(+), 23 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index e3dd09022589..509e0d3c6eb1 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -12,6 +12,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/poll.h>
 #include <linux/regmap.h>
@@ -233,38 +234,133 @@ static const struct kcs_ioreg ast_kcs_bmc_ioregs[KCS_CHANNEL_MAX] = {
 	{ .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
 };
 
-static int aspeed_kcs_probe(struct platform_device *pdev)
+static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
 {
-	struct device *dev = &pdev->dev;
 	struct aspeed_kcs_bmc *priv;
-	struct kcs_bmc *kcs_bmc;
-	u32 chan, addr;
+	struct device_node *np;
+	struct kcs_bmc *kcs;
+	u32 channel;
+	u32 slave;
 	int rc;
 
-	rc = of_property_read_u32(dev->of_node, "kcs_chan", &chan);
-	if ((rc != 0) || (chan == 0 || chan > KCS_CHANNEL_MAX)) {
-		dev_err(dev, "no valid 'kcs_chan' configured\n");
-		return -ENODEV;
+	np = pdev->dev.of_node;
+
+	rc = of_property_read_u32(np, "kcs_chan", &channel);
+	if ((rc != 0) || (channel == 0 || channel > KCS_CHANNEL_MAX)) {
+		dev_err(&pdev->dev, "no valid 'kcs_chan' configured\n");
+		return ERR_PTR(-EINVAL);
 	}
 
-	rc = of_property_read_u32(dev->of_node, "kcs_addr", &addr);
+	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc), channel);
+	if (!kcs)
+		return ERR_PTR(-ENOMEM);
+
+	priv = kcs_bmc_priv(kcs);
+	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
+	if (IS_ERR(priv->map)) {
+		dev_err(&pdev->dev, "Couldn't get regmap\n");
+		return ERR_PTR(-ENODEV);
+	}
+
+	rc = of_property_read_u32(np, "kcs_addr", &slave);
 	if (rc) {
-		dev_err(dev, "no valid 'kcs_addr' configured\n");
-		return -ENODEV;
+		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
+		return ERR_PTR(-EINVAL);
 	}
 
-	kcs_bmc = kcs_bmc_alloc(dev, sizeof(*priv), chan);
-	if (!kcs_bmc)
-		return -ENOMEM;
+	kcs->ioreg = ast_kcs_bmc_ioregs[channel - 1];
+	aspeed_kcs_set_address(kcs, slave);
+
+	return 0;
+}
+
+static int aspeed_kcs_calculate_channel(const struct kcs_ioreg *regs)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ast_kcs_bmc_ioregs); i++) {
+		if (!memcmp(&ast_kcs_bmc_ioregs[i], regs, sizeof(*regs)))
+			return i + 1;
+	}
+
+	return -EINVAL;
+}
+
+static struct kcs_bmc *aspeed_kcs_probe_of_v2(struct platform_device *pdev)
+{
+	struct aspeed_kcs_bmc *priv;
+	struct device_node *np;
+	struct kcs_ioreg ioreg;
+	struct kcs_bmc *kcs;
+	const __be32 *reg;
+	int channel;
+	u32 slave;
+	int rc;
 
-	priv = kcs_bmc_priv(kcs_bmc);
-	priv->map = syscon_node_to_regmap(dev->parent->of_node);
+	np = pdev->dev.of_node;
+
+	/* Don't translate addresses, we want offsets for the regmaps */
+	reg = of_get_address(np, 0, NULL, NULL);
+	if (!reg)
+		return ERR_PTR(-EINVAL);
+	ioreg.idr = be32_to_cpup(reg);
+
+	reg = of_get_address(np, 1, NULL, NULL);
+	if (!reg)
+		return ERR_PTR(-EINVAL);
+	ioreg.odr = be32_to_cpup(reg);
+
+	reg = of_get_address(np, 2, NULL, NULL);
+	if (!reg)
+		return ERR_PTR(-EINVAL);
+	ioreg.str = be32_to_cpup(reg);
+
+	channel = aspeed_kcs_calculate_channel(&ioreg);
+	if (channel < 0)
+		return ERR_PTR(channel);
+
+	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc), channel);
+	if (!kcs)
+		return ERR_PTR(-ENOMEM);
+
+	kcs->ioreg = ioreg;
+
+	priv = kcs_bmc_priv(kcs);
+	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
 	if (IS_ERR(priv->map)) {
-		dev_err(dev, "Couldn't get regmap\n");
-		return -ENODEV;
+		dev_err(&pdev->dev, "Couldn't get regmap\n");
+		return ERR_PTR(-ENODEV);
 	}
 
-	kcs_bmc->ioreg = ast_kcs_bmc_ioregs[chan - 1];
+	rc = of_property_read_u32(np, "slave-reg", &slave);
+	if (rc)
+		return ERR_PTR(rc);
+
+	aspeed_kcs_set_address(kcs, slave);
+
+	return kcs;
+}
+
+static int aspeed_kcs_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct kcs_bmc *kcs_bmc;
+	struct device_node *np;
+	int rc;
+
+	np = pdev->dev.of_node;
+	if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc") ||
+			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
+		kcs_bmc = aspeed_kcs_probe_of_v1(pdev);
+	else if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc-v2") ||
+			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
+		kcs_bmc = aspeed_kcs_probe_of_v2(pdev);
+	else
+		return -EINVAL;
+
+	if (IS_ERR(kcs_bmc))
+		return PTR_ERR(kcs_bmc);
+
 	kcs_bmc->io_inputb = aspeed_kcs_inb;
 	kcs_bmc->io_outputb = aspeed_kcs_outb;
 
@@ -274,7 +370,6 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(dev, kcs_bmc);
 
-	aspeed_kcs_set_address(kcs_bmc, addr);
 	aspeed_kcs_enable_channel(kcs_bmc, true);
 
 	rc = misc_register(&kcs_bmc->miscdev);
@@ -283,9 +378,10 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 		return rc;
 	}
 
-	pr_info("channel=%u addr=0x%x idr=0x%x odr=0x%x str=0x%x\n",
-		chan, addr,
-		kcs_bmc->ioreg.idr, kcs_bmc->ioreg.odr, kcs_bmc->ioreg.str);
+	dev_dbg(&pdev->dev,
+		"Probed KCS device %d (IDR=0x%x, ODR=0x%x, STR=0x%x)\n",
+		kcs_bmc->channel, kcs_bmc->ioreg.idr, kcs_bmc->ioreg.odr,
+		kcs_bmc->ioreg.str);
 
 	return 0;
 }
@@ -302,6 +398,8 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
 static const struct of_device_id ast_kcs_bmc_match[] = {
 	{ .compatible = "aspeed,ast2400-kcs-bmc" },
 	{ .compatible = "aspeed,ast2500-kcs-bmc" },
+	{ .compatible = "aspeed,ast2400-kcs-bmc-v2" },
+	{ .compatible = "aspeed,ast2500-kcs-bmc-v2" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
-- 
git-series 0.9.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
