Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MePCtfEeGmltAEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 14:59:51 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6646895400
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 14:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RIRsHA3VVuZiZl67X5jlEazfJ5CiYkjo5Otmxsj6ahQ=; b=JLFLVjKk16jJW0PjPsP3HD88D8
	PJBVNAlnR7GussTzPfx/HiBIbluFLk85TYphtRAi3rmknM/zbt/0qAnVtHgZ6CCYLms45S6fetPKy
	YI2Hjf4Qk6YqxQxdOuyxeArFT8XTiiNl/Tu3bX6g8ewJ0eY5uelDvvkkkwEOrwetiumk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkjba-0000l5-1j;
	Tue, 27 Jan 2026 13:59:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vkjbZ-0000kz-Bz
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 13:59:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x2LPkniD2Jah+bnHAFdMSt2ma4HBjujXhV2ExysNqRM=; b=nODo5rNql8PPNC7DBEdxC4+nWU
 pzFoctmAI2JW18yPfnPDY7iKoQ4swPKU94lCV2jZcyUxWHBRDlQqnOaJLb4gJ9n3e0BQXm0AEPGXW
 5u9yq/92/Dk6FxBG/MM0zzzSt0slU7fh3QvCtrmMCAH2uFvuC6S9ltSOHqrYHZsnpDec=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x2LPkniD2Jah+bnHAFdMSt2ma4HBjujXhV2ExysNqRM=; b=A7erUpPwYSJ7tc10Fg7lLTGKHK
 gGS7l4y3ICDQgpMNadlVFIU+r2zGk/knybLjx3kCvnZSccJB33JzeTMCeR3v/68Rvx74eBNEWUEFp
 BfRKGxIE89hP+4s6WVahxmp5nE+chWT1su78laJekfnMzNaCB0UN4g+1xkdshBAXG7Mo=;
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vkjbY-0005PH-EI for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 13:59:41 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-4044854464fso3092109fac.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Jan 2026 05:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1769522369; x=1770127169; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x2LPkniD2Jah+bnHAFdMSt2ma4HBjujXhV2ExysNqRM=;
 b=foFStPS8ngnjZW7MNDvX0gFBV6yyGbQZhaqvWVkofOt6mzeaxO7BNWlDAMichsnu+1
 LjVKGin3127qutrS1xHAo2uztS7jBkwd5TnSeIyOVwF8XKPGGJGxs7S9KrTzoLxA9Gcx
 c5YWhFgwrMid8yckofrwJyTG6Ys/1SO/9jlR4YuQMgeJgvX7zrDsZgDStBCNzjwJFR1w
 Ll9OHf6yqk7CcgZXCoxWzEVbmaf2LtsDOGx/Dei+q1/XVkyFj5wmDUZlHt0z11M5ZqId
 7fYD/k7ZrR/q8CzcELSLANFTb5s3pVEFo6WeJJh2JlA0a8EiUfYvuYxsYvbPzOq5Ny+a
 U1og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769522369; x=1770127169;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=x2LPkniD2Jah+bnHAFdMSt2ma4HBjujXhV2ExysNqRM=;
 b=kGQkVpPwCdTOQ4HMuBIdJvUCwGGu8gRGYIKiswS1rvf3f93B0HiL61FsStbCwSPtPN
 uIaQhAc0TNo6FgX5vKPvBJb1nQH1wVu9K+gWGTu2h5O9ZHzQ1jjNvtZ1rvSojYZXXyhf
 0zCGkkRIdNVvvEAvWBWNQSieif92zHskJ7xmwudigOyDxA3kw5Z4elDs+VVK1pU5muKr
 +Ct4ub4/TfwNwqiwRrPKTsXHVEvpR8Qu37XEEdTTBFvUuckFdZgJ3so5REkLGNZJHzFM
 iv2Pi4qSQaMRnCrJI0WsekOwgSMfneLNp1lIRYnaklBUxalJJ9Ds9V8P2T4N+gELB+dC
 +pBg==
X-Gm-Message-State: AOJu0Yx/rx2/iuKE99yIYuy//bKNHB8KOX5GlS5dfS9cEPvFQ8fnn6az
 buP+r5jX7SQ6IeaYJsToWDkex0zLC+KCz2c2qSNhgqFidEN//A+K4K7NgoUwbGS4/CM=
X-Gm-Gg: AZuq6aLvwDZGZjsG0g6ezmflBM+l6OOp8z/pKwa3PG28uJNLzdwgaAgFwWQw/0wfyAA
 0Tktzlscc6xskIfo2zUbFYMy/OYAa1krEbWP8PDYpqXJxxOg2x+kKfGqYejnrgxzhKePimZQayz
 5ON766ANa6D3g8P7EwD2hbQ7ybq7U1w8ADXuFWfYYcn+QvdtktxYETEtLsS85AJFNidGWf1G3QQ
 AAq1qC0XzIncRy3/ckkWs8uXdh5QIJaEP0ETU/KHcMrg80CzhottAnw+ThiT7LxEzjQczL/NUWJ
 /eTPEUwPoNL1IDIEnoa2/SSjhCrVaUydU8we2dN8RhyEsbt2kioZ/bDykFkcn0eoCeH9EpEtINj
 fvKmmz1N3PQQMS2Pwe7cuWcToEYlYIuG490Bx9ALCsAvEtiFvFEymu8eDfHGSSRu/28TiFJYlpo
 PGvOD80OsfIaf1I8g7AVjAzDodMaGacCXWQUw91RLvRRYfi+kc0GBgpCetAw6dUMryCg==
