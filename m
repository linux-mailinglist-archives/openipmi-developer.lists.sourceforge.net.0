Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F19DD31FB57
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Feb 2021 15:51:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lD781-0005E1-Jm; Fri, 19 Feb 2021 14:51:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lD780-0005Dj-1V
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Feb 2021 14:51:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8f7naV3t492m26tJiqvpMdtN6bec5zlRMxz/eLIINok=; b=d/jfg8fuHLqGOgJAAVpJW9beRy
 pVG+3myPSfOOUzeSrjzj7etk9QnRHgeCTDSqIndxaqI/ytYXOvWjes439jSVQEKWUmq6+QwCsKCPY
 /W5kPySX4iHRWqBuOErYybkGE/8cSPc+D7zlILPUxUvTusFhw1RulcuP2I9tFW6QJg60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8f7naV3t492m26tJiqvpMdtN6bec5zlRMxz/eLIINok=; b=lcnp5laRo49MIPQglPCS7BXh/f
 fRHULaXVoUBP9FEGSLfFr8KlXVPXCVH8g4hb/xDy7Dy7oW1yTRcjppOapEW0LFGLH2OB5/2r84j/q
 QSXixaIvrJnRmXb+oRw6Tuys4KejhJjo+qI05CqOVjQ0yZXAoYMQ2u9TdzhQRqz1xwPg=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lD77q-00FPps-U0
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Feb 2021 14:51:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1654E580367;
 Fri, 19 Feb 2021 09:26:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 19 Feb 2021 09:26:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=8f7naV3t492m2
 6tJiqvpMdtN6bec5zlRMxz/eLIINok=; b=RTO8+duai9Z/7ITJpiq/rzQF2B5hL
 XkHKHOwbu4qF95ISU+FRiS5cEsC/sDJcsMVLzjgHCVKG3I4ywSaasp96PKJ5j5CW
 CsanyzcHQA/6YAk2RytYu0XKPCannn1wjgU2t3QpcDtkKxw1GU2OVmdntVFwIN8B
 pjtlUfYfHb+FuWEjwUIQqhn3auNxfH0g6WxJsu0fdps58sFCgDn/0ALJ/bskja+K
 aJXMt1AYpaRLCvJwJFFCmeV6GK4qyZqvr84PnYhNU7GIx026rrpXJ75ujHN+VM04
 n0eBsLVfESzi2VNET8+KQuCKZ6Wqeo/A7HwbOXBF20QVeO1pzqvyVjkYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=8f7naV3t492m26tJiqvpMdtN6bec5zlRMxz/eLIINok=; b=BBO74844
 UPCEhEG0ST207xR0WwS6wMF0xQQsbC3zW0TLFVtanMzQ28yS0nD4gHHAhcIbiGcZ
 Ry06MJD9FPMJL+6qyr3BZsdMZp1dtdnDeYUANY+7BYgPUk8HI7COHkPhz7j799bU
 4+MzgNwyuoBx+IscnoJo3fl9z41mH3nJ0fGcK/Vgo+DXcGPv4ShFsfvrTm/FOuSk
 3+tozBNYzKcz1p8wDCn35Q7KfMo5tdHKawBE2+mx7Y15gl7jyf8im1piPMMzJ3op
 cBWanLWK3QXQ07NqHwJ4gXo69xsDnqVLGDvNyXsAE/uJEEJfqGWEdcTPfOI7lU8d
 vlrxBRZdwk6A7g==
