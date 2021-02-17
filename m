Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6950E31DB67
	for <lists+openipmi-developer@lfdr.de>; Wed, 17 Feb 2021 15:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:References:Mime-Version:Message-Id:
	In-Reply-To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pVHW08SJR3TxaGb3XLcEBVd6V+afKH8jdUNLH5Pu9eM=; b=CYtp24HHjvq407hgjh/4psuN6
	+rY0yVALB2FPDvz+N7DrgT3N0VylXV/OcS/vfXW3wTTqmrhBA5ubgQ761uolYa9JCrG/l65R/h+zX
	q3tmxcz6SNXAwl7HzjmGFYWfO90cHD4p4Qs+CbKk8fdn4D9zOQfC9cstKI9lI5Bk2ex9s=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lCNlU-0005GZ-CR; Wed, 17 Feb 2021 14:25:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <32sYsYAMKACMV9JFNNFKD.BNL@flex--wak.bounces.google.com>)
 id 1lCIEK-0005Pd-5S
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Feb 2021 08:30:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:References:
 Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ThH9iVP9QdHLrLEcluQEGDH9qW5NfRpLNK2v5o+PxGg=; b=b25XLA9ZtRCGo50n1uv8dBUgv
 FL+dHyv75yhALmMuM+3CJjs/1io3XSK6ITxMo1cpsTsM0ECzkw/0CNPkAyt/6BC5pKit0ZCw2pj0S
 oSvvvubRfV/YQU0gqd9jOXh8ry1nkmOEuxsqtP9MuFlwuIwPJTQX7hDVlF8WqLCiLCTxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:References:Mime-Version:Message-Id:
 In-Reply-To:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ThH9iVP9QdHLrLEcluQEGDH9qW5NfRpLNK2v5o+PxGg=; b=KaODgkuiuRdJ8yNOFbj83iFJKh
 l+gcLmlNHNgaBChjUQcis2nsHBLVS9RLW8gyuxK4KOHrLj1R9om2Zo4TvfU7SiV26Fj/EqOvkWyHI
 VgUkbf86TEVpYSLR5szSrNXz1UZ3H2ZUK+YMJ2A1PrwJMOrYmr/YebIyzXS8XXOUDxoQ=;
Received: from mail-oo1-f74.google.com ([209.85.161.74])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lCIEA-00Btrp-Gq
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Feb 2021 08:30:40 +0000
Received: by mail-oo1-f74.google.com with SMTP id h10so5517127ooj.11
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 17 Feb 2021 00:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=sender:date:in-reply-to:message-id:mime-version:references:subject
 :from:to:cc; bh=ThH9iVP9QdHLrLEcluQEGDH9qW5NfRpLNK2v5o+PxGg=;
 b=b2igWe9XdEIaW4pxLIl/xX06ld2NsrEM+ApAoXqSrJoWs0ncizd9MbjQMLNmBSq/1J
 vnbrsNoRGSjLF0ysn9q/0hEIwimByU97K7/DKZYDPWHrkN9oHgUiW1vwcwxfbfXVFtrW
 CRDeu+SejB6njxGYIFfZF4LSVtvTZki22wYV/Tk6zMwSSDdRV+XllNr16vD4UhUXBcOL
 npKXlP2Uk1RT/23Z0lnwDkm/B4qf/4wQ6QsbpgF69W4UdZSpIIoJMY64rVMfozBmbukv
 TGRPpXOzZWntQAKeX6DxxWmTcFN2kYtOYwK7tlFkWriMqqFt2bi6tLZppTSK17p5rP/d
 ZPjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ThH9iVP9QdHLrLEcluQEGDH9qW5NfRpLNK2v5o+PxGg=;
 b=XMVTN/IlZzCwxJJ7bI3gtSdtLxqMZW3QGkekcVEP4BXQFXGgqc3E54V/+UYCPdv9l9
 RTtLNFJ6Xb7esJn6EWNPLlXMAe23YxnQkNss8UzNkW+KyF+dhY/KwwrVzWX/MeOc0Frr
 wYRl5TOBl6pPRQ9Hj2+Vf0wR5Wqu+QPH7d5gU5jZQzYnUXHJ3lW7KoKkn6zkDcGQRW7D
 eb6pVhQma+jmyon9H39UXNSrBID4GQtSOtAYA4p6rTpSE1f8YX61kgXUF86CxlP1qpR6
 E1W+yDTiSs30zwHgWTldhcD2TJaIFXN9i5ln3KdxImHxRy7Fas88lH+QlDr9U2MN8gWL
 TOYw==
