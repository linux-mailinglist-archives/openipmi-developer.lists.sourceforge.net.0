Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nIczFg1cQmqj5QkAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:37 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8C86D9A61
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=Ez0w2gUG;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=WJj+1u99;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=WEQr5z3A;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b="HgMltV/i";
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=074y8soIimMoz395nSI1sIGQ60CDhq0NEeJs91GS/h8=; b=Ez0w2gUGbNSHt8ewwDHBF+/c83
	zKZramKtWgIg28VdcfIhanDVT9EO2x1EhCtOCpG2HFWJg4/QclA8N2mVBrvO/Do9giUknOzTsHpSY
	oELYuutdq8y7rE4X2EDQFdiT4NeLycNoCBeV35bPjBzQEJOiDFXCByF3xnqrxlaxPRAU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1weAVT-0003Cw-NY;
	Mon, 29 Jun 2026 11:50:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+yc_hsieh.aspeedtech.com@kernel.org>)
 id 1we5oN-0003P1-A1 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eDudAM8QJ8mlGZ+xLz/u0jrk7EBH14j1ZjojnoRSWmw=; b=WJj+1u99XKplusfbT0fvwLRR+V
 B1nVKTmhdtB89UPIoT4PdZVsbrWKxdbvjudoz22J0BDOYRnUiyFAkZHMVAtUqiUb7mfJvGdTzj+oD
 vrygqG86paiBndN45XhDig9kKPN0SF/9FFbAE1rVrIC+7qpo0uxfiFia8befEsfHdBbI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eDudAM8QJ8mlGZ+xLz/u0jrk7EBH14j1ZjojnoRSWmw=; b=WEQr5z3AVr5nR5BwAAZU43bvFa
 yLzA7dJt1DcpSs16mchasaMOuzm9Bj65M9y69yAP0xFZr+3laP+5g7c6Wl4poUmo1rkuMaa2C+DPv
 e4++hq0HNQpJwZc8rO/9yMZNUR0pQ0txG6NidxCvXhj31fOIwl/MKZ260B1oMr8DNP2o=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1we5oJ-0003CK-59 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3782F43DA3;
 Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A16BC2BCF7;
 Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1782715774;
 bh=0gtJ2jkDHDroFd/tvTFdjs9XdlK02tL9fNLXJCMYb4c=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=HgMltV/iuPgeub48WZJi5UNGtHADF4P3curFF4GXLEnc5pjZNPEZz+2Epjdt1r+7L
 qelftI3L2Khr/t3/49q9vmjRKEsYoFUWfN0BL6fK7xtDnt7jicE2eVjaQcU6wt9mFi
 QynK3Z4NxV33wPDBA6V3PP2AIBCZg9cjIRz7zeENmfNTn6BScbTgNsLwoBbmAXfRHy
 VBffFYCZiLixphDj2UQxzg8tXonddTlOLIGTxDU/s3o+Wq90vvdyJ6vmh+w7HnhnRd
 2NVFPBb4kf47+mAVxCgEDHfQh4rnMjmUE9U9hmTCZ66r6DLWW90tdfFNoEB/kMv27E
 CpC17bZKKRu6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 12488C43327;
 Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
Date: Mon, 29 Jun 2026 14:49:01 +0800
MIME-Version: 1.0
Message-Id: <20260629-aspeed-bt-bmc-multichannel-v1-4-fc23ee337f7a@aspeedtech.com>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
In-Reply-To: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782715772; l=2682;
 i=yc_hsieh@aspeedtech.com; s=20260629; h=from:subject:message-id;
 bh=EF1+2Ti2wuA06NwsW+QoJlNDr5W2qvG2AEgoxOs4li0=;
 b=D8mUNlVKBhK5Gu/mgQ8KRyUEN1CNPv03ZJ5EwBjb30X1V0G4Oa8eeCxz2irvaf9+E10wC+2xk
 NlEhO1Jg+MeC2Jw2RoKwDKxh0eDBGNOXrLMxbmHqBpwqDkiyalK4VAY
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
 Content preview: From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com> The BT interface
 currently programs a fixed host LPC IO address and SerIRQ number. This works
 for the existing single-channel setup, but 
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
X-Headers-End: 1we5oJ-0003CK-59
X-Mailman-Approved-At: Mon, 29 Jun 2026 11:50:29 +0000
Subject: [Openipmi-developer] [PATCH 4/4] ipmi: bt-bmc: Read LPC address and
 SerIRQ from device tree
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
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
X-Rspamd-Queue-Id: 9F8C86D9A61

