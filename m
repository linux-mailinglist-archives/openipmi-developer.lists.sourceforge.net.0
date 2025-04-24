Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 732A4A9B520
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 19:19:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u80EW-0004Fo-O7;
	Thu, 24 Apr 2025 17:19:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u80EU-0004FV-Eq
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 17:19:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SZCnXReemUxFfOn+5GlvXuuUi6hFy4IX7Q4LFZGGFqo=; b=i+Lf5htijrg1wT5WdzD0ykowem
 a9LO2JitEB50XNlQm7poF+0secLut0CoRXIZ452u5d+JEsi6UmpE/C8KeLi7IBWJM2GKw/G+15nm8
 YE3NP2rDoplMcCnHtS5rtWfnVIfdT113B5ZlNEakkrTkgmBrkEeNDD0rDQmmGaSLT0ok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SZCnXReemUxFfOn+5GlvXuuUi6hFy4IX7Q4LFZGGFqo=; b=YtVbhKxjl8who0qL54qQilxqj9
 KX7wtCHPBDTVDti0CbijMAUnuFTmdu/+52apc4B/7FryT1pOuSPWZ0oGeO+0xzG2BNLfVwmu2w2IH
 jo2QxtJYq6t9w0kgU/wfRob3O+Q5ozqTNut6ZusYS0rZRUXAE1uUdxlti0wTiTYHvvIo=;
