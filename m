Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD98377BB9
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:44:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyi5-0004XN-RD; Mon, 10 May 2021 05:44:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lfyi3-0004Wo-K4
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mv+XkRS9PP5hP3oK9kDXhFUkS4C7zSR8x/YUsonQA5A=; b=Pl/rBosfh3wWxg4X4Blj2S31hw
 v2nzAKV6CdOd29U2z1Q2Bb29+sDCrsDqZ87MLIvyYwSSRVBKvhQrdbtUrCUMAqJcfkEz+4j/Mc1WX
 C1MqiqmIkPQxWvUYXZQznFU8ynkc/3vQakR9ftQ/nErruYI3Ar3AWiAR1iDH2yulzf7E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mv+XkRS9PP5hP3oK9kDXhFUkS4C7zSR8x/YUsonQA5A=; b=PU1xttvAMx0pLFpbv9hfbyrLwW
 ubiBeiBU+MebexGFQPIsOGYhKtt81Vh663dxNgshp0Vb2x9k3DQCeI3+MbG5onNBJ/KieyxXwVtVt
 9r0oS16ILCMKchQxiCGxBbHIxeo4VVPW0BbdYmqrWXtd8KICUDaYYUibZ9kMqhTXXY+8=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lfyhx-0003CS-Fy
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:03 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8B3DB5804C8;
 Mon, 10 May 2021 01:43:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 10 May 2021 01:43:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Mv+XkRS9PP5hP
 3oK9kDXhFUkS4C7zSR8x/YUsonQA5A=; b=ml826hA0pFi4998z5N92w/2wyEfeO
 PaXUIrY5V0PPxbIGiOqZJN8bxoCUhP5fwbrZd7CK3X3kw0kb7oMLJazsf0PfmD4D
 UAHXAddCLEy7/4pvWJQotgEZndiOQ08QX66umTPtFs/Qo2usTEuoKs9/FXphu/Si
 zVLge3MALeZN9Med3Vmrlhw7qsMDyCiSl8eoO0I2RTWaGtg9Pea5ys0P9fUGoTcH
 WH/036lg6jRarB5mvunyK28xSNNWWNN/ONl2RpGgmH86TSzljQlyb+mYIRZBcKV2
 TtzkjAUJlpiFuKyJ51zQWiBwGQTh8MSF1RC4ZYJK/UeueudEENUaWA8sQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Mv+XkRS9PP5hP3oK9kDXhFUkS4C7zSR8x/YUsonQA5A=; b=nOuoQS42
 AWLJu3Yl8LkYV85jgOdFCt4c02Wh9me2M2NkH9+VgvfjKYbGdsvn3WNoip9ByS4S
 McQ8I4v5xlzpEhU/bx79gso19NsFH2m/oaoUiyyIiseVlg3FttnZPYpQUuorANiR
 5iYqcv/rBWfa9Qhpd/rDul4rKQ/GTnxpjQSEOLvni1ci56k1I1fw5F3I86G4fiug
 m2Dnb97hNwN7D1lb7IHqN8ivPQ4OA+jCMkk9GvT4yPDtoQw1oI0iTIFnOxsPUx0O
 SG/c1k4wPWqGL62JQE0lXIa0Tel9pdwtkP9Nqm+Gy6ybng6Mzhm1oPY6BpqIHGXY
 khIl5dbjA9ArRA==
X-ME-Sender: <xms:GMiYYJb0Mu8bNvc1x6Xb0bxhTar1n4j3Q6ydTD_UF-IXhRRG2vQgFA>
 <xme:GMiYYAYEr3bbInXuUFlMwLQJtSTUWRfAngD-DDfE8MNoW77Y2entndv2-Wzcko6Ax
 ZO6_j4G7CVBQRZCFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppedvtdefrdehjedrvdduhedrkeen
 ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:GMiYYL9yCqdbcWg2z2aUnZJ7jqTPXM5Olr2uWTF2AAOzSOWwJY2yLw>
 <xmx:GMiYYHrhgTFBhq_3DpR17g7ToiHDUrrASoS_cHLwgE-srkhqnhk6uA>
 <xmx:GMiYYEphnKmK9Vk888KuOiYgPt7gQ4Ncp90JGPXAEhlS4nGkjZiodg>
 <xmx:GMiYYB55g4-zDchYyca5ZyBQ5Qdche09rn53C6csh7XFHCo9vBvKKA>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:43:46 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:04 +0930
Message-Id: <20210510054213.1610760-8-andrew@aj.id.au>
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
X-Headers-End: 1lfyhx-0003CS-Fy
Subject: [Openipmi-developer] [PATCH v3 07/16] ipmi: kcs_bmc: Strip private
 client data from struct kcs_bmc
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

Move all client-private data out of `struct kcs_bmc` into the KCS client
implementation.

With this change the KCS BMC core code now only concerns itself with
abstract `struct kcs_bmc` and `struct kcs_bmc_client` types, achieving
expected separation of concerns. Further, the change clears the path for
implementation of alternative userspace interfaces.

The chardev data-structures are rearranged in the same manner applied to
the KCS device driver data-structures in an earlier patch - `struct
kcs_bmc_client` is embedded in the client's private data and we exploit
container_of() to translate as required.

Finally, now that it is free of client data, `struct kcs_bmc` is renamed
to `struct kcs_bmc_device` to contrast `struct kcs_bmc_client`.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc.c           |  70 ++++-
 drivers/char/ipmi/kcs_bmc.h           |  83 +----
 drivers/char/ipmi/kcs_bmc_aspeed.c    |  22 +-
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 428 ++++++++++++++++----------
 drivers/char/ipmi/kcs_bmc_client.h    |  28 +-
 drivers/char/ipmi/kcs_bmc_device.h    |  14 +-
 drivers/char/ipmi/kcs_bmc_npcm7xx.c   |  20 +-
 7 files changed, 369 insertions(+), 296 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index d3c11a46bca2..70bfeb72c3c7 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -4,6 +4,7 @@
  * Copyright (c) 2021, IBM Corp.
  */
 
+#include <linux/device.h>
 #include <linux/module.h>
 
 #include "kcs_bmc.h"
@@ -14,44 +15,91 @@
 
 /* Consumer data access */
 
-u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc)
+u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc)
 {
 	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
 }
 EXPORT_SYMBOL(kcs_bmc_read_data);
 
-void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data)
+void kcs_bmc_write_data(struct kcs_bmc_device *kcs_bmc, u8 data)
 {
 	kcs_bmc->ops->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
 }
 EXPORT_SYMBOL(kcs_bmc_write_data);
 
