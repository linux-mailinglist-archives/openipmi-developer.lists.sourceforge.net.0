Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C3E377BCD
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:44:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyiq-0004hR-E3; Mon, 10 May 2021 05:44:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lfyip-0004h4-8R
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Cf8vcTHTFHQGRl2fPzXB+QwMHUhRpgEuhayhDdGSR0o=; b=k3ySnArbQNNfnkmU/NByI4kA+j
 YcX09QQrYgfIHLpIw4hJx5i0IdFx+IUuq/gKKJYPW/kghatUIFHHNxwme2jBKgRnSnz3kmlKMR7jt
 wwBiqot97zHWD1ut4DHcD9Q2lw+voLq5rjMG3mTY7sD00uz1tXclq+RpjkO+KqX1Zn/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Cf8vcTHTFHQGRl2fPzXB+QwMHUhRpgEuhayhDdGSR0o=; b=AJ4kp4LuTN7q1MqG4p/rC/7291
 gAsHf8AW2tE3Fs3tmOB0kjCGwEM04SvnnBl6KjJEkJHnXJw3Mz+/jxY+BR0bfQEMfEEabVGXTO2WD
 6zI8Kb+OnSgJukD9S5P1ZEsvxnpg2EAAejFMkxZb+NqKK9YVqjZR/lPeX3CVeOfuSNXI=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lfyil-000KnL-4X
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 643455803ED;
 Mon, 10 May 2021 01:44:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 10 May 2021 01:44:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Cf8vcTHTFHQGR
 l2fPzXB+QwMHUhRpgEuhayhDdGSR0o=; b=O7r5u+Pb8GS2Q1DY2IQJlcY3a6mOh
 dZeDbnqS2KxWPDEfwjx84Eh5A2MB2vJWrVy+5qxJCHYvfQheNJEAYlCzn+O18q7V
 XMREvbWCgMAkbo4RKMAu0UroNFALk2mcXmItY8IFPZVC1bixpfvBUonD36TJv2e+
 fOsw/nibpqiLgt9CZ+jPZ8XmFx8AxXfSczg74i6gXLQDc2Bxp/SyT2oKAOHR1h43
 f88Jzv9ddWZTBt1fhpVwHz0Df7kO7kAru0wc6L/8pU9oMCJzrulZlDldmVedgWkU
 IrU/O6Oe9xkZklJ+w16Okl4GJBDRvtFp2Zz33UnX0JZ1Ph5Bd9omohZQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Cf8vcTHTFHQGRl2fPzXB+QwMHUhRpgEuhayhDdGSR0o=; b=thpxnPm1
 spFbmLH4SZdrghRKsDpRnTdgYoXjaWEnjRwvKmsa0W1//uuqFmlDQk7mOS21qEEz
 jOJ9rc4FLVxdfsQnQOs6sO5her+Ex8DN3gtDRMIIDL4PuVDAtm12xnFZ7sx7zFM4
 5mIpV9wa3K5PJMwkkzGd4FPiwimfdxgvRqfE+rVdCtvisHYZaOV/z+L7UjXZiCJY
 ak8LlgOpinhORA+rSRW0xWnr9FGUo2un/If0SA1AdWQJMaFecIbwcXl2RcVOnzLZ
 +pnc7M+eU5ODgVpYSIT3S7vUdZgbrQiag8Ls4kU78Pz0qRdMMLqrCsNT9BpiafRZ
 F3zS+on2wVHAzA==