X-Gm-Message-State: AOAM533O8H6O4WT9eA4CW9Gt2tYVnrEWAJh/Du6IqqOIEFfBZePfDcjE
 k0BAT4oNFoi3hJYp1FgHgyYlamA=
X-Google-Smtp-Source: ABdhPJy/kxrSjIK+iknn1KcMXRYxX4ywp0jUWV3GdSTX0/XUdl4mjNsdLDE5Srm48uH9LeG0rTNmr0M=
X-Received: from wak-linux.svl.corp.google.com
 ([2620:15c:2c5:3:e984:b7fc:110a:274a])
 (user=wak job=sendgmr) by 2002:a25:7613:: with SMTP id
 r19mr27769351ybc.212.1613547226987; 
 Tue, 16 Feb 2021 23:33:46 -0800 (PST)
Date: Tue, 16 Feb 2021 23:33:17 -0800
In-Reply-To: <20210217073318.540369-1-wak@google.com>
Message-Id: <20210217073318.540369-4-wak@google.com>
Mime-Version: 1.0
References: <20210217073318.540369-1-wak@google.com>
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -7.0 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.74 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lCIEA-00Btrp-Gq
X-Mailman-Approved-At: Wed, 17 Feb 2021 14:25:09 +0000
Subject: [Openipmi-developer] [PATCH 3/4] ipmi: kcs_bmc: Invert allocation
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
From: "William A. Kennington III via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "William A. Kennington III" <wak@google.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "William A. Kennington III" <wak@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This is a more typical pattern for having the platform specific drivers
store their own data around the generic driver data.

Signed-off-by: William A. Kennington III <wak@google.com>
---
 drivers/char/ipmi/kcs_bmc.c         |  40 +++---
 drivers/char/ipmi/kcs_bmc.h         |  13 +-
 drivers/char/ipmi/kcs_bmc_aspeed.c  | 216 ++++++++++++++--------------
 drivers/char/ipmi/kcs_bmc_npcm7xx.c |  61 ++++----
 4 files changed, 163 insertions(+), 167 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 4c504588e714..f182c4f6f982 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -277,9 +277,6 @@ static ssize_t kcs_bmc_read(struct file *filp, char __user *buf,
 	}
 
 	if (count < data_len) {
-		pr_err("channel=%u with too large data : %zu\n",
-			kcs_bmc->channel, data_len);
-
 		spin_lock_irq(&kcs_bmc->lock);
 		kcs_force_abort(kcs_bmc);
 		spin_unlock_irq(&kcs_bmc->lock);
@@ -402,17 +399,11 @@ static const struct file_operations kcs_bmc_fops = {
 	.unlocked_ioctl = kcs_bmc_ioctl,
 };
 
-struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel)
+int kcs_bmc_init(struct kcs_bmc *kcs_bmc, struct device *dev, u32 channel)
 {
-	struct kcs_bmc *kcs_bmc;
-
-	kcs_bmc = devm_kzalloc(dev, sizeof(*kcs_bmc) + sizeof_priv, GFP_KERNEL);
-	if (!kcs_bmc)
-		return NULL;
+	int rc;
 
 	spin_lock_init(&kcs_bmc->lock);
-	kcs_bmc->channel = channel;
-
 	mutex_init(&kcs_bmc->mutex);
 	init_waitqueue_head(&kcs_bmc->queue);
 
@@ -420,17 +411,28 @@ struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel)
 	kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 	kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 
-	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
-	kcs_bmc->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "%s%u",
-					       DEVICE_NAME, channel);
-	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
-	    !kcs_bmc->miscdev.name)
-		return NULL;
 	kcs_bmc->miscdev.fops = &kcs_bmc_fops;
+	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
+	kcs_bmc->miscdev.name =
+		devm_kasprintf(dev, GFP_KERNEL, "%s%u", DEVICE_NAME, channel);
+	if (!kcs_bmc->miscdev.name)
+		return -ENOMEM;
+
+	rc = misc_register(&kcs_bmc->miscdev);
+	if (rc) {
+		dev_err(dev, "Registering kcs_bmc: %d\n", rc);
+		return rc;
+	}
 
-	return kcs_bmc;
+	return 0;
+}
+EXPORT_SYMBOL(kcs_bmc_init);
+
+void kcs_bmc_stop(struct kcs_bmc *kcs_bmc)
+{
+	misc_deregister(&kcs_bmc->miscdev);
 }