From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>

The BT interface currently programs a fixed host LPC IO address and

SerIRQ number. This works for the existing single-channel setup, but

does not allow the host interface parameters to be described by firmware.

Read the LPC IO address from aspeed,lpc-io-reg and the SerIRQ number

and interrupt type from aspeed,lpc-interrupts. Keep the existing IO

address, SerIRQ number, and level-low interrupt type as defaults when

the properties are not present.

Signed-off-by: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
---
 drivers/char/ipmi/bt-bmc.c | 39 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 37 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index 486ecc0b6815..6e1f941e63db 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -65,6 +65,12 @@ struct bt_bmc {
 	struct timer_list	poll_timer;
 	struct mutex		mutex;
 	atomic_t		open_count;
+	u32			io_addr;
+
+	struct {
+		u32 id;
+		u32 type;
+	} sirq;
 };
 
 static u8 bt_inb(struct bt_bmc *bt_bmc, int reg)
@@ -429,6 +435,33 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	mutex_init(&bt_bmc->mutex);
 	init_waitqueue_head(&bt_bmc->queue);
 
+	rc = of_property_read_u32(dev->of_node, "aspeed,lpc-io-reg",
+				  &bt_bmc->io_addr);
+	if (rc) {
+		bt_bmc->io_addr = BT_IO_BASE;
+	} else if (bt_bmc->io_addr > FIELD_MAX(BT_CR0_IO_BASE)) {
+		dev_err(dev, "invalid LPC IO address\n");
+		return -EINVAL;
+	}
+
+	rc = of_property_read_u32_array(dev->of_node, "aspeed,lpc-interrupts",
+					(u32 *)&bt_bmc->sirq, 2);
+	if (rc) {
+		bt_bmc->sirq.id = BT_IRQ;
+		bt_bmc->sirq.type = IRQ_TYPE_LEVEL_LOW;
+	} else {
+		if (bt_bmc->sirq.id > FIELD_MAX(BT_CR0_SIRQ)) {
+			dev_err(dev, "invalid SerIRQ number\n");
+			return -EINVAL;
+		}
+
+		if (bt_bmc->sirq.type != IRQ_TYPE_LEVEL_HIGH &&
+		    bt_bmc->sirq.type != IRQ_TYPE_LEVEL_LOW) {
+			dev_err(dev, "invalid SerIRQ type\n");
+			return -EINVAL;
+		}
+	}
+
 	bt_bmc->miscdev.minor	= MISC_DYNAMIC_MINOR;
 	bt_bmc->miscdev.name	= DEVICE_NAME;
 	bt_bmc->miscdev.fops	= &bt_bmc_fops;
@@ -450,8 +483,10 @@ static int bt_bmc_probe(struct platform_device *pdev)
 		add_timer(&bt_bmc->poll_timer);
 	}
 
-	writel(FIELD_PREP(BT_CR0_IO_BASE, BT_IO_BASE) |
-	       FIELD_PREP(BT_CR0_SIRQ, BT_IRQ) |
+	writel(FIELD_PREP(BT_CR0_IO_BASE, bt_bmc->io_addr) |
+	       FIELD_PREP(BT_CR0_SIRQ, bt_bmc->sirq.id) |
+	       FIELD_PREP(BT_CR0_SIRQ_TYPE,
+			  bt_bmc->sirq.type == IRQ_TYPE_LEVEL_LOW ? 0 : 1) |
 	       BT_CR0_EN_CLR_SLV_RDP |
 	       BT_CR0_EN_CLR_SLV_WRP |
 	       BT_CR0_ENABLE_IBT,

-- 
2.34.1




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
