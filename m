Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 816C1577844
	for <lists+openipmi-developer@lfdr.de>; Sun, 17 Jul 2022 23:07:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oDBUT-0004Uy-AN; Sun, 17 Jul 2022 21:07:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tomer.maimon@nuvoton.com>) id 1oD3Wp-00078u-JJ
 for openipmi-developer@lists.sourceforge.net; Sun, 17 Jul 2022 12:37:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uRh/W5JYdoL45Jo4R60J1ltVkXLuIie/PXSIXUd95rg=; b=W+kAdI/SZuTej94J1BoAFsgF9C
 tM75xVF6ZvG+JLutAzic3wggbI7/rmPMm9hBTjeqW1UDrsvT34GgfzfJsP8rYaLuI9oqZ1O+98uc1
 h26nKE83j5yuDSpqREagtDD0PCiv4jUyFerhq7J7QnYCmtgQc6HHYqRmkQWG1MzJxJU0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uRh/W5JYdoL45Jo4R60J1ltVkXLuIie/PXSIXUd95rg=; b=H
 fl6Cc9FmvsEQsE+WuywY7oYpADh60UOI04K5Y48DR0aB424r4UtVKL7ou6hJUa37uIdphDjKUFWHQ
 Wr2vTx934KGcD+eb199umXINEnyk3NPLHmVtV7FZXkiD31jgiGW4DDSHuY8qaCKivyemwwoufw2dV
 0ZBjxoNX+xSLV1mI=;
Received: from maillog.nuvoton.com ([202.39.227.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oD3Wn-0001iv-M0
 for openipmi-developer@lists.sourceforge.net; Sun, 17 Jul 2022 12:37:43 +0000
Received: from NTHCCAS01.nuvoton.com (NTHCCAS01.nuvoton.com [10.1.8.28])
 by maillog.nuvoton.com (Postfix) with ESMTP id 08A8D1C8030A;
 Sun, 17 Jul 2022 20:11:53 +0800 (CST)
Received: from NTHCML01A.nuvoton.com (10.1.8.177) by NTHCCAS01.nuvoton.com
 (10.1.8.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Sun, 17 Jul
 2022 20:11:52 +0800
Received: from NTHCCAS04.nuvoton.com (10.1.8.29) by NTHCML01A.nuvoton.com
 (10.1.8.177) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2176.2; Sun, 17 Jul
 2022 20:11:52 +0800
Received: from taln60.nuvoton.co.il (10.191.1.180) by NTHCCAS04.nuvoton.com
 (10.1.12.25) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Sun, 17 Jul 2022 20:11:52 +0800
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id 5D0FE63A23; Sun, 17 Jul 2022 15:11:51 +0300 (IDT)
From: Tomer Maimon <tmaimon77@gmail.com>
To: <avifishman70@gmail.com>, <tali.perry1@gmail.com>, <joel@jms.id.au>,
 <venture@google.com>, <yuenn@google.com>, <benjaminfair@google.com>,
 <jic23@kernel.org>, <minyard@acm.org>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>
Date: Sun, 17 Jul 2022 15:11:22 +0300
Message-ID: <20220717121124.154734-1-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 2.7 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patch set adds Arbel NPCM8XX Keyboard Controller Style
 (KCS) support to KCS NPCM driver. The NPCM KCS driver tested on NPCM845
 evaluation
 board. Tomer Maimon (2): dt-bindings: ipmi: Add npcm845 compatible char:
 ipmi: modify NPCM KCS configuration 
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
X-Headers-End: 1oD3Wn-0001iv-M0
X-Mailman-Approved-At: Sun, 17 Jul 2022 21:07:46 +0000
Subject: [Openipmi-developer] [PATCH v1 0/2] char: ipmi: kcs: add Arbel
 NPCM8XX support
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

This patch set adds Arbel NPCM8XX Keyboard Controller Style (KCS) support to 
KCS NPCM driver.

The NPCM KCS driver tested on NPCM845 evaluation board.

Tomer Maimon (2):
  dt-bindings: ipmi: Add npcm845 compatible
  char: ipmi: modify NPCM KCS configuration

 Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt | 5 +++--
 drivers/char/ipmi/Kconfig                                  | 6 +++---
 2 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.33.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
