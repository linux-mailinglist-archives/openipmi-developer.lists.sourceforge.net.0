Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 282A6A9B483
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zmy-0003nu-Cw;
	Thu, 24 Apr 2025 16:51:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zmw-0003no-Uu
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IGfTJWj47CpXpT8PeT3U1Li99hkB5HE31d++OSuIbAk=; b=Dh7AhJSMHqEjVNncQjw4FJbTdB
 yrDXhnmFvpREqbW+JrIjCU7LR+EFtNm7A+BsR2tM25xNGAMQA/Mg1/qR6vds0dF0O7+E7CMTE+X5/
 +/WwA9M+CePu4D5yyr7rYNkZu1/4I4+arUNexarhPJ6/8KUF5xk7pPJizttD8i/kZvYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IGfTJWj47CpXpT8PeT3U1Li99hkB5HE31d++OSuIbAk=; b=NuigMZz32Pbqud7qGO3uVXBCqz
 YwXAinFJSt+nxoEm+l4EfAJsO6soxJugboVkOxoPWCj31034kuUmwrEnu4LUhMd93jnetPUEOnykl
 7cDTGwhU4kKHvEAY5f08D7Y57wJU7e8mmiu6Eu5eU3dPy3ERD8dzG03DVY9fNjipIfhY=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmh-0002gy-OF for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:03 +0000
Received: by mail-qt1-f179.google.com with SMTP id
 d75a77b69052e-4769bbc21b0so14203301cf.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513442; x=1746118242;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IGfTJWj47CpXpT8PeT3U1Li99hkB5HE31d++OSuIbAk=;
 b=FU+WP7Y6Bj+deGF6cQkmEqsTPXIPZhsDsesuDfHMNidm5qCHjj5B+dqOnTjpQyhLm4
 kob9+qkJVtLO4Im1f5NDoV5DgYkbYAuGmkRfzxNjBbcguHogYlmGMyfQGsLQZIxwrByH
 P4tN9zavAgkZfIHswYAhX8wg5bwvqRPlOEa5UzbKwNBfzxplXhEKUVGh/qz6b1JB3tOX
 aTsfvRauuGa/gKhSZJEQLwCZ4f1q8HA9xh0y9RjHeP3tLerrINsmYVpCDVLaYxsNDlwe
 hh0ByYy0WOjh4iF9LohPfF5kDdgA9flxNtC6AawCYzv7SZXLl4reI1R4DC9CKpp/Pvjs
 OqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513442; x=1746118242;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IGfTJWj47CpXpT8PeT3U1Li99hkB5HE31d++OSuIbAk=;
 b=Gjwaw4k+n7Rda/b/V3eGAoL+ia45lofKjWVSt6hBf1eHOD1UWFJFmRC70Kzuyk4xTI
 Rhi4jjbH3sLDFDLdjDQeh4chu1hD4q4Fsp3W8+iGsIwcqzscGCq+KVaojKCU9BhtTXT2
 2fEWc42YfcHnlI1GMHH0Xr2gupwNWWWfTmW3cg7M98wnC4EZxZTiIzrMUV1i8mUyY385
 My16YWCHGf0GfJVfOGk8vnlHNXqxWuxXqMvjiTF+XKPuV7lW1v2+7sVlTPqMstpDtpzb
 JZkb5fR/nhQEpiTJOT0P9audb/+5rGdVUO1cx5ihh01XDIQUNskrw5yOmtPuixJZM/5L
 jTpA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkaQP37TrKAfwO9H0+o7JoNkE65pOKMQeVI7VV2zmbdk3Z0AHxblY8hwIA9RdanZUi4052jttkBEcaG0fWSpFeaDU=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx/i06YTgmJyENBA6uyfbudMwL2ozTNMnDL/Njue5+JqutxlXcj
 oE40Pw7ncCqEZ1WcDfMXSYnvxN4B7Rm0Fjofl7wGEudlt58WluLJaNVMObpyHBQCbcK4Cl/boNP
 l
X-Gm-Gg: ASbGncuaHiQVuk1fKNkwe1FH041Nr/qkBRt04xYJNzOvAIqqKgE2zJFS91NZ9KxBABn
 UeaI+uVUzXY0eVkpzIR3wnhfB4LALkL9z1P2oefAgzXKGQ3FUbd+1T6sJ/MTVYWC8UrE6kkD1ru
 70uMVqcUKE/6X3W4wTXVDTRjbKOSL7MLpq008EkR0j5qZcGd3forqPgmprD75xY2p4mKnIMhZiJ
 MCP3uUWz4Zubm866HoCh44GN7x0eZCOTPahpwJkSuI1NpLxXP8fLvGe6qnwDSTY35WVY3h1rcSo
 jPmPXEvFbenitwtE47ukJjSZhhJ18xAVTPw=
