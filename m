Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD449377BB3
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:44:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyhz-00043n-Cq; Mon, 10 May 2021 05:43:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lfyhw-00043Y-0X
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rt5YVCPcQGKRYAxrqP7h6kBxTmjOLd9w68WfhTQZg8s=; b=iPQbixNNPRi5i4AVn2B+cdlufa
 k4C/kQtMqzjunIMYPyv0dQrbdqKKa8QF/lTmzamdFyfc8I0UO1P2ixl26N6nJniSCqFhNExCYNhnC
 9wWTnJL1jZxAhCKZh7j2vEpUXEZ+EwZekG3bc2hitkLoiXxe8Jb1JizkUtC0pWL50Zsk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rt5YVCPcQGKRYAxrqP7h6kBxTmjOLd9w68WfhTQZg8s=; b=HKwCb7n+BSodOhHTpFUQpD828w
 SxkHhm6u7gaprMAum1Os5E+OiOtBjYI3VAlS7bFRNBVgjNHsL7h8iyFwMVqGRtr3Iw3eZtCQK7FeN
 wy0uYq089Nl1ZmjY/oYucM6cX06rOPYr/p0VQ4cRFOpKS4NJ2IvBoSFMmUtxe9JcB1bQ=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lfyhr-000KbW-P6
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:43:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3E48E5803ED;
 Mon, 10 May 2021 01:43:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 10 May 2021 01:43:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=rt5YVCPcQGKRY
 AxrqP7h6kBxTmjOLd9w68WfhTQZg8s=; b=BrrA0u6z+U4LalsDakW3V+RFmX3lF
 3mkm9BrEaSdsr80Pyney+IaObCeuIbFWZ8gpwnzkFBlNfKp9qJOFPRpRwESDCfnr
 igVwM5kJHDm2zKorM1TtQcl89asdEH83pJytQTQK4HEvUWmFAwdWcklB2bqA3ZrC
 FEPlL0N0OgC2VoFKZsUO9fVJK+ZHW2VLZiCLjVCNIU6FfQjNkvwkqDiZS8Fu6Zrv
 uwORjNR4MrUd2PeOBotIbvgQ76LcgM/Yx5uevkXp1WeWyHDlWCVycqAxuE89Fjp+
 J5BEWXKlZBLERL2asYG0YEsYcf53aM8SXlqHlSOdNJsnxyBTS8neXx3KQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=rt5YVCPcQGKRYAxrqP7h6kBxTmjOLd9w68WfhTQZg8s=; b=dFC3IAG+
 FDZkeWPxv9oRgnJPm7Fn9ZC7lGQEIEaOrXdJuVLM1TfzvVA8EJmkSe1MsmayQl8O
 Cc3DPjOum55V1qL+UFS1E58QYJWl3O2TaBR7agLA8LT/GcpwMlve5dpGKkWGKlGu
 7ZoPyiSmehuwnwjV7ft9RagCmWI2Ly2lC/ovqrNGdi/8++oZEOlt0su/N1j8RMr0
 3vzY/ifX8XwMhzrbCJMA6/1KIRQiR/RZ/mWwyJ+vjyuyfRrFEMSGJbugucKlarAR
 hz9sCvhUzzO9eG7HN9vKUyL0gLhUJWpYQUDKuhbOJpGABMxbvFkg0qohboKfv/PZ
 dKS0pm43YLwgnw==
X-ME-Sender: <xms:EsiYYOu5Ic3W9Aud0pbZYCrVaYP_Uc3XVpOLEYvQ8StJrCpfAt_5Yg>
 <xme:EsiYYDdn_xrFGl9Gau7W3tb13lW-jTXfDV9NtvkXKjgroep1e4vdua_dtn_vvggmI
 M_AE-K4ivmOjBCqYQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppedvtdefrdehjedrvdduhedrkeen
 ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:EsiYYJy0jsUwe5E0ntovd7hd1a3LjpX4zpDgDaOzsCFUPUlGMXArag>
 <xmx:EsiYYJN6umCYlPbfbuarwdHGgwdqMvC-q0E43YW3j6WLd5_r3xoUxg>
 <xmx:EsiYYO8GTm_fWlRtkNEtg_bfKy372xl7_1w0DHnGDNjEPpzrNkpPTQ>
 <xmx:EsiYYAendffgQCEmaxX8cPhd4yNtYhea90CmlMUaJFNixVqvAg6pTA>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:43:40 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:03 +0930
Message-Id: <20210510054213.1610760-7-andrew@aj.id.au>
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
X-Headers-End: 1lfyhr-000KbW-P6
Subject: [Openipmi-developer] [PATCH v3 06/16] ipmi: kcs_bmc: Split headers
 into device and client
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