-u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc)
+u8 kcs_bmc_read_status(struct kcs_bmc_device *kcs_bmc)
 {
 	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
 }
 EXPORT_SYMBOL(kcs_bmc_read_status);
 
-void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data)
+void kcs_bmc_write_status(struct kcs_bmc_device *kcs_bmc, u8 data)
 {
 	kcs_bmc->ops->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
 }
 EXPORT_SYMBOL(kcs_bmc_write_status);
 
-void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
+void kcs_bmc_update_status(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 val)
 {
 	kcs_bmc->ops->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
 }
 EXPORT_SYMBOL(kcs_bmc_update_status);
 
-irqreturn_t kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
+irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
 {
-	return kcs_bmc->client.ops->event(&kcs_bmc->client);
+	struct kcs_bmc_client *client;
+	irqreturn_t rc;
+
+	spin_lock(&kcs_bmc->lock);
+	client = kcs_bmc->client;
+	if (client) {
+		rc = client->ops->event(client);
+	} else {
+		u8 status;
+
+		status = kcs_bmc_read_status(kcs_bmc);
+		if (status & KCS_BMC_STR_IBF) {
+			/* Ack the event by reading the data */
+			kcs_bmc_read_data(kcs_bmc);
+			rc = IRQ_HANDLED;
+		} else {
+			rc = IRQ_NONE;
+		}
+	}
+	spin_unlock(&kcs_bmc->lock);
+
+	return rc;
 }
 EXPORT_SYMBOL(kcs_bmc_handle_event);
 
