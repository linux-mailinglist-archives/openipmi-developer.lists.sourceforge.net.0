Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE79377BCA
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:44:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyie-00046s-OE; Mon, 10 May 2021 05:44:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lfyib-00046P-To
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E8QunPh9AaMnRgR+ENPZuJJI09F8EPSuDjGchklbXy8=; b=ODZgo9x0lP2UH3epRPdNYnFh7+
 J1tdfHC8c3kIwmDz9B18FrMUI8YcuVVhdbw5Zvw0rB1HdOuDSFgl7KoQ/2ZA0Yqa2nvPrEtBTwZup
 FVBKOEtht7Va3jUAGXLHZQBTqCqI3CgwEuLMr2qxz3qMa3zPk/RarvDMSI//zWepf6bs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E8QunPh9AaMnRgR+ENPZuJJI09F8EPSuDjGchklbXy8=; b=YwqKNcKJSXLfRLYS7M45WVDF4B
 QIvqeva8hQRqMc8wA6hF/G18njrEEnX/W6RcNBnV0BPfmQCGNpEWYhN1qTf95KZpnK6V33HwMyHE/
 u49uq9fIaOwnxNNgCUjLzUxlIW1i95xETjF/ewg4BEvHkD/ynB+bpe8fufWT1CpcKmrc=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lfyiY-0003KT-Fp
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:44:37 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 98D865803ED;
 Mon, 10 May 2021 01:44:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 10 May 2021 01:44:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=E8QunPh9AaMnR
 gR+ENPZuJJI09F8EPSuDjGchklbXy8=; b=ci1Usrf1jf2DBeAn6MFtJNhve1NwA
 gjTe1jVG0rdmByllTmNu7H0U+K8RSlcKwR0UD4nJcT7Gkuai219yAj5jgSMm6DYd
 HUYP1/0T6hhMBdWREGIafGmh4R52A8yVQTW8N17fTxMnBIsVkJ8v29tHVUUGNFOB
 XtmH0j/NF+hlA6XGv/+j6Fx0G9E8wZv/aKNY25R4w0iU+Op+1OzOnM+snepW+0Jf
 VfnklXDjwnGuoPZbrzN6IpxfpEAamj+RSrFB2JjSumPCM1EfaYzbDGLjDJBAA7rA
 fhKpZzb4LpsemG764keME44qjZshs7/KZtwr+8ZOyBSV6EDafsC9l8ueQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=E8QunPh9AaMnRgR+ENPZuJJI09F8EPSuDjGchklbXy8=; b=klEKiaei
 SrE0ckKtCFdFf+eEJ2WCv8u+m+5LNs09+rl5UX4c+aJiYNtqxTcHvBYUIc/p2bxv
 RQSUjH74K+tRrjy+YRlDLJ1opjp1uwCpHg+Ql95+pkdVceUUE74hhUY/ajzoY9mK
 oXbxlnyMT/4kN7V6+4pHFznXQV9if9+2BHvezaBQp2SV7Z8yF3NtboJYoFKYIHFK
 DJrJmZvuafoNNEjHp36LKgVUMdOLN6b39IunkluKbwiBlO07YH3iL4PlwiuKqChY
 h2ShAYsJRXPBIOvbhwSHRXPGUWQ9iXOn+KKSXXEOrJBMdELu+FzFordDDLdiX/HF
 I6pK2OIHb4c0bA==
X-ME-Sender: <xms:PciYYCZlJov8g_FNkOjgwkLCNn-H_OB-e_p1oCJJPT7qtvsfq114ng>
 <xme:PciYYFZRNzlcO9657hfMOICBenW4AFcPEQfuiRt3i1n6BhKSGzmlftd0kzmHBxI_X
 WVR8x13TVN1BPv9Iw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtffrrghtth
 gvrhhnpeejgfdvveehteekveeggeellefgleetteejffelffdvudduveeiffegteelvefh
 teenucfkphepvddtfedrheejrddvudehrdeknecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:PciYYM89SZaognR9-5oOPejqMpuwTbLrV7uwTCnTZiOekj7ZyWD_Xw>
 <xmx:PciYYEq3bowAkiDKmbnbCX_9mUexpHB8JtOAYl6swEQL0OjwzHAKEw>
 <xmx:PciYYNpKTKTSpNZvnFYwaPbSQsorvgGojA0N9gjB-eS3KO_mk8YvGw>
 <xmx:PciYYIC9AZg5Q6aJAqkiTigRDfgEXW0sL890E2-zZO5rSFSB79-Zow>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:44:23 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:10 +0930
Message-Id: <20210510054213.1610760-14-andrew@aj.id.au>
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
X-Headers-End: 1lfyiY-0003KT-Fp
Subject: [Openipmi-developer] [PATCH v3 13/16] dt-bindings: ipmi: Add
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
 linux-aspeed@lists.ozlabs.org, Rob Herring <robh@kernel.org>,
 avifishman70@gmail.com, venture@google.com, chiawei_wang@aspeedtech.com,
 linux-kernel@vger.kernel.org, tali.perry1@gmail.com, robh+dt@kernel.org,
 arnd@arndb.de, zweiss@equinix.com, linux-arm-kernel@lists.infradead.org,
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
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
