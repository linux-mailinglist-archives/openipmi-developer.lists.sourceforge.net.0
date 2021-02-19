Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B504631FB41
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Feb 2021 15:49:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lD76P-0000cN-DI; Fri, 19 Feb 2021 14:49:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lD75l-0000UB-Ft
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Feb 2021 14:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ocd8Lh6XKDrzlubs+IGR6Sop8aKwJ9aJvmrJ0IYT/jk=; b=I3n7UTlbus3G1vtM++2p0R5/+P
 PsRs6st2rSqrWO6/KdVQfy4NO2iqhvaiCl7aa/frHOL0h/sTkz9fTO50asGUbJmuA4GnCmRpKo341
 is6JNeRmZDOwtWzccVgkzq7pIORIh5Lz6W3xeRKa05p6nEXbP0GZY/A50WdPgqkPK3tY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ocd8Lh6XKDrzlubs+IGR6Sop8aKwJ9aJvmrJ0IYT/jk=; b=YyrgcgqH9A2pBYh1VG0LJIaSb1
 p5t1OigBwVCb8mTa+Az5UDO6Yp+WU/0sVWa66nHbAPe1Hr3vYVW2NcpYgcde//1gODhSKNkpKEuN0
 Bq+6Fo2mKXBwhDHiccFnx6zLoaZE3I4Or/LZwJOZz3UMW5NCoiIQrMirRrJhQZfeW4x0=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lD72s-00FPYe-SE
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Feb 2021 14:46:34 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9040A5803BA;
 Fri, 19 Feb 2021 09:27:13 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Feb 2021 09:27:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Ocd8Lh6XKDrzl
 ubs+IGR6Sop8aKwJ9aJvmrJ0IYT/jk=; b=MVFhnHhlovlbhF6gx224qRjCxNGBN
 pyuFIrNEf7NOCu4dOc+Ikcg4ZHXn8MJAM3ujEhEMIRdJT/4IWwwyjBJmRdeKZ12r
 9vpp8JrYfGlmGclVc6fcLCIqTpVq4Wy44dFC1GcH3uDx+O0vezOYkDSAmTFgtVWE
 eQu/RXrWxjxhZteHDCMLJXRgqHiOIA52LtlNqrnPSHv5EEfdgFga2JsrSxl98Zf4
 OBB7W5WYuOISL0R1r3QXy/cjMyJuVkxzZfQuBR/ZZBJhRU2klaaHrtAJEmbeo1C/
 1ARjwviFOrY+h+FdZm8cs0euGC8BU4kVp5qHIjvRekKYQyGA3i4ivbfFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Ocd8Lh6XKDrzlubs+IGR6Sop8aKwJ9aJvmrJ0IYT/jk=; b=g+ngVEWC
 NcH6masjZWYcrQeMioJINAWuUK7sLutj2soZrp63vFcyMCJG0ZOO1PjniqGh86hs
 hi1dgv5F2GrMRZVbnI/fjHSTWacMC552moy72xVVRvzlHCp/c3yhn7amel5x2hWJ
 T6q3O2xMHjZ0zw3jM1SHDyUGd2/SJYH8D/MZnWwsspoVwMKAg8P1uwddmGeQDzwd
 zv9U+8ljiEF25M3zaKJI8yGB58r18LySuLn4+Y+tJuZGPy4ua7QmlshCxJcBBJEo
 t2fDjwLFJzBvWRZtakz9LNVfjFOgIXmM84Yd6yl8jIWZft1AFuh08Yp2T7cJTE2W
 E1Z8zn1jx20QTg==
X-ME-Sender: <xms:wcovYNI_MwpGDFVVCim6T97IIriCns3_t6rVF2z6TDP3cJiXHNCDVw>
 <xme:wcovYJL0tpy6jjrtQc5E_WQje0m0nFBVdgtMGeAIL_5rK5mFTSjUUb1-B168xiH58
 24JSP-C0dyKjBOmRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucggtffrrghtthgvrhhnpeejgfdvveehteekveeggeellefgleette
 ejffelffdvudduveeiffegteelvefhteenucfkphepudegrddvrdeluddrfeejnecuvehl
 uhhsthgvrhfuihiivgepjeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifse
 grjhdrihgurdgruh
X-ME-Proxy: <xmx:wcovYFummSOySRfYGtUy2MjdXeUQ_sOQqWkIlqXDMT3E1rOpV3z1ig>
 <xmx:wcovYOYCqb6ND8kxSs1bVx0sKYWDy_Zb4BK-x2_v8HBiVXy0-mOq3Q>
 <xmx:wcovYEak3GKdyvjb1ic9e9YPEePNpv6D9MAaeQoBgSAJ3Oyx0p87Cg>
 <xmx:wcovYEL3NamyaeR9G3BeSSdGaw1N_2GTWEOcYQ65DfG21OHQJDl3Bw>
