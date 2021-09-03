Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4013FF9E0
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Sep 2021 07:11:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mM1Te-0007BB-OQ; Fri, 03 Sep 2021 05:10:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1mM1Td-0007B5-KO
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Sep 2021 05:10:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tts9ZIBuDZwV5btl8BlInqYlAq5m4AcL7UAjQgCwObk=; b=eQPsdriB416tODXETkMQDt3cwt
 +tnMQNDMWaSql8RC7OYM6yYn+Z8x14AFGFMCNUKYD34/ALAvsrW+QsPR/dxHU4N3BRYzF2caBARh2
 w2zpWx7yZszxo0JMLhs1tZ3VRCwfOrJgCoGDuZ56XJZQq7Tpq1kCTk3hBJkvmNIRSomA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tts9ZIBuDZwV5btl8BlInqYlAq5m4AcL7UAjQgCwObk=; b=P
 Zmh1dC7ltbFZiNHoel/oSzn/yxdQThL3yCHj8wHVqpHefL8VRJpy9+KGPUR5CZxEpC9aHED/njhik
 eyOMWxPKRdAFLN1FHLi9KOXdSPXMbR4Z4Q8ZTHQDekxc3KYBcT6GDp4Em65SuH72qxwdsofJiPEj3
 pn6dgGKLQI1Ywa54=;
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mM1Ta-00CbWn-5y
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Sep 2021 05:10:57 +0000
Received: by mail-pl1-f181.google.com with SMTP id v1so2598545plo.10
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Sep 2021 22:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tts9ZIBuDZwV5btl8BlInqYlAq5m4AcL7UAjQgCwObk=;
 b=l8bknMVZp+vJr2WLwjj37evj7JSHjIQ/GuBx/5diHoOfU7qqODdSflXmdGtEcYTMCn
 r9qctVCdQBWGDpH4/H0q36lTp2GKcVBM/Dx9yi8+qrUWhX4YLY1vm208dOKRYw9Idjw3
 8W2l3ORYvP9mciDCDoQ0TxcpZhIZ4KBlKM8YdqnhrkyVN4zGNSI3JFjSWY0LMXGypppi
 BOt6EiHdAhtaIRzhuZH0snzR6p6186H8e4zfVbQvgqYXUAKN41dDLhtt7p8pNnAM9xsc
 v1TNUshbuaSmtm2jfgm/DFixed0OEF5zBxLpWbgrR4eYBS0rQyaQU+75a7EUQv1/U9g8
 6n/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=tts9ZIBuDZwV5btl8BlInqYlAq5m4AcL7UAjQgCwObk=;
 b=Mi40RR7ZlgE4mBxTpdPrUznARSbDBYCogyG8EQPI4HhzA8jT6vH2M6NvfB36L4enVn
 Ky7IzchrpIAsSSsmcDaELpR3fYvzzMlFBZi4I7PTYWRFMVvPaBfwSH4KU3jbTGhbf4uN
 206CpPghVW+J7V6J67aZ31OAIZ+uv+d9a5qT4pyUC25UFOIknXBU6cSdMvQq/LZnSlbe
 pzaKJOHAMhvbYOMAlzdYHuB98uSmw0icFRFaDrZdqwJk0z7GHiJutNyFyQR7x9FJD+Xu
 xJbJkXKt1gmsThDKk3EMXPjckMbGID/65Y3oCjgHQFGFsZqLs0rohkcT7IPex5m/DtTI
 driA==
X-Gm-Message-State: AOAM533BKj7HSolo6cLFUXyWTvxJxrk1Oqv8f6xD+5oonJJUD69U2wK/
 v9hwdS8VWjXV6zHw5i1bR4Z1eDEKVqo=
X-Google-Smtp-Source: ABdhPJzmCwsiHvXn+/ocbwzvdvWMHEIJn7u+uOtTIlXTB8OEhq1E1xWVaB6JdiousnIYyMFgFziPzg==
X-Received: by 2002:a17:90a:708c:: with SMTP id
 g12mr8063590pjk.13.1630645848267; 
 Thu, 02 Sep 2021 22:10:48 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.15])
 by smtp.gmail.com with ESMTPSA id i24sm3879446pfo.13.2021.09.02.22.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Sep 2021 22:10:47 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Corey Minyard <minyard@acm.org>
