Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFzOII5NzmmjmgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:05:50 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C4C388145
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:Mime-Version:Message-Id:Date:
	References:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b9P6UStjkJscMxYUeSzU3pePlfSQJClfhQkEziCLcoM=; b=ch+8N9PnZu7UXrMWV6QFeWtvQd
	XoAbD94g1G5c1Pb1RHIazE8WyWAR/llk9XmRoZzsvrlUaZEI7IU+kzITTGVLBzoiWW0ZoHRKRWPE9
	JFrpur9V/GLCurwGjn6Np1dcWe9E8EEFGwI9Kam7pSf0xx2fEnAUY2F269/j3NUN/WQo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8Frq-0004zT-MI;
	Thu, 02 Apr 2026 11:05:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8Frn-0004z7-Ef
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Content-Type:In-Reply-To:Mime-Version:Message-Id
 :Date:References:Subject:Content-Transfer-Encoding:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aNDDZHCKWAnNKjO8KKBuxlbGcDHSEygC+igilt0a8B8=; b=eTJQSL+OwDWZB9s+hIMPiq0mFL
 aTRHB2fpdcF9ZJosQciwlFJSHinJSDfmInMdjbXv0ESdncWOb4Qoyif6tt5APute1dJWPhEzGDYuX
 5G+fDS9tWFevl13Fx1tYIm7tGyEVfiyu18k7PUrhZk3dk+Ka6pi6QEd8bBlZZ2g+toic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Content-Type:In-Reply-To:Mime-Version:Message-Id:Date:References:
 Subject:Content-Transfer-Encoding:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aNDDZHCKWAnNKjO8KKBuxlbGcDHSEygC+igilt0a8B8=; b=XbwdJ92JUyfpKrAjLoPJK+C6+J
 ah/TmCOxQ8F7Ywg4dXxoFL07dhl/Rmi5YF7DYSrH7EEpGK3tQt6ufeFrOrdYsps6CFkvQb/AUWkDJ
 erh9+wboCoxidvwe+RSsrCv/IbCyr2JP2CCTCZCBR6My2W9+30VnmGPlKtmK7SKVts9c=;
Received: from va-1-111.ptr.blmpb.com ([209.127.230.111])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8Frn-0001tH-Dd for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775127925; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=aNDDZHCKWAnNKjO8KKBuxlbGcDHSEygC+igilt0a8B8=;
 b=lhLCgmSN9lyaQ5vuzRsuL9kreyVN8GY789gHD6uDupqrjYRSzNquEppsFp8nyAuVJ6p9xM
 oCRHGWmAHeITW8v6/ErTRXmoxcO16nqRnTJ/jQ0SjDZiqsnVXdXYIgJMlkBhT8fUrnjqnP
 qVH8SE/kJW+i5GYKnzsBpV0FSq59HqFqkgEcKDyvS+PEOK5L9lOwXdsbJVPZMF2rTaQEfH
 53kKl5+YZmtI+vzQ1Q+GYAAGSHSn1Eh+T+weKuu9mNO/CSc9Vi8oGF9UcEMoWsnc1XdGKj
 Oa8iOEWdbuVQFJrvq3aJHx20EX7TANZ3PaJpg6/IAGZI741MOZW+8s8SuPk37w==
X-Mailer: git-send-email 2.20.1
X-Lms-Return-Path: <lba+269ce4d73+516025+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
References: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
Date: Thu,  2 Apr 2026 19:04:34 +0800
Message-Id: <20260402110435.3589408-4-zhangjian.3032@bytedance.com>
Mime-Version: 1.0
In-Reply-To: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
To: "Corey Minyard" <corey@minyard.net>, 
 "Quan Nguyen" <quan@os.amperecomputing.com>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Long-running tests indicate that this logging can
 occasionally
 disrupt timing and lead to request/response corruption. Irq handler need
 to be executed as fast as possible, most I2C slave IRQ implementations are
 byte-level, logging here can significantly affect transfer behavior and timing.
 It is recommended to use dev [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1w8Frn-0001tH-Dd
Subject: [Openipmi-developer] [PATCH 4/5] ipmi: ssif_bmc: change log level
 to dbg in irq callback
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
From: Jian Zhang via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jian Zhang <zhangjian.3032@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:quan@os.amperecomputing.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[zhangjian.3032@bytedance.com];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,bytedance.com:email,bytedance.com:replyto,bytedance.com:mid]
X-Rspamd-Queue-Id: D9C4C388145
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Long-running tests indicate that this logging can occasionally disrupt
timing and lead to request/response corruption.

