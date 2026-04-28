Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAOlA5b48GlpbgEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Apr 2026 20:12:38 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DDF48A802
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Apr 2026 20:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qu3Gd7OSP4/V/FMUNECefL5Uw8ysd6SDKahfEljD32M=; b=fwj2KiGe7/3IOxS725EQ2TnRrU
	E7H4Ll5djKMqrD0eThoSONP9LMi5GJpyGfgTr/7o4H+DWuVRekjS2l0qC1eg6ydDHavETnmw3ABnk
	LO0k0gqgo3DgJU7m9iu1nXZ5JiCkW38KltVU93EHlhiKqDO4de3Mf4PQUAIinHsCL5uk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wHmv5-0006u5-Si;
	Tue, 28 Apr 2026 18:12:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wHmv5-0006tz-1o
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Apr 2026 18:12:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JZbCNADRk3D0+2vwBJopRNuItlsnuhx1YgLD19rJec8=; b=CLy8yDmHZKMC/6yR9Rs4QQ/TlB
 jmjdCzKexsUCQ5GlekV5/X0lghji41T2SNhyuIy0+NuUXXsB4reJiB/wlhVJ6kfhFVZQrhe1RiCxg
 E3idvTbPs9ivbELe/cLWU2wgayTJu9Oa+NA/MN8PyFAhEr70CC446QHPVELUJbLKf5qY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JZbCNADRk3D0+2vwBJopRNuItlsnuhx1YgLD19rJec8=; b=U
 3UmGHpkq48Stt++RZqLh/eJmLDAectJs0YIy9CyEW0B2vHFm65mk0u2ZvEwn2jsDNPeLLMFmhfBsA
 DlTX29fJjImvbi5FNlOTsvHX0gYZvh75jJejJ2G48/RnB7Ib+vtrp/vxZzgr6XFIiZkV3u+rrP/3L
 mpYXitTe+9pRDSh4=;
