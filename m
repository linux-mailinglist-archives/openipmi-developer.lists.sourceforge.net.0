Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8D9537BF9
	for <lists+openipmi-developer@lfdr.de>; Mon, 30 May 2022 15:29:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nvfSQ-0003FB-T0; Mon, 30 May 2022 13:29:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1nvfSP-0003Em-F9
 for openipmi-developer@lists.sourceforge.net; Mon, 30 May 2022 13:29:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YxYFOcUpr7Ow61sPUmCT4V7LeiDpMGmS1HmTs+JqSwI=; b=jOE8tQpX1Ixnmx8wS6FtatQnIG
 kytN88gOT6bINU+qulToO4aOD86i+dD9LnDCHEIN/v6wlonjWbDVM9iTWRUSZtmOCRh1AJAUrOrXJ
 lYfzV9rPCwQf9kTuolRJLHY4Qsb3H8HGVvc3qqCytnkCL2+NrEwl5fIINtgJrqtoHTa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YxYFOcUpr7Ow61sPUmCT4V7LeiDpMGmS1HmTs+JqSwI=; b=OGeypnyqd8jiOHpGLCyu7yhpK4
 henWxdO4hSVQiXIFjRfpAkQfGJGtO3tQuz0PkYkLE8mBLyvdNodyCtAizOa3ESDKRchLeFjDfcCIY
 72UQTBWVRdYsYvd58IIfC5AFP5jMoanEgT5PDmFzjrpJkh0ufIrj82CsYkR9aR7RCGP4=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nvfSO-002pWJ-Rz
 for openipmi-developer@lists.sourceforge.net; Mon, 30 May 2022 13:29:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9431EB80D89;
 Mon, 30 May 2022 13:29:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B758EC36AE5;
 Mon, 30 May 2022 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653917347;
 bh=4YDsHdimR8u7sWuDUcn+7M1z80A9tCO2U93t+ProAg8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=atsPl3job3auhVZJcjRZrkiC6ixw/kqE4aNEqUNx5cJwm2gI0Wzgu+B6rinRmGdtq
 L+NFKhpcxRgk2fqgvzZbhBUWbN7rmi06k0J/0bLl5b3qHHZh5Cylus5YHlx0vmqEl2
 OXEOLy+RGLBNTnKFQnfaX9Cje8R9NBCLtc50d58KdmAG/6U0hn1P0fXaB68Zo++fjM
 pkigvqsquk7h5MsqjDGYt1he6Rc9Z/QSlkKFb4yFOfx3wh1sFoKoR+sZYM9uBqB6/Q
 lEcEyX1SeJM8lTpqBxZjvlktYAUW8AkOtJyLUPTmMJVWvx6PGuGJu1Anc1szAkhgB/
 ftQkTSQdfGkBg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 30 May 2022 09:23:30 -0400
Message-Id: <20220530132425.1929512-105-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530132425.1929512-1-sashal@kernel.org>
References: <20220530132425.1929512-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard <cminyard@mvista.com> [ Upstream commit
 9824117dd964ecebf5d81990dbf21dfb56445049 ] There was a "type" element added
 to this structure, but some static values were missed. The default value
 will be zero, which is correct, but create an initializer for the type and
 initialize the type [...] 
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nvfSO-002pWJ-Rz
Subject: [Openipmi-developer] [PATCH AUTOSEL 5.18 105/159] ipmi: Add an
 intializer for ipmi_smi_msg struct
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
Cc: Sasha Levin <sashal@kernel.org>, Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, Joe Wiese <jwiese@rackspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

[ Upstream commit 9824117dd964ecebf5d81990dbf21dfb56445049 ]

There was a "type" element added to this structure, but some static
values were missed.  The default value will be zero, which is correct,
but create an initializer for the type and initialize the type properly
in the initializer to avoid future issues.

Reported-by: Joe Wiese <jwiese@rackspace.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/ipmi_poweroff.c |  4 +---
 drivers/char/ipmi/ipmi_watchdog.c | 14 +++++---------
 include/linux/ipmi_smi.h          |  6 ++++++
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_poweroff.c b/drivers/char/ipmi/ipmi_poweroff.c
index bc3a18daf97a..62e71c46ac5f 100644
--- a/drivers/char/ipmi/ipmi_poweroff.c
+++ b/drivers/char/ipmi/ipmi_poweroff.c
@@ -94,9 +94,7 @@ static void dummy_recv_free(struct ipmi_recv_msg *msg)
 {
 	atomic_dec(&dummy_count);
 }
-static struct ipmi_smi_msg halt_smi_msg = {
-	.done = dummy_smi_free
-};
+static struct ipmi_smi_msg halt_smi_msg = INIT_IPMI_SMI_MSG(dummy_smi_free);
 static struct ipmi_recv_msg halt_recv_msg = {
 	.done = dummy_recv_free
 };
diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 0604abdd249a..4c1e9663ea47 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -354,9 +354,7 @@ static void msg_free_recv(struct ipmi_recv_msg *msg)
 			complete(&msg_wait);
 	}
 }
-static struct ipmi_smi_msg smi_msg = {
-	.done = msg_free_smi
-};
+static struct ipmi_smi_msg smi_msg = INIT_IPMI_SMI_MSG(msg_free_smi);
 static struct ipmi_recv_msg recv_msg = {
 	.done = msg_free_recv
 };
@@ -475,9 +473,8 @@ static void panic_recv_free(struct ipmi_recv_msg *msg)
 	atomic_dec(&panic_done_count);
 }
 
-static struct ipmi_smi_msg panic_halt_heartbeat_smi_msg = {
-	.done = panic_smi_free
-};
+static struct ipmi_smi_msg panic_halt_heartbeat_smi_msg =
+	INIT_IPMI_SMI_MSG(panic_smi_free);
 static struct ipmi_recv_msg panic_halt_heartbeat_recv_msg = {
 	.done = panic_recv_free
 };
@@ -516,9 +513,8 @@ static void panic_halt_ipmi_heartbeat(void)
 		atomic_sub(2, &panic_done_count);
 }
 
-static struct ipmi_smi_msg panic_halt_smi_msg = {
-	.done = panic_smi_free
-};
+static struct ipmi_smi_msg panic_halt_smi_msg =
+	INIT_IPMI_SMI_MSG(panic_smi_free);
 static struct ipmi_recv_msg panic_halt_recv_msg = {
 	.done = panic_recv_free
 };
diff --git a/include/linux/ipmi_smi.h b/include/linux/ipmi_smi.h
index 9277d21c2690..5d69820d8b02 100644
--- a/include/linux/ipmi_smi.h
+++ b/include/linux/ipmi_smi.h
@@ -125,6 +125,12 @@ struct ipmi_smi_msg {
 	void (*done)(struct ipmi_smi_msg *msg);
 };
 
+#define INIT_IPMI_SMI_MSG(done_handler) \
+{						\
+	.done = done_handler,			\
+	.type = IPMI_SMI_MSG_TYPE_NORMAL	\
+}
+
 struct ipmi_smi_handlers {
 	struct module *owner;
 
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