Received: from localhost.localdomain
 (ppp14-2-91-37.adl-apt-pir-bras31.tpg.internode.on.net [14.2.91.37])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3C27F24005D;
 Fri, 19 Feb 2021 09:27:06 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Sat, 20 Feb 2021 00:55:17 +1030
Message-Id: <20210219142523.3464540-14-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210219142523.3464540-1-andrew@aj.id.au>
References: <20210219142523.3464540-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.229 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lD72s-00FPYe-SE
Subject: [Openipmi-developer] [PATCH 13/19] ipmi: kcs_bmc: Decouple the IPMI
 chardev from the core
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
 linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 avifishman70@gmail.com, venture@google.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, tali.perry1@gmail.com, yuenn@google.com,
 robh+dt@kernel.org, lee.jones@linaro.org, chiawei_wang@aspeedtech.com,
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
 drivers/char/ipmi/kcs_bmc.c           | 78 ++++++++++++++++++++++++++-
 drivers/char/ipmi/kcs_bmc.h           |  4 --
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 31 +++++++++--
 drivers/char/ipmi/kcs_bmc_client.h    | 14 +++++
 6 files changed, 132 insertions(+), 11 deletions(-)

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
index 266ebec71d6f..694db6ee2a92 100644
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
 
+/* Record probed devices and cdevs */
+static DEFINE_MUTEX(kcs_bmc_lock);
+static LIST_HEAD(kcs_bmc_devices);
+static LIST_HEAD(kcs_bmc_cdevs);
+
 /* Consumer data access */
 
 u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc)
@@ -100,16 +107,83 @@ EXPORT_SYMBOL(kcs_bmc_disable_device);
 
 int kcs_bmc_add_device(struct kcs_bmc_device *kcs_bmc)
 {
-	return kcs_bmc_ipmi_attach_cdev(kcs_bmc);
+	struct kcs_bmc_cdev *cdev;
+	int rc;
+
+	spin_lock_init(&kcs_bmc->lock);
+	kcs_bmc->client = NULL;
+
+	mutex_lock(&kcs_bmc_lock);
+	list_add(&kcs_bmc->entry, &kcs_bmc_devices);
+	list_for_each_entry(cdev, &kcs_bmc_cdevs, entry) {
+		rc = cdev->ops->add_device(kcs_bmc);
+		if (rc)
+			dev_err(kcs_bmc->dev, "Failed to add chardev for KCS channel %d: %d",
+				kcs_bmc->channel, rc);
+	}
+	mutex_unlock(&kcs_bmc_lock);
+
+	return 0;
 }
 EXPORT_SYMBOL(kcs_bmc_add_device);
 
 int kcs_bmc_remove_device(struct kcs_bmc_device *kcs_bmc)
 {
-	return kcs_bmc_ipmi_detach_cdev(kcs_bmc);
+	struct kcs_bmc_cdev *cdev;
+	int rc;
+
+	mutex_lock(&kcs_bmc_lock);
+	list_del(&kcs_bmc->entry);
+	list_for_each_entry(cdev, &kcs_bmc_cdevs, entry) {
+		rc = cdev->ops->remove_device(kcs_bmc);
+		if (rc)
+			dev_err(kcs_bmc->dev, "Failed to remove chardev for KCS channel %d: %d",
+				kcs_bmc->channel, rc);
+	}
+	mutex_unlock(&kcs_bmc_lock);
+
+	return 0;
 }
 EXPORT_SYMBOL(kcs_bmc_remove_device);
 
