Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE53421B3E
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 02:40:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXYVe-00031i-9b; Tue, 05 Oct 2021 00:40:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mXYVa-00031N-TG
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zZHdIw09xY2Ce8uWTmloE1oO2b0NO2/EIuxcCPF/Rl8=; b=IGO6EOSj3O1Thk0yNkb1wla4rO
 h8r2tniaMDUbCnyady7hIjiQI9w26rTx74y6V87THMpxHbprNl3LdEb6+AvNxFvDPRlTvVuD85waR
 3f6dzCARuQb8VAROCpfp25Fztq9QhmB78oUcUiscUXdkGbTIN3QgLsB0k0uiy9TucotI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zZHdIw09xY2Ce8uWTmloE1oO2b0NO2/EIuxcCPF/Rl8=; b=H+HdxS6uu2gRYTLcPm/x/Gd/Fs
 HeqVzBneEJPuIKpBvHhr6jKp/LlommaGsSo3kI2wrVVaaqReswDC36t6AYrWxuP88Yyuys3y0jbgm
 +6JeMxGCwzilrEmDo2qEqUUEEN2aVJlg5mSegeDi+bH+LcMETjot6a4rXe2PavJXMbAE=;
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXYVV-005YbA-VU
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:38 +0000
Received: by mail-oi1-f178.google.com with SMTP id z11so23968239oih.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 Oct 2021 17:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zZHdIw09xY2Ce8uWTmloE1oO2b0NO2/EIuxcCPF/Rl8=;
 b=EAf9V3mUwoCDfvGS7QVH0r8rGmBhaCit1SsX5XA2qNjkYhU2Pnf+uwYo5POQ8/GSTu
 nY87o0d65yRzBhMHkdLmpVcWIifKLk1TSJ7V6Qj+kxISrM8TygIn0uMAOp5ppEg/9XsX
 Fj+HGY9PR8sn+4NqSjLcVvAng8owgEZnG/AhMlpfaMQAIWX81YzfqqgwcFylrTIqOE4R
 9aBB5A1DsfKV+oyZkzuIkS2WCWn8h03819tB+Cs2G3Nna4b1BT49G2BynVNPi8+FtuKc
 6EOaAptm55kh0Vshs2/EMpZGaKI+p1bMlpfGKtN6pWHX3NEBU8zHEpC+4t3/yJ3TvSUD
 PbOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=zZHdIw09xY2Ce8uWTmloE1oO2b0NO2/EIuxcCPF/Rl8=;
 b=W5pDfsOm2jWwXW6Zk2JsRsd+HYk0qE95tkQl6dPLlbZAGPWpbG3vp6HkGqq9SHCG11
 123lpkMSS49h1q+iA0RcxRhCHq4Dy/l+p8Hh+Vzf551V4nms2ASqkvq+5lprSYlFPygI
 2wlkryT8Ykj86NLm3WeqK+s6+PU9LvSIXbuh33sYV6t7RJ5UN7k80F5qubIhEyW1T3Va
 ghi9K9Ei+0c4boJXrQz+69ID5/32E9Vo/MJJo3SZBqVF/owJIfexJhgX9UDfLRNGcZIL
 k1fHXngJv6WxxXASAqimxxKZq+7MMMswSvhC+CIrpvuaF3+7Ts9YBlQy18/72TMw+hBv
 LAfw==
X-Gm-Message-State: AOAM533C5CWYE9X5JQ8tKEPs+Yz68+LbIwEPZPHTjBjv4CVr9TASE2n9
 rgtVmExwtXcdARTZ4eT5ZGAkYA9Z3Q==
X-Google-Smtp-Source: ABdhPJxZyCR6IVlpzowr+D4GNQzWnagvGOl6WQJ7dLTzhEl85YCsW+o32y830SMZojdjqjDBGPzDYg==
X-Received: by 2002:a05:6808:130b:: with SMTP id
 y11mr132602oiv.55.1633394428264; 
 Mon, 04 Oct 2021 17:40:28 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id w184sm3031310oie.35.2021.10.04.17.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 17:40:26 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1ce5:3fb4:8fe9:30d1])
 by serve.minyard.net (Postfix) with ESMTPA id 3795B1800F6;
 Tue,  5 Oct 2021 00:40:26 +0000 (UTC)
