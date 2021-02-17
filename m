Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CB831DB66
	for <lists+openipmi-developer@lfdr.de>; Wed, 17 Feb 2021 15:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Mime-Version:Message-Id:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YMr/+WwVFREivh93sQRVuwcd1Qstq+y+L1fe0FGSMA0=; b=Gz9dSYE09N46W/odX8blrVHIiJ
	x3LBi0TJ5TqXqLh726U3q6Wlp3qOMWrXiPPD4GRUiY7YTkTupsC3r3rBIRKTvFz7S+44ez2E1zeF4
	m/S1vFxncrwkpKolFJINJqfpotgkUnwbyNMm0O5niKvDa11sW8nCJrjpO6v0ucVfIpqI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lCNlT-0005Fp-VK; Wed, 17 Feb 2021 14:25:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <31MYsYAMKAB0P3D9HH9E7.5HF@flex--wak.bounces.google.com>)
 id 1lCHjj-0003xU-GK
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Feb 2021 07:59:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Mime-Version:
 Message-Id:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lOAK9IBrMCCtns9spRcLU7grHL9xP9PXBr01poTnJKY=; b=S4PKlhwZ1xo1EwCtWURd/kxRTb
 KInQH5NfIEYSDmoWftttohJc4scqJ2UhlcWqHSR1OaP/s9xJmN6S28Inrs73F5s7Hzyi7oYtS0irF
 id7nVbzNT53cJbTBrvVPnw8PIrh3SOA3fES8Yv+InF1L5UuWEQJy8+i1tgEyY3ULqCOg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Mime-Version:Message-Id:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lOAK9IBrMCCtns9spRcLU7grHL9xP9PXBr01poTnJKY=; b=i
 2x8l8b1pUxYNcCS/EsCBdWmN8Vp/ebCNG3eo/DDopaWgTosqzBS2kzD5C/mBx9+9lCwa5Lgjhd1Om
 HMsp30U96GOBt0OdcG2rwo5cl7zAhHQYyOdk5d8jMNkXnyY9EJxL+fyP60TPhSfSiBrkbLdy5GbgP
 3a54xhUZNXrg+jFg=;
Received: from mail-yb1-f201.google.com ([209.85.219.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lCHjY-00BpEE-05
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Feb 2021 07:59:03 +0000
Received: by mail-yb1-f201.google.com with SMTP id o9so11364224yba.18
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Feb 2021 23:58:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=sender:date:message-id:mime-version:subject:from:to:cc;
 bh=lOAK9IBrMCCtns9spRcLU7grHL9xP9PXBr01poTnJKY=;
 b=P5gyLLrxKOVGU82VrYnGNZR9YQ8DEUufItIWC1jzHPG3BqSxp7C3OyFVNzXbUfhP/2
 cDOOlPgBQDbGbFNzWH/5mTW7476Gf4ujHV6J5qJvHwdvyqb5MpH9aLMqBOlaAwLX4MGW
 uzcm9IeFYvaJImfJaeutslEa7gdOmZ8uuP7tTmWuj2HnUMmzGUPI0xhsMzW9swyaxtaC
 OReaE0rCjyekMoHLekdekSlY5N3TE+Dk1zMdTzKxt2wnpf+JXkp6HGWHXuLrjRUt3bkg
 mqAbTdGMM3Te+ASL5Kl3d+JkpHaSGp+HJJtUexQ0QoU8+P2h4OYb6dnmDjliyBqnnexa
 ZjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :to:cc;
 bh=lOAK9IBrMCCtns9spRcLU7grHL9xP9PXBr01poTnJKY=;
 b=oTGPP1BFtxDh1BE/5q8xkeGSmI6PEeFJcHrkgRI+vUK+zUHmvFozrIfY8mB7ctrQMW
 /AlpaYQsjt5+ZpPluMJiHF4+X52q11HNKICa69n7itSdKg3kYy1sUkkenblIaQPWJ92i
 1+V6YBGw4UE9LkDPqzW+PVhWHtWAiiWVRSrPv5L0mg+rgfSv/+X0e0VKpGmdV0VrCtQJ
 cfHuwA+RAF3iRU0Ifc0c3Z6pNp8aS0j8q9XXhDMibSdtuvneorbyy/CQwzx3GYzQaoAB
 sGjAiKMku8XpT0lckPkEyTUQL8T64jFs3Bx4v59nq0FFX9FBIN6/BrmNCUKOvdTiCpi/
 UzvA==
X-Gm-Message-State: AOAM53200qnKd7HfmMRlhr5UNQAE/yOU5S32PpSs2jv2m6DND267H5IJ
 6Mltn3b/Pwc0Od+xcDtUqK9O+4k=
X-Google-Smtp-Source: ABdhPJzYB7CSY+bsx+FwoZb40f5/sdDpsrEVDYihSkZCXu8FC6rGnStezZAhqtcO27fQjXacbrkLiA4=
X-Received: from wak-linux.svl.corp.google.com
 ([2620:15c:2c5:3:e984:b7fc:110a:274a])
 (user=wak job=sendgmr) by 2002:a25:850e:: with SMTP id
 w14mr28906187ybk.259.1613547220757; 
 Tue, 16 Feb 2021 23:33:40 -0800 (PST)
Date: Tue, 16 Feb 2021 23:33:14 -0800
Message-Id: <20210217073318.540369-1-wak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.201 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lCHjY-00BpEE-05
X-Mailman-Approved-At: Wed, 17 Feb 2021 14:25:09 +0000
Subject: [Openipmi-developer] [PATCH 1/4] ipmi: kcs_bmc: Simplify irq
 handling
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

Platforms specific IRQ handles repeat the same logic, calling a
sub-handler in the kcs_bmc generic code that should just conform to the
irqhandler callback.

Signed-off-by: William A. Kennington III <wak@google.com>
---
 drivers/char/ipmi/kcs_bmc.c         | 10 +++++-----
 drivers/char/ipmi/kcs_bmc.h         |  3 ++-
 drivers/char/ipmi/kcs_bmc_aspeed.c  | 12 +-----------
 drivers/char/ipmi/kcs_bmc_npcm7xx.c | 12 +-----------
 4 files changed, 9 insertions(+), 28 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index f292e74bd4a5..ccb35f1645cf 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -209,10 +209,11 @@ static void kcs_bmc_handle_cmd(struct kcs_bmc *kcs_bmc)
 	}
 }
 
