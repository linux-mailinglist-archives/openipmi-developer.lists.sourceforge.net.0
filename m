Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A947ABDA631
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Oct 2025 17:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YS6runNqnREonvtdpcw1E/QQYTwgMps9dQsO5FOWKUI=; b=CIoeusjXPDyxecRA+NE+TbxGx1
	Ku8mNB5b9a6OKL8Nnk61V51WzqlASdIEV+cYxQJP/3UZwL1+MeYz39SpKIWVpgAWsHfDScdujIYWI
	seNLGDcKjgG+eRWyTT0Sl01EAexqQXg0EyCzsFNFoVFmO+uoWkkkZt2DJ5R0BAFF/Ux4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8gyU-00034g-7T;
	Tue, 14 Oct 2025 15:30:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1v8gyS-00034Z-Vs
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 15:30:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WJ3wgMAYUBjmffEpxEcFsRtBghftLqNL1ylvJ36Y1bw=; b=CsqQkE5Y2zu3IBSuCrjPjpzxNl
 U9T7+9IIb11KJFSLxIvwAi7hwgwPFDio3DmbbLLXh2zRxnoTZA80TWtWw2Gb7pHeNzexOFOJwYLHM
 Oan8D9m6KHBZ8EgcIN4aLmx4VZ9iG143boHDHwnEUVO+ibw6RCtBycUGJP9y6jG6JErk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WJ3wgMAYUBjmffEpxEcFsRtBghftLqNL1ylvJ36Y1bw=; b=A
 VWSrQGF1ig/FoaqtWne0gxzHdaqSh9TizjpCLtZ2mISIbSEKevtSXo1n5CfgjJstyxFVmRVQy6d/m
 ACeSFkPGmhYUpfR7UY3ktrMGL3St2NQpEcGyOIAEo6PMn0Xku800JRQAJnlZgCwabw1ILnViul42s
 K6zProMfkfCJ+l0U=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8gyS-0003lQ-6W for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 15:30:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 85CDC6230A;
 Tue, 14 Oct 2025 15:29:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F40A1C4CEE7;
 Tue, 14 Oct 2025 15:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760455793;
 bh=zYExi83W0RHyJrqMwtyqJRZDpbfqUykmcag8kOhkVUI=;
 h=From:To:Cc:Subject:Date:From;
 b=eMkaAH4VUyJhLA+HEJG27I9pneelGaB8Y6DWmSQOO2qeeoZXmbHeHdaRSz/LHr53U
 JPYOf98BlNoLSMpffIHQoztBZpWlMtYt//Z+NMY0C8lTN6IkgBtGj+7sZaFBKvazQK
 E9CtgO2JZrsSYLEub6xnkVsKyOp4AhLYEisIjvdpRIP1O2+7+P2jkRaUBf1tzHqlfH
 Od4tZLfPZ1AKRu1RegKMPhC2hGkEE4jilFtA7C3oxCdksozbgdtDOoVcIe2rNQvbih
 2H4v9pDdDYwYpxfza+OAhd/gDcolFANkctu1tFo+4aYdsjhR+LX7aiqEH1EE3GDS1/
 ocRhZ/HwW3phw==
To: Corey Minyard <corey@minyard.net>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>
Date: Tue, 14 Oct 2025 10:29:47 -0500
Message-ID: <20251014152948.3782738-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Convert the aspeed,
 ast2400-ibt-bmc binding to DT schema format.
 It's a straight-forward conversion. Signed-off-by: Rob Herring (Arm)
 <robh@kernel.org>
 --- .../bindings/ipmi/aspeed, ast2400-ibt-bmc.txt | 28 .../bindings/ipmi/aspeed,
 ast2400-ibt-bmc.yaml | 44 +++++++++++++++++++ 2 files cha [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8gyS-0003lQ-6W
Subject: [Openipmi-developer] [PATCH] dt-bindings: ipmi: Convert aspeed,
 ast2400-ibt-bmc to DT schema
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
From: "Rob Herring \(Arm\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rob Herring \(Arm\)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Convert the aspeed,ast2400-ibt-bmc binding to DT schema format. It's a
straight-forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt  | 28 ------------
 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
deleted file mode 100644
index 25f86da804b7..000000000000
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-* Aspeed BT (Block Transfer) IPMI interface
-
-The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
-(BaseBoard Management Controllers) and the BT interface can be used to
-perform in-band IPMI communication with their host.
-
-Required properties:
-
-- compatible : should be one of
-	"aspeed,ast2400-ibt-bmc"
-	"aspeed,ast2500-ibt-bmc"
-	"aspeed,ast2600-ibt-bmc"
-- reg: physical address and size of the registers
-- clocks: clock for the device
-
-Optional properties:
-
-- interrupts: interrupt generated by the BT interface. without an
-  interrupt, the driver will operate in poll mode.
-
-Example:
-
-	ibt@1e789140 {
-		compatible = "aspeed,ast2400-ibt-bmc";
-		reg = <0x1e789140 0x18>;
-		interrupts = <8>;
-		clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
-	};
diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
new file mode 100644
index 000000000000..c4f7cdbbe16b
--- /dev/null
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-ibt-bmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Aspeed Block Transfer (BT) IPMI interface
+
+maintainers:
+  - Joel Stanley <joel@jms.id.au>
+
+properties:
+  compatible:
+    enum:
+      - aspeed,ast2400-ibt-bmc
+      - aspeed,ast2500-ibt-bmc
+      - aspeed,ast2600-ibt-bmc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/aspeed-clock.h>
+
+    bt@1e789140 {
+        compatible = "aspeed,ast2400-ibt-bmc";
+        reg = <0x1e789140 0x18>;
+        interrupts = <8>;
+        clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
+    };
-- 
2.51.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
