Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B71260FB4F
	for <lists+openipmi-developer@lfdr.de>; Thu, 27 Oct 2022 17:09:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oo4Vi-0000D5-4D;
	Thu, 27 Oct 2022 15:09:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=KBNb=24=goodmis.org=rostedt@kernel.org>)
 id 1oo4Vg-0000Cy-Ij for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Oct 2022 15:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Subject:Cc:To:
 From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R9/dyHU0ttQhAMauVjiics3a+M2cPLLX5UeGSlLMrCo=; b=dEV+MObmM4WQskiGsRB4nueizT
 apBK3h6TmmFX/suVSTBIu2U+xl4ewLYRSmPQdOKdyE8AYmoKTU1tRTuX0DTiFWmN5qdFIdEgMbRaz
 FzaX+eDbXcJJPjJ0eNvUt+Lji+MtPJbtSKRNDCoWpjvQrYyq6tH71Z4RaKyY9CY5c/xk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Subject:Cc:To:From:Date:Message-ID:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=R9/dyHU0ttQhAMauVjiics3a+M2cPLLX5UeGSlLMrCo=; b=J
 fbn8Y8ZgH51CHRjt2JHIxXBrtKsFzmTYNgpHvB8CDtbaiO2RzfZ4SiejkvrKUwlvtkfR/z3/PwZBh
 j9+jSzM5VQQ3Hlawoq0KpTiQap0b83sNbX1GCtmLkl52kNI63diN/yzkgY5cEr3TG4DqNZEyo+4Br
 Ls3L/YV2pwWYzqL8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oo4Vb-0004St-0c for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Oct 2022 15:09:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1D9A2623A0;
 Thu, 27 Oct 2022 15:09:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC0A3C4347C;
 Thu, 27 Oct 2022 15:09:11 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.96)
 (envelope-from <rostedt@goodmis.org>) id 1oo4Vb-00BvX8-0S;
 Thu, 27 Oct 2022 11:09:27 -0400
Message-ID: <20221027150926.969147187@goodmis.org>
User-Agent: quilt/0.66
Date: Thu, 27 Oct 2022 11:05:35 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
References: <20221027150525.753064657@goodmis.org>
MIME-Version: 1.0
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: "Steven Rostedt (Google)" <rostedt@goodmis.org> Before
 a timer is freed, del_timer_shutdown() must be called. Link:
 https://lore.kernel.org/all/20220407161745.7d6754b3@gandalf.local.home/
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oo4Vb-0004St-0c
Subject: [Openipmi-developer] [RFC][PATCH v2 10/31] timers: ipmi: Use
 del_timer_shutdown() before freeing timer
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
Cc: Corey Minyard <minyard@acm.org>, Stephen Boyd <sboyd@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 openipmi-developer@lists.sourceforge.net, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: "Steven Rostedt (Google)" <rostedt@goodmis.org>

Before a timer is freed, del_timer_shutdown() must be called.

Link: https://lore.kernel.org/all/20220407161745.7d6754b3@gandalf.local.home/

Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 drivers/char/ipmi/ipmi_ssif.c       | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 49a1707693c9..b577f66f3ca6 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -5540,7 +5540,7 @@ static void __exit cleanup_ipmi(void)
 		 * here.
 		 */
 		atomic_set(&stop_operation, 1);
-		del_timer_sync(&ipmi_timer);
+		del_timer_shutdown(&ipmi_timer);
 
 		initialized = false;
 
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index e1072809fe31..bb4df879a5ab 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1273,8 +1273,8 @@ static void shutdown_ssif(void *send_info)
 		schedule_timeout(1);
 
 	ssif_info->stopping = true;
-	del_timer_sync(&ssif_info->watch_timer);
-	del_timer_sync(&ssif_info->retry_timer);
+	del_timer_shutdown(&ssif_info->watch_timer);
+	del_timer_shutdown(&ssif_info->retry_timer);
 	if (ssif_info->thread) {
 		complete(&ssif_info->wake_thread);
 		kthread_stop(ssif_info->thread);
-- 
2.35.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
