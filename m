Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8285E6385
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Sep 2022 15:25:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1obMCp-0002lE-9u;
	Thu, 22 Sep 2022 13:25:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <xiujianfeng@huawei.com>) id 1obKIU-0006Fq-Fm
 for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 11:23:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7aRKbYACRs3sS/4MiIwF6zrdLoorQvRyqiiLiftlyBg=; b=fkipVc1vdDrujc7QIhCygSbz2k
 Qxs5Qck9Yqdd2YGAdpt/u+7VADZ9hdMTCzDr1+YdGvl9TUr0FAEigW/8X5ZpRvbMYDRCEoqel4jIL
 6Xep/HsFVsQX1d5YeM9o30q1RofVEo2n55kGhATzDoU53k9a1xrgBBUeeOLvmBHX6aRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7aRKbYACRs3sS/4MiIwF6zrdLoorQvRyqiiLiftlyBg=; b=V
 dlAP4rCav6MNpJ50Gk4ZLiKXL7T0Bbxsw4RPW94VZtIJuRfY/vI1eFzSG11mO6HiIqbjPHsN2DZdT
 CxIk9rtTdpk66My9ZTsBksZG2DjCRw7/yA08RUjSG//cvpSfYOQi0/hqFzSFAosvLllSj9n5+uXWD
 JTsUNfImJBsXTle0=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1obKIR-0000Kj-Nr for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 11:23:14 +0000
Received: from dggpeml500023.china.huawei.com (unknown [172.30.72.55])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4MYCSt1Y9zzMpQD;
 Thu, 22 Sep 2022 19:18:22 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.58) by
 dggpeml500023.china.huawei.com (7.185.36.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 19:23:04 +0800
To: <minyard@acm.org>
Date: Thu, 22 Sep 2022 19:19:24 +0800
Message-ID: <20220922111924.36044-1-xiujianfeng@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.58]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpeml500023.china.huawei.com (7.185.36.114)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add missing __init/__exit annotations to module init/exit
 funcs. Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com> ---
 drivers/char/ipmi/ipmi_ssif.c
 | 4 ++-- drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 4 ++--
 drivers/char/ipmi/kcs_bmc_serio.c | 4 ++-- 3 files change [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1obKIR-0000Kj-Nr
X-Mailman-Approved-At: Thu, 22 Sep 2022 13:25:29 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Add __init/__exit annotations to
 module init/exit funcs
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
From: Xiu Jianfeng via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Xiu Jianfeng <xiujianfeng@huawei.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Add missing __init/__exit annotations to module init/exit funcs.

Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com>
---
 drivers/char/ipmi/ipmi_ssif.c         | 4 ++--
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 4 ++--
 drivers/char/ipmi/kcs_bmc_serio.c     | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 13da021e7c6b..e1072809fe31 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -2098,7 +2098,7 @@ static struct platform_driver ipmi_driver = {
 	.id_table       = ssif_plat_ids
 };
 
-static int init_ipmi_ssif(void)
+static int __init init_ipmi_ssif(void)
 {
 	int i;
 	int rv;
@@ -2140,7 +2140,7 @@ static int init_ipmi_ssif(void)
 }
 module_init(init_ipmi_ssif);
 
-static void cleanup_ipmi_ssif(void)
+static void __exit cleanup_ipmi_ssif(void)
 {
 	if (!initialized)
 		return;
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index 486834a962c3..cf670e891966 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -548,7 +548,7 @@ static struct kcs_bmc_driver kcs_bmc_ipmi_driver = {
 	.ops = &kcs_bmc_ipmi_driver_ops,
 };
 
-static int kcs_bmc_ipmi_init(void)
+static int __init kcs_bmc_ipmi_init(void)
 {
 	kcs_bmc_register_driver(&kcs_bmc_ipmi_driver);
 
@@ -556,7 +556,7 @@ static int kcs_bmc_ipmi_init(void)
 }
 module_init(kcs_bmc_ipmi_init);
 
-static void kcs_bmc_ipmi_exit(void)
+static void __exit kcs_bmc_ipmi_exit(void)
 {
 	kcs_bmc_unregister_driver(&kcs_bmc_ipmi_driver);
 }
diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
index 7e2067628a6c..1793358be782 100644
--- a/drivers/char/ipmi/kcs_bmc_serio.c
+++ b/drivers/char/ipmi/kcs_bmc_serio.c
@@ -140,7 +140,7 @@ static struct kcs_bmc_driver kcs_bmc_serio_driver = {
 	.ops = &kcs_bmc_serio_driver_ops,
 };
 
-static int kcs_bmc_serio_init(void)
+static int __init kcs_bmc_serio_init(void)
 {
 	kcs_bmc_register_driver(&kcs_bmc_serio_driver);
 
@@ -148,7 +148,7 @@ static int kcs_bmc_serio_init(void)
 }
 module_init(kcs_bmc_serio_init);
 
-static void kcs_bmc_serio_exit(void)
+static void __exit kcs_bmc_serio_exit(void)
 {
 	kcs_bmc_unregister_driver(&kcs_bmc_serio_driver);
 }
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
