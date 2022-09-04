Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 183AB5AC484
	for <lists+openipmi-developer@lfdr.de>; Sun,  4 Sep 2022 15:35:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oUpmj-0000Ud-A1;
	Sun, 04 Sep 2022 13:35:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1oUpmh-0000UX-Nu
 for openipmi-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 13:35:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mz44jnjCf5vsQfgaMyXeZON5YAFfly33Rco0s1t5dxk=; b=T56a8VxWj+/xesNiy6Y4CdUeaw
 8WXxPhUmibAWI7bgxqdmtXRKaSQQSvxYJPCXnGBEhOFmwXhEeygXyxLyq9XiboL29QgPwPN9Mtb8P
 Smbn5rexltNRUG/E/DfjGLKY5xM6muqpJty69dMq28q6CEpEgpYlIGTlgL7rGlW52EBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mz44jnjCf5vsQfgaMyXeZON5YAFfly33Rco0s1t5dxk=; b=T
 BkpT1cEYSG/RgJrxGF8NXInd0VoGgH+OPp4eBQhUNdKrhfysjK/HV0WEYaFUGt9STQmthvMtm5OpV
 9+w6Xr69hHFOmNdAPesC1BbnUVULcyaXGe49X6+vAkmgofmU5N1JQEDIjFXsb3iixqNCcsBfUSBwc
 y0t8mPDZIbMhn3lU=;
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oUpmd-0007BU-Oe for openipmi-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 13:35:35 +0000
Received: from pop-os.home ([90.11.190.129]) by smtp.orange.fr with ESMTPA
 id UpmRocfhftUbyUpmRoyoAn; Sun, 04 Sep 2022 15:35:20 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 04 Sep 2022 15:35:20 +0200
X-ME-IP: 90.11.190.129
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Corey Minyard <minyard@acm.org>
Date: Sun,  4 Sep 2022 15:35:16 +0200
Message-Id: <5d69a2d0939ce3917c856b36ef1e41b579081be6.1662298496.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  KCS_MSG_BUFSIZ is 1000. When using devm_kmalloc(), there is
 a small memory overhead and, on most systems, this leads to 40 bytes of extra
 memory allocation. So 1040 bytes are expected to be allocated. 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.130 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oUpmd-0007BU-Oe
Subject: [Openipmi-developer] [PATCH] ipmi: kcs_bmc: Avoid wasting some
 memory.
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

KCS_MSG_BUFSIZ is 1000.

When using devm_kmalloc(), there is a small memory overhead and, on most
systems, this leads to 40 bytes of extra memory allocation.
So 1040 bytes are expected to be allocated.

The memory allocator works with fixed size hunks of memory. In this case,
it will require 2048 bytes of memory because more than 1024 bytes are
required.

So, when requesting 3 x 1000 bytes, it ends up to 2048 x 3.

In order to avoid wasting 3ko of memory, allocate buffers all at once.
3000+40 bytes will be required and 4ko allocated. This still wastes 1ko,
but it is already better.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Looking at this code, I wonder why priv->miscdev.name is not freed in
kcs_bmc_ipmi_remove_device()?

If this make sense, this also mean that KCS_MSG_BUFSIZ can be increased at
no cost.
Or it could be slightly reduce to around 1024-40-1 bytes to keep the logic
which is in place.

Another solution would be to use just kmalloc and add a
devm_add_action_or_reset() call and a function that frees the memory.
If it make sense, KCS_MSG_BUFSIZ could be increased to 1024 and we would
allocate just a little above 3x1024 bytes.
---
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 486834a962c3..15a4a39a6478 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -485,14 +485,15 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
 
 	priv->client.dev = kcs_bmc;
 	priv->client.ops = &kcs_bmc_ipmi_client_ops;
-	priv->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	priv->data_out = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	priv->kbuffer = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
+	/* Allocate buffers all at once */
+	priv->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ * 3, GFP_KERNEL);
+	priv->data_out = priv->data_in + KCS_MSG_BUFSIZ;
+	priv->kbuffer  = priv->data_in + KCS_MSG_BUFSIZ * 2;
 
 	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
 	priv->miscdev.name = devm_kasprintf(kcs_bmc->dev, GFP_KERNEL, "%s%u", DEVICE_NAME,
 					   kcs_bmc->channel);
-	if (!priv->data_in || !priv->data_out || !priv->kbuffer || !priv->miscdev.name)
+	if (!priv->data_in || !priv->miscdev.name)
 		return -EINVAL;
 
 	priv->miscdev.fops = &kcs_bmc_ipmi_fops;
@@ -531,8 +532,6 @@ static int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
 
 	misc_deregister(&priv->miscdev);
 	kcs_bmc_disable_device(priv->client.dev, &priv->client);
-	devm_kfree(kcs_bmc->dev, priv->kbuffer);
-	devm_kfree(kcs_bmc->dev, priv->data_out);
 	devm_kfree(kcs_bmc->dev, priv->data_in);
 	devm_kfree(kcs_bmc->dev, priv);
 
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
