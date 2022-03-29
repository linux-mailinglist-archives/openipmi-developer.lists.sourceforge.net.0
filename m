Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E724E4EB1A4
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 18:16:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZEO8-0003VX-KI; Tue, 29 Mar 2022 16:16:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nZEO7-0003VQ-8w
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UD9AGV7S0dnlaF0ygMA6XYvPffRpI5mf5hdlfJggF9s=; b=HoJ4f9P4m6/82zDaop74Dqh9Ai
 qFY7v/p0zj7hlNnIL4GdHO/pgyNnhwn6DSYF6QNQf4kTdnTuPPfhdkQ9xS3cI7/sW4uEVJijOfXSF
 injmDq6WFyqDCHhcSZ40gGZNCVGPfuDhMuPepXBmVYFEg7FzOirNH3cJSu61igRsIcv4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UD9AGV7S0dnlaF0ygMA6XYvPffRpI5mf5hdlfJggF9s=; b=AYtzwfM3jH1HqtEvdq8E4L35ZG
 XQ5GjFaZHfaiSsdkqat5pMgzv5PNCnfVGFY7TWgLbHp8W1lYa9S7lPNLtMmylQntOh1ygcflrfI4V
 rThmHjV/GAhyz7SHWpOUrgKGWHpUkh8hoaPMg4he0eROZJJUc6IOJq1vBxkILD/4iGSk=;
Received: from out162-62-57-252.mail.qq.com ([162.62.57.252])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZEVx-00Fy8T-I4
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648570564;
 bh=UD9AGV7S0dnlaF0ygMA6XYvPffRpI5mf5hdlfJggF9s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eDyUpfL05GUEAzwZsineSf8Xcnd+O6L3f00hCa7SjVD1VIWliQN3/+WR09Rb8Q+Rk
 mv8BPSaudKtrAbakgcB7HqA+df4HlJz/AnMnTxO2xZX80j88xP/N8iAYufWNiNzU6x
 AQc0Sk+vGceMSoerUugcW+ehBEimRnFCaQmjWEOs=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrsza5.qq.com (NewEsmtp) with SMTP
 id 32C96631; Wed, 30 Mar 2022 00:12:44 +0800
