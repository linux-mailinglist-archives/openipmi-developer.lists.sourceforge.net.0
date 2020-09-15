Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33264286725
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEBx-0007yk-Jg; Wed, 07 Oct 2020 18:29:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tian.xianting@h3c.com>) id 1kI5lY-000462-Ag
 for openipmi-developer@lists.sourceforge.net; Tue, 15 Sep 2020 07:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EC87/8GqoMwiCMb8qd3n0Wv5VrKL7f1jrFOOqabGSOg=; b=ayfTNa5Nn+Eyuc++p1a+GO7mPk
 jXFixR0SvGit+9okgY1jRhbCDZlDGpkyWzA9eVZDAZEJLznV+uGHpzncx7sNA4XOZr40qZL3wgBMx
 XYV7/Ke/FogNA7AZ7FolNzpB8VWEM3l1Z4G3olHtrBP1hDa/Hi2m2HUpJOZ8etSZXXQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EC87/8GqoMwiCMb8qd3n0Wv5VrKL7f1jrFOOqabGSOg=; b=F
 cjHW3vEQPpYZzqghBn6MzjwZPsWZe0HwUDpZ7Q10pstMFnPuXy3tc77OgTNTu5br5OR2TYED5NpiV
 e0PhMGNe+P7S4jiNyXnlsb3SBw9QflXfbedhBMpyvUqEwV/l96yAxAKyJIaIH8vB1krLtiCXY4xOk
 48Vpf/NRSE173ID0=;
Received: from smtp.h3c.com ([60.191.123.50] helo=h3cspam02-ex.h3c.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kI5lP-009cDW-9H
 for openipmi-developer@lists.sourceforge.net; Tue, 15 Sep 2020 07:52:40 +0000
Received: from DAG2EX03-BASE.srv.huawei-3com.com ([10.8.0.66])
 by h3cspam02-ex.h3c.com with ESMTPS id 08F7pZd1007266
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 15 Sep 2020 15:51:35 +0800 (GMT-8)
 (envelope-from tian.xianting@h3c.com)
Received: from localhost.localdomain (10.99.212.201) by
 DAG2EX03-BASE.srv.huawei-3com.com (10.8.0.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Sep 2020 15:51:38 +0800
From: Xianting Tian <tian.xianting@h3c.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>
Date: Tue, 15 Sep 2020 15:44:41 +0800
Message-ID: <20200915074441.4090-1-tian.xianting@h3c.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.99.212.201]
X-ClientProxiedBy: BJSMTP02-EX.srv.huawei-3com.com (10.63.20.133) To
 DAG2EX03-BASE.srv.huawei-3com.com (10.8.0.66)
X-DNSRBL: 
X-MAIL: h3cspam02-ex.h3c.com 08F7pZd1007266
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kI5lP-009cDW-9H
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:26 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: print current state when error
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
Cc: Xianting Tian <tian.xianting@h3c.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Print current state before returning IPMI_NOT_IN_MY_STATE_ERR,
we can know where this issue is coming from and possibly fix
the state machine.

Signed-off-by: Xianting Tian <tian.xianting@h3c.com>
---
 drivers/char/ipmi/ipmi_bt_sm.c   | 4 +++-
 drivers/char/ipmi/ipmi_kcs_sm.c  | 4 +++-
 drivers/char/ipmi/ipmi_smic_sm.c | 4 +++-
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_bt_sm.c b/drivers/char/ipmi/ipmi_bt_sm.c
index f3f216cdf..2de0c6c30 100644
--- a/drivers/char/ipmi/ipmi_bt_sm.c
+++ b/drivers/char/ipmi/ipmi_bt_sm.c
@@ -213,8 +213,10 @@ static int bt_start_transaction(struct si_sm_data *bt,
 	if (bt->state == BT_STATE_LONG_BUSY)
 		return IPMI_NODE_BUSY_ERR;
 
-	if (bt->state != BT_STATE_IDLE)
+	if (bt->state != BT_STATE_IDLE) {
+		dev_warn(bt->io->dev, "BT is now in the state %d\n", bt->state);
 		return IPMI_NOT_IN_MY_STATE_ERR;
+	}
 
 	if (bt_debug & BT_DEBUG_MSG) {
 		dev_dbg(bt->io->dev, "+++++++++++++++++ New command\n");
diff --git a/drivers/char/ipmi/ipmi_kcs_sm.c b/drivers/char/ipmi/ipmi_kcs_sm.c
index 2e7cda08b..49ece4ba3 100644
--- a/drivers/char/ipmi/ipmi_kcs_sm.c
+++ b/drivers/char/ipmi/ipmi_kcs_sm.c
@@ -268,8 +268,10 @@ static int start_kcs_transaction(struct si_sm_data *kcs, unsigned char *data,
 	if (size > MAX_KCS_WRITE_SIZE)
 		return IPMI_REQ_LEN_EXCEEDED_ERR;
 
-	if ((kcs->state != KCS_IDLE) && (kcs->state != KCS_HOSED))
+	if ((kcs->state != KCS_IDLE) && (kcs->state != KCS_HOSED)) {
+		printk(KERN_WARNING, "KCS is now in the state %d\n", kcs->state);
 		return IPMI_NOT_IN_MY_STATE_ERR;
+	}
 
 	if (kcs_debug & KCS_DEBUG_MSG) {
 		printk(KERN_DEBUG "start_kcs_transaction -");
diff --git a/drivers/char/ipmi/ipmi_smic_sm.c b/drivers/char/ipmi/ipmi_smic_sm.c
index b6225bba2..690d4f53e 100644
--- a/drivers/char/ipmi/ipmi_smic_sm.c
+++ b/drivers/char/ipmi/ipmi_smic_sm.c
@@ -126,8 +126,10 @@ static int start_smic_transaction(struct si_sm_data *smic,
 	if (size > MAX_SMIC_WRITE_SIZE)
 		return IPMI_REQ_LEN_EXCEEDED_ERR;
 
-	if ((smic->state != SMIC_IDLE) && (smic->state != SMIC_HOSED))
+	if ((smic->state != SMIC_IDLE) && (smic->state != SMIC_HOSED)) {
+		printk(KERN_WARNING, "SMIC is now in the state %d\n", smic->state);
 		return IPMI_NOT_IN_MY_STATE_ERR;
+	}
 
 	if (smic_debug & SMIC_DEBUG_MSG) {
 		printk(KERN_DEBUG "start_smic_transaction -");
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
