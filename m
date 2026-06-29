Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CONSFw1cQmqk5QkAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:37 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D506D9A62
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=IcoylOzj;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=CFUmn92g;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=VzayikVz;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b=jO8UnOjM;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Hnu14cqkFtwR6IdajyKzFYZFG07uNetV4W5Om/QuPY=; b=IcoylOzjMzWBfMaVVpbIfietE+
	Y8UrdUGNqWzE7oMexIZ70WzuF15Zpf+SY6vPIHFTxydvzmsOfQO8Y79ZHUsUxaKhf6slLVOoaveBn
	S9Ddw09cSNsVplOk9BFKIM1OHTUQm4dqWtl+Os1Mv3N6PXhMSL9p3mUbDudrLnOIMS58=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1weAVU-0003DO-ET;
	Mon, 29 Jun 2026 11:50:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+yc_hsieh.aspeedtech.com@kernel.org>)
 id 1we5oS-0001qf-2f for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LQXKnNh1b5EuPBwmDipG7e1JVmal6ripcmfgsJxs5jk=; b=CFUmn92gUrwKjq2e4Q0SS9z2bd
 My+urklHelJNnZ+RGnFpMc6pAEztGyL/u/CRKWUKtee34s2hocEXoVakPgcbJasV+rRDLbGqIyCyx
 z0+dEMd3G4lpEdlaGZ7jfDkb6JMpQLS7Uh/WnLsC6cRyhU53lYc1vmsNSkKQiWGO3p2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LQXKnNh1b5EuPBwmDipG7e1JVmal6ripcmfgsJxs5jk=; b=VzayikVzIPz3x3rxcqz3iMLS8P
 CfbXR9TtLk2wWuGb/PEpzlReMxItSC+MDcpr8xPg/tGou0u5wPiltuG+CE4+GgKBDk4a9Zi92btQX
 wpip/p3r+y+eJYChO6gopmu8nvVbfHap4q1Y8KNfAEBMcyB8LMQZWafDIybj1KnN9+Hw=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1we5oO-0003Cq-JR for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 45B1960052;
 Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED214C2BCF6;
 Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1782715774;
 bh=o9rQxS6VSnLZ8UKdGcYxwjs9cwreXI3LIctajGTw3oc=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=jO8UnOjMxgR7T59iLunDizziDNuV9ICXSGMpyrRKLa5eU5bVC3K23QiQ2zRu3Q6B7
 n+D2MbuYJ2iitwtqZtWECRmaK7XM4a8uiEP6sY31YHsw9E004TMM5BHk459ZqgGzlK
 uMIjAuDvLkEYOoF4dV8D6RSMa2PyFZOSwLEFY9eBKydN3OB1gtbKp0O02lKjbhDSZP
 lzYASnAPeTykIhgyr/rld767lCazOM8u/AHfP/aU5z6Q+ZVa+3Te+upwTt3GKrU/et
 euImpHD4B4TLWaH3PYxdMOZ5daR5uTcqZVRUv9EMd3Q3NvmYBF91PZxBLdwEVYRtG8
 cp7rltm1ZAs6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id DF4F3C43602;
 Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
Date: Mon, 29 Jun 2026 14:48:59 +0800
MIME-Version: 1.0
Message-Id: <20260629-aspeed-bt-bmc-multichannel-v1-2-fc23ee337f7a@aspeedtech.com>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
In-Reply-To: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782715772; l=1964;
 i=yc_hsieh@aspeedtech.com; s=20260629; h=from:subject:message-id;
 bh=kkcdpH7g4gFHRExA7T4VUvsyg0bKpkuItRJGEI3xPJA=;
 b=yHQTY1jCvmxKBbcWqHMlIZQ8QIbmxk/w14R13q3bhtuzMgZpj11PsEVwfZCzFGlKhBzXd+Lfs
 TSHkqXBCUHbCjiz3yJ7vSAa2XwHJor+R157niWVbLj+PCVz3VziveqT
X-Developer-Key: i=yc_hsieh@aspeedtech.com; a=ed25519;
 pk=kLxUeF7g6teciq79it9N3tYNgp3yCspZ+AHlYSnZ0gs=
X-Endpoint-Received: by B4 Relay for yc_hsieh@aspeedtech.com/20260629 with
 auth_id=844
X-Original-From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com> The driver uses
 a global open count to allow only one userspace client to open the BT device
 at a time. This works for a single device, but 
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
X-Headers-End: 1we5oO-0003Cq-JR
X-Mailman-Approved-At: Mon, 29 Jun 2026 11:50:29 +0000
Subject: [Openipmi-developer] [PATCH 2/4] ipmi: bt-bmc: Track open state per
 device
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
From: Yu-Che Hsieh via B4 Relay via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: yc_hsieh@aspeedtech.com
Cc: Yu-Che Hsieh via B4 Relay <devnull+yc_hsieh.aspeedtech.com@kernel.org>,
 devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Yu-Che Hsieh <yc_hsieh@aspeedtech.com>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devnull+yc_hsieh.aspeedtech.com@kernel.org,m:devicetree@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:yc_hsieh@aspeedtech.com,m:openipmi-developer@lists.sourceforge.net,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:devnull@kernel.org,s:lists@lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer,dt,yc_hsieh.aspeedtech.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[yc_hsieh@aspeedtech.com]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B3D506D9A62

From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>

The driver uses a global open count to allow only one userspace client

to open the BT device at a time. This works for a single device, but

also prevents independent BT device instances from being opened

concurrently.

Move the open count into struct bt_bmc so each device instance tracks

its own open state. This preserves the single-open behavior per device

while allowing multiple BT devices to operate independently.

Signed-off-by: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
---
 drivers/char/ipmi/bt-bmc.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index f3c67272502f..486ecc0b6815 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -64,10 +64,9 @@ struct bt_bmc {
 	wait_queue_head_t	queue;
 	struct timer_list	poll_timer;
 	struct mutex		mutex;
+	atomic_t		open_count;
 };
 
-static atomic_t open_count = ATOMIC_INIT(0);
-
 static u8 bt_inb(struct bt_bmc *bt_bmc, int reg)
 {
 	return readb(bt_bmc->base + reg);
@@ -152,12 +151,12 @@ static int bt_bmc_open(struct inode *inode, struct file *file)
 {
 	struct bt_bmc *bt_bmc = file_bt_bmc(file);
 
-	if (atomic_inc_return(&open_count) == 1) {
+	if (atomic_inc_return(&bt_bmc->open_count) == 1) {
 		clr_b_busy(bt_bmc);
 		return 0;
 	}
 
-	atomic_dec(&open_count);
+	atomic_dec(&bt_bmc->open_count);
 	return -EBUSY;
 }
 
@@ -313,7 +312,7 @@ static int bt_bmc_release(struct inode *inode, struct file *file)
 {
 	struct bt_bmc *bt_bmc = file_bt_bmc(file);
 
-	atomic_dec(&open_count);
+	atomic_dec(&bt_bmc->open_count);
 	set_b_busy(bt_bmc);
 	return 0;
 }
@@ -425,6 +424,8 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	if (IS_ERR(bt_bmc->base))
 		return PTR_ERR(bt_bmc->base);
 
+	atomic_set(&bt_bmc->open_count, 0);
+
 	mutex_init(&bt_bmc->mutex);
 	init_waitqueue_head(&bt_bmc->queue);
 

-- 
2.34.1




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
