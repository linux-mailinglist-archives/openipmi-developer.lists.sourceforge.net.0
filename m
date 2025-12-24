Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B34ACDECB7
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Dec 2025 16:24:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NV9OJvj/ut6tdXRsXvzyusuqT/LHjcsn8Ew3OANcKcY=; b=AowexlxlY7+iuIFgPZZRbXZRA4
	8KXB7mXF0Y4MYLwHJ4sj6RVpZaB9d0Xvw91kWTMRgjK1h8LXotsvvaanuDtIj8t93a7sTogWrcZCE
	i7qysF9jL1sIg+svp/cwRFNEtlzrenXNtjjpJJ5UsHvhWWWCJZI2auUWYjCgjo2RASY4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vZ9fr-0004FC-Nz;
	Fri, 26 Dec 2025 15:24:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <marco.crivellari@suse.com>) id 1vYRUP-0001FU-Fr
 for openipmi-developer@lists.sourceforge.net;
 Wed, 24 Dec 2025 16:13:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Bseof+hoOH4xzCZNwOWaag03+RQvBwXo8IbhfTyqmI=; b=WrHSCz+R6pBRsmQinA0P2y2+he
 iI+VR2CJitVt0oW+dfYmBfTeiYtZbPsnkgO1iOrVp5Pk8RA/Q+gwqFSYpyF64nTRbYd8jfkVugU0J
 ytXDJmt3ocrNmO354rmRd+9kNwpg7iOOw9o42tnVNQZsb2iFs1VMPEDHb26lWr+0U8Dc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7Bseof+hoOH4xzCZNwOWaag03+RQvBwXo8IbhfTyqmI=; b=G
 R9Bwr+ZJ5njpMTLq9iV0BguW9fplyRiD9xu6+Ro2RWqPP4lkrB7HkXe0o+/9j42NY1V0jox6nAf0b
 JQk/Kf344EWY5+fChnnkciRUwNmnCuLPB3Xy2wqVn2Fm+CuxWOz8t9ht8mv04GE3Pvs546sUHGrb4
 4SIqEbIEIWhSu5PY=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vYRUO-0004t5-Tb for openipmi-developer@lists.sourceforge.net;
 Wed, 24 Dec 2025 16:13:29 +0000
Received: by mail-wr1-f43.google.com with SMTP id
 ffacd0b85a97d-4327778df7fso136056f8f.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Dec 2025 08:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1766592797; x=1767197597; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=7Bseof+hoOH4xzCZNwOWaag03+RQvBwXo8IbhfTyqmI=;
 b=TBBMIb48tQ48wAcOe1wN86t4UQd+4J7o8SB1Bnbh4ZwMKLJEPj+rqm8p4S5KT1AVuN
 KnfYRrSla7HrMbS67jLfui3TV+4tvUpCY13GUiw2xSC3lsXdkOV+ab6UxZFW+0SIUsOK
 G4u/nWPfonK14lsoBv4Qby1Bx/+llpPX1JhgRChaxcSkSkqmcHaE9mt3DaGB7qL4RcM0
 IC5r8SGU1K3tsX/DZ9fjFyDmE/wZASNFyjV7pdDNbBQbYnHkNn35kzwzlWDQ/OLOOsA3
 4+CuS23OaR3uZ2asLC7fX6DUHiG0NMY3E8TSThZ0VxiWFSE7W8MEUjgweJhM4w27S0zM
 5cYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766592797; x=1767197597;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7Bseof+hoOH4xzCZNwOWaag03+RQvBwXo8IbhfTyqmI=;
 b=UBSJ6Rpvmq5gQLIHzF/43NCLGuJrk4ZnYOlWydUA87wrerMf0WC9ZXEdTcNk/tQ8/T
 dAOCjPaM6htsvJX8ZKP3q2Ou6KmdMphimZpterX24x+AFNTOl46TuGR/9a1Szb3uYhu3
 zfloOd3Bai9fdHMwC6AGuTqqUJbEOsgsJ1hmapY1Bz3AG5zj/sH5KOgE7xqBygRaUxgb
 gCJCKS+QMReIzVy3PJvAQIfKSj6iZgzzB741E5dSHXaeL9kVyiFuSylw0wAI9RODFiZ0
 z+bvHJeECrgDSM6qE2xNPGEZpws6rljhxYBlvex7miZopxNIpuCh1b8a7EP3Xv67Hvfa
 QBBg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGr+cAS2s93Gyt+Sabyjkv+J0Eu1O/77oLXgJK0arkFPBQUr+qqCoy5LOZnxwJ+oJ/bJJShZGQy7ldgTORJJsscDk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwZwvP5dQaLRbHq+Q87WpGzfiR7xKjXkGmgu0nVJFCp3qFHoSjU
 qrKr0zBPnYRhqtgJMkyJy5gdsxC30G30u/gNmsO6PoxCyaWlTEaItPKKXat/Jy86bdY=
