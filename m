Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDgQCVyMeGmqqwEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 10:58:52 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B0392409
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 10:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:In-Reply-To:References:Message-Id:MIME-Version:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZZX1KvN7IcV89396AyYChUdlXY3h+MxwX2gDko3RVtw=; b=LNtA6xSWJflI5qRVHLPMVqDUhm
	uuqEuLJQAhea4UL8MKzBUlZEosDDdFiyFNJZYjJVtpEafFJsiQURTyBekp3Ve8gBipIsTGIlcsLy5
	rmJyODMmbenwfRacu4zLrRlK/LdIdRAl90Nh4gbY6j8V8tsnQayCq6tSMfgLkJo8Lue0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkfqJ-0003GG-CT;
	Tue, 27 Jan 2026 09:58:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leitao@debian.org>) id 1vkfqG-0003G7-S4
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 09:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Ul1XrFjRQvLqHhLuhePbfbA8WYs/pNkCMhU+IPYaWo=; b=Eb1h+HIKSFieWfYyirCkE6EYC/
 wKwkUOrw6FwbbC95W33CPdxKX8Tdis8x8y73ekmg1ENveVbolS3F0o67ALWzkdmDC/mGO743qZV1F
 7lCjP9eHL/HW6k9xiDL70mVzzujwhcxPQ3QpaGF0Pjvy25BTWY+58E/5ykdM+hBGpVIM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9Ul1XrFjRQvLqHhLuhePbfbA8WYs/pNkCMhU+IPYaWo=; b=lgB0YgeVIZF2pu2STuqMUov/63
 RFGuRa48TGYBB4htZg8nLDjg82DyEod/8zv/sVSrs/QfB21RLiAbdQAk4SQyIOsbu0/fcwWi1faN4
 Ie79kF93BCnBACEF+LKkqADh6bbVOv6UBuqBtfNrCB+uAH2nkgHCkHYccZPyhbYhTtyA=;
