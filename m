Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C07FDA9B48F
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znC-0001ZQ-H4;
	Thu, 24 Apr 2025 16:51:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znA-0001Z2-9O
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nvR8oUvm5AANjxDmH4zqg+trywtqJbWELpqwDmIHFLI=; b=HA4OBJsDnpk+TfhRw0SVfB+pCr
 UCucV7b02eSHyGH55QlbRX6oSixbsgKMA6Cl9k4YB1fYoY9RuxqKJ4dk9jhWEnuepFZh2dXB/dzvP
 Eyl/ifM7BSS9xN/OjrgFXeacBZ7Ti1wCUPHTGxO3uivx5Wq+bmHzHehG6Y911n0tjpX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nvR8oUvm5AANjxDmH4zqg+trywtqJbWELpqwDmIHFLI=; b=CGUcvMH3wceIWPE9Q8sFFNBdmE
 fYJkg9U2+XcLiFEKu8MyrvWCtnG2uHK4XIBHbn/AM1akXpG2ANAbg2hb30WR8h/qXLqp+hqyZvv7f
 ZT2gD+Pn3sppzTUrm8GVg8dq5RhjBU71EbrE5O3EYd3oBTpDiW3MZeFvbC82EFXRpBz8=;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmv-0002hw-D7 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:17 +0000
Received: by mail-oi1-f180.google.com with SMTP id
 5614622812f47-401f0e4c851so55976b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513451; x=1746118251;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nvR8oUvm5AANjxDmH4zqg+trywtqJbWELpqwDmIHFLI=;
 b=Sy9vEng2y6DkLUOC1ymqpqirsCd8qY+InKkwlMGxkUldH5wj8mrFewsHOZIzHzFizy
 bbVOrOvDpVZzNghaa36x6cWABjyXqFGVeBYtQxgv+KL3EIghnYPFFOWa1T8DtdDsDGeG
 jn37k63VDXkCpCNJ8MtGdnYPIg3NbbYjOfoLYKgFwehIzOIDo4HrvaD2rSu26QbBFxC3
 lYr+186IpW6jHI6dh4bHHM+2juXofbU1F/RMj7DvaUoc5+YWmj4Zn5/XCoeuCpp0SZ9b
 443dLzNv3VjyjEnWhLr1rp5IXGUVxdy6qhR7ECN5C0DZtoRbx3EOv4CaY7Mm/qKQ7jLr
 Zufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513451; x=1746118251;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nvR8oUvm5AANjxDmH4zqg+trywtqJbWELpqwDmIHFLI=;
 b=iK0rFV0dnQiymB6m6XMJFb1/cCWt1IuiokjdE7mbdUJVhlKU6bJHFfcGrRl5lFc/Ns
 fxjyJ29/xvNJKZSXVr83fU7KgzyLrAHkgANql0I/N2lZ7TEBQ2VAiAZl5ZvzT3KF47dE
 ujiLixCwm4aDSnhUsEoS24wG6Uxai6XJtqUwBYG1wFgi4uvqKdZ6oIYnKlqsmTpkjpJp
 /wyLM+5toUXbOGjXtrZaZe0GTqWgqxDcfW95rFQwnhpISNrZalsM6KbKgPf2kJ9zXBon
 KTLLLToEzMvPnTk7cPNiTkBwF9Jg73JuCeTHockD0c9uOOHHM9tqUkRH+GzK129p2iI0
 v02g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVprq2pXxezQX9LcizEsDtcJAtaiTqnw5fjCIqhLBgk62mHhauesuc4ev141JZ70DqWIJd9o1DcC1HcYqguVjfAFDA=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz8ZjuMVfVxaYfIIJowtsjv3YFwR3nExpArlndvGAljpF3uk8E5
 Gm63fNksWeKdFtt9qwQZke40hnLT5DYQI8HntTvO9kLpkFVJd8YqQuzzYN91PGNCo2WqQtH8KWF
 X
