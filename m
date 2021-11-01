Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D43EC44247A
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 01:04:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhhIN-0003tM-1u; Tue, 02 Nov 2021 00:04:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@intel.com>) id 1mhgZV-0005sX-FX
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:18:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eReVn3AaVTRBoQGa4p+kjyA9jSJ2mKjLYiJCQGw8GgQ=; b=lELJLff2yZp+wW/aj99wrH0svd
 EJfXP+VcdhARwcj3ZPeAiA6gKcz+e4YHxeUjyboN+HAiWLFQCO5w3sMSL1O37Em8+gFS5FmhzJPaS
 BQfmKkxklwd+fBECO6U3knbC8TE8lyLJgUV+cAl+NiXXkARXz/atO5OUF40+5GAH2FtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eReVn3AaVTRBoQGa4p+kjyA9jSJ2mKjLYiJCQGw8GgQ=; b=HbeIi9uqaCnBsHGxqZxq0b2U96
 WQso+uZX+3NcV4ZhUrC7oXueE/xycMM89MZ8dkd9SjOoCKGAUXx9+FsVVLX/75gqUl6nVm7brl/1s
 wmJLleppLkwlWO3zijOhfFLmkA3mqmGKjWUltbMNfL1wZUewXb3wE2iaH7ahXIgU69/k=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhgZU-00DBgH-TL
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:18:33 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211196467"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="211196467"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="727670714"
Received: from maru.jf.intel.com ([10.54.51.77])
 by fmsmga005.fm.intel.com with ESMTP; 01 Nov 2021 16:18:24 -0700
From: jae.hyun.yoo@intel.com
To: Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Date: Mon,  1 Nov 2021 16:37:51 -0700
Message-Id: <20211101233751.49222-5-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> If LPC KCS
 driver is registered ahead of lpc-ctrl module, LPC KCS block will be enabled
 without heart beating of LCLK until lpc-ctrl enables the LCLK. This issue
 causes improper handling on host inter [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mhgZU-00DBgH-TL
X-Mailman-Approved-At: Tue, 02 Nov 2021 00:04:53 +0000
Subject: [Openipmi-developer] [PATCH -next 4/4] ipmi: kcs_bmc_aspeed: add
 clock control logic
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

If LPC KCS driver is registered ahead of lpc-ctrl module, LPC
KCS block will be enabled without heart beating of LCLK until
lpc-ctrl enables the LCLK. This issue causes improper handling on
host interrupts when the host sends interrupts in that time frame.
Then kernel eventually forcibly disables the interrupt with
dumping stack and printing a 'nobody cared this irq' message out.

To prevent this issue, all LPC sub drivers should enable LCLK
individually so this patch adds clock control logic into the LPC
KCS driver.

Fixes: be2ed207e374 ("ipmi: add an Aspeed KCS IPMI BMC driver")
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 92a37b33494c..00706472cc4d 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -6,6 +6,7 @@
 #define pr_fmt(fmt) "aspeed-kcs-bmc: " fmt
 
 #include <linux/atomic.h>
+#include <linux/clk.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
@@ -126,6 +127,8 @@ struct aspeed_kcs_bmc {
 		bool remove;
 		struct timer_list timer;
 	} obe;
+
+	struct clk *clk;
 };
 
 struct aspeed_kcs_of_ops {
@@ -620,24 +623,37 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
+	priv->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		rc = PTR_ERR(priv->clk);
+		if (rc != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Couldn't get clock\n");
+		return rc;
+	}
+	rc = clk_prepare_enable(priv->clk);
+	if (rc) {
+		dev_err(&pdev->dev, "Couldn't enable clock\n");
+		return rc;
+	}
+
 	spin_lock_init(&priv->obe.lock);
 	priv->obe.remove = false;
 	timer_setup(&priv->obe.timer, aspeed_kcs_check_obe, 0);
 
 	rc = aspeed_kcs_set_address(kcs_bmc, addrs, nr_addrs);
 	if (rc)
-		return rc;
+		goto err;
 
 	/* Host to BMC IRQ */
 	rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
 	if (rc)
-		return rc;
+		goto err;
 
 	/* BMC to Host IRQ */
 	if (have_upstream_irq) {
 		rc = aspeed_kcs_config_upstream_irq(priv, upstream_irq[0], upstream_irq[1]);
 		if (rc < 0)
-			return rc;
+			goto err;
 	} else {
 		priv->upstream_irq.mode = aspeed_kcs_irq_none;
 	}
@@ -650,13 +666,19 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	rc = kcs_bmc_add_device(&priv->kcs_bmc);
 	if (rc) {
 		dev_warn(&pdev->dev, "Failed to register channel %d: %d\n", kcs_bmc->channel, rc);
-		return rc;
+		goto err;
 	}
 
 	dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
 			kcs_bmc->channel, addrs[0]);
 
 	return 0;
+
+err:
+	aspeed_kcs_enable_channel(kcs_bmc, false);
+	clk_disable_unprepare(priv->clk);
+
+	return rc;
 }
 
 static int aspeed_kcs_remove(struct platform_device *pdev)
@@ -664,6 +686,7 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
 	struct aspeed_kcs_bmc *priv = platform_get_drvdata(pdev);
 	struct kcs_bmc_device *kcs_bmc = &priv->kcs_bmc;
 
+	clk_disable_unprepare(priv->clk);
 	kcs_bmc_remove_device(kcs_bmc);
 
 	aspeed_kcs_enable_channel(kcs_bmc, false);
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