X-Google-Smtp-Source: AGHT+IFHp8n/VJuzX+UYnhpiqIQJQ9HAOKQP+infmIEinGOQzRk0Z/D3wAFlyPekPIZHnbzLJIOztA==
X-Received: by 2002:a05:6808:6c85:b0:401:e5d6:31cd with SMTP id
 5614622812f47-401eb23932fmr2137283b6e.3.1745513430870; 
 Thu, 24 Apr 2025 09:50:30 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8cce07sm311510b6e.20.2025.04.24.09.50.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:30 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:39 -0500
Message-ID: <20250424165020.627193-3-corey@minyard.net>
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
 Content preview:  It handles both receive and transmit functions, make the name
 generic. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 20 ++++++++++ 1 file changed, 10 insertions(+), 10 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.179 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.179 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.179 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u7zmh-0002gy-OF
Subject: [Openipmi-developer] [PATCH 02/23] ipmi:msghandler: Rename
 recv_work to smi_work
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

It handles both receive and transmit functions, make the name generic.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 77f0f41f2e3d..22813b1598b0 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -41,7 +41,7 @@
 
 static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
 static int ipmi_init_msghandler(void);
-static void smi_recv_work(struct work_struct *t);
+static void smi_work(struct work_struct *t);
 static void handle_new_recv_msgs(struct ipmi_smi *intf);
 static void need_waiter(struct ipmi_smi *intf);
 static int handle_one_recv_msg(struct ipmi_smi *intf,
@@ -504,7 +504,7 @@ struct ipmi_smi {
 	spinlock_t       waiting_rcv_msgs_lock;
 	struct list_head waiting_rcv_msgs;
 	atomic_t	 watchdog_pretimeouts_to_deliver;
-	struct work_struct recv_work;
+	struct work_struct smi_work;
 
 	spinlock_t             xmit_msgs_lock;
 	struct list_head       xmit_msgs;
@@ -704,7 +704,7 @@ static void clean_up_interface_data(struct ipmi_smi *intf)
 	struct cmd_rcvr  *rcvr, *rcvr2;
 	struct list_head list;
 
-	cancel_work_sync(&intf->recv_work);
+	cancel_work_sync(&intf->smi_work);
 
 	free_smi_msg_list(&intf->waiting_rcv_msgs);
 	free_recv_msg_list(&intf->waiting_events);
@@ -3602,7 +3602,7 @@ int ipmi_add_smi(struct module         *owner,
 	intf->curr_seq = 0;
 	spin_lock_init(&intf->waiting_rcv_msgs_lock);
 	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
-	INIT_WORK(&intf->recv_work, smi_recv_work);
+	INIT_WORK(&intf->smi_work, smi_work);
 	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
 	spin_lock_init(&intf->xmit_msgs_lock);
 	INIT_LIST_HEAD(&intf->xmit_msgs);
@@ -4808,10 +4808,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
 	}
 }
 
-static void smi_recv_work(struct work_struct *t)
+static void smi_work(struct work_struct *t)
 {
 	unsigned long flags = 0; /* keep us warning-free. */
-	struct ipmi_smi *intf = from_work(intf, t, recv_work);
+	struct ipmi_smi *intf = from_work(intf, t, smi_work);
 	int run_to_completion = READ_ONCE(intf->run_to_completion);
 	struct ipmi_smi_msg *newmsg = NULL;
 
@@ -4883,9 +4883,9 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
 
 	if (run_to_completion)
-		smi_recv_work(&intf->recv_work);
+		smi_work(&intf->smi_work);
 	else
-		queue_work(system_bh_wq, &intf->recv_work);
+		queue_work(system_bh_wq, &intf->smi_work);
 }
 EXPORT_SYMBOL(ipmi_smi_msg_received);
 
@@ -4895,7 +4895,7 @@ void ipmi_smi_watchdog_pretimeout(struct ipmi_smi *intf)
 		return;
 
 	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 1);
-	queue_work(system_bh_wq, &intf->recv_work);
+	queue_work(system_bh_wq, &intf->smi_work);
 }
 EXPORT_SYMBOL(ipmi_smi_watchdog_pretimeout);
 
@@ -5064,7 +5064,7 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 				       flags);
 	}
 
-	queue_work(system_bh_wq, &intf->recv_work);
+	queue_work(system_bh_wq, &intf->smi_work);
 
 	return need_timer;
 }
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
