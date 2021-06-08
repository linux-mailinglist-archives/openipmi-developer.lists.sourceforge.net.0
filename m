Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABAC39F440
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:52:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZKz-0008W8-35; Tue, 08 Jun 2021 10:52:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lqZJh-0008H8-JN
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oIMy8peBzm0MheMUdtaxhaXnnBmAwRHCd3gW8JZmFsc=; b=ZJUfwU8g6qIS7/NEoPMLEsUu/v
 Ay+Ay8Ujs9U3LSzVi8KgEOS8YjhQQqidoMR657lDys7QNkAoWcHvMhIuPHMVU8M9JjopWVy+H8jCJ
 GW+xW2LzTQcrxrb9nYs296NW8PL2JU1vrl3XOrJxJUvPfD1rIZj0XWzlLtsX+TfILDIc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oIMy8peBzm0MheMUdtaxhaXnnBmAwRHCd3gW8JZmFsc=; b=SQ0uAUfPqThgxrBEvHBcMkO0nl
 B6sinWBNcoV5WO1rFpIYD8NYaCDhNnqCBeNugKS4+ma90sMWuE8JUetNqkQdDPZOFC+9B4DNNmJtp
 WbNx0Ob38luqaHo4R+9ddaEek6wlGTPRwD4alk2uwZWHZomSVRisuO48V7j1pMvby/is=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZJB-0008Kw-7K
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 905025804CE;
 Tue,  8 Jun 2021 06:50:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 08 Jun 2021 06:50:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=oIMy8peBzm0Mh
 eMUdtaxhaXnnBmAwRHCd3gW8JZmFsc=; b=SN/1VnOcXR4cygWQEYb70OfbjUI66
 cBOmI3cKJmbk6FLKpclM+fT3X1TCJhJYnW97nWEBi9WKNpkYIIMRhecl6M2XHohm
 qON7Gve+ayfJsjFZzmaeZv9xjqeLbY0LIh5I68ad5mPqzwPXDMwklT+ZHzsvTdq2
 aSCycE87OL1FGCXYAFL1SkOCqQC7M7DXHxeEeLAqA05J5tr5pUus6hN2NazKSRk/
 eVBgTYwIxFZICiuUU9XznfPc/2oZW17Ay9yXHAAvAWnkfpa7lr86thSQfb+3uAN/
 IgdF5rcRGD16xAMfICLt5lPmuA8Rt8Mby52+wo7D40mnLCFILlxwpiHHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=oIMy8peBzm0MheMUdtaxhaXnnBmAwRHCd3gW8JZmFsc=; b=e3Di8/AE
 o7ADpMB0nJLr2fn5igX1EjMH1sBs7JpoGt6OTQrPtBf160XRQRgpHgMSTuLEGTdb
 7Zb8c+LSyyBTw/iyysqc/D2c4JT6s3eXHnsWpoP+5fY97QziJwn9XyOCR8xHgTz8
 GF3Ju/GMmUcB197FOa9dXTE6zc5FajwYnnb9Y6YWuVaQWEGdw+I4XUP/lhSCehBH
 xfSl1v18vGyuInUB3VJQ74X/zYI2pxmKDBf016LDkVTih9lzAHpKzLCRTinIKp7Z
 llQhd8fB7uWYYMjg+0qQ2FUpGuMF8BpXhay5FUWJRB9a4i869iZBN+L+qFzPo6aF
 PkV5MolsrtlC0g==
X-ME-Sender: <xms:XEu_YM__rYWQ44nUSQE3LRzYKxj3ZazQ1B-ftNeg7ONR72ycePJijA>
 <xme:XEu_YEsBtNsG64mr9G3XSBjTLPnzNCf6veBIL2c_ECgIPwRMNXqBV2qBB1_KWDhAb
 ZL0TPL9ZizcmslWCA>
X-ME-Received: <xmr:XEu_YCBHUnfLnkJKxrdOMxNdcJkTKLvh8Wh0ajBUOElS-qli7W4GIrwUW1vrAiLb7iCFqLU7m8fCR0NM8_Gd4cFKliraZpwjlC8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecuvehluhhsthgvrhfuihiivgepheenucfr
 rghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:XEu_YMd0UlAosnpaQptBCxVAP1kktFO2DdBsmWqkKt5r2PSfYjhz6w>
 <xmx:XEu_YBNHvr3EQKQys4b8XISRNfqRXc1ozsrgzcXlBGFP0NuYP0sqCQ>
 <xmx:XEu_YGnxST5Hr6-YW3xbKZh9sBYfpT3f38EfZi12lF758kjflFjSKg>
 <xmx:XEu_YOfuR52x5JSEnqYfLxqja88jguAETEiuFbvF6sWNpaQ5dGzmCw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:49:58 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:56 +0930
Message-Id: <20210608104757.582199-16-andrew@aj.id.au>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210608104757.582199-1-andrew@aj.id.au>
References: <20210608104757.582199-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lqZJB-0008Kw-7K
Subject: [Openipmi-developer] [PATCH v4 15/16] ipmi: kcs_bmc_aspeed: Fix
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
 linux-aspeed@lists.ozlabs.org, KWLIU@nuvoton.com, avifishman70@gmail.com,
 venture@google.com, chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
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
index 922fe41f6b05..461cb2c9cc7e 100644
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
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
