Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 475A9A9B48E
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znA-0003pF-93;
	Thu, 24 Apr 2025 16:51:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zn9-0003p6-F9
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O8oGDdvRnI5EoipFzFv4+4XYwTfEEBtpDViBBf5EBeQ=; b=dvUt+ylO8xeEGht4Z2vbQPWtwb
 +UA1jPt3/bdKwPSdpf3yqm858+Gb0vz3XTCoz9BFHFDR4REZcTh0iyyovEjt8Oss7iC5shuYkwb4C
 QcAcOCV1EfZskaRoNTyDLWV8/UUnurqxNKfljwIFCPCy9DLaxy9wly/lV8dF7Ow3U6KE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O8oGDdvRnI5EoipFzFv4+4XYwTfEEBtpDViBBf5EBeQ=; b=hIZ5FXc/2HWI4GjgDsAsHYScRY
 G/ytg5FjnYHtCgEhWGp1qqbVU3bZS9kPHPUq2rlFThUw3AEJEAkA07iTxUnWyD1nI2bQ+fPqmLzyR
 8pKclujrJBOzUr4F6rztJbqhEJ1Xc3mJGna37KDW1DWKhOf95bK+P9AJlHCqXIEto4/o=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmu-0002hq-7f for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:15 +0000
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-400fa6eafa9so948894b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513449; x=1746118249;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=O8oGDdvRnI5EoipFzFv4+4XYwTfEEBtpDViBBf5EBeQ=;
 b=AdEHzomsibXGiHxkWVpWM9fDUN8GiiGX1/17t1UPYvr9hvXmBKOQG7cgMcykopyVZ+
 KTbJb4vrLh5jw5cf/yURpsNmDPtrVfAWs0kX55aUnLspnb2khjN2whMfnl58karCmxzv
 S3NTlqs3jHrb93Axa3QJgDBwdgb8S8INsRZw2ROtMJpedzRwO8RCdISkcQDkRzMGHFhf
 yBSNPyvb0p5n9uJm/LeEIHb6Iv+reCjq+R0V9JMslXt0oRI58W/4cF6jiZimtafc10gu
 pfh0w6Qcxre8WLTPElBEhuhXkC9RHZTAmf/iapEkrmnNQCbFwlGNdY64ZEHQ9ww46XV6
 23fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513449; x=1746118249;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=O8oGDdvRnI5EoipFzFv4+4XYwTfEEBtpDViBBf5EBeQ=;
 b=w5vGtkka3vgqG73Fs2LegrQ7+356XJ+9Kmy9UwytKHLXstCVxyrUwknwe+KgpFxIlV
 /cN2bF2+d/6eWuGL+iIv9JBoVZ7NPHrkroOyQOOEfTNnb9uiYL5FmtgxmjnlLhdXUjTK
 98NI9SWNwdlH0pnFjhrAGR62eZ9PB3yyMwaw2H5i25E81FmQZ2IDRp0DNxinifY3WfPM
 7mrhYkktWUmH3o6lB92qMCBOJw8Jr+Aca4EaLc5FE0Ff8geQENKQ41whzzBNEF2vH1aq
 omURjkC7piPglaxCOyHtO0ozeIfbitI6fdN33csmkjJRPsjOsKXkiCBdNCdZf6s247mE
 svzg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVa5iTcTaLSblQx6DdLqqZmu0ddWVx7WuNWPa6r0+4e81dZJooQjzNNQ0NdsWFVki14oBX23U4yMVNeVZJa+rgT0+o=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzUYBHd8MHPLAmRxwPQtT2PMcAt+8NtwdtpHGr75uwdEBlugVlI
 fBGjO3BOt3YdHBsayGsTBPG7TnyTenZV9cUUhrtJzHEnVCWsBcIzV648SFsP8uw4+/d6OXOwN62
 7
X-Gm-Gg: ASbGncuJveH4nO3ATGe5dh+Qe7iZsJnbhI1poiBa+XvMToj1/Gzf5jqMVE1s2oBFW0Q
 R0KQzslNCwpIMLKa42s8aA/7SHW4fIgmqpPh6we6C9nrwPst3pt7UAhQ+HKVriqnpTKh9LM+F8C
 r64ZWTWbaRtOpYB4v6bM49mNio+Vn+F6WRxBG7S0ibI2VILuSGlbb7Mz+yd3lENXblvwB0ttpOZ
 R3D2PZv9Mb44+NEjMYw20iTkyehSoY8qbTpnKbLk1LHx9CXCMPQl/OJnkFSg/oTdCcxQf3LXJ0u
 nXyM53cUDGZo9hvb7I//RL+lXe66v7GuoIWH7HO1FdvlNA==
