Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B13EB7E0393
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzp-0001hi-AO;
	Fri, 03 Nov 2023 13:13:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynla-00042V-29
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JPTRq9Jl+Y4VB3JZP1WhZQy1wlhfWVs9rePT+5FbziQ=; b=iJzAk3t4hUldHuCIhw4R9eNCuH
 MqbceWTHoZt0c9lalr49rYVVhH3YUzvTJwzMiASgEyjg63LnSqNYIxDWXUp4Je4WqbgWiBoWNT009
 rfe5Mla4vAIvyXrvQrAxnOikoS6Zi/3Wih3xo+KDYiTz4anGigrpX8HkHftDxcfaW6Ns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JPTRq9Jl+Y4VB3JZP1WhZQy1wlhfWVs9rePT+5FbziQ=; b=VFBfs8v59RMa0m+dKaraOnUWC1
 66qWS96b4y3YDaXckpC6HtH/DEHbZIf6bcM+PMRHx1iJFCm4Ql53lk6g0KdA+Amk2CUtHOSe1Ryv3
 jqymi3z7sKfC2EvTl1FdhrMDG/H0K9U7mkPM1fiNmN1nsFmzKK90eXqS33vV0cvdB60U=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlT-001qVN-Do for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:48 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 14DC820236;
 Fri,  3 Nov 2023 14:15:41 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992141;
 bh=JPTRq9Jl+Y4VB3JZP1WhZQy1wlhfWVs9rePT+5FbziQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Zlfwla4E/f4EJTDai63sNZ3bd0TkhzfAogO5+aU8p+6OajJE9sQ9osUOyfMWoTbc0
 Gh+aaXO3wXE3Vu/XmmuJMvn3FQWUcLTaRAXJEApVpH1s9A89ykWLCrHyranWCyzVw0
 BujQMQYrBL0qDH7u1B78w98UWXZa7VA31FsaACS5NIYpbxkWq/YR1hpXMf0PRaQR/k
 tU6J1PQwtVZ4i0R4Cq28f3UCvu8ZknVj5hrGY39jlcJYb9nPA/3fEZqgiJkiafLPyc
 9lCgr02Nnr6aNGjx85Lj1aqk/pzOhGxIKoYBfd6m+ewPEk3dsJahltezymIyQ61Soq
 pRVbrFh2cQqZw==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:17 +1030
Message-Id: <20231103061522.1268637-6-andrew@codeconstruct.com.au>
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
 Content preview: Operations such as reading and writing from hardware and
 updating
 the events of interest are operations in which the client is interested,
 but are applied to the device. Strengthen the concept of the [...] 
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
X-Headers-End: 1qynlT-001qVN-Do
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:54 +0000
Subject: [Openipmi-developer] [PATCH 05/10] ipmi: kcs_bmc: Define client
 actions in terms of kcs_bmc_client
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

Operations such as reading and writing from hardware and updating the
events of interest are operations in which the client is interested, but
are applied to the device. Strengthen the concept of the client in the
subsystem and clean up some call-sites by translating between the client
and device types in the core of the KCS subsystem.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc.c           | 67 ++++++++++++++++++---------
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 50 ++++++++++----------
 drivers/char/ipmi/kcs_bmc_client.h    | 15 +++---
 drivers/char/ipmi/kcs_bmc_serio.c     | 10 ++--
 4 files changed, 81 insertions(+), 61 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 5a3f199241d2..d70e503041bd 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -22,33 +22,53 @@ static LIST_HEAD(kcs_bmc_drivers);
 
 /* Consumer data access */
 
-u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc)
+static void kcs_bmc_client_validate(struct kcs_bmc_client *client)
 {
-	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
+	WARN_ONCE(client != READ_ONCE(client->dev->client), "KCS client confusion detected");
+}
+
+u8 kcs_bmc_read_data(struct kcs_bmc_client *client)
+{
+	struct kcs_bmc_device *dev = client->dev;
+
+	kcs_bmc_client_validate(client);
+	return dev->ops->io_inputb(dev, dev->ioreg.idr);
 }
 EXPORT_SYMBOL(kcs_bmc_read_data);
 