+int kcs_bmc_register_cdev(struct kcs_bmc_cdev *cdev)
+{
+	struct kcs_bmc_device *kcs_bmc;
+	int rc;
+
+	mutex_lock(&kcs_bmc_lock);
+	list_add(&cdev->entry, &kcs_bmc_cdevs);
+	list_for_each_entry(kcs_bmc, &kcs_bmc_devices, entry) {
+		rc = cdev->ops->add_device(kcs_bmc);
+		if (rc)
+			dev_err(kcs_bmc->dev, "Failed to add chardev for KCS channel %d: %d",
+				kcs_bmc->channel, rc);
+	}
+	mutex_unlock(&kcs_bmc_lock);
+
+	return 0;
+}
+EXPORT_SYMBOL(kcs_bmc_register_cdev);
+
+int kcs_bmc_unregister_cdev(struct kcs_bmc_cdev *cdev)
+{
+	struct kcs_bmc_device *kcs_bmc;
+	int rc;
+
+	mutex_lock(&kcs_bmc_lock);
+	list_del(&cdev->entry);
+	list_for_each_entry(kcs_bmc, &kcs_bmc_devices, entry) {
+		rc = cdev->ops->remove_device(kcs_bmc);
+		if (rc)
+			dev_err(kcs_bmc->dev, "Failed to add chardev for KCS channel %d: %d",
+				kcs_bmc->channel, rc);
+	}
+	mutex_unlock(&kcs_bmc_lock);
+
+	return rc;
+}
+EXPORT_SYMBOL(kcs_bmc_unregister_cdev);
+
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
 MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index 3f266740c759..5deb9a0b8e60 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -42,8 +42,4 @@ struct kcs_bmc_device {
 	spinlock_t lock;
 	struct kcs_bmc_client *client;
 };
-
-/* Temporary exports while refactoring */
-int kcs_bmc_ipmi_attach_cdev(struct kcs_bmc_device *kcs_bmc);
-int kcs_bmc_ipmi_detach_cdev(struct kcs_bmc_device *kcs_bmc);
 #endif /* __KCS_BMC_H__ */
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 537d936eb3e5..81673f2afb44 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -469,7 +469,7 @@ static const struct file_operations kcs_bmc_ipmi_fops = {
 static DEFINE_SPINLOCK(kcs_bmc_ipmi_instances_lock);
 static LIST_HEAD(kcs_bmc_ipmi_instances);
 
-int kcs_bmc_ipmi_attach_cdev(struct kcs_bmc_device *kcs_bmc)
+static int kcs_bmc_ipmi_attach_cdev(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_ipmi *priv;
 	int rc;
@@ -511,9 +511,8 @@ int kcs_bmc_ipmi_attach_cdev(struct kcs_bmc_device *kcs_bmc)
 
 	return 0;
 }
-EXPORT_SYMBOL(kcs_bmc_ipmi_attach_cdev);
 
-int kcs_bmc_ipmi_detach_cdev(struct kcs_bmc_device *kcs_bmc)
+static int kcs_bmc_ipmi_detach_cdev(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_ipmi *priv, *pos;
 
@@ -539,7 +538,31 @@ int kcs_bmc_ipmi_detach_cdev(struct kcs_bmc_device *kcs_bmc)
 
 	return 0;
 }
-EXPORT_SYMBOL(kcs_bmc_ipmi_detach_cdev);
+
+static const struct kcs_bmc_cdev_ops kcs_bmc_ipmi_cdev_ops = {
+	.add_device = kcs_bmc_ipmi_attach_cdev,
+	.remove_device = kcs_bmc_ipmi_detach_cdev,
+};
+
+static struct kcs_bmc_cdev kcs_bmc_ipmi_cdev = {
+	.ops = &kcs_bmc_ipmi_cdev_ops,
+};
+
+static int kcs_bmc_ipmi_init(void)
+{
+	return kcs_bmc_register_cdev(&kcs_bmc_ipmi_cdev);
+}
+module_init(kcs_bmc_ipmi_init);
+
+static void kcs_bmc_ipmi_exit(void)
+{
+	int rc;
+
+	rc = kcs_bmc_unregister_cdev(&kcs_bmc_ipmi_cdev);
+	if (rc)
+		pr_warn("Failed to remove KCS BMC client: %d", rc);
+}
+module_exit(kcs_bmc_ipmi_exit);
 
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index 2dd710f4b4aa..d0a7404ff584 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -10,6 +10,17 @@
 
 #include "kcs_bmc.h"
 
+struct kcs_bmc_cdev_ops {
+	int (*add_device)(struct kcs_bmc_device *kcs_bmc);
+	int (*remove_device)(struct kcs_bmc_device *kcs_bmc);
+};
+
+struct kcs_bmc_cdev {
+	struct list_head entry;
+
+	const struct kcs_bmc_cdev_ops *ops;
+};
+
 struct kcs_bmc_client_ops {
 	int (*event)(struct kcs_bmc_client *client);
 };
@@ -20,6 +31,9 @@ struct kcs_bmc_client {
 	struct kcs_bmc_device *dev;
 };
 
+int kcs_bmc_register_cdev(struct kcs_bmc_cdev *cdev);
+int kcs_bmc_unregister_cdev(struct kcs_bmc_cdev *cdev);
+
 int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
 void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
 
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
