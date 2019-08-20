Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABF8968CB
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Aug 2019 20:55:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i09IG-00089A-5K; Tue, 20 Aug 2019 18:55:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1i09IF-000890-4a
 for openipmi-developer@lists.sourceforge.net; Tue, 20 Aug 2019 18:55:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ow9wRudit5SH1ae3eFeM+Jge6/ILIMxSFwnp3LZ0lw8=; b=lroP3SnVLUTLafcOJnaUyHMHfO
 DD09YJHX7RquQmCB8qb3XZuo9UUGUR2NsR4eGMEqigNVIfYJGK0z1cLnAxQ6BrzWauGr6lrQFpBEG
 +Atdv7k1PLbDbD02hoDjU8kqEKw0Ec+sqvEQ+8+KyQ4tLP3zORolAydf/wqI/f7bjQN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ow9wRudit5SH1ae3eFeM+Jge6/ILIMxSFwnp3LZ0lw8=; b=lkWh2sgVJekimuq3VVewLuS8PD
 crbfvasrV1O3bCXTC7G5KjJW0IU/WK7suS1TzZjUHyhQ5XHVJEwG0BZLEB3Zv+vjmDjhPsoxAN8hq
 8kkqM2LxDfsF+/8sp9eGA10OO/mRjEt2XTfHLu2kXnKBQWJ+VrkLrjsZPlN1a7xGoMtk=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i09IA-009mnU-7D
 for openipmi-developer@lists.sourceforge.net; Tue, 20 Aug 2019 18:55:43 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C18DD307D84B;
 Tue, 20 Aug 2019 18:55:32 +0000 (UTC)