X-Gm-Gg: ASbGnctCQOlhE3l64XdYJxc9pNRed3MFTOo0T7MZrChGTpIpCDIb8hHSwrt+9pMvH2U
 HTIKS9xceRy9f4oswxmc1BQho1Fz4qZaKhFhts7UgMCmrdi5x6DGbGZ28yFDIgkJa/V246bIY+a
 /qaC3ezU9oiMfSyrhgdjl7OjSaw9P4FkmxuoRrWkD3bd/56qbXDeQOFzxlZoip45HQKz9bRh4O+
 rOcPOUSUd4ee5gIiYt88lfqF/MxmRSlj2Nnc+pTVEuz6Oy90Jz93hdN0ABYfdWTQ+eEfbwME2n4
 H9zmluKhJsip4GmiUwIn+WdzVDTtj8cNK30=
X-Google-Smtp-Source: AGHT+IGxBh3dRs7oF9SPvu9xegYdzcEYSKMLeofJNaEOzl0NBrLhyFwnB+PDh2QGaXrXXoSthZFQbQ==
X-Received: by 2002:a05:6808:7005:b0:3fb:46cc:e08 with SMTP id
 5614622812f47-401f1231827mr69872b6e.28.1745513450759; 
 Thu, 24 Apr 2025 09:50:50 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8cd325sm315773b6e.19.2025.04.24.09.50.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:50 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:50 -0500
Message-ID: <20250424165020.627193-14-corey@minyard.net>
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
 Content preview:  Messages already have a refcount for the user, so there's
 no need to account for a new one. As part of this, grab a refcount to the
 interface when processing received messages. The messages can be freed there, 
 cause the user then the interface to be freed. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.180 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.180 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.180 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1u7zmv-0002hw-D7
Subject: [Openipmi-developer] [PATCH 13/23] ipmi:msghandler: Don't acquire a
 user refcount for queued messages
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

Messages already have a refcount for the user, so there's no need to
account for a new one.

As part of this, grab a refcount to the interface when processing
received messages.  The messages can be freed there, cause the user
then the interface to be freed.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 32 +++++++++++++++--------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index d05032dc1f69..edc53c22ca84 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -958,20 +958,14 @@ static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 		ipmi_free_recv_msg(msg);
 		atomic_dec(&msg->user->nr_msgs);
 	} else {
-		struct ipmi_user *user = acquire_ipmi_user(msg->user);
-
-		if (user) {
-			/* Deliver it in smi_work. */
-			mutex_lock(&intf->user_msgs_mutex);
-			list_add_tail(&msg->link, &intf->user_msgs);
-			mutex_unlock(&intf->user_msgs_mutex);
-			queue_work(system_wq, &intf->smi_work);
-			/* User release will happen in the work queue. */
-		} else {
-			/* User went away, give up. */
-			ipmi_free_recv_msg(msg);
-			rv = -EINVAL;
-		}
+		/*
+		 * Deliver it in smi_work.  The message will hold a
+		 * refcount to the user.
+		 */
+		mutex_lock(&intf->user_msgs_mutex);
+		list_add_tail(&msg->link, &intf->user_msgs);
+		mutex_unlock(&intf->user_msgs_mutex);
+		queue_work(system_wq, &intf->smi_work);
 	}
 
 	return rv;
@@ -4827,6 +4821,13 @@ static void smi_work(struct work_struct *t)
 		mutex_unlock(&intf->users_mutex);
 	}
 
+	/*
+	 * Freeing the message can cause a user to be released, which
+	 * can then cause the interface to be freed.  Make sure that
+	 * doesn't happen until we are ready.
+	 */
+	kref_get(&intf->refcount);
+
 	mutex_lock(&intf->user_msgs_mutex);
 	list_for_each_entry_safe(msg, msg2, &intf->user_msgs, link) {
 		struct ipmi_user *user = msg->user;
@@ -4834,9 +4835,10 @@ static void smi_work(struct work_struct *t)
 		list_del(&msg->link);
 		atomic_dec(&user->nr_msgs);
 		user->handler->ipmi_recv_hndl(msg, user->handler_data);
-		release_ipmi_user(user);
 	}
 	mutex_unlock(&intf->user_msgs_mutex);
+
+	kref_put(&intf->refcount, intf_free);
 }
 
 /* Handle a new message from the lower layer. */
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
