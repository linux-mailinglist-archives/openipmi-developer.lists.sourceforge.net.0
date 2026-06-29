Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QpJwFA1cQmqh5QkAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:37 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 997776D9A60
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Jun 2026 13:50:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=kr3wZ4Jo;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=WQUbVymr;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=b1Tqa6v0;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b=KJtjbnW1;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:MIME-Version:Message-Id:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KvPdP+EwlyyMk1geVrlDoOrRPmH8XxCWDCIxSYmcIDI=; b=kr3wZ4Jo/ypuG8EM5XLEZjOWHM
	bD3aPHVCq3H7ZoIZtAK5raJKRrpjn1jli60g+kcO0FrhtNBC7glUvuRTysFuLEfXI3HDjRDUXmLwA
	ZirjuJj3rNtF58fxvh9wP+e8LQ7szExDInRahZLb7qWYL3SjA7pupKaHFVv9fGMHmzWE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1weAVU-0003D4-2y;
	Mon, 29 Jun 2026 11:50:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+yc_hsieh.aspeedtech.com@kernel.org>)
 id 1we5oO-0008Jc-Pz for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=elnn7JUGC5l+jKw9U2Iosas8+d3MHu6QPBJwE1B2V50=; b=WQUbVymrrtT1+UbTcgidJhMU4G
 CdMKm1ZwMBiujixojgSEPzyDu/SVogAchxNkEr9vdD1BrWg0IvsQIRU1cxpAs2Ie9zzUrvPrlMBEL
 6vcBiwTGeaFxIJP3CcMukOHF7TW+6c8ob0r/DyIZq9y98RYCBSkPMXaT/CkJStaEyOnY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Reply-To:Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-Id:Date:Subject:From:Sender:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=elnn7JUGC5l+jKw9U2Iosas8+d3MHu6QPBJwE1B2V50=; b=b1Tqa6v0nYv6Ym+c3QxZNbknyJ
 NV5JWjjRql9JvxHrknTaidSv3G2T/iTkrtjjLg044eUCD+CPmU6f5cBsk2FMfNwUkq15nmxr/H9EE
 DnS0vqys7+iAClcmYO2C5Ggkjzo0sueRGoUjVG2Q8lmvaVYAS++6HqStcFBzsKsNKoHU=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1we5oN-0003Cm-R3 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Jun 2026 06:49:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id EFEAF43B03;
 Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72D9C19425;
 Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1782715773;
 bh=uq6YWgDsWWGXAC45T6w2Ey4osYNKqHhIwFzNycMRum0=;
 h=From:Subject:Date:To:Cc:Reply-To:From;
 b=KJtjbnW1/mqKsn403xVrjfNllzjp/b4KZ0ab99n/OwnpfS7xL3m8NLEypUizpITYe
 d5Wi+eSF/E1L/X+8EQbNUuowHU25QdOzrPVfJzDbJqqHnayE8RQNg+NiVOaqQEXgw5
 lqKG1rKaujmOxgeuKulxFFzpZGa3p3f2mo0ccQOKOkAchx9t0XTWDznUQJ7V+HJiK6
 OKezfWYasXnMr/I2JULjMY8T2erEpk4m/csazqMENxhBparDm86LY/5qE1kxT8562/
 zixx8yNtgdmcMfdurTGAzi22dMS6nKcnRTBDug9zQtOzBbq+x/nm3THQqHpYGOlT5y
 agRvKEsmdvGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id BCD8FC43327;
 Mon, 29 Jun 2026 06:49:33 +0000 (UTC)
Date: Mon, 29 Jun 2026 14:48:57 +0800
Message-Id: <20260629-aspeed-bt-bmc-multichannel-v1-0-fc23ee337f7a@aspeedtech.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFkVQmoC/x3MQQqAIBBA0avErBswsYKuEi3UxhooC60IpLtnL
 R98foJIgSlCVyQIdHHkzWdUZQF21n4i5DEbpJCNaGSNOu5EI5oDzWpxPZeDv9DTgkYpXQnnlGg
 t5MEeyPH9z/vheV7fNbWobAAAAA==
X-Change-ID: 20260625-aspeed-bt-bmc-multichannel-b44a10ff407c
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782715772; l=1578;
 i=yc_hsieh@aspeedtech.com; s=20260629; h=from:subject:message-id;
 bh=uq6YWgDsWWGXAC45T6w2Ey4osYNKqHhIwFzNycMRum0=;
 b=z0YtNlAtfb9bWuZnl+4DCd9uwBOGfUQn+aP+5ndB2O/l5fbsR+oL9XsClEErI4e3dyIgUSw3j
 dcqDi7YaxAXAgEuiRYiZKpRdhR3OWwyOGVjBozc1R3XAZPoZjC4B4Wp
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
 Content preview:  The Aspeed BT BMC driver currently programs a fixed LPC IO
 address and SerIRQ value for the host-facing BT interface. That matches the
 original single-interface setup, but newer systems may need the host interface
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
X-Headers-End: 1we5oN-0003Cm-R3
X-Mailman-Approved-At: Mon, 29 Jun 2026 11:50:29 +0000
Subject: [Openipmi-developer] [PATCH 0/4] ipmi: bt-bmc: Add configurable LPC
 host interface
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
X-Rspamd-Queue-Id: 997776D9A60

The Aspeed BT BMC driver currently programs a fixed LPC IO address and

SerIRQ value for the host-facing BT interface. That matches the original

single-interface setup, but newer systems may need the host interface

parameters to be described by firmware.

The Aspeed KCS BMC and VUART bindings already use aspeed,lpc-io-reg and

aspeed,lpc-interrupts for this purpose. Reuse the same properties for

the BT BMC binding and teach the driver to consume them while preserving

the existing default LPC IO address and level-low SerIRQ configuration

when the properties are absent.

The first two patches are small preparation patches. The register

definitions are converted to bitfield helpers so BT_CR0 fields can be

programmed by name, and the open state is moved from a global variable

to the device instance so multiple BT devices are not blocked by a

single shared open count.

---
Yu-Che Hsieh (4):
      ipmi: bt-bmc: Use bitfield helpers for register definitions
      ipmi: bt-bmc: Track open state per device
      dt-bindings: ipmi: Add optional LPC properties to ASPEED BT devices
      ipmi: bt-bmc: Read LPC address and SerIRQ from device tree

 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml      |  21 ++++
 drivers/char/ipmi/bt-bmc.c                         | 118 ++++++++++++++-------
 2 files changed, 99 insertions(+), 40 deletions(-)
---
base-commit: 493181e2f2f1bdfd4f09a988008653ae73b30688
change-id: 20260625-aspeed-bt-bmc-multichannel-b44a10ff407c

Best regards,
-- 
Yu-Che Hsieh <yc_hsieh@aspeedtech.com>




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