Received: from stravinsky.debian.org ([82.195.75.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vkfqG-00069U-Bt for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 09:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky;
 h=X-Debian-User:Cc:To:In-Reply-To:References:
 Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
 From:Reply-To:Content-ID:Content-Description;
 bh=9Ul1XrFjRQvLqHhLuhePbfbA8WYs/pNkCMhU+IPYaWo=; b=VcqD7oAv5hnnF/HhyEby4/of+r
 4ib0rUFA6YXd/IYzMXm22A+4iv9TihaKLcpNk31d+MlTuPyY0myAukrtzLEFdNzC4IhY00VI2pcSH
 tcHOvUl9vQal7Hr1fJJXfgbT8lAp1SzLewhsdcu9Wze0rV8EeYmOXlpBkBUSJcs1jgCesVVGxEcL0
 tyITXnsTVqbs3xEOB/hcLGeUz5HWW0I87HwGD4RqUgtJsUrg4hiuzFpHnSr2FRpDZH8IkKrv4o6pU
 eShMGWfaphDU5bjhn54DGCI7aY4lXBzqoZH7tEwRtQDoPIGmDVSRr6i/9aA8SWDXvV30nuxOQvGAK
 Q6ujIURA==;
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vkfq9-00GuDy-KF; Tue, 27 Jan 2026 09:58:29 +0000
From: Breno Leitao <leitao@debian.org>
Date: Tue, 27 Jan 2026 01:57:59 -0800
MIME-Version: 1.0
Message-Id: <20260127-ipmi-v1-1-ba5cc90f516f@debian.org>
References: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
In-Reply-To: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
To: Corey Minyard <corey@minyard.net>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.15-dev-deb6e
X-Developer-Signature: v=1; a=openpgp-sha256; l=3294; i=leitao@debian.org;
 h=from:subject:message-id; bh=mF/EKCZfOpPZ+pc/uCv6chQCHA0BchDmBBa1SRsz3Ic=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpeIw8WzNnfGL4QhhTnu+4ka6bdh19XifhbuAp1
 +2c/Hn9gT6JAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaXiMPAAKCRA1o5Of/Hh3
 bcnFD/456XvLJgLX9FCKtqHcnOqePTojY5FksArhtzYsCbJug0jw6049I4xuVC52eMivxNeOUm1
 WDmp5kpcV3t94+brE/gesD1Ul9p4gv9BIa/cHOBa4/6+Rgdg5AsIgekzj5HNUH+LgGlaByZyCuC
 l155AiyqZoDpcIBKuhMQevhNxn9wMESLKhGX/pD44X2v4Z0fZlrBzuAEuP1lkkrsAWG/EkyMTZg
 meIMXm6qcWKEZic4beSwC5CruHUV4SPurdcERWptIktP4h8SFxx7szhvLLJHAPQ9OXyk7Bh2eAt
 aXSqC9Bt0pkcxvIRKKoKNcbVAHqdtIA4rlp1LWYkmtzuo+OXPPjFeEFIvDkoGK1QUnXOgAjDo8b
 EPvP79aohdr/kCb0EJRWsDUn5kRX3JfHjQevosjMG5zC5zzweeQmI9VyVA3sQ19axKzvPr6AySv
 kTedCPYxhQAvaEmtcuu+snkkGq/+w1kyd98TpOkoXKokYkyed0OxL6yVRPmxXf2SdMyr+LlgcRg
 KCrfWWCkD05CKQGpch/6FiW83nVH+/AXYdQLa/IM1yB4St/sSCslzuugncxvwRA6FsJ+sXJ/NME
 SZjWQ000qb2Ov0RZVzQe9RxUcUiLYzm0CRKxqWN0HhiZsDVKCoX4V5++BrS1nolZsid9jc0BLaG
 BFaiYXUazH/0DWg==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Debian-User: leitao
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When the SMI sender returns an error, smi_work() delivers
 an error response but then jumps back to restart without cleaning up properly:
 1. intf->curr_msg is not cleared, so no new message is pulled 2. newmsg still
 points to the message, causing sender() to be called again with the same
 message 3. If sender() fails again, deliver_err_r [...] 
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
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vkfqG-00069U-Bt
Subject: [Openipmi-developer] [PATCH] ipmi: Fix use-after-free and list
 corruption on sender error
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
Cc: Breno Leitao <leitao@debian.org>, kernel-team@meta.com,
 openipmi-developer@lists.sourceforge.net, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:leitao@debian.org,m:kernel-team@meta.com,m:openipmi-developer@lists.sourceforge.net,m:llvm@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[minyard.net,kernel.org,gmail.com,google.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,debian.org:s=smtpauto.stravinsky];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,debian.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 47B0392409
X-Rspamd-Action: no action

When the SMI sender returns an error, smi_work() delivers an error
response but then jumps back to restart without cleaning up properly:

1. intf->curr_msg is not cleared, so no new message is pulled
2. newmsg still points to the message, causing sender() to be called
   again with the same message
3. If sender() fails again, deliver_err_response() is called with
   the same recv_msg that was already queued for delivery

This causes list_add corruption ("list_add double add") because the
recv_msg is added to the user_msgs list twice. Subsequently, the
corrupted list leads to use-after-free when the memory is freed and
reused, and eventually a NULL pointer dereference when accessing
recv_msg->done.

The buggy sequence:

  sender() fails
    -> deliver_err_response(recv_msg)  // recv_msg queued for delivery
    -> goto restart                    // curr_msg not cleared!
  sender() fails again (same message!)
    -> deliver_err_response(recv_msg)  // tries to queue same recv_msg
    -> LIST CORRUPTION

Fix by introducing a send_failed flag that signals when sender()
returns an error. At the restart label, inside the existing spinlock
critical section, check this flag and clear curr_msg if set. This
ensures:

- The smi_msg is always freed after sender error
- curr_msg is cleared so the next iteration pulls a new message
- No stale pointers remain that could cause use-after-free
- Only one lock acquisition per iteration (avoids extra lock/unlock
  in the error path)

Fixes: 9cf93a8fa9513 ("ipmi: Allow an SMI sender to return an error")
Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 3f48fc6ab596d..81259c93261fb 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4816,6 +4816,7 @@ static void smi_work(struct work_struct *t)
 	int run_to_completion = READ_ONCE(intf->run_to_completion);
 	struct ipmi_smi_msg *newmsg = NULL;
 	struct ipmi_recv_msg *msg, *msg2;
+	bool send_failed = false;
 	int cc;
 
 	/*
@@ -4828,6 +4829,16 @@ static void smi_work(struct work_struct *t)
 restart:
 	if (!run_to_completion)
 		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
+	if (send_failed) {
+		/*
+		 * Sender failed, clear curr_msg so we can pull a new
+		 * message. Do not clear it unconditionally as a message
+		 * may be in flight from a previous run.
+		 */
+		intf->curr_msg = NULL;
+		send_failed = false;
+	}
+	newmsg = NULL;
 	if (intf->curr_msg == NULL && !intf->in_shutdown) {
 		struct list_head *entry = NULL;
 
@@ -4852,8 +4863,14 @@ static void smi_work(struct work_struct *t)
 			if (newmsg->recv_msg)
 				deliver_err_response(intf,
 						     newmsg->recv_msg, cc);
-			else
-				ipmi_free_smi_msg(newmsg);
+			/*
+			 * Sender returned error, the lower layer did not
+			 * take ownership of the message. The transaction
+			 * is abandoned - the user has been notified via
+			 * deliver_err_response() above.
+			 */
+			ipmi_free_smi_msg(newmsg);
+			send_failed = true;
 			goto restart;
 		}
 	}

-- 
2.47.3



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