X-Received: by 2002:a05:6870:b627:b0:3d4:876:34b1 with SMTP id
 586e51a60fabf-4093ff09acdmr1047607fac.33.1769522367981; 
 Tue, 27 Jan 2026 05:59:27 -0800 (PST)
Received: from localhost ([2001:470:b8f6:1b:a1a5:d807:e7a1:53eb])
 by smtp.gmail.com with UTF8SMTPSA id
 586e51a60fabf-408af88d1c2sm9407794fac.8.2026.01.27.05.59.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 27 Jan 2026 05:59:27 -0800 (PST)
From: Corey Minyard <corey@minyard.net>
To: Breno Leitao <leitao@debian.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Date: Tue, 27 Jan 2026 07:54:40 -0600
Message-ID: <20260127135917.1597762-3-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127135917.1597762-1-corey@minyard.net>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
 <20260127135917.1597762-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It made things hard to read, move the check to a function.
 Signed-off-by: Corey Minyard <corey@minyard.net> ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 40 ++++++++++++++++ 1 file changed, 22 insertions(+), 18 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vkjbY-0005PH-EI
Subject: [Openipmi-developer] [PATCH 2/2] ipmi: Consolidate the run to
 completion checking for xmit msgs lock
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
Cc: Corey Minyard <corey@minyard.net>, kernel-team@meta.com,
 openipmi-developer@lists.sourceforge.net, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:leitao@debian.org,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:corey@minyard.net,m:kernel-team@meta.com,m:openipmi-developer@lists.sourceforge.net,m:llvm@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[debian.org,kernel.org,gmail.com,google.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,minyard.net:mid,minyard.net:email]
X-Rspamd-Queue-Id: 6646895400
X-Rspamd-Action: no action

It made things hard to read, move the check to a function.

Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_msghandler.c | 40 ++++++++++++++++-------------
 1 file changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index a590a67294e2..030828cdb778 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -602,6 +602,20 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
 static int __scan_channels(struct ipmi_smi *intf,
 				struct ipmi_device_id *id, bool rescan);
 
+static void ipmi_lock_xmit_msgs(struct ipmi_smi *intf, int run_to_completion,
+				unsigned long *flags)
+{
+	if (!run_to_completion)
+		spin_lock_irqsave(&intf->xmit_msgs_lock, *flags);
+}
+
+static void ipmi_unlock_xmit_msgs(struct ipmi_smi *intf, int run_to_completion,
+				  unsigned long *flags)
+{
+	if (!run_to_completion)
+		spin_unlock_irqrestore(&intf->xmit_msgs_lock, *flags);
+}
+
 static void free_ipmi_user(struct kref *ref)
 {
 	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
@@ -1878,11 +1892,9 @@ static void smi_send(struct ipmi_smi *intf,
 	int run_to_completion = READ_ONCE(intf->run_to_completion);
 	unsigned long flags = 0;
 
-	if (!run_to_completion)
-		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
+	ipmi_lock_xmit_msgs(intf, run_to_completion, &flags);
 	smi_msg = smi_add_send_msg(intf, smi_msg, priority);
-	if (!run_to_completion)
-		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
+	ipmi_unlock_xmit_msgs(intf, run_to_completion, &flags);
 
 	if (smi_msg)
 		handlers->sender(intf->send_info, smi_msg);
@@ -4826,8 +4838,7 @@ static void smi_work(struct work_struct *t)
 	 * message delivery.
 	 */
 restart:
-	if (!run_to_completion)
-		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
+	ipmi_lock_xmit_msgs(intf, run_to_completion, &flags);
 	if (intf->curr_msg == NULL && !intf->in_shutdown) {
 		struct list_head *entry = NULL;
 
@@ -4843,8 +4854,7 @@ static void smi_work(struct work_struct *t)
 			intf->curr_msg = newmsg;
 		}
 	}
-	if (!run_to_completion)
-		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
+	ipmi_unlock_xmit_msgs(intf, run_to_completion, &flags);
 
 	if (newmsg) {
 		cc = intf->handlers->sender(intf->send_info, newmsg);
@@ -4852,13 +4862,9 @@ static void smi_work(struct work_struct *t)
 			if (newmsg->recv_msg)
 				deliver_err_response(intf,
 						     newmsg->recv_msg, cc);
-			if (!run_to_completion)
-				spin_lock_irqsave(&intf->xmit_msgs_lock,
-						  flags);
+			ipmi_lock_xmit_msgs(intf, run_to_completion, &flags);
 			intf->curr_msg = NULL;
-			if (!run_to_completion)
-				spin_unlock_irqrestore(&intf->xmit_msgs_lock,
-						       flags);
+			ipmi_unlock_xmit_msgs(intf, run_to_completion, &flags);
 			ipmi_free_smi_msg(newmsg);
 			newmsg = NULL;
 			goto restart;
@@ -4928,16 +4934,14 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 		spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
 				       flags);
 
-	if (!run_to_completion)
-		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
+	ipmi_lock_xmit_msgs(intf, run_to_completion, &flags);
 	/*
 	 * We can get an asynchronous event or receive message in addition
 	 * to commands we send.
 	 */
 	if (msg == intf->curr_msg)
 		intf->curr_msg = NULL;
-	if (!run_to_completion)
-		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
+	ipmi_unlock_xmit_msgs(intf, run_to_completion, &flags);
 
 	if (run_to_completion)
 		smi_work(&intf->smi_work);
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
