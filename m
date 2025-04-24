Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0DFA9B492
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znH-0001aX-1i;
	Thu, 24 Apr 2025 16:51:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znF-0001aC-Cg
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hBLLv3lBQauMahCNm+2PIxA3w9/5v8v0uZ/gJ4AQluo=; b=CfxSPWDZdBbS25IUuD5reeQYoQ
 HBCqZk2n5lisq8dUg0lH9EVDuUmXweleu7lNILLeOT1kDAXbru43FwkvWiAA0uM/he8d+f9XAGkho
 EzBZzu86EM21HRZnM88lO+tJvzDL+TJk5qUgFRX69cPtfy/ettunQZH6KrS+h4F5/ql4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hBLLv3lBQauMahCNm+2PIxA3w9/5v8v0uZ/gJ4AQluo=; b=MnUZjvaLjdXz2QZObQzPbPBbH7
 31box1co/jhtXTbUhSt6rCBog00njr+I86f9OLrMYllx+7r8Qfr13WrqtLRYM/GG6d4l1kLUh2/lH
 DgopGV70d8O010dsl0WBO+Q1KQP/k5PE4PKzN2V5FFXZrtTaR0ov3J7XA8XAWz0Im8PY=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zn0-0002iJ-HJ for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:22 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-72b7a53ceb6so810871a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513461; x=1746118261;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hBLLv3lBQauMahCNm+2PIxA3w9/5v8v0uZ/gJ4AQluo=;
 b=bNWbj8SQsLXyTx3pNgWv5QumNc/zEPx8B0a1r/K0YZqqY6lvpKO6Mmuqh2SsNqootj
 nylttPbZtwphyVVO05h4r/8EzHb4W1dIYlVTlOePWYghKAKW3nsgpeyboh4gDgAZ0FuE
 VhqOHwObIbM2eLDXJoXweLTAC3mWNeUNnx//BVn+vCYjfAveqXd8Wjby1E9CtYVDxFS/
 YGQ+CjciIdNywxTari7ZGJdiBO35xjORK32+aMrCMX5t+oNPC3Kv7tQfrkyu0+scaIfv
 DSjp5dBWrRNwQj2FSUcpKg/7oyLmU7lCYEVyLAVJ+9SfNbDzFsn7vRJtG/cHwO6y2+7i
 xK1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513461; x=1746118261;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hBLLv3lBQauMahCNm+2PIxA3w9/5v8v0uZ/gJ4AQluo=;
 b=erqeJlU2g7NhFetS4XIM9HTM8dV3AHZPH2mY0cC+vHBw+oTVgCaB8OaW520SFD/VZM
 gnoU8xU8W8AE7ll3HXx9XeI13fP5VszhvKzzPY5PwRac2p3LIa3h3q9/ydI24yI5hI6u
 bC/YJbAw3P7/hQlL955m1XOJZ8KPWcP1gtUXaK6BPB7g9q4GYV/gO1X8qHz9OA1hle9l
 sRZ/ezNHmMoq7NzWT3eQvVG1xHj2AJ/8tBWpXxP90dIxA/Rd311TGHrE24Lp7TgcJyTt
 LHzHOZXEO3BG8Qb9rq3TiENL+Y+tyR3JzwMaZd3JpN4PaQiyhxHjn2IH++kAPeEXSt9h
 cFAA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVQ2Cn03PxJ6rTGkCI+9aWpCsEEK3l7lQ4PmsTCWrDPnwPHiRYVztFNRr46LfHyBq6H782AgojSttZzqFRqFkgZFtQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzQ+pkqITroSvwm3J4pcR63KAeZ052pHABgtpaACNp/45eakUdD
 EydiIKqeYrVl+U78IL55g8SJVxZWpCV+lKydQ8SYIOcCCDOb7vvI/RoQGdija+s=
X-Gm-Gg: ASbGncsqYos+a/uZ0tIGwwzwtZBSk86gHA+aD4I8+tpWTubq//Jk7ekQugWicg5zJkq
 WMVQ/dDL1PUW3Q4JzqxPSClAEh3YK9gQlT+skiMZBTCO1lLobWoDbX90qTGBX/5ButwP2MIjHWA
 IBsGGM9qS9YqY8Gt4fhz/46HESqkDaUHjpPV0gYtR9tZp3DWP33NLhEyIPxwqbV2LNUtK0tA1UC
 u53VvnxM7HJyJeFiSuVZqDz5rFbBLAu3338/1ELK11FhezPidcAIU84kILttrL0lH/Tg78ec0J1
 s0kWuuJUncEmfuI6Cu7Hu8oZprdcE9kkPp+iKoveN2CMKg==
X-Google-Smtp-Source: AGHT+IE8rOflQid2RZybnE7oYt//PQVoakrhLTkTbYiVydjxxNfwTgHdK3bahsZQOYX2nqAIz9IazQ==
X-Received: by 2002:a05:6830:620d:b0:72a:b78:1c5a with SMTP id
 46e09a7af769-7304fab52c2mr2030378a34.10.1745513460875; 
 Thu, 24 Apr 2025 09:51:00 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7304f1a62absm301288a34.28.2025.04.24.09.51.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:51:00 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:56 -0500
Message-ID: <20250424165020.627193-20-corey@minyard.net>
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
 Content preview:  Check to see if they have been destroyed before trying to
 deliver a message. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 drivers/char/ipmi/ipmi_msghandler.c | 28 ++++++++++++++++++++++++++-- 1 file
 changed, 26 insertions(+), 2 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.48 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.48 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.48 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u7zn0-0002iJ-HJ
Subject: [Openipmi-developer] [PATCH 19/23] ipmi:msghandler: Don't deliver
 messages to deleted users
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

Check to see if they have been destroyed before trying to deliver a
message.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 28 ++++++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c72ff523216c..938c566624d9 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1327,6 +1327,7 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 	unsigned long    flags;
 	struct cmd_rcvr  *rcvr;
 	struct cmd_rcvr  *rcvrs = NULL;
+	struct ipmi_recv_msg *msg, *msg2;
 
 	if (!refcount_dec_if_one(&user->destroyed))
 		return;
@@ -1377,6 +1378,15 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
 		kfree(rcvr);
 	}
 
+	mutex_lock(&intf->user_msgs_mutex);
+	list_for_each_entry_safe(msg, msg2, &intf->user_msgs, link) {
+		if (msg->user != user)
+			continue;
+		list_del(&msg->link);
+		ipmi_free_recv_msg(msg);
+	}
+	mutex_unlock(&intf->user_msgs_mutex);
+
 	release_ipmi_user(user);
 }
 
@@ -4844,8 +4854,22 @@ static void smi_work(struct work_struct *t)
 		struct ipmi_user *user = msg->user;
 
 		list_del(&msg->link);
-		atomic_dec(&user->nr_msgs);
-		user->handler->ipmi_recv_hndl(msg, user->handler_data);
+
+		/*
+		 * I would like for this check (and user->destroyed)
+		 * to go away, but it's possible that an interface is
+		 * processing a message that belongs to the user while
+		 * the user is being deleted.  When that response
+		 * comes back, it could be queued after the user is
+		 * destroyed.  This is simpler than handling it in the
+		 * interface.
+		 */
+		if (refcount_read(&user->destroyed) == 0) {
+			ipmi_free_recv_msg(msg);
+		} else {
+			atomic_dec(&user->nr_msgs);
+			user->handler->ipmi_recv_hndl(msg, user->handler_data);
+		}
 	}
 	mutex_unlock(&intf->user_msgs_mutex);
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