X-ME-Sender: <xms:e8ovYGr_PuI4SR3VfsyJU0da_rsZYDaraE2Y8TV0AFgW_sMdSZbS1w>
 <xme:e8ovYCcKJCk4uJhaelSd24cSunyLRjcioG9zcOQrdfTeMXQ6EHMmCX1Bn9l1sUgLM
 HBXebSBK-M4SbX0Lg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigdeifecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrfgrthhtvg
 hrnhepjefgvdevheetkeevgeegleelgfelteetjeffleffvdduudevieffgeetleevhfet
 necukfhppedugedrvddrledurdefjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:e8ovYFqSrMDeerYToCsMINUzXkvsNVK0yyZrC7g2aOH3VHnjWfFUJQ>
 <xmx:e8ovYDF6hVpK6fdezL13A_Vk0Y8mJprnpEY8fH4MqdaleZq4TuvfPA>
 <xmx:e8ovYFsgtCFP2UatsCf1lUVL9FAD982wivtUnmuK7a8C0NNUy8aWJQ>
 <xmx:fsovYGwGVuzH-t7ZP3lMJ24oV_lO2ekhCESebRxFL0v8TAxEdeZiwQ>
Received: from localhost.localdomain
 (ppp14-2-91-37.adl-apt-pir-bras31.tpg.internode.on.net [14.2.91.37])
 by mail.messagingengine.com (Postfix) with ESMTPA id 19385240064;
 Fri, 19 Feb 2021 09:25:56 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Sat, 20 Feb 2021 00:55:07 +1030
Message-Id: <20210219142523.3464540-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210219142523.3464540-1-andrew@aj.id.au>
References: <20210219142523.3464540-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.229 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lD77q-00FPps-U0
Subject: [Openipmi-developer] [PATCH 03/19] ipmi: kcs: aspeed: Adapt to new
 LPC DTS layout
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
Cc: devicetree@vger.kernel.org, Haiyue Wang <haiyue.wang@linux.intel.com>,
 tmaimon77@gmail.com, linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 avifishman70@gmail.com, venture@google.com, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, yuenn@google.com, robh+dt@kernel.org,
 Corey Minyard <cminyard@mvista.com>, lee.jones@linaro.org,
 linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>

Add check against LPC device v2 compatible string to
ensure that the fixed device tree layout is adopted.
The LPC register offsets are also fixed accordingly.

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Acked-by: Haiyue Wang <haiyue.wang@linux.intel.com>
Acked-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index a140203c079b..eefe362f65f0 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -27,7 +27,6 @@
 
 #define KCS_CHANNEL_MAX     4
 
-/* mapped to lpc-bmc@0 IO space */
 #define LPC_HICR0            0x000
 #define     LPC_HICR0_LPC3E          BIT(7)
 #define     LPC_HICR0_LPC2E          BIT(6)
@@ -52,15 +51,13 @@
 #define LPC_STR1             0x03C
 #define LPC_STR2             0x040
 #define LPC_STR3             0x044
-
-/* mapped to lpc-host@80 IO space */
-#define LPC_HICRB            0x080
+#define LPC_HICRB            0x100
 #define     LPC_HICRB_IBFIF4         BIT(1)
 #define     LPC_HICRB_LPC4E          BIT(0)
-#define LPC_LADR4            0x090
-#define LPC_IDR4             0x094
-#define LPC_ODR4             0x098
-#define LPC_STR4             0x09C
+#define LPC_LADR4            0x110
+#define LPC_IDR4             0x114
+#define LPC_ODR4             0x118
+#define LPC_STR4             0x11C
 
 struct aspeed_kcs_bmc {
 	struct regmap *map;
@@ -348,12 +345,20 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	struct device_node *np;
 	int rc;
 
-	np = pdev->dev.of_node;
+	np = dev->of_node->parent;
+	if (!of_device_is_compatible(np, "aspeed,ast2400-lpc-v2") &&
+	    !of_device_is_compatible(np, "aspeed,ast2500-lpc-v2") &&
+	    !of_device_is_compatible(np, "aspeed,ast2600-lpc-v2")) {
+		dev_err(dev, "unsupported LPC device binding\n");
+		return -ENODEV;
+	}
+
+	np = dev->of_node;
 	if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc") ||
-			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
+	    of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
 		kcs_bmc = aspeed_kcs_probe_of_v1(pdev);
 	else if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc-v2") ||
-			of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
+		 of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
 		kcs_bmc = aspeed_kcs_probe_of_v2(pdev);
 	else
 		return -EINVAL;
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