Strengthen the distinction between code that abstracts the
implementation of the KCS behaviours (device drivers) and code that
exploits KCS behaviours (clients). Neither needs to know about the APIs
required by the other, so provide separate headers.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc.c           | 23 ++++++++++------
 drivers/char/ipmi/kcs_bmc.h           | 27 +++++++++----------
 drivers/char/ipmi/kcs_bmc_aspeed.c    | 17 ++++++------
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 39 ++++++++++++++++++---------
 drivers/char/ipmi/kcs_bmc_client.h    | 30 +++++++++++++++++++++
 drivers/char/ipmi/kcs_bmc_device.h    | 19 +++++++++++++
 drivers/char/ipmi/kcs_bmc_npcm7xx.c   | 17 ++++++------
 7 files changed, 120 insertions(+), 52 deletions(-)
 create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_device.h

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 83da681bf49e..d3c11a46bca2 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -1,46 +1,52 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2015-2018, Intel Corporation.
+ * Copyright (c) 2021, IBM Corp.
  */
 
 #include <linux/module.h>
 
 #include "kcs_bmc.h"
 
+/* Implement both the device and client interfaces here */
+#include "kcs_bmc_device.h"
+#include "kcs_bmc_client.h"
+
+/* Consumer data access */
+
 u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc)
 {
-	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
+	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
 }
 EXPORT_SYMBOL(kcs_bmc_read_data);
 
 void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data)
 {
-	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
+	kcs_bmc->ops->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
 }
 EXPORT_SYMBOL(kcs_bmc_write_data);
 
 u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc)
 {
-	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
+	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
 }
 EXPORT_SYMBOL(kcs_bmc_read_status);
 
 void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data)
 {
-	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
+	kcs_bmc->ops->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
 }
 EXPORT_SYMBOL(kcs_bmc_write_status);
 
 void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
 {
-	kcs_bmc->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
+	kcs_bmc->ops->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
 }
 EXPORT_SYMBOL(kcs_bmc_update_status);
 
-int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc);
-int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
+irqreturn_t kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
 {
-	return kcs_bmc_ipmi_event(kcs_bmc);
+	return kcs_bmc->client.ops->event(&kcs_bmc->client);
 }
 EXPORT_SYMBOL(kcs_bmc_handle_event);
 
@@ -64,4 +70,5 @@ EXPORT_SYMBOL(kcs_bmc_remove_device);
 
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
 MODULE_DESCRIPTION("KCS BMC to handle the IPMI request from system software");
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index b2e6b7a7fe62..f42843d240ed 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -8,6 +8,12 @@
 
 #include <linux/miscdevice.h>
 
+#include "kcs_bmc_client.h"
+
+#define KCS_BMC_STR_OBF		BIT(0)
+#define KCS_BMC_STR_IBF		BIT(1)
+#define KCS_BMC_STR_CMD_DAT	BIT(3)
+
 /* Different phases of the KCS BMC module.
  *  KCS_PHASE_IDLE:
  *            BMC should not be expecting nor sending any data.
@@ -66,19 +72,21 @@ struct kcs_ioreg {
 	u32 str;
 };
 
+struct kcs_bmc_device_ops;
+
 struct kcs_bmc {
 	struct device *dev;
 
+	const struct kcs_bmc_device_ops *ops;
+
+	struct kcs_bmc_client client;
+
 	spinlock_t lock;
 
 	u32 channel;
 	int running;
 
-	/* Setup by BMC KCS controller driver */
 	struct kcs_ioreg ioreg;
-	u8 (*io_inputb)(struct kcs_bmc *kcs_bmc, u32 reg);
-	void (*io_outputb)(struct kcs_bmc *kcs_bmc, u32 reg, u8 b);
-	void (*io_updateb)(struct kcs_bmc *kcs_bmc, u32 reg, u8 mask, u8 val);
 
 	enum kcs_phases phase;
 	enum kcs_errors error;
@@ -97,15 +105,4 @@ struct kcs_bmc {
 
 	struct miscdevice miscdev;
 };
-
-int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_add_device(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_remove_device(struct kcs_bmc *kcs_bmc);
-
-u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data);
-u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data);
-void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val);
-
 #endif /* __KCS_BMC_H__ */
diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 5d433dea5714..337b69cea1da 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -21,7 +21,7 @@
 #include <linux/slab.h>
 #include <linux/timer.h>
 
-#include "kcs_bmc.h"
+#include "kcs_bmc_device.h"
 
 
 #define DEVICE_NAME     "ast-kcs-bmc"
@@ -220,14 +220,17 @@ static void aspeed_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
 	}
 }
 
