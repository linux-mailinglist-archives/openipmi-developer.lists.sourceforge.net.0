Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FBF39F43D
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:52:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZKz-00004w-Az; Tue, 08 Jun 2021 10:52:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lqZJh-0008Er-JN
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xmq7D+S2va/ehAxAbfkD2fqxiitkymAU7PzywDjgwkY=; b=U/tXViVWD7NqI2QsbIq/ADBMnP
 Yanp6dPL0bMoVEgz0JrF7PUQ4GYYIGYsfezQSkCaRC4ROBHtgboIIBkEzg3/aPM/sYCClHZ9lAQ0p
 9f8jbBO+q3zn9mLSI15NRBiHFYDcCI4duMpg+ptqrNTt4kjGY3U0OFbCsFF4fQAPCc9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xmq7D+S2va/ehAxAbfkD2fqxiitkymAU7PzywDjgwkY=; b=m8u/M4WaGtjsqUcEU9atAcyfrC
 /YRFPDccJFojFtB9CEFjOZGHO1Q5zaGazSdyDKPgcQr9+D6QOgEFTkBXXcz4MIX2CWfijPGhjOH3N
 StDj0CjJ0w21MjSQfrvJiBI3ArqahhdD5mQMNEusn45VTur8vDKtPKL5QxwMzYDiy3sE=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZIy-000jhP-OD
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:00 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 276F258064A;
 Tue,  8 Jun 2021 06:49:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 08 Jun 2021 06:49:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=xmq7D+S2va/eh
 AxAbfkD2fqxiitkymAU7PzywDjgwkY=; b=NKabqIOHdDe+LyZnJzHPfHIEVnh75
 5jX0yzkG2eeTf/391Ryr1OapduqTUGyOlpeLZgfm+MCj1D4t0Je1hlEWUPUYW+zr
 KFDZmbT/dsDvPzevmwPB1o3ZuJnSWTYWX81aQgP1AfXfqcCOBDmH7iRU/kU008Sq
 PRfF71wua2JKCssTDWfVHMjg2wN1OFYelq1GmQBw6wJ+wHSqyX+OD+XHGiNF2Oei
 w64NbjnlAdjSbmyFmwjgtQQeu0Tc1g7E8E/jgTrOuOMkRrZeUu7xRx1HHQxrK8+k
 v8q8F449SGZ5d2vdYEjg1Nl3wyBvD7CgeFdJHH6NA6ZhD01K02uTmsZmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=xmq7D+S2va/ehAxAbfkD2fqxiitkymAU7PzywDjgwkY=; b=XL8ViDzX
 FrPqH90t/NwS67cHWglKGyXT+yhqTIUodZCI+nDA49AYJnYeZgfXvKMpNHlI4lRb
 AbBRm34wrnpgdHzGHzTLF7dpUzzyflwaVXPUP/XyPZSgsKiKrvEw3pkV22nZ8yyC
 QpcwqBV18TpCIbtv490YVf0wUtcc6ZmnZsunj39XeWtyTAoYxGtxfsnJQx02nTK5
 fh6XvDQdgndAIGixMtwYjuZv7mGEekyOcsYcbunUaWWSMcBAyABTVwFrQt/WBXJ/
 wga2i9BikiwOqRilQpg/Yt7AELjqX45EcGf/2ez0X3bEDhjTTVKrp9qpgiWpxHJ/
 y9jHoM0iNbnxxA==
X-ME-Sender: <xms:TUu_YK34TL8duHafZY2TGLcB5SdhRCtfrj6LiVEeRywMSi0nAJ5lig>
 <xme:TUu_YNFroyiaHs3tU3hJ1Yu-M7VjzIYUH1TF5XufNh4bKZTbIwTH4DG3qlq83cjXP
 NgjgLuCmdvqP93LxA>
X-ME-Received: <xmr:TUu_YC4Gf7r6XdwcZJm0hLArcQhVt9XMQ89Le_GcY7IwxW_QOdfLj0NzlP8l_Oxsy_Oi0gLfqAmbDFrKMNDbrfFKAamd1XR3LII>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtffrrghtth
 gvrhhnpeejgfdvveehteekveeggeellefgleetteejffelffdvudduveeiffegteelvefh
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnh
 gurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:TUu_YL1h7mK0utFZ-6tWgH84onJY0XO7Wz5ljUjHhmrr-iAfX2SNUQ>
 <xmx:TUu_YNEvz4dDY4u2_fF7Uh2UdhkdypDgU31ZI4vU0B9SN14ByXC4Cg>
 <xmx:TUu_YE--v8u5ge1uCe9-ui0Lzz1jhNq6xAIie-Gvho3eG8YC5MXVvg>
 <xmx:T0u_YGJ_L5FJ1ZvesWGcK4DRT4jRsNRlPyEMcXvIm2UIzrXhPQgXGw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:49:43 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:54 +0930
Message-Id: <20210608104757.582199-14-andrew@aj.id.au>
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
X-Headers-End: 1lqZIy-000jhP-OD
Subject: [Openipmi-developer] [PATCH v4 13/16] dt-bindings: ipmi: Add
 optional SerIRQ property to ASPEED KCS devices
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
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Allocating IO and IRQ resources to LPC devices is in-theory an operation
for the host, however ASPEED don't appear to expose this capability
outside the BMC (e.g. SuperIO). Instead, we are left with BMC-internal
registers for managing these resources, so introduce a devicetree
property for KCS devices to describe SerIRQ properties.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
index 697ca575454f..4ff6fabfcb30 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
@@ -49,6 +49,18 @@ properties:
       channels the status address is derived from the data address, but the
       status address may be optionally provided.
 
+  aspeed,lpc-interrupts:
+    $ref: "/schemas/types.yaml#/definitions/uint32-array"
+    minItems: 2
+    maxItems: 2
+    description: |
+      A 2-cell property expressing the LPC SerIRQ number and the interrupt
+      level/sense encoding (specified in the standard fashion).
+
+      Note that the generated interrupt is issued from the BMC to the host, and
+      thus the target interrupt controller is not captured by the BMC's
+      devicetree.
+
   kcs_chan:
     deprecated: true
     $ref: '/schemas/types.yaml#/definitions/uint32'
@@ -84,9 +96,11 @@ allOf:
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/irq.h>
     kcs3: kcs@24 {
         compatible = "aspeed,ast2600-kcs-bmc";
         reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
         aspeed,lpc-io-reg = <0xca2>;
+        aspeed,lpc-interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
         interrupts = <8>;
     };
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
