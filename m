Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F6CA9B487
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zn5-0007tJ-Sz;
	Thu, 24 Apr 2025 16:51:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zn2-0007tA-Li
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0we9ZQq4peTK4zKEBVF6z6jfkkvOUWW82/uvCZ/QL1c=; b=gmB+KNCEckCXzhagnYglv/8Cxo
 XjGLMEfqSsVu4VhOzo+gMGtBZlfZzTXNBQ0PoaF5qAfNiAWVAv/ZXd1yM+RYjUJksuXlRnxwCdPgG
 K3xY5wnLz1COLBHIN0VgEmQFZG/+dG0pYlV33RLp6adqKiYhZXmW8Lvvkn0AKcyNwHkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0we9ZQq4peTK4zKEBVF6z6jfkkvOUWW82/uvCZ/QL1c=; b=bUZdvlD1N+BH/IN3+0CO99Asin
 y/w9cgo5EFQ+sB43C8gvpLtD8RT/g4mPNIHOKyhvdu3Aczi1u54NJbx0g+n7fjckR29mboZY2+0A8
 jn6pu4uIpOaxAdPYrPyIuXZq5lmD6pjkf84wYWvcuMOzLjP6TSjbmT09uvn4AmuHx094=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmm-0002hD-0b for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:08 +0000
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-400fa6eafa9so948741b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513441; x=1746118241;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0we9ZQq4peTK4zKEBVF6z6jfkkvOUWW82/uvCZ/QL1c=;
 b=h/wCXPPNpD12uITNTv6wEGLDm/AGrhjxg0V0E3y5TbgF5XHA7xLx8XrHlZ9khSz1fl
 275QPe9jQYrHGvQNjZ+DftABeMhNFmydYrKzBypCcO3OPLpAIufPnVvFo/jXBlgZlO3j
 fe1kx0p905gV38ymY0vIsOwnMf2IWLi+FyGg+DYKB1TtBLzCdyRsuQIhFJmKinXjCnA+
 +tFEcgmF7L74CuVdf1QmKfPhZdd9i2zkbSt4XOWbhiOeigwngC3YjPaqIcpr1xGBEybB
 XCImGl4cryGdAmZEwCcjLN941f0FCxj8Nrhdp6yb2EJ5v81hJDVrDlLjpt0Fw2M5T04S
 NX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513441; x=1746118241;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0we9ZQq4peTK4zKEBVF6z6jfkkvOUWW82/uvCZ/QL1c=;
 b=XxjKdCXmpfD6rCJYPJhz8scZCqfsm1bCIQXLSr7T+0nnXhlY8Kva1zLyxJIwRyUanT
 oxYVJGQUKysophDnCtakD+D+f48mgAKHjFn1XIh9FIgkMw0kFOowaRU9mMrzC2k9quCR
 Uy2MAzbew0LgqZ4+2jAxxCfe0R8+uUN02HODHzW/YjtSRmdRbi/KIakoHeMjtjN+9HAv
 U8o2Y52pGdlJ2ML9MfV+VCkMbJLIjwCAmuzDQRkCSrWEIVBuKiW0eQbr2BNcGSJHOVwT
 GHV4M4mx5IMRhTaiM1rI10pzTAqO5mmDkuK9R1Ca8bkI+h71n9Tysh4TUYyxQ9U6q6jr
 Ma4Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVwl81nYsmI8eNKYsqSS0iwvBswZYqJ4kiGr5Aobj15T4VxEfTq4MtrjMMS29glN+RnTxVD4DYePwwpCOxHcPD0+yA=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzCrSIAQM98SK5aLYzBuZqoe47Jn08jyKaPDO1QFsPZNpqLlNMM
 +Y/ngJc10RRkRXL/UshwZn/0qjdvntYJyNYpf0HZsdOYELy5/v4Y4v6bzJn90ng=
X-Gm-Gg: ASbGncviVIihWNzW85cbwe4VsbI/aAaQBgvwsZ6oy0NjwWy5Aqesd/I+lEDpyiSbJ26
 Ks6xDjvgXaplMWadWvYmUW22VpVP+ChMjmvOAqEf7QpiJHItuuROAQ2ESVGpM/v/vF7EYeucjJs
 n5kFHCRetMpQj6KvSAH0qsjVoVJrPQDokffR8R4bko2xfZKpd0U2CJnhFxuk4WxbBqjoBtIR67g
 rshq1nuudHbm2znOvXBgiFrnSg65k8QWRl3ug+64Zs892Z9WsM3GnhtBF6gZIdVd4kAqLVB7DQu
 4qQgtBHK1tE+dFqFBuv4jbH82jf6fejJIOs=
