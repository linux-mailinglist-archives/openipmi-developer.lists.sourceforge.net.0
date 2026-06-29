Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TVdeEw1cQmqf5QkAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:37 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EF26D9A5F
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=i1DgEquS;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b="U/+067LJ";
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=ILXFavEL;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b=qAJxWiPV;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uxbNAyPPXIKr9orNp7tqJUtiQPYZbu96h+uZuzTtIzQ=; b=i1DgEquSzxUQg7IcorMtyM1pVW
	jdBDj7+kN8mx7L4z97Hx+HDin4SGJYrLh6vbR2cZe1ioL+eLrrjpCkKdFZgNbmGfew8/BvGeLVI3J
	Ea86lpjms/nUV/0KYztFjXXRNsDYdoHBM0ad9yCVkCKAKAFt7tPUIme/0I/679JvYsts=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1weAVT-0003Cm-Cq;
	Mon, 29 Jun 2026 11:50:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+yc_hsieh.aspeedtech.com@kernel.org>)
 id 1we5oK-0004EK-59 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Brem5F6jsxIN6etVsDIuamNk9v7c1ikSU0zYL3gtl7k=; b=U/+067LJpcxx7cTBssLR4PcUNP
 A06+5qnxcEl/kOWYzJuNS0aXoEuHMjXPJ5dUU4Tj5OlbBd1Hul5boON/PhBgOEyWX1e2m/s9m9NsA
 e0W6o+HY3oCx5UyiI5JS/U5t1U8Nzw6juavZYOEusLhG0xvN4+9HD6xcW1/hE5zH2zbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Brem5F6jsxIN6etVsDIuamNk9v7c1ikSU0zYL3gtl7k=; b=ILXFavELof2GIHYyZ4WVGlz6NZ
 wAk3mws9X6C/jMuBiM/J0eEh8bejJkaUHl5742kyuJ6y3qXJkqBIiwGbYoeCanW/D/piXrRGUz0G8
 Jt+mvMGkNel1aq8RUihj0ViKZBfebXkush4nmk2k+7Vv5fn3QbG9IOD2l5Ik79mThj9g=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1we5oI-0003CI-Sj for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1A84F43D71;
 Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60A0C2BCF4;
 Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1782715774;
 bh=FDwiNnQBBCZ/QNpWwqyHzdSkJIqsF5fGdO+P3uhJhds=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=qAJxWiPVg6528Lhg4/0l0Av5OZ8Gz+nivKx5XllbrCQ8K3951ahAjQKIrxZ2w9+US
 9KEMeSuKAenLBKu6fD+biwpbGu1Y/yNNIUAe82HYmpVnSCeoApmJ8soBTa5Vh9FXem
 maezA0zXrkmlJe/AsUXsT0ahXmv1XyunYhe1azV/6ad4TRjpakhJ5HxIpaTmuXdxtJ
 ktsBMxHYjM3ZeWd8v0OnF59BtCrlYrBx9RO5RNEtiqFvXUwectd/Ul7hXr/QTqOWd7
 dyjt8rqACywE5z5NgwtIe040NB1R5SGRHs7dlaFp1Nv3hFWOoXxJdjFx2JBsGvFA1b
 pRnCuF+2do9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id CDDDCC43638;
 Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
Date: Mon, 29 Jun 2026 14:48:58 +0800
MIME-Version: 1.0
Message-Id: <20260629-aspeed-bt-bmc-multichannel-v1-1-fc23ee337f7a@aspeedtech.com>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
In-Reply-To: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782715772; l=3925;
 i=yc_hsieh@aspeedtech.com; s=20260629; h=from:subject:message-id;
 bh=HQw8rGJUsM6loLGP55U5cgMUUCPUOKcrGTqHI8TGeyw=;
 b=Mg57Y/Vn2ocHuNlZAZqksIQ0vRHfMU0JKXY0uL/knqv7c4ICD8NzGXdCdiFClN9xhS/Yheusc
 B5G083PbCmYD71NYrV8XV1FsDJV8yyawcP2dzWurZPGlGsjI8mi6jI7
X-Developer-Key: i=yc_hsieh@aspeedtech.com; a=ed25519;
 pk=kLxUeF7g6teciq79it9N3tYNgp3yCspZ+AHlYSnZ0gs=
X-Endpoint-Received: by B4 Relay for yc_hsieh@aspeedtech.com/20260629 with
 auth_id=844
X-Original-From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com> Use BIT(),
 GENMASK(), 
 and FIELD_PREP() for the BT register definitions and register field
 programming.
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1we5oI-0003CI-Sj
X-Mailman-Approved-At: Mon, 29 Jun 2026 11:50:29 +0000
Subject: [Openipmi-developer] [PATCH 1/4] ipmi: bt-bmc: Use bitfield helpers
 for register definitions
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
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devnull+yc_hsieh.aspeedtech.com@kernel.org,m:devicetree@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:yc_hsieh@aspeedtech.com,m:openipmi-developer@lists.sourceforge.net,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:devnull@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 88EF26D9A5F

From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>

Use BIT(), GENMASK(), and FIELD_PREP() for the BT register definitions

and register field programming.

This makes the register layout easier to read and prepares the driver

for later changes that need to program the BT_CR0 fields from device

configuration.

Signed-off-by: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
---
 drivers/char/ipmi/bt-bmc.c | 72 ++++++++++++++++++++++++----------------------
 1 file changed, 37 insertions(+), 35 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index a179d4797011..f3c67272502f 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -15,6 +15,7 @@
 #include <linux/poll.h>
 #include <linux/sched.h>
 #include <linux/timer.h>
