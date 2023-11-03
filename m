Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8607E0392
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzq-0001iE-0z;
	Fri, 03 Nov 2023 13:13:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynlZ-0005lu-4L
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PBzGQ9XdHybgB4MnC4pIf/AcZ42td+dcXGF6qrKn84c=; b=Gq+R9mtnhd2LUlLmckNgTkYXU9
 Ofw3jMqIplrVjLU2Es9NsUUd72ngzyOc1mDSGwSRaEr2c3DMFKGBGvydga/8rdKb3ES+LTDATUPX2
 xbrK2781FS8Qe2VsjH3LJeunKHlnO9KaGZ+3Z2fq5MJsG3KFll1LnBljhm5Yoyf0kMac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PBzGQ9XdHybgB4MnC4pIf/AcZ42td+dcXGF6qrKn84c=; b=K2sMqC5nzFw1DK6XZIPUmBO43J
 NAhFeei5pA0RuUCut3jkJbECH99hrflbio4t8v9fWHEYqazF/dja6mL0sYLdSQpOomy6v9KKs/9/n
 wemLF2TddqtN5ktevr/VwZPuEASEZ+G56kJycqSikMWn/mt9dTKteQRCozapjGD2trpo=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlT-0005J2-EZ for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:49 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E6FFC2023B;
 Fri,  3 Nov 2023 14:15:43 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992144;
 bh=PBzGQ9XdHybgB4MnC4pIf/AcZ42td+dcXGF6qrKn84c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=kVCSm2a6myZWDlqnkDlsyfh8Xpz8H2fzFwLKoagVmpeuvsRxVrhOVOpR2GUYpYyqq
 6X25J916IpFiZ0Dy5MH4yhfTuPbt2/RawMfC5tuFyIpTloFKvcipogKzalPvPP98N1
 gF9l07S4s4FGiLdiOEowTxFovr+r8XV7YR9hekifuuDmCTiCpEoewbSaffY9DC0OCB
 voqmRIPcs72ro0wCKnjZnBpvriCInCZJ9Oy9jXLP6Q6QcA1tHqprioPOVCQFDelsZA
 KUQhmKGwn4cM5yGTNrtGjw6UEvY9S+X6Cd4xWcetNnoyjqJNDrbT+EayEIgEvT4s6B
 0wiMCdEGOMkgQ==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:21 +1030
Message-Id: <20231103061522.1268637-10-andrew@codeconstruct.com.au>
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
 Content preview: Remove some cruft in the client modules by adding the usual
 module macro for the KCS subsystem. Signed-off-by: Andrew Jeffery
 <andrew@codeconstruct.com.au>
 --- drivers/char/ipmi/kcs_bmc.c | 4 +++- drivers/char/ipmi/kcs_bmc.h | 1
 + drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 15 + driver [...] 
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
X-Headers-End: 1qynlT-0005J2-EZ
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:55 +0000
Subject: [Openipmi-developer] [PATCH 09/10] ipmi: kcs_bmc: Add
 module_kcs_bmc_driver()
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

Remove some cruft in the client modules by adding the usual module macro
for the KCS subsystem.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc.c           |  4 +++-
 drivers/char/ipmi/kcs_bmc.h           |  1 +
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 15 +--------------
 drivers/char/ipmi/kcs_bmc_client.h    |  7 ++++++-
 drivers/char/ipmi/kcs_bmc_serio.c     | 15 +--------------
 5 files changed, 12 insertions(+), 30 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 203cb73faa91..c69eb671d9d0 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -174,7 +174,7 @@ void kcs_bmc_remove_device(struct kcs_bmc_device *dev)
 }
 EXPORT_SYMBOL(kcs_bmc_remove_device);
 
-void kcs_bmc_register_driver(struct kcs_bmc_driver *drv)
+int kcs_bmc_register_driver(struct kcs_bmc_driver *drv)
 {
 	struct kcs_bmc_client *client;
 	struct kcs_bmc_device *dev;
@@ -191,6 +191,8 @@ void kcs_bmc_register_driver(struct kcs_bmc_driver *drv)
 		list_add(&client->entry, &kcs_bmc_clients);
 	}
 	mutex_unlock(&kcs_bmc_lock);
+
+	return 0;
 }
 EXPORT_SYMBOL(kcs_bmc_register_driver);
 
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index 880d835fb90c..979d673f8f56 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -7,6 +7,7 @@
 #define __KCS_BMC_H__
 
 #include <linux/list.h>
+#include <linux/module.h>
 #include <linux/spinlock.h>
 
 #define KCS_BMC_EVENT_TYPE_OBE	BIT(0)
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 9fca31f8c7c2..21d4c4c11e07 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -523,20 +523,7 @@ static struct kcs_bmc_driver kcs_bmc_ipmi_driver = {
 	.ops = &kcs_bmc_ipmi_driver_ops,
 };
 
-static int __init kcs_bmc_ipmi_init(void)
-{
-	kcs_bmc_register_driver(&kcs_bmc_ipmi_driver);
-
-	return 0;
-}
-module_init(kcs_bmc_ipmi_init);
-
-static void __exit kcs_bmc_ipmi_exit(void)
-{
-	kcs_bmc_unregister_driver(&kcs_bmc_ipmi_driver);
-}
-module_exit(kcs_bmc_ipmi_exit);
-
+module_kcs_bmc_driver(kcs_bmc_ipmi_driver);
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
 MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index 1c6c812d6edc..afc9e71c9fc0 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -5,6 +5,7 @@
 #define __KCS_BMC_CONSUMER_H__
 
 #include <linux/irqreturn.h>
+#include <linux/module.h>
 
 #include "kcs_bmc.h"
 
@@ -44,9 +45,13 @@ struct kcs_bmc_driver {
 	const struct kcs_bmc_driver_ops *ops;
 };
 
-void kcs_bmc_register_driver(struct kcs_bmc_driver *drv);
+int kcs_bmc_register_driver(struct kcs_bmc_driver *drv);
 void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv);
 
+#define module_kcs_bmc_driver(__kcs_bmc_driver) \
+	module_driver(__kcs_bmc_driver, kcs_bmc_register_driver, \
+		kcs_bmc_unregister_driver)
+
 int kcs_bmc_enable_device(struct kcs_bmc_client *client);
 void kcs_bmc_disable_device(struct kcs_bmc_client *client);
 u8 kcs_bmc_read_data(struct kcs_bmc_client *client);
diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
index 3cfda39506f6..8bb598c2aa38 100644
--- a/drivers/char/ipmi/kcs_bmc_serio.c
+++ b/drivers/char/ipmi/kcs_bmc_serio.c
@@ -123,20 +123,7 @@ static struct kcs_bmc_driver kcs_bmc_serio_driver = {
 	.ops = &kcs_bmc_serio_driver_ops,
 };
 
-static int __init kcs_bmc_serio_init(void)
-{
-	kcs_bmc_register_driver(&kcs_bmc_serio_driver);
-
-	return 0;
-}
-module_init(kcs_bmc_serio_init);
-
-static void __exit kcs_bmc_serio_exit(void)
-{
-	kcs_bmc_unregister_driver(&kcs_bmc_serio_driver);
-}
-module_exit(kcs_bmc_serio_exit);
-
+module_kcs_bmc_driver(kcs_bmc_serio_driver);
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
 MODULE_DESCRIPTION("Adapter driver for serio access to BMC KCS devices");
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
