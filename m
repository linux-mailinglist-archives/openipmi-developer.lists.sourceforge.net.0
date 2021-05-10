Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D79377BC4
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:44:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyiU-0004c8-4E; Mon, 10 May 2021 05:44:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lfyiR-0004bg-UP
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kLchKO/0VbbO8bzomJ3GZBmNt8twxEL+g7L03VtxT00=; b=D5fVnBM91Sn6BOn/I1i+Eg2lsx
 Rhrcq2doP96Bo4SDB/VhiUJ2QEx2VLW+hH95c57BGPK40YpSTt/4fbK8+yiVDNWwT7kG3coniGBjT
 ICzJz9lUGXlJogEpj+wB6wJZNNVrygda9VbRdzn4lq3/6MHz6ANBDk1ESwj3F603R9Fg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kLchKO/0VbbO8bzomJ3GZBmNt8twxEL+g7L03VtxT00=; b=kBxfe0wq2U3GvMVfyhpc+gSbr+
 7RYT+mt8YcNDdjmiwGRtRIqv9x4eVtEvNwv/mM7gDqHDGPDBzv/eLVSV+LJu/9Re2QeUyUowoOrWT
 /1Hm7yJ1OrymiPhBL11kZ+ht4C6EjaY0hKsVV26D8jG9F+jXLQD0OUuJqotgap3rvFBQ=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lfyiF-0003GU-Q0
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E584A5803ED;
 Mon, 10 May 2021 01:44:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 10 May 2021 01:44:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=kLchKO/0VbbO8
 bzomJ3GZBmNt8twxEL+g7L03VtxT00=; b=QRGlL/x+llnwU9mRhh4ueMkzfIqDw
 sJFPZeKGAymRduKhB/mevwvmbMgLEqr+jPcUiN4not6iv8CZ+9tL+TendR8sHB59
 n+C6PZbrGNA7QrPaXlJTWuCpvraM8rt0qKeEGu8J7E3E78/YFaf2o3iMQpwXo1ij
 OffdIIVwmtWS6K9D4KEMUEunxGS4hYM1EAV/CSi+mi4DSlq8tA+M/gY8/k75FpFb
 MlW++NUkthX5Zw+F8kYYx0n/S9zNAG/jSeyjPLtckdi37spWHKb5oSqlKntxGrb1
 yhrErYdUGei05rVrh/LLFLTKG9pARiVVjBpYEzVcOCXbLbsHT4Vb+41gw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=kLchKO/0VbbO8bzomJ3GZBmNt8twxEL+g7L03VtxT00=; b=PVqFb2kn
 WRS1BqQ9xcDiKDcyKK3L7aGHDNnP1UlQBiaFlEIx2hQ5MQkn8lGeQlf5cJgQUvEQ
 Y97RUUuNQXPA66LtS+7KmKB2lKwDBTMauDfo90QWQ5IVUMc6RfAiv0lEWsPdU+rq
 A5eertsy6krp4cQW+AsXsvCsCBh3foA0oNwVmupyJY20lvtympM7ONKbIpK2tR85
 iN7cyaQaRqeublvtimkTMZ4baV6Gcwth3QCuR+am+hZXN4JyhZyyqw3IiW8zZidO
 8wqjJs/Zu/PuDBSp7vOO6XJlIIzT+QHKWDFD2Qt3jeKrN738iy7GmyA0nXCLC2cp
 6+f0dDUFtWk9eA==
X-ME-Sender: <xms:KsiYYFiF-fEs5oVODOXc5PLFSYixavDT17kw1ZbkqaKHmtWuG6J79A>
 <xme:KsiYYKDyILpa1ATYXQWvzXXykLY_a1lQOmQyvKn3r3Mu9Q6b6h8wCQnblqc17gGfO
 xJ7jcGoVU_nRU6ZDA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppedvtdefrdehjedrvdduhedrkeen
 ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:KsiYYFFm4zy3NjWp-BJBE0PHHXPmH0U3mR-HCg6nUAYRVrBkl0SdHQ>
 <xmx:KsiYYKTCThCzNv9yVpcXohECDoYSZQk-_J24tyW2jWn9WWgRp0EIag>
 <xmx:KsiYYCz825dXXBnVKGKgcWW1PKvER0kDNB1uqQjB5Ouh-sGe_NeI_A>
 <xmx:KsiYYGgJ46YXNxKuefhYfMg-4GY1ssPkMrLS-lw1lHKtxv1yAQAVNg>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:44:05 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:07 +0930
