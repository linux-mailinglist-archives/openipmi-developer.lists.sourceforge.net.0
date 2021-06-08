Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1947939F44A
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:52:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZLk-0000BG-ID; Tue, 08 Jun 2021 10:52:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lqZJf-0008Sj-In
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UtUB3hM0Y78AspE7TiSI/vd9GX5fMx2cnHDbDrWp0qs=; b=YRUusxcgKM6t1EPw50hV9GmyaR
 EuNw+4mA9uyMvhwJewaj45DmdRsiysbD3MZeLrbAisyCR11/yxXib3ZMOu8JFcXPu+R0XHFl6B5rb
 qWDgkj+m/UcPRvMJvErurlRw4NvdAUwZguGIGpgfIar+ZSlKwpB7gvKokVBSvwnXafgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UtUB3hM0Y78AspE7TiSI/vd9GX5fMx2cnHDbDrWp0qs=; b=HBI6+H7KTU+dt4/CgmDfQlN/86
 g1+fiHzFaJhdJbaMITKWDXQXVT/0I9w9+BZ5huWNZG52KSLD7ArUJuHQgvvsHM/EQsoTppHQ7+XYP
 l7E7GpFNuwQaA0ci36U0Uv16S4TyWnTo6RrR4dFQzBViM1rbz3O/zysHubnMgmT6U0eo=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZIA-0008IW-7w
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:49:13 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id A66E25805DF;
 Tue,  8 Jun 2021 06:49:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 08 Jun 2021 06:49:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=UtUB3hM0Y78As
 pE7TiSI/vd9GX5fMx2cnHDbDrWp0qs=; b=gfgR2D2NbRar591WAuNcvoqT8LyUL
 o0+a+mjzGg/O8bqiSbRS8JT+Ql/U+EEn1QDzgB3AnQrjxN9S3Rp5yceTJnI0aDRo
 hKcFIpT9HMRYUoeIIHd78qjDn2Js9S7kH7zjd4+8s6VcIcb325JTPLPbZPUzpeRI
 5YNs37t6+umQlZR5iwI2EKHOMALJrVcTYXaQwUR9UCDQnxZExf6neQjaefvf8acb
 AoXVdgv4GFhiyhpSz+r2i4153lNf8s8mVhOlRr+daPFce5e53KGpSXxMKJsNjg8J
 /phittJ9wf8hxW93apeWPrFf6Z1XvzZUSXqxYIC16rOWK6v1crwszEoKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=UtUB3hM0Y78AspE7TiSI/vd9GX5fMx2cnHDbDrWp0qs=; b=WrGq5lmr
 THkp0Wu+IgtUUYkaX1eY9KNUzEu+XDMWQ0km3c410tiGnyHQPzX6q7H9r+8ZsfHx
 famddrIhq5CcQ48f0xyPebm4Oty0iHZ0Ur+iWdb4bkONkxC95tRsF5FnEoaiLE3d
 Jsbeto2694r/JjJjlGRtUPcG9tjPnPyRODU9vlY5+UD3sK/YZpW43DkdSjs65kcf
 5E3Mx9sNMEKCGxtiCXhmMKY0IaWSFN87X5RjFQaq5oHobLRNFS74Op1udZV/bUGy
 A8bDwOxZSpgCZAlA6uFM3C40meYKJSe0c8m4Qh302YOibk64ItzxTMiEj7sLog3L
 wH14DaVVdUhb8g==
X-ME-Sender: <xms:HUu_YIxz9qUURl2_FRh0fKs7M-pqt5KM9O4OXUd7kQ4u1l3FjsVqJQ>
 <xme:HUu_YMQWxUpy8jdcd8MOLa24CAbzwhKHbW_VOayJfG-K82zkp9wz8_7c4jdEWNuMq
 ebZ2YQuIeV51ErFkg>
X-ME-Received: <xmr:HUu_YKUhb9TLhhBADOURPa8hqXyepkB3TSWyBi426xfOlzYSyJwTM5FCKf4PWxrxQPA55tEKi74yBg45j4X48jxffCoucS5ndEY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecuvehluhhsthgvrhfuihiivgepudenucfr
 rghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:HUu_YGj9iqorsdundO7EMu7z4wzh_SuCIHkeL4mGfejfsA6O6SRG6A>
 <xmx:HUu_YKAZ_YTMqYHznUFB5eALC_-ysbGVzgd2p-N1iIeyH-fW-oN3OA>
 <xmx:HUu_YHJFMOW3C-fdbDazMRaGp7gjtuVOOv9sHP00bz_X1k6Yo_dJSA>
 <xmx:HUu_YEyIs-CzGfffR-xnDZpFKxas6sFOwhNYZ8NMTWwy1PLoDL7MDA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:48:55 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:47 +0930
Message-Id: <20210608104757.582199-7-andrew@aj.id.au>
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
X-Headers-End: 1lqZIA-0008IW-7w
Subject: [Openipmi-developer] [PATCH v4 06/16] ipmi: kcs_bmc: Split headers
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
 linux-aspeed@lists.ozlabs.org, KWLIU@nuvoton.com, avifishman70@gmail.com,
 venture@google.com, chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
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
 drivers/char/ipmi/kcs_bmc_client.h    | 27 +++++++++++++++++++
 drivers/char/ipmi/kcs_bmc_device.h    | 19 +++++++++++++
 drivers/char/ipmi/kcs_bmc_npcm7xx.c   | 17 ++++++------
 7 files changed, 117 insertions(+), 52 deletions(-)
 create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_device.h

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 07bb6747f29a..c347cf6f9337 100644
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
 
@@ -62,4 +68,5 @@ EXPORT_SYMBOL(kcs_bmc_remove_device);
 
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
 MODULE_DESCRIPTION("KCS BMC to handle the IPMI request from system software");
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index f3ed89e7da98..f42843d240ed 100644
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
-int kcs_bmc_add_device(struct kcs_bmc *kcs_bmc);
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
index b07cbc423dd5..fdfba745302a 100644
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
@@ -364,9 +367,7 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
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
index 000000000000..dad8774aebce
--- /dev/null
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2021, IBM Corp. */
+
+#ifndef __KCS_BMC_CONSUMER_H__
+#define __KCS_BMC_CONSUMER_H__
+
+#include <linux/irqreturn.h>
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
index 000000000000..dd8bf1307ad2
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
+int kcs_bmc_add_device(struct kcs_bmc *kcs_bmc);
+void kcs_bmc_remove_device(struct kcs_bmc *kcs_bmc);
+
+#endif
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index e06250285113..ebb691af28c5 100644
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
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
