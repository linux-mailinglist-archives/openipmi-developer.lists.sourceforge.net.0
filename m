Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32300377BC3
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:44:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyiP-0005SN-Q4; Mon, 10 May 2021 05:44:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lfyiN-0005SE-J0
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nsLAALaBsNKVRj4KauJmqDuvdmIxsmXV7ge30R1+IA8=; b=R4o0pTZ/gMLAEUJ2EvI4TbrB05
 JcFNyVBx4sCAvT0IvHj6WnXkfbCKVEAX0+hCdHKKOZM+2KCxTFhMKb7xPX3Rtc6LwHILTq33J22IQ
 /l9K2p+/Y71Mz28o3OnJBREcMPds/tUt2leJSyYqwIwOREmMO33lteqxjhCpObUSj9FI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nsLAALaBsNKVRj4KauJmqDuvdmIxsmXV7ge30R1+IA8=; b=LD8kj2nOoMJnBr7CM9dkR2yWYU
 ph5PjxHW+ecIkSw3up92ylXNBb26hc8W5HoQ8OInXs+tn1Wsa5C/hkWW1eU4Z/lXQZE0/AGYhmYPw
 zlDJtQCkAn1oszRIeK504wVoFufOhlYXFaGLUGbkikliwxehTjSJQ8rvARqZeDunZy5I=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lfyiL-0003HI-GV
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:24 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9D8B35804C8;
 Mon, 10 May 2021 01:44:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 10 May 2021 01:44:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=nsLAALaBsNKVR
 j4KauJmqDuvdmIxsmXV7ge30R1+IA8=; b=rqlrfsQVqSMd2VDxkjpqwdyxA7+ty
 RRbxbnA12lRdLdGu3GSYHZZ/DzXCF0JdarWdNg7Q2PbqYHwYrYpo+Q9vRvVwUAzo
 rvwHAd+ZRfVT8VVdP4a8clLrna+5XL4f5AtRwjfUVn/1USeQe6Ij6e9AupVqfS/n
 SUoNy6MSWCL5BI1qJdYlZ2n+APNJ0MPMQxiLHBEOKOQeSA7D9kd9jqcItye13R3r
 sa/lx8LN9rvvYpgKf5qdlota4sn/Lo7OzgnbJtmKObQKpq+6ufLc34P/ZWdTSl7Y
 wWE5sU5UOD8pFk4pyV1gEY3PejnHi8DbvW3VpeQsCUGvgKy+Ko2yOpqGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=nsLAALaBsNKVRj4KauJmqDuvdmIxsmXV7ge30R1+IA8=; b=wkhXf+0p
 P/964dAXRZWJFxPnw7opcdZUhwYSscNU74PXh7l5plEY8oTqitvlKt8Wlilych2O
 rWBi7u768nZKWvxDtA5HS0Op2jMrj8rfi3pzPWTuqF9Wwf3RHOBZCxAtNqxX099m
 UknZnizZXC93SoPg63udUKJD3t+ClRpqSJxw2Tdn1aR0Wgh+BAnRcCLIBR+YoMmU
 B42CSX1paF/ZdHBga4Be1TNEgWKJGc6N18zkXgLW1v4ELYpGOSQxWSuDGaSU5+CB
 0j8I8GirdjsOKGdd0M24Xw+APQXaLMmBPwx1Qw7EkNWu6PmniRXLWNnnFm+Cspn+
 Oz8VMvxoVI/R5Q==
X-ME-Sender: <xms:MMiYYOPAvwlvG3AlpAoKobPHECM34xekn4JHQ_L6X2tqHByMVGT6Yg>
 <xme:MMiYYM8uK2HExWZmUZHkoyCkobMoN5wL3HyEk7GcraKQfMpNPKZa2vAodSPj-fJZj
 NFoXH8Go52XavrV-Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppedvtdefrdehjedrvdduhedrkeen
 ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:MMiYYFRApcs6wSuVgPDr71xFSW5B_IaKV3EC59m8aaaGh0MK4wWxHw>
 <xmx:MMiYYOtHe5e61I90wfyKqlsIuNryGwCaUqMMz6_YxCExXFPRn8qsgg>
 <xmx:MMiYYGeFApWFwxDO3N1RCopiIFQjhDWGManTrnn2g3Sy2XOx_-0CIA>
 <xmx:MMiYYN9XXw63Y9s36SpCM_2SXSK7S7tgLkMbKzA64cwqDxlyikaihw>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:44:11 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:08 +0930
