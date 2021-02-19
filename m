Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A60631FB56
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Feb 2021 15:51:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lD781-0000kT-Fh; Fri, 19 Feb 2021 14:51:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lD77v-0000j3-S1
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Feb 2021 14:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZNJkDZPQZ4qRn0dZpJLR1k4wVs6r2KrWIHEsDySJPvg=; b=b0bx790k4Suma0TZ5W2uVcWDcm
 QNNscsJHIP9Ben4MMvNPU2psXKW2XKOCggTz2h2p9N0bGrdJmWqPbLo0C+p17fR74RLf1IeIy2h3B
 Qn8s+abolWrzG/vkqPAZ3emmvC2tInYmE9HuercE6Mn8pqntTgQ5tNf3wuJiLmeGa2LI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZNJkDZPQZ4qRn0dZpJLR1k4wVs6r2KrWIHEsDySJPvg=; b=YXryVAmaP190IjsK+ikAddsjYw
 lgrrfilXSy3JEPlOS/Nd0v2Doky9Djw65DGFuArNfwIM/iUWqULXPVawglvYrEGE+V4IcVnUu1aAc
 UDs/8AQYE75de0ZV++RIvOWwajqJ7xxc6ySnb+iJhxVg30RTlmDZ7cERDKKZKu2tip7s=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lD77i-0000qy-Vb
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Feb 2021 14:51:23 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id DFD7A5802B3;
 Fri, 19 Feb 2021 09:26:10 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Fri, 19 Feb 2021 09:26:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ZNJkDZPQZ4qRn
 0dZpJLR1k4wVs6r2KrWIHEsDySJPvg=; b=DoEoen05zG2OW4jmMQPm7XJzX77J6
 S4Afnemd+rSyIi8BHWoJfFzWR1a8fBk/0liurwyUZK6tEtVS3lpMEjjGFRwHgv0Y
 WBVDlNGmmpP13evFb6Hzv/ZVBmeWq83yRiIwt3rfUOUjIJSGa7PAsJ/GtDUKHfT6
 zNn+Xfx8SlZ+glr7vBVuA6H14uglsMOs5qjfz1uwYzKOz5xml4YJj+SpMNGFFhmz
 efcLLEI2bRr25BmulLf6ifYt/dHPzURuEN/kMlHy5jFGJUufXAIvEeMO42ljT13v
 hulBKH0cvWDWVUfS9OxKpzROSOZkarBZGvFSz5XI+ruDGeyGrMupkJt1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ZNJkDZPQZ4qRn0dZpJLR1k4wVs6r2KrWIHEsDySJPvg=; b=cv6gwc+I
 PJYNfTbWFHNDC8wHujEONVxLP2J2jpvpKpCUjiYYJJWnawgtBd2EzdxXS6i4qUqF
 dw/fYsuopEyyvq9YJHp3MKZWjxsWNeU/JvaNHLm4AJ6nsbEOdgxmLZiH1sKvRmxp
 xG9LZDSv0KOQawHXNxInNxA+XpDv0t8wTBNNAJKFxEnrwJ0ze/28+QBjpAbgSrnN
 FHoKonT8VTWnPIi4G/vwnw2L5IsSdeTELoikwx6KSBK/jtyg7BDYX2xD6nCkHXaB
 t1U9cMdqQKKI28iBZjn3XmT6NNVzjY7mDJyYQn2xFlxXLWJetxLV83PCOtEWkEHk
 xshzwQw2bXIcZw==
X-ME-Sender: <xms:gsovYI4vK-eLGP39pVPqfpF8X_q2u47E0hukAx5MGM6wX64G9UI58Q>
 <xme:gsovYPLcA0S1G0eJECoUq0suxIScElGHWat_XMvQuBkViES1OQ6xCirbty3a6g8b3
 SpxJMTZfd8zDLMewQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrfgrthhtvg
 hrnhepjefgvdevheetkeevgeegleelgfelteetjeffleffvdduudevieffgeetleevhfet
 necukfhppedugedrvddrledurdefjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:gsovYJIe0tF9hhD1Ouan36CpSbJ9X9gKxgs0mQJNbXGAolr4Czkf8g>
 <xmx:gsovYFUmzxx0HN6c9vHLJWt2FGmEO0MXD6Y0RCmkryydZu_RZ_YOpQ>
 <xmx:gsovYDj52ZQpbcYl3lfu_uoTs3c1s8wUkjF6LkMWDOYZ4_SUL4borw>
 <xmx:gsovYA6diHl5i84xvvE-jEBPZ2ZLjCAlSX_pNrX5KFYGl45hP1fDQQ>
Received: from localhost.localdomain
 (ppp14-2-91-37.adl-apt-pir-bras31.tpg.internode.on.net [14.2.91.37])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8D7AC24005A;
 Fri, 19 Feb 2021 09:26:04 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Sat, 20 Feb 2021 00:55:08 +1030
Message-Id: <20210219142523.3464540-5-andrew@aj.id.au>
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
 for more information. [URIs: aspeedtech.com]
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
X-Headers-End: 1lD77i-0000qy-Vb
Subject: [Openipmi-developer] [PATCH 04/19] pinctrl: aspeed-g5: Adapt to new
 LPC device tree layout
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
 linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 avifishman70@gmail.com, venture@google.com, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, yuenn@google.com, robh+dt@kernel.org,
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
Tested-by: Andrew Jeffery <andrew@aj.id.au>
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