Date: Fri,  3 Sep 2021 14:40:39 +0930
Message-Id: <20210903051039.307991-1-joel@jms.id.au>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This driver was originally written to use the regmap
 abstraction
 with no clear benefit. As the registers are always mmio and there is no
 sharing
 of the region with other devices, we can safely read an [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.181 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.181 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mM1Ta-00CbWn-5y
Subject: [Openipmi-developer] [PATCH] ipmi: bt-bmc: Use registers directly
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
Cc: Andrew Jeffery <andrew@aj.id.au>, Alistar Popple <alistair@popple.id.au>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This driver was originally written to use the regmap abstraction with no
clear benefit. As the registers are always mmio and there is no sharing
of the region with other devices, we can safely read and write without
the locking that regmap provides.

This reduces the code size of the driver by about 25%.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 drivers/char/ipmi/bt-bmc.c | 68 +++++++++-----------------------------
 1 file changed, 16 insertions(+), 52 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index 6e3d247b55d1..fb771ce6f7bf 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -8,13 +8,11 @@
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
-#include <linux/mfd/syscon.h>
 #include <linux/miscdevice.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/poll.h>
-#include <linux/regmap.h>
 #include <linux/sched.h>
 #include <linux/timer.h>
 
@@ -59,8 +57,7 @@
 struct bt_bmc {
 	struct device		dev;
 	struct miscdevice	miscdev;
-	struct regmap		*map;
-	int			offset;
+	void __iomem		*base;
 	int			irq;
 	wait_queue_head_t	queue;
 	struct timer_list	poll_timer;
@@ -69,29 +66,14 @@ struct bt_bmc {
 
 static atomic_t open_count = ATOMIC_INIT(0);
 
-static const struct regmap_config bt_regmap_cfg = {
-	.reg_bits = 32,
-	.val_bits = 32,
-	.reg_stride = 4,
-};
-
 static u8 bt_inb(struct bt_bmc *bt_bmc, int reg)
 {
-	uint32_t val = 0;
-	int rc;
-
-	rc = regmap_read(bt_bmc->map, bt_bmc->offset + reg, &val);
-	WARN(rc != 0, "regmap_read() failed: %d\n", rc);
-
-	return rc == 0 ? (u8) val : 0;
+	return readb(bt_bmc->base + reg);
 }
 
 static void bt_outb(struct bt_bmc *bt_bmc, u8 data, int reg)
 {
-	int rc;
-
-	rc = regmap_write(bt_bmc->map, bt_bmc->offset + reg, data);
-	WARN(rc != 0, "regmap_write() failed: %d\n", rc);
+	writeb(data, bt_bmc->base + reg);
 }
 
 static void clr_rd_ptr(struct bt_bmc *bt_bmc)
@@ -376,18 +358,15 @@ static irqreturn_t bt_bmc_irq(int irq, void *arg)
 {
 	struct bt_bmc *bt_bmc = arg;
 	u32 reg;
-	int rc;
 
-	rc = regmap_read(bt_bmc->map, bt_bmc->offset + BT_CR2, &reg);
-	if (rc)
-		return IRQ_NONE;
+	reg = readl(bt_bmc->base + BT_CR2);
 
 	reg &= BT_CR2_IRQ_H2B | BT_CR2_IRQ_HBUSY;
 	if (!reg)
 		return IRQ_NONE;
 
 	/* ack pending IRQs */
-	regmap_write(bt_bmc->map, bt_bmc->offset + BT_CR2, reg);
+	writel(reg, bt_bmc->base + BT_CR2);
 
 	wake_up(&bt_bmc->queue);
 	return IRQ_HANDLED;
@@ -398,6 +377,7 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
 {
 	struct device *dev = &pdev->dev;
 	int rc;
+	u32 reg;
 
 	bt_bmc->irq = platform_get_irq_optional(pdev, 0);
 	if (bt_bmc->irq < 0)
@@ -417,11 +397,11 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
 	 * will be cleared (along with B2H) when we can write the next
 	 * message to the BT buffer
 	 */
-	rc = regmap_update_bits(bt_bmc->map, bt_bmc->offset + BT_CR1,
-				(BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY),
-				(BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY));
+	reg = readl(bt_bmc->base + BT_CR1);
+	reg |= BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY;
+	writel(reg, bt_bmc->base + BT_CR1);
 
-	return rc;
+	return 0;
 }
 
 static int bt_bmc_probe(struct platform_device *pdev)
@@ -439,25 +419,9 @@ static int bt_bmc_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(&pdev->dev, bt_bmc);
 
-	bt_bmc->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
-	if (IS_ERR(bt_bmc->map)) {
-		void __iomem *base;
-
-		/*
-		 * Assume it's not the MFD-based devicetree description, in
-		 * which case generate a regmap ourselves
-		 */
-		base = devm_platform_ioremap_resource(pdev, 0);
-		if (IS_ERR(base))
-			return PTR_ERR(base);
-
-		bt_bmc->map = devm_regmap_init_mmio(dev, base, &bt_regmap_cfg);
-		bt_bmc->offset = 0;
-	} else {
-		rc = of_property_read_u32(dev->of_node, "reg", &bt_bmc->offset);
-		if (rc)
-			return rc;
-	}
+	bt_bmc->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(bt_bmc->base))
+		return PTR_ERR(bt_bmc->base);
 
 	mutex_init(&bt_bmc->mutex);
 	init_waitqueue_head(&bt_bmc->queue);
@@ -483,12 +447,12 @@ static int bt_bmc_probe(struct platform_device *pdev)
 		add_timer(&bt_bmc->poll_timer);
 	}
 
-	regmap_write(bt_bmc->map, bt_bmc->offset + BT_CR0,
-		     (BT_IO_BASE << BT_CR0_IO_BASE) |
+	writel((BT_IO_BASE << BT_CR0_IO_BASE) |
 		     (BT_IRQ << BT_CR0_IRQ) |
 		     BT_CR0_EN_CLR_SLV_RDP |
 		     BT_CR0_EN_CLR_SLV_WRP |
-		     BT_CR0_ENABLE_IBT);
+		     BT_CR0_ENABLE_IBT,
+		bt_bmc->base + BT_CR0);
 
 	clr_b_busy(bt_bmc);
 
-- 
2.33.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