Received: from mail-oa1-f50.google.com ([209.85.160.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u80EF-0004Fj-Hh for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 17:19:31 +0000
Received: by mail-oa1-f50.google.com with SMTP id
 586e51a60fabf-2d522f699bcso606159fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 10:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745515145; x=1746119945;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SZCnXReemUxFfOn+5GlvXuuUi6hFy4IX7Q4LFZGGFqo=;
 b=dRsA3vtdW1lwLJYeCynWT0RlJJ4TAOB2n/NODz84DgdSEgFH8Ku8dBQIsMpLF3SQev
 LlH5wIt4qhxLAxJ9qrGihii0rf9haCNVw7F2a//s81c280K/Djz/ulmt7Te/oRhUKAfX
 KdIoDaqc3jnUKatgYo63GjWmzgNEClDbP+rfEwO9fBQ/2lhkbTMoJQK6mnC2QBSLUgE6
 /VYyXfuf+iCIOqZDbUiEVKzxLaD228UiNyuxvOK3hlCrAw0iPMwKXoGqr4pPMGrQVjj/
 /gmZitQqxTfTWQVqqOYISMEU0USb9F1KUmQXKtpxw77AeGrQ1I/TyyXSHSrWJEx1lpY2
 KesQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745515145; x=1746119945;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SZCnXReemUxFfOn+5GlvXuuUi6hFy4IX7Q4LFZGGFqo=;
 b=bUHj10jmdpvRLhVGGhE5LssGoIQLmuQ4mYnJggo0tzQEXU4IHvweYo8ikL5Flp77KJ
 4VtuYdoKbH6h05wjHA4oD6cyEfKHYQm1M8qVLJhAJ5Ubnd0O3F42Hpzb2Gd/1oeV4hE/
 wfPPkjgyGVL67qsG7YKjzcPtfTAhd3C2n9cnC4Rg2wJZ8CGA8Q0JBTW2JkBqvCsaSgih
 txyXcoIy8QRytXE5mYebzio3bDLvOqHqN/gsg3R6Y+wWmYpwtsSRN3pdFExKjgw8Sw/A
 b7sSSnQyOA+SB6LZCFuJM6bNnOV6DLQN4haJvGT94atx2yvF5KnjmNmv7ClpSiQXADtE
 r4ew==
X-Forwarded-Encrypted: i=1;
 AJvYcCXaI9LIcY64VeZw3JkgblTTsvBVhItKn/MYCbHfQRKqymtcjqCetpk5eqygBf8jR5rtSksvfIUUYwLwjr6LBL3r1Xw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyROxxpyfoBBc8JaKiEnDS8/f5KauUbUb36lOi+TvZ8d+pwRqv2
 PDDUBVzXRn61IFhigAKumC3veLwsGETdNgjtl6PJLgAZ1So4UzCRsz39Ht3QUuIsIsKLy2yuWDg
 z
X-Gm-Gg: ASbGncvE4/MNb63Ygs5QXPmzCDuPo+tvNdX6OVZCU0G+KQyrCltHWpxBjJAtlv84my+
 iBqgYANhLvrBXJoH/w5VozTjrqy7ibLvDbKSG1D9n+VX4lMFUc0RPzde7Y73kBFG9ENsxyUE7e9
 Mu2lwIhKvQrjYeF88RxMyCW5oEwiOrW3bvaZOhtooOilUOxyoLV0Bxbf6vgPKDCCIKi2vf08ghD
 BdX6sRmJ4Mc1zexoz3s8HdxqRz6JaMZx5bwDHVxcgEVLAUX9n++UfGq/eS1tZ2ejHbuWHMIcskK
 0AhFzcZ9ClO5PZJkoxbgywDWV42koA99zT7As3U9LNXMgQ==
X-Google-Smtp-Source: AGHT+IGc6CxvVncjGX9yYC21KFrqVXSC+mtv5R2uoUCopPdPsclItA9g8NY1N3XeTKAv8V27mY7Pfw==
X-Received: by 2002:a05:6820:1e04:b0:603:f777:980a with SMTP id
 006d021491bc7-6064fd81116mr123021eaf.7.1745513436253; 
 Thu, 24 Apr 2025 09:50:36 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 006d021491bc7-60646863e7dsm324897eaf.6.2025.04.24.09.50.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:34 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:41 -0500
Message-ID: <20250424165020.627193-5-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424165020.627193-1-corey@minyard.net>
References: <20250424165020.627193-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This simplifies the locking and lets us remove some weird
 event handling code. deliver_response() and friends can now be called from
 an atomic context. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 drivers/char/ipmi/ipmi_msghandler.c | 41 ++++++++++++++++++ 1 file changed,
 25 insertions(+), 16 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.50 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.50 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.50 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u80EF-0004Fj-Hh
Subject: [Openipmi-developer] [PATCH 04/23] ipmi:msghandler: Deliver user
 messages in a work queue
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

This simplifies the locking and lets us remove some weird event
handling code.  deliver_response() and friends can now be called
from an atomic context.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 41 ++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 16 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e08ec9918a32..fc939b5bb7f8 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -495,6 +495,12 @@ struct ipmi_smi {
 	struct seq_table seq_table[IPMI_IPMB_NUM_SEQ];
 	int curr_seq;
 
+	/*
+	 * Messages queued for deliver to the user.
+	 */
+	struct mutex user_msgs_mutex;
+	struct list_head user_msgs;
+
 	/*
 	 * Messages queued for delivery.  If delivery fails (out of memory
 	 * for instance), They will stay in here to be processed later in a
@@ -525,7 +531,6 @@ struct ipmi_smi {
 	spinlock_t       events_lock; /* For dealing with event stuff. */
 	struct list_head waiting_events;
 	unsigned int     waiting_events_count; /* How many events in queue? */
-	char             delivering_events;
 	char             event_msg_printed;
 
 	/* How many users are waiting for events? */
@@ -945,9 +950,13 @@ static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 		struct ipmi_user *user = acquire_ipmi_user(msg->user, &index);
 
 		if (user) {
-			atomic_dec(&user->nr_msgs);
-			user->handler->ipmi_recv_hndl(msg, user->handler_data);
+			/* Deliver it in smi_work. */
+			kref_get(&user->refcount);
+			mutex_lock(&intf->user_msgs_mutex);
+			list_add_tail(&msg->link, &intf->user_msgs);
+			mutex_unlock(&intf->user_msgs_mutex);
 			release_ipmi_user(user, index);
+			queue_work(system_bh_wq, &intf->smi_work);
 		} else {
 			/* User went away, give up. */
 			ipmi_free_recv_msg(msg);
@@ -1610,13 +1619,6 @@ int ipmi_set_gets_events(struct ipmi_user *user, bool val)
 		atomic_dec(&intf->event_waiters);
 	}
 
-	if (intf->delivering_events)
-		/*
-		 * Another thread is delivering events for this, so
-		 * let it handle any new events.
-		 */
-		goto out;
-
 	/* Deliver any queued events. */
 	while (user->gets_events && !list_empty(&intf->waiting_events)) {
 		list_for_each_entry_safe(msg, msg2, &intf->waiting_events, link)
@@ -1627,17 +1629,11 @@ int ipmi_set_gets_events(struct ipmi_user *user, bool val)
 			intf->event_msg_printed = 0;
 		}
 
-		intf->delivering_events = 1;
-		spin_unlock_irqrestore(&intf->events_lock, flags);
-
 		list_for_each_entry_safe(msg, msg2, &msgs, link) {
 			msg->user = user;
 			kref_get(&user->refcount);
 			deliver_local_response(intf, msg);
 		}
-
-		spin_lock_irqsave(&intf->events_lock, flags);
-		intf->delivering_events = 0;
 	}
 
  out:
@@ -3590,6 +3586,8 @@ int ipmi_add_smi(struct module         *owner,
 	}
 	if (slave_addr != 0)
 		intf->addrinfo[0].address = slave_addr;
+	INIT_LIST_HEAD(&intf->user_msgs);
+	mutex_init(&intf->user_msgs_mutex);
 	INIT_LIST_HEAD(&intf->users);
 	atomic_set(&intf->nr_users, 0);
 	intf->handlers = handlers;
@@ -4814,6 +4812,7 @@ static void smi_work(struct work_struct *t)
 	struct ipmi_smi *intf = from_work(intf, t, smi_work);
 	int run_to_completion = READ_ONCE(intf->run_to_completion);
 	struct ipmi_smi_msg *newmsg = NULL;
+	struct ipmi_recv_msg *msg, *msg2;
 
 	/*
 	 * Start the next message if available.
@@ -4851,6 +4850,16 @@ static void smi_work(struct work_struct *t)
 	rcu_read_unlock();
 
 	handle_new_recv_msgs(intf);
+
+	mutex_lock(&intf->user_msgs_mutex);
+	list_for_each_entry_safe(msg, msg2, &intf->user_msgs, link) {
+		struct ipmi_user *user = msg->user;
+
+		atomic_dec(&user->nr_msgs);
+		user->handler->ipmi_recv_hndl(msg, user->handler_data);
+		kref_put(&user->refcount, free_user);
+	}
+	mutex_unlock(&intf->user_msgs_mutex);
 }
 
 /* Handle a new message from the lower layer. */
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