X-Google-Smtp-Source: AGHT+IFkIgExmDrBdSdQTioadtDd9kVguGf2ruitTrAnAmP6r1qHlEk08+wJKwFS7DjoDJUfJ1+Iwg==
X-Received: by 2002:a05:6808:6c8e:b0:3f3:e01e:f7eb with SMTP id
 5614622812f47-401eb27e11cmr2026509b6e.7.1745513449589; 
 Thu, 24 Apr 2025 09:50:49 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8b069fsm314865b6e.5.2025.04.24.09.50.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:49 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:49 -0500
Message-ID: <20250424165020.627193-13-corey@minyard.net>
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
 Content preview:  Now that SRCU is gone from IPMI, it can no longer be sloppy
 about locking. Use the users mutex now when sending a message, not the big
 ipmi_interfaces mutex, because it can result in a recursive lock. [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.169 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.169 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1u7zmu-0002hq-7f
Subject: [Openipmi-developer] [PATCH 12/23] ipmi:msghandler: Fix locking
 around users and interfaces
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

Now that SRCU is gone from IPMI, it can no longer be sloppy about
locking.  Use the users mutex now when sending a message, not the big
ipmi_interfaces mutex, because it can result in a recursive lock.  The
users mutex will work because the interface destroy code claims it after
setting the interface in shutdown mode.

Also, due to the same changes, rework the refcounting on users and
interfaces.  Remove the refcount to an interface when the user is
freed, not when it is destroyed.  If the interface is destroyed
while the user still exists, the user will still point to the
interface to test that it is valid if the user tries to do anything
but delete the user.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 51 ++++++++++++++---------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e7bed764b4bb..d05032dc1f69 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -46,6 +46,7 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf);
 static void need_waiter(struct ipmi_smi *intf);
 static int handle_one_recv_msg(struct ipmi_smi *intf,
 			       struct ipmi_smi_msg *msg);
+static void intf_free(struct kref *ref);
 
 static bool initialized;
 static bool drvregistered;
@@ -196,25 +197,6 @@ struct ipmi_user {
 	atomic_t nr_msgs;
 };
 
-static void free_ipmi_user(struct kref *ref)
-{
-	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
-
-	vfree(user);
-}
-
-static void release_ipmi_user(struct ipmi_user *user)
-{
-	kref_put(&user->refcount, free_ipmi_user);
-}
-
-static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user)
-{
-	if (!kref_get_unless_zero(&user->refcount))
-		return NULL;
-	return user;
-}
-
 struct cmd_rcvr {
 	struct list_head link;
 
@@ -611,6 +593,28 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
 			       bool guid_set, guid_t *guid, int intf_num);
 static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id);
 
+static void free_ipmi_user(struct kref *ref)
+{
+	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
+	struct module *owner;
+
+	owner = user->intf->owner;
+	kref_put(&user->intf->refcount, intf_free);
+	module_put(owner);
+	vfree(user);
+}
+
+static void release_ipmi_user(struct ipmi_user *user)
+{
+	kref_put(&user->refcount, free_ipmi_user);
+}
+
+static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user)
+{
+	if (!kref_get_unless_zero(&user->refcount))
+		return NULL;
+	return user;
+}
 
 /*
  * The driver model view of the IPMI messaging driver.
@@ -1330,7 +1334,6 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	unsigned long    flags;
 	struct cmd_rcvr  *rcvr;
 	struct cmd_rcvr  *rcvrs = NULL;
-	struct module    *owner;
 
 	if (!refcount_dec_if_one(&user->destroyed))
 		return;
@@ -1382,10 +1385,6 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	}
 
 	release_ipmi_user(user);
-
-	owner = intf->owner;
-	kref_put(&intf->refcount, intf_free);
-	module_put(owner);
 }
 
 void ipmi_destroy_user(struct ipmi_user *user)
@@ -2315,7 +2314,7 @@ static int i_ipmi_request(struct ipmi_user     *user,
 		}
 	}
 
-	mutex_lock(&ipmi_interfaces_mutex);
+	mutex_lock(&intf->users_mutex);
 	if (intf->in_shutdown) {
 		rv = -ENODEV;
 		goto out_err;
@@ -2361,7 +2360,7 @@ static int i_ipmi_request(struct ipmi_user     *user,
 
 		smi_send(intf, intf->handlers, smi_msg, priority);
 	}
-	mutex_unlock(&ipmi_interfaces_mutex);
+	mutex_unlock(&intf->users_mutex);
 
 out:
 	if (rv && user)
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
