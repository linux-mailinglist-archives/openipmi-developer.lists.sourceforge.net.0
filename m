Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A01827E0396
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzs-0001jy-1D;
	Fri, 03 Nov 2023 13:14:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynll-0006wE-IX
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L7oKznO+QKSLgY6R8VCPalDfz9KTRfbux02CIZeP4js=; b=AcFbxiOdeilVsxOamchzbywywC
 Xywm0M6mTA6ZSPzXCFwuuX3GAWvzoMfciZ1OKSwT6dO0PmOczlJIDI0ZgR5pTQtIls5epZ90rhepF
 XxjsvIPvt/2TMOnSk/iDSPM2yxiPIFAXOc0VsL1zBWPWMAlxEjYE5hyZrEbKdXn9Jouc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L7oKznO+QKSLgY6R8VCPalDfz9KTRfbux02CIZeP4js=; b=KonvboQ77PPP5eG+jURf2kwB7N
 0R9p5Vt/unFtrmp0TFA1uHEgpR6PqkBzweX6yMH/nEXj8N67mmju/5lUYNg9UiRDo9nQc+4FQ6K+Y
 DOn6VuItU0779BWT2lMNAl3SaIjvQQuEojm+Ty+gwKwyECCUq6UgOyQ44h6LjDhSqswI=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlf-001qW2-SX for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:35:00 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 396D22023A;
 Fri,  3 Nov 2023 14:15:43 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992143;
 bh=L7oKznO+QKSLgY6R8VCPalDfz9KTRfbux02CIZeP4js=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=UD7u725uFAOf/mmSOXBf/4JdTnF52QsZK+rN4Ab6LlOISnaaQ/srVoodkt/v4dcer
 p/8dOypXD0wZ34TYEkkgJhqI9V0tgu7v9Jya0rhgJCAyCYYahMqse/ekOhBXV1j59j
 6hKYcP62E4ZmwJAlTTXqj9unlS+XPJG0J554qM0xTho/sZpEQFapGdgc9GcK6E1otW
 /kXucfmwp5Nbdb5LcuNe4YUYhoqckka5zo/d4RnN1BCHehZ4pa8C4nmhOODps+EwXO
 3oUO/ln6J7teRXYAa3qRDywjXk/FbMUJCEfnM4cRGJR1hslD+oVOaEpUF1dkJT5S6s
 /6J/NoSvE8QLA==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:20 +1030
Message-Id: <20231103061522.1268637-9-andrew@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I ran out of spoons before I could come up with a better
 client tracking scheme back in the original refactoring series:
 https://lore.kernel.org/all/20210608104757.582199-1-andrew@aj.id.au/
 Jonathan prodded Konstantin about the issue in a review of Konstantin's MCTP
 patches[1], prompting an attempt to clean it up. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qynlf-001qW2-SX
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:55 +0000
Subject: [Openipmi-developer] [PATCH 08/10] ipmi: kcs_bmc: Track clients in
 core
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
Cc: jk@codeconstruct.com.au, aladyshev22@gmail.com,
 linux-kernel@vger.kernel.org, Jonathan.Cameron@Huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I ran out of spoons before I could come up with a better client tracking
scheme back in the original refactoring series:

https://lore.kernel.org/all/20210608104757.582199-1-andrew@aj.id.au/

Jonathan prodded Konstantin about the issue in a review of Konstantin's
MCTP patches[1], prompting an attempt to clean it up.

[1]: https://lore.kernel.org/all/20230929120835.0000108e@Huawei.com/

Prevent client modules from having to track their own instances by
requiring they return a pointer to a client object from their
add_device() implementation. We can then track this in the core, and
provide it as the argument to the remove_device() implementation to save
the client module from further work. The usual container_of() pattern
gets the client module access to its private data.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc.c           | 68 ++++++++++++++++-----------
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 42 ++++-------------
 drivers/char/ipmi/kcs_bmc_client.h    | 35 ++++++++++----
 drivers/char/ipmi/kcs_bmc_device.h    |  4 +-
 drivers/char/ipmi/kcs_bmc_serio.c     | 43 +++++------------
 5 files changed, 88 insertions(+), 104 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index d70e503041bd..203cb73faa91 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -19,6 +19,7 @@
 static DEFINE_MUTEX(kcs_bmc_lock);
 static LIST_HEAD(kcs_bmc_devices);
 static LIST_HEAD(kcs_bmc_drivers);
+static LIST_HEAD(kcs_bmc_clients);
 
 /* Consumer data access */
 
@@ -129,25 +130,27 @@ void kcs_bmc_disable_device(struct kcs_bmc_client *client)
 }
 EXPORT_SYMBOL(kcs_bmc_disable_device);
 