X-ME-Sender: <xms:SciYYPSNgS8tBptoJC4wlF6FdvhpztlPyxj2XchmTV-PCOwFgNQPRA>
 <xme:SciYYAzFmFy_afRqkeGV1TJdGjgTBA5NoosrnIDt9s9r2ETTNls5vW4wfKRobkyh1
 H7XAjM1sUw-rJ38fA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppedvtdefrdehjedrvdduhedrkeen
 ucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:SciYYE0GhbSA40fRuZhAosj475kjRLVT_gFhzsEbrgolTU8SQSq0gQ>
 <xmx:SciYYPBILDqUjXppjiEqkn49Y9u007jq1xlLKwW0NESoKiTJUucKKA>
 <xmx:SciYYIhy5ifno6GhxWfOZSdBLM-VVqsHbidyp1JpSYVKDpPi4zSq3A>
 <xmx:SciYYHQDNT3v-osM3PKc2RIEC3LTsxGnxINt05of50ltHGZA_o3kyQ>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:44:35 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:12 +0930
Message-Id: <20210510054213.1610760-16-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510054213.1610760-1-andrew@aj.id.au>
References: <20210510054213.1610760-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfyil-000KnL-4X
Subject: [Openipmi-developer] [PATCH v3 15/16] ipmi: kcs_bmc_aspeed: Fix
 IBFIE typo from datasheet
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, robh+dt@kernel.org, arnd@arndb.de, zweiss@equinix.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Input Buffer Full Interrupt Enable (IBFIE) is typoed as IBFIF for some
registers in the datasheet. Fix the driver to use the sensible acronym.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Zev Weiss <zweiss@equinix.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 9b81806b4dcb..558132b2b9f7 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -50,9 +50,9 @@
 #define     LPC_HICR0_LPC2E          BIT(6)
 #define     LPC_HICR0_LPC1E          BIT(5)
 #define LPC_HICR2            0x008
-#define     LPC_HICR2_IBFIF3         BIT(3)
-#define     LPC_HICR2_IBFIF2         BIT(2)
-#define     LPC_HICR2_IBFIF1         BIT(1)
+#define     LPC_HICR2_IBFIE3         BIT(3)
+#define     LPC_HICR2_IBFIE2         BIT(2)
+#define     LPC_HICR2_IBFIE1         BIT(1)
 #define LPC_HICR4            0x010
 #define     LPC_HICR4_LADR12AS       BIT(7)
 #define     LPC_HICR4_KCSENBL        BIT(2)
@@ -83,7 +83,7 @@
 #define LPC_STR2             0x040
 #define LPC_STR3             0x044
 #define LPC_HICRB            0x100
-#define     LPC_HICRB_IBFIF4         BIT(1)
+#define     LPC_HICRB_IBFIE4         BIT(1)
 #define     LPC_HICRB_LPC4E          BIT(0)
 #define LPC_HICRC            0x104
 #define     LPC_HICRC_ID4IRQX_MASK   GENMASK(7, 4)
@@ -383,20 +383,20 @@ static void aspeed_kcs_irq_mask_update(struct kcs_bmc_device *kcs_bmc, u8 mask,
 
 		switch (kcs_bmc->channel) {
 		case 1:
-			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIF1,
-					   enable * LPC_HICR2_IBFIF1);
+			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIE1,
+					   enable * LPC_HICR2_IBFIE1);
 			return;
 		case 2:
-			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIF2,
-					   enable * LPC_HICR2_IBFIF2);
+			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIE2,
+					   enable * LPC_HICR2_IBFIE2);
 			return;
 		case 3:
-			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIF3,
-					   enable * LPC_HICR2_IBFIF3);
+			regmap_update_bits(priv->map, LPC_HICR2, LPC_HICR2_IBFIE3,
+					   enable * LPC_HICR2_IBFIE3);
 			return;
 		case 4:
-			regmap_update_bits(priv->map, LPC_HICRB, LPC_HICRB_IBFIF4,
-					   enable * LPC_HICRB_IBFIF4);
+			regmap_update_bits(priv->map, LPC_HICRB, LPC_HICRB_IBFIE4,
+					   enable * LPC_HICRB_IBFIE4);
 			return;
 		default:
 			pr_warn("%s: Unsupported channel: %d", __func__, kcs_bmc->channel);
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