Message-Id: <20210510054213.1610760-11-andrew@aj.id.au>
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
X-Headers-End: 1lfyiF-0003GU-Q0
Subject: [Openipmi-developer] [PATCH v3 10/16] ipmi: kcs_bmc: Don't enforce
 single-open policy in the kernel
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

Soon it will be possible for one KCS device to have multiple associated
chardevs exposed to userspace (for IPMI and raw-style access). However,
don't prevent userspace from:

1. Opening more than one chardev at a time, or
2. Opening the same chardev more than once.

System behaviour is undefined for both classes of multiple access, so
userspace must manage itself accordingly.

The implementation delivers IBF and OBF events to the first chardev
client to associate with the KCS device. An open on a related chardev
cannot associate its client with the KCS device and so will not
receive notification of events. However, any fd on any chardev may race
their accesses to the data and status registers.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc.c         | 34 ++++++++++-------------------
 drivers/char/ipmi/kcs_bmc_aspeed.c  |  3 +--
 drivers/char/ipmi/kcs_bmc_npcm7xx.c |  3 +--
 3 files changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 7081541bb6ce..ad9ff13ba831 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -55,24 +55,12 @@ EXPORT_SYMBOL(kcs_bmc_update_status);
 irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_client *client;
-	irqreturn_t rc;
+	irqreturn_t rc = IRQ_NONE;
 
 	spin_lock(&kcs_bmc->lock);
 	client = kcs_bmc->client;
-	if (client) {
+	if (client)
 		rc = client->ops->event(client);
-	} else {
-		u8 status;
-
-		status = kcs_bmc_read_status(kcs_bmc);
-		if (status & KCS_BMC_STR_IBF) {
-			/* Ack the event by reading the data */
-			kcs_bmc_read_data(kcs_bmc);
-			rc = IRQ_HANDLED;
-		} else {
-			rc = IRQ_NONE;
-		}
-	}
 	spin_unlock(&kcs_bmc->lock);
 
 	return rc;
@@ -81,26 +69,28 @@ EXPORT_SYMBOL(kcs_bmc_handle_event);
 
 int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
 {
-	int rc;
-
 	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->client) {
-		rc = -EBUSY;
-	} else {
+	if (!kcs_bmc->client) {
+		u8 mask = KCS_BMC_EVENT_TYPE_IBF;
+
 		kcs_bmc->client = client;
-		rc = 0;
+		kcs_bmc_update_event_mask(kcs_bmc, mask, mask);
 	}
 	spin_unlock_irq(&kcs_bmc->lock);
 
-	return rc;
+	return 0;
 }
 EXPORT_SYMBOL(kcs_bmc_enable_device);
 
 void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
 {
 	spin_lock_irq(&kcs_bmc->lock);
-	if (client == kcs_bmc->client)
+	if (client == kcs_bmc->client) {
+		u8 mask = KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE;
+
+		kcs_bmc_update_event_mask(kcs_bmc, mask, 0);
 		kcs_bmc->client = NULL;
+	}
 	spin_unlock_irq(&kcs_bmc->lock);
 }
 EXPORT_SYMBOL(kcs_bmc_disable_device);
diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 8b223e58d900..8a0b1e18e945 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -414,8 +414,7 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
-				   KCS_BMC_EVENT_TYPE_IBF);
+	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
 	aspeed_kcs_enable_channel(kcs_bmc, true);
 
 	kcs_bmc_add_device(&priv->kcs_bmc);
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index f8b7162fb830..ab4a8caf1270 100644
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
@@ -202,8 +202,7 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
 	if (rc)
 		return rc;
 
-	npcm7xx_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
-				    KCS_BMC_EVENT_TYPE_IBF);
+	npcm7xx_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
 	npcm7xx_kcs_enable_channel(kcs_bmc, true);
 
 	pr_info("channel=%u idr=0x%x odr=0x%x str=0x%x\n",
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
