Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 426354EB363
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 20:34:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZGfJ-00008M-1I; Tue, 29 Mar 2022 18:33:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nZGfH-00008A-UU
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:33:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vWA7HcHxRpWtEbVOYRkc14CrV3xH0f9ykow83uQI6Oc=; b=FK8iPfRjYHfhHNdqs76eLc2/7W
 x0WalPeiYD6AM/HVUI1HG6v4kO5BDET2xEyqfS82Bdj3jqOPsBdXDutR5wT9F+fOvHlLnDDcJa7nx
 VnAAEFoN5mpE5rlZv1kK0bVI5Xf3phKWKc+da+gmkwFM5neWxEzDoWAM5wcXu4gwI+Io=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vWA7HcHxRpWtEbVOYRkc14CrV3xH0f9ykow83uQI6Oc=; b=ZCm7WHIaNt30stWtwh03F0DgRd
 YOeTRFsRWY8NUd8tOXxB1IyPPaGjK7E5Q/IIw8g0T9TSu0O4XcrBLAbzD1wlglnkaqsqAMmpKS/k2
 y60f2+oua1WQc0MGNealWFNe/iZAZoIAttZQlg1aK9zdkOn4FpUGsXquqZy2cuntMiLE=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nZGfF-00G5jl-Om
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 18:33:58 +0000
Received: by mail-qk1-f169.google.com with SMTP id k125so14827567qkf.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Mar 2022 11:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vWA7HcHxRpWtEbVOYRkc14CrV3xH0f9ykow83uQI6Oc=;
 b=TGAfGZeUItf+EdBmKHvq/2lKgRAqtSOyPTJ3cIwzNwRXU6NEbCqLYag1qggqY920kV
 cLpNhwg8PEBGMVp+7YAlNt2AZec4QPKGCGxm8GAYJjlZOIjJyc4pdCjSIBiV68cQREzj
 RpezyPsr0Zc6OgGORxiIZ1uy2+dWR2GmnjtpwpY+t/eoSp+XqqRleYDRXMAfcj9/vndG
 IC6FAoCJgJ45lmGcaVEFqFp4WI6vIN4OpkuRVDrJdXY8/OutwXgLzrlHQoX+D05G/whr
 otQ0Q5eD/J/839YermdMlOdL6AyKoKD5EaKYUKknuWkrJMP0gJNvvc5rgqWaJ9yW3IqZ
 41oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=vWA7HcHxRpWtEbVOYRkc14CrV3xH0f9ykow83uQI6Oc=;
 b=gHqjN4QnR27fvM9gqUTnl6zdV+klrlB8AKHNC5YZbI0g31Jlcz+2Oh9OO+sUxsQ7RS
 dsuWwm9fUjnsAVqIFjrKqXsVItLplQkCw2H+LtjP5InmgVoAaFgofXfld6ZvFbxCOs+T
 uMYcrdbx7Fh0neHmGVHJISuMIYb4a3VzxWy5tIGGpUCocHDfqsmeZk1zERfICLdltGga
 lPJeDCOqESU8QGQQV87vRgIaIths5a4ecOzIiErcZcnFewjLJwBybVswtWqkwnR4SGJo
 AtX5FfiCtc+4d+6mxj/Dxh+iNhQRCfrTiY+msyZ1cTDSgUMSTx6QKVpeopZxLEfM4i5t
 MYNw==
X-Gm-Message-State: AOAM533HONP6yXRtMWzT1Uh+tydiqb0b9ECmPqs91T2T7sNz9DzxX9QG
 PowJ7rvX5wWiamq5nBSV5avLUdHl/A==
