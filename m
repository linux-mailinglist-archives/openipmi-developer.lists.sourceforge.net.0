Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 264FE39F443
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:52:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZL2-0001yM-JE; Tue, 08 Jun 2021 10:52:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lqZJh-0001sg-9x
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9T7ZMQ5CKFVHgSD/G5Sj7gVjMK/KS0RDtTmI9RMQXWA=; b=YSwJ0ao0qI3R1Fxp4xywAQzbsj
 hcg7Hx3OmHAkq8l5He1/jPgFzlbCWgnDZFDlqG13UnAx3L4MBH4TZNTc/yhHj65V0zHfMdOMi0l7W
 z1c9pCycXVLVN0ipeWdy6vV2s9wypWiYyTHU2sTQsbHMradA9ZO8bWTks/iHAWka+0ag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9T7ZMQ5CKFVHgSD/G5Sj7gVjMK/KS0RDtTmI9RMQXWA=; b=X/+WNL1PUM0nMxpbXWQQ9tyyl9
 b80lXXoWDQ7Gz7sIQBP6N6pwLMWiM31lDcKz4QUDjOdA4y/u1C+0fxudprJ83PkUCLW382W7B/fXl
 ItT8p7NWxj39FFLy93MDXUQeqFzZIso+g1Q2Dd7brygbKF0acf1SQ+2S7hf84sY0rGKc=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZIP-000jg7-3p
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:49:30 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 803795805DF;
 Tue,  8 Jun 2021 06:49:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 08 Jun 2021 06:49:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=9T7ZMQ5CKFVHg
 SD/G5Sj7gVjMK/KS0RDtTmI9RMQXWA=; b=L+sP8NyUhFoBEyB5bV12UnQXiQQi0
 JdQ9bhvlWAYz5+vvdmXoT4cx4bwm4oxE7jLdkzKEuS61I2EQO9BZ5FXAkW1UE9ZV
 a600L2SBILgY8NFgOkWT6Kq90bYQbK7+2HfKeC0cu3ndKwZqwxN8umn+ZErh9ZV8
 VJEkq7cwV0w7/kbJOpgVjqHKZwsRXaTCfrV4QFUgjueTVCQ72UXSfnW2SnYAOKt+
 qLpz1ropTYvAdotxRh1zkQgHZaoQio6lDvw6tgdnPdOIxqZx1k548ytl0xGsP/xH
 H3O64vSTHzPuqhEny8H79VEUmb60dHeJ8lpak8VSS3PU1S3e6Q5EDvygg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=9T7ZMQ5CKFVHgSD/G5Sj7gVjMK/KS0RDtTmI9RMQXWA=; b=aGzTlmC7
 bpw+zE5EAhjjInQTANGdjPg+DZUojjI/VQRc5yYVPF7qu2GdqyHeCrx7nvY/aMct
 z2ckSuwp9nq1bw7jQjeKI2v+T0WPpBeg/lzKu000tsxB9gfQEzLhO48cisJSgUJK
 LXnvbT19pYlqxu1RPD2a3HldU3aK22MtW3QfUhokVuyKoQOOlHYxdgHrWqmOt0on
 TqonKZplRbK4orLqjVcvHLAXjA1kgLQZ7wjbjtMqPljNjRP2WvVE/lxRY6/WmYgV
 T3OAfet7CvKHgnEulKKwcPGIPN3rU+KXejAICyeOSBAxNlj3i8OXT4elYnxWEj44
 6z1KsyntEKb0wA==
X-ME-Sender: <xms:K0u_YPmqKDlVuMgbgSfsqc4y6_XwUKEGUuKp3gii2CsQqkmnR01lRQ>
 <xme:K0u_YC2ebrNOULA3V5a8m-hYRt_fRZpd0vEvUEAofWO0uasn0KvIUFywqNq-ea2az
 HD6p16hVgz3JQqArg>
X-ME-Received: <xmr:K0u_YFofEpdRj1AmEPQZFPxkpXZOlfstJr1eKqgIaWM6A7Ic3GDicvb2ZvOhuCnE8YWbIOrVH8D7D74jUej7XoOmYwoXULGU65o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecuvehluhhsthgvrhfuihiivgepvdenucfr
 rghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:K0u_YHmhvdLkZOFniUY4pkooAe1Ne-RHXtWXuzu0pWYGXbD_3KXV5A>
 <xmx:K0u_YN06oB9zFytAzi1IUsvaugMQ2Y_por6ZzlIwDQz7_HAOBZ4OEg>
 <xmx:K0u_YGs6vtZ5a1trslXGKmESGFCr_YARnK5lJqDyKTOjQm6VTXQPOg>
 <xmx:K0u_YOEm_QlvAjWNy2svjHfoceexyYlIo0jFljek87K5LhVkSmHa0Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:49:09 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:49 +0930
