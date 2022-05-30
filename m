Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 706FE537CA0
	for <lists+openipmi-developer@lfdr.de>; Mon, 30 May 2022 15:36:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nvfYx-0004Al-6T; Mon, 30 May 2022 13:36:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1nvfYv-0004AO-Pj
 for openipmi-developer@lists.sourceforge.net; Mon, 30 May 2022 13:36:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4F6EJfJsro01VafEnUjEortdHzby9QIiV+eBhGXCpfg=; b=MYJIukcCT6f2ChdANrTFVvLiql
 98WplPypzvjAPEA5YgWAZRHIf00UZ4v1RSuHlS4KJC8xXuZJfN0jAyTk/Sw5W8FU4322y5wEoxsx3
 w+SfGkAk6vQMlXh8eFxQcI600ULcWU+d4CxvTJxUU8pvUHU+Aj35kOwcBs+WRxcq0g0M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4F6EJfJsro01VafEnUjEortdHzby9QIiV+eBhGXCpfg=; b=GI2fr9kl72nznkVITupGWquEJ8
 ZKd0Km19DC08wSSpx3rk8VtRtf6w23KSQkBZCSiKhv1F5ERHzj3EJIcfhGW5sauOvB9357fnXMbzO
 6I/kiriaRhtcE5H23rFDoCdNjyqunaIiYJrI5MQhVurZMF/zZSw0x/z8WglXXRhlp6sU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nvfYt-0006BJ-8l
 for openipmi-developer@lists.sourceforge.net; Mon, 30 May 2022 13:36:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3149F60D2C;
 Mon, 30 May 2022 13:35:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7769C3411A;
 Mon, 30 May 2022 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653917754;
 bh=ANvR0+X6vi8dluHkHYvQMoS88/nWD+GMOygl+QCxWBo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZwgylZ1lajL2sq8le71q15RZ4NcJ/grNQBQ3D5IRyAYM9l/t4WTQZo4AOYfAn9mFZ
 CgqEwH6eU8trCs286HR+w/AMdSR67K1jd7PMUjJWg5dgQI7xLxX9PYevGUSlr+3EuA
 W21zNlZr3Lf+3hAGScVPNJV5WbgeZePgobpjzXjCrGYZyQqnLux5z57A173jZ4yBUT
 ZM3U5p1cIJeRiLNE3CW/iOPOqlWa2BqRb1xUrZVDl511KkbgkEwEb1iqH2LISJEXBE
 T9nDwH5501nTFcgiCWh3E85MEV/zflEg9Q7OPuJ0ftyvpUW5+90RArwiQIFU33kACi
 yB/uN0MR3C+qw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 30 May 2022 09:30:45 -0400
Message-Id: <20220530133133.1931716-87-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530133133.1931716-1-sashal@kernel.org>
References: <20220530133133.1931716-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard <cminyard@mvista.com> [ Upstream commit
 9824117dd964ecebf5d81990dbf21dfb56445049 ] There was a "type" element added
 to this structure, but some static values were missed. The default value
 will be zero, which is correct, but create an initializer for the type and
 initialize the type [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nvfYt-0006BJ-8l
Subject: [Openipmi-developer] [PATCH AUTOSEL 5.17 087/135] ipmi: Add an
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
index 883b4a341012..8e536ce0a5d2 100644
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