X-Google-Smtp-Source: AGHT+IErfgO6vYBZlqli6tMt7WKhlz4RkzqFWo2rGlEvw4dnQsV0WieGa/IkdZlE3abpkevP8cduUw==
X-Received: by 2002:a05:6808:2187:b0:3f6:7fd0:808c with SMTP id
 5614622812f47-401eb2a7b39mr1869889b6e.16.1745513441174; 
 Thu, 24 Apr 2025 09:50:41 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8e32f4sm310876b6e.23.2025.04.24.09.50.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:40 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:44 -0500
Message-ID: <20250424165020.627193-8-corey@minyard.net>
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
 Content preview:  With the restructures done, srcu is no longer required, and
 it's fairly onerous. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 drivers/char/ipmi/ipmi_msghandler.c | 310 ++++++++++++ 1 file changed, 133
 insertions(+), 177 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.169 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.169 listed in sa-trusted.bondedsender.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u7zmm-0002hD-0b
Subject: [Openipmi-developer] [PATCH 07/23] ipmi:msghandler: Remove srcu
 from the ipmi user structure
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

With the restructures done, srcu is no longer required, and it's fairly
onerous.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 310 ++++++++++++----------------
 1 file changed, 133 insertions(+), 177 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c060be93562d..7dd264e40957 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -180,14 +180,8 @@ MODULE_PARM_DESC(max_msgs_per_user,
 struct ipmi_user {
 	struct list_head link;
 
-	/*
-	 * Set to NULL when the user is destroyed, a pointer to myself
-	 * so srcu_dereference can be used on it.
-	 */
-	struct ipmi_user *self;
-	struct srcu_struct release_barrier;
-
 	struct kref refcount;
+	refcount_t destroyed;
 
 	/* The upper layer that handles receive messages. */
 	const struct ipmi_user_hndl *handler;
@@ -200,28 +194,25 @@ struct ipmi_user {
 	bool gets_events;
 
 	atomic_t nr_msgs;
-
-	/* Free must run in process context for RCU cleanup. */
-	struct work_struct remove_work;
 };
 
-static struct workqueue_struct *remove_work_wq;
-
-static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user, int *index)
-	__acquires(user->release_barrier)
+static void free_ipmi_user(struct kref *ref)
 {
-	struct ipmi_user *ruser;
+	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
 
-	*index = srcu_read_lock(&user->release_barrier);
-	ruser = srcu_dereference(user->self, &user->release_barrier);
-	if (!ruser)
-		srcu_read_unlock(&user->release_barrier, *index);
-	return ruser;
+	vfree(user);
 }
 
-static void release_ipmi_user(struct ipmi_user *user, int index)
+static void release_ipmi_user(struct ipmi_user *user)
 {
-	srcu_read_unlock(&user->release_barrier, index);
+	kref_put(&user->refcount, free_ipmi_user);
+}
+
+static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user)
+{
+	if (!kref_get_unless_zero(&user->refcount))
+		return NULL;
+	return user;
 }
 
 struct cmd_rcvr {
@@ -327,6 +318,8 @@ struct bmc_device {
 };
 #define to_bmc_device(x) container_of((x), struct bmc_device, pdev.dev)
 
+static struct workqueue_struct *bmc_remove_work_wq;
+
 static int bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
 			     struct ipmi_device_id *id,
 			     bool *guid_set, guid_t *guid);