X-QQ-mid: xmsmtpt1648570367tm9uph8v1
Message-ID: <tencent_ADBE84293031AFCF8E409D87E2BE9B0FF507@qq.com>
X-QQ-XMAILINFO: Mv3le6n+CjtdA9uBreSmaTkKIwE+yRqjVvY7VQCyFQThKBA86m0zs41YIiLQKv
 w+FEv3g5oNGMJV8kPhmNpb4sRpPq2wttYCuI5YqL/Lp2BqtmwfhwZfEjBzNqm+6QmJVm9hzo808Q
 jz2GALOxR4HjarEpma/gN0GeGNYh25TCv+EbASISleoHb79d63XRCYLsSe74WRTKQFpy9ZzGXzbi
 JJBDjFTSranocEHnBCLep5RACPhlrMn1NdjoCyYakjQXofwuuM7dhig6nsiTsrHEM1l6g2dDLCLB
 SKhXNxvGe4YRoA2EPvg+vwkscDFHyJtj89sUyVc7XhXvdYH4eKwh95Umjs1XxLTuryGrKvtk2FyY
 i+ECGdIZ64pZThoUPFDUfod55rOip5f18NkUM5zExNHe4jEVYCdLleBckuvph8h+71zS/nJLa1Fb
 3f7nEBaoBfSBeW8t7foZMLiIWysBZriWAwMbVbTRUToe/RcMvL1EzHVrFryX/cOWdUYBeWQf+n2M
 wfM3Ru0tJawg2rxZJvnDeOXAVe+ILmFQ+f+FZQbJT6XAcOJomua2RLpD5cIfuyDbxEe7cbp8gabj
 H3TmrOhhH+RAhEn3jYDbvxxnwaPrD1CJ6tngYBqA/7fdL6DW3CudkyJ1FW91Zs+pMceWqHVndTyF
 yHHpoQxpbYvrNCqRv2L+m3U5WL4nYI4nXgyp0DzaOUCoXwrUuTEUQgnkqopu9XnOTWH/Ybwa/Nzn
 T31+Kk7DTs6Zyei9c2uYlPb4wwdLD8n0a9oTGrlNO2Fp3oCWvGuJnd6a7aHkuL3sYFQ4N0Y0UgNF
 tT7oX1yvV653q6+nD/7LjcYdVYyX8s8GbBONJuyY7PN4TWPwyLH5hBab/Q99uzilF9r50ie+cvtr
 FBJnKrIt/khfAqzecTklcJJqNteB5UGGvC8vohpR9LF2WRAdCJL0Ny+fyVITBqFauGzXYaXHbA
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Wed, 30 Mar 2022 00:12:40 +0800
X-OQ-MSGID: <20220329161242.76457-3-chen.chenchacha@foxmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329161242.76457-1-chen.chenchacha@foxmail.com>
References: <20220329161242.76457-1-chen.chenchacha@foxmail.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The administrator sets the limit for the number of messages
 by modifying /sys/module/ipmi_msghandler/parameters/default_max_msgs. Before
 create a message, count the number of outstanding messages, if the number
 reaches the limit, it will return a busy. 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [162.62.57.252 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.252 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1nZEVx-00Fy8T-I4
Subject: [Openipmi-developer] [PATCH v2 2/4] ipmi: msghandler: Add a limit
 for the number of messages
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The administrator sets the limit for the number of messages by modifying
/sys/module/ipmi_msghandler/parameters/default_max_msgs.

Before create a message, count the number of outstanding messages, if
the number reaches the limit, it will return a busy.

Signed-off-by: Chen Guanqiao <chen.chenchacha@foxmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 37 +++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 7886c8337368..80ab88702c5f 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -151,6 +151,12 @@ module_param(default_max_users, uint, 0644);
 MODULE_PARM_DESC(default_max_users,
 		 "The maximum number of users per interface");

+/* The default maximum number of outstanding messages per intf */
+static unsigned int default_max_messages = 100;
+module_param(default_max_messages, uint, 0644);
+MODULE_PARM_DESC(default_max_messages,
+		 "The maximum number of outstanding messages per interface");
+
 /* Call every ~1000 ms. */
 #define IPMI_TIMEOUT_TIME	1000

@@ -916,6 +922,30 @@ unsigned int ipmi_addr_length(int addr_type)
 }
 EXPORT_SYMBOL(ipmi_addr_length);

+static void intf_msg_count(struct ipmi_smi *intf,
+			   unsigned int *hp_count, unsigned int *count)
+{
+	struct ipmi_smi_msg *msg;
+	unsigned long flags;
+	int hp_msg_count = 0, msg_count = 0;
+	int run_to_completion = intf->run_to_completion;
+
+	if (!run_to_completion)
+		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
+	if (!intf->in_shutdown) {
+		list_for_each_entry(msg, &intf->hp_xmit_msgs, link)
+			hp_msg_count++;
+
+		list_for_each_entry(msg, &intf->xmit_msgs, link)
+			msg_count++;
+	}
+	if (!run_to_completion)
+		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
+
+	*hp_count = hp_msg_count;
+	*count = msg_count;
+}
+
 static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 {
 	int rv = 0;
@@ -2299,6 +2329,7 @@ static int i_ipmi_request(struct ipmi_user     *user,
 {
 	struct ipmi_smi_msg *smi_msg;
 	struct ipmi_recv_msg *recv_msg;
+	unsigned hp_msg_count, msg_count;
 	int rv = 0;

 	if (supplied_recv)
@@ -2330,6 +2361,12 @@ static int i_ipmi_request(struct ipmi_user     *user,
 		goto out_err;
 	}

+	intf_msg_count(intf, &hp_msg_count, &msg_count);
+	if ((hp_msg_count + msg_count) > default_max_messages) {
+		rv = -EBUSY;
+		goto out_err;
+	}
+
 	recv_msg->user = user;
 	if (user)
 		/* The put happens when the message is freed. */
--
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