-void kcs_bmc_write_data(struct kcs_bmc_device *kcs_bmc, u8 data)
+void kcs_bmc_write_data(struct kcs_bmc_client *client, u8 data)
 {
-	kcs_bmc->ops->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
+	struct kcs_bmc_device *dev = client->dev;
+
+	kcs_bmc_client_validate(client);
+	dev->ops->io_outputb(dev, dev->ioreg.odr, data);
 }
 EXPORT_SYMBOL(kcs_bmc_write_data);
 
-u8 kcs_bmc_read_status(struct kcs_bmc_device *kcs_bmc)
+u8 kcs_bmc_read_status(struct kcs_bmc_client *client)
 {
-	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
+	struct kcs_bmc_device *dev = client->dev;
+
+	kcs_bmc_client_validate(client);
+	return dev->ops->io_inputb(dev, dev->ioreg.str);
 }
 EXPORT_SYMBOL(kcs_bmc_read_status);
 
-void kcs_bmc_write_status(struct kcs_bmc_device *kcs_bmc, u8 data)
+void kcs_bmc_write_status(struct kcs_bmc_client *client, u8 data)
 {
-	kcs_bmc->ops->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
+	struct kcs_bmc_device *dev = client->dev;
+
+	kcs_bmc_client_validate(client);
+	dev->ops->io_outputb(dev, dev->ioreg.str, data);
 }
 EXPORT_SYMBOL(kcs_bmc_write_status);
 
-void kcs_bmc_update_status(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 val)
+void kcs_bmc_update_status(struct kcs_bmc_client *client, u8 mask, u8 val)
 {
-	kcs_bmc->ops->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
+	struct kcs_bmc_device *dev = client->dev;
+
+	kcs_bmc_client_validate(client);
+	dev->ops->io_updateb(dev, dev->ioreg.str, mask, val);
 }
 EXPORT_SYMBOL(kcs_bmc_update_status);
 
@@ -73,36 +93,39 @@ static void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u
 	kcs_bmc->ops->irq_mask_update(kcs_bmc, mask, events);
 }
 
-int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
+int kcs_bmc_enable_device(struct kcs_bmc_client *client)
 {
+	struct kcs_bmc_device *dev = client->dev;
 	int rc;
 
-	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->client) {
+	spin_lock_irq(&dev->lock);
+	if (dev->client) {
 		rc = -EBUSY;
 	} else {
 		u8 mask = KCS_BMC_EVENT_TYPE_IBF;
 
-		kcs_bmc->client = client;
-		kcs_bmc_update_event_mask(kcs_bmc, mask, mask);
+		dev->client = client;
+		kcs_bmc_update_event_mask(dev, mask, mask);
 		rc = 0;
 	}
-	spin_unlock_irq(&kcs_bmc->lock);
+	spin_unlock_irq(&dev->lock);
 
 	return rc;
 }
 EXPORT_SYMBOL(kcs_bmc_enable_device);
 