@@ -451,11 +444,10 @@ struct ipmi_smi {
 	struct list_head link;
 
 	/*
-	 * The list of upper layers that are using me.  seq_lock write
-	 * protects this.  Read protection is with srcu.
+	 * The list of upper layers that are using me.
 	 */
 	struct list_head users;
-	struct srcu_struct users_srcu;
+	struct mutex users_mutex;
 	atomic_t nr_users;
 	struct device_attribute nr_users_devattr;
 	struct device_attribute nr_msgs_devattr;
@@ -502,10 +494,11 @@ struct ipmi_smi {
 	struct list_head user_msgs;
 
 	/*
-	 * Messages queued for delivery.  If delivery fails (out of memory
-	 * for instance), They will stay in here to be processed later in a
-	 * periodic timer interrupt.  The workqueue is for handling received
-	 * messages directly from the handler.
+	 * Messages queued for processing.  If processing fails (out
+	 * of memory for instance), They will stay in here to be
+	 * processed later in a periodic timer interrupt.  The
+	 * workqueue is for handling received messages directly from
+	 * the handler.
 	 */
 	spinlock_t       waiting_rcv_msgs_lock;
 	struct list_head waiting_rcv_msgs;
@@ -635,8 +628,6 @@ static DEFINE_MUTEX(ipmidriver_mutex);
 
 static LIST_HEAD(ipmi_interfaces);
 static DEFINE_MUTEX(ipmi_interfaces_mutex);
-#define ipmi_interfaces_mutex_held() \
-	lockdep_is_held(&ipmi_interfaces_mutex)
 static struct srcu_struct ipmi_interfaces_srcu;
 
 /*
@@ -710,13 +701,14 @@ static void clean_up_interface_data(struct ipmi_smi *intf)
 	struct list_head list;
 
 	cancel_work_sync(&intf->smi_work);
+	/* smi_work() can no longer be in progress after this. */
 
 	free_smi_msg_list(&intf->waiting_rcv_msgs);
 	free_recv_msg_list(&intf->waiting_events);
 
 	/*
 	 * Wholesale remove all the entries from the list in the
-	 * interface and wait for RCU to know that none are in use.
+	 * interface.
 	 */
 	mutex_lock(&intf->cmd_rcvrs_mutex);
 	INIT_LIST_HEAD(&list);
@@ -760,7 +752,7 @@ int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher)
 
 	index = srcu_read_lock(&ipmi_interfaces_srcu);
 	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
-			lockdep_is_held(&smi_watchers_mutex)) {
+				lockdep_is_held(&smi_watchers_mutex)) {
 		int intf_num = READ_ONCE(intf->intf_num);
 
 		if (intf_num == -1)
@@ -784,9 +776,6 @@ int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher)
 }
 EXPORT_SYMBOL(ipmi_smi_watcher_unregister);
 
