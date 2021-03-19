Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BA03415A2
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Mar 2021 07:30:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lN8eQ-0008DH-7o; Fri, 19 Mar 2021 06:30:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lN8eO-0008Cy-TE
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:30:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QRDiTNGJwy42hfOUMjmwo2Lxr+h4OGF8vd82Dnei0yg=; b=LwtUjXHXD0a0FnBt0rDFuYSACp
 WAn4tLLjbd926MF46T9+d7CDR36eSpOr7Q5k00KkeP6TFCh6Rk5TEpRKu0tRBs5VoX3PEMNdLRdYB
 YCoksq8o2vBKRj1nosKDMth9mJgmn02+U15IfBcQF4UVVHOrF115Q0GTMT3A+lKXKUWM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QRDiTNGJwy42hfOUMjmwo2Lxr+h4OGF8vd82Dnei0yg=; b=jVZ0P0QtxQDubT69ovWIHhvvVY
 T7Py4g6BrMx+Lu3HVrg/M0wRY3Fe0xCn+k51kYeyjMKKYOvINEEcyDyNFGQPnP43qY7VUPKYyQ1+B
 u8NBgG8Yq7hSbwvd0vEYH+5u1Xb2cGdTdZzZaPmnjvcKIc6NS2GaXv87+i75PzVKyP0I=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lN8eC-0004Ze-Gl
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:30:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id F2BC2580A85;
 Fri, 19 Mar 2021 02:30:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 02:30:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=QRDiTNGJwy42h
 fOUMjmwo2Lxr+h4OGF8vd82Dnei0yg=; b=aKKxtWkePJOP9OvXvaQqpJcmnBjD3
 QLcjC6VhCh3bstlp3BeT8dbN3iw7wOTvgAlYrP6CwMllYSjzwKjhJ36Hdd5Z4zrJ
 hPQ23U1dSzbv4ZJn6jnw+brIZoeGIYnXok/vD0en4lYGWdbTFSiTC2r4hiTde26f
 i/eynZitLYZ92+VX1abe/ZHyvIk+zVaBcMGGmKsXMqbWH+eu3HCbUXy3j9AP8KJR
 Ae+cA5YZialf4g9cH4boJRbB38M9i3OfBzoPrDmqTFx1PiknNPDUMQiZ8Yh/aVVA
 JMSHz0r9Q7qCyFXW5wsDfdPtR3ZrOXOOtMOBb9zV6W28YnqDEOl3gaeVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=QRDiTNGJwy42hfOUMjmwo2Lxr+h4OGF8vd82Dnei0yg=; b=Pr7RXhlX
 GP817mV0vLm6R7wuf2pubbnEco69DyrHkGoNglo5tOpBsp8bdcIlQOLq6jo2CZCc
 saiGrjX9dWQgvbgNPD5mhV4H5EkEaoBZhSJO7QzK4wcfT1O+VwVSNbYmLEZPVj02
 XJppEoGHvzr5BFLDGRZhHVqXVnGUKUa3X3lmzSJLjQYS91eitGtAh8WDzR0U/JCz
 /Bqb8VDsmChgYXoIc/bjhmo7okuXweAUvC5+Pnnf4LWvhpJ+VWMjXHylfqJFC2jO
 5o1CEyhEhGKrjiSCOrsfAZUBpQcGbgrp6rl/g4Ez/dzl2uIGHgBsrLKfBC7upJMv
 vTaZQVpUQBDasQ==
X-ME-Sender: <xms:7kRUYAPz2ssjNruzlDvnfIlV-DnZq5IFCjb70_aDFn032M8XalQ1PA>
 <xme:7kRUYP6nGA3tpM4ZgJiiEoOrWvz7vpjw2VBD1nGazCQIuthIHm4R-81JsFxT9e6PR
 _gtrR925tOAhp5PfQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppeduudekrddvuddtrddukedurdeh
 heenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnh
 gurhgvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:7kRUYJOmLXqdlP0EBEawQTaCEZzuMSQya0Ar9eggXOQHRT8trQl86A>
 <xmx:7kRUYFmxMO5BS9hFFcN-eKtjRPLXfMWt_0eGEiyxWKvewyQWRoykBQ>
 <xmx:7kRUYIRw74ecXDgcW8IXSdR23G2lfmhsxagZ-9XcO_yARV1MbbWaKA>
 <xmx:7kRUYIx2gFbQh8I4aXgwoo8sWdgYiorT9_DzmcgoBFRFvIdWjz66hQ>
Received: from localhost.localdomain
 (ppp118-210-181-55.adl-adc-lon-bras34.tpg.internode.on.net [118.210.181.55])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6B13A240057;
 Fri, 19 Mar 2021 02:30:01 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Fri, 19 Mar 2021 16:57:49 +1030
Message-Id: <20210319062752.145730-18-andrew@aj.id.au>
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
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lN8eC-0004Ze-Gl
Subject: [Openipmi-developer] [PATCH v2 18/21] dt-bindings: ipmi: Add
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
Cc: devicetree@vger.kernel.org, ryan_chen@aspeedtech.com, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 chiawei_wang@aspeedtech.com, linux-arm-kernel@lists.infradead.org,
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
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
