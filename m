Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D83CA58C474
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Aug 2022 09:55:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oKxba-0002dH-AH; Mon, 08 Aug 2022 07:55:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tomer.maimon@nuvoton.com>) id 1oKxbY-0002dA-E3
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 07:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tn3EKq2t88yOZ8XZ6UknNJKDrRT3hrXjslwDnsNzbfM=; b=RapTVWTSMmxBDpvx4OiPgylNNR
 fMa8Vfr7jbNektsJCCPEt7TzoHKYbArL3EnwQYWOskpoi14aYWBJafbRBtIXkn5HAexgWxqliW2gx
 y14sSTdI9jgQwJntETE/aA10cuuCg30SVy3FxxTdgTD2msAPCN+gXUZK5ya+PWhcq+qQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tn3EKq2t88yOZ8XZ6UknNJKDrRT3hrXjslwDnsNzbfM=; b=g
 p89qghZ3K7OddYISff03WSUQM9vYDSCG9C3LLJ+2nQWxG5881Qof5ZD11PfCB/7vKryLiy4hhjJ9X
 FpRren+8i8TgkHUWJ7kU7nOLhAw4yN617I8fZMMS7I5bC/P9Q5Rior1MR3CnvP+KeVWY0sicKI1Fj
 WX9pCeoww/xaCyJk=;
Received: from maillog.nuvoton.com ([202.39.227.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oKxbV-007VX4-6u
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Aug 2022 07:55:15 +0000
Received: from NTHCCAS04.nuvoton.com (NTHCCAS04.nuvoton.com [10.1.8.29])
 by maillog.nuvoton.com (Postfix) with ESMTP id 359EC1C811BB;
 Mon,  8 Aug 2022 15:54:56 +0800 (CST)
Received: from NTHCCAS02.nuvoton.com (10.1.9.121) by NTHCCAS04.nuvoton.com
 (10.1.8.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 8 Aug
 2022 15:54:55 +0800
Received: from NTHCCAS04.nuvoton.com (10.1.8.29) by NTHCCAS02.nuvoton.com
 (10.1.9.121) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2176.2; Mon, 8 Aug 2022
 15:54:55 +0800
Received: from taln60.nuvoton.co.il (10.191.1.180) by NTHCCAS04.nuvoton.com
 (10.1.12.25) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 8 Aug 2022 15:54:55 +0800
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id C0EA862EFD; Mon,  8 Aug 2022 10:54:54 +0300 (IDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: <avifishman70@gmail.com>, <tali.perry1@gmail.com>, <joel@jms.id.au>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <jic23@kernel.org>, <minyard@acm.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>
Date: Mon, 8 Aug 2022 10:54:52 +0300
Message-ID: <20220808075452.115907-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 2.7 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add to npcm845 KCS compatible string a fallback to npcm750
 KCS compatible string becuase NPCM845 and NPCM750 BMCs are using identical
 KCS modules. Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
 Signed-off-by: Tomer Maimon ---
 Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
 | 2 +- 1 file changed, 1 insertion(+), 1 [...] 
 Content analysis details:   (2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1oKxbV-007VX4-6u
Subject: [Openipmi-developer] [PATCH v3] dt-binding: ipmi: add fallback to
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
string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.

Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
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