-int kcs_bmc_ipmi_add_device(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_add_device(struct kcs_bmc *kcs_bmc)
+int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
+{
+	int rc;
+
+	spin_lock_irq(&kcs_bmc->lock);
+	if (kcs_bmc->client) {
+		rc = -EBUSY;
+	} else {
+		kcs_bmc->client = client;
+		rc = 0;
+	}
+	spin_unlock_irq(&kcs_bmc->lock);
+
+	return rc;
+}
+EXPORT_SYMBOL(kcs_bmc_enable_device);
+
+void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
+{
+	spin_lock_irq(&kcs_bmc->lock);
+	if (client == kcs_bmc->client)
+		kcs_bmc->client = NULL;
+	spin_unlock_irq(&kcs_bmc->lock);
+}
+EXPORT_SYMBOL(kcs_bmc_disable_device);
+
+int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc);
+void kcs_bmc_add_device(struct kcs_bmc_device *kcs_bmc)
 {
 	if (kcs_bmc_ipmi_add_device(kcs_bmc))
 		pr_warn("Failed to add device for KCS channel %d\n",
@@ -59,8 +107,8 @@ void kcs_bmc_add_device(struct kcs_bmc *kcs_bmc)
 }
 EXPORT_SYMBOL(kcs_bmc_add_device);
 
-int kcs_bmc_ipmi_remove_device(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_remove_device(struct kcs_bmc *kcs_bmc)
+int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc);
+void kcs_bmc_remove_device(struct kcs_bmc_device *kcs_bmc)
 {
 	if (kcs_bmc_ipmi_remove_device(kcs_bmc))
 		pr_warn("Failed to remove device for KCS channel %d\n",
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index f42843d240ed..3f0cce315b4f 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -6,61 +6,12 @@
 #ifndef __KCS_BMC_H__
 #define __KCS_BMC_H__
 
-#include <linux/miscdevice.h>
-
-#include "kcs_bmc_client.h"
+#include <linux/list.h>
 
 #define KCS_BMC_STR_OBF		BIT(0)
 #define KCS_BMC_STR_IBF		BIT(1)
 #define KCS_BMC_STR_CMD_DAT	BIT(3)
 
-/* Different phases of the KCS BMC module.
- *  KCS_PHASE_IDLE:
- *            BMC should not be expecting nor sending any data.
- *  KCS_PHASE_WRITE_START:
- *            BMC is receiving a WRITE_START command from system software.
- *  KCS_PHASE_WRITE_DATA:
- *            BMC is receiving a data byte from system software.
- *  KCS_PHASE_WRITE_END_CMD:
- *            BMC is waiting a last data byte from system software.
- *  KCS_PHASE_WRITE_DONE:
- *            BMC has received the whole request from system software.
- *  KCS_PHASE_WAIT_READ:
- *            BMC is waiting the response from the upper IPMI service.
- *  KCS_PHASE_READ:
- *            BMC is transferring the response to system software.
- *  KCS_PHASE_ABORT_ERROR1:
- *            BMC is waiting error status request from system software.
- *  KCS_PHASE_ABORT_ERROR2:
- *            BMC is waiting for idle status afer error from system software.
- *  KCS_PHASE_ERROR:
- *            BMC has detected a protocol violation at the interface level.
- */
-enum kcs_phases {
-	KCS_PHASE_IDLE,
-
-	KCS_PHASE_WRITE_START,
-	KCS_PHASE_WRITE_DATA,
-	KCS_PHASE_WRITE_END_CMD,
-	KCS_PHASE_WRITE_DONE,
-
-	KCS_PHASE_WAIT_READ,
-	KCS_PHASE_READ,
-
-	KCS_PHASE_ABORT_ERROR1,
-	KCS_PHASE_ABORT_ERROR2,
-	KCS_PHASE_ERROR
-};
-
-/* IPMI 2.0 - Table 9-4, KCS Interface Status Codes */
-enum kcs_errors {
-	KCS_NO_ERROR                = 0x00,
-	KCS_ABORTED_BY_COMMAND      = 0x01,
-	KCS_ILLEGAL_CONTROL_CODE    = 0x02,
-	KCS_LENGTH_ERROR            = 0x06,
-	KCS_UNSPECIFIED_ERROR       = 0xFF
-};
-
 /* IPMI 2.0 - 9.5, KCS Interface Registers
  * @idr: Input Data Register
  * @odr: Output Data Register
@@ -73,36 +24,20 @@ struct kcs_ioreg {
 };
 
 struct kcs_bmc_device_ops;
+struct kcs_bmc_client;
+
+struct kcs_bmc_device {
+	struct list_head entry;
 
-struct kcs_bmc {
 	struct device *dev;
-
-	const struct kcs_bmc_device_ops *ops;
-
-	struct kcs_bmc_client client;
-
-	spinlock_t lock;
-
 	u32 channel;
-	int running;
 
 	struct kcs_ioreg ioreg;
 
-	enum kcs_phases phase;
-	enum kcs_errors error;
+	const struct kcs_bmc_device_ops *ops;
 
-	wait_queue_head_t queue;
-	bool data_in_avail;
-	int  data_in_idx;
-	u8  *data_in;
-
-	int  data_out_idx;
-	int  data_out_len;
-	u8  *data_out;
-
-	struct mutex mutex;
-	u8 *kbuffer;
-
-	struct miscdevice miscdev;
+	spinlock_t lock;
+	struct kcs_bmc_client *client;
 };
+
 #endif /* __KCS_BMC_H__ */
diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 337b69cea1da..8e00675d1019 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -61,7 +61,7 @@
 #define LPC_STR4             0x11C
 
 struct aspeed_kcs_bmc {
-	struct kcs_bmc kcs_bmc;
+	struct kcs_bmc_device kcs_bmc;
 
 	struct regmap *map;
 };
@@ -71,12 +71,12 @@ struct aspeed_kcs_of_ops {
 	int (*get_io_address)(struct platform_device *pdev);
 };
 
-static inline struct aspeed_kcs_bmc *to_aspeed_kcs_bmc(struct kcs_bmc *kcs_bmc)
+static inline struct aspeed_kcs_bmc *to_aspeed_kcs_bmc(struct kcs_bmc_device *kcs_bmc)
 {
 	return container_of(kcs_bmc, struct aspeed_kcs_bmc, kcs_bmc);
 }
 
-static u8 aspeed_kcs_inb(struct kcs_bmc *kcs_bmc, u32 reg)
+static u8 aspeed_kcs_inb(struct kcs_bmc_device *kcs_bmc, u32 reg)
 {
 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
 	u32 val = 0;
@@ -88,7 +88,7 @@ static u8 aspeed_kcs_inb(struct kcs_bmc *kcs_bmc, u32 reg)
 	return rc == 0 ? (u8) val : 0;
 }
 
-static void aspeed_kcs_outb(struct kcs_bmc *kcs_bmc, u32 reg, u8 data)
+static void aspeed_kcs_outb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 data)
 {
 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
 	int rc;
@@ -97,7 +97,7 @@ static void aspeed_kcs_outb(struct kcs_bmc *kcs_bmc, u32 reg, u8 data)
 	WARN(rc != 0, "regmap_write() failed: %d\n", rc);
 }
 
-static void aspeed_kcs_updateb(struct kcs_bmc *kcs_bmc, u32 reg, u8 mask, u8 val)
+static void aspeed_kcs_updateb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask, u8 val)
 {
 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
 	int rc;
@@ -119,7 +119,7 @@ static void aspeed_kcs_updateb(struct kcs_bmc *kcs_bmc, u32 reg, u8 mask, u8 val
  *     C. KCS4
  *        D / C : CA4h / CA5h
  */
-static void aspeed_kcs_set_address(struct kcs_bmc *kcs_bmc, u16 addr)
+static void aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u16 addr)
 {
 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
 
@@ -153,7 +153,7 @@ static void aspeed_kcs_set_address(struct kcs_bmc *kcs_bmc, u16 addr)
 	}
 }
 
-static void aspeed_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
+static void aspeed_kcs_enable_channel(struct kcs_bmc_device *kcs_bmc, bool enable)
 {
 	struct aspeed_kcs_bmc *priv = to_aspeed_kcs_bmc(kcs_bmc);
 
@@ -228,12 +228,12 @@ static const struct kcs_bmc_device_ops aspeed_kcs_ops = {
 
 static irqreturn_t aspeed_kcs_irq(int irq, void *arg)
 {
-	struct kcs_bmc *kcs_bmc = arg;
+	struct kcs_bmc_device *kcs_bmc = arg;
 
 	return kcs_bmc_handle_event(kcs_bmc);
 }
 
-static int aspeed_kcs_config_irq(struct kcs_bmc *kcs_bmc,
+static int aspeed_kcs_config_irq(struct kcs_bmc_device *kcs_bmc,
 			struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -333,8 +333,8 @@ static int aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev)
 static int aspeed_kcs_probe(struct platform_device *pdev)
 {
 	const struct aspeed_kcs_of_ops *ops;
+	struct kcs_bmc_device *kcs_bmc;
 	struct aspeed_kcs_bmc *priv;
-	struct kcs_bmc *kcs_bmc;
 	struct device_node *np;
 	int rc, channel, addr;
 
@@ -393,7 +393,7 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 static int aspeed_kcs_remove(struct platform_device *pdev)
 {
 	struct aspeed_kcs_bmc *priv = platform_get_drvdata(pdev);
-	struct kcs_bmc *kcs_bmc = &priv->kcs_bmc;
+	struct kcs_bmc_device *kcs_bmc = &priv->kcs_bmc;
 
 	kcs_bmc_remove_device(kcs_bmc);
 
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 476ad6d541d5..865d8b93f3b7 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -8,13 +8,88 @@
 #include <linux/errno.h>
 #include <linux/io.h>
 #include <linux/ipmi_bmc.h>
+#include <linux/list.h>
+#include <linux/miscdevice.h>
 #include <linux/module.h>
+#include <linux/mutex.h>
 #include <linux/platform_device.h>
 #include <linux/poll.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
 
-#include "kcs_bmc.h"
+#include "kcs_bmc_client.h"
+
+/* Different phases of the KCS BMC module.
+ *  KCS_PHASE_IDLE:
+ *            BMC should not be expecting nor sending any data.
+ *  KCS_PHASE_WRITE_START:
+ *            BMC is receiving a WRITE_START command from system software.
+ *  KCS_PHASE_WRITE_DATA:
+ *            BMC is receiving a data byte from system software.
+ *  KCS_PHASE_WRITE_END_CMD:
+ *            BMC is waiting a last data byte from system software.
+ *  KCS_PHASE_WRITE_DONE:
+ *            BMC has received the whole request from system software.
+ *  KCS_PHASE_WAIT_READ:
+ *            BMC is waiting the response from the upper IPMI service.
+ *  KCS_PHASE_READ:
+ *            BMC is transferring the response to system software.
+ *  KCS_PHASE_ABORT_ERROR1:
+ *            BMC is waiting error status request from system software.
+ *  KCS_PHASE_ABORT_ERROR2:
+ *            BMC is waiting for idle status afer error from system software.
+ *  KCS_PHASE_ERROR:
+ *            BMC has detected a protocol violation at the interface level.
+ */
+enum kcs_ipmi_phases {
+	KCS_PHASE_IDLE,
+
+	KCS_PHASE_WRITE_START,
+	KCS_PHASE_WRITE_DATA,
+	KCS_PHASE_WRITE_END_CMD,
+	KCS_PHASE_WRITE_DONE,
+
+	KCS_PHASE_WAIT_READ,
+	KCS_PHASE_READ,
+
+	KCS_PHASE_ABORT_ERROR1,
+	KCS_PHASE_ABORT_ERROR2,
+	KCS_PHASE_ERROR
+};
+
+/* IPMI 2.0 - Table 9-4, KCS Interface Status Codes */
+enum kcs_ipmi_errors {
+	KCS_NO_ERROR                = 0x00,
+	KCS_ABORTED_BY_COMMAND      = 0x01,
+	KCS_ILLEGAL_CONTROL_CODE    = 0x02,
+	KCS_LENGTH_ERROR            = 0x06,
+	KCS_UNSPECIFIED_ERROR       = 0xFF
+};
+
+struct kcs_bmc_ipmi {
+	struct list_head entry;
+
+	struct kcs_bmc_client client;
+
+	spinlock_t lock;
+
+	enum kcs_ipmi_phases phase;
+	enum kcs_ipmi_errors error;
+
+	wait_queue_head_t queue;
+	bool data_in_avail;
+	int  data_in_idx;
+	u8  *data_in;
+
+	int  data_out_idx;
+	int  data_out_len;
+	u8  *data_out;
+
+	struct mutex mutex;
+	u8 *kbuffer;
+
+	struct miscdevice miscdev;
+};
 
 #define DEVICE_NAME "ipmi-kcs"
 
@@ -44,171 +119,169 @@ enum kcs_states {
 #define KCS_CMD_WRITE_END         0x62
 #define KCS_CMD_READ_BYTE         0x68
 
-static inline void set_state(struct kcs_bmc *kcs_bmc, u8 state)
+static inline void set_state(struct kcs_bmc_ipmi *priv, u8 state)
 {
-	kcs_bmc_update_status(kcs_bmc, KCS_STATUS_STATE_MASK,
-					KCS_STATUS_STATE(state));
+	kcs_bmc_update_status(priv->client.dev, KCS_STATUS_STATE_MASK, KCS_STATUS_STATE(state));
 }
 
-static void kcs_bmc_ipmi_force_abort(struct kcs_bmc *kcs_bmc)
+static void kcs_bmc_ipmi_force_abort(struct kcs_bmc_ipmi *priv)
 {
-	set_state(kcs_bmc, ERROR_STATE);
-	kcs_bmc_read_data(kcs_bmc);
-	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+	set_state(priv, ERROR_STATE);
+	kcs_bmc_read_data(priv->client.dev);
+	kcs_bmc_write_data(priv->client.dev, KCS_ZERO_DATA);
 
-	kcs_bmc->phase = KCS_PHASE_ERROR;
-	kcs_bmc->data_in_avail = false;
-	kcs_bmc->data_in_idx = 0;
+	priv->phase = KCS_PHASE_ERROR;
+	priv->data_in_avail = false;
+	priv->data_in_idx = 0;
 }
 
-static void kcs_bmc_ipmi_handle_data(struct kcs_bmc *kcs_bmc)
+static void kcs_bmc_ipmi_handle_data(struct kcs_bmc_ipmi *priv)
 {
+	struct kcs_bmc_device *dev;
 	u8 data;
 
-	switch (kcs_bmc->phase) {
+	dev = priv->client.dev;
+
+	switch (priv->phase) {
 	case KCS_PHASE_WRITE_START:
-		kcs_bmc->phase = KCS_PHASE_WRITE_DATA;
+		priv->phase = KCS_PHASE_WRITE_DATA;
 		fallthrough;
 
 	case KCS_PHASE_WRITE_DATA:
-		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
-			set_state(kcs_bmc, WRITE_STATE);
-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
-						kcs_bmc_read_data(kcs_bmc);
+		if (priv->data_in_idx < KCS_MSG_BUFSIZ) {
+			set_state(priv, WRITE_STATE);
+			kcs_bmc_write_data(dev, KCS_ZERO_DATA);
+			priv->data_in[priv->data_in_idx++] = kcs_bmc_read_data(dev);
 		} else {
-			kcs_bmc_ipmi_force_abort(kcs_bmc);
-			kcs_bmc->error = KCS_LENGTH_ERROR;
+			kcs_bmc_ipmi_force_abort(priv);
+			priv->error = KCS_LENGTH_ERROR;
 		}
 		break;
 
 	case KCS_PHASE_WRITE_END_CMD:
-		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
-			set_state(kcs_bmc, READ_STATE);
-			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
-						kcs_bmc_read_data(kcs_bmc);
-			kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
-			kcs_bmc->data_in_avail = true;
-			wake_up_interruptible(&kcs_bmc->queue);
+		if (priv->data_in_idx < KCS_MSG_BUFSIZ) {
+			set_state(priv, READ_STATE);
+			priv->data_in[priv->data_in_idx++] = kcs_bmc_read_data(dev);
+			priv->phase = KCS_PHASE_WRITE_DONE;
+			priv->data_in_avail = true;
+			wake_up_interruptible(&priv->queue);
 		} else {
-			kcs_bmc_ipmi_force_abort(kcs_bmc);
-			kcs_bmc->error = KCS_LENGTH_ERROR;
+			kcs_bmc_ipmi_force_abort(priv);
+			priv->error = KCS_LENGTH_ERROR;
 		}
 		break;
 
 	case KCS_PHASE_READ:
-		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
-			set_state(kcs_bmc, IDLE_STATE);
+		if (priv->data_out_idx == priv->data_out_len)
+			set_state(priv, IDLE_STATE);
 
-		data = kcs_bmc_read_data(kcs_bmc);
+		data = kcs_bmc_read_data(dev);
 		if (data != KCS_CMD_READ_BYTE) {
-			set_state(kcs_bmc, ERROR_STATE);
-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+			set_state(priv, ERROR_STATE);
+			kcs_bmc_write_data(dev, KCS_ZERO_DATA);
 			break;
 		}
 
-		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-			kcs_bmc->phase = KCS_PHASE_IDLE;
+		if (priv->data_out_idx == priv->data_out_len) {
+			kcs_bmc_write_data(dev, KCS_ZERO_DATA);
+			priv->phase = KCS_PHASE_IDLE;
 			break;
 		}
 
-		kcs_bmc_write_data(kcs_bmc,
-			kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
+		kcs_bmc_write_data(dev, priv->data_out[priv->data_out_idx++]);
 		break;
 
 	case KCS_PHASE_ABORT_ERROR1:
-		set_state(kcs_bmc, READ_STATE);
-		kcs_bmc_read_data(kcs_bmc);
-		kcs_bmc_write_data(kcs_bmc, kcs_bmc->error);
-		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR2;
+		set_state(priv, READ_STATE);
+		kcs_bmc_read_data(dev);
+		kcs_bmc_write_data(dev, priv->error);
+		priv->phase = KCS_PHASE_ABORT_ERROR2;
 		break;
 
 	case KCS_PHASE_ABORT_ERROR2:
-		set_state(kcs_bmc, IDLE_STATE);
-		kcs_bmc_read_data(kcs_bmc);
-		kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-		kcs_bmc->phase = KCS_PHASE_IDLE;
+		set_state(priv, IDLE_STATE);
+		kcs_bmc_read_data(dev);
+		kcs_bmc_write_data(dev, KCS_ZERO_DATA);
+		priv->phase = KCS_PHASE_IDLE;
 		break;
 
 	default:
-		kcs_bmc_ipmi_force_abort(kcs_bmc);
+		kcs_bmc_ipmi_force_abort(priv);
 		break;
 	}
 }
 
-static void kcs_bmc_ipmi_handle_cmd(struct kcs_bmc *kcs_bmc)
+static void kcs_bmc_ipmi_handle_cmd(struct kcs_bmc_ipmi *priv)
 {
 	u8 cmd;
 
-	set_state(kcs_bmc, WRITE_STATE);
-	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+	set_state(priv, WRITE_STATE);
+	kcs_bmc_write_data(priv->client.dev, KCS_ZERO_DATA);
 
-	cmd = kcs_bmc_read_data(kcs_bmc);
+	cmd = kcs_bmc_read_data(priv->client.dev);
 	switch (cmd) {
 	case KCS_CMD_WRITE_START:
-		kcs_bmc->phase = KCS_PHASE_WRITE_START;
-		kcs_bmc->error = KCS_NO_ERROR;
-		kcs_bmc->data_in_avail = false;
-		kcs_bmc->data_in_idx = 0;
+		priv->phase = KCS_PHASE_WRITE_START;
+		priv->error = KCS_NO_ERROR;
+		priv->data_in_avail = false;
+		priv->data_in_idx = 0;
 		break;
 
 	case KCS_CMD_WRITE_END:
-		if (kcs_bmc->phase != KCS_PHASE_WRITE_DATA) {
-			kcs_bmc_ipmi_force_abort(kcs_bmc);
+		if (priv->phase != KCS_PHASE_WRITE_DATA) {
+			kcs_bmc_ipmi_force_abort(priv);
 			break;
 		}
 
-		kcs_bmc->phase = KCS_PHASE_WRITE_END_CMD;
+		priv->phase = KCS_PHASE_WRITE_END_CMD;
 		break;
 
 	case KCS_CMD_GET_STATUS_ABORT:
-		if (kcs_bmc->error == KCS_NO_ERROR)
-			kcs_bmc->error = KCS_ABORTED_BY_COMMAND;
+		if (priv->error == KCS_NO_ERROR)
+			priv->error = KCS_ABORTED_BY_COMMAND;
 
-		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR1;
-		kcs_bmc->data_in_avail = false;
-		kcs_bmc->data_in_idx = 0;
+		priv->phase = KCS_PHASE_ABORT_ERROR1;
+		priv->data_in_avail = false;
+		priv->data_in_idx = 0;
 		break;
 
 	default:
-		kcs_bmc_ipmi_force_abort(kcs_bmc);
-		kcs_bmc->error = KCS_ILLEGAL_CONTROL_CODE;
+		kcs_bmc_ipmi_force_abort(priv);
+		priv->error = KCS_ILLEGAL_CONTROL_CODE;
 		break;
 	}
 }
 
-static inline struct kcs_bmc *client_to_kcs_bmc(struct kcs_bmc_client *client)
+static inline struct kcs_bmc_ipmi *client_to_kcs_bmc_ipmi(struct kcs_bmc_client *client)
 {
-	return container_of(client, struct kcs_bmc, client);
+	return container_of(client, struct kcs_bmc_ipmi, client);
 }
 
 static irqreturn_t kcs_bmc_ipmi_event(struct kcs_bmc_client *client)
 {
-	struct kcs_bmc *kcs_bmc;
-	unsigned long flags;
+	struct kcs_bmc_ipmi *priv;
 	u8 status;
 	int ret;
 
-	kcs_bmc = client_to_kcs_bmc(client);
+	priv = client_to_kcs_bmc_ipmi(client);
+	if (!priv)
+		return IRQ_NONE;
 
-	spin_lock_irqsave(&kcs_bmc->lock, flags);
+	spin_lock(&priv->lock);
 
-	status = kcs_bmc_read_status(kcs_bmc);
+	status = kcs_bmc_read_status(client->dev);
 	if (status & KCS_STATUS_IBF) {
-		if (!kcs_bmc->running)
-			kcs_bmc_ipmi_force_abort(kcs_bmc);
-		else if (status & KCS_STATUS_CMD_DAT)
-			kcs_bmc_ipmi_handle_cmd(kcs_bmc);
+		if (status & KCS_STATUS_CMD_DAT)
+			kcs_bmc_ipmi_handle_cmd(priv);
 		else
-			kcs_bmc_ipmi_handle_data(kcs_bmc);
+			kcs_bmc_ipmi_handle_data(priv);
 
 		ret = IRQ_HANDLED;
 	} else {
 		ret = IRQ_NONE;
 	}
 
-	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
+	spin_unlock(&priv->lock);
 
 	return ret;
 }
@@ -217,37 +290,29 @@ static const struct kcs_bmc_client_ops kcs_bmc_ipmi_client_ops = {
 	.event = kcs_bmc_ipmi_event,
 };
 
-static inline struct kcs_bmc *file_to_kcs_bmc(struct file *filp)
+static inline struct kcs_bmc_ipmi *to_kcs_bmc(struct file *filp)
 {
-	return container_of(filp->private_data, struct kcs_bmc, miscdev);
+	return container_of(filp->private_data, struct kcs_bmc_ipmi, miscdev);
 }
 
 static int kcs_bmc_ipmi_open(struct inode *inode, struct file *filp)
 {
-	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
-	int ret = 0;
+	struct kcs_bmc_ipmi *priv = to_kcs_bmc(filp);
 
-	spin_lock_irq(&kcs_bmc->lock);
-	if (!kcs_bmc->running)
-		kcs_bmc->running = 1;
-	else
-		ret = -EBUSY;
-	spin_unlock_irq(&kcs_bmc->lock);
-
-	return ret;
+	return kcs_bmc_enable_device(priv->client.dev, &priv->client);
 }
 
 static __poll_t kcs_bmc_ipmi_poll(struct file *filp, poll_table *wait)
 {
-	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
+	struct kcs_bmc_ipmi *priv = to_kcs_bmc(filp);
 	__poll_t mask = 0;
 
-	poll_wait(filp, &kcs_bmc->queue, wait);
+	poll_wait(filp, &priv->queue, wait);
 
-	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->data_in_avail)
+	spin_lock_irq(&priv->lock);
+	if (priv->data_in_avail)
 		mask |= EPOLLIN;
-	spin_unlock_irq(&kcs_bmc->lock);
+	spin_unlock_irq(&priv->lock);
 
 	return mask;
 }
@@ -255,24 +320,24 @@ static __poll_t kcs_bmc_ipmi_poll(struct file *filp, poll_table *wait)
 static ssize_t kcs_bmc_ipmi_read(struct file *filp, char __user *buf,
 			    size_t count, loff_t *ppos)
 {
-	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
+	struct kcs_bmc_ipmi *priv = to_kcs_bmc(filp);
 	bool data_avail;
 	size_t data_len;
 	ssize_t ret;
 
 	if (!(filp->f_flags & O_NONBLOCK))
-		wait_event_interruptible(kcs_bmc->queue,
-					 kcs_bmc->data_in_avail);
+		wait_event_interruptible(priv->queue,
+					 priv->data_in_avail);
 
-	mutex_lock(&kcs_bmc->mutex);
+	mutex_lock(&priv->mutex);
 
-	spin_lock_irq(&kcs_bmc->lock);
-	data_avail = kcs_bmc->data_in_avail;
+	spin_lock_irq(&priv->lock);
+	data_avail = priv->data_in_avail;
 	if (data_avail) {
-		data_len = kcs_bmc->data_in_idx;
-		memcpy(kcs_bmc->kbuffer, kcs_bmc->data_in, data_len);
+		data_len = priv->data_in_idx;
+		memcpy(priv->kbuffer, priv->data_in, data_len);
 	}
-	spin_unlock_irq(&kcs_bmc->lock);
+	spin_unlock_irq(&priv->lock);
 
 	if (!data_avail) {
 		ret = -EAGAIN;
@@ -281,35 +346,35 @@ static ssize_t kcs_bmc_ipmi_read(struct file *filp, char __user *buf,
 
 	if (count < data_len) {
 		pr_err("channel=%u with too large data : %zu\n",
-			kcs_bmc->channel, data_len);
+			priv->client.dev->channel, data_len);
 
-		spin_lock_irq(&kcs_bmc->lock);
-		kcs_bmc_ipmi_force_abort(kcs_bmc);
-		spin_unlock_irq(&kcs_bmc->lock);
+		spin_lock_irq(&priv->lock);
+		kcs_bmc_ipmi_force_abort(priv);
+		spin_unlock_irq(&priv->lock);
 
 		ret = -EOVERFLOW;
 		goto out_unlock;
 	}
 
-	if (copy_to_user(buf, kcs_bmc->kbuffer, data_len)) {
+	if (copy_to_user(buf, priv->kbuffer, data_len)) {
 		ret = -EFAULT;
 		goto out_unlock;
 	}
 
 	ret = data_len;
 
-	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->phase == KCS_PHASE_WRITE_DONE) {
-		kcs_bmc->phase = KCS_PHASE_WAIT_READ;
-		kcs_bmc->data_in_avail = false;
-		kcs_bmc->data_in_idx = 0;
+	spin_lock_irq(&priv->lock);
+	if (priv->phase == KCS_PHASE_WRITE_DONE) {
+		priv->phase = KCS_PHASE_WAIT_READ;
+		priv->data_in_avail = false;
+		priv->data_in_idx = 0;
 	} else {
 		ret = -EAGAIN;
 	}
-	spin_unlock_irq(&kcs_bmc->lock);
+	spin_unlock_irq(&priv->lock);
 
 out_unlock:
-	mutex_unlock(&kcs_bmc->mutex);
+	mutex_unlock(&priv->mutex);
 
 	return ret;
 }
@@ -317,35 +382,35 @@ static ssize_t kcs_bmc_ipmi_read(struct file *filp, char __user *buf,
 static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
 			     size_t count, loff_t *ppos)
 {
-	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
+	struct kcs_bmc_ipmi *priv = to_kcs_bmc(filp);
 	ssize_t ret;
 
 	/* a minimum response size '3' : netfn + cmd + ccode */
 	if (count < 3 || count > KCS_MSG_BUFSIZ)
 		return -EINVAL;
 
-	mutex_lock(&kcs_bmc->mutex);
+	mutex_lock(&priv->mutex);
 
-	if (copy_from_user(kcs_bmc->kbuffer, buf, count)) {
+	if (copy_from_user(priv->kbuffer, buf, count)) {
 		ret = -EFAULT;
 		goto out_unlock;
 	}
 
-	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->phase == KCS_PHASE_WAIT_READ) {
-		kcs_bmc->phase = KCS_PHASE_READ;
-		kcs_bmc->data_out_idx = 1;
-		kcs_bmc->data_out_len = count;
-		memcpy(kcs_bmc->data_out, kcs_bmc->kbuffer, count);
-		kcs_bmc_write_data(kcs_bmc, kcs_bmc->data_out[0]);
+	spin_lock_irq(&priv->lock);
+	if (priv->phase == KCS_PHASE_WAIT_READ) {
+		priv->phase = KCS_PHASE_READ;
+		priv->data_out_idx = 1;
+		priv->data_out_len = count;
+		memcpy(priv->data_out, priv->kbuffer, count);
+		kcs_bmc_write_data(priv->client.dev, priv->data_out[0]);
 		ret = count;
 	} else {
 		ret = -EINVAL;
 	}
-	spin_unlock_irq(&kcs_bmc->lock);
+	spin_unlock_irq(&priv->lock);
 
 out_unlock:
-	mutex_unlock(&kcs_bmc->mutex);
+	mutex_unlock(&priv->mutex);
 
 	return ret;
 }
@@ -353,22 +418,22 @@ static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
 static long kcs_bmc_ipmi_ioctl(struct file *filp, unsigned int cmd,
 			  unsigned long arg)
 {
-	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
+	struct kcs_bmc_ipmi *priv = to_kcs_bmc(filp);
 	long ret = 0;
 
-	spin_lock_irq(&kcs_bmc->lock);
+	spin_lock_irq(&priv->lock);
 
 	switch (cmd) {
 	case IPMI_BMC_IOCTL_SET_SMS_ATN:
-		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
+		kcs_bmc_update_status(priv->client.dev, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
 		break;
 
 	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
-		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
+		kcs_bmc_update_status(priv->client.dev, KCS_STATUS_SMS_ATN, 0);
 		break;
 
 	case IPMI_BMC_IOCTL_FORCE_ABORT:
-		kcs_bmc_ipmi_force_abort(kcs_bmc);
+		kcs_bmc_ipmi_force_abort(priv);
 		break;
 
 	default:
@@ -376,19 +441,17 @@ static long kcs_bmc_ipmi_ioctl(struct file *filp, unsigned int cmd,
 		break;
 	}
 
-	spin_unlock_irq(&kcs_bmc->lock);
+	spin_unlock_irq(&priv->lock);
 
 	return ret;
 }
 
 static int kcs_bmc_ipmi_release(struct inode *inode, struct file *filp)
 {
-	struct kcs_bmc *kcs_bmc = file_to_kcs_bmc(filp);
+	struct kcs_bmc_ipmi *priv = to_kcs_bmc(filp);
 
-	spin_lock_irq(&kcs_bmc->lock);
-	kcs_bmc->running = 0;
-	kcs_bmc_ipmi_force_abort(kcs_bmc);
-	spin_unlock_irq(&kcs_bmc->lock);
+	kcs_bmc_ipmi_force_abort(priv);
+	kcs_bmc_disable_device(priv->client.dev, &priv->client);
 
 	return 0;
 }
@@ -403,56 +466,78 @@ static const struct file_operations kcs_bmc_ipmi_fops = {
 	.unlocked_ioctl = kcs_bmc_ipmi_ioctl,
 };
 
-int kcs_bmc_ipmi_add_device(struct kcs_bmc *kcs_bmc);
-int kcs_bmc_ipmi_add_device(struct kcs_bmc *kcs_bmc)
+static DEFINE_SPINLOCK(kcs_bmc_ipmi_instances_lock);
+static LIST_HEAD(kcs_bmc_ipmi_instances);
+
+int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc);
+int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
 {
+	struct kcs_bmc_ipmi *priv;
 	int rc;
 
-	spin_lock_init(&kcs_bmc->lock);
-	mutex_init(&kcs_bmc->mutex);
-	init_waitqueue_head(&kcs_bmc->queue);
-
-	kcs_bmc->client.dev = kcs_bmc;
-	kcs_bmc->client.ops = &kcs_bmc_ipmi_client_ops;
-	kcs_bmc->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	kcs_bmc->data_out = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	kcs_bmc->kbuffer = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-
-	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
-	kcs_bmc->miscdev.name = devm_kasprintf(kcs_bmc->dev, GFP_KERNEL, "%s%u",
-					       DEVICE_NAME, kcs_bmc->channel);
-	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
-	    !kcs_bmc->miscdev.name)
+	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
 		return -ENOMEM;
 
-	kcs_bmc->miscdev.fops = &kcs_bmc_ipmi_fops;
+	spin_lock_init(&priv->lock);
+	mutex_init(&priv->mutex);
 
-	rc = misc_register(&kcs_bmc->miscdev);
+	init_waitqueue_head(&priv->queue);
+
+	priv->client.dev = kcs_bmc;
+	priv->client.ops = &kcs_bmc_ipmi_client_ops;
+	priv->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
+	priv->data_out = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
+	priv->kbuffer = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
+
+	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
+	priv->miscdev.name = devm_kasprintf(kcs_bmc->dev, GFP_KERNEL, "%s%u", DEVICE_NAME,
+					   kcs_bmc->channel);
+	if (!priv->data_in || !priv->data_out || !priv->kbuffer || !priv->miscdev.name)
+		return -EINVAL;
+
+	priv->miscdev.fops = &kcs_bmc_ipmi_fops;
+
+	rc = misc_register(&priv->miscdev);
 	if (rc) {
 		dev_err(kcs_bmc->dev, "Unable to register device: %d\n", rc);
 		return rc;
 	}
 
+	spin_lock_irq(&kcs_bmc_ipmi_instances_lock);
+	list_add(&priv->entry, &kcs_bmc_ipmi_instances);
+	spin_unlock_irq(&kcs_bmc_ipmi_instances_lock);
+
 	dev_info(kcs_bmc->dev, "Initialised IPMI client for channel %d", kcs_bmc->channel);
 
 	return 0;
 }
 EXPORT_SYMBOL(kcs_bmc_ipmi_add_device);
 
-int kcs_bmc_ipmi_remove_device(struct kcs_bmc *kcs_bmc);
-int kcs_bmc_ipmi_remove_device(struct kcs_bmc *kcs_bmc)
+int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc);
+int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 {
-	misc_deregister(&kcs_bmc->miscdev);
+	struct kcs_bmc_ipmi *priv = NULL, *pos;
 
-	spin_lock_irq(&kcs_bmc->lock);
-	kcs_bmc->running = 0;
-	kcs_bmc_ipmi_force_abort(kcs_bmc);
-	spin_unlock_irq(&kcs_bmc->lock);
+	spin_lock_irq(&kcs_bmc_ipmi_instances_lock);
+	list_for_each_entry(pos, &kcs_bmc_ipmi_instances, entry) {
+		if (pos->client.dev == kcs_bmc) {
+			priv = pos;
+			list_del(&pos->entry);
+			break;
+		}
+	}
+	spin_unlock_irq(&kcs_bmc_ipmi_instances_lock);
 
-	devm_kfree(kcs_bmc->dev, kcs_bmc->kbuffer);
-	devm_kfree(kcs_bmc->dev, kcs_bmc->data_out);
-	devm_kfree(kcs_bmc->dev, kcs_bmc->data_in);
-	devm_kfree(kcs_bmc->dev, kcs_bmc);
+	if (!priv)
+		return -ENODEV;
+
+	misc_deregister(&priv->miscdev);
+	kcs_bmc_disable_device(priv->client.dev, &priv->client);
+	devm_kfree(kcs_bmc->dev, priv->kbuffer);
+	devm_kfree(kcs_bmc->dev, priv->data_out);
+	devm_kfree(kcs_bmc->dev, priv->data_in);
+	devm_kfree(kcs_bmc->dev, priv);
 
 	return 0;
 }
@@ -460,4 +545,5 @@ EXPORT_SYMBOL(kcs_bmc_ipmi_remove_device);
 
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
 MODULE_DESCRIPTION("KCS BMC to handle the IPMI request from system software");
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index b19a7ff64b80..c0f85c5bdf5c 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -9,22 +9,24 @@
 #include <linux/notifier.h>
 #include <stdbool.h>
 
-struct kcs_bmc;
-struct kcs_bmc_client_ops;
-
-struct kcs_bmc_client {
-	const struct kcs_bmc_client_ops *ops;
-
-	struct kcs_bmc *dev;
-};
+#include "kcs_bmc.h"
 
 struct kcs_bmc_client_ops {
 	irqreturn_t (*event)(struct kcs_bmc_client *client);
 };
 
-u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data);
-u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data);
-void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val);
+struct kcs_bmc_client {
+	const struct kcs_bmc_client_ops *ops;
+
+	struct kcs_bmc_device *dev;
+};
+
+int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
+void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
+
+u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc);
+void kcs_bmc_write_data(struct kcs_bmc_device *kcs_bmc, u8 data);
+u8 kcs_bmc_read_status(struct kcs_bmc_device *kcs_bmc);
+void kcs_bmc_write_status(struct kcs_bmc_device *kcs_bmc, u8 data);
+void kcs_bmc_update_status(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 val);
 #endif
diff --git a/drivers/char/ipmi/kcs_bmc_device.h b/drivers/char/ipmi/kcs_bmc_device.h
index 14f8d700a3d8..dd90f8c2ebd6 100644
--- a/drivers/char/ipmi/kcs_bmc_device.h
+++ b/drivers/char/ipmi/kcs_bmc_device.h
@@ -4,16 +4,18 @@
 #ifndef __KCS_BMC_DEVICE_H__
 #define __KCS_BMC_DEVICE_H__
 
+#include <linux/irqreturn.h>
+
 #include "kcs_bmc.h"
 
 struct kcs_bmc_device_ops {
-	u8 (*io_inputb)(struct kcs_bmc *kcs_bmc, u32 reg);
-	void (*io_outputb)(struct kcs_bmc *kcs_bmc, u32 reg, u8 b);
-	void (*io_updateb)(struct kcs_bmc *kcs_bmc, u32 reg, u8 mask, u8 b);
+	u8 (*io_inputb)(struct kcs_bmc_device *kcs_bmc, u32 reg);
+	void (*io_outputb)(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 b);
+	void (*io_updateb)(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask, u8 b);
 };
 
-irqreturn_t kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_add_device(struct kcs_bmc *kcs_bmc);
-void kcs_bmc_remove_device(struct kcs_bmc *kcs_bmc);
+irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc);
+void kcs_bmc_add_device(struct kcs_bmc_device *kcs_bmc);
+void kcs_bmc_remove_device(struct kcs_bmc_device *kcs_bmc);
 
 #endif
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index 203258b24708..9f0b168e487c 100644
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
@@ -65,7 +65,7 @@ struct npcm7xx_kcs_reg {
 };
 
 struct npcm7xx_kcs_bmc {
-	struct kcs_bmc kcs_bmc;
+	struct kcs_bmc_device kcs_bmc;
 
 	struct regmap *map;
 
@@ -78,12 +78,12 @@ static const struct npcm7xx_kcs_reg npcm7xx_kcs_reg_tbl[KCS_CHANNEL_MAX] = {
 	{ .sts = KCS3ST, .dob = KCS3DO, .dib = KCS3DI, .ctl = KCS3CTL, .ie = KCS3IE },
 };
 
-static inline struct npcm7xx_kcs_bmc *to_npcm7xx_kcs_bmc(struct kcs_bmc *kcs_bmc)
+static inline struct npcm7xx_kcs_bmc *to_npcm7xx_kcs_bmc(struct kcs_bmc_device *kcs_bmc)
 {
 	return container_of(kcs_bmc, struct npcm7xx_kcs_bmc, kcs_bmc);
 }
 
-static u8 npcm7xx_kcs_inb(struct kcs_bmc *kcs_bmc, u32 reg)
+static u8 npcm7xx_kcs_inb(struct kcs_bmc_device *kcs_bmc, u32 reg)
 {
 	struct npcm7xx_kcs_bmc *priv = to_npcm7xx_kcs_bmc(kcs_bmc);
 	u32 val = 0;
@@ -95,7 +95,7 @@ static u8 npcm7xx_kcs_inb(struct kcs_bmc *kcs_bmc, u32 reg)
 	return rc == 0 ? (u8)val : 0;
 }
 
-static void npcm7xx_kcs_outb(struct kcs_bmc *kcs_bmc, u32 reg, u8 data)
+static void npcm7xx_kcs_outb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 data)
 {
 	struct npcm7xx_kcs_bmc *priv = to_npcm7xx_kcs_bmc(kcs_bmc);
 	int rc;
@@ -104,7 +104,7 @@ static void npcm7xx_kcs_outb(struct kcs_bmc *kcs_bmc, u32 reg, u8 data)
 	WARN(rc != 0, "regmap_write() failed: %d\n", rc);
 }
 
-static void npcm7xx_kcs_updateb(struct kcs_bmc *kcs_bmc, u32 reg, u8 mask, u8 data)
+static void npcm7xx_kcs_updateb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask, u8 data)
 {
 	struct npcm7xx_kcs_bmc *priv = to_npcm7xx_kcs_bmc(kcs_bmc);
 	int rc;
@@ -113,7 +113,7 @@ static void npcm7xx_kcs_updateb(struct kcs_bmc *kcs_bmc, u32 reg, u8 mask, u8 da
 	WARN(rc != 0, "regmap_update_bits() failed: %d\n", rc);
 }
 
-static void npcm7xx_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
+static void npcm7xx_kcs_enable_channel(struct kcs_bmc_device *kcs_bmc, bool enable)
 {
 	struct npcm7xx_kcs_bmc *priv = to_npcm7xx_kcs_bmc(kcs_bmc);
 
@@ -126,12 +126,12 @@ static void npcm7xx_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
 
 static irqreturn_t npcm7xx_kcs_irq(int irq, void *arg)
 {
-	struct kcs_bmc *kcs_bmc = arg;
+	struct kcs_bmc_device *kcs_bmc = arg;
 
 	return kcs_bmc_handle_event(kcs_bmc);
 }
 
-static int npcm7xx_kcs_config_irq(struct kcs_bmc *kcs_bmc,
+static int npcm7xx_kcs_config_irq(struct kcs_bmc_device *kcs_bmc,
 				  struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -155,7 +155,7 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct npcm7xx_kcs_bmc *priv;
-	struct kcs_bmc *kcs_bmc;
+	struct kcs_bmc_device *kcs_bmc;
 	u32 chan;
 	int rc;
 
@@ -204,7 +204,7 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
 static int npcm7xx_kcs_remove(struct platform_device *pdev)
 {
 	struct npcm7xx_kcs_bmc *priv = platform_get_drvdata(pdev);
-	struct kcs_bmc *kcs_bmc = &priv->kcs_bmc;
+	struct kcs_bmc_device *kcs_bmc = &priv->kcs_bmc;
 
 	kcs_bmc_remove_device(kcs_bmc);
 
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
