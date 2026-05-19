Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FpVCrRKDGrjdQUAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 May 2026 13:34:12 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8DF57DB4C
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 May 2026 13:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=De+wVnys+ZxZERPSCtEC2jAnpRniO0hWM8uts2eWTM8=; b=me5/hBMgTU1uTKgOSk+3dKN499
	ZfzVL49Ca2ucDC7loLryhbLubTBGGNUuYgM36+QrELhX6UTQX5aCd8dDo+F4W+s6ITH4VPlPaNaWY
	nCh6kp6Hwu1cjR/bzcXJ/9q+RJhOekAQxlV3xZotBqqFMr+PCubMvDYdSETMgO+GhXrE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wPIi1-0000RM-Oe;
	Tue, 19 May 2026 11:34:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jszhang@kernel.org>) id 1wPDl0-0003U2-Sw
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 May 2026 06:16:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y1rndSEX7RjYBAXePj0cYR9rgScqFWQ1oyQXc0vwtPg=; b=k+Z+v56Bzi7/72TRV3J+oOCWtx
 A1jnswwSa6Nmx2d3HriaRN1PNiv6yhpGuWliDYTwQZdVVxLIbzfDSiQ0o/rXEHsFDrhUK9UPZZrsc
 Q+qGg3+LWDc3RMEKJgRy6TC3E+8p/0WObvrx7n2X9pObbOjQyhGi4HVpugU/k9lISdQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y1rndSEX7RjYBAXePj0cYR9rgScqFWQ1oyQXc0vwtPg=; b=U
 hqKLfY6Z7XdYXacYkXW+POhw88KocCgHsKOFkIQL7wamQnhXNwwavlCQqktPdzXfAHogOvCde8x1p
 WEpbFDjU/uh8MtMRV95AuKcPrsL7SpCY+Odek0IIWPWxT20GIycFW7xg5IKvnH4rfi+SPX1EFBizF
 q1jG7KIhm9tj3tPo=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wPDks-0005dE-1Q for openipmi-developer@lists.sourceforge.net;
 Tue, 19 May 2026 06:16:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DEC756020B;
 Tue, 19 May 2026 06:16:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57136C2BCB3;
 Tue, 19 May 2026 06:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1779171387;
 bh=ukj4HpDSACSfnJo4TLTZS9WQLK43145+qPl8g1RPxjk=;
 h=From:To:Cc:Subject:Date:From;
 b=ji7FRjy1HSMS1SEzM3I172YrCOP8ZZJhhaAWJzz7RbXvQ8bZVONHVKHNn8sHX/8eR
 Ow5EROlaOXIP7z6g6DbpkrQP3SEODNmvsyZKkEfM2plT8ZQpKJLf7Hem5SgwsX7FA0
 8vovqdbdo1sHXRff3/VttQ34K3fPEtyBVK783M5AovrPYloiBG2EpxMONWXaRRf4Fd
 fQXPOjgPFRgXNTEHlLJxd2N0mqri//d5Cit7KzwGtz/eiFl3jTrX0WNwA7oxZo4mEf
 Bf8fI7ydY0cg9/ounFESV0Rsvfrbo5yKEkPHWNKvaBLlk/EIcU/qK5XZzPLgZZQa0z
 Hzbpsh/RFt+Tw==
To: Corey Minyard <corey@minyard.net>
Date: Tue, 19 May 2026 13:57:22 +0800
Message-ID: <20260519055722.13161-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use LIST_HEAD to initialize on stack list head. No
 intentional
 functional impact. Change generated with below coccinelle script: @@
 identifier name; @@ - struct list_head name; + LIST_HEAD(name);
 ... when != name - INIT_LIST_HEAD(&name); 
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
X-Headers-End: 1wPDks-0005dE-1Q
X-Mailman-Approved-At: Tue, 19 May 2026 11:34:01 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Use LIST_HEAD() to initialize on
 stack list head
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
From: Jisheng Zhang via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jisheng Zhang <jszhang@kernel.org>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	TAGGED_RCPT(0.00)[openipmi-developer];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[jszhang@kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Queue-Id: 5A8DF57DB4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use LIST_HEAD to initialize on stack list head. No intentional
functional impact.

Change generated with below coccinelle script:

@@
identifier name;
@@
- struct list_head name;
+ LIST_HEAD(name);
... when != name
- INIT_LIST_HEAD(&name);

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 869ac87a4b6a..7a4566046b68 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1610,14 +1610,12 @@ int ipmi_set_gets_events(struct ipmi_user *user, bool val)
 {
 	struct ipmi_smi      *intf = user->intf;
 	struct ipmi_recv_msg *msg, *msg2;
-	struct list_head     msgs;
+	LIST_HEAD(msgs);
 
 	user = acquire_ipmi_user(user);
 	if (!user)
 		return -ENODEV;
 
-	INIT_LIST_HEAD(&msgs);
-
 	mutex_lock(&intf->events_mutex);
 	if (user->gets_events == val)
 		goto out;
@@ -3785,10 +3783,9 @@ static void cleanup_smi_msgs(struct ipmi_smi *intf)
 	struct seq_table *ent;
 	struct ipmi_smi_msg *msg;
 	struct list_head *entry;
-	struct list_head tmplist;
+	LIST_HEAD(tmplist);
 
 	/* Clear out our transmit queues and hold the messages. */
-	INIT_LIST_HEAD(&tmplist);
 	list_splice_tail(&intf->hp_xmit_msgs, &tmplist);
 	list_splice_tail(&intf->xmit_msgs, &tmplist);
 
@@ -4442,7 +4439,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 				 struct ipmi_smi_msg *msg)
 {
 	struct ipmi_recv_msg *recv_msg, *recv_msg2;
-	struct list_head     msgs;
+	LIST_HEAD(msgs);
 	struct ipmi_user     *user;
 	int rv = 0, deliver_count = 0;
 
@@ -4457,8 +4454,6 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 		return 0;
 	}
 
-	INIT_LIST_HEAD(&msgs);
-
 	mutex_lock(&intf->events_mutex);
 
 	ipmi_inc_stat(intf, events);
@@ -5101,7 +5096,7 @@ static void check_msg_timeout(struct ipmi_smi *intf, struct seq_table *ent,
 static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 				 unsigned long timeout_period)
 {
-	struct list_head     timeouts;
+	LIST_HEAD(timeouts);
 	struct ipmi_recv_msg *msg, *msg2;
 	unsigned long        flags;
 	int                  i;
@@ -5120,7 +5115,6 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 	 * have timed out, putting them in the timeouts
 	 * list.
 	 */
-	INIT_LIST_HEAD(&timeouts);
 	mutex_lock(&intf->seq_lock);
 	if (intf->ipmb_maintenance_mode_timeout) {
 		if (intf->ipmb_maintenance_mode_timeout <= timeout_period)
-- 
2.53.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
