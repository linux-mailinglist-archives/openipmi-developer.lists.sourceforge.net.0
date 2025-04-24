Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 624B0A9B49A
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znU-0007wK-VO;
	Thu, 24 Apr 2025 16:51:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znT-0007wA-4y
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lmKp2gCwW8Wb1KK3JuJ2jc0+NeIFs1EM3vsXyT2a46o=; b=kMDeGHRuvl3EK0B+RrsZm8tgIb
 3FoP7jCjmlU3XWkwVLOR2oAp+vPexlQyGrm92Vh2P5o3lZPT9G/GRMs2dWlujBhaiyJ2HUDW4JSEk
 k3F2do8ADCG5ociTxCaejO2ZKu7Ie45ljlnrurZU3um/0OaQkb8CXrNjIV5RDK1I9Cbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lmKp2gCwW8Wb1KK3JuJ2jc0+NeIFs1EM3vsXyT2a46o=; b=CH2lcNNsun6A97mKlZGJKqJg43
 T646DU+hN57GsfJmFzisRDbPvrFuyp7tcn3guNCY8Dh5GYOUBd80u8qL9WSLzJ0bb2iVKQfz5Miz+
 fVOmsDJ+Ez2xdcIi+emWupau2pyPaZFEFoi8fO6m6xtCn/9u1/NBtwiUjK8TOoxY1vyU=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7znD-0002ji-BV for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:35 +0000
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-3fe83c8cbdbso433089b6e.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513468; x=1746118268;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lmKp2gCwW8Wb1KK3JuJ2jc0+NeIFs1EM3vsXyT2a46o=;
 b=3dQe+5JicF9t8J47Cdxhfhcro1/pJE3LJZWvolf2ocS9JMtX1RWc5fE/0qP9GuUTLf
 Su2WVWwexCMo0/kjudCnMaaFNSFqMbTZErgCrEqTdSEoc8CZMZCR6zWoxRzJOcXdiOva
 JqFhsszRmkK9BlQWIxeGp4vB7pUw5f3cznyKjSPnLjZ7Dt2wETHsHIzU5hp/g/DQBE5K
 ukbHsmbn4riS9RVoD6BkG7X8t8IbeirwZrMTl4qNQudEqnaAdgUIzSBkFskMGRkpwfEZ
 Yt5BiAL5pNn9tH4qUMMfllESlDhIgb5ewqHVnsz9+IxDmw2JCMhLBJhznOtYX/O9yICu
 LWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513468; x=1746118268;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lmKp2gCwW8Wb1KK3JuJ2jc0+NeIFs1EM3vsXyT2a46o=;
 b=B+wgXyBNLQIgSuIdegL4O5l27ivOfj1K3gqoPp+yGKyVkTHot0BHyz/9UasNH0PBY7
 H7E/zfpcKRxN3mwcraRvPi3Jz88U0rsVrbeR59XbXfdSo5vpt5Gq1UPhXFWplKatwRXG
 6r0oTkfa499ykWlXEnJmGkXFP4i+lzCA6nQkP6K6juHdsKXI+lqguWDeG1hSbu4wWbDu
 3OZF2eCrvF5Xtz36741JMIx8PZJPgPx1mtN+wRrr2arzNG22YBaJEY9E+vdGXZivDTlw
 JuEaq6CEcWK4s96tBquSj4osGYuFa0l7VLS0tdMdSvP83W8m9PF0x9QvNY3YZtwGM3K3
 CH1Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKWzW7K8ZZoHdD++uON2kT1KwWlA0SOZXg+h910XqfPw2eczCo/4yl1qBHprZODG1V+GdAXrGytj0fxulH2i28IhY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyJQuMt5Q89bAVEoKgs5Juk7aqe3o6QmYzBOARbrCGkV+7+Sr6Y
 nOyLF6KLV3yQEE4S0kWumi2nC4ptmTm1rsmraBqIC7UM1dLEENZrL/BKbEHb47I=
X-Gm-Gg: ASbGncu3ig6BIo64swxD5CVGdcM+jqrvdfktMwOYtrXh7OwT/MppOavD0IrFqMIzsj+
 CSO9wr3teDvVs105JRqjlgDasdvtGrbIQEiIOA5RhJLIcwbPeBUFE+rTbqRPVZ9wZ/YyrsYEUFW
 lMMSGg7vBOhdxs0cEvsp/5YoLGs3XpWbzpnpi1SDWtPkIijll0cdq0XvvHhUrwkUKDCoTbEl6PH
 8VENbbBIRt8RInJmRgESedp43TEOt7eC9aAZXo0QO+UfJoISyv5XZglJ7cB1Q2C0x+uzTJwnbGb
 SnUdPzgnbKmZG/GNjKQDOQPR2Aa5Tj4lfok=
