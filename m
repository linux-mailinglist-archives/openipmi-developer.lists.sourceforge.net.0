Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5203DA9B499
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znT-0004Um-8R;
	Thu, 24 Apr 2025 16:51:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znS-0004Ub-0u
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5DtP54tyqxFhFBILx2kDBmZqGd2mYL3dx6NE92iFW4Q=; b=Q9+ElVN0dbDCg5vSAh5aTih6lI
 FUG0yr2elSUOo6a50/3nb5vb/WEWXlZMoeaSLEMwrYl5Wc6UbFo5mHr2I6k7XFIyYslKldZ6wX/Qc
 twJea0yqU4sgr7SIjZjNFUCE1l1wQCTqObb3PScclSvvQMYraSxBAErYnqNRyehzNhS0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5DtP54tyqxFhFBILx2kDBmZqGd2mYL3dx6NE92iFW4Q=; b=dlIy1UwW5YPNopBVP8P2xAtj/v
 uTGmr0vQJJKgg6is+eSlVjxKAZQmXt79ungDT26PUr2PuyVNB50Nst4i92WacxVwa2Zz824K6birz
 rMZr5M5GYGkCFEA0YqLw+lqUp9otT2NyVSRTO89C22TlWka5P/xhE+wrW0mXnqywbWj4=;
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7znA-0002jT-Im for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:33 +0000
Received: by mail-oi1-f176.google.com with SMTP id
 5614622812f47-401be80368fso429407b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513471; x=1746118271;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5DtP54tyqxFhFBILx2kDBmZqGd2mYL3dx6NE92iFW4Q=;
 b=VWGkj1ZhV7n+U0J7qcicJKqjqfAOZ8+vLqSlH+2tXFZGHFv5U6wDImDY1PdykGN1nb
 4a4n7CSxEzOg0Tc/2dFsqI6BWSpM7dSvUkfkPrq6eorFLdKKG7JvVuujCkktnJVtM1hQ
 MZbLl8046S7qgkgsnfOBA9JvyGds7X7/kL45305JT2nmt2/ssFacEJflF5Bd1psMofaM
 mczX0Nz29XLCD3bWzZ4hCjFh9sfYQDQUjFF2CGVavr+tVeZlKnZ+lUlreXgvqPPDitQs
 y1j/KRzw9NeV4LWE2plAOjE/wlcFiAEB5VZho/nPDUXlUSD5EwN4kdKq/j+a/mXi6Z8P
 MqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513471; x=1746118271;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5DtP54tyqxFhFBILx2kDBmZqGd2mYL3dx6NE92iFW4Q=;
 b=esofaL4YD40kYVi8TP2yq7T8EoPg5yN74ywYat3w8vFFKHeJ595SX0bx2U5NZQakSH
 3syVVRLbbqnjnKpCDqDJpKPC4WKiuNekbAT653lUGSs7N7JC++Nv/VXKO3nT8ByMvhdM
 06Y5M+DlvhuP+ORTW344GBuOz3N2K4dS7Hk4+yCbQOf3rH1h91ldlL2ypYKJzkqETFs7
 I5C6uOOcFQEIwQ0fy58nMDhzPQWtceY+HoMZqPAymmUkZ50zu5epgVHgZc4bx01QEwXl
 HggLq1fCbv+RcHbDzodphlTfrF0bx24IK9lbkAf61BsR6t+Q6jtA5h5nHtrbqt8nM7pM
 RD/g==
X-Forwarded-Encrypted: i=1;
 AJvYcCU7jzyWjcwnO/AywLMFaGZr7xjwecdaVFsozs2rZLmIZITuv1YcOxBeY1ODfWU5EqPlpVbHtgoSLF3baE8JDcs3rW4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwC4unzTTv6QnwunHBsl2ughWrLT9VaTP7CuOl5kavOAJ3Mne3r
 ZOaqWgrOJ8fMDfnXY3wDXRJDF1ubBO5wmR1LwcOiZsOKyBSk6WYMI66AD7FP7t8=
X-Gm-Gg: ASbGncua328OUm7FuDIneLJqYrdPgwT0GQFKy5xqrCeBOr/leiiGQQp2JxSfly39+0x
 syVNM6lY+8D8KkaUbn5rDOOgMzxByKaryGfJwt9Akt4cX+EIon4ApFVRtiaS8t+ErDjxx0Y6n32
 ukuYVhgUc0tTHjR1+VnS3B3bvwoOk52Qg1DZaQUMAzu8zVoNUW+xQKXLl7F3rtB1YGzwxgIFC+r
 m2CTxgZqNFnw1uU16xcITWd14oTKeOS1wRn2xzaQXTGismcUEi32eXFRhod8CPYuJoeCc0DiwSV
 s5qjrNF4B6yteN6k8hzf+fPvzJIy0Dzt340=
X-Google-Smtp-Source: AGHT+IHZgD6N5Ydm2i854rDOI9bgjRs+sNeoNUESxEFdm0GMfAu3nWPsdoBeLj7XFF1Qh0xyiRdviA==
X-Received: by 2002:a05:6808:6c8e:b0:3f6:7832:77f1 with SMTP id
 5614622812f47-401eb3cf753mr1932722b6e.33.1745513470904; 
 Thu, 24 Apr 2025 09:51:10 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8c9dd3sm308524b6e.11.2025.04.24.09.51.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:51:10 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:50:00 -0500
Message-ID: <20250424165020.627193-24-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424165020.627193-1-corey@minyard.net>
References: <20250424165020.627193-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It's available, remove all the duplicate code. Signed-off-by:
 Corey Minyard <cminyard@mvista.com> --- drivers/char/ipmi/ipmi_watchdog.c
 | 72 ++++++++ 1 file changed, 17 insertions(+), 55 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.176 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.176 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.176 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1u7znA-0002jT-Im
