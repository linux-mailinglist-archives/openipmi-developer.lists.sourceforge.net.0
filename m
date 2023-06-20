Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB904736EC4
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Jun 2023 16:37:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qBcTs-0002VV-Ui;
	Tue, 20 Jun 2023 14:37:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1qBcTq-0002VP-IE
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Jun 2023 14:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4F3+8JIrWc3Ak0JH5Y7C9lwOKOYWBN5HX+oatKzHYhc=; b=EpKmYXxHD67O/PsYuxKUHWtydo
 h+5PKpXQE68g6Igxeezb8ZNDIP30FQouRe6Kxx9C/yx5XcPHynVXX1tWY2fzPQPcOV+/+T3SIgR/N
 Q2bh6CrVtDd4KfDm32a/HcVs+QISCN0Ue3wn45WgQaY66wm8BW36rPx8s5scYx+5D78A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4F3+8JIrWc3Ak0JH5Y7C9lwOKOYWBN5HX+oatKzHYhc=; b=Z
 1OerouIu/6KibZSE8zBPC0TRmTk0T5IeShSl5adLM3wDCMefErSWD7Xm6G/7RPh1PoI/H3YohfW4J
 5Ud0q2bFRNvvYgJscnzXJdStb39QXn5UbGrM1XIa0xvZSGUcts8rT0hPfHaKCpnyu/LI9DMHfPATS
 B5ODmFDYja+jcJNQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBcTp-0003Do-76 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Jun 2023 14:37:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C66BC6127D;
 Tue, 20 Jun 2023 14:37:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5E8AC433C0;
 Tue, 20 Jun 2023 14:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1687271827;
 bh=xbu9l18ogaQhPDGquwWb+KtRsIUkpWzgRakje7PITDA=;
 h=From:To:Cc:Subject:Date:From;
 b=d81hcfU4edxoMkcKUo4T4gUKAZ37YRIEdyQXZtjtOxWWfMh0/ajMJDGpHmvd+wPZ+
 FPyqWkvA9JsCsT3vNGxOYPHFj8ALIuCUQPyOhvr5a8x85uh62juI7w7F/zrIJ3P3y4
 3At4GqF3M27SsZ6IeF2U1pbZT4XkaQ3ZHEBTPBf0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: minyard@acm.org
Date: Tue, 20 Jun 2023 16:37:02 +0200
Message-ID: <20230620143701.577657-2-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3020;
 i=gregkh@linuxfoundation.org; h=from:subject;
 bh=a4xcYV0fvsjCWQlXBXjb8iizMDRF8ihdB423Fz28XNo=;
 b=owGbwMvMwCRo6H6F97bub03G02pJDCkTd/ZeeRLhcGODp/SKOKvmG2Kx6e5GdvNqbrvOnDddw
 J+xdQJHRywLgyATg6yYIsuXbTxH91ccUvQytD0NM4eVCWQIAxenAExEo5lhwbEjepPsXk4Nfals
 r3vQde+DwN28kxnmaW0vzogTW1V7/pjp++/zL/VuP9HLCgA=
X-Developer-Key: i=gregkh@linuxfoundation.org; a=openpgp;
 fpr=F4B60CC5BF78C2214A313DCB3147D40DDB2DFB29
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Ivan Orlov <ivan.orlov0322@gmail.com> Now that the
 driver
 core allows for struct class to be in read-only memory, move the ipmi_class
 structure to be declared at build time placing it into read-only memory,
 instead of having to be dynamic [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qBcTp-0003Do-76
Subject: [Openipmi-developer] [PATCH] ipmi: make ipmi_class a static const
 structure
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net,
 Ivan Orlov <ivan.orlov0322@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Ivan Orlov <ivan.orlov0322@gmail.com>

Now that the driver core allows for struct class to be in read-only
memory, move the ipmi_class structure to be declared at build time
placing it into read-only memory, instead of having to be dynamically
allocated at boot time.

Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ivan Orlov <ivan.orlov0322@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/char/ipmi/ipmi_devintf.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_devintf.c b/drivers/char/ipmi/ipmi_devintf.c
index 73e5a9e28f85..332082e02ea5 100644
--- a/drivers/char/ipmi/ipmi_devintf.c
+++ b/drivers/char/ipmi/ipmi_devintf.c
@@ -807,7 +807,9 @@ struct ipmi_reg_list {
 static LIST_HEAD(reg_list);
 static DEFINE_MUTEX(reg_list_mutex);
 
-static struct class *ipmi_class;
+static const struct class ipmi_class = {
+	.name = "ipmi",
+};
 
 static void ipmi_new_smi(int if_num, struct device *device)
 {
@@ -822,7 +824,7 @@ static void ipmi_new_smi(int if_num, struct device *device)
 	entry->dev = dev;
 
 	mutex_lock(&reg_list_mutex);
-	device_create(ipmi_class, device, dev, NULL, "ipmi%d", if_num);
+	device_create(&ipmi_class, device, dev, NULL, "ipmi%d", if_num);
 	list_add(&entry->link, &reg_list);
 	mutex_unlock(&reg_list_mutex);
 }
@@ -840,7 +842,7 @@ static void ipmi_smi_gone(int if_num)
 			break;
 		}
 	}
-	device_destroy(ipmi_class, dev);
+	device_destroy(&ipmi_class, dev);
 	mutex_unlock(&reg_list_mutex);
 }
 
@@ -860,15 +862,13 @@ static int __init init_ipmi_devintf(void)
 
 	pr_info("ipmi device interface\n");
 
-	ipmi_class = class_create("ipmi");
-	if (IS_ERR(ipmi_class)) {
-		pr_err("ipmi: can't register device class\n");
-		return PTR_ERR(ipmi_class);
-	}
+	rv = class_register(&ipmi_class);
+	if (rv)
+		return rv;
 
 	rv = register_chrdev(ipmi_major, DEVICE_NAME, &ipmi_fops);
 	if (rv < 0) {
-		class_destroy(ipmi_class);
+		class_unregister(&ipmi_class);
 		pr_err("ipmi: can't get major %d\n", ipmi_major);
 		return rv;
 	}
@@ -880,7 +880,7 @@ static int __init init_ipmi_devintf(void)
 	rv = ipmi_smi_watcher_register(&smi_watcher);
 	if (rv) {
 		unregister_chrdev(ipmi_major, DEVICE_NAME);
-		class_destroy(ipmi_class);
+		class_unregister(&ipmi_class);
 		pr_warn("ipmi: can't register smi watcher\n");
 		return rv;
 	}
@@ -895,11 +895,11 @@ static void __exit cleanup_ipmi(void)
 	mutex_lock(&reg_list_mutex);
 	list_for_each_entry_safe(entry, entry2, &reg_list, link) {
 		list_del(&entry->link);
-		device_destroy(ipmi_class, entry->dev);
+		device_destroy(&ipmi_class, entry->dev);
 		kfree(entry);
 	}
 	mutex_unlock(&reg_list_mutex);
-	class_destroy(ipmi_class);
+	class_unregister(&ipmi_class);
 	ipmi_smi_watcher_unregister(&smi_watcher);
 	unregister_chrdev(ipmi_major, DEVICE_NAME);
 }
-- 
2.41.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