From: minyard@acm.org
To: openipmi-developer@lists.sourceforge.net
Date: Mon,  4 Oct 2021 19:40:16 -0500
Message-Id: <20211005004019.2670691-3-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005004019.2670691-1-minyard@acm.org>
References: <20211005004019.2670691-1-minyard@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard <cminyard@mvista.com> An application has
 come up that has a device sitting right on the IPMB that would like to
 communicate
 with the BMC on the IPMB using normal IPMI commands. Sending these commands
 and handling the responses is easy enough, no modifications are needed to
 the IPMI infrastructure. But if this is an application that also needs to
 receive IPMB commands and res [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.178 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXYVV-005YbA-VU
Subject: [Openipmi-developer] [PATCH 2/5] ipmi: Add support for IPMB direct
 messages
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

An application has come up that has a device sitting right on the IPMB
that would like to communicate with the BMC on the IPMB using normal
IPMI commands.

Sending these commands and handling the responses is easy enough, no
modifications are needed to the IPMI infrastructure.  But if this is an
application that also needs to receive IPMB commands and respond, some
way is needed to handle these incoming commands and send the responses.

Currently, the IPMI message handler only sends commands to the interface
and only receives responses from interface.  This change extends the
interface to receive commands/responses and send commands/responses.
These are formatted differently in support of receiving/sending IPMB
messages directly.

Signed-off-by: Corey Minyard <minyard@acm.org>
Tested-by: Andrew Manley <andrew.manley@sealingtech.com>
Reviewed-by: Andrew Manley <andrew.manley@sealingtech.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 288 ++++++++++++++++++++++++----
 include/linux/ipmi_smi.h            |  59 ++++++
 include/uapi/linux/ipmi.h           |  14 ++
 3 files changed, 328 insertions(+), 33 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index ad1a8fc379b9..a60201d3f735 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -653,6 +653,11 @@ static int is_ipmb_bcast_addr(struct ipmi_addr *addr)
 	return addr->addr_type == IPMI_IPMB_BROADCAST_ADDR_TYPE;
 }
 
+static int is_ipmb_direct_addr(struct ipmi_addr *addr)
+{
+	return addr->addr_type == IPMI_IPMB_DIRECT_ADDR_TYPE;
+}
+
 static void free_recv_msg_list(struct list_head *q)
 {
 	struct ipmi_recv_msg *msg, *msg2;
@@ -805,6 +810,17 @@ ipmi_addr_equal(struct ipmi_addr *addr1, struct ipmi_addr *addr2)
 			&& (ipmb_addr1->lun == ipmb_addr2->lun));
 	}
 
+	if (is_ipmb_direct_addr(addr1)) {
+		struct ipmi_ipmb_direct_addr *daddr1
+			= (struct ipmi_ipmb_direct_addr *) addr1;
+		struct ipmi_ipmb_direct_addr *daddr2
+			= (struct ipmi_ipmb_direct_addr *) addr2;
+
+		return daddr1->slave_addr == daddr2->slave_addr &&
+			daddr1->rq_lun == daddr2->rq_lun &&
+			daddr1->rs_lun == daddr2->rs_lun;
+	}
+
 	if (is_lan_addr(addr1)) {
 		struct ipmi_lan_addr *lan_addr1
 			= (struct ipmi_lan_addr *) addr1;
@@ -843,6 +859,23 @@ int ipmi_validate_addr(struct ipmi_addr *addr, int len)
 		return 0;
 	}
 