Received: from mail-ua1-f47.google.com ([209.85.222.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wHmv1-0007Tg-Pt for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Apr 2026 18:12:24 +0000
Received: by mail-ua1-f47.google.com with SMTP id
 a1e0cc1a2514c-9568bae58f7so5933561241.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 28 Apr 2026 11:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1777399933; x=1778004733; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=JZbCNADRk3D0+2vwBJopRNuItlsnuhx1YgLD19rJec8=;
 b=RSLw/VlCAEzGbmDZ18s3RrmVS3D7UXeV+HKTH/V8Yd3f7QsyjlWm6RdG/5p2RNdpkA
 f8FdHmdRLhNx5UKvVhSiuMRKBRI3cNbMCMuNisI/0dmZFtOR6QSLtgLx4d+EcUTL2zQA
 KSVdIFP02HyG8eUL/Pq5xoLB9D+m5wHHeORbDSXYxHeCLPBbdnF/FLVT9rRnypuQ0377
 b8mnkWOxt06wFpBJcyD3BJc3JJT7Y6zxM9tLf9DPdwyOCmRxQ8l4BtCm9YA7c0rKLaKD
 EGuibjTx77YEJdHUU8qM2IsbxnLs+tHbteLUJJ9tb9jCciYKVR0Watfi3AZ84EXspJLv
 LASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777399933; x=1778004733;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JZbCNADRk3D0+2vwBJopRNuItlsnuhx1YgLD19rJec8=;
 b=kGkAXuywcgPwicL/LIFJeN8pKovbFXOWzQwkuq9vealg5sQVxW8GzTCYWZ9N5tqWer
 P11bO0Pn3oIjZT94Fbm+3ug0eB7uyntLprt+OK/BT/AVXVC1NCWrO+0syITJdHguICSG
 tmc+zKdp0CJnfIpfAqLnkn0/A24tSJJLmERF6uHo9YmBBlkSLYOJAwC6flfM3+ItDNKL
 A+OmrA8BuTEn1jb/POCBZwCfCMpVQz95IoIqgIgdJ9BAwKQK+W5lhAh4bPfD6mR0h2jU
 f4Mm0TqtVfmj58TgQSXvnJHBpzmovpV/dPeMIq3HPIvr+aZuVUlkox9KZIEblka34Bdv
 K2sw==
X-Gm-Message-State: AOJu0YwMJEZi2BnIYsyAtwQjDp9F6kEc7FY9/IRH7MV3LKaCMvzF15p5
 7jnwiUtC11OXkUEmyeiqGerWaJHL5hA6la93mJpcRWeuQoAUB/1sVfBCugqb4GRPMlkkf47tr4t
 sA8ZG
X-Gm-Gg: AeBDieuoszoIv9YM9pEhT4oUXF469KFlqFm4x6P1ypel8eCgjQb4itAPd5drXbey8Cq
 +k976/xNxhsjML0PnrUXdpbg71/g7F62YyiA+9bn1Xh/nYanKWRhB/dAAxQ7uZoFZ2i+a/A7F5q
 8a8eUSbkGoOBzmyf5FNnBBzaBYlyIk7npOJXprW65ZejBbLCZf4HtfsdomkdtVdZQej3kYnApSi
 HSBd64rcEzJe1fwpv6lR78f8vLhdZ14GXZ4cPzXVHfurDBqkNJt7kPJZCKl/p/hdoWAWh4tKsP3
 ERBxnGzrL2aY/TbmRMY/vK4cFcnxbcEhNTFmBvdZtGkCln4ExTEIFLXfXfMEfhYwX3Dd6Z1uYpD
 p9JxrAqST1vVOBbAJeVpP7WIQ7MYXryI/mGup8zTywq/lq7TjP0dHgQE4y2kzHLTwykODAr1zKs
 O9gfQHyluEGYnKuZwCBCkVq6ep9JsfpNhVFI0UxdO9HORxoHVDv9j71kv6PIO8jajYGLUhgaRrh
 jKDerGMvPmXKgCr
X-Received: by 2002:a05:6808:309a:b0:468:1574:4cc1 with SMTP id
 5614622812f47-47c3d8e2531mr355934b6e.3.1777399579925; 
 Tue, 28 Apr 2026 11:06:19 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:7bc4:3841:9e4c:e2ac])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-47c291be222sm1866433b6e.14.2026.04.28.11.06.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2026 11:06:19 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <mfleming@cloudflare.com>
Date: Tue, 28 Apr 2026 13:00:33 -0500
Message-ID: <20260428180611.500258-1-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The driver would just fetch events and receive messages until
 the BMC said it was done. To avoid issues with BMCs that never say they are
 done, add a limit of 10 fetches at a time. In addition, an si interface has
 an attn state it can return from the hardware which is supposed to cause
 a flag fetch to see if the driver needs to fetch events or message or a few
 other things. If t [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.47 listed in wl.mailspike.net]
X-Headers-End: 1wHmv1-0007Tg-Pt
Subject: [Openipmi-developer] [PATCH v3] ipmi: Add limits to event and
 receive message requests
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
Cc: kernel-team@cloudflare.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Tony Camuso <tcamuso@redhat.com>,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 34DDF48A802
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:tcamuso@redhat.com,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:mid,minyard.net:email,cloudflare.com:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

The driver would just fetch events and receive messages until the
BMC said it was done.  To avoid issues with BMCs that never say they are
done, add a limit of 10 fetches at a time.

In addition, an si interface has an attn state it can return from the
hardware which is supposed to cause a flag fetch to see if the driver
needs to fetch events or message or a few other things.  If the attn
bit gets stuck, it's a similar problem.  So allow messages in between
flag fetches so the driver itself doesn't get stuck.

This is a more general fix than the previous fix for the specific bad
BMC, but should fix the more general issue of a BMC that won't stop
saying it has data.

This has been there from the beginning of the driver.  It's not a bug
per-se, but it is accounting for bugs in BMCs.

