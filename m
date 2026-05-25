Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mD1IKNTwE2pLHwcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 25 May 2026 08:48:52 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA27B5C6BBD
	for <lists+openipmi-developer@lfdr.de>; Mon, 25 May 2026 08:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Date:Message-Id:To:Mime-Version:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lDD+84BGW8N+pEJMjyZWO4wmbe/fsG/nwUrJ2x5kcH4=; b=e/X7lhjwe+gYUhehD7MunrAUsf
	c0PoO2KpFrWU0RJSUgKQxjNu7di+oJWuWoNZVbckdSif0NOjjKsN7IfRBREPqfYwsEKuaXZlktLdq
	htpR84QKyLRXJHvqA0tHCcp6za0eNYFCfJJmTW2jFqOTcXjmwDpiuUC8PnFxVLoksGyo=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wRP79-0000LZ-11;
	Mon, 25 May 2026 06:48:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qirui.001@bytedance.com>) id 1wRP78-0000LS-7A
 for openipmi-developer@lists.sourceforge.net;
 Mon, 25 May 2026 06:48:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Date:Subject:Content-Transfer-Encoding
 :Message-Id:From:Cc:To:Mime-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=07bFtTnXwilNmnh/+5dheCThlPykU801eesxhhjJU/E=; b=AI6eMFubIV3JyyfQtlSMXNgYdp
 dxEdY5mS/t9jLvQabwhChjWmferJv9YzR7gYNSr7PuVP/5pg2a71Vyl/dzkuWEQHViOgHBIxiTcoz
 ysFzHPLShP0+17jdE1P3+8he+corXIMxPs5+geaVY0a+4ChBFutesizI7+dzebIxE9Sk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Date:Subject:Content-Transfer-Encoding:Message-Id:From:Cc:To
 :Mime-Version:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=07bFtTnXwilNmnh/+5dheCThlPykU801eesxhhjJU/E=; b=J
 noCW5OJreUvtzFtNbKSqhsy7gcA4xPFEte7s7+7gb7TX1ffgXunWtgPNt+8cOeouh0a7zVgHSauea
 2llNogLqc36Fkx7n1Ctj64PPJ3hhCXBP4VGOrybRIbj1esX7U+9qqT5JmaQiFDP1TmIlDtwBe9vJJ
 LSx+49odhvebNMbw=;
Received: from va-1-111.ptr.blmpb.com ([209.127.230.111])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wRP76-0006JD-QB for openipmi-developer@lists.sourceforge.net;
 Mon, 25 May 2026 06:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1779690769; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=07bFtTnXwilNmnh/+5dheCThlPykU801eesxhhjJU/E=;
 b=bLzA+2pxZDL84O9JAYnS0CuQkGqmhUu+9Yj+GKeZHnbZBg4+avzqv9GZ9QSxQbllzX5Te4
 0e53LIfJOrDruxTuagexfxVRRejl17FLnoAFLhRqcMvq7VzEw+axa0D2X4Q6aU9v0yCSrH
 QQgZ1syYYdeP9xGXc+cbqPTPNeXQjG9eF3iaYGWFotO8O0IM+lk+Gi5zUBJkvoh4KcqoUQ
 2oIygkc97Ruiuh/r1LujNSbsJH4wtOQ2xwLZ1Q42kpw7t4Ua+k/sF1qjpf4wkr7qXLbe03
 CDPWqs2eNdumpUCcAt+mcJNK9xVw/awuSQMY9h2k2SaJs7WIPJA77f2A1ru70A==
Mime-Version: 1.0
To: "Corey Minyard" <minyard@acm.org>
Message-Id: <20260525063235.990101-1-qirui.001@bytedance.com>
X-Original-From: Rui Qi <qirui.001@bytedance.com>
X-Mailer: git-send-email 2.20.1
X-Lms-Return-Path: <lba+26a13ed0f+3535df+lists.sourceforge.net+qirui.001@bytedance.com>
Date: Mon, 25 May 2026 14:32:35 +0800
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: "Rui Qi" <qirui.001@bytedance.com> Fix a bug where
 rcu_read_unlock()
 was used instead of srcu_read_unlock() in handle_read_event_rsp() when
 ipmi_alloc_recv_msg()
 fails. This mismatch leads to an SRCU read-side critical section imbalance:
 the entry uses srcu_read_lock(&intf->users_srcu) but the error path
 incorrectly
 calls rcu_read_unlock(), which is a no-op for SRCU [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wRP76-0006JD-QB
Subject: [Openipmi-developer] [PATCH v2] ipmi: Fix rcu_read_unlock to
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
Cc: Rui Qi <qirui.001@bytedance.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
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
	FORGED_RECIPIENTS(0.00)[m:minyard@acm.org,m:qirui.001@bytedance.com,m:gregkh@linuxfoundation.org,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:replyto,bytedance.com:mid,bytedance.com:email];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[qirui.001@bytedance.com]
X-Rspamd-Queue-Id: CA27B5C6BBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Rui Qi" <qirui.001@bytedance.com>

Fix a bug where rcu_read_unlock() was used instead of srcu_read_unlock()
in handle_read_event_rsp() when ipmi_alloc_recv_msg() fails.

This mismatch leads to an SRCU read-side critical section imbalance: the
entry uses srcu_read_lock(&intf->users_srcu) but the error path
incorrectly calls rcu_read_unlock(), which is a no-op for SRCU and
leaves the SRCU lock held.

The offending code was restructured in mainline by commit 3be997d5a64a
("ipmi:msghandler: Remove srcu from the ipmi user structure"), which
replaced the SRCU locking with a mutex in this function, effectively
eliminating the mismatch. However, that commit is part of a larger
SRCU removal series that is not suitable for stable backport. This
minimal fix addresses the SRCU imbalance for 6.12 and earlier stable
branches that still carry the original locking scheme.

Fixes: e86ee2d44b44 ("ipmi: Rework locking and shutdown for hot remove")
Cc: stable@vger.kernel.org
Signed-off-by: Rui Qi <qirui.001@bytedance.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 188722ec0337..41ae4dac4eeb 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4395,7 +4395,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,

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
