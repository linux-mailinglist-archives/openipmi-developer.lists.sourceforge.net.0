Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 740F5577843
	for <lists+openipmi-developer@lfdr.de>; Sun, 17 Jul 2022 23:07:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oDBUT-0004VA-L4; Sun, 17 Jul 2022 21:07:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tomer.maimon@nuvoton.com>) id 1oD3Wp-0001al-40
 for openipmi-developer@lists.sourceforge.net; Sun, 17 Jul 2022 12:37:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UUpxuUTWk6qYnENZzPc+qbO/Gal9X17hx9CCAxpnHRQ=; b=KCp4IowWCpYgqukESkUMy7ipCc
 ccQopx+9wDt4a58XxK7nVIvE3hg5Ul+BdXo6zUrTN1y2A9EyxzVirKBR8pvsfyTHkm3/adE1w+LzR
 h2Kwe+xKqh5AsZ7ZcflfHPareNqDGzzA9mOvzslyl15l8l81uz7g6wtHABezUgEXjYv0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UUpxuUTWk6qYnENZzPc+qbO/Gal9X17hx9CCAxpnHRQ=; b=nDjbI8+JBweD4m25K4h3tBhp19
 ApE3m9/aQmDGnq23tZ3tdvoLPhEZnMFqTRY75hzL+3enZmgd6eBVWi5F3gJ0Mo7/XcqdBkAYL2ZpW
 ioZy4P42ZiiySolX23PvrQLKfE/7lhMeVbFh+gwX8xiYGdHHcyYRCDHNfX8oMx+NzfRw=;
Received: from maillog.nuvoton.com ([202.39.227.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oD3Wn-0001iw-Ox
 for openipmi-developer@lists.sourceforge.net; Sun, 17 Jul 2022 12:37:43 +0000
Received: from NTHCCAS01.nuvoton.com (NTHCCAS01.nuvoton.com [10.1.8.28])
 by maillog.nuvoton.com (Postfix) with ESMTP id 5F5C81C80347;
 Sun, 17 Jul 2022 20:11:55 +0800 (CST)
Received: from NTHCCAS04.nuvoton.com (10.1.8.29) by NTHCCAS01.nuvoton.com
 (10.1.8.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.7; Sun, 17 Jul
 2022 20:11:55 +0800
Received: from taln60.nuvoton.co.il (10.191.1.180) by NTHCCAS04.nuvoton.com
 (10.1.12.25) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Sun, 17 Jul 2022 20:11:54 +0800
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id EE34063A23; Sun, 17 Jul 2022 15:11:52 +0300 (IDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: <avifishman70@gmail.com>, <tali.perry1@gmail.com>, <joel@jms.id.au>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <jic23@kernel.org>, <minyard@acm.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>
Date: Sun, 17 Jul 2022 15:11:23 +0300
Message-ID: <20220717121124.154734-2-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220717121124.154734-1-tmaimon77@gmail.com>
References: <20220717121124.154734-1-tmaimon77@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 2.7 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add a compatible string for Nuvoton BMC NPCM845 KCS and
 modify
 NPCM KCS description to support all NPCM BMC SoC. Signed-off-by: Tomer Maimon
 --- Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-) 
 Content analysis details:   (2.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
X-Headers-End: 1oD3Wn-0001iw-Ox
X-Mailman-Approved-At: Sun, 17 Jul 2022 21:07:46 +0000
Subject: [Openipmi-developer] [PATCH v1 1/2] dt-bindings: ipmi: Add npcm845
 compatible
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

Add a compatible string for Nuvoton BMC NPCM845 KCS and modify NPCM KCS
description to support all NPCM BMC SoC.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
index 352f5e9c759b..cbc10a68ddef 100644
--- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
+++ b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
@@ -1,12 +1,13 @@
-* Nuvoton NPCM7xx KCS (Keyboard Controller Style) IPMI interface
+* Nuvoton NPCM KCS (Keyboard Controller Style) IPMI interface
 
-The Nuvoton SOCs (NPCM7xx) are commonly used as BMCs
+The Nuvoton SOCs (NPCM) are commonly used as BMCs
 (Baseboard Management Controllers) and the KCS interface can be
 used to perform in-band IPMI communication with their host.
 
 Required properties:
 - compatible : should be one of
     "nuvoton,npcm750-kcs-bmc"
+    "nuvoton,npcm845-kcs-bmc"
 - interrupts : interrupt generated by the controller
 - kcs_chan : The KCS channel number in the controller
 
-- 
2.33.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