Message-Id: <20210608104757.582199-9-andrew@aj.id.au>
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
X-Headers-End: 1lqZIP-000jg7-3p
Subject: [Openipmi-developer] [PATCH v4 08/16] ipmi: kcs_bmc: Decouple the
 IPMI chardev from the core
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

Now that we have untangled the data-structures, split the userspace
interface out into its own module. Userspace interfaces and drivers are
registered to the KCS BMC core to support arbitrary binding of either.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/Kconfig             | 13 +++++
 drivers/char/ipmi/Makefile            |  3 +-
 drivers/char/ipmi/kcs_bmc.c           | 80 +++++++++++++++++++++++++--
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 31 +++++++++--
 drivers/char/ipmi/kcs_bmc_client.h    | 14 +++++
 5 files changed, 128 insertions(+), 13 deletions(-)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 07847d9a459a..bc5f81899b62 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -124,6 +124,19 @@ config NPCM7XX_KCS_IPMI_BMC
 	  This support is also available as a module.  If so, the module
 	  will be called kcs_bmc_npcm7xx.
 
+config IPMI_KCS_BMC_CDEV_IPMI
+	depends on IPMI_KCS_BMC
+	tristate "IPMI character device interface for BMC KCS devices"
+	help
+	  Provides a BMC-side character device implementing IPMI
+	  semantics for KCS IPMI devices.
+
+	  Say YES if you wish to expose KCS devices on the BMC for IPMI
+	  purposes.
+
+	  This support is also available as a module. The module will be
+	  called kcs_bmc_cdev_ipmi.
+
 config ASPEED_BT_IPMI_BMC
 	depends on ARCH_ASPEED || COMPILE_TEST
 	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index a302bc865370..fcfa676afddb 100644
--- a/drivers/char/ipmi/Makefile
+++ b/drivers/char/ipmi/Makefile
@@ -22,7 +22,8 @@ obj-$(CONFIG_IPMI_SSIF) += ipmi_ssif.o
 obj-$(CONFIG_IPMI_POWERNV) += ipmi_powernv.o
 obj-$(CONFIG_IPMI_WATCHDOG) += ipmi_watchdog.o
 obj-$(CONFIG_IPMI_POWEROFF) += ipmi_poweroff.o
-obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o kcs_bmc_cdev_ipmi.o
+obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o
+obj-$(CONFIG_IPMI_KCS_BMC_CDEV_IPMI) += kcs_bmc_cdev_ipmi.o
 obj-$(CONFIG_ASPEED_BT_IPMI_BMC) += bt-bmc.o
 obj-$(CONFIG_ASPEED_KCS_IPMI_BMC) += kcs_bmc_aspeed.o
 obj-$(CONFIG_NPCM7XX_KCS_IPMI_BMC) += kcs_bmc_npcm7xx.o
diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 2ec934f0dba3..9860c7b75157 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -5,7 +5,9 @@
  */
 
 #include <linux/device.h>
+#include <linux/list.h>
 #include <linux/module.h>
+#include <linux/mutex.h>
 
 #include "kcs_bmc.h"
 
@@ -13,6 +15,11 @@
 #include "kcs_bmc_device.h"
 #include "kcs_bmc_client.h"
 
+/* Record registered devices and drivers */
+static DEFINE_MUTEX(kcs_bmc_lock);
+static LIST_HEAD(kcs_bmc_devices);
+static LIST_HEAD(kcs_bmc_drivers);
+
 /* Consumer data access */
 
 u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc)
@@ -98,22 +105,83 @@ void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_clien
 }
 EXPORT_SYMBOL(kcs_bmc_disable_device);
 
-int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc);
 int kcs_bmc_add_device(struct kcs_bmc_device *kcs_bmc)
 {
-	return kcs_bmc_ipmi_add_device(kcs_bmc);
+	struct kcs_bmc_driver *drv;
+	int error = 0;
+	int rc;
+
+	spin_lock_init(&kcs_bmc->lock);
+	kcs_bmc->client = NULL;
+
+	mutex_lock(&kcs_bmc_lock);
+	list_add(&kcs_bmc->entry, &kcs_bmc_devices);
+	list_for_each_entry(drv, &kcs_bmc_drivers, entry) {
+		rc = drv->ops->add_device(kcs_bmc);
+		if (!rc)
+			continue;
+
+		dev_err(kcs_bmc->dev, "Failed to add chardev for KCS channel %d: %d",
+			kcs_bmc->channel, rc);
+		error = rc;
+	}
+	mutex_unlock(&kcs_bmc_lock);
+
+	return error;
 }
 EXPORT_SYMBOL(kcs_bmc_add_device);
 
