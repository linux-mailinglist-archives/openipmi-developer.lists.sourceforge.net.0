Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D87B54EB362
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 20:34:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZGfI-00008G-Jt; Tue, 29 Mar 2022 18:33:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nZGfH-000084-Lg
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:33:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eKX8MOuc+fqfFqc9o7xUeIg2s3MACXL989nTaOCsTRg=; b=az5v6j8L73JShZbdkKFNFAA3EC
 OsfYEw/Lw8g9W1YVUZcmJymSow7jzag11BJmt6cW+D8EOt+rtKPnAndX9bkQiWTPzQZLe3X53lYXL
 aR4iUahRjDOXb6G60rAXGaSMgKucMEFy52XBpwtDQ1sCrNW5EBvfNqnUA1TszX19cVaA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eKX8MOuc+fqfFqc9o7xUeIg2s3MACXL989nTaOCsTRg=; b=ZWfrv0UVKrcPIVjzBaYueDOnYj
 qNJfUCiWOhwpvxprtgXN/n4ez1VyJ3Zdu2alq5byG65SP4WyupKPZLm4eVg3+aWJsNMD8O1xENbdx
 ld2UW+Kih1YGVkkhACfJ5hBU0TLC0n5PN/eh/CTpcl3g4Zzy7ROHQ/AXt04usHByQb8w=;
Received: from mail-qv1-f45.google.com ([209.85.219.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZGfE-0002YE-Dw
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:33:58 +0000
Received: by mail-qv1-f45.google.com with SMTP id f3so15049782qvz.10
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Mar 2022 11:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eKX8MOuc+fqfFqc9o7xUeIg2s3MACXL989nTaOCsTRg=;
 b=SmSkru7LcPKK7uB+F3Ng+PLbgy5CFKKdgPnhrrwvhYcn6rT+OE7nyok8aWPmQx5Po4
 6AzY5DOhNYTKzXvOnw/7F3hd475ovWAgr9Xv+ezfjwOrMfkNmQ9VnK7qSES/hjLOj8Xh
 M3dX2//opJKIsuIuFMXDiIkupgWq4SoVWdwT4hMIBQ596Q5h5xqsu7YyUx5pg310X+dg
 bPuqGDn/AS1GZsHrGvR7Sw+MrDn8WVUXfF9kOSVJODneDjadSlusA1lN7EWbgEW6JWRi
 kkF7xR9zHtrU2/5/bLZYQ+ld/mVp40dTK/ZIGgYnTU7W7eS3pdZzFi8+Wo3Bs4rgtxJA
 rtrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=eKX8MOuc+fqfFqc9o7xUeIg2s3MACXL989nTaOCsTRg=;
 b=YWzWPNvMG9v5wsUGkRDo5dKIwV49nI2/zru3rMUkL1xmGqkVUundmZ22IOUJtb23CY
 L4hUzHzLVaD85D/qw43RenOzwCnRtqiB8eq1LJPT8ShuBmOabAyuRI07acz0so4wUdX5
 ihIZ9m+SNTYkS2sYO+8noC7rGJD+pgdCkaXtEIt9oNowcIyZJ86EwRNkMT4sEeV9ZxvW
 SVC2FrRjFjvMe5ZpnbCo9nTySsjtoSYiFgwdI965IGeA5dIPc2bkEWwjiIJjwEIk3NpB
 HO4fbysNF84FJ3+N8/JiBq50c/WQS3UhVb3GHW/yVwpZeb3HVoQvLbE+hk5nRjpcQsDt
 2DQQ==
X-Gm-Message-State: AOAM532OHVDIpUH/MMba3qvrMh8RrfPrMYYfSE4ALw1KQ88BmUOSZkUb
 7WBbg3cIXPLPqqt3nEQCqw==
X-Google-Smtp-Source: ABdhPJxbQ4wBVitVjiXj6qY7npw5KQhZI9PmVVTOrduX/2N2bPbSJvyLDIC2B3HF3BMXeRDVf5LQRg==
X-Received: by 2002:a05:6214:20a1:b0:42d:6f51:46e2 with SMTP id
 1-20020a05621420a100b0042d6f5146e2mr28075705qvd.67.1648578830339; 
 Tue, 29 Mar 2022 11:33:50 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 o4-20020a05620a22c400b0067e02a697e0sm9542179qki.33.2022.03.29.11.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:33:49 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:dcc2:ca6d:a437:b3e0])
 by serve.minyard.net (Postfix) with ESMTPA id EC2C61817BE;
 Tue, 29 Mar 2022 18:33:47 +0000 (UTC)