+static const struct kcs_bmc_device_ops aspeed_kcs_ops = {
+	.io_inputb = aspeed_kcs_inb,
+	.io_outputb = aspeed_kcs_outb,
+	.io_updateb = aspeed_kcs_updateb,
+};
+
 static irqreturn_t aspeed_kcs_irq(int irq, void *arg)
 {
 	struct kcs_bmc *kcs_bmc = arg;
 
-	if (!kcs_bmc_handle_event(kcs_bmc))
-		return IRQ_HANDLED;
-
-	return IRQ_NONE;
+	return kcs_bmc_handle_event(kcs_bmc);
 }
 
 static int aspeed_kcs_config_irq(struct kcs_bmc *kcs_bmc,
@@ -362,9 +365,7 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	kcs_bmc->dev = &pdev->dev;
 	kcs_bmc->channel = channel;
 	kcs_bmc->ioreg = ast_kcs_bmc_ioregs[channel - 1];
-	kcs_bmc->io_inputb = aspeed_kcs_inb;
-	kcs_bmc->io_outputb = aspeed_kcs_outb;
-	kcs_bmc->io_updateb = aspeed_kcs_updateb;
+	kcs_bmc->ops = &aspeed_kcs_ops;
 
 	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
 	if (IS_ERR(priv->map)) {
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 5060643bf530..476ad6d541d5 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -22,7 +22,6 @@
 
 #define KCS_ZERO_DATA     0
 
-
 /* IPMI 2.0 - Table 9-1, KCS Interface Status Register Bits */
 #define KCS_STATUS_STATE(state) (state << 6)
 #define KCS_STATUS_STATE_MASK   GENMASK(7, 6)
@@ -179,12 +178,19 @@ static void kcs_bmc_ipmi_handle_cmd(struct kcs_bmc *kcs_bmc)
 	}
 }
 
-int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc);
-int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc)
+static inline struct kcs_bmc *client_to_kcs_bmc(struct kcs_bmc_client *client)
 {
+	return container_of(client, struct kcs_bmc, client);
+}
+
+static irqreturn_t kcs_bmc_ipmi_event(struct kcs_bmc_client *client)
+{
+	struct kcs_bmc *kcs_bmc;
 	unsigned long flags;
-	int ret = -ENODATA;
 	u8 status;
+	int ret;
+
+	kcs_bmc = client_to_kcs_bmc(client);
 
 	spin_lock_irqsave(&kcs_bmc->lock, flags);
 
@@ -197,23 +203,28 @@ int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc)
 		else
 			kcs_bmc_ipmi_handle_data(kcs_bmc);
 
-		ret = 0;
+		ret = IRQ_HANDLED;
+	} else {
+		ret = IRQ_NONE;
 	}
 
 	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
 
 	return ret;
 }
-EXPORT_SYMBOL(kcs_bmc_ipmi_event);
 