X-Gm-Gg: AY/fxX77smPUQUZaOba8xJY/mIo4aJHHeWOfdxTEkyBjj7imkAPM8HXl+/tBH4hV4mh
 R7gLtMkckpi1cG2vs2NOEdgZKswbZxsqIhHMMNp8L4OXJ779SQgkxPxb50//Pib0ks+jcQCnzwK
 Ysl4YSpqzjOEukadIDWS/g9y79LjXp9ecZLu3DDpO6c6hx+Et8hP3V/KNLsK+JnQzE8YJC9AzzV
 4DncYnJra10k3uQ/hRhGaB3VnStNh259TY3bLUkUcxa9AX1ZD69RFRRD4bbEicGdB7F2+v5Q1rF
 ceFAFlnbDalqih9KKxAMNrhw7bMU5QtKMSbkw5juzHX2rbO8w9vTRUhprHiEaIiVMjU52qhDL8M
 vcc13UREt4LXBLz4Yz/YtH5hYdY0Ke9DIcRh182NyeMXmB0cjEA62Fh3pbyps7xLFktEsTwQ3pE
 Plb1SVW9dP9mFqOfr6YRvYh/0oATSbzsTWv1c=
X-Google-Smtp-Source: AGHT+IEKXx4Ie5d2HqEhtqmK3/FjqYPxsFgrlXW/f0jCfUFOA2Ko7lLY6qARshTHhBES/Zmq6wcOvA==
X-Received: by 2002:a05:6000:220c:b0:430:f58d:40cf with SMTP id
 ffacd0b85a97d-4324e4c9692mr16952521f8f.16.1766592797329; 
 Wed, 24 Dec 2025 08:13:17 -0800 (PST)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4324ea1b36fsm34909652f8f.5.2025.12.24.08.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Dec 2025 08:13:17 -0800 (PST)
To: linux-kernel@vger.kernel.org,
	openipmi-developer@lists.sourceforge.net
Date: Wed, 24 Dec 2025 17:13:01 +0100
Message-ID: <20251224161301.135382-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patch continues the effort to refactor workqueue APIs, 
 which has begun with the changes introducing new workqueues and a new
 alloc_workqueue
 flag: commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and
 system_dfl_wq")
 commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag") 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
X-Headers-End: 1vYRUO-0004t5-Tb
X-Mailman-Approved-At: Fri, 26 Dec 2025 15:24:14 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Replace use of system_wq with
 system_percpu_wq
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
From: Marco Crivellari via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Marco Crivellari <marco.crivellari@suse.com>
Cc: Michal Hocko <mhocko@suse.com>, Frederic Weisbecker <frederic@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Corey Minyard <corey@minyard.net>,
 Tejun Heo <tj@kernel.org>, Marco Crivellari <marco.crivellari@suse.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This patch continues the effort to refactor workqueue APIs, which has begun
with the changes introducing new workqueues and a new alloc_workqueue flag:

   commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")
   commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")

The point of the refactoring is to eventually alter the default behavior of
workqueues to become unbound by default so that their workload placement is
optimized by the scheduler.

Before that to happen after a careful review and conversion of each individual
case, workqueue users must be converted to the better named new workqueues with
no intended behaviour changes:

   system_wq -> system_percpu_wq
   system_unbound_wq -> system_dfl_wq

This way the old obsolete workqueues (system_wq, system_unbound_wq) can be
removed in the future.

Suggested-by: Tejun Heo <tj@kernel.org>
Signed-off-by: Marco Crivellari <marco.crivellari@suse.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 3f48fc6ab596..ebdc8f683981 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -973,7 +973,7 @@ static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 		mutex_lock(&intf->user_msgs_mutex);
 		list_add_tail(&msg->link, &intf->user_msgs);
 		mutex_unlock(&intf->user_msgs_mutex);
-		queue_work(system_wq, &intf->smi_work);
+		queue_work(system_percpu_wq, &intf->smi_work);
 	}
 
 	return rv;
@@ -4935,7 +4935,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 	if (run_to_completion)
 		smi_work(&intf->smi_work);
 	else
-		queue_work(system_wq, &intf->smi_work);
+		queue_work(system_percpu_wq, &intf->smi_work);
 }
 EXPORT_SYMBOL(ipmi_smi_msg_received);
 
@@ -4945,7 +4945,7 @@ void ipmi_smi_watchdog_pretimeout(struct ipmi_smi *intf)
 		return;
 
 	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 1);
-	queue_work(system_wq, &intf->smi_work);
+	queue_work(system_percpu_wq, &intf->smi_work);
 }
 EXPORT_SYMBOL(ipmi_smi_watchdog_pretimeout);
 
@@ -5115,7 +5115,7 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 				       flags);
 	}
 
-	queue_work(system_wq, &intf->smi_work);
+	queue_work(system_percpu_wq, &intf->smi_work);
 
 	return need_timer;
 }
@@ -5171,7 +5171,7 @@ static void ipmi_timeout(struct timer_list *unused)
 	if (atomic_read(&stop_operation))
 		return;
 
-	queue_work(system_wq, &ipmi_timer_work);
+	queue_work(system_percpu_wq, &ipmi_timer_work);
 }
 
 static void need_waiter(struct ipmi_smi *intf)
-- 
2.52.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
