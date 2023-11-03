Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 901017E0394
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzr-0001jJ-6C;
	Fri, 03 Nov 2023 13:13:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynll-0005mP-Iu
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2O/2ScZ3CygF88mlMVLZxyoGI2VWLFlNiAqo0wuDir4=; b=e8LfJWzgIqOVi2krZZzdtP1hPa
 WUEoMpECxfGxIsnoBwU86F0gZcSfYFN7QbaJ7DR3ffnqu2nCtGx/EesQb4zXOBGL0dgShgT4wwCNP
 WjpVkODuMzbAfbGj2oDnejELVLE+ONoJEu69hRe93vZzE8ehZ+fjCXFNy3dvvsZuqTaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2O/2ScZ3CygF88mlMVLZxyoGI2VWLFlNiAqo0wuDir4=; b=Vij/1/xnoX2GPA/hZQNHWmjdUW
 Q9hDRU5TKDxbGJHJ5/4Cg/lyhWV2/rVFGkETTzRvKql3aRxps36beWvHAX3847jsOy4O7wUmhwdTf
 c9IuwHdRLrIwXmlymAqik5Nj9ahSvYDAewW2YPiQitkZJcXI66i94hBzbKC9Cvvfxx+8=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlg-001qW4-0f for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:59 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id C388F20237;
 Fri,  3 Nov 2023 14:15:41 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992142;
 bh=2O/2ScZ3CygF88mlMVLZxyoGI2VWLFlNiAqo0wuDir4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AcFz9XeOEs1SJu6NZFof4sNJOFcXmYH7pSl9+PpGrtirABF4TXEE8e2cEI6KuyaUX
 l7n+TRiBmY0MmbMwg4ckH+EyzEavC8pTjH5XouUHEZtp4oXWzz/hrPpv+kNoJtNLvC
 sF2+WQYeymOHy+v3Z4ZXeADLh1Pp7gjx3N0EaKlXCFRtHQ/Ds6dmZtNoNCqSEXb6dD
 OmIY4hYYqe1MjHD99SHAaA24wMmfYwmDLyQWzsljnutWaomeYGZOWmWxK2xdkyf3wL
 5hF2MI/2qYFDqYLJsfRmX7SXRob/NPPy2tt/VgRU5/CF6xpZoKnqg1usCfDk52o89g
 xF1JAfsXlGn1g==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:18 +1030
Message-Id: <20231103061522.1268637-7-andrew@codeconstruct.com.au>
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
 Content preview: Consolidate several necessary allocations into one to reduce
 the number of possible error paths. Signed-off-by: Andrew Jeffery
 <andrew@codeconstruct.com.au>
 --- drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 25 ++++++++ 1 file changed, 8
 insertions(+), 17 deletions(-) 
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
X-Headers-End: 1qynlg-001qW4-0f
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:55 +0000
Subject: [Openipmi-developer] [PATCH 06/10] ipmi: kcs_bmc: Integrate buffers
 into driver struct
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

Consolidate several necessary allocations into one to reduce the number
of possible error paths.

Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
---
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 25 ++++++++-----------------
 1 file changed, 8 insertions(+), 17 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 712a80c27060..45ac930172ec 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -66,6 +66,10 @@ enum kcs_ipmi_errors {
 	KCS_UNSPECIFIED_ERROR       = 0xFF
 };
 
+#define DEVICE_NAME "ipmi-kcs"
+#define KCS_MSG_BUFSIZ    1000
+#define KCS_ZERO_DATA     0
+
 struct kcs_bmc_ipmi {
 	struct list_head entry;
 
@@ -79,24 +83,18 @@ struct kcs_bmc_ipmi {
 	wait_queue_head_t queue;
 	bool data_in_avail;
 	int  data_in_idx;
-	u8  *data_in;
+	u8   data_in[KCS_MSG_BUFSIZ];
 
 	int  data_out_idx;
 	int  data_out_len;
-	u8  *data_out;
+	u8   data_out[KCS_MSG_BUFSIZ];
 
 	struct mutex mutex;
-	u8 *kbuffer;
+	u8 kbuffer[KCS_MSG_BUFSIZ];
 
 	struct miscdevice miscdev;
 };
 
-#define DEVICE_NAME "ipmi-kcs"
-
-#define KCS_MSG_BUFSIZ    1000
-
-#define KCS_ZERO_DATA     0
-
 /* IPMI 2.0 - Table 9-1, KCS Interface Status Register Bits */
 #define KCS_STATUS_STATE(state) (state << 6)
 #define KCS_STATUS_STATE_MASK   GENMASK(7, 6)
@@ -478,19 +476,15 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
 
 	spin_lock_init(&priv->lock);
 	mutex_init(&priv->mutex);
-
 	init_waitqueue_head(&priv->queue);
 
 	priv->client.dev = kcs_bmc;
 	priv->client.ops = &kcs_bmc_ipmi_client_ops;
-	priv->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	priv->data_out = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	priv->kbuffer = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 
 	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
 	priv->miscdev.name = devm_kasprintf(kcs_bmc->dev, GFP_KERNEL, "%s%u", DEVICE_NAME,
 					   kcs_bmc->channel);
-	if (!priv->data_in || !priv->data_out || !priv->kbuffer || !priv->miscdev.name)
+	if (!priv->miscdev.name)
 		return -EINVAL;
 
 	priv->miscdev.fops = &kcs_bmc_ipmi_fops;
@@ -529,9 +523,6 @@ static void kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 
 	misc_deregister(&priv->miscdev);
 	kcs_bmc_disable_device(&priv->client);
-	devm_kfree(kcs_bmc->dev, priv->kbuffer);
-	devm_kfree(kcs_bmc->dev, priv->data_out);
-	devm_kfree(kcs_bmc->dev, priv->data_in);
 	devm_kfree(kcs_bmc->dev, priv);
 }
 
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
