Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 144309FC7BC
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Dec 2024 03:52:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tQdyn-0007sK-A0;
	Thu, 26 Dec 2024 02:52:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <v.shevtsov@mt-integration.ru>) id 1tQBng-00080F-Be
 for openipmi-developer@lists.sourceforge.net;
 Tue, 24 Dec 2024 20:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0rLZbOqdJWBC891SyedZtieU0UMwTpfS+bRb0iPtY3Q=; b=FycFNPcAy07WEDs4uP65D564SX
 yMtklCZdn7TVhdpm7rK4TjveivDwyua+J4XjESQArzzh20oaLIqQcPiag3cNfcSlFaPV/2pfo0dYz
 I2fpRPh9CfKVUpW3UgyK8keT0IkkAwhe8tsyb47YN8ci8kObH5L9JJ3Lyg3VziNWEE9g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0rLZbOqdJWBC891SyedZtieU0UMwTpfS+bRb0iPtY3Q=; b=h
 A65lhyUfkoOC4zDZ6g73V9KrcGGGT9OR0t4FU/pFokqioymm5FQOsKBu555xcA5/lxx5xA+VfuSHg
 +NAM5gUo7DfE/CyVyzE400PzEyKjhp4La5YyNkwGuMv2MDZ+MiCdv4YMNUWZeOLjgXbOEZk7Wk7R2
 Whr9BQN1kBI+akl0=;
Received: from ksmg01.maxima.ru ([81.200.124.38])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tQBnf-0006xj-6t for openipmi-developer@lists.sourceforge.net;
 Tue, 24 Dec 2024 20:46:44 +0000
Received: from ksmg01.maxima.ru (localhost [127.0.0.1])
 by ksmg01.maxima.ru (Postfix) with ESMTP id 58961C0018;
 Tue, 24 Dec 2024 23:46:31 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 ksmg01.maxima.ru 58961C0018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maxima.ru; s=sl;
 t=1735073191; bh=0rLZbOqdJWBC891SyedZtieU0UMwTpfS+bRb0iPtY3Q=;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:From;
 b=usuRhxE0u2BZcz5nTAlORN8rCF4ASBfnbMU78sEPf37ULi7K3jR3h27/ddgVwgUYy
 rhG4/Lkgo7Ui3seXqUKknLdsSamjkSTSIvyEuqw4BndW9DkbJOmHyQxlz/5SxM6cj3
 A/p7o8o1yVfrkn+wPZv603AfXg/eO8ePTevWvC2dAW5LLZX2fxCAFowCq6Sb7TEP8H
 fcAvzQ6dxVQ4+xQuBKV67ZIQt0uts+KR+QTPA9LUBqv+72yg0FQ5+e4CgKd9SOuySr
 3O6ybumhcZTRscezKHZ8V6IMaBCVJcJKUFP6I3gi0uNsyNdnhsWF4oj+fvRDuFbmXs
 wTDs2U9YIco2A==