+	if (is_ipmb_direct_addr(addr)) {
+		struct ipmi_ipmb_direct_addr *daddr = (void *) addr;
+
+		if (addr->channel != 0)
+			return -EINVAL;
+		if (len < sizeof(struct ipmi_ipmb_direct_addr))
+			return -EINVAL;
+
+		if (daddr->slave_addr & 0x01)
+			return -EINVAL;
+		if (daddr->rq_lun >= 4)
+			return -EINVAL;
+		if (daddr->rs_lun >= 4)
+			return -EINVAL;
+		return 0;
+	}
+
 	if (is_lan_addr(addr)) {
 		if (len < sizeof(struct ipmi_lan_addr))
 			return -EINVAL;
@@ -862,6 +895,9 @@ unsigned int ipmi_addr_length(int addr_type)
 			|| (addr_type == IPMI_IPMB_BROADCAST_ADDR_TYPE))
 		return sizeof(struct ipmi_ipmb_addr);
 
+	if (addr_type == IPMI_IPMB_DIRECT_ADDR_TYPE)
+		return sizeof(struct ipmi_ipmb_direct_addr);
+
 	if (addr_type == IPMI_LAN_ADDR_TYPE)
 		return sizeof(struct ipmi_lan_addr);
 
@@ -2052,6 +2088,58 @@ static int i_ipmi_req_ipmb(struct ipmi_smi        *intf,
 	return rv;
 }
 
