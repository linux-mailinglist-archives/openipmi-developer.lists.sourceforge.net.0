Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E0A39F43A
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:51:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZKp-00006K-Ui; Tue, 08 Jun 2021 10:51:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lqZJf-0008TL-In
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jkJAYsSJjnYPZKZdopX/2GTlurEs5bf+aaHymsw9C7U=; b=ENo5HCc+L6uEExHCX92iZJSAka
 SUMXr07T0uDfDXVWlZhj2Jc1/1kM3++BuAw46TOpda8ttp6MCuCXrfyqDxbQNQxw0ZYTP4UcVeWk7
 g4TzC6ySkqrjbVRwkTQ31eTane9yZbnbZ4wy8UXS0j7qniworuUdnNMszDAaWt3vb9os=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jkJAYsSJjnYPZKZdopX/2GTlurEs5bf+aaHymsw9C7U=; b=B0X0cfapzyeedZUF7Lrkg/yYEk
 cIax+oRy1ZlDNleYKzNzsPVoVrMx+cx1pdGJSdix00T53A1KuqCrNF7r41juOb4c4wK2dhST9QNZJ
 Qk8sD+/fTyJ0o41W28YVYVzYQweSj57FH9ORZ9jUeV06UfTq6Dm6/wx2RYEiNaugi1fQ=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZIb-0008Ja-Gw
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:49:35 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id EAFD2580648;
 Tue,  8 Jun 2021 06:49:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 08 Jun 2021 06:49:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=jkJAYsSJjnYPZ
 KZdopX/2GTlurEs5bf+aaHymsw9C7U=; b=ml8XZ6ujSTzo2xBDUgjqBDwC6feZj
 C2b7RY4JA931Os7bg+GU28pkM8Ng3JLUjJo16sDcP58fxE7UBl79tpB1JNRzjWjb
 VDRNK8dgxYYzQWRPZAWStNw0b88bXVaMzQZE6119nd89BGP5n+TfG2JDc80aiqSi
 WGo3vPUnz1YGzVPNSsDc5Zt+3Kbq0UcAK7d4aZ4XGiHO0e0Rmqrc1Fu5OhHy6KDu
 MlH8YTVp9xxorIbfde12IJnfSnpD/h1QUAJfLv4L5MdGBxurVW7Cz3ErDtGZmknc
 WPKKuC8r95Vsxd45nlEDxWfyRhMSxCgtkFRnoFaPVKL4tPJS0KZwU2liA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=jkJAYsSJjnYPZKZdopX/2GTlurEs5bf+aaHymsw9C7U=; b=MrrHLaO7
 qWxgv8Ar2d8Oalb2QPJGuaO34gZ54PigxvZ9/CapFVi0bE2jkdWWPZ9yfX0TvLZO
 OK3VpSYDv+8YyKvezhkKgHk/8+6WacrQLEm2PQLCqBnNCtUbuZSS27mI2qg9CFFm
 Qj3CrJRk0wQJxIUPuC4k9G0cLApDsrjqWwvK3vOwwCupy8V+J0iyHU1G61caFJ1J
 xBnfVpLSugbsUz4ukm+ilTzBw1axjBperIUknVhRiUgT373XGYirOf2OpMG/1stU
 0nCZ6y5hBZE9OeGhNdBAvFiNGIjyybY1+gXqnp5E8LM6AcH+nLSTGDDMH5ui0aBv
 ArF+lMTtPfrrYw==
X-ME-Sender: <xms:OEu_YDOeoZioDaEBw0nTBjW6gtMPsmk2CyUEmXK3cKSlUM_ZG8xvRw>
 <xme:OEu_YN9J7IkGGI-CI4kE4v_KEPlg44zvof2x1sGJXew7qSMQSZaduft0D0tWBLBBR
 ZxKzJA1rAdYeEjAUw>
X-ME-Received: <xmr:OEu_YCQm7nbUYRZ_PLVAgnMzw6POrJvKHmg2-0ufqjNeQmSB8p11RbG0w60C72B3dnBMdo00kEvDqTrgvwQX-S2H9-DuOmOmCC4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:OEu_YHsBvj9vpmSrTIZH16J5jXE7mrc022ggXfnJ-weGqehF2EneUg>
 <xmx:OEu_YLfn4hyPM7PlGZCQyrhZYf-zh_nnQu76EEifxAbIB1k9dLh7Uw>
 <xmx:OEu_YD2vZfgx3EwLWkU1ep9MTkOgnp44OTDHRXByp5R5FDbu4ijW3Q>
 <xmx:OEu_YGsTjXleIuE6N9t0crH-7LTbUgnA05bWNu6cnkDvy6UWCW4SeA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:49:22 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:51 +0930
Message-Id: <20210608104757.582199-11-andrew@aj.id.au>
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
X-Headers-End: 1lqZIb-0008Ja-Gw
Subject: [Openipmi-developer] [PATCH v4 10/16] ipmi: kcs_bmc: Enable IBF on
 open
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

This way devices don't get delivered IRQs when no-one is interested.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc.c         | 25 ++++++++++---------------
 drivers/char/ipmi/kcs_bmc_aspeed.c  |  3 +--
 drivers/char/ipmi/kcs_bmc_npcm7xx.c |  3 +--
 3 files changed, 12 insertions(+), 19 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 91eb43746cef..03d02a848f3a 100644
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
@@ -87,7 +75,10 @@ int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client
 	if (kcs_bmc->client) {
 		rc = -EBUSY;
 	} else {
+		u8 mask = KCS_BMC_EVENT_TYPE_IBF;
+
 		kcs_bmc->client = client;
+		kcs_bmc_update_event_mask(kcs_bmc, mask, mask);
 		rc = 0;
 	}
 	spin_unlock_irq(&kcs_bmc->lock);
@@ -99,8 +90,12 @@ EXPORT_SYMBOL(kcs_bmc_enable_device);
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
index 5bf8d013e4ae..43994688dc8a 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -416,8 +416,7 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
-				   KCS_BMC_EVENT_TYPE_IBF);
+	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
 	aspeed_kcs_enable_channel(kcs_bmc, true);
 
 	rc = kcs_bmc_add_device(&priv->kcs_bmc);
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index ef81a715f88a..7961fec56476 100644
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
@@ -202,8 +202,7 @@ static int npcm7xx_kcs_probe(struct platform_device *pdev)
 	if (rc)
 		return rc;
 
-	npcm7xx_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE),
-				    KCS_BMC_EVENT_TYPE_IBF);
+	npcm7xx_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF | KCS_BMC_EVENT_TYPE_OBE), 0);
 	npcm7xx_kcs_enable_channel(kcs_bmc, true);
 
 	rc = kcs_bmc_add_device(kcs_bmc);
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