-EXPORT_SYMBOL(kcs_bmc_alloc);
+EXPORT_SYMBOL(kcs_bmc_stop);
 
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index 8c541251fe97..d65ffd479e9b 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -64,7 +64,6 @@ enum kcs_errors {
 struct kcs_bmc {
 	spinlock_t lock;
 
-	u32 channel;
 	int running;
 
 	/* Setup by BMC KCS controller driver */
@@ -89,16 +88,10 @@ struct kcs_bmc {
 	u8 *kbuffer;
 
 	struct miscdevice miscdev;
-
-	unsigned long priv[];
 };
 
-static inline void *kcs_bmc_priv(struct kcs_bmc *kcs_bmc)
-{
-	return kcs_bmc->priv;
-}
-
 irqreturn_t kcs_bmc_irq(int irq, void *arg);
-struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv,
-					u32 channel);
+int kcs_bmc_init(struct kcs_bmc *kcs_bmc, struct device *dev, u32 channel);
+void kcs_bmc_stop(struct kcs_bmc *kcs_bmc);
+
 #endif /* __KCS_BMC_H__ */
diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index d3b771e4d039..b466569d049d 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -69,11 +69,29 @@ struct aspeed_kcs_reg {
 };
 
 struct aspeed_kcs {
+	struct kcs_bmc kcs_bmc;
+
+	u32 channel;
 	struct regmap *map;
+};
 
-	const struct aspeed_kcs_reg *reg;
+static const struct aspeed_kcs_reg aspeed_kcs_regs[KCS_CHANNEL_MAX] = {
+	{ .idr = LPC_IDR1, .odr = LPC_ODR1, .str = LPC_STR1 },
+	{ .idr = LPC_IDR2, .odr = LPC_ODR2, .str = LPC_STR2 },
+	{ .idr = LPC_IDR3, .odr = LPC_ODR3, .str = LPC_STR3 },
+	{ .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
 };
 
+static struct aspeed_kcs *to_aspeed_kcs(struct kcs_bmc *kcs_bmc)
+{
+	return container_of(kcs_bmc, struct aspeed_kcs, kcs_bmc);
+}
+
+static const struct aspeed_kcs_reg *to_aspeed_kcs_reg(
+		const struct aspeed_kcs *aspeed_kcs)
+{
+	return &aspeed_kcs_regs[aspeed_kcs->channel-1];
+}
 
 static u8 aspeed_kcs_inb(struct aspeed_kcs *aspeed_kcs, u32 reg)
 {
@@ -91,26 +109,26 @@ static void aspeed_kcs_outb(struct aspeed_kcs *aspeed_kcs, u32 reg, u8 data)
 
 static u8 aspeed_kcs_read_status(struct kcs_bmc *kcs_bmc)
 {
-	struct aspeed_kcs *aspeed_kcs = kcs_bmc_priv(kcs_bmc);
-	return aspeed_kcs_inb(aspeed_kcs, aspeed_kcs->reg->str);
+	struct aspeed_kcs *aspeed_kcs = to_aspeed_kcs(kcs_bmc);
+	return aspeed_kcs_inb(aspeed_kcs, to_aspeed_kcs_reg(aspeed_kcs)->str);
 }
 
 static void aspeed_kcs_write_status(struct kcs_bmc *kcs_bmc, u8 data)
 {
-	struct aspeed_kcs *aspeed_kcs = kcs_bmc_priv(kcs_bmc);
-	aspeed_kcs_outb(aspeed_kcs, aspeed_kcs->reg->str, data);
+	struct aspeed_kcs *aspeed_kcs = to_aspeed_kcs(kcs_bmc);
+	aspeed_kcs_outb(aspeed_kcs, to_aspeed_kcs_reg(aspeed_kcs)->str, data);
 }
 
 static u8 aspeed_kcs_read_data_in(struct kcs_bmc *kcs_bmc)
 {
-	struct aspeed_kcs *aspeed_kcs = kcs_bmc_priv(kcs_bmc);
-	return aspeed_kcs_inb(aspeed_kcs, aspeed_kcs->reg->idr);
+	struct aspeed_kcs *aspeed_kcs = to_aspeed_kcs(kcs_bmc);
+	return aspeed_kcs_inb(aspeed_kcs, to_aspeed_kcs_reg(aspeed_kcs)->idr);
 }
 
 static void aspeed_kcs_write_data_out(struct kcs_bmc *kcs_bmc, u8 data)
 {
-	struct aspeed_kcs *aspeed_kcs = kcs_bmc_priv(kcs_bmc);
-	aspeed_kcs_outb(aspeed_kcs, aspeed_kcs->reg->odr, data);
+	struct aspeed_kcs *aspeed_kcs = to_aspeed_kcs(kcs_bmc);
+	aspeed_kcs_outb(aspeed_kcs, to_aspeed_kcs_reg(aspeed_kcs)->odr, data);
 }
 
 
@@ -127,32 +145,31 @@ static void aspeed_kcs_write_data_out(struct kcs_bmc *kcs_bmc, u8 data)
  *     C. KCS4
  *        D / C : CA4h / CA5h
  */
-static void aspeed_kcs_set_address(struct kcs_bmc *kcs_bmc, u16 addr)
+static void aspeed_kcs_set_address(
+		struct aspeed_kcs *aspeed_kcs, u16 addr)
 {
-	struct aspeed_kcs *priv = kcs_bmc_priv(kcs_bmc);
-
-	switch (kcs_bmc->channel) {
+	switch (aspeed_kcs->channel) {
 	case 1:
-		regmap_update_bits(priv->map, LPC_HICR4,
+		regmap_update_bits(aspeed_kcs->map, LPC_HICR4,
 				LPC_HICR4_LADR12AS, 0);
-		regmap_write(priv->map, LPC_LADR12H, addr >> 8);
-		regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
+		regmap_write(aspeed_kcs->map, LPC_LADR12H, addr >> 8);
+		regmap_write(aspeed_kcs->map, LPC_LADR12L, addr & 0xFF);
 		break;
 
 	case 2:
-		regmap_update_bits(priv->map, LPC_HICR4,
+		regmap_update_bits(aspeed_kcs->map, LPC_HICR4,
 				LPC_HICR4_LADR12AS, LPC_HICR4_LADR12AS);
-		regmap_write(priv->map, LPC_LADR12H, addr >> 8);
-		regmap_write(priv->map, LPC_LADR12L, addr & 0xFF);
+		regmap_write(aspeed_kcs->map, LPC_LADR12H, addr >> 8);
+		regmap_write(aspeed_kcs->map, LPC_LADR12L, addr & 0xFF);
 		break;
 
 	case 3:
-		regmap_write(priv->map, LPC_LADR3H, addr >> 8);
-		regmap_write(priv->map, LPC_LADR3L, addr & 0xFF);
+		regmap_write(aspeed_kcs->map, LPC_LADR3H, addr >> 8);
+		regmap_write(aspeed_kcs->map, LPC_LADR3L, addr & 0xFF);
 		break;
 
 	case 4:
-		regmap_write(priv->map, LPC_LADR4, ((addr + 1) << 16) |
+		regmap_write(aspeed_kcs->map, LPC_LADR4, ((addr + 1) << 16) |
 			addr);
 		break;
 
@@ -161,64 +178,63 @@ static void aspeed_kcs_set_address(struct kcs_bmc *kcs_bmc, u16 addr)
 	}
 }
 
-static void aspeed_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
+static void aspeed_kcs_enable_channel(
+		struct aspeed_kcs *aspeed_kcs, bool enable)
 {
-	struct aspeed_kcs *priv = kcs_bmc_priv(kcs_bmc);
-
-	switch (kcs_bmc->channel) {
+	switch (aspeed_kcs->channel) {
 	case 1:
 		if (enable) {
-			regmap_update_bits(priv->map, LPC_HICR2,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
 					LPC_HICR2_IBFIF1, LPC_HICR2_IBFIF1);
-			regmap_update_bits(priv->map, LPC_HICR0,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
 					LPC_HICR0_LPC1E, LPC_HICR0_LPC1E);
 		} else {
-			regmap_update_bits(priv->map, LPC_HICR0,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
 					LPC_HICR0_LPC1E, 0);
-			regmap_update_bits(priv->map, LPC_HICR2,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
 					LPC_HICR2_IBFIF1, 0);
 		}
 		break;
 
 	case 2:
 		if (enable) {
-			regmap_update_bits(priv->map, LPC_HICR2,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
 					LPC_HICR2_IBFIF2, LPC_HICR2_IBFIF2);
-			regmap_update_bits(priv->map, LPC_HICR0,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
 					LPC_HICR0_LPC2E, LPC_HICR0_LPC2E);
 		} else {
-			regmap_update_bits(priv->map, LPC_HICR0,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
 					LPC_HICR0_LPC2E, 0);
-			regmap_update_bits(priv->map, LPC_HICR2,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
 					LPC_HICR2_IBFIF2, 0);
 		}
 		break;
 
 	case 3:
 		if (enable) {
-			regmap_update_bits(priv->map, LPC_HICR2,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
 					LPC_HICR2_IBFIF3, LPC_HICR2_IBFIF3);
-			regmap_update_bits(priv->map, LPC_HICR0,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
 					LPC_HICR0_LPC3E, LPC_HICR0_LPC3E);
-			regmap_update_bits(priv->map, LPC_HICR4,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR4,
 					LPC_HICR4_KCSENBL, LPC_HICR4_KCSENBL);
 		} else {
-			regmap_update_bits(priv->map, LPC_HICR0,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR0,
 					LPC_HICR0_LPC3E, 0);
-			regmap_update_bits(priv->map, LPC_HICR4,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR4,
 					LPC_HICR4_KCSENBL, 0);
-			regmap_update_bits(priv->map, LPC_HICR2,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICR2,
 					LPC_HICR2_IBFIF3, 0);
 		}
 		break;
 
 	case 4:
 		if (enable)
-			regmap_update_bits(priv->map, LPC_HICRB,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICRB,
 					LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E,
 					LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E);
 		else
-			regmap_update_bits(priv->map, LPC_HICRB,
+			regmap_update_bits(aspeed_kcs->map, LPC_HICRB,
 					LPC_HICRB_IBFIF4 | LPC_HICRB_LPC4E,
 					0);
 		break;
@@ -242,18 +258,10 @@ static int aspeed_kcs_config_irq(struct kcs_bmc *kcs_bmc,
 				dev_name(dev), kcs_bmc);
 }
 
-static const struct aspeed_kcs_reg aspeed_kcs_regs[KCS_CHANNEL_MAX] = {
-	{ .idr = LPC_IDR1, .odr = LPC_ODR1, .str = LPC_STR1 },
-	{ .idr = LPC_IDR2, .odr = LPC_ODR2, .str = LPC_STR2 },
-	{ .idr = LPC_IDR3, .odr = LPC_ODR3, .str = LPC_STR3 },
-	{ .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
-};
-
-static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
+static int aspeed_kcs_probe_of_v1(
+		struct aspeed_kcs *aspeed_kcs, struct platform_device *pdev)
 {
-	struct aspeed_kcs *priv;
 	struct device_node *np;
-	struct kcs_bmc *kcs;
 	u32 channel;
 	u32 slave;
 	int rc;
@@ -263,30 +271,25 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
 	rc = of_property_read_u32(np, "kcs_chan", &channel);
 	if ((rc != 0) || (channel == 0 || channel > KCS_CHANNEL_MAX)) {
 		dev_err(&pdev->dev, "no valid 'kcs_chan' configured\n");
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	}
+	aspeed_kcs->channel = channel;
 
-	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs), channel);
-	if (!kcs)
-		return ERR_PTR(-ENOMEM);
-
-	priv = kcs_bmc_priv(kcs);
-	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
-	if (IS_ERR(priv->map)) {
+	aspeed_kcs->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
+	if (IS_ERR(aspeed_kcs->map)) {
 		dev_err(&pdev->dev, "Couldn't get regmap\n");
-		return ERR_PTR(-ENODEV);
+		return -ENODEV;
 	}
 
 	rc = of_property_read_u32(np, "kcs_addr", &slave);
 	if (rc) {
 		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	}
 
-	priv->reg = &aspeed_kcs_regs[channel - 1];
-	aspeed_kcs_set_address(kcs, slave);
+	aspeed_kcs_set_address(aspeed_kcs, slave);
 
-	return kcs;
+	return 0;
 }
 
 static int aspeed_kcs_calculate_channel(const struct aspeed_kcs_reg *reg)
@@ -301,12 +304,11 @@ static int aspeed_kcs_calculate_channel(const struct aspeed_kcs_reg *reg)
 	return -EINVAL;
 }
 
-static struct kcs_bmc *aspeed_kcs_probe_of_v2(struct platform_device *pdev)
+static int aspeed_kcs_probe_of_v2(
+		struct aspeed_kcs *aspeed_kcs, struct platform_device *pdev)
 {
-	struct aspeed_kcs *priv;
 	struct device_node *np;
 	struct aspeed_kcs_reg reg;
-	struct kcs_bmc *kcs;
 	const __be32 *of_reg;
 	int channel;
 	u32 slave;
@@ -317,120 +319,116 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v2(struct platform_device *pdev)
 	/* Don't translate addresses, we want offsets for the regmaps */
 	of_reg = of_get_address(np, 0, NULL, NULL);
 	if (!of_reg)
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	reg.idr = be32_to_cpup(of_reg);
 
 	of_reg = of_get_address(np, 1, NULL, NULL);
 	if (!of_reg)
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	reg.odr = be32_to_cpup(of_reg);
 
 	of_reg = of_get_address(np, 2, NULL, NULL);
 	if (!of_reg)
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	reg.str = be32_to_cpup(of_reg);
 
 	channel = aspeed_kcs_calculate_channel(&reg);
 	if (channel < 0)
-		return ERR_PTR(channel);
+		return channel;
+	aspeed_kcs->channel = channel;
 
-	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs), channel);
-	if (!kcs)
-		return ERR_PTR(-ENOMEM);
-
-	priv = kcs_bmc_priv(kcs);
-	priv->reg = &aspeed_kcs_regs[channel - 1];
-	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
-	if (IS_ERR(priv->map)) {
+	aspeed_kcs->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
+	if (IS_ERR(aspeed_kcs->map)) {
 		dev_err(&pdev->dev, "Couldn't get regmap\n");
-		return ERR_PTR(-ENODEV);
+		return -ENODEV;
 	}
 
 	rc = of_property_read_u32(np, "aspeed,lpc-io-reg", &slave);
 	if (rc)
-		return ERR_PTR(rc);
+		return rc;
 
-	aspeed_kcs_set_address(kcs, slave);
+	aspeed_kcs_set_address(aspeed_kcs, slave);
 
-	return kcs;
+	return 0;
 }
 
 static int aspeed_kcs_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct kcs_bmc *kcs_bmc;
-	struct aspeed_kcs *priv;
+	struct aspeed_kcs *aspeed_kcs;
 	struct device_node *np;
+	const struct aspeed_kcs_reg *reg;
 	int rc;
 
+	aspeed_kcs = devm_kzalloc(dev, sizeof(*aspeed_kcs), GFP_KERNEL);
+	if (!aspeed_kcs)
+		return -ENOMEM;
+	kcs_bmc = &aspeed_kcs->kcs_bmc;
+	dev_set_drvdata(dev, kcs_bmc);
+
 	np = pdev->dev.of_node;
 	if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc") ||
 			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
-		kcs_bmc = aspeed_kcs_probe_of_v1(pdev);
+		rc = aspeed_kcs_probe_of_v1(aspeed_kcs, pdev);
 	else if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc-v2") ||
 			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
-		kcs_bmc = aspeed_kcs_probe_of_v2(pdev);
+		rc = aspeed_kcs_probe_of_v2(aspeed_kcs, pdev);
 	else
-		return -EINVAL;
+		rc = -EINVAL;
+
+	if (rc)
+		return rc;
 
-	if (IS_ERR(kcs_bmc))
-		return PTR_ERR(kcs_bmc);
+	aspeed_kcs_enable_channel(aspeed_kcs, true);
 
 	kcs_bmc->read_status = aspeed_kcs_read_status;
 	kcs_bmc->write_status = aspeed_kcs_write_status;
 	kcs_bmc->read_data_in = aspeed_kcs_read_data_in;
 	kcs_bmc->write_data_out = aspeed_kcs_write_data_out;
 
-	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
+	rc = kcs_bmc_init(kcs_bmc, dev, aspeed_kcs->channel);
 	if (rc)
 		return rc;
 
-	dev_set_drvdata(dev, kcs_bmc);
-
-	aspeed_kcs_enable_channel(kcs_bmc, true);
-
-	rc = misc_register(&kcs_bmc->miscdev);
+	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
 	if (rc) {
-		dev_err(dev, "Unable to register device\n");
+		kcs_bmc_stop(kcs_bmc);
 		return rc;
 	}
 
-	priv = kcs_bmc_priv(kcs_bmc);
+	reg = to_aspeed_kcs_reg(aspeed_kcs);
 	dev_dbg(&pdev->dev,
 		"Probed KCS device %d (IDR=0x%x, ODR=0x%x, STR=0x%x)\n",
-		kcs_bmc->channel, priv->reg->idr, priv->reg->odr,
-		priv->reg->str);
+		aspeed_kcs->channel, reg->idr, reg->odr, reg->str);
 
 	return 0;
 }
 
 static int aspeed_kcs_remove(struct platform_device *pdev)
 {
-	struct kcs_bmc *kcs_bmc = dev_get_drvdata(&pdev->dev);
-
-	misc_deregister(&kcs_bmc->miscdev);
-
+	kcs_bmc_stop(dev_get_drvdata(&pdev->dev));
 	return 0;
 }
 
-static const struct of_device_id ast_kcs_bmc_match[] = {
+static const struct of_device_id aspeed_kcs_bmc_match[] = {
 	{ .compatible = "aspeed,ast2400-kcs-bmc" },
 	{ .compatible = "aspeed,ast2500-kcs-bmc" },
 	{ .compatible = "aspeed,ast2400-kcs-bmc-v2" },
 	{ .compatible = "aspeed,ast2500-kcs-bmc-v2" },
 	{ }
 };
-MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
+MODULE_DEVICE_TABLE(of, aspeed_kcs_bmc_match);
 
-static struct platform_driver ast_kcs_bmc_driver = {
+static struct platform_driver aspeed_kcs_bmc_driver = {
 	.driver = {
 		.name           = DEVICE_NAME,
-		.of_match_table = ast_kcs_bmc_match,
+		.of_match_table = aspeed_kcs_bmc_match,
 	},
 	.probe  = aspeed_kcs_probe,
 	.remove = aspeed_kcs_remove,
 };
-module_platform_driver(ast_kcs_bmc_driver);
+module_platform_driver(aspeed_kcs_bmc_driver);
 
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index 572501f7da71..e9ba95d0d560 100644
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
@@ -65,8 +65,9 @@ struct npcm7xx_kcs_reg {
 };
 
 struct npcm7xx_kcs {
-	struct regmap *map;
+	struct kcs_bmc kcs_bmc;
 
+	struct regmap *map;
 	const struct npcm7xx_kcs_reg *reg;
 };
 
@@ -76,6 +77,11 @@ static const struct npcm7xx_kcs_reg npcm7xx_kcs_reg_tbl[KCS_CHANNEL_MAX] = {
 	{ .sts = KCS3ST, .dob = KCS3DO, .dib = KCS3DI, .ctl = KCS3CTL, .ie = KCS3IE },
 };
 
+static struct npcm7xx_kcs *to_npcm7xx_kcs(struct kcs_bmc *kcs_bmc)
+{
+	return container_of(kcs_bmc, struct npcm7xx_kcs, kcs_bmc);
+}
+
 static u8 npcm7xx_kcs_inb(struct npcm7xx_kcs *npcm7xx_kcs, u32 reg)
 {
 	u32 val = 0;
@@ -92,36 +98,35 @@ static void npcm7xx_kcs_outb(struct npcm7xx_kcs *npcm7xx_kcs, u32 reg, u8 data)
 
 static u8 npcm7xx_kcs_read_status(struct kcs_bmc *kcs_bmc)
 {
-	struct npcm7xx_kcs *npcm7xx_kcs = kcs_bmc_priv(kcs_bmc);
+	struct npcm7xx_kcs *npcm7xx_kcs = to_npcm7xx_kcs(kcs_bmc);
 	return npcm7xx_kcs_inb(npcm7xx_kcs, npcm7xx_kcs->reg->sts);
 }
 
 static void npcm7xx_kcs_write_status(struct kcs_bmc *kcs_bmc, u8 data)
 {
-	struct npcm7xx_kcs *npcm7xx_kcs = kcs_bmc_priv(kcs_bmc);
+	struct npcm7xx_kcs *npcm7xx_kcs = to_npcm7xx_kcs(kcs_bmc);
 	npcm7xx_kcs_outb(npcm7xx_kcs, npcm7xx_kcs->reg->sts, data);
 }
 
 static u8 npcm7xx_kcs_read_data_in(struct kcs_bmc *kcs_bmc)
 {
-	struct npcm7xx_kcs *npcm7xx_kcs = kcs_bmc_priv(kcs_bmc);
+	struct npcm7xx_kcs *npcm7xx_kcs = to_npcm7xx_kcs(kcs_bmc);
 	return npcm7xx_kcs_inb(npcm7xx_kcs, npcm7xx_kcs->reg->dib);
 }
 
 static void npcm7xx_kcs_write_data_out(struct kcs_bmc *kcs_bmc, u8 data)
 {
-	struct npcm7xx_kcs *npcm7xx_kcs = kcs_bmc_priv(kcs_bmc);
+	struct npcm7xx_kcs *npcm7xx_kcs = to_npcm7xx_kcs(kcs_bmc);
 	npcm7xx_kcs_outb(npcm7xx_kcs, npcm7xx_kcs->reg->dob, data);
 }
 
-static void npcm7xx_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
+static void npcm7xx_kcs_enable_channel(struct npcm7xx_kcs *npcm7xx_kcs, bool enable)
 {
-	struct npcm7xx_kcs *priv = kcs_bmc_priv(kcs_bmc);
-
-	regmap_update_bits(priv->map, priv->reg->ctl, KCS_CTL_IBFIE,
-			   enable ? KCS_CTL_IBFIE : 0);
+	regmap_update_bits(npcm7xx_kcs->map, npcm7xx_kcs->reg->ctl,
+			   KCS_CTL_IBFIE, enable ? KCS_CTL_IBFIE : 0);
 
-	regmap_update_bits(priv->map, priv->reg->ie, KCS_IE_IRQE | KCS_IE_HIRQE,
+	regmap_update_bits(npcm7xx_kcs->map, npcm7xx_kcs->reg->ie,
+			   KCS_IE_IRQE | KCS_IE_HIRQE,
 			   enable ? KCS_IE_IRQE | KCS_IE_HIRQE : 0);
 }
 
@@ -142,7 +147,7 @@ static int npcm7xx_kcs_config_irq(struct kcs_bmc *kcs_bmc,
 static int npcm7xx_kcs_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct npcm7xx_kcs *priv;
+	struct npcm7xx_kcs *npcm7xx_kcs;
 	struct kcs_bmc *kcs_bmc;
 	u32 chan;
 	int rc;
@@ -153,49 +158,47 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	kcs_bmc = kcs_bmc_alloc(dev, sizeof(*priv), chan);
-	if (!kcs_bmc)
+	npcm7xx_kcs = devm_kzalloc(dev, sizeof(*npcm7xx_kcs), GFP_KERNEL);
+	if (!npcm7xx_kcs)
 		return -ENOMEM;
+	kcs_bmc = &npcm7xx_kcs->kcs_bmc;
+	dev_set_drvdata(dev, kcs_bmc);
 
-	priv = kcs_bmc_priv(kcs_bmc);
-	priv->map = syscon_node_to_regmap(dev->parent->of_node);
-	if (IS_ERR(priv->map)) {
+	npcm7xx_kcs->map = syscon_node_to_regmap(dev->parent->of_node);
+	if (IS_ERR(npcm7xx_kcs->map)) {
 		dev_err(dev, "Couldn't get regmap\n");
 		return -ENODEV;
 	}
-	priv->reg = &npcm7xx_kcs_reg_tbl[chan - 1];
+	npcm7xx_kcs->reg = &npcm7xx_kcs_reg_tbl[chan - 1];
 
 	kcs_bmc->read_status = npcm7xx_kcs_read_status;
 	kcs_bmc->write_status = npcm7xx_kcs_write_status;
 	kcs_bmc->read_data_in = npcm7xx_kcs_read_data_in;
 	kcs_bmc->write_data_out = npcm7xx_kcs_write_data_out;
 
-	dev_set_drvdata(dev, kcs_bmc);
+	npcm7xx_kcs_enable_channel(npcm7xx_kcs, true);
 
-	npcm7xx_kcs_enable_channel(kcs_bmc, true);
-	rc = npcm7xx_kcs_config_irq(kcs_bmc, pdev);
+	rc = kcs_bmc_init(kcs_bmc, dev, chan);
 	if (rc)
 		return rc;
 
-	rc = misc_register(&kcs_bmc->miscdev);
+	rc = npcm7xx_kcs_config_irq(kcs_bmc, pdev);
 	if (rc) {
-		dev_err(dev, "Unable to register device\n");
+		kcs_bmc_stop(kcs_bmc);
 		return rc;
 	}
 
 	dev_dbg(&pdev->dev,
-		"Probed KCS device %d (DIB=0x%x, DOB=0x%x, STS=0x%x )\n",
-		chan, priv->reg->dib, priv->reg->dob, priv->reg->sts);
+		"Probed KCS device %d (DIB=0x%x, DOB=0x%x, STS=0x%x)\n",
+		chan, npcm7xx_kcs->reg->dib, npcm7xx_kcs->reg->dob,
+		npcm7xx_kcs->reg->sts);
 
 	return 0;
 }
 
 static int npcm7xx_kcs_remove(struct platform_device *pdev)
 {
-	struct kcs_bmc *kcs_bmc = dev_get_drvdata(&pdev->dev);
-
-	misc_deregister(&kcs_bmc->miscdev);
-
+	kcs_bmc_stop(dev_get_drvdata(&pdev->dev));
 	return 0;
 }
 
-- 
2.30.0.478.g8a0d178c01-goog



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