+static int i_ipmi_req_ipmb_direct(struct ipmi_smi        *intf,
+				  struct ipmi_addr       *addr,
+				  long			 msgid,
+				  struct kernel_ipmi_msg *msg,
+				  struct ipmi_smi_msg    *smi_msg,
+				  struct ipmi_recv_msg   *recv_msg,
+				  unsigned char          source_lun)
+{
+	struct ipmi_ipmb_direct_addr *daddr;
+	bool is_cmd = !(recv_msg->msg.netfn & 0x1);
+
+	if (!(intf->handlers->flags & IPMI_SMI_CAN_HANDLE_IPMB_DIRECT))
+		return -EAFNOSUPPORT;
+
+	/* Responses must have a completion code. */
+	if (!is_cmd && msg->data_len < 1) {
+		ipmi_inc_stat(intf, sent_invalid_commands);
+		return -EINVAL;
+	}
+
+	if ((msg->data_len + 4) > IPMI_MAX_MSG_LENGTH) {
+		ipmi_inc_stat(intf, sent_invalid_commands);
+		return -EMSGSIZE;
+	}
+
+	daddr = (struct ipmi_ipmb_direct_addr *) addr;
+	if (daddr->rq_lun > 3 || daddr->rs_lun > 3) {
+		ipmi_inc_stat(intf, sent_invalid_commands);
+		return -EINVAL;
+	}
+
+	smi_msg->type = IPMI_SMI_MSG_TYPE_IPMB_DIRECT;
+	smi_msg->msgid = msgid;
+
+	if (is_cmd) {
+		smi_msg->data[0] = msg->netfn << 2 | daddr->rs_lun;
+		smi_msg->data[2] = recv_msg->msgid << 2 | daddr->rq_lun;
+	} else {
+		smi_msg->data[0] = msg->netfn << 2 | daddr->rq_lun;
+		smi_msg->data[2] = recv_msg->msgid << 2 | daddr->rs_lun;
+	}
+	smi_msg->data[1] = daddr->slave_addr;
+	smi_msg->data[3] = msg->cmd;
+
+	memcpy(smi_msg->data + 4, msg->data, msg->data_len);
+	smi_msg->data_size = msg->data_len + 4;
+
+	smi_msg->user_data = recv_msg;
+
+	return 0;
+}
+
 static int i_ipmi_req_lan(struct ipmi_smi        *intf,
 			  struct ipmi_addr       *addr,
 			  long                   msgid,
@@ -2241,6 +2329,9 @@ static int i_ipmi_request(struct ipmi_user     *user,
 		rv = i_ipmi_req_ipmb(intf, addr, msgid, msg, smi_msg, recv_msg,
 				     source_address, source_lun,
 				     retries, retry_time_ms);
+	} else if (is_ipmb_direct_addr(addr)) {
+		rv = i_ipmi_req_ipmb_direct(intf, addr, msgid, msg, smi_msg,
+					    recv_msg, source_lun);
 	} else if (is_lan_addr(addr)) {
 		rv = i_ipmi_req_lan(intf, addr, msgid, msg, smi_msg, recv_msg,
 				    source_lun, retries, retry_time_ms);
@@ -3802,6 +3893,123 @@ static int handle_ipmb_get_msg_cmd(struct ipmi_smi *intf,
 	return rv;
 }
 
+static int handle_ipmb_direct_rcv_cmd(struct ipmi_smi *intf,
+				      struct ipmi_smi_msg *msg)
+{
+	struct cmd_rcvr          *rcvr;
+	int                      rv = 0;
+	struct ipmi_user         *user = NULL;
+	struct ipmi_ipmb_direct_addr *daddr;
+	struct ipmi_recv_msg     *recv_msg;
+	unsigned char netfn = msg->rsp[0] >> 2;
+	unsigned char cmd = msg->rsp[3];
+
+	rcu_read_lock();
+	/* We always use channel 0 for direct messages. */
+	rcvr = find_cmd_rcvr(intf, netfn, cmd, 0);
+	if (rcvr) {
+		user = rcvr->user;
+		kref_get(&user->refcount);
+	} else
+		user = NULL;
+	rcu_read_unlock();
+
+	if (user == NULL) {
+		/* We didn't find a user, deliver an error response. */
+		ipmi_inc_stat(intf, unhandled_commands);
+
+		msg->data[0] = ((netfn + 1) << 2) | (msg->rsp[4] & 0x3);
+		msg->data[1] = msg->rsp[2];
+		msg->data[2] = msg->rsp[4] & ~0x3;
+		msg->data[3] = cmd;
+		msg->data[4] = IPMI_INVALID_CMD_COMPLETION_CODE;
+		msg->data_size = 5;
+
+		rcu_read_lock();
+		if (!intf->in_shutdown) {
+			smi_send(intf, intf->handlers, msg, 0);
+			/*
+			 * We used the message, so return the value
+			 * that causes it to not be freed or
+			 * queued.
+			 */
+			rv = -1;
+		}
+		rcu_read_unlock();
+	} else {
+		recv_msg = ipmi_alloc_recv_msg();
+		if (!recv_msg) {
+			/*
+			 * We couldn't allocate memory for the
+			 * message, so requeue it for handling
+			 * later.
+			 */
+			rv = 1;
+			kref_put(&user->refcount, free_user);
+		} else {
+			/* Extract the source address from the data. */
+			daddr = (struct ipmi_ipmb_direct_addr *)&recv_msg->addr;
+			daddr->addr_type = IPMI_IPMB_DIRECT_ADDR_TYPE;
+			daddr->channel = 0;
+			daddr->slave_addr = msg->rsp[1];
+			daddr->rs_lun = msg->rsp[0] & 3;
+			daddr->rq_lun = msg->rsp[2] & 3;
+
+			/*
+			 * Extract the rest of the message information
+			 * from the IPMB header.
+			 */
+			recv_msg->user = user;
+			recv_msg->recv_type = IPMI_CMD_RECV_TYPE;
+			recv_msg->msgid = (msg->rsp[2] >> 2);
+			recv_msg->msg.netfn = msg->rsp[0] >> 2;
+			recv_msg->msg.cmd = msg->rsp[3];
+			recv_msg->msg.data = recv_msg->msg_data;
+
+			recv_msg->msg.data_len = msg->rsp_size - 4;
+			memcpy(recv_msg->msg_data, msg->rsp + 4,
+			       msg->rsp_size - 4);
+			if (deliver_response(intf, recv_msg))
+				ipmi_inc_stat(intf, unhandled_commands);
+			else
+				ipmi_inc_stat(intf, handled_commands);
+		}
+	}
+
+	return rv;
+}
+
+static int handle_ipmb_direct_rcv_rsp(struct ipmi_smi *intf,
+				      struct ipmi_smi_msg *msg)
+{
+	struct ipmi_recv_msg *recv_msg;
+	struct ipmi_ipmb_direct_addr *daddr;
+
+	recv_msg = (struct ipmi_recv_msg *) msg->user_data;
+	if (recv_msg == NULL) {
+		dev_warn(intf->si_dev,
+			 "IPMI message received with no owner. This could be because of a malformed message, or because of a hardware error.  Contact your hardware vendor for assistance.\n");
+		return 0;
+	}
+
+	recv_msg->recv_type = IPMI_RESPONSE_RECV_TYPE;
+	recv_msg->msgid = msg->msgid;
+	daddr = (struct ipmi_ipmb_direct_addr *) &recv_msg->addr;
+	daddr->addr_type = IPMI_IPMB_DIRECT_ADDR_TYPE;
+	daddr->channel = 0;
+	daddr->slave_addr = msg->rsp[1];
+	daddr->rq_lun = msg->rsp[0] & 3;
+	daddr->rs_lun = msg->rsp[2] & 3;
+	recv_msg->msg.netfn = msg->rsp[0] >> 2;
+	recv_msg->msg.cmd = msg->rsp[3];
+	memcpy(recv_msg->msg_data, &msg->rsp[4], msg->rsp_size - 4);
+	recv_msg->msg.data = recv_msg->msg_data;
+	recv_msg->msg.data_len = msg->rsp_size - 4;
+	deliver_local_response(intf, recv_msg);
+
+	return 0;
+}
+
 static int handle_lan_get_msg_rsp(struct ipmi_smi *intf,
 				  struct ipmi_smi_msg *msg)
 {
@@ -4227,18 +4435,40 @@ static int handle_bmc_rsp(struct ipmi_smi *intf,
 static int handle_one_recv_msg(struct ipmi_smi *intf,
 			       struct ipmi_smi_msg *msg)
 {
-	int requeue;
+	int requeue = 0;
 	int chan;
+	unsigned char cc;
+	bool is_cmd = !((msg->rsp[0] >> 2) & 1);
 
 	pr_debug("Recv: %*ph\n", msg->rsp_size, msg->rsp);
 
-	if ((msg->data_size >= 2)
+	if (msg->rsp_size < 2) {
+		/* Message is too small to be correct. */
+		dev_warn(intf->si_dev,
+			 "BMC returned too small a message for netfn %x cmd %x, got %d bytes\n",
+			 (msg->data[0] >> 2) | 1, msg->data[1], msg->rsp_size);
+
+return_unspecified:
+		/* Generate an error response for the message. */
+		msg->rsp[0] = msg->data[0] | (1 << 2);
+		msg->rsp[1] = msg->data[1];
+		msg->rsp[2] = IPMI_ERR_UNSPECIFIED;
+		msg->rsp_size = 3;
+	} else if (msg->type == IPMI_SMI_MSG_TYPE_IPMB_DIRECT) {
+		/* commands must have at least 3 bytes, responses 4. */
+		if (is_cmd && (msg->rsp_size < 3)) {
+			ipmi_inc_stat(intf, invalid_commands);
+			goto out;
+		}
+		if (!is_cmd && (msg->rsp_size < 4))
+			goto return_unspecified;
+	} else if ((msg->data_size >= 2)
 	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
 	    && (msg->data[1] == IPMI_SEND_MSG_CMD)
 	    && (msg->user_data == NULL)) {
 
 		if (intf->in_shutdown)
-			goto free_msg;
+			goto out;
 
 		/*
 		 * This is the local response to a command send, start
@@ -4273,21 +4503,6 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 		} else
 			/* The message was sent, start the timer. */
 			intf_start_seq_timer(intf, msg->msgid);
-free_msg:
-		requeue = 0;
-		goto out;
-
-	} else if (msg->rsp_size < 2) {
-		/* Message is too small to be correct. */
-		dev_warn(intf->si_dev,
-			 "BMC returned too small a message for netfn %x cmd %x, got %d bytes\n",
-			 (msg->data[0] >> 2) | 1, msg->data[1], msg->rsp_size);
-
-		/* Generate an error response for the message. */
-		msg->rsp[0] = msg->data[0] | (1 << 2);
-		msg->rsp[1] = msg->data[1];
-		msg->rsp[2] = IPMI_ERR_UNSPECIFIED;
-		msg->rsp_size = 3;
 	} else if (((msg->rsp[0] >> 2) != ((msg->data[0] >> 2) | 1))
 		   || (msg->rsp[1] != msg->data[1])) {
 		/*
@@ -4299,39 +4514,46 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 			 (msg->data[0] >> 2) | 1, msg->data[1],
 			 msg->rsp[0] >> 2, msg->rsp[1]);
 
-		/* Generate an error response for the message. */
-		msg->rsp[0] = msg->data[0] | (1 << 2);
-		msg->rsp[1] = msg->data[1];
-		msg->rsp[2] = IPMI_ERR_UNSPECIFIED;
-		msg->rsp_size = 3;
+		goto return_unspecified;
 	}
 
-	if ((msg->rsp[0] == ((IPMI_NETFN_APP_REQUEST|1) << 2))
-	    && (msg->rsp[1] == IPMI_SEND_MSG_CMD)
-	    && (msg->user_data != NULL)) {
+	if (msg->type == IPMI_SMI_MSG_TYPE_IPMB_DIRECT) {
+		if ((msg->data[0] >> 2) & 1) {
+			/* It's a response to a sent response. */
+			chan = 0;
+			cc = msg->rsp[4];
+			goto process_response_response;
+		}
+		if (is_cmd)
+			requeue = handle_ipmb_direct_rcv_cmd(intf, msg);
+		else
+			requeue = handle_ipmb_direct_rcv_rsp(intf, msg);
+	} else if ((msg->rsp[0] == ((IPMI_NETFN_APP_REQUEST|1) << 2))
+		   && (msg->rsp[1] == IPMI_SEND_MSG_CMD)
+		   && (msg->user_data != NULL)) {
 		/*
 		 * It's a response to a response we sent.  For this we
 		 * deliver a send message response to the user.
 		 */
-		struct ipmi_recv_msg *recv_msg = msg->user_data;
-
-		requeue = 0;
-		if (msg->rsp_size < 2)
-			/* Message is too small to be correct. */
-			goto out;
+		struct ipmi_recv_msg *recv_msg;
 
 		chan = msg->data[2] & 0x0f;
 		if (chan >= IPMI_MAX_CHANNELS)
 			/* Invalid channel number */
 			goto out;
+		cc = msg->rsp[2];
 
+process_response_response:
+		recv_msg = msg->user_data;
+
+		requeue = 0;
 		if (!recv_msg)
 			goto out;
 
 		recv_msg->recv_type = IPMI_RESPONSE_RESPONSE_TYPE;
 		recv_msg->msg.data = recv_msg->msg_data;
+		recv_msg->msg_data[0] = cc;
 		recv_msg->msg.data_len = 1;
-		recv_msg->msg_data[0] = msg->rsp[2];
 		deliver_local_response(intf, recv_msg);
 	} else if ((msg->rsp[0] == ((IPMI_NETFN_APP_REQUEST|1) << 2))
 		   && (msg->rsp[1] == IPMI_GET_MSG_CMD)) {
diff --git a/include/linux/ipmi_smi.h b/include/linux/ipmi_smi.h
index deec18b8944a..9277d21c2690 100644
--- a/include/linux/ipmi_smi.h
+++ b/include/linux/ipmi_smi.h
@@ -38,6 +38,59 @@ struct ipmi_smi;
 #define IPMI_WATCH_MASK_CHECK_WATCHDOG	(1 << 1)
 #define IPMI_WATCH_MASK_CHECK_COMMANDS	(1 << 2)
 
+/*
+ * SMI messages
+ *
+ * When communicating with an SMI, messages come in two formats:
+ *
+ * * Normal (to a BMC over a BMC interface)
+ *
+ * * IPMB (over a IPMB to another MC)
+ *
+ * When normal, commands are sent using the format defined by a
+ * standard message over KCS (NetFn must be even):
+ *
+ *   +-----------+-----+------+
+ *   | NetFn/LUN | Cmd | Data |
+ *   +-----------+-----+------+
+ *
+ * And responses, similarly, with an completion code added (NetFn must
+ * be odd):
+ *
+ *   +-----------+-----+------+------+
+ *   | NetFn/LUN | Cmd | CC   | Data |
+ *   +-----------+-----+------+------+
+ *
+ * With normal messages, only commands are sent and only responses are
+ * received.
+ *
+ * In IPMB mode, we are acting as an IPMB device. Commands will be in
+ * the following format (NetFn must be even):
+ *
+ *   +-------------+------+-------------+-----+------+
+ *   | NetFn/rsLUN | Addr | rqSeq/rqLUN | Cmd | Data |
+ *   +-------------+------+-------------+-----+------+
+ *
+ * Responses will using the following format:
+ *
+ *   +-------------+------+-------------+-----+------+------+
+ *   | NetFn/rqLUN | Addr | rqSeq/rsLUN | Cmd | CC   | Data |
+ *   +-------------+------+-------------+-----+------+------+
+ *
+ * This is similar to the format defined in the IPMB manual section
+ * 2.11.1 with the checksums and the first address removed.  Also, the
+ * address is always the remote address.
+ *
+ * IPMB messages can be commands and responses in both directions.
+ * Received commands are handled as received commands from the message
+ * queue.
+ */
+
+enum ipmi_smi_msg_type {
+	IPMI_SMI_MSG_TYPE_NORMAL = 0,
+	IPMI_SMI_MSG_TYPE_IPMB_DIRECT
+};
+
 /*
  * Messages to/from the lower layer.  The smi interface will take one
  * of these to send. After the send has occurred and a response has
@@ -54,6 +107,8 @@ struct ipmi_smi;
 struct ipmi_smi_msg {
 	struct list_head link;
 
+	enum ipmi_smi_msg_type type;
+
 	long    msgid;
 	void    *user_data;
 
@@ -73,6 +128,10 @@ struct ipmi_smi_msg {
 struct ipmi_smi_handlers {
 	struct module *owner;
 
+	/* Capabilities of the SMI. */
+#define IPMI_SMI_CAN_HANDLE_IPMB_DIRECT		(1 << 0)
+	unsigned int flags;
+
 	/*
 	 * The low-level interface cannot start sending messages to
 	 * the upper layer until this function is called.  This may
diff --git a/include/uapi/linux/ipmi.h b/include/uapi/linux/ipmi.h
index 007e65f9243b..966c3070959b 100644
--- a/include/uapi/linux/ipmi.h
+++ b/include/uapi/linux/ipmi.h
@@ -80,6 +80,20 @@ struct ipmi_ipmb_addr {
 	unsigned char lun;
 };
 
+/*
+ * Used for messages received directly from an IPMB that have not gone
+ * through a MC.  This is for systems that sit right on an IPMB so
+ * they can receive commands and respond to them.
+ */
+#define IPMI_IPMB_DIRECT_ADDR_TYPE	0x81
+struct ipmi_ipmb_direct_addr {
+	int           addr_type;
+	short         channel;
+	unsigned char slave_addr;
+	unsigned char rs_lun;
+	unsigned char rq_lun;
+};
+
 /*
  * A LAN Address.  This is an address to/from a LAN interface bridged
  * by the BMC, not an address actually out on the LAN.
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
