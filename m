Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIL2JEBzxGljzQQAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Mar 2026 00:44:00 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 218DA32D711
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Mar 2026 00:44:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:Mime-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5ZXMQbQ4W6aD2IVp4bAM91Rk8KczNrnd3CqUUjI1brU=; b=QxbkF/sc1AsUNzaBke4mWWTwN/
	xS5rSXyUK0X64+eBx9o28LnKhA7J/h7fcda5cK9pe8Bq8jS5UARxTMJQzV0y3kPcCzPA1aIJGibpa
	lml3ax6SZyHe30Au43284ZGph0xqSNWusaz/Gt2qhI9TfUmadRYWdI6Njdw3ckPfVnOY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w5Xt6-0000st-Ph;
	Wed, 25 Mar 2026 23:43:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qirui.001@bytedance.com>) id 1w5R6g-0001tj-1Q
 for openipmi-developer@lists.sourceforge.net;
 Wed, 25 Mar 2026 16:29:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:
 Content-Transfer-Encoding:From:Content-Type:Mime-Version:Cc:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7gvAcvhp23Tp997YHFDCTzlIp6jmCAkjpZ+WoXr7cCM=; b=HK3IQ4Gs5Ggzq/N9PgvLYavaXz
 TDpuOpWfsc23wo1ZmUWZO5jgIzlarCR6Q3auezUrrTZuHTUR4JXG02HLcNa207/dApIwExFWeQX7p
 P3cQeIE1A+LgxzNGsIfTvKv6pQfo/VZ3Jh7IN197NUXIXj+dM9qD3AfVw8Ky7YtMeCtw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:Content-Transfer-Encoding:From:Content-Type:
 Mime-Version:Cc:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7gvAcvhp23Tp997YHFDCTzlIp6jmCAkjpZ+WoXr7cCM=; b=P
 EiqWjSxJvaErBNblInuvZDrvtkQRrN3q4/eEF8jZ21PoXMMozPZkCDHuAkrdURkvXBhwb1q6w0b0f
 V67M7QcvFbYe+OSV/dn7VJ9INK9Qu0nrL+0toufLIUMVyXlBIpQByS2m6RKkpiGiYk2Y7JtHfee4I
 ixmbGRn0uIWL6GAE=;
Received: from va-1-115.ptr.blmpb.com ([209.127.230.115])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w5R6e-00062e-8a for openipmi-developer@lists.sourceforge.net;
 Wed, 25 Mar 2026 16:29:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1774440685; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=7gvAcvhp23Tp997YHFDCTzlIp6jmCAkjpZ+WoXr7cCM=;
 b=ZgdxCoaAnsIUVN/p44EDxIRkHUPLJ/n9e6YmiZCL9YaJ1wFN+3gX+22f1+m8QCvi7SizMi
 VFFkSbtw51NcqpiT8uWsHpyJ8SIPa0dgOtofoURVP/HgcF6TvaPZsv036J38NG+ShaVjN2
 xnVDz7CGYoyCNIycKxW3y6hkJTZxDD1Ro4F1r7TXv4PoLo58jMO3h/w2OWe7FOAnW2QT6b
 8oeQ72yZOIDxffqc36ZAO3ay8vZxFZFr18HqH34fMthFuQ76VOZPZsHSNMmgApJMZDck4r
 dtVxtjlPumbGtwbM9Lqw+ppLahyN2+MBA59XH5yl4uZOZGAuj4Rqf4kKWR4Rcw==
X-Original-From: Rui Qi <qirui.001@bytedance.com>
X-Lms-Return-Path: <lba+269c3d0eb+af77a6+lists.sourceforge.net+qirui.001@bytedance.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0
To: <minyard@acm.org>
Date: Wed, 25 Mar 2026 20:11:09 +0800
Message-Id: <20260325121109.89705-1-qirui.001@bytedance.com>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Fix a bug where rcu_read_unlock() was used instead of
 srcu_read_unlock()
 in handle_read_event_rsp() when ipmi_alloc_recv_msg() fails. This mismatch
 can lead to SRCU read-side critical section imbalance. 
 Content analysis details:   (0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
X-Headers-End: 1w5R6e-00062e-8a
X-Mailman-Approved-At: Wed, 25 Mar 2026 23:43:47 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Fix rcu_read_unlock to
 srcu_read_unlock in handle_read_event_rsp
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
From: Rui Qi via Openipmi-developer <openipmi-developer@lists.sourceforge.net>
Reply-To: Rui Qi <qirui.001@bytedance.com>
Cc: Rui Qi <qirui.001@bytedance.com>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:minyard@acm.org,m:qirui.001@bytedance.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:email,bytedance.com:replyto,bytedance.com:mid,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[qirui.001@bytedance.com]
X-Rspamd-Queue-Id: 218DA32D711
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix a bug where rcu_read_unlock() was used instead of srcu_read_unlock()
in handle_read_event_rsp() when ipmi_alloc_recv_msg() fails.

This mismatch can lead to SRCU read-side critical section imbalance.

Fixes: e86ee2d44b44 ("ipmi: Rework locking and shutdown for hot remove")
Cc: stable@vger.kernel.org # 6.12

Signed-off-by: Rui Qi <qirui.001@bytedance.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 71c6ec8a87927..d2bbf8ffd9d76 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4388,7 +4388,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 
 		recv_msg = ipmi_alloc_recv_msg(user);
 		if (IS_ERR(recv_msg)) {
-			rcu_read_unlock();
+			srcu_read_unlock(&intf->users_srcu, index);
 			list_for_each_entry_safe(recv_msg, recv_msg2, &msgs,
 						 link) {
 				list_del(&recv_msg->link);
-- 
2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
