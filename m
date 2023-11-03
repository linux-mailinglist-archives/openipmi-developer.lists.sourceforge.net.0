Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE657E0398
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzs-0001kN-Fk;
	Fri, 03 Nov 2023 13:14:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynln-000435-1e
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gMOtRmTdZKiT17CY+VYm9GvQ641VhOnLGRnNlkCuGwQ=; b=Cf+yBqf6Ove7St3PSj1KTuqdCV
 Yq7dg32gsy9wAwXnxzNAuVXGbl04IvKf29YjX8gZXpvCKVwi+RWcjTlFoxLxQYuovN3QLR/EUo35K
 Bt3TZRur27BMorxRI6xuLiOWZ4zQHajSvRqvXoxuZFn7HeFqZFR5nEkivbluAFhtb6B0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gMOtRmTdZKiT17CY+VYm9GvQ641VhOnLGRnNlkCuGwQ=; b=kB9ve5/wh8oQ3cM56hKLv+TX7W
 rC7SI1tPh9pOIwuurOz53gE1GK8Hqtbf30nIO+xhvokqTl+fi3wJdoeWpZbc+B6PeQMiXDgFqmR7C
 ziaCAYdnzyzjrUIcypV31JleTdk6jzJMOPJOsgmXUsKtIog9vUS1j5FR/Zi33kszqqBU=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlf-001qW3-SU for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:35:00 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5786A20235;
 Fri,  3 Nov 2023 14:15:40 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992140;
 bh=gMOtRmTdZKiT17CY+VYm9GvQ641VhOnLGRnNlkCuGwQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=XZs4h8UbvvAYE97E+7Fsk/JgsmsXEo7Ih0IzeDoIw8NGNVrdIi234MrwI+ZXnqUX3
 oUUat3f25yVPuAKyClcmDojd7I/yCowQkySkXmmvWNP5gO5xIuuyfhrvn0zzFMiBsJ
 CUz0Yo0GNK0M09QdftdYS3pmzGbnFLiw/fHHpQRjGLiwwxEBRIGa3n3kUcaGI+pNv7
 EWOCRucSNmIJPDxyC4zxe9fy19s1JgdLLV7HT4K9udWPaVcYoxR78uYWYG0UY+JGRO
 39WZmGBbBDJU7fIOBtj28+dx/BQpzleRYtvRmSeoaqVICZxEt+j5yxzIMQkWsH0W0V
 5PnhydiC9df0w==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:16 +1030
Message-Id: <20231103061522.1268637-5-andrew@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Don't pretend there's a valid failure path when there's not.
 Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au> ---
 drivers/char/ipmi/kcs_bmc.c
 | 12 ++ drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 6 ++----
 drivers/char/ipmi/kcs_bmc_client.h | 2 +- [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qynlf-001qW3-SU
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:55 +0000
Subject: [Openipmi-developer] [PATCH 04/10] ipmi: kcs_bmc: Make
 remove_device() callback return void
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

Don't pretend there's a valid failure path when there's not.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc.c           | 12 ++----------
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c |  6 ++----
 drivers/char/ipmi/kcs_bmc_client.h    |  2 +-
 drivers/char/ipmi/kcs_bmc_serio.c     |  6 ++----
 4 files changed, 7 insertions(+), 19 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 1a827db8a465..5a3f199241d2 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -135,15 +135,11 @@ EXPORT_SYMBOL(kcs_bmc_add_device);
 void kcs_bmc_remove_device(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_driver *drv;
-	int rc;
 
 	mutex_lock(&kcs_bmc_lock);
 	list_del(&kcs_bmc->entry);
 	list_for_each_entry(drv, &kcs_bmc_drivers, entry) {
-		rc = drv->ops->remove_device(kcs_bmc);
-		if (rc)
-			dev_err(kcs_bmc->dev, "Failed to remove chardev for KCS channel %d: %d",
-				kcs_bmc->channel, rc);
+		drv->ops->remove_device(kcs_bmc);
 	}
 	mutex_unlock(&kcs_bmc_lock);
 }
@@ -169,15 +165,11 @@ EXPORT_SYMBOL(kcs_bmc_register_driver);
 void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv)
 {
 	struct kcs_bmc_device *kcs_bmc;
-	int rc;
 
 	mutex_lock(&kcs_bmc_lock);
 	list_del(&drv->entry);
 	list_for_each_entry(kcs_bmc, &kcs_bmc_devices, entry) {
-		rc = drv->ops->remove_device(kcs_bmc);
-		if (rc)
-			dev_err(kcs_bmc->dev, "Failed to remove driver for KCS channel %d: %d",
-				kcs_bmc->channel, rc);
+		drv->ops->remove_device(kcs_bmc);
 	}
 	mutex_unlock(&kcs_bmc_lock);
 }
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index cf670e891966..0552a07d6775 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -512,7 +512,7 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
 	return 0;
 }
 
-static int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
+static void kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_ipmi *priv = NULL, *pos;
 
@@ -527,7 +527,7 @@ static int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 	spin_unlock_irq(&kcs_bmc_ipmi_instances_lock);
 
 	if (!priv)
-		return -ENODEV;
+		return;
 
 	misc_deregister(&priv->miscdev);
 	kcs_bmc_disable_device(priv->client.dev, &priv->client);
@@ -535,8 +535,6 @@ static int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 	devm_kfree(kcs_bmc->dev, priv->data_out);
 	devm_kfree(kcs_bmc->dev, priv->data_in);
 	devm_kfree(kcs_bmc->dev, priv);
-
-	return 0;
 }
 
 static const struct kcs_bmc_driver_ops kcs_bmc_ipmi_driver_ops = {
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index 814ad8e052ef..1c0df184860d 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -10,7 +10,7 @@
 
 struct kcs_bmc_driver_ops {
 	int (*add_device)(struct kcs_bmc_device *kcs_bmc);
-	int (*remove_device)(struct kcs_bmc_device *kcs_bmc);
+	void (*remove_device)(struct kcs_bmc_device *kcs_bmc);
 };
 
 struct kcs_bmc_driver {
diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
index 1793358be782..0320ea974e03 100644
--- a/drivers/char/ipmi/kcs_bmc_serio.c
+++ b/drivers/char/ipmi/kcs_bmc_serio.c
@@ -103,7 +103,7 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
 	return 0;
 }
 
-static int kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
+static void kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_serio *priv = NULL, *pos;
 
@@ -118,7 +118,7 @@ static int kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
 	spin_unlock_irq(&kcs_bmc_serio_instances_lock);
 
 	if (!priv)
-		return -ENODEV;
+		return;
 
 	/* kfree()s priv->port via put_device() */
 	serio_unregister_port(priv->port);
@@ -127,8 +127,6 @@ static int kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
 	kcs_bmc_disable_device(kcs_bmc, &priv->client);
 
 	devm_kfree(priv->client.dev->dev, priv);
-
-	return 0;
 }
 
 static const struct kcs_bmc_driver_ops kcs_bmc_serio_driver_ops = {
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