X-Google-Smtp-Source: AGHT+IF5B0qmEp1jWeDZ0WSSiqcMbFmxpjThGtl9WBQObpHvxiMrF90DVkEM+mFolA8xXV0TFK/4Fg==
X-Received: by 2002:a05:6808:398d:b0:400:b701:33ce with SMTP id
 5614622812f47-401f118fe02mr109617b6e.13.1745513468479; 
 Thu, 24 Apr 2025 09:51:08 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 006d021491bc7-6064690dd44sm328697eaf.28.2025.04.24.09.51.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:51:07 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:59 -0500
Message-ID: <20250424165020.627193-23-corey@minyard.net>
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
 Content preview: Don't have the other users that do things at panic time (the
 watchdog) do all this themselves, provide a function to do it. Also, with
 the new design where most stuff happens at thread context, a few things needed
 to be fixed to avoid doing locking in a panic context. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.172 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.172 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u7znD-0002ji-BV
Subject: [Openipmi-developer] [PATCH 22/23] ipmi:msghandler: Export and fix
 panic messaging capability
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

Don't have the other users that do things at panic time (the watchdog)
do all this themselves, provide a function to do it.

Also, with the new design where most stuff happens at thread context,
a few things needed to be fixed to avoid doing locking in a panic
context.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 50 ++++++++++++++++++-----------
 include/linux/ipmi.h                | 10 ++++++
 2 files changed, 41 insertions(+), 19 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 938c566624d9..ece6aa95fbb5 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2284,6 +2284,7 @@ static int i_ipmi_request(struct ipmi_user     *user,
 {
 	struct ipmi_smi_msg *smi_msg;
 	struct ipmi_recv_msg *recv_msg;
+	int run_to_completion = READ_ONCE(intf->run_to_completion);
 	int rv = 0;
 
 	if (user) {
@@ -2317,7 +2318,8 @@ static int i_ipmi_request(struct ipmi_user     *user,
 		}
 	}
 
-	mutex_lock(&intf->users_mutex);
+	if (!run_to_completion)
+		mutex_lock(&intf->users_mutex);
 	if (intf->in_shutdown) {
 		rv = -ENODEV;
 		goto out_err;
@@ -2363,7 +2365,8 @@ static int i_ipmi_request(struct ipmi_user     *user,
 
 		smi_send(intf, intf->handlers, smi_msg, priority);
 	}
-	mutex_unlock(&intf->users_mutex);
+	if (!run_to_completion)
+		mutex_unlock(&intf->users_mutex);
 
 out:
 	if (rv && user)
@@ -4559,7 +4562,7 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 	    && (msg->data[1] == IPMI_SEND_MSG_CMD)
 	    && (msg->user_data == NULL)) {
 
-		if (intf->in_shutdown)
+		if (intf->in_shutdown || intf->run_to_completion)
 			goto out;
 
 		/*
@@ -4631,6 +4634,9 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 		 */
 		struct ipmi_recv_msg *recv_msg;
 
+		if (intf->run_to_completion)
+			goto out;
+
 		chan = msg->data[2] & 0x0f;
 		if (chan >= IPMI_MAX_CHANNELS)
 			/* Invalid channel number */
@@ -4653,6 +4659,9 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 		   && (msg->rsp[1] == IPMI_GET_MSG_CMD)) {
 		struct ipmi_channel   *chans;
 
+		if (intf->run_to_completion)
+			goto out;
+
 		/* It's from the receive queue. */
 		chan = msg->rsp[3] & 0xf;
 		if (chan >= IPMI_MAX_CHANNELS) {
@@ -4727,6 +4736,9 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 	} else if ((msg->rsp[0] == ((IPMI_NETFN_APP_REQUEST|1) << 2))
 		   && (msg->rsp[1] == IPMI_READ_EVENT_MSG_BUFFER_CMD)) {
 		/* It's an asynchronous event. */
+		if (intf->run_to_completion)
+			goto out;
+
 		requeue = handle_read_event_rsp(intf, msg);
 	} else {
 		/* It's a response from the local BMC. */
@@ -4855,15 +4867,6 @@ static void smi_work(struct work_struct *t)
 
 		list_del(&msg->link);
 
-		/*
-		 * I would like for this check (and user->destroyed)
-		 * to go away, but it's possible that an interface is
-		 * processing a message that belongs to the user while
-		 * the user is being deleted.  When that response
-		 * comes back, it could be queued after the user is
-		 * destroyed.  This is simpler than handling it in the
-		 * interface.
-		 */
 		if (refcount_read(&user->destroyed) == 0) {
 			ipmi_free_recv_msg(msg);
 		} else {
@@ -5222,9 +5225,9 @@ static void dummy_recv_done_handler(struct ipmi_recv_msg *msg)
 /*
  * Inside a panic, send a message and wait for a response.
  */
-static void ipmi_panic_request_and_wait(struct ipmi_smi *intf,
-					struct ipmi_addr *addr,
-					struct kernel_ipmi_msg *msg)
+static void _ipmi_panic_request_and_wait(struct ipmi_smi *intf,
+					 struct ipmi_addr *addr,
+					 struct kernel_ipmi_msg *msg)
 {
 	struct ipmi_smi_msg  smi_msg;
 	struct ipmi_recv_msg recv_msg;
@@ -5254,6 +5257,15 @@ static void ipmi_panic_request_and_wait(struct ipmi_smi *intf,
 		ipmi_poll(intf);
 }
 
+void ipmi_panic_request_and_wait(struct ipmi_user *user,
+				 struct ipmi_addr *addr,
+				 struct kernel_ipmi_msg *msg)
+{
+	user->intf->run_to_completion = 1;
+	_ipmi_panic_request_and_wait(user->intf, addr, msg);
+}
+EXPORT_SYMBOL(ipmi_panic_request_and_wait);
+
 static void event_receiver_fetcher(struct ipmi_smi *intf,
 				   struct ipmi_recv_msg *msg)
 {
@@ -5322,7 +5334,7 @@ static void send_panic_events(struct ipmi_smi *intf, char *str)
 	}
 
 	/* Send the event announcing the panic. */
-	ipmi_panic_request_and_wait(intf, &addr, &msg);
+	_ipmi_panic_request_and_wait(intf, &addr, &msg);
 
 	/*
 	 * On every interface, dump a bunch of OEM event holding the
@@ -5358,7 +5370,7 @@ static void send_panic_events(struct ipmi_smi *intf, char *str)
 	msg.data = NULL;
 	msg.data_len = 0;
 	intf->null_user_handler = device_id_fetcher;
-	ipmi_panic_request_and_wait(intf, &addr, &msg);
+	_ipmi_panic_request_and_wait(intf, &addr, &msg);
 
 	if (intf->local_event_generator) {
 		/* Request the event receiver from the local MC. */
@@ -5367,7 +5379,7 @@ static void send_panic_events(struct ipmi_smi *intf, char *str)
 		msg.data = NULL;
 		msg.data_len = 0;
 		intf->null_user_handler = event_receiver_fetcher;
-		ipmi_panic_request_and_wait(intf, &addr, &msg);
+		_ipmi_panic_request_and_wait(intf, &addr, &msg);
 	}
 	intf->null_user_handler = NULL;
 
@@ -5419,7 +5431,7 @@ static void send_panic_events(struct ipmi_smi *intf, char *str)
 		memcpy_and_pad(data+5, 11, p, size, '\0');
 		p += size;
 
-		ipmi_panic_request_and_wait(intf, &addr, &msg);
+		_ipmi_panic_request_and_wait(intf, &addr, &msg);
 	}
 }
 
diff --git a/include/linux/ipmi.h b/include/linux/ipmi.h
index 27cd5980bb27..7da6602eab71 100644
--- a/include/linux/ipmi.h
+++ b/include/linux/ipmi.h
@@ -344,4 +344,14 @@ extern int ipmi_get_smi_info(int if_num, struct ipmi_smi_info *data);
 /* Helper function for computing the IPMB checksum of some data. */
 unsigned char ipmb_checksum(unsigned char *data, int size);
 
+/*
+ * For things that must send messages at panic time, like the IPMI watchdog
+ * driver that extends the reset time on a panic, use this to send messages
+ * from panic context.  Note that this puts the driver into a mode that
+ * only works at panic time, so only use it then.
+ */
+void ipmi_panic_request_and_wait(struct ipmi_user *user,
+				 struct ipmi_addr *addr,
+				 struct kernel_ipmi_msg *msg);
+
 #endif /* __LINUX_IPMI_H */
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
