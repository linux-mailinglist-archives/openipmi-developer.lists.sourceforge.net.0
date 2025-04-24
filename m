Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F6FA9B484
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zmz-0001Wi-EW;
	Thu, 24 Apr 2025 16:51:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zmy-0001WU-Bo
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2mt9MAvn/ACFqWqqnCeEAAT+y/0Ha6ZnHJ12VSLv/cA=; b=cKpodCZp0T01zCYrlmbEfIlCco
 0vsfop+4GmfRfeSaE/geh4F2l4FvukYrR8ep7zBPM6wOHIJQ0nYtHGS30QHFpU1UqKIrj6Ex7sTjw
 OhbI+crgwOoQlJo9sfl9Mtg4/Fgb/uaw0YNazwS2GvDTfz2b1MqBzkG0gtCaEzdGpTNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2mt9MAvn/ACFqWqqnCeEAAT+y/0Ha6ZnHJ12VSLv/cA=; b=FjL5KSIflWhiK8l/h6Yb8IBjRL
 hZy8Yld2kqcAxsf/JU+4HogCsbSB69wG3DoO2YFfKyEqqC6F7w6w9krfwanfYz1WW0L4ribOD/OCJ
 922xUQi5rYxtGNnNbmQVnlhNK0MvVUe0hoqibhSpFshdYyrGZkv9PythRRMjaHGId3f0=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmj-0002h1-9T for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:05 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-72bb9725de1so325558a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513438; x=1746118238;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2mt9MAvn/ACFqWqqnCeEAAT+y/0Ha6ZnHJ12VSLv/cA=;
 b=uZwI1VWWjZgkZjQw4eYoj1rLbEH9KKBHzlV1mfYNhJNvwUfBJKdaijMbHeeg13qdS0
 idovT/mkKm+WoSvVExPEAtG6GFYZ3IcjhJJ521LkigeblAkyMw9tgoU0XOSxE4T3GjWl
 v02bT0YvA3ADLEgx3ctJ++al/KRzWtToJMGJjijNTez/+DhBXI/f2SPaA19NoVWeBKQI
 4vyXkmm6ADhSZfhbA7ZziD16j1IVzMyG8V/+fsXQYLUN/KYagD/YbM1Y7SMTC08/sMvi
 xLXxila0/4KC27xrn8kfj2u0uzDosrI0LqmK5nM4GGkYRydQgybCcSOZBW2I2z+lN/MB
 Z3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513438; x=1746118238;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2mt9MAvn/ACFqWqqnCeEAAT+y/0Ha6ZnHJ12VSLv/cA=;
 b=R0ba/Sk/wsVcnN9IHhZEUlXFXCMJQxZoH9WcEQ4E3XPshQpKMeByrmPMuzOfYkjll6
 JieVjjj9ELWRKmv4v+TCoxqCqdLfgU7qPXj00d/wKvjR+/Z++8eNwoDWHisSicrgcHlr
 M1p4Is4E9P0P5RDT7b7TDOcDOQaKchrNkF1Bb3x5f8DWbtDdzeKEMldV2SB16idM0PHa
 Xxta4ZGquiHSR3zgPDt/G0Ur3XaRaAtMqMtoQ/eu0FVKf5oodSxeETKkP9ZqgzdZpL9H
 Slc99At9yOhcC09bXga/g4RAERYXp1P6fUaFkNj+Za1AUsIGI7wj/hRfIBdDLYkZZ9hC
 0cAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6kdX+Mmaz+MHUrqJrA6sl611az0p5TNdShujO9tu8XMrRjVhg2jAMs18ZRgC9UU+vQcBQQvz9rDK7pT+eiI48Gj8=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz3mVyKP5u4gzfg1lj9fwTbeM2B6JqqHye23qoI0J6KbIo+OljI
 r8hvl/u7B34/a7LTUGt44oWMI3zI43LJtlOjE+rmEiB5Vn9BzIPMBe4ztqa4Y5A=
X-Gm-Gg: ASbGncvg8pm2ofxuX4vxKRhi7dd4DZsrVaPMJQ960EdHSD+qZNTGwBjnOHnxuOED8MI
 HYkAMZLwxcdqXhJ+IbAolSxvQ/B/wfEWWlv+UMYzxx/nCn/SslsimJytDFOrHWTXDe1t/MFTN9K
 VK5sjV5ke00KqjkATaiZEQdkNp3Uu0UsnyKQIlLCLZI3rTNeL5fA0cLdcx/E9k1hnp8f9VIatLa
 fsLYKfCu5856w+fNtHVRJCGjZ6lOXodQ9ts7qFWUYOEoh1284fer/No4GCUXbXzyJAKrAa/bGzI
 xNJJN3B6YYkaTMnYqnhuBoCszQFcwbfpe7I=