-/*
- * Must be called with smi_watchers_mutex held.
- */
 static void
 call_smi_watchers(int i, struct device *dev)
 {
@@ -946,17 +935,15 @@ static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 		ipmi_free_recv_msg(msg);
 		atomic_dec(&msg->user->nr_msgs);
 	} else {
-		int index;
-		struct ipmi_user *user = acquire_ipmi_user(msg->user, &index);
+		struct ipmi_user *user = acquire_ipmi_user(msg->user);
 
 		if (user) {
 			/* Deliver it in smi_work. */
-			kref_get(&user->refcount);
 			mutex_lock(&intf->user_msgs_mutex);
 			list_add_tail(&msg->link, &intf->user_msgs);
 			mutex_unlock(&intf->user_msgs_mutex);
-			release_ipmi_user(user, index);
 			queue_work(system_wq, &intf->smi_work);
+			/* User release will happen in the work queue. */
 		} else {
 			/* User went away, give up. */
 			ipmi_free_recv_msg(msg);
@@ -1201,22 +1188,13 @@ static int intf_err_seq(struct ipmi_smi *intf,
 	return rv;
 }
 
-static void free_user_work(struct work_struct *work)
-{
-	struct ipmi_user *user = container_of(work, struct ipmi_user,
-					      remove_work);
-
-	cleanup_srcu_struct(&user->release_barrier);
-	vfree(user);
-}
-
 int ipmi_create_user(unsigned int          if_num,
 		     const struct ipmi_user_hndl *handler,
 		     void                  *handler_data,
 		     struct ipmi_user      **user)
 {
 	unsigned long flags;
-	struct ipmi_user *new_user;
+	struct ipmi_user *new_user = NULL;
 	int           rv, index;
 	struct ipmi_smi *intf;
 
@@ -1239,10 +1217,6 @@ int ipmi_create_user(unsigned int          if_num,
 	if (rv)
 		return rv;
 
-	new_user = vzalloc(sizeof(*new_user));
-	if (!new_user)
-		return -ENOMEM;
-
 	index = srcu_read_lock(&ipmi_interfaces_srcu);
 	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
 		if (intf->intf_num == if_num)
@@ -1253,16 +1227,21 @@ int ipmi_create_user(unsigned int          if_num,
 	goto out_kfree;
 
  found:
+	if (intf->in_shutdown) {
+		rv = -ENODEV;
+		goto out_kfree;
+	}
+
 	if (atomic_add_return(1, &intf->nr_users) > max_users) {
 		rv = -EBUSY;
 		goto out_kfree;
 	}
 
-	INIT_WORK(&new_user->remove_work, free_user_work);
-
-	rv = init_srcu_struct(&new_user->release_barrier);
-	if (rv)
+	new_user = vzalloc(sizeof(*new_user));
+	if (!new_user) {
+		rv = -ENOMEM;
 		goto out_kfree;
+	}
 
 	if (!try_module_get(intf->owner)) {
 		rv = -ENODEV;
@@ -1274,14 +1253,15 @@ int ipmi_create_user(unsigned int          if_num,
 
 	atomic_set(&new_user->nr_msgs, 0);
 	kref_init(&new_user->refcount);
+	refcount_set(&new_user->destroyed, 1);
+	kref_get(&new_user->refcount); /* Destroy owns a refcount. */
 	new_user->handler = handler;
 	new_user->handler_data = handler_data;
 	new_user->intf = intf;
 	new_user->gets_events = false;
 
-	rcu_assign_pointer(new_user->self, new_user);
 	spin_lock_irqsave(&intf->seq_lock, flags);
-	list_add_rcu(&new_user->link, &intf->users);
+	list_add(&new_user->link, &intf->users);
 	spin_unlock_irqrestore(&intf->seq_lock, flags);
 	if (handler->ipmi_watchdog_pretimeout)
 		/* User wants pretimeouts, so make sure to watch for them. */
@@ -1324,14 +1304,7 @@ int ipmi_get_smi_info(int if_num, struct ipmi_smi_info *data)
 }
 EXPORT_SYMBOL(ipmi_get_smi_info);
 
-static void free_user(struct kref *ref)
-{
-	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
-
-	/* SRCU cleanup must happen in workqueue context. */
-	queue_work(remove_work_wq, &user->remove_work);
-}
-
+/* Must be called with intf->users_mutex held. */
 static void _ipmi_destroy_user(struct ipmi_user *user)
 {
 	struct ipmi_smi  *intf = user->intf;
@@ -1341,19 +1314,8 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	struct cmd_rcvr  *rcvrs = NULL;
 	struct module    *owner;
 
-	if (!acquire_ipmi_user(user, &i)) {
-		/*
-		 * The user has already been cleaned up, just make sure
-		 * nothing is using it and return.
-		 */
-		synchronize_srcu(&user->release_barrier);
+	if (!refcount_dec_if_one(&user->destroyed))
 		return;
-	}
-
-	rcu_assign_pointer(user->self, NULL);
-	release_ipmi_user(user, i);
-
-	synchronize_srcu(&user->release_barrier);
 
 	if (user->handler->shutdown)
 		user->handler->shutdown(user->handler_data);
@@ -1364,11 +1326,11 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	if (user->gets_events)
 		atomic_dec(&intf->event_waiters);
 
-	/* Remove the user from the interface's sequence table. */
-	spin_lock_irqsave(&intf->seq_lock, flags);
-	list_del_rcu(&user->link);
+	/* Remove the user from the interface's list and sequence table. */
+	list_del(&user->link);
 	atomic_dec(&intf->nr_users);
 
+	spin_lock_irqsave(&intf->seq_lock, flags);
 	for (i = 0; i < IPMI_IPMB_NUM_SEQ; i++) {
 		if (intf->seq_table[i].inuse
 		    && (intf->seq_table[i].recv_msg->user == user)) {
@@ -1402,6 +1364,8 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 		kfree(rcvr);
 	}
 
+	release_ipmi_user(user);
+
 	owner = intf->owner;
 	kref_put(&intf->refcount, intf_free);
 	module_put(owner);
@@ -1409,9 +1373,13 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 
 void ipmi_destroy_user(struct ipmi_user *user)
 {
+	struct ipmi_smi *intf = user->intf;
+
+	mutex_lock(&intf->users_mutex);
 	_ipmi_destroy_user(user);
+	mutex_unlock(&intf->users_mutex);
 
-	kref_put(&user->refcount, free_user);
+	kref_put(&user->refcount, free_ipmi_user);
 }
 EXPORT_SYMBOL(ipmi_destroy_user);
 
@@ -1420,9 +1388,9 @@ int ipmi_get_version(struct ipmi_user *user,
 		     unsigned char *minor)
 {
 	struct ipmi_device_id id;
-	int rv, index;
+	int rv;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1431,7 +1399,7 @@ int ipmi_get_version(struct ipmi_user *user,
 		*major = ipmi_version_major(&id);
 		*minor = ipmi_version_minor(&id);
 	}
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return rv;
 }
@@ -1441,9 +1409,9 @@ int ipmi_set_my_address(struct ipmi_user *user,
 			unsigned int  channel,
 			unsigned char address)
 {
-	int index, rv = 0;
+	int rv = 0;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1453,7 +1421,7 @@ int ipmi_set_my_address(struct ipmi_user *user,
 		channel = array_index_nospec(channel, IPMI_MAX_CHANNELS);
 		user->intf->addrinfo[channel].address = address;
 	}
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return rv;
 }
@@ -1463,9 +1431,9 @@ int ipmi_get_my_address(struct ipmi_user *user,
 			unsigned int  channel,
 			unsigned char *address)
 {
-	int index, rv = 0;
+	int rv = 0;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1475,7 +1443,7 @@ int ipmi_get_my_address(struct ipmi_user *user,
 		channel = array_index_nospec(channel, IPMI_MAX_CHANNELS);
 		*address = user->intf->addrinfo[channel].address;
 	}
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return rv;
 }
@@ -1485,9 +1453,9 @@ int ipmi_set_my_LUN(struct ipmi_user *user,
 		    unsigned int  channel,
 		    unsigned char LUN)
 {
-	int index, rv = 0;
+	int rv = 0;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1497,7 +1465,7 @@ int ipmi_set_my_LUN(struct ipmi_user *user,
 		channel = array_index_nospec(channel, IPMI_MAX_CHANNELS);
 		user->intf->addrinfo[channel].lun = LUN & 0x3;
 	}
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return rv;
 }
@@ -1507,9 +1475,9 @@ int ipmi_get_my_LUN(struct ipmi_user *user,
 		    unsigned int  channel,
 		    unsigned char *address)
 {
-	int index, rv = 0;
+	int rv = 0;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1519,7 +1487,7 @@ int ipmi_get_my_LUN(struct ipmi_user *user,
 		channel = array_index_nospec(channel, IPMI_MAX_CHANNELS);
 		*address = user->intf->addrinfo[channel].lun;
 	}
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return rv;
 }
@@ -1527,17 +1495,17 @@ EXPORT_SYMBOL(ipmi_get_my_LUN);
 
 int ipmi_get_maintenance_mode(struct ipmi_user *user)
 {
-	int mode, index;
+	int mode;
 	unsigned long flags;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
 	spin_lock_irqsave(&user->intf->maintenance_mode_lock, flags);
 	mode = user->intf->maintenance_mode;
 	spin_unlock_irqrestore(&user->intf->maintenance_mode_lock, flags);
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return mode;
 }
@@ -1552,11 +1520,11 @@ static void maintenance_mode_update(struct ipmi_smi *intf)
 
 int ipmi_set_maintenance_mode(struct ipmi_user *user, int mode)
 {
-	int rv = 0, index;
+	int rv = 0;
 	unsigned long flags;
 	struct ipmi_smi *intf = user->intf;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1586,7 +1554,7 @@ int ipmi_set_maintenance_mode(struct ipmi_user *user, int mode)
 	}
  out_unlock:
 	spin_unlock_irqrestore(&intf->maintenance_mode_lock, flags);
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return rv;
 }
@@ -1597,9 +1565,8 @@ int ipmi_set_gets_events(struct ipmi_user *user, bool val)
 	struct ipmi_smi      *intf = user->intf;
 	struct ipmi_recv_msg *msg, *msg2;
 	struct list_head     msgs;
-	int index;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1637,7 +1604,7 @@ int ipmi_set_gets_events(struct ipmi_user *user, bool val)
 
  out:
 	mutex_unlock(&intf->events_mutex);
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return 0;
 }
@@ -1682,9 +1649,9 @@ int ipmi_register_for_cmd(struct ipmi_user *user,
 {
 	struct ipmi_smi *intf = user->intf;
 	struct cmd_rcvr *rcvr;
-	int rv = 0, index;
+	int rv = 0;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1714,7 +1681,7 @@ int ipmi_register_for_cmd(struct ipmi_user *user,
 	if (rv)
 		kfree(rcvr);
 out_release:
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 
 	return rv;
 }
@@ -1728,9 +1695,9 @@ int ipmi_unregister_for_cmd(struct ipmi_user *user,
 	struct ipmi_smi *intf = user->intf;
 	struct cmd_rcvr *rcvr;
 	struct cmd_rcvr *rcvrs = NULL;
-	int i, rv = -ENOENT, index;
+	int i, rv = -ENOENT;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -1753,7 +1720,7 @@ int ipmi_unregister_for_cmd(struct ipmi_user *user,
 	}
 	mutex_unlock(&intf->cmd_rcvrs_mutex);
 	synchronize_rcu();
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 	while (rcvrs) {
 		smi_remove_watch(intf, IPMI_WATCH_MASK_CHECK_COMMANDS);
 		rcvr = rcvrs;
@@ -2408,12 +2375,12 @@ int ipmi_request_settime(struct ipmi_user *user,
 			 unsigned int     retry_time_ms)
 {
 	unsigned char saddr = 0, lun = 0;
-	int rv, index;
+	int rv;
 
 	if (!user)
 		return -EINVAL;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -2432,7 +2399,7 @@ int ipmi_request_settime(struct ipmi_user *user,
 				    retries,
 				    retry_time_ms);
 
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 	return rv;
 }
 EXPORT_SYMBOL(ipmi_request_settime);
@@ -2447,12 +2414,12 @@ int ipmi_request_supply_msgs(struct ipmi_user     *user,
 			     int                  priority)
 {
 	unsigned char saddr = 0, lun = 0;
-	int rv, index;
+	int rv;
 
 	if (!user)
 		return -EINVAL;
 
-	user = acquire_ipmi_user(user, &index);
+	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
@@ -2471,7 +2438,7 @@ int ipmi_request_supply_msgs(struct ipmi_user     *user,
 				    lun,
 				    -1, 0);
 
-	release_ipmi_user(user, index);
+	release_ipmi_user(user);
 	return rv;
 }
 EXPORT_SYMBOL(ipmi_request_supply_msgs);
@@ -3058,7 +3025,7 @@ cleanup_bmc_device(struct kref *ref)
 	 * with removing the device attributes while reading a device
 	 * attribute.
 	 */
-	queue_work(remove_work_wq, &bmc->remove_work);
+	queue_work(bmc_remove_work_wq, &bmc->remove_work);
 }
 
 /*
@@ -3514,15 +3481,14 @@ static ssize_t nr_msgs_show(struct device *dev,
 			    char *buf)
 {
 	struct ipmi_smi *intf = container_of(attr,
-			 struct ipmi_smi, nr_msgs_devattr);
+					     struct ipmi_smi, nr_msgs_devattr);
 	struct ipmi_user *user;
-	int index;
 	unsigned int count = 0;
 
-	index = srcu_read_lock(&intf->users_srcu);
-	list_for_each_entry_rcu(user, &intf->users, link)
+	mutex_lock(&intf->users_mutex);
+	list_for_each_entry(user, &intf->users, link)
 		count += atomic_read(&user->nr_msgs);
-	srcu_read_unlock(&intf->users_srcu, index);
+	mutex_unlock(&intf->users_mutex);
 
 	return sysfs_emit(buf, "%u\n", count);
 }
@@ -3563,12 +3529,6 @@ int ipmi_add_smi(struct module         *owner,
 	if (!intf)
 		return -ENOMEM;
 
-	rv = init_srcu_struct(&intf->users_srcu);
-	if (rv) {
-		kfree(intf);
-		return rv;
-	}
-
 	intf->owner = owner;
 	intf->bmc = &intf->tmp_bmc;
 	INIT_LIST_HEAD(&intf->bmc->intfs);
@@ -3588,6 +3548,7 @@ int ipmi_add_smi(struct module         *owner,
 	INIT_LIST_HEAD(&intf->user_msgs);
 	mutex_init(&intf->user_msgs_mutex);
 	INIT_LIST_HEAD(&intf->users);
+	mutex_init(&intf->users_mutex);
 	atomic_set(&intf->nr_users, 0);
 	intf->handlers = handlers;
 	intf->send_info = send_info;
@@ -3688,7 +3649,6 @@ int ipmi_add_smi(struct module         *owner,
 	list_del_rcu(&intf->link);
 	mutex_unlock(&ipmi_interfaces_mutex);
 	synchronize_srcu(&ipmi_interfaces_srcu);
-	cleanup_srcu_struct(&intf->users_srcu);
 	kref_put(&intf->refcount, intf_free);
 
 	return rv;
@@ -3754,7 +3714,7 @@ static void cleanup_smi_msgs(struct ipmi_smi *intf)
 void ipmi_unregister_smi(struct ipmi_smi *intf)
 {
 	struct ipmi_smi_watcher *w;
-	int intf_num, index;
+	int intf_num;
 
 	if (!intf)
 		return;
@@ -3780,15 +3740,14 @@ void ipmi_unregister_smi(struct ipmi_smi *intf)
 		w->smi_gone(intf_num);
 	mutex_unlock(&smi_watchers_mutex);
 
-	index = srcu_read_lock(&intf->users_srcu);
+	mutex_lock(&intf->users_mutex);
 	while (!list_empty(&intf->users)) {
-		struct ipmi_user *user =
-			container_of(list_next_rcu(&intf->users),
-				     struct ipmi_user, link);
+		struct ipmi_user *user = list_first_entry(&intf->users,
+						    struct ipmi_user, link);
 
 		_ipmi_destroy_user(user);
 	}
-	srcu_read_unlock(&intf->users_srcu, index);
+	mutex_unlock(&intf->users_mutex);
 
 	if (intf->handlers->shutdown)
 		intf->handlers->shutdown(intf->send_info);
@@ -3797,7 +3756,6 @@ void ipmi_unregister_smi(struct ipmi_smi *intf)
 
 	ipmi_bmc_unregister(intf);
 
-	cleanup_srcu_struct(&intf->users_srcu);
 	kref_put(&intf->refcount, intf_free);
 }
 EXPORT_SYMBOL(ipmi_unregister_smi);
@@ -3942,7 +3900,7 @@ static int handle_ipmb_get_msg_cmd(struct ipmi_smi *intf,
 			 * later.
 			 */
 			rv = 1;
-			kref_put(&user->refcount, free_user);
+			kref_put(&user->refcount, free_ipmi_user);
 		} else {
 			/* Extract the source address from the data. */
 			ipmb_addr = (struct ipmi_ipmb_addr *) &recv_msg->addr;
@@ -4033,7 +3991,7 @@ static int handle_ipmb_direct_rcv_cmd(struct ipmi_smi *intf,
 			 * later.
 			 */
 			rv = 1;
-			kref_put(&user->refcount, free_user);
+			kref_put(&user->refcount, free_ipmi_user);
 		} else {
 			/* Extract the source address from the data. */
 			daddr = (struct ipmi_ipmb_direct_addr *)&recv_msg->addr;
@@ -4218,7 +4176,7 @@ static int handle_lan_get_msg_cmd(struct ipmi_smi *intf,
 			 * message, so requeue it for handling later.
 			 */
 			rv = 1;
-			kref_put(&user->refcount, free_user);
+			kref_put(&user->refcount, free_ipmi_user);
 		} else {
 			/* Extract the source address from the data. */
 			lan_addr = (struct ipmi_lan_addr *) &recv_msg->addr;
@@ -4327,7 +4285,7 @@ static int handle_oem_get_msg_cmd(struct ipmi_smi *intf,
 			 * later.
 			 */
 			rv = 1;
-			kref_put(&user->refcount, free_user);
+			kref_put(&user->refcount, free_ipmi_user);
 		} else {
 			/*
 			 * OEM Messages are expected to be delivered via
@@ -4389,7 +4347,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 	struct ipmi_recv_msg *recv_msg, *recv_msg2;
 	struct list_head     msgs;
 	struct ipmi_user     *user;
-	int rv = 0, deliver_count = 0, index;
+	int rv = 0, deliver_count = 0;
 
 	if (msg->rsp_size < 19) {
 		/* Message is too small to be an IPMB event. */
@@ -4412,18 +4370,20 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 	 * Allocate and fill in one message for every user that is
 	 * getting events.
 	 */
-	index = srcu_read_lock(&intf->users_srcu);
-	list_for_each_entry_rcu(user, &intf->users, link) {
+	mutex_lock(&intf->users_mutex);
+	list_for_each_entry(user, &intf->users, link) {
 		if (!user->gets_events)
 			continue;
 
 		recv_msg = ipmi_alloc_recv_msg();
 		if (!recv_msg) {
-			rcu_read_unlock();
+			mutex_unlock(&intf->users_mutex);
 			list_for_each_entry_safe(recv_msg, recv_msg2, &msgs,
 						 link) {
+				user = recv_msg->user;
 				list_del(&recv_msg->link);
 				ipmi_free_recv_msg(recv_msg);
+				kref_put(&user->refcount, free_ipmi_user);
 			}
 			/*
 			 * We couldn't allocate memory for the
@@ -4441,7 +4401,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 		kref_get(&user->refcount);
 		list_add_tail(&recv_msg->link, &msgs);
 	}
-	srcu_read_unlock(&intf->users_srcu, index);
+	mutex_unlock(&intf->users_mutex);
 
 	if (deliver_count) {
 		/* Now deliver all the messages. */
@@ -4785,23 +4745,6 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
 	}
 	if (!run_to_completion)
 		spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock, flags);
-
-	/*
-	 * If the pretimout count is non-zero, decrement one from it and
-	 * deliver pretimeouts to all the users.
-	 */
-	if (atomic_add_unless(&intf->watchdog_pretimeouts_to_deliver, -1, 0)) {
-		struct ipmi_user *user;
-		int index;
-
-		index = srcu_read_lock(&intf->users_srcu);
-		list_for_each_entry_rcu(user, &intf->users, link) {
-			if (user->handler->ipmi_watchdog_pretimeout)
-				user->handler->ipmi_watchdog_pretimeout(
-					user->handler_data);
-		}
-		srcu_read_unlock(&intf->users_srcu, index);
-	}
 }
 
 static void smi_work(struct work_struct *t)
@@ -4820,8 +4763,6 @@ static void smi_work(struct work_struct *t)
 	 * message delivery.
 	 */
 
-	rcu_read_lock();
-
 	if (!run_to_completion)
 		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
 	if (intf->curr_msg == NULL && !intf->in_shutdown) {
@@ -4845,17 +4786,32 @@ static void smi_work(struct work_struct *t)
 	if (newmsg)
 		intf->handlers->sender(intf->send_info, newmsg);
 
-	rcu_read_unlock();
-
 	handle_new_recv_msgs(intf);
 
+	/*
+	 * If the pretimout count is non-zero, decrement one from it and
+	 * deliver pretimeouts to all the users.
+	 */
+	if (atomic_add_unless(&intf->watchdog_pretimeouts_to_deliver, -1, 0)) {
+		struct ipmi_user *user;
+
+		mutex_lock(&intf->users_mutex);
+		list_for_each_entry(user, &intf->users, link) {
+			if (user->handler->ipmi_watchdog_pretimeout)
+				user->handler->ipmi_watchdog_pretimeout(
+					user->handler_data);
+		}
+		mutex_unlock(&intf->users_mutex);
+	}
+
 	mutex_lock(&intf->user_msgs_mutex);
 	list_for_each_entry_safe(msg, msg2, &intf->user_msgs, link) {
 		struct ipmi_user *user = msg->user;
 
+		list_del(&msg->link);
 		atomic_dec(&user->nr_msgs);
 		user->handler->ipmi_recv_hndl(msg, user->handler_data);
-		kref_put(&user->refcount, free_user);
+		release_ipmi_user(user);
 	}
 	mutex_unlock(&intf->user_msgs_mutex);
 }
@@ -5187,7 +5143,7 @@ static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void)
 void ipmi_free_recv_msg(struct ipmi_recv_msg *msg)
 {
 	if (msg->user && !oops_in_progress)
-		kref_put(&msg->user->refcount, free_user);
+		kref_put(&msg->user->refcount, free_ipmi_user);
 	msg->done(msg);
 }
 EXPORT_SYMBOL(ipmi_free_recv_msg);
@@ -5422,7 +5378,7 @@ static int panic_event(struct notifier_block *this,
 	has_panicked = 1;
 
 	/* For every registered interface, set it to run to completion. */
-	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
+	list_for_each_entry(intf, &ipmi_interfaces, link) {
 		if (!intf->handlers || intf->intf_num == -1)
 			/* Interface is not ready. */
 			continue;
@@ -5452,7 +5408,7 @@ static int panic_event(struct notifier_block *this,
 			intf->handlers->set_run_to_completion(intf->send_info,
 							      1);
 
-		list_for_each_entry_rcu(user, &intf->users, link) {
+		list_for_each_entry(user, &intf->users, link) {
 			if (user->handler->ipmi_panic_handler)
 				user->handler->ipmi_panic_handler(
 					user->handler_data);
@@ -5501,8 +5457,8 @@ static int ipmi_init_msghandler(void)
 	if (rv)
 		goto out;
 
-	remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
-	if (!remove_work_wq) {
+	bmc_remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
+	if (!bmc_remove_work_wq) {
 		pr_err("unable to create ipmi-msghandler-remove-wq workqueue");
 		rv = -ENOMEM;
 		goto out_wq;
@@ -5541,7 +5497,7 @@ static void __exit cleanup_ipmi(void)
 	int count;
 
 	if (initialized) {
-		destroy_workqueue(remove_work_wq);
+		destroy_workqueue(bmc_remove_work_wq);
 
 		atomic_notifier_chain_unregister(&panic_notifier_list,
 						 &panic_block);
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