Received: from ksmg01.maxima.ru (mail.maxima.ru [81.200.124.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "*.maxima.ru",
 Issuer "GlobalSign GCC R3 DV TLS CA 2020" (verified OK))
 by ksmg01.maxima.ru (Postfix) with ESMTPS;
 Tue, 24 Dec 2024 23:46:31 +0300 (MSK)
Received: from localhost.maximatelecom.ru (217.116.54.35) by
 mmail-p-exch01.mt.ru (81.200.124.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.4; Tue, 24 Dec 2024 23:46:30 +0300
From: Vitaliy Shevtsov <v.shevtsov@maxima.ru>
To: Corey Minyard <minyard@acm.org>
Date: Wed, 25 Dec 2024 01:45:30 +0000
Message-ID: <20241225014532.20091-1-v.shevtsov@maxima.ru>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Originating-IP: [217.116.54.35]
X-ClientProxiedBy: mt-exch-01.mt.ru (91.220.120.210) To mmail-p-exch01.mt.ru
 (81.200.124.61)
X-KSMG-Rule-ID: 7
X-KSMG-Message-Action: clean
X-KSMG-AntiSpam-Lua-Profiles: 190045 [Dec 24 2024]
X-KSMG-AntiSpam-Version: 6.1.1.7
X-KSMG-AntiSpam-Envelope-From: v.shevtsov@mt-integration.ru
X-KSMG-AntiSpam-Rate: 0
X-KSMG-AntiSpam-Status: not_detected
X-KSMG-AntiSpam-Method: none
X-KSMG-AntiSpam-Auth: dmarc=none header.from=maxima.ru;
 spf=none smtp.mailfrom=mt-integration.ru; dkim=none
X-KSMG-AntiSpam-Info: LuaCore: 49 0.3.49
 28b3b64a43732373258a371bd1554adb2caa23cb, {rep_avail},
 {Tracking_smtp_not_equal_from}, {Tracking_from_domain_doesnt_match_to},
 mt-integration.ru:7.1.1; 81.200.124.61:7.1.2; ksmg01.maxima.ru:7.1.1;
 maxima.ru:7.1.1; d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;
 127.0.0.199:7.1.2, {Tracking_smtp_domain_mismatch},
 {Tracking_smtp_domain_2level_mismatch}, FromAlignment: n, ApMailHostAddress:
 81.200.124.61
X-MS-Exchange-Organization-SCL: -1
X-KSMG-AntiSpam-Interceptor-Info: scan successful
X-KSMG-AntiPhishing: Clean
X-KSMG-LinksScanning: Clean
X-KSMG-AntiVirus: Kaspersky Secure Mail Gateway, version 2.0.1.6960,
 bases: 2024/12/24 19:43:00 #26912424
X-KSMG-AntiVirus-Status: Clean, skipped
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Return value of ipmi_destroy_user() has no meaning, because
 it's always zero and callers can do nothing with it. And in most cases it's
 not checked. So make this function return void. This also will e [...] 
 Content analysis details:   (2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.4 DATE_IN_FUTURE_03_06   Date: is 3 to 6 hours after Received: date
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [81.200.124.38 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [81.200.124.38 listed in sa-trusted.bondedsender.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tQBnf-0006xj-6t
X-Mailman-Approved-At: Thu, 26 Dec 2024 02:52:04 +0000
Subject: [Openipmi-developer] [PATCH v2] ipmi: make ipmi_destroy_user()
 return void
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Vitaliy Shevtsov <v.shevtsov@maxima.ru>, lvc-project@linuxtesting.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Return value of ipmi_destroy_user() has no meaning, because it's always
zero and callers can do nothing with it. And in most cases it's not
checked. So make this function return void. This also will eliminate static
code analyzer warnings such as unreachable code/redundant comparison when
the return value is checked against non-zero value.

Found by Linux Verification Center (linuxtesting.org) with Svace.

Signed-off-by: Vitaliy Shevtsov <v.shevtsov@maxima.ru>
---
v2: Add changes in drivers/char/ipmi/ipmi_poweroff.c missed by chance

 drivers/char/ipmi/ipmi_devintf.c    | 5 +----
 drivers/char/ipmi/ipmi_msghandler.c | 4 +---
 drivers/char/ipmi/ipmi_poweroff.c   | 6 +-----
 drivers/char/ipmi/ipmi_watchdog.c   | 5 +----
 include/linux/ipmi.h                | 2 +-
 5 files changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_devintf.c b/drivers/char/ipmi/ipmi_devintf.c
index 332082e02ea5..e6ba35b71f10 100644
--- a/drivers/char/ipmi/ipmi_devintf.c
+++ b/drivers/char/ipmi/ipmi_devintf.c
@@ -122,12 +122,9 @@ static int ipmi_open(struct inode *inode, struct file *file)
 static int ipmi_release(struct inode *inode, struct file *file)
 {
 	struct ipmi_file_private *priv = file->private_data;
-	int                      rv;
 	struct ipmi_recv_msg *msg, *next;
 
-	rv = ipmi_destroy_user(priv->user);
-	if (rv)
-		return rv;
+	ipmi_destroy_user(priv->user);
 
 	list_for_each_entry_safe(msg, next, &priv->recv_msgs, link)
 		ipmi_free_recv_msg(msg);
diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e12b531f5c2f..1e5313748f8b 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1398,13 +1398,11 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	module_put(owner);
 }
 
-int ipmi_destroy_user(struct ipmi_user *user)
+void ipmi_destroy_user(struct ipmi_user *user)
 {
 	_ipmi_destroy_user(user);
 
 	kref_put(&user->refcount, free_user);
-
-	return 0;
 }
 EXPORT_SYMBOL(ipmi_destroy_user);
 
diff --git a/drivers/char/ipmi/ipmi_poweroff.c b/drivers/char/ipmi/ipmi_poweroff.c
index 941d2dcc8c9d..05f17e3e6207 100644
--- a/drivers/char/ipmi/ipmi_poweroff.c
+++ b/drivers/char/ipmi/ipmi_poweroff.c
@@ -699,8 +699,6 @@ static int __init ipmi_poweroff_init(void)
 #ifdef MODULE
 static void __exit ipmi_poweroff_cleanup(void)
 {
-	int rv;
-
 #ifdef CONFIG_PROC_FS
 	unregister_sysctl_table(ipmi_table_header);
 #endif
@@ -708,9 +706,7 @@ static void __exit ipmi_poweroff_cleanup(void)
 	ipmi_smi_watcher_unregister(&smi_watcher);
 
 	if (ready) {
-		rv = ipmi_destroy_user(ipmi_user);
-		if (rv)
-			pr_err("could not cleanup the IPMI user: 0x%x\n", rv);
+		ipmi_destroy_user(ipmi_user);
 		pm_power_off = old_poweroff_func;
 	}
 }
diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 335eea80054e..f1875b2bebbc 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -1064,7 +1064,6 @@ static void ipmi_register_watchdog(int ipmi_intf)
 
 static void ipmi_unregister_watchdog(int ipmi_intf)
 {
-	int rv;
 	struct ipmi_user *loc_user = watchdog_user;
 
 	if (!loc_user)
@@ -1089,9 +1088,7 @@ static void ipmi_unregister_watchdog(int ipmi_intf)
 	mutex_lock(&ipmi_watchdog_mutex);
 
 	/* Disconnect from IPMI. */
-	rv = ipmi_destroy_user(loc_user);
-	if (rv)
-		pr_warn("error unlinking from IPMI: %d\n",  rv);
+	ipmi_destroy_user(loc_user);
 
 	/* If it comes back, restart it properly. */
 	ipmi_start_timer_on_heartbeat = 1;
diff --git a/include/linux/ipmi.h b/include/linux/ipmi.h
index a1c9c0d48ebf..2f74dd90c271 100644
--- a/include/linux/ipmi.h
+++ b/include/linux/ipmi.h
@@ -126,7 +126,7 @@ int ipmi_create_user(unsigned int          if_num,
  * the users before you destroy the callback structures, it should be
  * safe, too.
  */
-int ipmi_destroy_user(struct ipmi_user *user);
+void ipmi_destroy_user(struct ipmi_user *user);
 
 /* Get the IPMI version of the BMC we are talking to. */
 int ipmi_get_version(struct ipmi_user *user,
-- 
2.47.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
