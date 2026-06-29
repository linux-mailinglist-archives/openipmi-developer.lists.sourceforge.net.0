Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9FeEGg1cQmqm5QkAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:37 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1D46D9A63
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=csiKM0cA;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=OK9TeUos;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=f5DCcbNV;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b=SSwEZKs8;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3VW3cp8sQmBdBKvJkNBDOC28MlqUiAUMA5DVrxGcXUo=; b=csiKM0cAXX4i1M4oIuNBwESd/s
	tdGZ1W05LvKwgqxOA0RjG+nPgy0NoBjT/+pKLLYg/AzOmG+KlwQX7XdjTP5hyvWxcXvU9IIIy0/Jg
	JgPKaIh0nGSyJ6NR/n94t+XIximegRoKU/aIVDgiO1dbkrxf08cSz1H3Rtb4n86xumQE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1weAVU-0003Db-OR;
	Mon, 29 Jun 2026 11:50:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+yc_hsieh.aspeedtech.com@kernel.org>)
 id 1we5oR-0004FL-FR for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Df9KJQGwN+4BY13mT7BAtNM2SG+EkBQ538Vnt+/tQFY=; b=OK9TeUos/0LpCDsy5ajWFoqEQt
 uM1F9OKDCDiraYC/5lKO4V99ms8quv9EKlyFQ+TcsXOqzSs4WbVh0kkUkr6LamlfZvKADC11EfoV9
 R0yP3DjslKPSwsREAmQE9rqxrMZ6KvSGuhBBTdEHlRj3+tPWrV9p/CzziAu7lJOA9sbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Df9KJQGwN+4BY13mT7BAtNM2SG+EkBQ538Vnt+/tQFY=; b=f5DCcbNV0L4DIWNOnhDMjHezr2
 /0AZ9TwO5Wk1Yb+iu+PoP6zwl427CCYvUQAX5euH+26MllaPE/6+k+o78oxsJGfHkArUhGxNt1zax
 xXQyKeFEoPnoMmEZoRUoSYhq7rx7V6bJnNcu4cBKE2GgSnUQj2CGHhXwbnPTzgntlqRA=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1we5oN-0003Cn-Uu for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3011443D98;
 Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12AC0C4AF0F;
 Mon, 29 Jun 2026 06:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1782715774;
 bh=nBvnhkraAlhGHXXmcPBOJhkaZz0VzUTiD+ls+OA6G2k=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=SSwEZKs83e6+QTrEKzagUVnFW/IOgcDcpy+iaAn1t081H8LzVxAcJzQf35og+tL70
 om6TdRvoHWlIclhSpcSzpW2NmEb2AqkOG+Z8LVYS/pf7FL26td+/RevoGfni8M9Zk+
 SFjmLdCRSonP/rLpeMecLhVDMK9uWgivKQeEKmb/aVe6VcRKg/4VE/62gqBoP102FI
 BM9AOskNHU3MNvLb100K9x5Jju0jQuU9P9dtNryzcziwvh7Rd5cr0pyoCAPmh4tmEC
 7kqIqTsgVheFudAo4TobAubW4RI2qufprx8wJzezum3MB2PyHR1CO+IEhlXYD+Y1DD
 WpoXAV+9Kr7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id F0EA1C44500;
 Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
Date: Mon, 29 Jun 2026 14:49:00 +0800
MIME-Version: 1.0
Message-Id: <20260629-aspeed-bt-bmc-multichannel-v1-3-fc23ee337f7a@aspeedtech.com>
References: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
In-Reply-To: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782715772; l=2189;
 i=yc_hsieh@aspeedtech.com; s=20260629; h=from:subject:message-id;
 bh=z+ycFWmOaDIg3MLyJDHKU8ALQWWy3TelygSh1S01hYI=;
 b=2Z9HfF4G2QEiNPdhd3fE4XoWv99voNdrQ8WCW9S6YS9YMCZkCHI4FWveW74mN6CgGvTdjwiDC
 DSvofFpp5H7Dr21dT5wgMlRNWm301BGtmyyzOF1GLUFzkHN5ot/asz7
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
 Content preview:  From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com> Allocating IO
 and IRQ resources to LPC devices is in-theory an operation for the host,
 however ASPEED systems describe these resources through 
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
X-Headers-End: 1we5oN-0003Cn-Uu
X-Mailman-Approved-At: Mon, 29 Jun 2026 11:50:29 +0000
Subject: [Openipmi-developer] [PATCH 3/4] dt-bindings: ipmi: Add optional
 LPC properties to ASPEED BT devices
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
X-Rspamd-Queue-Id: EA1D46D9A63

From: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>

Allocating IO and IRQ resources to LPC devices is in-theory an operation

for the host, however ASPEED systems describe these resources through

BMC-internal configuration, as already supported by the ASPEED KCS BMC

binding.

Add aspeed,lpc-io-reg and aspeed,lpc-interrupts to the ASPEED BT BMC

binding so firmware can describe the host LPC IO address and SerIRQ

configuration using the same properties as KCS devices.

Signed-off-by: Yu-Che Hsieh <yc_hsieh@aspeedtech.com>
---
 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml       | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
index c4f7cdbbe16b..1803c6bbae93 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
@@ -25,6 +25,24 @@ properties:
   interrupts:
     maxItems: 1
 
+  aspeed,lpc-io-reg:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    maxItems: 1
+    description: |
+      The host CPU LPC IO address for the BT device.
+
+  aspeed,lpc-interrupts:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 2
+    maxItems: 2
+    description: |
+      A 2-cell property expressing the LPC SerIRQ number and the interrupt
+      level/sense encoding (specified in the standard fashion).
+
+      Note that the generated interrupt is issued from the BMC to the host, and
+      thus the target interrupt controller is not captured by the BMC's
+      devicetree.
+
 required:
   - compatible
   - reg
@@ -35,10 +53,13 @@ additionalProperties: false
 examples:
   - |
     #include <dt-bindings/clock/aspeed-clock.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
 
     bt@1e789140 {
         compatible = "aspeed,ast2400-ibt-bmc";
         reg = <0x1e789140 0x18>;
         interrupts = <8>;
         clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
+        aspeed,lpc-io-reg = <0xe4>;
+        aspeed,lpc-interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
     };

-- 
2.34.1




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
