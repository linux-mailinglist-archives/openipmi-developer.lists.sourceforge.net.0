Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C197E038F
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzq-0001if-CM;
	Fri, 03 Nov 2023 13:13:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynli-00042s-7a
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hYHyullC4OIb5ueKBUtHARoDjsv8sC0z5UpD23psbTg=; b=HxLEst5+RhOsCfSFqCAC5UHc/7
 jNqwXpXHm1W5c4S06ojeA1OKblpMcAMe90ViNNW1AtQPFYcmirLxdmL3JJ5Em8m3p0H3vpDYmNyvv
 FuJWt6rir5C60KfJHgO4pn3MeFnvGMpu9xJA9mosMw+5f7+JQOnPx/JUnJ6QT1KUrUE8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hYHyullC4OIb5ueKBUtHARoDjsv8sC0z5UpD23psbTg=; b=kF50DQBTWePXX2fXSp9/yo/RVJ
 ZJbOFl8NJFH/jOPXXJAMBMwhMthBDJCioiiRLZSfg4ZnvCz8bWXYcflcNwwleNXPte4uJNKjohk3D
 i63UNAPR8bKvWMeQFK7c6YwaUlTqETBXc2VI3bxdfax5eq8RzrQudE04KzVvRN/vVpSk=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlf-0005Jg-Sf for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:56 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id A4F7D201C3;
 Fri,  3 Nov 2023 14:15:39 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992140;
 bh=hYHyullC4OIb5ueKBUtHARoDjsv8sC0z5UpD23psbTg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=lKLQuGemKmw5voq2rUsfzBHn00UX+Y/HnEtbLYNqvN9CseaRxwuOjIHs7hHv9nU17
 1E7Egh94J5i3ygDC9uJZktBIr99HafQqZVBDpCnlta1lT6Pvp8sFgZSnkr2aFDP8za
 zc7oTfZAGpYs9YOf6/q+NZPBnGwPPKhrBVPn+5ULR+8x0FHqFxWxAgD24g5SaHzGW3
 zRjkqz+W+5VxcdrECFjyv/Ds8UsXttu2lfr3OKqezPbOCEV/rWM/I/3QPG9SE3b7Ku
 tW3yISYZM6PmsEguqM8j2YhbfC2qvWaZAumTj9iY2XLk1MaPNvyZeMq2Ydf3+A7WuR
 yyZQ9zdtGTn+Q==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:15 +1030
Message-Id: <20231103061522.1268637-4-andrew@codeconstruct.com.au>
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
 Content preview:  There were no users outside the subsystem core, so let's not
 expose it. Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au> ---
 drivers/char/ipmi/kcs_bmc.c | 11 +++++------
 drivers/char/ipmi/kcs_bmc_client.h
 | 2 -- 2 files changed, 5 insertions(+), 8 deletions(-) 
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
X-Headers-End: 1qynlf-0005Jg-Sf
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:55 +0000
Subject: [Openipmi-developer] [PATCH 03/10] ipmi: kcs_bmc: Make
 kcs_bmc_update_event_mask() static
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

There were no users outside the subsystem core, so let's not expose it.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc.c        | 11 +++++------
 drivers/char/ipmi/kcs_bmc_client.h |  2 --
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index a429d9f8a7bf..1a827db8a465 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -68,6 +68,11 @@ irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
 }
 EXPORT_SYMBOL(kcs_bmc_handle_event);
 
+static void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 events)
+{
+	kcs_bmc->ops->irq_mask_update(kcs_bmc, mask, events);
+}
+
 int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client)
 {
 	int rc;
@@ -178,12 +183,6 @@ void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv)
 }
 EXPORT_SYMBOL(kcs_bmc_unregister_driver);
 
-void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 events)
-{
-	kcs_bmc->ops->irq_mask_update(kcs_bmc, mask, events);
-}
-EXPORT_SYMBOL(kcs_bmc_update_event_mask);
-
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
 MODULE_AUTHOR("Andrew Jeffery <andrew@aj.id.au>");
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/drivers/char/ipmi/kcs_bmc_client.h
index 6fdcde0a7169..814ad8e052ef 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/drivers/char/ipmi/kcs_bmc_client.h
@@ -35,8 +35,6 @@ void kcs_bmc_unregister_driver(struct kcs_bmc_driver *drv);
 int kcs_bmc_enable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
 void kcs_bmc_disable_device(struct kcs_bmc_device *kcs_bmc, struct kcs_bmc_client *client);
 
-void kcs_bmc_update_event_mask(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 events);
-
 u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc);
 void kcs_bmc_write_data(struct kcs_bmc_device *kcs_bmc, u8 data);
 u8 kcs_bmc_read_status(struct kcs_bmc_device *kcs_bmc);
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