Reported-by: Matt Fleming <mfleming@cloudflare.com>
Closes: https://lore.kernel.org/lkml/20260415115930.3428942-1-matt@readmodwrite.com/
Fixes: <1da177e4c3f4> ("Linux-2.6.12-rc2")
Cc: stable@vger.kernel.org
Signed-off-by: Corey Minyard <corey@minyard.net>
---
I have added this problem as a capability in the openipmi library
simulator so I can reproduce the issue and make sure everything works
properly.

 drivers/char/ipmi/ipmi_si_intf.c | 54 +++++++++++++++++++++++++-------
 drivers/char/ipmi/ipmi_ssif.c    | 23 ++++++++++++--
 2 files changed, 64 insertions(+), 13 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 08c208cc64c5..7c3c463e08da 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -168,6 +168,10 @@ struct smi_info {
 			     OEM2_DATA_AVAIL)
 	unsigned char       msg_flags;
 
+	/* When requesting events and messages, don't do it forever. */
+	unsigned int        num_requests_in_a_row;
+	bool		    last_was_flag_fetch;
+
 	/* Does the BMC have an event buffer? */
 	bool		    has_event_buffer;
 
@@ -410,7 +414,10 @@ static void start_getting_msg_queue(struct smi_info *smi_info)
 
 	start_new_msg(smi_info, smi_info->curr_msg->data,
 		      smi_info->curr_msg->data_size);
-	smi_info->si_state = SI_GETTING_MESSAGES;
+	if (smi_info->si_state != SI_GETTING_MESSAGES) {
+		smi_info->num_requests_in_a_row = 0;
+		smi_info->si_state = SI_GETTING_MESSAGES;
+	}
 }
 
 static void start_getting_events(struct smi_info *smi_info)
@@ -421,7 +428,10 @@ static void start_getting_events(struct smi_info *smi_info)
 
 	start_new_msg(smi_info, smi_info->curr_msg->data,
 		      smi_info->curr_msg->data_size);