-static inline struct kcs_bmc *to_kcs_bmc(struct file *filp)
+static const struct kcs_bmc_client_ops kcs_bmc_ipmi_client_ops = {
+	.event = kcs_bmc_ipmi_event,
+};
+
+static inline struct kcs_bmc *file_to_kcs_bmc(struct file *filp)
 {
 	return container_of(filp->private_data, struct kcs_bmc, miscdev);
 }
 
 static int kcs_bmc_ipmi_open(struct inode *inode, struct file *filp)
 {
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
 	int ret = 0;
 
 	spin_lock_irq(&kcs_bmc->lock);
@@ -228,7 +239,7 @@ static int kcs_bmc_ipmi_open(struct inode *inode, struct file *filp)
 
 static __poll_t kcs_bmc_ipmi_poll(struct file *filp, poll_table *wait)
 {
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
 	__poll_t mask = 0;
 
 	poll_wait(filp, &kcs_bmc->queue, wait);
@@ -244,7 +255,7 @@ static __poll_t kcs_bmc_ipmi_poll(struct file *filp, poll_table *wait)
 static ssize_t kcs_bmc_ipmi_read(struct file *filp, char __user *buf,
 			    size_t count, loff_t *ppos)
 {
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
 	bool data_avail;
 	size_t data_len;
 	ssize_t ret;
@@ -306,7 +317,7 @@ static ssize_t kcs_bmc_ipmi_read(struct file *filp, char __user *buf,
 static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
 			     size_t count, loff_t *ppos)
 {
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
 	ssize_t ret;
 
 	/* a minimum response size '3' : netfn + cmd + ccode */
@@ -342,7 +353,7 @@ static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
 static long kcs_bmc_ipmi_ioctl(struct file *filp, unsigned int cmd,
 			  unsigned long arg)
 {
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
 	long ret = 0;
 
 	spin_lock_irq(&kcs_bmc->lock);
@@ -372,7 +383,7 @@ static long kcs_bmc_ipmi_ioctl(struct file *filp, unsigned int cmd,
 
 static int kcs_bmc_ipmi_release(struct inode *inode, struct file *filp)
 {
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
 
 	spin_lock_irq(&kcs_bmc->lock);
 	kcs_bmc->running = 0;
@@ -401,6 +412,8 @@ int kcs_bmc_ipmi_add_device(struct kcs_bmc *kcs_bmc)
 	mutex_init(&kcs_bmc->mutex);
 	init_waitqueue_head(&kcs_bmc->queue);
 
+	kcs_bmc->client.dev = kcs_bmc;
+	kcs_bmc->client.ops = &kcs_bmc_ipmi_client_ops;
 	kcs_bmc->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 	kcs_bmc->data_out = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 	kcs_bmc->kbuffer = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
new file mode 100644
index 000000000000..b19a7ff64b80
--- /dev/null
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2021, IBM Corp. */
+
+#ifndef __KCS_BMC_CONSUMER_H__
+#define __KCS_BMC_CONSUMER_H__
+
+#include <linux/irqreturn.h>
+#include <linux/list.h>
+#include <linux/notifier.h>
+#include <stdbool.h>
+
+struct kcs_bmc;
+struct kcs_bmc_client_ops;
+
+struct kcs_bmc_client {
+	const struct kcs_bmc_client_ops *ops;
+
+	struct kcs_bmc *dev;
+};
+
+struct kcs_bmc_client_ops {
+	irqreturn_t (*event)(struct kcs_bmc_client *client);
+};
+
+u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc);
+void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data);
+u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc);
+void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data);
+void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val);
+#endif
diff --git a/drivers/char/ipmi/kcs_bmc_device.h b/drivers/char/ipmi/kcs_bmc_device.h
new file mode 100644
index 000000000000..14f8d700a3d8
--- /dev/null
+++ b/drivers/char/ipmi/kcs_bmc_device.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2021, IBM Corp. */
+
+#ifndef __KCS_BMC_DEVICE_H__
+#define __KCS_BMC_DEVICE_H__
+
+#include "kcs_bmc.h"
+
+struct kcs_bmc_device_ops {
+	u8 (*io_inputb)(struct kcs_bmc *kcs_bmc, u32 reg);
+	void (*io_outputb)(struct kcs_bmc *kcs_bmc, u32 reg, u8 b);
+	void (*io_updateb)(struct kcs_bmc *kcs_bmc, u32 reg, u8 mask, u8 b);
+};
+
+irqreturn_t kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc);
+void kcs_bmc_add_device(struct kcs_bmc *kcs_bmc);
+void kcs_bmc_remove_device(struct kcs_bmc *kcs_bmc);
+
+#endif
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index f7b4e866f86e..203258b24708 100644
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
@@ -17,7 +17,7 @@
 #include <linux/regmap.h>
 #include <linux/slab.h>
 
-#include "kcs_bmc.h"
+#include "kcs_bmc_device.h"
 
 #define DEVICE_NAME	"npcm-kcs-bmc"
 #define KCS_CHANNEL_MAX	3
@@ -128,10 +128,7 @@ static irqreturn_t npcm7xx_kcs_irq(int irq, void *arg)
 {
 	struct kcs_bmc *kcs_bmc = arg;
 
-	if (!kcs_bmc_handle_event(kcs_bmc))
-		return IRQ_HANDLED;
-
-	return IRQ_NONE;
+	return kcs_bmc_handle_event(kcs_bmc);
 }
 
 static int npcm7xx_kcs_config_irq(struct kcs_bmc *kcs_bmc,
@@ -148,6 +145,12 @@ static int npcm7xx_kcs_config_irq(struct kcs_bmc *kcs_bmc,
 				dev_name(dev), kcs_bmc);
 }
 
+static const struct kcs_bmc_device_ops npcm7xx_kcs_ops = {
+	.io_inputb = npcm7xx_kcs_inb,
+	.io_outputb = npcm7xx_kcs_outb,
+	.io_updateb = npcm7xx_kcs_updateb,
+};
+
 static int npcm7xx_kcs_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -179,9 +182,7 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
 	kcs_bmc->ioreg.idr = priv->reg->dib;
 	kcs_bmc->ioreg.odr = priv->reg->dob;
 	kcs_bmc->ioreg.str = priv->reg->sts;
-	kcs_bmc->io_inputb = npcm7xx_kcs_inb;
-	kcs_bmc->io_outputb = npcm7xx_kcs_outb;
-	kcs_bmc->io_updateb = npcm7xx_kcs_updateb;
+	kcs_bmc->ops = &npcm7xx_kcs_ops;
 
 	platform_set_drvdata(pdev, priv);
 
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