-int kcs_bmc_add_device(struct kcs_bmc_device *kcs_bmc)
+int kcs_bmc_add_device(struct kcs_bmc_device *dev)
 {
+	struct kcs_bmc_client *client;
 	struct kcs_bmc_driver *drv;
 	int error = 0;
-	int rc;
 
-	spin_lock_init(&kcs_bmc->lock);
-	kcs_bmc->client = NULL;
+	spin_lock_init(&dev->lock);
+	dev->client = NULL;
 
 	mutex_lock(&kcs_bmc_lock);
-	list_add(&kcs_bmc->entry, &kcs_bmc_devices);
+	list_add(&dev->entry, &kcs_bmc_devices);
 	list_for_each_entry(drv, &kcs_bmc_drivers, entry) {
-		rc = drv->ops->add_device(kcs_bmc);
-		if (!rc)
-			continue;
-
-		dev_err(kcs_bmc->dev, "Failed to add chardev for KCS channel %d: %d",
-			kcs_bmc->channel, rc);
-		error = rc;
+		client = drv->ops->add_device(drv, dev);
+		if (IS_ERR(client)) {
+			error = PTR_ERR(client);
+			dev_err(dev->dev,
+				"Failed to add chardev for KCS channel %d: %d",
+				dev->channel, error);
+			break;
+		}
+		list_add(&client->entry, &kcs_bmc_clients);
 	}
 	mutex_unlock(&kcs_bmc_lock);
 
@@ -155,31 +158,37 @@ int kcs_bmc_add_device(struct kcs_bmc_device *kcs_bmc)
 }
 EXPORT_SYMBOL(kcs_bmc_add_device);
 