-int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc);
 void kcs_bmc_remove_device(struct kcs_bmc_device *kcs_bmc)
 {
-	if (kcs_bmc_ipmi_remove_device(kcs_bmc))
-		pr_warn("Failed to remove device for KCS channel %d\n",
-			kcs_bmc->channel);
+	struct kcs_bmc_driver *drv;
+	int rc;
+
+	mutex_lock(&kcs_bmc_lock);
+	list_del(&kcs_bmc->entry);
+	list_for_each_entry(drv, &kcs_bmc_drivers, entry) {
+		rc = drv->ops->remove_device(kcs_bmc);
+		if (rc)
+			dev_err(kcs_bmc->dev, "Failed to remove chardev for KCS channel %d: %d",
+				kcs_bmc->channel, rc);
+	}
+	mutex_unlock(&kcs_bmc_lock);
 }
 EXPORT_SYMBOL(kcs_bmc_remove_device);
 
+void kcs_bmc_register_driver(struct kcs_bmc_driver *drv)
+{
+	struct kcs_bmc_device *kcs_bmc;
+	int rc;
+
+	mutex_lock(&kcs_bmc_lock);
+	list_add(&drv->entry, &kcs_bmc_drivers);
+	list_for_each_entry(kcs_bmc, &kcs_bmc_devices, entry) {
+		rc = drv->ops->add_device(kcs_bmc);
+		if (rc)
+			dev_err(kcs_bmc->dev, "Failed to add driver for KCS channel %d: %d",
+				kcs_bmc->channel, rc);
+	}
+	mutex_unlock(&kcs_bmc_lock);
+}
+EXPORT_SYMBOL(kcs_bmc_register_driver);
+
+void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv)
+{
+	struct kcs_bmc_device *kcs_bmc;
+	int rc;
+
+	mutex_lock(&kcs_bmc_lock);
+	list_del(&drv->entry);
+	list_for_each_entry(kcs_bmc, &kcs_bmc_devices, entry) {
+		rc = drv->ops->remove_device(kcs_bmc);
+		if (rc)
+			dev_err(kcs_bmc->dev, "Failed to remove driver for KCS channel %d: %d",
+				kcs_bmc->channel, rc);
+	}
+	mutex_unlock(&kcs_bmc_lock);
+}
+EXPORT_SYMBOL(kcs_bmc_unregister_driver);
+
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
 MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 865d8b93f3b7..486834a962c3 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -469,8 +469,7 @@ static const struct file_operations kcs_bmc_ipmi_fops = {
 static DEFINE_SPINLOCK(kcs_bmc_ipmi_instances_lock);
 static LIST_HEAD(kcs_bmc_ipmi_instances);
 
-int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc);
-int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
+static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_ipmi *priv;
 	int rc;
@@ -512,10 +511,8 @@ int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
 
 	return 0;
 }
-EXPORT_SYMBOL(kcs_bmc_ipmi_add_device);
 
-int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc);
-int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
+static int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_ipmi *priv = NULL, *pos;
 
@@ -541,7 +538,29 @@ int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 
 	return 0;
 }
-EXPORT_SYMBOL(kcs_bmc_ipmi_remove_device);
+
+static const struct kcs_bmc_driver_ops kcs_bmc_ipmi_driver_ops = {
+	.add_device = kcs_bmc_ipmi_add_device,
+	.remove_device = kcs_bmc_ipmi_remove_device,
+};
+
+static struct kcs_bmc_driver kcs_bmc_ipmi_driver = {
+	.ops = &kcs_bmc_ipmi_driver_ops,
+};
+
+static int kcs_bmc_ipmi_init(void)
+{
+	kcs_bmc_register_driver(&kcs_bmc_ipmi_driver);
+
+	return 0;
+}
+module_init(kcs_bmc_ipmi_init);
+
+static void kcs_bmc_ipmi_exit(void)
+{
+	kcs_bmc_unregister_driver(&kcs_bmc_ipmi_driver);
+}
+module_exit(kcs_bmc_ipmi_exit);
 
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index a32fdc4a7707..814ad8e052ef 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -8,6 +8,17 @@
 
 #include "kcs_bmc.h"
 
+struct kcs_bmc_driver_ops {
+	int (*add_device)(struct kcs_bmc_device *kcs_bmc);
+	int (*remove_device)(struct kcs_bmc_device *kcs_bmc);
+};
+
+struct kcs_bmc_driver {
+	struct list_head entry;
+
+	const struct kcs_bmc_driver_ops *ops;
+};
+
 struct kcs_bmc_client_ops {
 	irqreturn_t (*event)(struct kcs_bmc_client *client);
 };
@@ -18,6 +29,9 @@ struct kcs_bmc_client {
 	struct kcs_bmc_device *dev;
 };
 
+void kcs_bmc_register_driver(struct kcs_bmc_driver *drv);
+void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv);
+
 int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
 void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
 
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
