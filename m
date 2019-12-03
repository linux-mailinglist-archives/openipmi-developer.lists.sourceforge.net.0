Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F8610FE30
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Dec 2019 13:56:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ic7j3-0004Kd-OC; Tue, 03 Dec 2019 12:56:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1ic7j1-0004KQ-DB
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 12:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8ZlgpTfN5GmTh4i624Rlcksvxj54ouDMeKXMopZs1XE=; b=Q87xpDD2gIr8D5KxZfuqs/7Ksd
 AvgfqFOA6YU712tTepHnxfc/736j+chuqAliYnpy94XJwDCf4UAs6k3tymFxW4UAZjII9GSG4TXJG
 l8n+rLhe6xgTy8KEbemw1cb8rvUS68O1KUW5byhP65YoE/LG1jFqeJLVfPiujE0gZnGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8ZlgpTfN5GmTh4i624Rlcksvxj54ouDMeKXMopZs1XE=; b=Ecm5rqujjLkhLo0+ngjZyHRaME
 BUJL6KK6F6fInf6g8g7WMpiqwQM1wuaQfUMOPw7AgI4Dj3GF1V4d+FRkFtvEetAxngai3LU9KjCjY
 BeA6UDl/XyaIsnSQHyTamfVO6hmwOrYoRCVm0K3doszYa11YXhWFvlkhHPi75X46tvfo=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ic7iz-005wzn-3Y
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 12:56:19 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C07C76E64;
 Tue,  3 Dec 2019 07:36:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:36:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=8ZlgpTfN5GmTh
 4i624Rlcksvxj54ouDMeKXMopZs1XE=; b=fC0cu19wEM2nuuI5OlavXIp8itYWV
 MAH8uNjjus+ai8C9rm581qD0MGE1MQPfCpHT7k+Xx35iLwXZ2dPFcyj2R5QFVFVK
 r/J3HC1BEhFFf0RuQWMBX8XwNJO3uUhTs/RwIW1QjzrymgrvaUTbgXKLzqTJh2/1
 4FYbS+JLNj84ju6+5VJm/uAXF79suZDe0HAqQBct3qPeQ2T/9C5E0WH8Qea0/doi
 Su8LonezleqcHA7Y6DBaYeucKmUn/6YlAjgtN64z6KdQvRQpwf0gNBDPCMdTPyvj
 qKe7Z9bMdVUNknbT5aZPKfHUI9c5U2xMz8JZfbM4geoZAXOJ+IW1QFymQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=8ZlgpTfN5GmTh4i624Rlcksvxj54ouDMeKXMopZs1XE=; b=f8zM9Bg2
 5+XdexcX1HdP+Nc0MizFl6zEBAtqnyFjbCDVmk1mFsAHDEvAJgr1gQO2xuSfHJkn
 SivHEtnq1C3wfUzFk/e5r94KjpbN89eUNJhJui596uKZ4zR6e6DzLPRF+6ZoknZr
 aBD7x5basN5cFNZZx7WBM5TpfTDpNE3jrQFmXvGRrb5z7JJR6XJO/vLTwxxF+wKD
 UtaIvBpEnWvVsCK/Mdoona/hpli6E8EkIhMyXnHRpT1ghOlGw9mRCzJyMzHacDs+
 ndM7/f3Gnojt6yep89I7bdsY8EYbtWkDIXCwv5/W54AEU6PAeORXoqvrZ3IfBFPG
 SPx3C9uA3BqhFg==
X-ME-Sender: <xms:3lbmXXS06qAsIh1BD-aS17ZHpW-GEbJiEHKRu2oXaFu-aW0z7zRjfw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgeptd
X-ME-Proxy: <xmx:3lbmXXCTd7ecyAxMLtfyGT24QKHC1-5VqEBO9Mr-W6TJktoEgv5lIw>
 <xmx:3lbmXWKq7o7n15b5OIJLdTrvWZEtXvERoKNQrQAM0mPq52D1awf3HQ>
 <xmx:3lbmXaBq701cVdq9NzQP08T5sOdl2RqeYoADJt6NbxwzN1vp-neKxw>
 <xmx:3lbmXYx9LTKAIt-N3KHwH-c1NkSLOm35M-eWZyFJ3EVsEmSM2KYvSA>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id ABCD5306017A;
 Tue,  3 Dec 2019 07:36:42 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Date: Tue,  3 Dec 2019 23:08:23 +1030
Message-Id: <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
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
X-Headers-End: 1ic7iz-005wzn-3Y
Subject: [Openipmi-developer] [PATCH 1/3] dt-bindings: ipmi: aspeed:
 Introduce a v2 binding for KCS
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The v2 binding utilises reg and renames some of the v1 properties.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
index d98a9bf45d6c..76b180ebbde4 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
+++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
@@ -1,9 +1,10 @@
-* Aspeed KCS (Keyboard Controller Style) IPMI interface
+# Aspeed KCS (Keyboard Controller Style) IPMI interface
 
 The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
 (Baseboard Management Controllers) and the KCS interface can be
 used to perform in-band IPMI communication with their host.
 
+## v1
 Required properties:
 - compatible : should be one of
     "aspeed,ast2400-kcs-bmc"
@@ -12,14 +13,21 @@ Required properties:
 - kcs_chan : The LPC channel number in the controller
 - kcs_addr : The host CPU IO map address
 
+## v2
+Required properties:
+- compatible : should be one of
+    "aspeed,ast2400-kcs-bmc-v2"
+    "aspeed,ast2500-kcs-bmc-v2"
+- reg : The address and size of the IDR, ODR and STR registers
+- interrupts : interrupt generated by the controller
+- slave-reg : The host CPU IO map address
 
 Example:
 
-    kcs3: kcs3@0 {
-        compatible = "aspeed,ast2500-kcs-bmc";
-        reg = <0x0 0x80>;
+    kcs3: kcs@24 {
+        compatible = "aspeed,ast2500-kcs-bmc-v2";
+        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
         interrupts = <8>;
-        kcs_chan = <3>;
-        kcs_addr = <0xCA2>;
+        slave-reg = <0xca2>;
         status = "okay";
     };
-- 
git-series 0.9.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