-void kcs_bmc_remove_device(struct kcs_bmc_device *kcs_bmc)
+void kcs_bmc_remove_device(struct kcs_bmc_device *dev)
 {
-	struct kcs_bmc_driver *drv;
+	struct kcs_bmc_client *curr, *tmp;
 
 	mutex_lock(&kcs_bmc_lock);
-	list_del(&kcs_bmc->entry);
-	list_for_each_entry(drv, &kcs_bmc_drivers, entry) {
-		drv->ops->remove_device(kcs_bmc);
+	list_for_each_entry_safe(curr, tmp, &kcs_bmc_clients, entry) {
+		if (curr->dev == dev) {
+			list_del(&curr->entry);
+			curr->drv->ops->remove_device(curr);
+		}
 	}
+	list_del(&dev->entry);
 	mutex_unlock(&kcs_bmc_lock);
 }
 EXPORT_SYMBOL(kcs_bmc_remove_device);
 
 void kcs_bmc_register_driver(struct kcs_bmc_driver *drv)
 {
-	struct kcs_bmc_device *kcs_bmc;
-	int rc;
+	struct kcs_bmc_client *client;
+	struct kcs_bmc_device *dev;
 
 	mutex_lock(&kcs_bmc_lock);
 	list_add(&drv->entry, &kcs_bmc_drivers);
-	list_for_each_entry(kcs_bmc, &kcs_bmc_devices, entry) {
-		rc = drv->ops->add_device(kcs_bmc);
-		if (rc)
-			dev_err(kcs_bmc->dev, "Failed to add driver for KCS channel %d: %d",
-				kcs_bmc->channel, rc);
+	list_for_each_entry(dev, &kcs_bmc_devices, entry) {
+		client = drv->ops->add_device(drv, dev);
+		if (IS_ERR(client)) {
+			dev_err(dev->dev, "Failed to add driver for KCS channel %d: %ld",
+				dev->channel, PTR_ERR(client));
+			continue;
+		}
+		list_add(&client->entry, &kcs_bmc_clients);
 	}
 	mutex_unlock(&kcs_bmc_lock);
 }
@@ -187,13 +196,16 @@ EXPORT_SYMBOL(kcs_bmc_register_driver);
 
 void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv)
 {
-	struct kcs_bmc_device *kcs_bmc;
+	struct kcs_bmc_client *curr, *tmp;
 
 	mutex_lock(&kcs_bmc_lock);
-	list_del(&drv->entry);
-	list_for_each_entry(kcs_bmc, &kcs_bmc_devices, entry) {
-		drv->ops->remove_device(kcs_bmc);
+	list_for_each_entry_safe(curr, tmp, &kcs_bmc_clients, entry) {
+		if (curr->drv == drv) {
+			list_del(&curr->entry);
+			drv->ops->remove_device(curr);
+		}
 	}
+	list_del(&drv->entry);
 	mutex_unlock(&kcs_bmc_lock);
 }
 EXPORT_SYMBOL(kcs_bmc_unregister_driver);
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 98f231f24c26..9fca31f8c7c2 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -71,8 +71,6 @@ enum kcs_ipmi_errors {
 #define KCS_ZERO_DATA     0
 
 struct kcs_bmc_ipmi {
-	struct list_head entry;
-
 	struct kcs_bmc_client client;
 
 	spinlock_t lock;
@@ -462,27 +460,24 @@ static const struct file_operations kcs_bmc_ipmi_fops = {
 	.unlocked_ioctl = kcs_bmc_ipmi_ioctl,
 };
 
-static DEFINE_SPINLOCK(kcs_bmc_ipmi_instances_lock);
-static LIST_HEAD(kcs_bmc_ipmi_instances);
-
-static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
+static struct kcs_bmc_client *
+kcs_bmc_ipmi_add_device(struct kcs_bmc_driver *drv, struct kcs_bmc_device *dev)
 {
 	struct kcs_bmc_ipmi *priv;
 	int rc;
 
 	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
-		return -ENOMEM;
+		return ERR_PTR(ENOMEM);
 
 	spin_lock_init(&priv->lock);
 	mutex_init(&priv->mutex);
 	init_waitqueue_head(&priv->queue);
 
-	priv->client.dev = kcs_bmc;
-	priv->client.ops = &kcs_bmc_ipmi_client_ops;
+	kcs_bmc_client_init(&priv->client, &kcs_bmc_ipmi_client_ops, drv, dev);
 
 	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
-	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, kcs_bmc->channel);
+	priv->miscdev.name = kasprintf(GFP_KERNEL, "%s%u", DEVICE_NAME, dev->channel);
 	if (!priv->miscdev.name) {
 		rc = -ENOMEM;
 		goto cleanup_priv;
@@ -496,13 +491,9 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
 		goto cleanup_miscdev_name;
 	}
 
-	spin_lock_irq(&kcs_bmc_ipmi_instances_lock);
-	list_add(&priv->entry, &kcs_bmc_ipmi_instances);
-	spin_unlock_irq(&kcs_bmc_ipmi_instances_lock);
+	pr_info("Initialised IPMI client for channel %d\n", dev->channel);
 
-	pr_info("Initialised IPMI client for channel %d\n", kcs_bmc->channel);
-
-	return 0;
+	return &priv->client;
 
 cleanup_miscdev_name:
 	kfree(priv->miscdev.name);
@@ -510,25 +501,12 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
 cleanup_priv:
 	kfree(priv);
 
-	return rc;
+	return ERR_PTR(rc);
 }
 
-static void kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
+static void kcs_bmc_ipmi_remove_device(struct kcs_bmc_client *client)
 {
-	struct kcs_bmc_ipmi *priv = NULL, *pos;
-
-	spin_lock_irq(&kcs_bmc_ipmi_instances_lock);
-	list_for_each_entry(pos, &kcs_bmc_ipmi_instances, entry) {
-		if (pos->client.dev == kcs_bmc) {
-			priv = pos;
-			list_del(&pos->entry);
-			break;
-		}
-	}
-	spin_unlock_irq(&kcs_bmc_ipmi_instances_lock);
-
-	if (!priv)
-		return;
+	struct kcs_bmc_ipmi *priv = client_to_kcs_bmc_ipmi(client);
 
 	misc_deregister(&priv->miscdev);
 	kcs_bmc_disable_device(&priv->client);
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index 1251e9669bcd..1c6c812d6edc 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -8,16 +8,7 @@
 
 #include "kcs_bmc.h"
 
-struct kcs_bmc_driver_ops {
-	int (*add_device)(struct kcs_bmc_device *kcs_bmc);
-	void (*remove_device)(struct kcs_bmc_device *kcs_bmc);
-};
-
-struct kcs_bmc_driver {
-	struct list_head entry;
-
-	const struct kcs_bmc_driver_ops *ops;
-};
+struct kcs_bmc_driver;
 
 struct kcs_bmc_client_ops {
 	irqreturn_t (*event)(struct kcs_bmc_client *client);
@@ -26,7 +17,31 @@ struct kcs_bmc_client_ops {
 struct kcs_bmc_client {
 	const struct kcs_bmc_client_ops *ops;
 
+	struct kcs_bmc_driver *drv;
 	struct kcs_bmc_device *dev;
+	struct list_head entry;
+};
+
+struct kcs_bmc_driver_ops {
+	struct kcs_bmc_client *(*add_device)(struct kcs_bmc_driver *drv,
+					     struct kcs_bmc_device *dev);
+	void (*remove_device)(struct kcs_bmc_client *client);
+};
+
+static inline void kcs_bmc_client_init(struct kcs_bmc_client *client,
+				       const struct kcs_bmc_client_ops *ops,
+				       struct kcs_bmc_driver *drv,
+				       struct kcs_bmc_device *dev)
+{
+	client->ops = ops;
+	client->drv = drv;
+	client->dev = dev;
+}
+
+struct kcs_bmc_driver {
+	struct list_head entry;
+
+	const struct kcs_bmc_driver_ops *ops;
 };
 
 void kcs_bmc_register_driver(struct kcs_bmc_driver *drv);
diff --git a/drivers/char/ipmi/kcs_bmc_device.h b/drivers/char/ipmi/kcs_bmc_device.h
index 17c572f25c54..ca2b5dc2031d 100644
--- a/drivers/char/ipmi/kcs_bmc_device.h
+++ b/drivers/char/ipmi/kcs_bmc_device.h
@@ -16,7 +16,7 @@ struct kcs_bmc_device_ops {
 };
 
 irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc);
-int kcs_bmc_add_device(struct kcs_bmc_device *kcs_bmc);
-void kcs_bmc_remove_device(struct kcs_bmc_device *kcs_bmc);
+int kcs_bmc_add_device(struct kcs_bmc_device *dev);
+void kcs_bmc_remove_device(struct kcs_bmc_device *dev);
 
 #endif
diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
index 0a68c76da955..3cfda39506f6 100644
--- a/drivers/char/ipmi/kcs_bmc_serio.c
+++ b/drivers/char/ipmi/kcs_bmc_serio.c
@@ -13,8 +13,6 @@
 #include "kcs_bmc_client.h"
 
 struct kcs_bmc_serio {
-	struct list_head entry;
-
 	struct kcs_bmc_client client;
 	struct serio *port;
 
@@ -64,10 +62,8 @@ static void kcs_bmc_serio_close(struct serio *port)
 	kcs_bmc_disable_device(&priv->client);
 }
 
-static DEFINE_SPINLOCK(kcs_bmc_serio_instances_lock);
-static LIST_HEAD(kcs_bmc_serio_instances);
-
-static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
+static struct kcs_bmc_client *
+kcs_bmc_serio_add_device(struct kcs_bmc_driver *drv, struct kcs_bmc_device *dev)
 {
 	struct kcs_bmc_serio *priv;
 	struct serio *port;
@@ -75,12 +71,12 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
 
 	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
-		return -ENOMEM;
+		return ERR_PTR(ENOMEM);
 
 	/* Use kzalloc() as the allocation is cleaned up with kfree() via serio_unregister_port() */
 	port = kzalloc(sizeof(*port), GFP_KERNEL);
 	if (!port) {
-		rc = -ENOMEM;
+		rc = ENOMEM;
 		goto cleanup_priv;
 	}
 
@@ -88,45 +84,28 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
 	port->open = kcs_bmc_serio_open;
 	port->close = kcs_bmc_serio_close;
 	port->port_data = priv;
-	port->dev.parent = kcs_bmc->dev;
+	port->dev.parent = dev->dev;
 
 	spin_lock_init(&priv->lock);
 	priv->port = port;
-	priv->client.dev = kcs_bmc;
-	priv->client.ops = &kcs_bmc_serio_client_ops;
 
-	spin_lock_irq(&kcs_bmc_serio_instances_lock);
-	list_add(&priv->entry, &kcs_bmc_serio_instances);
-	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
+	kcs_bmc_client_init(&priv->client, &kcs_bmc_serio_client_ops, drv, dev);
 
 	serio_register_port(port);
 
-	pr_info("Initialised serio client for channel %d\n", kcs_bmc->channel);
+	pr_info("Initialised serio client for channel %d\n", dev->channel);
 
-	return 0;
+	return &priv->client;
 
 cleanup_priv:
 	kfree(priv);
 
-	return rc;
+	return ERR_PTR(rc);
 }
 
-static void kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
+static void kcs_bmc_serio_remove_device(struct kcs_bmc_client *client)
 {
-	struct kcs_bmc_serio *priv = NULL, *pos;
-
-	spin_lock_irq(&kcs_bmc_serio_instances_lock);
-	list_for_each_entry(pos, &kcs_bmc_serio_instances, entry) {
-		if (pos->client.dev == kcs_bmc) {
-			priv = pos;
-			list_del(&pos->entry);
-			break;
-		}
-	}
-	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
-
-	if (!priv)
-		return;
+	struct kcs_bmc_serio *priv = client_to_kcs_bmc_serio(client);
 
 	/* kfree()s priv->port via put_device() */
 	serio_unregister_port(priv->port);
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