-int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
+irqreturn_t kcs_bmc_irq(int irq, void *arg)
 {
+	struct kcs_bmc *kcs_bmc = arg;
 	unsigned long flags;
-	int ret = -ENODATA;
+	irqreturn_t ret = IRQ_NONE;
 	u8 status;
 
 	spin_lock_irqsave(&kcs_bmc->lock, flags);
@@ -225,15 +226,14 @@ int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
 			kcs_bmc_handle_cmd(kcs_bmc);
 		else
 			kcs_bmc_handle_data(kcs_bmc);
-
-		ret = 0;
+		ret = IRQ_HANDLED;
 	}
 
 	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
 
 	return ret;
 }
-EXPORT_SYMBOL(kcs_bmc_handle_event);
+EXPORT_SYMBOL(kcs_bmc_irq);
 
 static inline struct kcs_bmc *to_kcs_bmc(struct file *filp)
 {
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index eb9ea4ce78b8..959d7042e6d2 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -6,6 +6,7 @@
 #ifndef __KCS_BMC_H__
 #define __KCS_BMC_H__
 
+#include <linux/irqreturn.h>
 #include <linux/miscdevice.h>
 
 /* Different phases of the KCS BMC module.
@@ -102,7 +103,7 @@ static inline void *kcs_bmc_priv(struct kcs_bmc *kcs_bmc)
 	return kcs_bmc->priv;
 }
 
-int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc);
+irqreturn_t kcs_bmc_irq(int irq, void *arg);
 struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv,
 					u32 channel);
 #endif /* __KCS_BMC_H__ */
diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index a140203c079b..6451a8af2664 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -203,16 +203,6 @@ static void aspeed_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
 	}
 }
 
-static irqreturn_t aspeed_kcs_irq(int irq, void *arg)
-{
-	struct kcs_bmc *kcs_bmc = arg;
-
-	if (!kcs_bmc_handle_event(kcs_bmc))
-		return IRQ_HANDLED;
-
-	return IRQ_NONE;
-}
-
 static int aspeed_kcs_config_irq(struct kcs_bmc *kcs_bmc,
 			struct platform_device *pdev)
 {
@@ -223,7 +213,7 @@ static int aspeed_kcs_config_irq(struct kcs_bmc *kcs_bmc,
 	if (irq < 0)
 		return irq;
 
-	return devm_request_irq(dev, irq, aspeed_kcs_irq, IRQF_SHARED,
+	return devm_request_irq(dev, irq, kcs_bmc_irq, IRQF_SHARED,
 				dev_name(dev), kcs_bmc);
 }
 
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index 722f7391fe1f..f417813cf900 100644
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
@@ -108,16 +108,6 @@ static void npcm7xx_kcs_enable_channel(struct kcs_bmc *kcs_bmc, bool enable)
 			   enable ? KCS_IE_IRQE | KCS_IE_HIRQE : 0);
 }
 
-static irqreturn_t npcm7xx_kcs_irq(int irq, void *arg)
-{
-	struct kcs_bmc *kcs_bmc = arg;
-
-	if (!kcs_bmc_handle_event(kcs_bmc))
-		return IRQ_HANDLED;
-
-	return IRQ_NONE;
-}
-
 static int npcm7xx_kcs_config_irq(struct kcs_bmc *kcs_bmc,
 				  struct platform_device *pdev)
 {
@@ -128,7 +118,7 @@ static int npcm7xx_kcs_config_irq(struct kcs_bmc *kcs_bmc,
 	if (irq < 0)
 		return irq;
 
-	return devm_request_irq(dev, irq, npcm7xx_kcs_irq, IRQF_SHARED,
+	return devm_request_irq(dev, irq, kcs_bmc_irq, IRQF_SHARED,
 				dev_name(dev), kcs_bmc);
 }
 
-- 
2.30.0.478.g8a0d178c01-goog



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