X-Google-Smtp-Source: AGHT+IHUBeiQqvCVK5Iwa41pbqkYZJ4oWj+0zn9TgmVdUvQdRn9eq8bIm2wn5C6jA0S/xoOjLt70Kg==
X-Received: by 2002:a05:6830:6086:b0:72b:943f:dda8 with SMTP id
 46e09a7af769-73059def7bamr397812a34.26.1745513438494; 
 Thu, 24 Apr 2025 09:50:38 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7304f37b12fsm297025a34.43.2025.04.24.09.50.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:38 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:42 -0500
Message-ID: <20250424165020.627193-6-corey@minyard.net>
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
 Content preview: It can only be called from thread context now. Signed-off-by:
 Corey Minyard <cminyard@mvista.com> --- drivers/char/ipmi/ipmi_msghandler.c
 | 14 ++++++-------- 1 file changed, 6 insertions(+), 8 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.46 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.46 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.46 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u7zmj-0002h1-9T
Subject: [Openipmi-developer] [PATCH 05/23] ipmi_msghandler: Change the
 events lock to a mutex
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

It can only be called from thread context now.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index fc939b5bb7f8..09e56e4141b7 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -528,7 +528,7 @@ struct ipmi_smi {
 	 * Events that were queues because no one was there to receive
 	 * them.
 	 */
-	spinlock_t       events_lock; /* For dealing with event stuff. */
+	struct mutex     events_mutex; /* For dealing with event stuff. */
 	struct list_head waiting_events;
 	unsigned int     waiting_events_count; /* How many events in queue? */
 	char             event_msg_printed;
@@ -1594,7 +1594,6 @@ EXPORT_SYMBOL(ipmi_set_maintenance_mode);
 
 int ipmi_set_gets_events(struct ipmi_user *user, bool val)
 {
-	unsigned long        flags;
 	struct ipmi_smi      *intf = user->intf;
 	struct ipmi_recv_msg *msg, *msg2;
 	struct list_head     msgs;
@@ -1606,7 +1605,7 @@ int ipmi_set_gets_events(struct ipmi_user *user, bool val)
 
 	INIT_LIST_HEAD(&msgs);
 
-	spin_lock_irqsave(&intf->events_lock, flags);
+	mutex_lock(&intf->events_mutex);
 	if (user->gets_events == val)
 		goto out;
 
@@ -1637,7 +1636,7 @@ int ipmi_set_gets_events(struct ipmi_user *user, bool val)
 	}
 
  out:
-	spin_unlock_irqrestore(&intf->events_lock, flags);
+	mutex_unlock(&intf->events_mutex);
 	release_ipmi_user(user, index);
 
 	return 0;
@@ -3605,7 +3604,7 @@ int ipmi_add_smi(struct module         *owner,
 	spin_lock_init(&intf->xmit_msgs_lock);
 	INIT_LIST_HEAD(&intf->xmit_msgs);
 	INIT_LIST_HEAD(&intf->hp_xmit_msgs);
-	spin_lock_init(&intf->events_lock);
+	mutex_init(&intf->events_mutex);
 	spin_lock_init(&intf->watch_lock);
 	atomic_set(&intf->event_waiters, 0);
 	intf->ticks_to_req_ev = IPMI_REQUEST_EV_TIME;
@@ -4391,7 +4390,6 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 	struct list_head     msgs;
 	struct ipmi_user     *user;
 	int rv = 0, deliver_count = 0, index;
-	unsigned long        flags;
 
 	if (msg->rsp_size < 19) {
 		/* Message is too small to be an IPMB event. */
@@ -4406,7 +4404,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 
 	INIT_LIST_HEAD(&msgs);
 
-	spin_lock_irqsave(&intf->events_lock, flags);
+	mutex_lock(&intf->events_mutex);
 
 	ipmi_inc_stat(intf, events);
 
@@ -4481,7 +4479,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 	}
 
  out:
-	spin_unlock_irqrestore(&intf->events_lock, flags);
+	mutex_unlock(&intf->events_mutex);
 
 	return rv;
 }
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
