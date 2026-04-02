Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eB9xC4NNzmmjmgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:05:39 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A608E38813D
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Date:In-Reply-To:Mime-Version:To:References:
	Message-Id:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NA1avg8RD1/8perE0c3IYbUHW/XlC1ceXb2Mq56EQgM=; b=T1od2I1M094nh8hu4zF2lNCctb
	tdvCsqsXqc9vBo3GmQSY//Q4OnZDpMHMOTpWyp+FonboSZjo5l33ZKLJOGnBueFr3knEIdmOhAhA+
	eTnKcn1w1epgFsndaz291UBkj8C7StQr5W9OaTWjZjSK6ZOELbec4B0yTO7PpJ2zbKm0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8Fre-000347-CN;
	Thu, 02 Apr 2026 11:05:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8Frc-00033w-7o
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Subject:Content-Type:In-Reply-To:
 Content-Transfer-Encoding:Mime-Version:To:References:Message-Id:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9diGkaCXY5GzK1gQh6oj1jApe0ZVSKHlwC1rJQZX0yw=; b=gSSEyc3laJnq4x+rssNn0NfrTn
 u1ur4eAby5iUfBlHxszRZ2qDApkojW51DE7XBSi7CUW5V+UEfNVD7pRZ8X2pG8xmTrOdDRNC41WI1
 p77r8FsKlJHjYZN1ivcLuLA+/8iKpwuqjrkF4ryeHB5qjyRsZjwYSrmKJVR44eq0MNgM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Subject:Content-Type:In-Reply-To:Content-Transfer-Encoding:
 Mime-Version:To:References:Message-Id:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9diGkaCXY5GzK1gQh6oj1jApe0ZVSKHlwC1rJQZX0yw=; b=QRRzE8bvBoxer3MeChkglHRbmz
 RMk01JJMvddAPxfqLs8weWaqXfoiZfKF6VfcpiFw940nIjs7dbbshMBi/n90t5d+BCFvU63KHz8Us
 LwFZGb8TH3t9m5b7+NGq7CGv089alAuhK/GfzYpYShXMr0Z9LohzEnz5e0BtRAlhAwD8=;
Received: from va-1-113.ptr.blmpb.com ([209.127.230.113])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8Frb-0001rZ-IQ for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775127913; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=9diGkaCXY5GzK1gQh6oj1jApe0ZVSKHlwC1rJQZX0yw=;
 b=gCgq5Iq2LyJmVhaHL35+n4ThK8CqSrUZZXKrG+oq2DQgiol6WRrsaBhRL212XmRA1J3rjL
 QXMouB7f2ylgfRbt7jAVcUbPkR1TcLd+GJ7PchvKUgmcg6hdlTJ4HrdUgMV37ywjwqmR85
 N4DqgQSVHPXE1Q6l7UfzIRoNwBjKFyz82H20UyPiueq7c1QC8S0uYT1spl+6pAANLCmU2E
 dIQwuOA7/Lc+vXHD8PpG3L2aA69jGki5MTkiK85hGh0CHcoBm5tu83hO3/gSte5w77i4VH
 ROW4+d2LsW5/H8hfrKuRSgd1bhdehGUPdtg7KJovM/gujOOd8axsmwh1ksgnjg==
Message-Id: <20260402110435.3589408-3-zhangjian.3032@bytedance.com>
References: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
To: "Corey Minyard" <corey@minyard.net>, 
 "Quan Nguyen" <quan@os.amperecomputing.com>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
