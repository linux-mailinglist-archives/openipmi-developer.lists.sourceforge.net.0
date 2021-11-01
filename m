Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13172442476
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 01:04:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhhIM-0003sx-Fs; Tue, 02 Nov 2021 00:04:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@intel.com>) id 1mhgZV-0005oa-HJ
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yi98IsIs3k+T2Ydp3eLvHTdnAE9ypdDKuJr0Xn+i/Uw=; b=RgE1cJz1Epk7G12jxiKhfyuBJr
 Yb1xy2At8CXo4O8dp44VMvHuciJ1CG9gAjucZhRbH3ICCLii0LqoDI6PmRoBuSKVzwep2B61mL8BH
 leRMGJsB7679BJsZ5oYhRhOGkMds+DxWdHoP8QD9NOXe//i22Dg5UBEpM4Gv+A3HNAvY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yi98IsIs3k+T2Ydp3eLvHTdnAE9ypdDKuJr0Xn+i/Uw=; b=KeQTwqGF1OJxK9iDe9z7lFBlpi
 ECrW11HDP2Fp1KKNdRyqHSCy1RTg/cmbtNggvzyvZ8ZnSPL//lnsTD2gILy+Izz23IDoTt1z6Xy3b
 mOdjzqKh8Vw3IHY4celuyzyOPHwT8dHDZfTTy1oEBvVtkrQxYpWE4aXJEu9AI+qv2Rpg=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhgZT-00DBgH-Op
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:18:32 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211196464"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="211196464"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="727670708"
Received: from maru.jf.intel.com ([10.54.51.77])
 by fmsmga005.fm.intel.com with ESMTP; 01 Nov 2021 16:18:24 -0700
From: jae.hyun.yoo@intel.com
To: Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Date: Mon,  1 Nov 2021 16:37:49 -0700
Message-Id: <20211101233751.49222-3-jae.hyun.yoo@intel.com>
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
 Content preview: From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> If LPC BT
 driver is registered ahead of lpc-ctrl module, LPC BT hardware block will
 be enabled without heart beating of LCLK until lpc-ctrl enables the LCLK.
 This issue causes improper handling on hos [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mhgZT-00DBgH-Op
X-Mailman-Approved-At: Tue, 02 Nov 2021 00:04:52 +0000
Subject: [Openipmi-developer] [PATCH -next 2/4] ipmi: bt: add clock control
 logic
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

If LPC BT driver is registered ahead of lpc-ctrl module, LPC BT
hardware block will be enabled without heart beating of LCLK until
lpc-ctrl enables the LCLK. This issue causes improper handling on
host interrupts when the host sends interrupts in that time frame.
Then kernel eventually forcibly disables the interrupt with
dumping stack and printing a 'nobody cared this irq' message out.

To prevent this issue, all LPC sub drivers should enable LCLK
individually so this patch adds clock control logic into the LPC
BT driver.

Fixes: 54f9c4d0778b ("ipmi: add an Aspeed BT IPMI BMC driver")
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
 drivers/char/ipmi/bt-bmc.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index 7450904e330a..a20f92cc7b18 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -5,6 +5,7 @@
 
 #include <linux/atomic.h>
 #include <linux/bt-bmc.h>
+#include <linux/clk.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
@@ -62,6 +63,7 @@ struct bt_bmc {
 	wait_queue_head_t	queue;
 	struct timer_list	poll_timer;
 	struct mutex		mutex;
+	struct clk		*clk;
 };
 
 static atomic_t open_count = ATOMIC_INIT(0);
@@ -423,6 +425,19 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	if (IS_ERR(bt_bmc->base))
 		return PTR_ERR(bt_bmc->base);
 
+	bt_bmc->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(bt_bmc->clk)) {
+		rc = PTR_ERR(bt_bmc->clk);
+		if (rc != -EPROBE_DEFER)
+			dev_err(dev, "Unable to get clock\n");
+		return rc;
+	}
+	rc = clk_prepare_enable(bt_bmc->clk);
+	if (rc) {
+		dev_err(dev, "Unable to enable clock\n");
+		return rc;
+	}
+
 	mutex_init(&bt_bmc->mutex);
 	init_waitqueue_head(&bt_bmc->queue);
 
@@ -433,7 +448,7 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	rc = misc_register(&bt_bmc->miscdev);
 	if (rc) {
 		dev_err(dev, "Unable to register misc device\n");
-		return rc;
+		goto err;
 	}
 
 	bt_bmc_config_irq(bt_bmc, pdev);
@@ -457,6 +472,11 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	clr_b_busy(bt_bmc);
 
 	return 0;
+
+err:
+	clk_disable_unprepare(bt_bmc->clk);
+
+	return rc;
 }
 
 static int bt_bmc_remove(struct platform_device *pdev)
@@ -466,6 +486,8 @@ static int bt_bmc_remove(struct platform_device *pdev)
 	misc_deregister(&bt_bmc->miscdev);
 	if (bt_bmc->irq < 0)
 		del_timer_sync(&bt_bmc->poll_timer);
+	clk_disable_unprepare(bt_bmc->clk);
+
 	return 0;
 }
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