From: minyard@acm.org
To: Chen Guanqiao <chen.chenchacha@foxmail.com>
Date: Tue, 29 Mar 2022 13:33:37 -0500
Message-Id: <20220329183340.471474-2-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329183340.471474-1-minyard@acm.org>
References: <20220329183340.471474-1-minyard@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard <cminyard@mvista.com> Each user uses
 memory, 
 we need limits to avoid a rogue program from running the system out of memory.
 Based on work by Chen Guanqiao <chen.chenchacha@foxmail.com> 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.45 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nZGfE-0002YE-Dw
Subject: [Openipmi-developer] [PATCH 1/4] ipmi: Add a limit on the number of
 users that may use IPMI
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

Each user uses memory, we need limits to avoid a rogue program from
running the system out of memory.

Based on work by Chen Guanqiao <chen.chenchacha@foxmail.com>

Cc: Chen Guanqiao <chen.chenchacha@foxmail.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c59265146e9c..de80bf4c4e4c 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -145,6 +145,12 @@ module_param(default_max_retries, uint, 0644);
 MODULE_PARM_DESC(default_max_retries,
 		 "The time (milliseconds) between retry sends in maintenance mode");
 
+/* The default maximum number of users that may register. */
+static unsigned int max_users = 30;
+module_param(max_users, uint, 0644);
+MODULE_PARM_DESC(max_users,
+		 "The most users that may use the IPMI stack at one time.");
+
 /* Call every ~1000 ms. */
 #define IPMI_TIMEOUT_TIME	1000
 
@@ -442,6 +448,7 @@ struct ipmi_smi {
 	 */
 	struct list_head users;
 	struct srcu_struct users_srcu;
+	atomic_t nr_users;
 
 	/* Used for wake ups at startup. */
 	wait_queue_head_t waitq;
@@ -1230,6 +1237,11 @@ int ipmi_create_user(unsigned int          if_num,
 	goto out_kfree;
 
  found:
+	if (atomic_add_return(1, &intf->nr_users) > max_users) {
+		rv = -EBUSY;
+		goto out_kfree;
+	}
+
 	INIT_WORK(&new_user->remove_work, free_user_work);
 
 	rv = init_srcu_struct(&new_user->release_barrier);
@@ -1262,6 +1274,7 @@ int ipmi_create_user(unsigned int          if_num,
 	return 0;
 
 out_kfree:
+	atomic_sub(1, &intf->nr_users);
 	srcu_read_unlock(&ipmi_interfaces_srcu, index);
 	vfree(new_user);
 	return rv;
@@ -1336,6 +1349,7 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	/* Remove the user from the interface's sequence table. */
 	spin_lock_irqsave(&intf->seq_lock, flags);
 	list_del_rcu(&user->link);
+	atomic_dec(&intf->nr_users);
 
 	for (i = 0; i < IPMI_IPMB_NUM_SEQ; i++) {
 		if (intf->seq_table[i].inuse
@@ -3529,6 +3543,7 @@ int ipmi_add_smi(struct module         *owner,
 	if (slave_addr != 0)
 		intf->addrinfo[0].address = slave_addr;
 	INIT_LIST_HEAD(&intf->users);
+	atomic_set(&intf->nr_users, 0);
 	intf->handlers = handlers;
 	intf->send_info = send_info;
 	spin_lock_init(&intf->seq_lock);
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
