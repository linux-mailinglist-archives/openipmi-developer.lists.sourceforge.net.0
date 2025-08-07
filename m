Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE286B1D90F
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Aug 2025 15:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W1CmrBN7htayPp0QFO605JLnPevYQ/vbipHCYCvNwaE=; b=cl13+MRlB487Dxm2REcAcBxgx2
	lDb0SdyYmIvdP884QzTsticRaNl8+Ss2LbZCoA0BkpElQZZgOlqbWOrP4Y5RLJNODBRWmQUR3Mu/m
	48El48vT/zU4SF37LeNwdfcGetysurjoMCJ94WFs6xzXfZRlvlMFVtAt0BhOA9INgNOM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uk0gD-0002Qu-QY;
	Thu, 07 Aug 2025 13:29:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1uk0gC-0002Qo-Kv
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 13:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mWJZVh45JxWEpjMzzyOEhDUy8kia50rucaLKoGuxy+8=; b=frBtaat+vmnUVUq11cZdi1SBVG
 rDGglJjOdltzs2UT+Ej/SRp/qLIEWBT/g4FiMFsCHxphFe36cbILE/pM4d7deOqiK4yE+F+L+sbbA
 azaZm9S7ZwokoSePTZzrxno+NLlX5MPnXuc9LTX+fCEjkfzD0qcIibeXenMR4s97jcEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mWJZVh45JxWEpjMzzyOEhDUy8kia50rucaLKoGuxy+8=; b=e
 ezI0JMrL3Iuq5wbNnK2oi4CAbrHgPgYLHbIfX6yhTAnbzRTtN+1zDD3gfPsner6jQhhnSMbpW//rU
 E4fqQQiu/DgTT3HK7d5eOB1oKOmeclYD19pZHrPm6X+CTTlxKUnM6DnYVELShK/ZKZv1v2oZ0XbSy
 pcTm3a7ava53/wfs=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uk0gC-0003eM-AU for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 13:29:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EC0275C5E69;
 Thu,  7 Aug 2025 13:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72BCCC4CEEB;
 Thu,  7 Aug 2025 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754573346;
 bh=1VQ4CEYYvmVtvSuzcssa91RQvPgNCUSDeA69SoGr7Ds=;
 h=From:To:Cc:Subject:Date:From;
 b=Wl8h/3jSD4YRguyd//yDPsjdV6kNSuDDUKJ5SfvtAJWCBJhkiE4QSNjMLu0MnWC1y
 vMv4m852bgEVvnxbYtV2fLcZwEZB1pardhns//wJcH6XgzgCo/Ii0aVcQmQXpYnFzM
 vQxVaZU3fbt/hY1p8+lm4KYYBgvcuL1SJkF2ohQhH7tcMYP90pnv/Hv3EyWIXILp+i
 NgzbkISs+NzJ75baFVEHXjRzeDJVQtrQjzP4OpMG9NrWq6fCxDMjoFTRE/wKwEUfjQ
 hbH2B8klSdMxyBsIx5oQ4p5f1th1cbJqjs7bykynKcBt2Op9EOzcfhyAjm14Q7DwvN
 jq9+oS/MStvEA==
To: Corey Minyard <corey@minyard.net>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>
Date: Thu,  7 Aug 2025 08:28:51 -0500
Message-ID: <20250807132852.3291305-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The ASpeed kcs-bmc nodes have a "clocks" property which isn't
 documented. It looks like all the LPC child devices have the same clock source
 and some of the drivers manage their clock. Perhaps it is t [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uk0gC-0003eM-AU
Subject: [Openipmi-developer] [PATCH] dt-bindings: ipmi: aspeed,
 ast2400-kcs-bmc: Add missing "clocks" property
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
From: "Rob Herring \(Arm\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rob Herring \(Arm\)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The ASpeed kcs-bmc nodes have a "clocks" property which isn't
documented. It looks like all the LPC child devices have the same clock
source and some of the drivers manage their clock. Perhaps it is the
parent device that should have the clock, but it's too late for that.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
index 129e32c4c774..610c79863208 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
@@ -40,6 +40,9 @@ properties:
       - description: ODR register
       - description: STR register
 
+  clocks:
+    maxItems: 1
+
   aspeed,lpc-io-reg:
     $ref: /schemas/types.yaml#/definitions/uint32-array
     minItems: 1
-- 
2.47.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