X-Lms-Return-Path: <lba+269ce4d67+342252+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Mailer: git-send-email 2.20.1
Mime-Version: 1.0
In-Reply-To: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
Date: Thu,  2 Apr 2026 19:04:33 +0800
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  A truncated response, caused by host power-off,
 or other conditions, 
 can lead to message desynchronization. Raw trace data (STOP loss scenario,
 add state transition comment): 1. T-1: Read response phase (SSIF_RES_SENDING)
 8271.955342 WR_RCV [03] <- Read polling cmd 8271.955348 RD_REQ [04] <==
 SSIF_RES_SENDING
 <- start sending response 8271.955436 RD_PRO [b4] 8271.955527 RD [...] 
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
X-Headers-End: 1w8Frb-0001rZ-IQ
Subject: [Openipmi-developer] [PATCH 3/5] ipmi: ssif_bmc: fix message
 desynchronization after truncated response
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
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
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
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,bytedance.com:email,bytedance.com:replyto,bytedance.com:mid]
X-Rspamd-Queue-Id: A608E38813D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A truncated response, caused by host power-off, or other conditions,
can lead to message desynchronization.

Raw trace data (STOP loss scenario, add state transition comment):

1. T-1: Read response phase (SSIF_RES_SENDING)
8271.955342  WR_RCV [03]                          <- Read polling cmd
8271.955348  RD_REQ [04]  <== SSIF_RES_SENDING    <- start sending response
8271.955436  RD_PRO [b4]
8271.955527  RD_PRO [00]
8271.955618  RD_PRO [c1]
8271.955707  RD_PRO [00]
8271.955814  RD_PRO [ad]  <== SSIF_RES_SENDING     <- last byte
	<- !! STOP lost (truncated response)

2. T: New Write request arrives, BMC still in SSIF_RES_SENDING
8271.967973  WR_REQ []    <== SSIF_RES_SENDING >> SSIF_ABORTING  <- log: unexpected WR_REQ in RES_SENDING
8271.968447  WR_RCV [02]  <== SSIF_ABORTING  <- do nothing
8271.968452  WR_RCV [02]  <== SSIF_ABORTING  <- do nothing
8271.968454  WR_RCV [18]  <== SSIF_ABORTING  <- do nothing
8271.968456  WR_RCV [01]  <== SSIF_ABORTING  <- do nothing
8271.968458  WR_RCV [66]  <== SSIF_ABORTING  <- do nothing
8271.978714  STOP []      <== SSIF_ABORTING >> SSIF_READY  <- log: unexpected SLAVE STOP in state=SSIF_ABORTING

3. T+1: Next Read polling, treated as a fresh transaction
8271.979125  WR_REQ []    <== SSIF_READY >> SSIF_START
8271.979326  WR_RCV [03]  <== SSIF_START >> SSIF_SMBUS_CMD        <- smbus_cmd=0x03
8271.979331  RD_REQ [04]  <== SSIF_RES_SENDING      <- sending response
8271.979427  RD_PRO [b4]                            <- !! this is T's stale response -> desynchronization

When in SSIF_ABORTING state, a newly arrived command should still be
handled to avoid dropping the request or causing message
desynchronization.

Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
---
 drivers/char/ipmi/ssif_bmc.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index 4037615ace12..d0543be0af80 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -458,6 +458,15 @@ static bool supported_write_cmd(u8 cmd)
 	return false;
 }
 
+static bool supported_write_start_cmd(u8 cmd)
+{
+	if (cmd == SSIF_IPMI_SINGLEPART_WRITE ||
+	    cmd == SSIF_IPMI_MULTIPART_WRITE_START)
+		return true;
+
+	return false;
+}
+
 /* Process the IPMI response that will be read by master */
 static void handle_read_processed(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 {
@@ -709,6 +718,11 @@ static void on_write_received_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 			ssif_bmc->state = SSIF_ABORTING;
 		else
 			ssif_bmc->state = SSIF_REQ_RECVING;
+	} else if (ssif_bmc->state == SSIF_ABORTING) {
+		if (supported_write_start_cmd(*val)) {
+			ssif_bmc->state = SSIF_SMBUS_CMD;
+			ssif_bmc->aborting = false;
+		}
 	}
 
 	/* This is response sending state */
-- 
2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