-	smi_info->si_state = SI_GETTING_EVENTS;
+	if (smi_info->si_state != SI_GETTING_EVENTS) {
+		smi_info->num_requests_in_a_row = 0;
+		smi_info->si_state = SI_GETTING_EVENTS;
+	}
 }
 
 /*
@@ -595,6 +605,7 @@ static void handle_transaction_done(struct smi_info *smi_info)
 			smi_info->si_state = SI_NORMAL;
 		} else {
 			smi_info->msg_flags = msg[3];
+			smi_info->last_was_flag_fetch = true;
 			handle_flags(smi_info);
 		}
 		break;
@@ -646,6 +657,11 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		} else {
 			smi_inc_stat(smi_info, events);
 
+			smi_info->num_requests_in_a_row++;
+			if (smi_info->num_requests_in_a_row > 10)
+				/* Stop if we do this too many times. */
+				smi_info->msg_flags &= ~EVENT_MSG_BUFFER_FULL;
+
 			/*
 			 * Do this before we deliver the message
 			 * because delivering the message releases the
@@ -684,6 +700,11 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		} else {
 			smi_inc_stat(smi_info, incoming_messages);
 
+			smi_info->num_requests_in_a_row++;
+			if (smi_info->num_requests_in_a_row > 10)
+				/* Stop if we do this too many times. */
+				smi_info->msg_flags &= ~RECEIVE_MSG_AVAIL;
+
 			/*
 			 * Do this before we deliver the message
 			 * because delivering the message releases the
@@ -825,6 +846,26 @@ static enum si_sm_result smi_event_handler(struct smi_info *smi_info,
 		goto out;
 	}
 
+	/*
+	 * If we are currently idle, or if the last thing that was
+	 * done was a flag fetch and there is a message pending, try
+	 * to start the next message.
+	 *
+	 * We do the waiting message check to avoid a stuck flag
+	 * completely wedging the driver.  Let a message through
+	 * in between flag operations if that happens.
+	 */
+	if (si_sm_result == SI_SM_IDLE ||
+	    (si_sm_result == SI_SM_ATTN && smi_info->waiting_msg &&
+	     smi_info->last_was_flag_fetch)) {
+		smi_info->last_was_flag_fetch = false;
+		smi_inc_stat(smi_info, idles);
+
+		si_sm_result = start_next_msg(smi_info);
+		if (si_sm_result != SI_SM_IDLE)
+			goto restart;
+	}
+
 	/*
 	 * We prefer handling attn over new messages.  But don't do
 	 * this if there is not yet an upper layer to handle anything.
@@ -852,15 +893,6 @@ static enum si_sm_result smi_event_handler(struct smi_info *smi_info,
 		}
 	}
 
-	/* If we are currently idle, try to start the next message. */
-	if (si_sm_result == SI_SM_IDLE) {
-		smi_inc_stat(smi_info, idles);
-
-		si_sm_result = start_next_msg(smi_info);
-		if (si_sm_result != SI_SM_IDLE)
-			goto restart;
-	}
-
 	if ((si_sm_result == SI_SM_IDLE)
 	    && (atomic_read(&smi_info->req_events))) {
 		/*
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index b49500a1bd36..f3798f4e6a63 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -225,6 +225,9 @@ struct ssif_info {
 	bool		    has_event_buffer;
 	bool		    supports_alert;
 
+	/* When requesting events and messages, don't do it forever. */
+	unsigned int        num_requests_in_a_row;
+
 	/*
 	 * Used to tell what we should do with alerts.  If we are
 	 * waiting on a response, read the data immediately.
@@ -413,7 +416,10 @@ static void start_event_fetch(struct ssif_info *ssif_info, unsigned long *flags)
 	}
 
 	ssif_info->curr_msg = msg;
-	ssif_info->ssif_state = SSIF_GETTING_EVENTS;
+	if (ssif_info->ssif_state != SSIF_GETTING_EVENTS) {
+		ssif_info->num_requests_in_a_row = 0;
+		ssif_info->ssif_state = SSIF_GETTING_EVENTS;
+	}
 	ipmi_ssif_unlock_cond(ssif_info, flags);
 
 	msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
@@ -436,7 +442,10 @@ static void start_recv_msg_fetch(struct ssif_info *ssif_info,
 	}
 
 	ssif_info->curr_msg = msg;
-	ssif_info->ssif_state = SSIF_GETTING_MESSAGES;
+	if (ssif_info->ssif_state != SSIF_GETTING_MESSAGES) {
+		ssif_info->num_requests_in_a_row = 0;
+		ssif_info->ssif_state = SSIF_GETTING_MESSAGES;
+	}
 	ipmi_ssif_unlock_cond(ssif_info, flags);
 
 	msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
@@ -843,6 +852,11 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 			ssif_info->msg_flags &= ~EVENT_MSG_BUFFER_FULL;
 			handle_flags(ssif_info, flags);
 		} else {
+			ssif_info->num_requests_in_a_row++;
+			if (ssif_info->num_requests_in_a_row > 10)
+				/* Stop if we do this too many times. */
+				ssif_info->msg_flags &= ~EVENT_MSG_BUFFER_FULL;
+
 			handle_flags(ssif_info, flags);
 			ssif_inc_stat(ssif_info, events);
 			deliver_recv_msg(ssif_info, msg);
@@ -876,6 +890,11 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 			ssif_info->msg_flags &= ~RECEIVE_MSG_AVAIL;
 			handle_flags(ssif_info, flags);
 		} else {
+			ssif_info->num_requests_in_a_row++;
+			if (ssif_info->num_requests_in_a_row > 10)
+				/* Stop if we do this too many times. */
+				ssif_info->msg_flags &= ~RECEIVE_MSG_AVAIL;
+
 			ssif_inc_stat(ssif_info, incoming_messages);
 			handle_flags(ssif_info, flags);
 			deliver_recv_msg(ssif_info, msg);
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
