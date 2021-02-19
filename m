Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE9E31FB43
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Feb 2021 15:49:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lD76P-0000c4-AF; Fri, 19 Feb 2021 14:49:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lD739-0000TY-Vt
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Feb 2021 14:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VNXUckXhWf104SCgHGqEwb2slaaFyK0SHtZQq67z01A=; b=ZuT71VuOKuy3sfqAuTRaltzmkw
 RoleYJJ34e8C/AW8SeXZdsQ69WHkkEe0yEvRj3eJFqkcp3RfBXcHJEriw36EuFZBVe2ZtL8gcHQFs
 nKt8tK7rpywithfEDNG/knFEXdYz4FE0nQX6m3BVtpUgXXEgE60HPk5jxhFFdBoOuPWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VNXUckXhWf104SCgHGqEwb2slaaFyK0SHtZQq67z01A=; b=YcvL3y97grYiPOhc2g6xVUPlif
 GyyH09OMHQxGV2ocx29YKu670dm33790Joqo5nvjjLgBv51+7xe76zO9FT12GiQmuJGIcIo1BzAoU
 6ppvVgpTe9SJ9z6YxtziTTY6GudkisrTYWE+WCAQ267A2wQpKe9HLs3WArgfAztlh3Fk=;
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lD738-0000g0-5K
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Feb 2021 14:46:31 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 581FB5803C3;
 Fri, 19 Feb 2021 09:27:41 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Feb 2021 09:27:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=VNXUckXhWf104
 SCgHGqEwb2slaaFyK0SHtZQq67z01A=; b=LuAdh3bT24Cvz7Rbc4zR45ImmSGbg
 0Yz58kKjoaHl2THSVhpgfLhcVDP4szp1uO2/Kmk8kQb7683v6VaqoRpGw06ItnVc
 6bHe7X5azvxR2+Kas625hwwoM+XAZPJvOZG8eN4zH8UoDwmYJxMhlIM3p/AowYSd
 ZUUZnCQUHDlTPO2d893A3eP1ul4yqTcvYvFlPOMt1UCt5GIxhnGF0OW35NPyF4EL
 +ponm44NZfc/nXhcRZwVIcoTSl0vYzzpnEZqlmtwylQW18pJqSO/ji7qDre5oyHK
 7qU87c114lBEA+FujeS1MVhAjLtZs9RxbTZPO7+Wni8goexS4uTTonBIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=VNXUckXhWf104SCgHGqEwb2slaaFyK0SHtZQq67z01A=; b=VCr6wQiG
 IctyXO7SLN9mFvT6o++LRDoYmgrWh6CDC045msp3FkToGtudYMYfY7PTs1mQMT+E
 4fJ9i8WoDNrWcD903JvBxycvAt9TqQMyu2ijas5gKcYjkioMVX9/guUyDMfaLTYj
 qqRcuGKZv4fAlNyv5czCGzPnRFpJv92pVo9I+wj4BTrUSWtpitMayFLfkKF/1miL
 YNQPMxZIA5te7C9Pt6/eiG6zZkJ8p6vPM9Chtv17/lF9OnBvJDLyGhIfqHJ1svxF
 iLTWuvdLwi7GzkJAXThVBbwAUcRYkIdGqeLAzRPYH5SyoH5scKydiEDyPFv77MP2
 8ZQigCW0YSTSKA==
X-ME-Sender: <xms:3covYGMvKRsIfOvVfmeijimdV3GtAHANZiw2JVn0lM956G6l--B-iA>
 <xme:3covYE87VmJ3utNkw0IOb4n3uM7PM4ZVOxTdOg5cMf9JodhDTBx9kmHh0L0ZB1xki
 kaLi96vair6A3-y6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucggtffrrghtthgvrhhnpeejgfdvveehteekveeggeellefgleette
 ejffelffdvudduveeiffegteelvefhteenucfkphepudegrddvrdeluddrfeejnecuvehl
 uhhsthgvrhfuihiivgepleenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifse
 grjhdrihgurdgruh
X-ME-Proxy: <xmx:3covYNSSNH6BgmqXNgqPF0O0ENakk2A5vV22P5MP8z0qwzJLZvRhFw>
 <xmx:3covYGtooHBVwAgY6YdDapYLHsb8y-EeIyQhvgQY8vy5IShQ1J-_Zg>
 <xmx:3covYOdbBFvWMvNj9W7N7ILEZ9ydQK7RBVoCciNWGCZ3G5ALJqSS3g>
 <xmx:3covYBtyTHAKfBFJrw4hgNXud8JAP7AQOO2tuPsJfrqpClLBFiZlSA>
Received: from localhost.localdomain
 (ppp14-2-91-37.adl-apt-pir-bras31.tpg.internode.on.net [14.2.91.37])
 by mail.messagingengine.com (Postfix) with ESMTPA id DAE33240064;
 Fri, 19 Feb 2021 09:27:34 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Sat, 20 Feb 2021 00:55:21 +1030
Message-Id: <20210219142523.3464540-18-andrew@aj.id.au>
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
 for more information. [URIs: aj.id.au]
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
X-Headers-End: 1lD738-0000g0-5K
Subject: [Openipmi-developer] [PATCH 17/19] dt-bindings: ipmi: Add optional
 SerIRQ property to ASPEED KCS devices
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
 avifishman70@gmail.com, venture@google.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, tali.perry1@gmail.com, yuenn@google.com,
 robh+dt@kernel.org, lee.jones@linaro.org, chiawei_wang@aspeedtech.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
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
index 1c1cc4265948..808475a2c2ca 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
@@ -47,6 +47,18 @@ properties:
       channels the status address is derived from the data address, but the
       status address may be optionally provided.
 
+  aspeed,lpc-interrupts:
+    $ref: "/schemas/types.yaml#/definitions/uint32-matrix"
+    minItems: 1
+    maxItems: 1
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
