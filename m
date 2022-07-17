Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 853D0577845
	for <lists+openipmi-developer@lfdr.de>; Sun, 17 Jul 2022 23:07:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oDBUT-0004V4-Fw; Sun, 17 Jul 2022 21:07:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tomer.maimon@nuvoton.com>) id 1oD3Wo-0001af-NA
 for openipmi-developer@lists.sourceforge.net; Sun, 17 Jul 2022 12:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4UC5dQQhRIb6jbfotKVjdQHTwu8UNFSHtEKr/+QxsRc=; b=fNM82ijRfMCS1qTuDWBaLxlLYa
 EGcHVJzO2++Ulrqsb3IAFghG+2d4Q892Aywea5FIj+6evzTDI++O+IUTyPcwSk+zCl+hYxY8QEJ/s
 gkHAsKLOxkGRoXJ6PZfzZrr0J1Mnb6eK5JYC0VPQVfRoYp7TJdbVXRYCb872TAmOs4DU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4UC5dQQhRIb6jbfotKVjdQHTwu8UNFSHtEKr/+QxsRc=; b=hNgTtrSMjQzR/JfrfVb2XKrubj
 TYdZTPuuLfySm8yM8+CEonkfGm9JkILlzXn22TVe9sbjFz9vJACCDAhM3H7DahlgKlpNXX4X2bfnp
 0IzP088pMcHb3UJpUW/5/zI4m3I+eOGvIsJdkeTLNR6+b4CywuQwxCQ4NlLXerXhzJ6Q=;
Received: from maillog.nuvoton.com ([202.39.227.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oD3Wn-001pql-M4
 for openipmi-developer@lists.sourceforge.net; Sun, 17 Jul 2022 12:37:43 +0000
Received: from NTHCCAS01.nuvoton.com (NTHCCAS01.nuvoton.com [10.1.8.28])
 by maillog.nuvoton.com (Postfix) with ESMTP id E3CA51C809A0;
 Sun, 17 Jul 2022 20:11:55 +0800 (CST)
Received: from NTHCCAS03.nuvoton.com (10.1.20.28) by NTHCCAS01.nuvoton.com
 (10.1.8.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Sun, 17 Jul
 2022 20:11:55 +0800
Received: from NTHCCAS04.nuvoton.com (10.1.8.29) by NTHCCAS03.nuvoton.com
 (10.1.20.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1847.3; Sun, 17 Jul
 2022 20:11:55 +0800
Received: from taln60.nuvoton.co.il (10.191.1.180) by NTHCCAS04.nuvoton.com
 (10.1.12.25) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Sun, 17 Jul 2022 20:11:55 +0800
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id 4C13B63A4C; Sun, 17 Jul 2022 15:11:54 +0300 (IDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: <avifishman70@gmail.com>, <tali.perry1@gmail.com>, <joel@jms.id.au>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <jic23@kernel.org>, <minyard@acm.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>
Date: Sun, 17 Jul 2022 15:11:24 +0300
Message-ID: <20220717121124.154734-3-tmaimon77@gmail.com>
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
 Content preview:  Modify NPCM IPMI KCS configuration to support all NPCM BMC
 SoC. Signed-off-by: Tomer Maimon --- drivers/char/ipmi/Kconfig | 6 +++---
 1 file changed, 3 insertions(+),
 3 deletions(-) diff --git a/drivers/char/ipmi/Kconfig
 b/drivers/char/ipmi/Kconfig index b061e6b513ed..39565cf74b2c 100644 ---
 a/drivers/char/ipmi/Kconfig
 +++ b/drivers/char/ipmi/Kconfig @@ -119,13 +119,13 @@ config [...] 
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
X-Headers-End: 1oD3Wn-001pql-M4
X-Mailman-Approved-At: Sun, 17 Jul 2022 21:07:46 +0000
Subject: [Openipmi-developer] [PATCH v1 2/2] char: ipmi: modify NPCM KCS
 configuration
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

Modify NPCM IPMI KCS configuration to support all NPCM BMC SoC.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 drivers/char/ipmi/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index b061e6b513ed..39565cf74b2c 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -119,13 +119,13 @@ config ASPEED_KCS_IPMI_BMC
 	  provides the access of KCS IO space for BMC side.
 
 config NPCM7XX_KCS_IPMI_BMC
-	depends on ARCH_NPCM7XX || COMPILE_TEST
+	depends on ARCH_NPCM || COMPILE_TEST
 	select IPMI_KCS_BMC
 	select REGMAP_MMIO
-	tristate "NPCM7xx KCS IPMI BMC driver"
+	tristate "NPCM KCS IPMI BMC driver"
 	help
 	  Provides a driver for the KCS (Keyboard Controller Style) IPMI
-	  interface found on Nuvoton NPCM7xx SOCs.
+	  interface found on Nuvoton NPCM SOCs.
 
 	  The driver implements the BMC side of the KCS contorller, it
 	  provides the access of KCS IO space for BMC side.
-- 
2.33.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