Received: from dell-per430-02.klab.eng.bos.redhat.com
 (dell-per430-02.klab.eng.bos.redhat.com [10.16.160.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 654C41D9;
 Tue, 20 Aug 2019 18:55:29 +0000 (UTC)
From: Tony Camuso <tcamuso@redhat.com>
To: cminyard@mvista.com,
	openipmi-developer@lists.sourceforge.net
Date: Tue, 20 Aug 2019 14:55:29 -0400
Message-Id: <20190820185529.10662-1-tcamuso@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 20 Aug 2019 18:55:32 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1i09IA-009mnU-7D
Subject: [Openipmi-developer] Corey,
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I think this fixes the deadlock without messing up the message
sequencing.

From 144aa8c3020c72a68a57f5d1496ed9a83d013087 Mon Sep 17 00:00:00 2001
From: Tony Camuso <tcamuso@redhat.com>
Date: Tue, 20 Aug 2019 14:51:26 -0400
Subject: [PATCH] ipmi: move message error checking to avoid deadlock

In the source stack trace below, function set_need_watch tries to
take out the same si_lock that was taken earlier by ipmi_thread.

ipmi_thread() [drivers/char/ipmi/ipmi_si_intf.c:995]
 smi_event_handler() [drivers/char/ipmi/ipmi_si_intf.c:765]
  handle_transaction_done() [drivers/char/ipmi/ipmi_si_intf.c:555]
   deliver_recv_msg() [drivers/char/ipmi/ipmi_si_intf.c:283]
    ipmi_smi_msg_received() [drivers/char/ipmi/ipmi_msghandler.c:4503]
     intf_err_seq() [drivers/char/ipmi/ipmi_msghandler.c:1149]
      smi_remove_watch() [drivers/char/ipmi/ipmi_msghandler.c:999]
       set_need_watch() [drivers/char/ipmi/ipmi_si_intf.c:1066]

Upstream commit e1891cffd4c4896a899337a243273f0e23c028df adds code to
ipmi_smi_msg_received() to call smi_remove_watch() via intf_err_seq()
and this seems to be causing the deadlock.

commit e1891cffd4c4896a899337a243273f0e23c028df
Author: Corey Minyard <cminyard@mvista.com>
Date:   Wed Oct 24 15:17:04 2018 -0500
    ipmi: Make the smi watcher be disabled immediately when not needed

The fix is to put all messages in the queue and move the message
checking code out of ipmi_smi_msg_received and into handle_one_recv_msg,
which processes the message checking after ipmi_thread releases its
locks.

Reported by: Osamu Samukawa <osa-samukawa@tg.jp.nec.com>
Characterized by: Kosuke Tatsukawa <tatsu@ab.jp.nec.com>
Signed-off-by: Tony Camuso <tcamuso@redhat.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 113 ++++++++++++++++++------------------
 1 file changed, 56 insertions(+), 57 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 6707659cffd6..0a907cd62dc6 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4215,7 +4215,52 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 	int chan;
 
 	ipmi_debug_msg("Recv:", msg->rsp, msg->rsp_size);
-	if (msg->rsp_size < 2) {
+
+	if ((msg->data_size >= 2)
+	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
+	    && (msg->data[1] == IPMI_SEND_MSG_CMD)
+	    && (msg->user_data == NULL)) {
+
+		if (intf->in_shutdown)
+			goto free_msg;
+
+		/*
+		 * This is the local response to a command send, start
+		 * the timer for these.  The user_data will not be
+		 * NULL if this is a response send, and we will let
+		 * response sends just go through.
+		 */
+
+		/*
+		 * Check for errors, if we get certain errors (ones
+		 * that mean basically we can try again later), we
+		 * ignore them and start the timer.  Otherwise we
+		 * report the error immediately.
+		 */
+		if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
+		    && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
+		    && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
+		    && (msg->rsp[2] != IPMI_BUS_ERR)
+		    && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
+			int ch = msg->rsp[3] & 0xf;
+			struct ipmi_channel *chans;
+
+			/* Got an error sending the message, handle it. */
+
+			chans = READ_ONCE(intf->channel_list)->c;
+			if ((chans[ch].medium == IPMI_CHANNEL_MEDIUM_8023LAN)
+			    || (chans[ch].medium == IPMI_CHANNEL_MEDIUM_ASYNC))
+				ipmi_inc_stat(intf, sent_lan_command_errs);
+			else
+				ipmi_inc_stat(intf, sent_ipmb_command_errs);
+			intf_err_seq(intf, msg->msgid, msg->rsp[2]);
+		} else
+			/* The message was sent, start the timer. */
+			intf_start_seq_timer(intf, msg->msgid);
+free_msg:
+		ipmi_free_smi_msg(msg);
+
+	} else if (msg->rsp_size < 2) {
 		/* Message is too small to be correct. */
 		dev_warn(intf->si_dev,
 			 "BMC returned too small a message for netfn %x cmd %x, got %d bytes\n",
@@ -4472,62 +4517,16 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 	unsigned long flags = 0; /* keep us warning-free. */
 	int run_to_completion = intf->run_to_completion;
 
-	if ((msg->data_size >= 2)
-	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
-	    && (msg->data[1] == IPMI_SEND_MSG_CMD)
-	    && (msg->user_data == NULL)) {
-
-		if (intf->in_shutdown)
-			goto free_msg;
-
-		/*
-		 * This is the local response to a command send, start
-		 * the timer for these.  The user_data will not be
-		 * NULL if this is a response send, and we will let
-		 * response sends just go through.
-		 */
-
-		/*
-		 * Check for errors, if we get certain errors (ones
-		 * that mean basically we can try again later), we
-		 * ignore them and start the timer.  Otherwise we
-		 * report the error immediately.
-		 */
-		if ((msg->rsp_size >= 3) && (msg->rsp[2] != 0)
-		    && (msg->rsp[2] != IPMI_NODE_BUSY_ERR)
-		    && (msg->rsp[2] != IPMI_LOST_ARBITRATION_ERR)
-		    && (msg->rsp[2] != IPMI_BUS_ERR)
-		    && (msg->rsp[2] != IPMI_NAK_ON_WRITE_ERR)) {
-			int ch = msg->rsp[3] & 0xf;
-			struct ipmi_channel *chans;
-
-			/* Got an error sending the message, handle it. */
-
-			chans = READ_ONCE(intf->channel_list)->c;
-			if ((chans[ch].medium == IPMI_CHANNEL_MEDIUM_8023LAN)
-			    || (chans[ch].medium == IPMI_CHANNEL_MEDIUM_ASYNC))
-				ipmi_inc_stat(intf, sent_lan_command_errs);
-			else
-				ipmi_inc_stat(intf, sent_ipmb_command_errs);
-			intf_err_seq(intf, msg->msgid, msg->rsp[2]);
-		} else
-			/* The message was sent, start the timer. */
-			intf_start_seq_timer(intf, msg->msgid);
-
-free_msg:
-		ipmi_free_smi_msg(msg);
-	} else {
-		/*
-		 * To preserve message order, we keep a queue and deliver from
-		 * a tasklet.
-		 */
-		if (!run_to_completion)
-			spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
-		list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
-		if (!run_to_completion)
-			spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
-					       flags);
-	}
+	/*
+	 * To preserve message order, we keep a queue and deliver from
+	 * a tasklet.
+	 */
+	if (!run_to_completion)
+		spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
+	list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
+	if (!run_to_completion)
+		spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
+				       flags);
 
 	if (!run_to_completion)
 		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
-- 
2.18.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
