Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE48B341590
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Mar 2021 07:30:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lN8eD-0008C7-3x; Fri, 19 Mar 2021 06:30:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lN8eB-0008Bx-Lj
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kc6gjs9yqWDoKCsi1TqrIxa0TgkKoxNCj8JuwJy41yE=; b=kh7aluPxa+Sgq9XIBVbwYZKH5s
 xefxQ+3Vo33tusZMeuRWvskzIpefPx60oKr5KdZKpbQp1toArC1NevjzNyLC3w9NOzZdL0btzo9x6
 H9f9qfF/zfuw6VkHxhOQ4FIKTfKwlHbYjLvbTFPzUj7Z/ZSW24pfhfE5jQtqwhF3SSNQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kc6gjs9yqWDoKCsi1TqrIxa0TgkKoxNCj8JuwJy41yE=; b=bwqgyd42dsICLWACpKT07cX4u/
 5vakl3dMgbU4HaFBr6NVNLPA0OhqZ+1Dwnaikh1VZuhthq33qzwq6Nn0vo53beswgFZzMFA/IhOS9
 jyv5eIcWcMtdom5C9b9hXsq94v4aNo3ePDwkVxVcdxK4Q/EKYFtYW6qulUOXP6CDOjTk=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lN8du-0004Y5-Jm
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:30:10 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 15853580A7D;
 Fri, 19 Mar 2021 02:29:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 02:29:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=kc6gjs9yqWDoK
 Csi1TqrIxa0TgkKoxNCj8JuwJy41yE=; b=N/2IQwUm/CCNKscarNRWoK5srrw7l
 3KWQ3Tyg74Tn+7ffkq+Dt9PBtBVJdot9m4eAUXh0hQEr2wKUIpERKmaTtX08FCLx
 iVOv/+XpsQTpyTgpM9WtkoPoSBRxzIc1u35sw7VAGnjqfoum2ZwC+uh0nnYhcRgb
 OujilZrV7fTzlSM/YeoV7x5EE67Ma143X5BnwZbeYE8tC5AKekq6EKGBNmuFrhSR
 H6OptXqTXjB78cuh5syKoe17Jk4T/HVJvKitPTEOE3l2tZdIyNjG/phh351iSA3M
 Uf4SI6/3pqYnMdf7faPOrPp11RkU0trjk1G/18bYGKimkLGyszIhES9wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=kc6gjs9yqWDoKCsi1TqrIxa0TgkKoxNCj8JuwJy41yE=; b=haqExUDw
 OATLF5XCK885i35LdG3y/jDwNt29M1tpvQjUYS1QyLTNlVmQiOjdDB4B5jHRubA2
 GlbG5Qghw+zLKFYXrplaOdShgJ0x31R1V0FMz0cZ6hSOVhojNvhrRHdHGbzyni8a
 HBbu9Z8sjEioyunkNJdOLU6K3wPBxuCb+cdtowDF+WNCureMEZ6ZVF5+KXU+PtBq
 adDAXIAfpsn/HKosine81JqokZfYdqnf11x1oyEf746IrBROJagWN5ORB2KLhNmz
 SvzPziUKgNN7d5gefCNRdEKc1azOVGdQg532FHiVN3phORGMbGmuLb1dYDTSqTX+
 up/sjUi4MH79fQ==
X-ME-Sender: <xms:3ERUYBznuPg_k70XTaBke0FBKgptbwgyael3_7eS5QFnttS9cRHRKA>
 <xme:3ERUYBSrI6Q7ZImivqwPILYD2yyr3Dx9B6P1b-hYPZ_sm1gTJs4Z_HXIyZdBWxJ5S
 SG6RGDvCQ1Z5g4P2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppeduudekrddvuddtrddukedurdeh
 heenucevlhhushhtvghrufhiiigvpeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnh
 gurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:3ERUYLUntPTVRl2nPBOqVSwE5ASTqCwDXxg4Y936RvgJy0bw8jgpCw>
 <xmx:3ERUYDjyIOKV9gdL9UB2I5nM9vEfBNapDQ6MiPF7QoRIonjqPplz6w>
 <xmx:3ERUYDA2ifncq36ZW4X7DurZvP1fQY4d6SFQDKcInGjTlm8iCxEIjg>
 <xmx:3URUYFxkyxFKqaMsyxYpfp9NIkphTMS2P_5M569LfttYIr3NV-_PmQ>
Received: from localhost.localdomain
 (ppp118-210-181-55.adl-adc-lon-bras34.tpg.internode.on.net [118.210.181.55])
 by mail.messagingengine.com (Postfix) with ESMTPA id 67BF0240057;
 Fri, 19 Mar 2021 02:29:43 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Fri, 19 Mar 2021 16:57:46 +1030
Message-Id: <20210319062752.145730-15-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210319062752.145730-1-andrew@aj.id.au>
References: <20210319062752.145730-1-andrew@aj.id.au>
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
X-Headers-End: 1lN8du-0004Y5-Jm
Subject: [Openipmi-developer] [PATCH v2 15/21] ipmi: kcs_bmc: Don't enforce
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
Cc: devicetree@vger.kernel.org, ryan_chen@aspeedtech.com, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 chiawei_wang@aspeedtech.com, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
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
index 05bbb72418b2..2fafa9541934 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -55,24 +55,12 @@ EXPORT_SYMBOL(kcs_bmc_update_status);
 int kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_client *client;
-	int rc;
+	int rc = KCS_BMC_EVENT_NONE;
 
 	spin_lock(&kcs_bmc->lock);
 	client = kcs_bmc->client;
-	if (client) {
+	if (!WARN_ON_ONCE(!client))
 		rc = client->ops->event(client);
-	} else {
-		u8 status;
-
-		status = kcs_bmc_read_status(kcs_bmc);
-		if (status & KCS_BMC_STR_IBF) {
-			/* Ack the event by reading the data */
-			kcs_bmc_read_data(kcs_bmc);
-			rc = KCS_BMC_EVENT_HANDLED;
-		} else {
-			rc = KCS_BMC_EVENT_NONE;
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
index 5f26471c038c..271845eb2e26 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -419,8 +419,7 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
-				   KCS_BMC_EVENT_TYPE_IBF);
+	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
 	aspeed_kcs_enable_channel(kcs_bmc, true);
 
 	rc = kcs_bmc_add_device(&priv->kcs_bmc);
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index c2032728a03d..fdf35cad2eba 100644
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
@@ -207,8 +207,7 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
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
