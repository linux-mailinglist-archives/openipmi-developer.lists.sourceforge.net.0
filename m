Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80360589DF2
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Aug 2022 16:55:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oJcGQ-0001oS-20; Thu, 04 Aug 2022 14:55:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tomer.maimon@nuvoton.com>) id 1oJcGF-0001nd-3Q
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 14:55:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=673hTZc9FXZuLwBzPnfh+kN4jM0hLDKt4i0omZdUKLM=; b=nPwtxyk7Bx8F7MAoq/zWGQAK4p
 x0ekUOdZnDZnOahg2o3Ydkn1YnWej1bdC3YqKhBnBcpGt2MO6ORY+UIrC7mK00LfRcz+MtWTX22vn
 30f8e1HWTyPkXIODsMnnB4eptY+ZSk+pQNLaPIn11T6vUJrhqsXYnBl5ErwaK+h2BXqE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=673hTZc9FXZuLwBzPnfh+kN4jM0hLDKt4i0omZdUKLM=; b=b
 MlTx7BQHR0grMntBQP1KV7bDTjgYdXx5pSmtqluek8EqheaxdR7ick4J8ANZtZ8qrBb2rK4N9tU4l
 qK6AjkCV3vpYDLIJn01DTo5kxt8w8zWzcVyoqS4a+7Vzcxd0KzQF9nj0nwYu9yu9iV455sctRu0tV
 l47qXEiFCNx/0v0E=;
Received: from maillog.nuvoton.com ([202.39.227.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oJcGB-0003Jb-DM
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Aug 2022 14:55:40 +0000
Received: from NTHCCAS04.nuvoton.com (NTHCCAS04.nuvoton.com [10.1.8.29])
 by maillog.nuvoton.com (Postfix) with ESMTP id 95EF91C81131;
 Thu,  4 Aug 2022 22:55:27 +0800 (CST)
Received: from NTHCCAS03.nuvoton.com (10.1.20.28) by NTHCCAS04.nuvoton.com
 (10.1.8.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 4 Aug
 2022 22:55:27 +0800
Received: from NTHCCAS04.nuvoton.com (10.1.8.29) by NTHCCAS03.nuvoton.com
 (10.1.20.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1847.3; Thu, 4 Aug 2022
 22:55:27 +0800
Received: from taln60.nuvoton.co.il (10.191.1.180) by NTHCCAS04.nuvoton.com
 (10.1.12.25) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 4 Aug 2022 22:55:26 +0800
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id 23FBE62EFD; Thu,  4 Aug 2022 17:55:26 +0300 (IDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: <avifishman70@gmail.com>, <tali.perry1@gmail.com>, <joel@jms.id.au>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <jic23@kernel.org>, <minyard@acm.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>
Date: Thu, 4 Aug 2022 17:55:16 +0300
Message-ID: <20220804145516.217482-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 2.7 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add to npcm845 KCS compatible string a fallback to npcm750
 KCS compatible string. Signed-off-by: Tomer Maimon ---
 Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1oJcGB-0003Jb-DM
Subject: [Openipmi-developer] [PATCH v1] dt-binding: ipmi: add fallback to
 npcm845 compatible
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 Tomer Maimon <tmaimon77@gmail.com>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
string.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
index cbc10a68ddef..4fda76e63396 100644
--- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
+++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
@@ -7,7 +7,7 @@ used to perform in-band IPMI communication with their host.
 Required properties:
 - compatible : should be one of
     "nuvoton,npcm750-kcs-bmc"
-    "nuvoton,npcm845-kcs-bmc"
+    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
 - interrupts : interrupt generated by the controller
 - kcs_chan : The KCS channel number in the controller
 
-- 
2.33.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