Subject: [Openipmi-developer] [PATCH 23/23] ipmi:watchdog: Use the new
 interface for panic messages
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
Cc: Breno Leitao <leitao@debian.org>, Corey Minyard <corey@minyard.net>,
 "Paul E . McKenney" <paulmck@kernel.org>, Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It's available, remove all the duplicate code.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 72 ++++++++-----------------------
 1 file changed, 17 insertions(+), 55 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 01c10bd5f099..ab759b492fdd 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -363,7 +363,7 @@ static int __ipmi_set_timeout(struct ipmi_smi_msg  *smi_msg,
 {
 	struct kernel_ipmi_msg            msg;
 	unsigned char                     data[6];
-	int                               rv;
+	int                               rv = 0;
 	struct ipmi_system_interface_addr addr;
 	int                               hbnow = 0;
 
@@ -405,14 +405,18 @@ static int __ipmi_set_timeout(struct ipmi_smi_msg  *smi_msg,
 	msg.cmd = IPMI_WDOG_SET_TIMER;
 	msg.data = data;
 	msg.data_len = sizeof(data);
-	rv = ipmi_request_supply_msgs(watchdog_user,
-				      (struct ipmi_addr *) &addr,
-				      0,
-				      &msg,
-				      NULL,
-				      smi_msg,
-				      recv_msg,
-				      1);
+	if (smi_msg)
+		rv = ipmi_request_supply_msgs(watchdog_user,
+					      (struct ipmi_addr *) &addr,
+					      0,
+					      &msg,
+					      NULL,
+					      smi_msg,
+					      recv_msg,
+					      1);
+	else
+		ipmi_panic_request_and_wait(watchdog_user,
+					    (struct ipmi_addr *) &addr, &msg);
 	if (rv)
 		pr_warn("set timeout error: %d\n", rv);
 	else if (send_heartbeat_now)
@@ -431,9 +435,7 @@ static int _ipmi_set_timeout(int do_heartbeat)
 
 	atomic_set(&msg_tofree, 2);
 
-	rv = __ipmi_set_timeout(&smi_msg,
-				&recv_msg,
-				&send_heartbeat_now);
+	rv = __ipmi_set_timeout(&smi_msg, &recv_msg, &send_heartbeat_now);
 	if (rv) {
 		atomic_set(&msg_tofree, 0);
 		return rv;
@@ -460,27 +462,10 @@ static int ipmi_set_timeout(int do_heartbeat)
 	return rv;
 }
 
-static atomic_t panic_done_count = ATOMIC_INIT(0);
-
-static void panic_smi_free(struct ipmi_smi_msg *msg)
-{
-	atomic_dec(&panic_done_count);
-}
-static void panic_recv_free(struct ipmi_recv_msg *msg)
-{
-	atomic_dec(&panic_done_count);
-}
-
-static struct ipmi_smi_msg panic_halt_heartbeat_smi_msg =
-	INIT_IPMI_SMI_MSG(panic_smi_free);
-static struct ipmi_recv_msg panic_halt_heartbeat_recv_msg =
-	INIT_IPMI_RECV_MSG(panic_recv_free);
-
 static void panic_halt_ipmi_heartbeat(void)
 {
 	struct kernel_ipmi_msg             msg;
 	struct ipmi_system_interface_addr addr;
-	int rv;
 
 	/*
 	 * Don't reset the timer if we have the timer turned off, that
@@ -497,24 +482,10 @@ static void panic_halt_ipmi_heartbeat(void)
 	msg.cmd = IPMI_WDOG_RESET_TIMER;
 	msg.data = NULL;
 	msg.data_len = 0;
-	atomic_add(2, &panic_done_count);
-	rv = ipmi_request_supply_msgs(watchdog_user,
-				      (struct ipmi_addr *) &addr,
-				      0,
-				      &msg,
-				      NULL,
-				      &panic_halt_heartbeat_smi_msg,
-				      &panic_halt_heartbeat_recv_msg,
-				      1);
-	if (rv)
-		atomic_sub(2, &panic_done_count);
+	ipmi_panic_request_and_wait(watchdog_user, (struct ipmi_addr *) &addr,
+				    &msg);
 }
 
-static struct ipmi_smi_msg panic_halt_smi_msg =
-	INIT_IPMI_SMI_MSG(panic_smi_free);
-static struct ipmi_recv_msg panic_halt_recv_msg =
-	INIT_IPMI_RECV_MSG(panic_recv_free);
-
 /*
  * Special call, doesn't claim any locks.  This is only to be called
  * at panic or halt time, in run-to-completion mode, when the caller
@@ -526,22 +497,13 @@ static void panic_halt_ipmi_set_timeout(void)
 	int send_heartbeat_now;
 	int rv;
 
-	/* Wait for the messages to be free. */
-	while (atomic_read(&panic_done_count) != 0)
-		ipmi_poll_interface(watchdog_user);
-	atomic_add(2, &panic_done_count);
-	rv = __ipmi_set_timeout(&panic_halt_smi_msg,
-				&panic_halt_recv_msg,
-				&send_heartbeat_now);
+	rv = __ipmi_set_timeout(NULL, NULL, &send_heartbeat_now);
 	if (rv) {
-		atomic_sub(2, &panic_done_count);
 		pr_warn("Unable to extend the watchdog timeout\n");
 	} else {
 		if (send_heartbeat_now)
 			panic_halt_ipmi_heartbeat();
 	}
-	while (atomic_read(&panic_done_count) != 0)
-		ipmi_poll_interface(watchdog_user);
 }
 
 static int __ipmi_heartbeat(void)
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