-void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
+void kcs_bmc_disable_device(struct kcs_bmc_client *client)
 {
-	spin_lock_irq(&kcs_bmc->lock);
-	if (client == kcs_bmc->client) {
+	struct kcs_bmc_device *dev = client->dev;
+
+	spin_lock_irq(&dev->lock);
+	if (client == dev->client) {
 		u8 mask = KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE;
 
-		kcs_bmc_update_event_mask(kcs_bmc, mask, 0);
-		kcs_bmc->client = NULL;
+		kcs_bmc_update_event_mask(dev, mask, 0);
+		dev->client = NULL;
 	}
-	spin_unlock_irq(&kcs_bmc->lock);
+	spin_unlock_irq(&dev->lock);
 }
 EXPORT_SYMBOL(kcs_bmc_disable_device);
 
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 0552a07d6775..712a80c27060 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -121,14 +121,14 @@ enum kcs_states {
 
 static inline void set_state(struct kcs_bmc_ipmi *priv, u8 state)
 {
-	kcs_bmc_update_status(priv->client.dev, KCS_STATUS_STATE_MASK, KCS_STATUS_STATE(state));
+	kcs_bmc_update_status(&priv->client, KCS_STATUS_STATE_MASK, KCS_STATUS_STATE(state));
 }
 
 static void kcs_bmc_ipmi_force_abort(struct kcs_bmc_ipmi *priv)
 {
 	set_state(priv, ERROR_STATE);
-	kcs_bmc_read_data(priv->client.dev);
-	kcs_bmc_write_data(priv->client.dev, KCS_ZERO_DATA);
+	kcs_bmc_read_data(&priv->client);
+	kcs_bmc_write_data(&priv->client, KCS_ZERO_DATA);
 
 	priv->phase = KCS_PHASE_ERROR;
 	priv->data_in_avail = false;
@@ -137,11 +137,9 @@ static void kcs_bmc_ipmi_force_abort(struct kcs_bmc_ipmi *priv)
 
 static void kcs_bmc_ipmi_handle_data(struct kcs_bmc_ipmi *priv)
 {
-	struct kcs_bmc_device *dev;
+	struct kcs_bmc_client *client = &priv->client;
 	u8 data;
 
-	dev = priv->client.dev;
-
 	switch (priv->phase) {
 	case KCS_PHASE_WRITE_START:
 		priv->phase = KCS_PHASE_WRITE_DATA;
@@ -150,8 +148,8 @@ static void kcs_bmc_ipmi_handle_data(struct kcs_bmc_ipmi *priv)
 	case KCS_PHASE_WRITE_DATA:
 		if (priv->data_in_idx < KCS_MSG_BUFSIZ) {
 			set_state(priv, WRITE_STATE);
-			kcs_bmc_write_data(dev, KCS_ZERO_DATA);
-			priv->data_in[priv->data_in_idx++] = kcs_bmc_read_data(dev);
+			kcs_bmc_write_data(client, KCS_ZERO_DATA);
+			priv->data_in[priv->data_in_idx++] = kcs_bmc_read_data(client);
 		} else {
 			kcs_bmc_ipmi_force_abort(priv);
 			priv->error = KCS_LENGTH_ERROR;
@@ -161,7 +159,7 @@ static void kcs_bmc_ipmi_handle_data(struct kcs_bmc_ipmi *priv)
 	case KCS_PHASE_WRITE_END_CMD:
 		if (priv->data_in_idx < KCS_MSG_BUFSIZ) {
 			set_state(priv, READ_STATE);
-			priv->data_in[priv->data_in_idx++] = kcs_bmc_read_data(dev);
+			priv->data_in[priv->data_in_idx++] = kcs_bmc_read_data(client);
 			priv->phase = KCS_PHASE_WRITE_DONE;
 			priv->data_in_avail = true;
 			wake_up_interruptible(&priv->queue);
@@ -175,33 +173,33 @@ static void kcs_bmc_ipmi_handle_data(struct kcs_bmc_ipmi *priv)
 		if (priv->data_out_idx == priv->data_out_len)
 			set_state(priv, IDLE_STATE);
 
-		data = kcs_bmc_read_data(dev);
+		data = kcs_bmc_read_data(client);
 		if (data != KCS_CMD_READ_BYTE) {
 			set_state(priv, ERROR_STATE);
-			kcs_bmc_write_data(dev, KCS_ZERO_DATA);
+			kcs_bmc_write_data(client, KCS_ZERO_DATA);
 			break;
 		}
 
 		if (priv->data_out_idx == priv->data_out_len) {
-			kcs_bmc_write_data(dev, KCS_ZERO_DATA);
+			kcs_bmc_write_data(client, KCS_ZERO_DATA);
 			priv->phase = KCS_PHASE_IDLE;
 			break;
 		}
 
-		kcs_bmc_write_data(dev, priv->data_out[priv->data_out_idx++]);
+		kcs_bmc_write_data(client, priv->data_out[priv->data_out_idx++]);
 		break;
 
 	case KCS_PHASE_ABORT_ERROR1:
 		set_state(priv, READ_STATE);
-		kcs_bmc_read_data(dev);
-		kcs_bmc_write_data(dev, priv->error);
+		kcs_bmc_read_data(client);
+		kcs_bmc_write_data(client, priv->error);
 		priv->phase = KCS_PHASE_ABORT_ERROR2;
 		break;
 
 	case KCS_PHASE_ABORT_ERROR2:
 		set_state(priv, IDLE_STATE);
-		kcs_bmc_read_data(dev);
-		kcs_bmc_write_data(dev, KCS_ZERO_DATA);
+		kcs_bmc_read_data(client);
+		kcs_bmc_write_data(client, KCS_ZERO_DATA);
 		priv->phase = KCS_PHASE_IDLE;
 		break;
 
@@ -216,9 +214,9 @@ static void kcs_bmc_ipmi_handle_cmd(struct kcs_bmc_ipmi *priv)
 	u8 cmd;
 
 	set_state(priv, WRITE_STATE);
-	kcs_bmc_write_data(priv->client.dev, KCS_ZERO_DATA);
+	kcs_bmc_write_data(&priv->client, KCS_ZERO_DATA);
 
-	cmd = kcs_bmc_read_data(priv->client.dev);
+	cmd = kcs_bmc_read_data(&priv->client);
 	switch (cmd) {
 	case KCS_CMD_WRITE_START:
 		priv->phase = KCS_PHASE_WRITE_START;
@@ -269,7 +267,7 @@ static irqreturn_t kcs_bmc_ipmi_event(struct kcs_bmc_client *client)
 
 	spin_lock(&priv->lock);
 
-	status = kcs_bmc_read_status(client->dev);
+	status = kcs_bmc_read_status(client);
 	if (status & KCS_STATUS_IBF) {
 		if (status & KCS_STATUS_CMD_DAT)
 			kcs_bmc_ipmi_handle_cmd(priv);
@@ -299,7 +297,7 @@ static int kcs_bmc_ipmi_open(struct inode *inode, struct file *filp)
 {
 	struct kcs_bmc_ipmi *priv = to_kcs_bmc(filp);
 
-	return kcs_bmc_enable_device(priv->client.dev, &priv->client);
+	return kcs_bmc_enable_device(&priv->client);
 }
 
 static __poll_t kcs_bmc_ipmi_poll(struct file *filp, poll_table *wait)
@@ -402,7 +400,7 @@ static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
 		priv->data_out_idx = 1;
 		priv->data_out_len = count;
 		memcpy(priv->data_out, priv->kbuffer, count);
-		kcs_bmc_write_data(priv->client.dev, priv->data_out[0]);
+		kcs_bmc_write_data(&priv->client, priv->data_out[0]);
 		ret = count;
 	} else {
 		ret = -EINVAL;
@@ -425,11 +423,11 @@ static long kcs_bmc_ipmi_ioctl(struct file *filp, unsigned int cmd,
 
 	switch (cmd) {
 	case IPMI_BMC_IOCTL_SET_SMS_ATN:
-		kcs_bmc_update_status(priv->client.dev, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
+		kcs_bmc_update_status(&priv->client, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
 		break;
 
 	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
-		kcs_bmc_update_status(priv->client.dev, KCS_STATUS_SMS_ATN, 0);
+		kcs_bmc_update_status(&priv->client, KCS_STATUS_SMS_ATN, 0);
 		break;
 
 	case IPMI_BMC_IOCTL_FORCE_ABORT:
@@ -451,7 +449,7 @@ static int kcs_bmc_ipmi_release(struct inode *inode, struct file *filp)
 	struct kcs_bmc_ipmi *priv = to_kcs_bmc(filp);
 
 	kcs_bmc_ipmi_force_abort(priv);
-	kcs_bmc_disable_device(priv->client.dev, &priv->client);
+	kcs_bmc_disable_device(&priv->client);
 
 	return 0;
 }
@@ -530,7 +528,7 @@ static void kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 		return;
 
 	misc_deregister(&priv->miscdev);
-	kcs_bmc_disable_device(priv->client.dev, &priv->client);
+	kcs_bmc_disable_device(&priv->client);
 	devm_kfree(kcs_bmc->dev, priv->kbuffer);
 	devm_kfree(kcs_bmc->dev, priv->data_out);
 	devm_kfree(kcs_bmc->dev, priv->data_in);
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index 1c0df184860d..1251e9669bcd 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -32,12 +32,11 @@ struct kcs_bmc_client {
 void kcs_bmc_register_driver(struct kcs_bmc_driver *drv);
 void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv);
 
-int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
-void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
-
-u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc);
-void kcs_bmc_write_data(struct kcs_bmc_device *kcs_bmc, u8 data);
-u8 kcs_bmc_read_status(struct kcs_bmc_device *kcs_bmc);
-void kcs_bmc_write_status(struct kcs_bmc_device *kcs_bmc, u8 data);
-void kcs_bmc_update_status(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 val);
+int kcs_bmc_enable_device(struct kcs_bmc_client *client);
+void kcs_bmc_disable_device(struct kcs_bmc_client *client);
+u8 kcs_bmc_read_data(struct kcs_bmc_client *client);
+void kcs_bmc_write_data(struct kcs_bmc_client *client, u8 data);
+u8 kcs_bmc_read_status(struct kcs_bmc_client *client);
+void kcs_bmc_write_status(struct kcs_bmc_client *client, u8 data);
+void kcs_bmc_update_status(struct kcs_bmc_client *client, u8 mask, u8 val);
 #endif
diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
index 0320ea974e03..713e847bbc4e 100644
--- a/drivers/char/ipmi/kcs_bmc_serio.c
+++ b/drivers/char/ipmi/kcs_bmc_serio.c
@@ -36,10 +36,10 @@ static irqreturn_t kcs_bmc_serio_event(struct kcs_bmc_client *client)
 
 	spin_lock(&priv->lock);
 
-	status = kcs_bmc_read_status(client->dev);
+	status = kcs_bmc_read_status(client);
 
 	if (status & KCS_BMC_STR_IBF)
-		handled = serio_interrupt(priv->port, kcs_bmc_read_data(client->dev), 0);
+		handled = serio_interrupt(priv->port, kcs_bmc_read_data(client), 0);
 
 	spin_unlock(&priv->lock);
 
@@ -54,14 +54,14 @@ static int kcs_bmc_serio_open(struct serio *port)
 {
 	struct kcs_bmc_serio *priv = port->port_data;
 
-	return kcs_bmc_enable_device(priv->client.dev, &priv->client);
+	return kcs_bmc_enable_device(&priv->client);
 }
 
 static void kcs_bmc_serio_close(struct serio *port)
 {
 	struct kcs_bmc_serio *priv = port->port_data;
 
-	kcs_bmc_disable_device(priv->client.dev, &priv->client);
+	kcs_bmc_disable_device(&priv->client);
 }
 
 static DEFINE_SPINLOCK(kcs_bmc_serio_instances_lock);
@@ -124,7 +124,7 @@ static void kcs_bmc_serio_remove_device(struct kcs_bmc_device *kcs_bmc)
 	serio_unregister_port(priv->port);
 
 	/* Ensure the IBF IRQ is disabled if we were the active client */
-	kcs_bmc_disable_device(kcs_bmc, &priv->client);
+	kcs_bmc_disable_device(&priv->client);
 
 	devm_kfree(priv->client.dev->dev, priv);
 }
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