X-Google-Smtp-Source: ABdhPJy9SCF44CcQJbSUiXgEkc9BHr7eeymXyPLB3zmBh4ucrhwiiARaLqeXVN83k3mcw0qJHmiSsg==
X-Received: by 2002:a37:a3d2:0:b0:67b:30b2:732f with SMTP id
 m201-20020a37a3d2000000b0067b30b2732fmr21033089qke.719.1648578831377; 
 Tue, 29 Mar 2022 11:33:51 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 m4-20020ac85b04000000b002e1dcaed228sm15054133qtw.7.2022.03.29.11.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 11:33:49 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:dcc2:ca6d:a437:b3e0])
 by serve.minyard.net (Postfix) with ESMTPA id 0FA5D1817BF;
 Tue, 29 Mar 2022 18:33:48 +0000 (UTC)
From: minyard@acm.org
To: Chen Guanqiao <chen.chenchacha@foxmail.com>
Date: Tue, 29 Mar 2022 13:33:38 -0500
Message-Id: <20220329183340.471474-3-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329183340.471474-1-minyard@acm.org>
References: <20220329183340.471474-1-minyard@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Corey Minyard <cminyard@mvista.com> This way a rogue
 application can't use up a bunch of memory. Based on work by Chen Guanqiao
 <chen.chenchacha@foxmail.com> 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nZGfF-00G5jl-Om
Subject: [Openipmi-developer] [PATCH 2/4] ipmi: Limit the number of message
 a user may have outstanding
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

This way a rogue application can't use up a bunch of memory.

Based on work by Chen Guanqiao <chen.chenchacha@foxmail.com>

Cc: Chen Guanqiao <chen.chenchacha@foxmail.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index de80bf4c4e4c..2a05199e8224 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -151,6 +151,12 @@ module_param(max_users, uint, 0644);
 MODULE_PARM_DESC(max_users,
 		 "The most users that may use the IPMI stack at one time.");
 
+/* The default maximum number of message a user may have outstanding. */
+static unsigned int max_msgs_per_user = 100;
+module_param(max_msgs_per_user, uint, 0644);
+MODULE_PARM_DESC(max_msgs_per_user,
+		 "The most message a user may have outstanding.");
+
 /* Call every ~1000 ms. */
 #define IPMI_TIMEOUT_TIME	1000
 
@@ -193,6 +199,8 @@ struct ipmi_user {
 	/* Does this interface receive IPMI events? */
 	bool gets_events;
 
+	atomic_t nr_msgs;
+
 	/* Free must run in process context for RCU cleanup. */
 	struct work_struct remove_work;
 };
@@ -934,11 +942,13 @@ static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 		 * risk.  At this moment, simply skip it in that case.
 		 */
 		ipmi_free_recv_msg(msg);
+		atomic_dec(&msg->user->nr_msgs);
 	} else {
 		int index;
 		struct ipmi_user *user = acquire_ipmi_user(msg->user, &index);
 
 		if (user) {
+			atomic_dec(&user->nr_msgs);
 			user->handler->ipmi_recv_hndl(msg, user->handler_data);
 			release_ipmi_user(user, index);
 		} else {
@@ -1256,6 +1266,7 @@ int ipmi_create_user(unsigned int          if_num,
 	/* Note that each existing user holds a refcount to the interface. */
 	kref_get(&intf->refcount);
 
+	atomic_set(&new_user->nr_msgs, 0);
 	kref_init(&new_user->refcount);
 	new_user->handler = handler;
 	new_user->handler_data = handler_data;
@@ -2298,6 +2309,14 @@ static int i_ipmi_request(struct ipmi_user     *user,
 	struct ipmi_recv_msg *recv_msg;
 	int rv = 0;
 
+	if (user) {
+		if (atomic_add_return(1, &user->nr_msgs) > max_msgs_per_user) {
+			atomic_dec(&user->nr_msgs);
+			rv = -EBUSY;
+			goto out;
+		}
+	}
+
 	if (supplied_recv)
 		recv_msg = supplied_recv;
 	else {
@@ -2369,6 +2388,8 @@ static int i_ipmi_request(struct ipmi_user     *user,
 	rcu_read_unlock();
 
 out:
+	if (rv && user)
+		atomic_dec(&user->nr_msgs);
 	return rv;
 }
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
