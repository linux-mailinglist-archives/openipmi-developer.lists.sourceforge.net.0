Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCFE341564
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Mar 2021 07:28:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lN8cz-000856-7v; Fri, 19 Mar 2021 06:28:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lN8ct-00084n-9j
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:28:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sic3qYlOCrq3L+pvEQYeldSvAa2Qy+Xy8lgLaF/EF40=; b=nJtytAfQlkeXA/DTXoX9/1VarT
 OW09BI480r/3VL7XWY6/Ta41oC9ts89NbZlgjYUH4VMvQQWkfM0I48RRxzzClrm/atbznUnh9KDOu
 u9XRhd+mwId24iTIi3z75VK5siQVS5OyXR3/E2lZnJpzYWo7bh6Ex4TPmk5Ey5GIdyE4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sic3qYlOCrq3L+pvEQYeldSvAa2Qy+Xy8lgLaF/EF40=; b=ItiBxnWoNaJ8iBwUI8ZPJLnMHN
 mxsHL2LpSFEwQfNlGtPAzOTp8rOUGKm/GZG+zQEocyl84VwDYndzDo0TkXiKs2ZkTtk1N0a2/723o
 QZJi3/miZDiySF0pEjNLpVxS2iE+rFZVL3L+vu8UtHebrwtVjLTwLHcT8OVYni7Z/MPw=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lN8cq-000WmV-AA
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:28:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C1F40580A7F;
 Fri, 19 Mar 2021 02:28:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 02:28:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=sic3qYlOCrq3L
 +pvEQYeldSvAa2Qy+Xy8lgLaF/EF40=; b=hODnRte/FtT1Aaf25m+nUpIsfLOmq
 E2bOshf1RD+Trr8qtHai6iDdVPuW7zrzuzHHlg9nNbAZlBdYiPVbshOFMSLIp+8q
 NmfqJ42/HFi+eMBC62U5XOWqFV1MUKX5TzEytDNP5gMduhXnjuwtq7HpxFbtTG4l
 SPcsCJorPa0cPgAYrSdWph0rz+yclBaCZ5eAwbv/838XKITSUFhE21W9CyXqyknm
 +MFkL76NTghRogIVKEjAzUlrHlWInB1RROymNdgXg1u9cnPf6tfNmGjkS+N1IDdI
 iF+S4CEAVxw2D433EvA0ZECL4H4v84MRVquQyImJ4jMZkSJzWqm+rmwkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=sic3qYlOCrq3L+pvEQYeldSvAa2Qy+Xy8lgLaF/EF40=; b=jWpyY1GC
 mffDjfEx9SJn4iKY3jQDrqEq9y9dGlgfQrzBQM+sohwMnweR+7e47e3B8Rx90+JS
 Erwm5BSONeYAAk12IxKsgRFVFSwgX3NJVgWBhs7alXB2TF832R81DPTvaWFVe4VW
 SJ2DETmEDM7pU31vur+PW3t2KnsBiNY0uShBu/boWy2cYUtosT94V8H02peakQQC
 nEAPcVekVqp+If4guezmhbkD3+pUbwAZSIWqQeud67Gh78+ZiPDAAsPuFhjSaEUd
 rYxz+ipAvCwl40RKsbX11TPVsGSJobqyKeI85xXztOr4/7SFxq80JVfc49+UHjFK
 p5iSy3NBG1c8Mw==
X-ME-Sender: <xms:mkRUYCIq35iFQKpVxZTfyNRsePp9Sgi7V-JtyrjK1TIMIOdD2RURYg>
 <xme:mkRUYKKYLTIbgWr1G8s1fewV9h0vPH-iXv99_voTiQdgpbG1ojrubJHQ1p7e0ajO7
 9znTXBhR8QB7xpZag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtffrrghtth
 gvrhhnpeejgfdvveehteekveeggeellefgleetteejffelffdvudduveeiffegteelvefh
 teenucfkphepuddukedrvddutddrudekuddrheehnecuvehluhhsthgvrhfuihiivgepvd
 enucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:mkRUYCvhQ33mQqgNLMcOv2yGmKaG9zfUg6gI3nXWsiWATaYr3lTnjQ>
 <xmx:mkRUYHbtunRPZGfXQm-ONk6dCbWObR-F9ybB5M5KzBO6KB35afaDng>
 <xmx:mkRUYJbj-h3e92wCRxmu1OxU_FXTzFZfuuSzOwA4Cr96gAVUV-8Dvw>
 <xmx:mkRUYBKQuUTsmBKmbMnO3rPrlTaBJ_7BaWLygMttcou72b71zJ5ktw>
Received: from localhost.localdomain
 (ppp118-210-181-55.adl-adc-lon-bras34.tpg.internode.on.net [118.210.181.55])
 by mail.messagingengine.com (Postfix) with ESMTPA id 35E67240054;
 Fri, 19 Mar 2021 02:28:36 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Fri, 19 Mar 2021 16:57:35 +1030
Message-Id: <20210319062752.145730-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210319062752.145730-1-andrew@aj.id.au>
References: <20210319062752.145730-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linaro.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lN8cq-000WmV-AA
Subject: [Openipmi-developer] [PATCH v2 04/21] pinctrl: aspeed-g5: Adapt to
 new LPC device tree layout
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
Cc: devicetree@vger.kernel.org, ryan_chen@aspeedtech.com, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 lee.jones@linaro.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>

Add check against LPC device v2 compatible string to
ensure that the fixed device tree layout is adopted.
The LPC register offsets are also fixed accordingly.

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index 0cab4c2576e2..996ebcba4d38 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -60,7 +60,7 @@
 #define COND2		{ ASPEED_IP_SCU, SCU94, GENMASK(1, 0), 0, 0 }
 
 /* LHCR0 is offset from the end of the H8S/2168-compatible registers */
-#define LHCR0		0x20
+#define LHCR0		0xa0
 #define GFX064		0x64
 
 #define B14 0
@@ -2648,14 +2648,19 @@ static struct regmap *aspeed_g5_acquire_regmap(struct aspeed_pinmux_data *ctx,
 	}
 
 	if (ip == ASPEED_IP_LPC) {
-		struct device_node *node;
+		struct device_node *np;
 		struct regmap *map;
 
-		node = of_parse_phandle(ctx->dev->of_node,
+		np = of_parse_phandle(ctx->dev->of_node,
 					"aspeed,external-nodes", 1);
-		if (node) {
-			map = syscon_node_to_regmap(node->parent);
-			of_node_put(node);
+		if (np) {
+			if (!of_device_is_compatible(np->parent, "aspeed,ast2400-lpc-v2") &&
+			    !of_device_is_compatible(np->parent, "aspeed,ast2500-lpc-v2") &&
+			    !of_device_is_compatible(np->parent, "aspeed,ast2600-lpc-v2"))
+				return ERR_PTR(-ENODEV);
+
+			map = syscon_node_to_regmap(np->parent);
+			of_node_put(np);
 			if (IS_ERR(map))
 				return map;
 		} else
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