+#include <linux/bitfield.h>
 
 /*
  * This is a BMC device used to communicate to the host
@@ -24,33 +25,34 @@
 #define BT_IO_BASE	0xe4
 #define BT_IRQ		10
 
-#define BT_CR0		0x0
-#define   BT_CR0_IO_BASE		16
-#define   BT_CR0_IRQ			12
-#define   BT_CR0_EN_CLR_SLV_RDP		0x8
-#define   BT_CR0_EN_CLR_SLV_WRP		0x4
-#define   BT_CR0_ENABLE_IBT		0x1
-#define BT_CR1		0x4
-#define   BT_CR1_IRQ_H2B	0x01
-#define   BT_CR1_IRQ_HBUSY	0x40
-#define BT_CR2		0x8
-#define   BT_CR2_IRQ_H2B	0x01
-#define   BT_CR2_IRQ_HBUSY	0x40
-#define BT_CR3		0xc
-#define BT_CTRL		0x10
-#define   BT_CTRL_B_BUSY		0x80
-#define   BT_CTRL_H_BUSY		0x40
-#define   BT_CTRL_OEM0			0x20
-#define   BT_CTRL_SMS_ATN		0x10
-#define   BT_CTRL_B2H_ATN		0x08
-#define   BT_CTRL_H2B_ATN		0x04
-#define   BT_CTRL_CLR_RD_PTR		0x02
-#define   BT_CTRL_CLR_WR_PTR		0x01
-#define BT_BMC2HOST	0x14
-#define BT_INTMASK	0x18
-#define   BT_INTMASK_B2H_IRQEN		0x01
-#define   BT_INTMASK_B2H_IRQ		0x02
-#define   BT_INTMASK_BMC_HWRST		0x80
+#define BT_CR0			0x0
+#define   BT_CR0_IO_BASE	GENMASK(31, 16)
+#define   BT_CR0_SIRQ		GENMASK(15, 12)
+#define   BT_CR0_SIRQ_TYPE	GENMASK(11, 10)
+#define   BT_CR0_EN_CLR_SLV_RDP	BIT(3)
+#define   BT_CR0_EN_CLR_SLV_WRP	BIT(2)
+#define   BT_CR0_ENABLE_IBT	BIT(0)
+#define BT_CR1			0x4
+#define   BT_CR1_IRQ_EN_HBUSY	BIT(6)
+#define   BT_CR1_IRQ_EN_H2B	BIT(0)
+#define BT_CR2			0x8
+#define   BT_CR2_IRQ_STS_HBUSY	BIT(6)
+#define   BT_CR2_IRQ_STS_H2B	BIT(0)
+#define BT_CR3			0xc
+#define BT_CTRL			0x10
+#define   BT_CTRL_B_BUSY	BIT(7)
+#define   BT_CTRL_H_BUSY	BIT(6)
+#define   BT_CTRL_OEM0		BIT(5)
+#define   BT_CTRL_SMS_ATN	BIT(4)
+#define   BT_CTRL_B2H_ATN	BIT(3)
+#define   BT_CTRL_H2B_ATN	BIT(2)
+#define   BT_CTRL_CLR_RD_PTR	BIT(1)
+#define   BT_CTRL_CLR_WR_PTR	BIT(0)
+#define BT_BMC2HOST		0x14
+#define BT_INTMASK		0x18
+#define   BT_INTMASK_BMC_HWRST	BIT(7)
+#define   BT_INTMASK_B2H_IRQ	BIT(1)
+#define   BT_INTMASK_B2H_IRQEN	BIT(0)
 
 #define BT_BMC_BUFFER_SIZE 256
 
@@ -361,7 +363,7 @@ static irqreturn_t bt_bmc_irq(int irq, void *arg)
 
 	reg = readl(bt_bmc->base + BT_CR2);
 
-	reg &= BT_CR2_IRQ_H2B | BT_CR2_IRQ_HBUSY;
+	reg &= BT_CR2_IRQ_STS_H2B | BT_CR2_IRQ_STS_HBUSY;
 	if (!reg)
 		return IRQ_NONE;
 
@@ -398,7 +400,7 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
 	 * message to the BT buffer
 	 */
 	reg = readl(bt_bmc->base + BT_CR1);
-	reg |= BT_CR1_IRQ_H2B | BT_CR1_IRQ_HBUSY;
+	reg |= BT_CR1_IRQ_EN_H2B | BT_CR1_IRQ_EN_HBUSY;
 	writel(reg, bt_bmc->base + BT_CR1);
 
 	return 0;
@@ -447,12 +449,12 @@ static int bt_bmc_probe(struct platform_device *pdev)
 		add_timer(&bt_bmc->poll_timer);
 	}
 
-	writel((BT_IO_BASE << BT_CR0_IO_BASE) |
-		     (BT_IRQ << BT_CR0_IRQ) |
-		     BT_CR0_EN_CLR_SLV_RDP |
-		     BT_CR0_EN_CLR_SLV_WRP |
-		     BT_CR0_ENABLE_IBT,
-		bt_bmc->base + BT_CR0);
+	writel(FIELD_PREP(BT_CR0_IO_BASE, BT_IO_BASE) |
+	       FIELD_PREP(BT_CR0_SIRQ, BT_IRQ) |
+	       BT_CR0_EN_CLR_SLV_RDP |
+	       BT_CR0_EN_CLR_SLV_WRP |
+	       BT_CR0_ENABLE_IBT,
+	       bt_bmc->base + BT_CR0);
 
 	clr_b_busy(bt_bmc);
 

-- 
2.34.1




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