Irq handler need to be executed as fast as possible,
most I2C slave IRQ implementations are byte-level, logging here
can significantly affect transfer behavior and timing. It is recommended
to use dev_dbg() for these messages.

Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
---
 drivers/char/ipmi/ssif_bmc.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index d0543be0af80..691e95a67f94 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -569,7 +569,7 @@ static void process_request_part(struct ssif_bmc_ctx *ssif_bmc)
 		len = ssif_bmc->request.len + part->length;
 		/* Do the bound check here, not allow the request len exceed 254 bytes */
 		if (len > IPMI_SSIF_PAYLOAD_MAX) {
-			dev_warn(&ssif_bmc->client->dev,
+			dev_dbg(&ssif_bmc->client->dev,
 				 "Warn: Request exceeded 254 bytes, aborting");
 			/* Request too long, aborting */
 			ssif_bmc->aborting =  true;
@@ -615,7 +615,7 @@ static void on_read_requested_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 	    ssif_bmc->state == SSIF_START ||
 	    ssif_bmc->state == SSIF_REQ_RECVING ||
 	    ssif_bmc->state == SSIF_RES_SENDING) {
-		dev_warn(&ssif_bmc->client->dev,
+		dev_dbg(&ssif_bmc->client->dev,
 			 "Warn: %s unexpected READ REQUESTED in state=%s\n",
 			 __func__, state_to_string(ssif_bmc->state));
 		ssif_bmc->state = SSIF_ABORTING;
@@ -624,7 +624,7 @@ static void on_read_requested_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 
 	} else if (ssif_bmc->state == SSIF_SMBUS_CMD) {
 		if (!supported_read_cmd(ssif_bmc->part_buf.smbus_cmd)) {
-			dev_warn(&ssif_bmc->client->dev, "Warn: Unknown SMBus read command=0x%x",
+			dev_dbg(&ssif_bmc->client->dev, "Warn: Unknown SMBus read command=0x%x",
 				 ssif_bmc->part_buf.smbus_cmd);
 			ssif_bmc->aborting = true;
 		}
@@ -659,7 +659,7 @@ static void on_read_processed_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 	    ssif_bmc->state == SSIF_START ||
 	    ssif_bmc->state == SSIF_REQ_RECVING ||
 	    ssif_bmc->state == SSIF_SMBUS_CMD) {
-		dev_warn(&ssif_bmc->client->dev,
+		dev_dbg(&ssif_bmc->client->dev,
 			 "Warn: %s unexpected READ PROCESSED in state=%s\n",
 			 __func__, state_to_string(ssif_bmc->state));
 		ssif_bmc->state = SSIF_ABORTING;
@@ -684,7 +684,7 @@ static void on_write_requested_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 	} else if (ssif_bmc->state == SSIF_START ||
 		   ssif_bmc->state == SSIF_REQ_RECVING ||
 		   ssif_bmc->state == SSIF_RES_SENDING) {
-		dev_warn(&ssif_bmc->client->dev,
+		dev_dbg(&ssif_bmc->client->dev,
 			 "Warn: %s unexpected WRITE REQUEST in state=%s\n",
 			 __func__, state_to_string(ssif_bmc->state));
 		ssif_bmc->state = SSIF_ABORTING;
@@ -699,7 +699,7 @@ static void on_write_received_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 {
 	if (ssif_bmc->state == SSIF_READY ||
 	    ssif_bmc->state == SSIF_RES_SENDING) {
-		dev_warn(&ssif_bmc->client->dev,
+		dev_dbg(&ssif_bmc->client->dev,
 			 "Warn: %s unexpected WRITE RECEIVED in state=%s\n",
 			 __func__, state_to_string(ssif_bmc->state));
 		ssif_bmc->state = SSIF_ABORTING;
@@ -709,7 +709,7 @@ static void on_write_received_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 
 	} else if (ssif_bmc->state == SSIF_SMBUS_CMD) {
 		if (!supported_write_cmd(ssif_bmc->part_buf.smbus_cmd)) {
-			dev_warn(&ssif_bmc->client->dev, "Warn: Unknown SMBus write command=0x%x",
+			dev_dbg(&ssif_bmc->client->dev, "Warn: Unknown SMBus write command=0x%x",
 				 ssif_bmc->part_buf.smbus_cmd);
 			ssif_bmc->aborting = true;
 		}
@@ -738,7 +738,7 @@ static void on_stop_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 	    ssif_bmc->state == SSIF_START ||
 	    ssif_bmc->state == SSIF_SMBUS_CMD ||
 	    ssif_bmc->state == SSIF_ABORTING) {
-		dev_warn(&ssif_bmc->client->dev,
+		dev_dbg(&ssif_bmc->client->dev,
 			 "Warn: %s unexpected SLAVE STOP in state=%s\n",
 			 __func__, state_to_string(ssif_bmc->state));
 		ssif_bmc->state = SSIF_READY;
@@ -805,7 +805,7 @@ static int ssif_bmc_cb(struct i2c_client *client, enum i2c_slave_event event, u8
 		break;
 
 	default:
-		dev_warn(&ssif_bmc->client->dev, "Warn: Unknown i2c slave event\n");
+		dev_dbg(&ssif_bmc->client->dev, "Warn: Unknown i2c slave event\n");
 		break;
 	}
 
-- 
2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