Message-Id: <20210510054213.1610760-12-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510054213.1610760-1-andrew@aj.id.au>
References: <20210510054213.1610760-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfyiL-0003HI-GV
Subject: [Openipmi-developer] [PATCH v3 11/16] ipmi: kcs_bmc: Add serio
 adaptor
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

kcs_bmc_serio acts as a bridge between the KCS drivers in the IPMI
subsystem and the existing userspace interfaces available through the
serio subsystem. This is useful when userspace would like to make use of
the BMC KCS devices for purposes that aren't IPMI.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/Kconfig         |  14 +++
 drivers/char/ipmi/Makefile        |   1 +
 drivers/char/ipmi/kcs_bmc_serio.c | 151 ++++++++++++++++++++++++++++++
 3 files changed, 166 insertions(+)
 create mode 100644 drivers/char/ipmi/kcs_bmc_serio.c

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index bc5f81899b62..249b31197eea 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -137,6 +137,20 @@ config IPMI_KCS_BMC_CDEV_IPMI
 	  This support is also available as a module. The module will be
 	  called kcs_bmc_cdev_ipmi.
 
+config IPMI_KCS_BMC_SERIO
+	depends on IPMI_KCS_BMC && SERIO
+	tristate "SerIO adaptor for BMC KCS devices"
+	help
+	  Adapts the BMC KCS device for the SerIO subsystem. This allows users
+	  to take advantage of userspace interfaces provided by SerIO where
+	  appropriate.
+
+	  Say YES if you wish to expose KCS devices on the BMC via SerIO
+	  interfaces.
+
+	  This support is also available as a module. The module will be
+	  called kcs_bmc_serio.
+
 config ASPEED_BT_IPMI_BMC
 	depends on ARCH_ASPEED || COMPILE_TEST
 	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index fcfa676afddb..84f47d18007f 100644
--- a/drivers/char/ipmi/Makefile
+++ b/drivers/char/ipmi/Makefile
@@ -23,6 +23,7 @@ obj-$(CONFIG_IPMI_POWERNV) += ipmi_powernv.o
 obj-$(CONFIG_IPMI_WATCHDOG) += ipmi_watchdog.o
 obj-$(CONFIG_IPMI_POWEROFF) += ipmi_poweroff.o
 obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o
+obj-$(CONFIG_IPMI_KCS_BMC_SERIO) += kcs_bmc_serio.o
 obj-$(CONFIG_IPMI_KCS_BMC_CDEV_IPMI) += kcs_bmc_cdev_ipmi.o
 obj-$(CONFIG_ASPEED_BT_IPMI_BMC) += bt-bmc.o
 obj-$(CONFIG_ASPEED_KCS_IPMI_BMC) += kcs_bmc_aspeed.o
diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
new file mode 100644
index 000000000000..30a2b7ab464b
--- /dev/null
+++ b/drivers/char/ipmi/kcs_bmc_serio.c
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Copyright (c) 2021 IBM Corp. */
+
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+#include <linux/list.h>
+#include <linux/module.h>
+#include <linux/sched/signal.h>
+#include <linux/serio.h>
+#include <linux/slab.h>
+
+#include "kcs_bmc_client.h"
+
+struct kcs_bmc_serio {
+	struct list_head entry;
+
+	struct kcs_bmc_client client;
+	struct serio *port;
+
+	spinlock_t lock;
+};
+
+static inline struct kcs_bmc_serio *client_to_kcs_bmc_serio(struct kcs_bmc_client *client)
+{
+	return container_of(client, struct kcs_bmc_serio, client);
+}
+
+static irqreturn_t kcs_bmc_serio_event(struct kcs_bmc_client *client)
+{
+	struct kcs_bmc_serio *priv;
+	u8 handled = IRQ_NONE;
+	u8 status;
+
+	priv = client_to_kcs_bmc_serio(client);
+
+	spin_lock(&priv->lock);
+
+	status = kcs_bmc_read_status(client->dev);
+
+	if (status & KCS_BMC_STR_IBF)
+		handled = serio_interrupt(priv->port, kcs_bmc_read_data(client->dev), 0);
+
+	spin_unlock(&priv->lock);
+
+	return handled;
+}
+
+static const struct kcs_bmc_client_ops kcs_bmc_serio_client_ops = {
+	.event = kcs_bmc_serio_event,
+};
+
+static int kcs_bmc_serio_open(struct serio *port)
+{
+	struct kcs_bmc_serio *priv = port->port_data;
+
+	return kcs_bmc_enable_device(priv->client.dev, &priv->client);
+}
+
+static void kcs_bmc_serio_close(struct serio *port)
+{
+	struct kcs_bmc_serio *priv = port->port_data;
+
+	kcs_bmc_disable_device(priv->client.dev, &priv->client);
+}
+
+static DEFINE_SPINLOCK(kcs_bmc_serio_instances_lock);
+static LIST_HEAD(kcs_bmc_serio_instances);
+
+static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
+{
+	struct kcs_bmc_serio *priv;
+	struct serio *port;
+
+	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
+	port = kzalloc(sizeof(*port), GFP_KERNEL);
+	if (!(priv && port))
+		return -ENOMEM;
+
+	port->id.type = SERIO_8042;
+	port->open = kcs_bmc_serio_open;
+	port->close = kcs_bmc_serio_close;
+	port->port_data = priv;
+	port->dev.parent = kcs_bmc->dev;
+
+	spin_lock_init(&priv->lock);
+	priv->port = port;
+	priv->client.dev = kcs_bmc;
+	priv->client.ops = &kcs_bmc_serio_client_ops;
+
+	spin_lock_irq(&kcs_bmc_serio_instances_lock);
+	list_add(&priv->entry, &kcs_bmc_serio_instances);
+	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
+
+	serio_register_port(port);
+
+	dev_info(kcs_bmc->dev, "Initialised serio client for channel %d", kcs_bmc->channel);
+
+	return 0;
+}
+
+static int kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
+{
+	struct kcs_bmc_serio *priv = NULL, *pos;
+
+	spin_lock_irq(&kcs_bmc_serio_instances_lock);
+	list_for_each_entry(pos, &kcs_bmc_serio_instances, entry) {
+		if (pos->client.dev == kcs_bmc) {
+			priv = pos;
+			list_del(&pos->entry);
+			break;
+		}
+	}
+	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
+
+	if (!priv)
+		return -ENODEV;
+
+	serio_unregister_port(priv->port);
+	kcs_bmc_disable_device(kcs_bmc, &priv->client);
+	devm_kfree(priv->client.dev->dev, priv);
+
+	return 0;
+}
+
+static const struct kcs_bmc_driver_ops kcs_bmc_serio_driver_ops = {
+	.add_device = kcs_bmc_serio_add_device,
+	.remove_device = kcs_bmc_serio_remove_device,
+};
+
+static struct kcs_bmc_driver kcs_bmc_serio_driver = {
+	.ops = &kcs_bmc_serio_driver_ops,
+};
+
+static int kcs_bmc_serio_init(void)
+{
+	kcs_bmc_register_driver(&kcs_bmc_serio_driver);
+
+	return 0;
+}
+module_init(kcs_bmc_serio_init);
+
+static void kcs_bmc_serio_exit(void)
+{
+	kcs_bmc_unregister_driver(&kcs_bmc_serio_driver);
+}
+module_exit(kcs_bmc_serio_exit);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
+MODULE_DESCRIPTION("Adapter driver for serio access to BMC KCS devices");
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
