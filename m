Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6732450A4C7
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 Apr 2022 17:57:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nhZBS-0005Ef-VA; Thu, 21 Apr 2022 15:57:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <yuzhe@nfschina.com>) id 1nhYRR-0007NG-TL
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Apr 2022 15:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nXHUsu74kFMIzZwwMn+gQMYbHmBbZvGgXgEoIn5VDX0=; b=LOsHi+DmT2I27TA/INTUGGi4ZQ
 kwwmnqvp7LhRCiy4ah0lJQiDw+i2bpV1BoYso4w1jdiHKDVfdHr9tCoJj+dHQOBOMa4qKOrvbIsCs
 +dDvZn5Z78wpLfQK1vQhLV8h5ChPrlf/KjRZ1REt9UAGEZqPwXhihKm6HuyGb9z+ik1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nXHUsu74kFMIzZwwMn+gQMYbHmBbZvGgXgEoIn5VDX0=; b=R
 mPWr27QUcsIcPE+M/YDvvEGivAOfBRQtOPjc3afzOI5GP+2U3TvYh9S0sQ+dvRueN3wUKMvpHZZKf
 do9rzUr50edbU2rg+EDenCroN+9cVFSmBq1eV+L5nydfkrXqXnGLk2kxwE0XdnFR2J8TFBDlxfhsU
 IL3cXh8sXV548Tao=;
Received: from mail.nfschina.com ([124.16.136.209] helo=ha.nfschina.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nhYRP-0003KT-73
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Apr 2022 15:09:56 +0000
Received: from localhost (unknown [127.0.0.1])
 by ha.nfschina.com (Postfix) with ESMTP id F09491E80D0B;
 Thu, 21 Apr 2022 23:07:14 +0800 (CST)
X-Virus-Scanned: amavisd-new at test.com
Received: from ha.nfschina.com ([127.0.0.1])
 by localhost (ha.nfschina.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BJ2ut5KzTnUR; Thu, 21 Apr 2022 23:07:12 +0800 (CST)
Received: from ubuntu.localdomain (unknown [101.228.255.56])
 (Authenticated sender: yuzhe@nfschina.com)
 by ha.nfschina.com (Postfix) with ESMTPA id 013811E80CF9;
 Thu, 21 Apr 2022 23:07:11 +0800 (CST)
From: Yu Zhe <yuzhe@nfschina.com>
To: minyard@acm.org
Date: Thu, 21 Apr 2022 08:09:41 -0700
Message-Id: <20220421150941.7659-1-yuzhe@nfschina.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  remove unnecessary void* type castings. Signed-off-by: Yu
 Zhe <yuzhe@nfschina.com> --- drivers/char/ipmi/ipmi_msghandler.c | 6 +++---
 drivers/char/ipmi/ipmi_ssif.c | 6 +++--- 2 files changed, 6 insertions(+),
 6 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1nhYRP-0003KT-73
X-Mailman-Approved-At: Thu, 21 Apr 2022 15:57:28 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: remove unnecessary type castings
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
Cc: liqiong@nfschina.com, Yu Zhe <yuzhe@nfschina.com>,
 openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

remove unnecessary void* type castings.

Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 6 +++---
 drivers/char/ipmi/ipmi_ssif.c       | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c59265146e9c..6e6aee19c39d 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2296,7 +2296,7 @@ static int i_ipmi_request(struct ipmi_user     *user,
 	recv_msg->user_msg_data = user_msg_data;
 
 	if (supplied_smi)
-		smi_msg = (struct ipmi_smi_msg *) supplied_smi;
+		smi_msg = supplied_smi;
 	else {
 		smi_msg = ipmi_alloc_smi_msg();
 		if (smi_msg == NULL) {
@@ -3989,7 +3989,7 @@ static int handle_ipmb_direct_rcv_rsp(struct ipmi_smi *intf,
 	struct ipmi_recv_msg *recv_msg;
 	struct ipmi_ipmb_direct_addr *daddr;
 
-	recv_msg = (struct ipmi_recv_msg *) msg->user_data;
+	recv_msg = msg->user_data;
 	if (recv_msg == NULL) {
 		dev_warn(intf->si_dev,
 			 "IPMI message received with no owner. This could be because of a malformed message, or because of a hardware error.  Contact your hardware vendor for assistance.\n");
@@ -4407,7 +4407,7 @@ static int handle_bmc_rsp(struct ipmi_smi *intf,
 	struct ipmi_recv_msg *recv_msg;
 	struct ipmi_system_interface_addr *smi_addr;
 
-	recv_msg = (struct ipmi_recv_msg *) msg->user_data;
+	recv_msg = msg->user_data;
 	if (recv_msg == NULL) {
 		dev_warn(intf->si_dev,
 			 "IPMI message received with no owner. This could be because of a malformed message, or because of a hardware error.  Contact your hardware vendor for assistance.\n");
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index f199cc194844..e8ee195a33cf 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1053,7 +1053,7 @@ static void start_next_msg(struct ssif_info *ssif_info, unsigned long *flags)
 static void sender(void                *send_info,
 		   struct ipmi_smi_msg *msg)
 {
-	struct ssif_info *ssif_info = (struct ssif_info *) send_info;
+	struct ssif_info *ssif_info = send_info;
 	unsigned long oflags, *flags;
 
 	BUG_ON(ssif_info->waiting_msg);
@@ -1090,7 +1090,7 @@ static int get_smi_info(void *send_info, struct ipmi_smi_info *data)
  */
 static void request_events(void *send_info)
 {
-	struct ssif_info *ssif_info = (struct ssif_info *) send_info;
+	struct ssif_info *ssif_info = send_info;
 	unsigned long oflags, *flags;
 
 	if (!ssif_info->has_event_buffer)
@@ -1107,7 +1107,7 @@ static void request_events(void *send_info)
  */
 static void ssif_set_need_watch(void *send_info, unsigned int watch_mask)
 {
-	struct ssif_info *ssif_info = (struct ssif_info *) send_info;
+	struct ssif_info *ssif_info = send_info;
 	unsigned long oflags, *flags;
 	long timeout = 0;
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
