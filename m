Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GoJMjiDz2mwwwYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 11:07:04 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7EF392920
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 11:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:In-Reply-To:Message-Id:Date:To:
	Mime-Version:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DTNZWp36MdK71Vn47sV/EuQOv743V75+uTRKrOKGG2E=; b=fLCYRKXkQVPti/BA6OLtyQLchK
	9b4nJIt2MOgXHWHv2HoulZeeRRnxa9b38dcE5ntKDXZe3IAOwMfe8I19lOQxF1udSawxajAJs/Fni
	/z/8sM5JlxwPAIFM5f0mcTXcHzEgl77UmCty233c6Coirx11d+C/o9wdUt5uHuyiQIJg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8aUT-0008TA-Pj;
	Fri, 03 Apr 2026 09:06:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8aUS-0008Sx-8W
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 09:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:From:References:
 In-Reply-To:Message-Id:Date:Subject:To:Mime-Version:Content-Type:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q+SplgerSqypRDkfWE0REkgN5oAzmVnTcdixI1eVM2Y=; b=iBeI2L6FXJ2KL1fYBKJXzZ4K6K
 UpcAhZBXLNOuJLFqLgmPeL7U/g9QJIBkrUByi6AvkZAJsaAzMyKfrSA2jApncs0I094Q1YIzACouB
 glqx2mPi6IhOq+/8YW0OthIFdiovSOJA7MWKa3ZJIGRoUXQt9iJagMtgAFEcAF07lyG4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:From:References:In-Reply-To:Message-Id:Date:
 Subject:To:Mime-Version:Content-Type:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q+SplgerSqypRDkfWE0REkgN5oAzmVnTcdixI1eVM2Y=; b=R6dq+RWJW5sbUzptXh7hY8A3po
 F31r4G/v2FznLEo681sU8HcXjWw+G7pEjLbjgT5vvpA88C6wyYh28HYHc4o7SdXYcVNnGuV7gC4oe
 7EjwLaKuQTFScysYxQkrMz4jKjh8K4l1fUSsrbHfd5prNf0N7TagBKR85buW9bNMmodQ=;
Received: from va-1-112.ptr.blmpb.com ([209.127.230.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8aUQ-0003MH-Py for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 09:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775207200; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=q+SplgerSqypRDkfWE0REkgN5oAzmVnTcdixI1eVM2Y=;
 b=R8YPzoMhhWcYIGrEul16ea6ZPIZfQTBssvGeGWzKVKhETj0Eidalmwpn7idOSdhHjF2oMF
 hhYlBfD40vxHAKym/AtfPWOZIG8bKkg8MB7aKwyAn4Tx2/uBcgvNShiim/PKV0WNeAUs8v
 GEdndhKFrP8HYVvvMHvfl4cGA0eRhDyQn/PSwrlDkN9WtIO2wRUM2Bvwptn6TgmPR0Y1Lu
 SA8XtG6odostqH6zLr0bpcXJ0wJE9WRujZUjJdLGpqfAP4FggNeaxQ+bEex87YUHQIUxFN
 xZqnFbxyrnedl3ZhFj0+0uQjSa3OYsXttNaxDZoh8FYK9q9pnixlJ1TGXapDHQ==
X-Lms-Return-Path: <lba+269cf831e+32f0af+lists.sourceforge.net+zhangjian.3032@bytedance.com>
Mime-Version: 1.0
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
X-Mailer: git-send-email 2.20.1
To: "Corey Minyard" <corey@minyard.net>, 
 "Quan Nguyen" <quan@os.amperecomputing.com>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Date: Fri,  3 Apr 2026 17:06:00 +0800
Message-Id: <20260403090603.3988423-3-zhangjian.3032@bytedance.com>
In-Reply-To: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
References: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1w8aUQ-0003MH-Py
Subject: [Openipmi-developer] [PATCH v2 3/5] ipmi: ssif_bmc: fix message
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 4D7EF392920
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
index fbc7d2cfd535..a1e1a7f1e104 100644
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
