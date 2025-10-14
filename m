Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C40BDA62E
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Oct 2025 17:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1lg+LvgFMe9Z2EL0I8fj0CvAozgZuApTJiLwi91a00o=; b=kBo+wlMk9sMFC2Ro7vdJO2dAkm
	6mz1Jxkc3c8jUIQaWYNpAEycmL9M0YqkuRIwlK5ldHqzltBIP7IkFsxoMDEbOPkXo3ve3wqi6hgZm
	7Kkot0I24OSQBo19j8D2b92X8wW1+yO6FbGDRyJhbAtJY0aLUd9qRyM5xiyI22O0s7Xs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8gyL-0004wL-KX;
	Tue, 14 Oct 2025 15:29:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1v8gyJ-0004w8-Lw
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 15:29:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1tjjJZTPucC0/IqLn+TggSumRZ38XQb/kTlvPmf+FTw=; b=c3vW5lMETsQP+zsj1+srDof/Zb
 W9PQEVV/XeENL8X73xdksFg0il+6e8vg8Wk6KthDi/7KokFlIeRQWT+geUYA8N1ANaMa7LHxM8KAW
 asj7+r1wu2UKskR1BUlJh6ZfAUX5wpm5VUVYrT9Rus/SfdpcgR0w4JpMKHW7l2wLtwkM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1tjjJZTPucC0/IqLn+TggSumRZ38XQb/kTlvPmf+FTw=; b=K
 tLu3xal02SH8KAPUy2u283oe7Wzxc/7iUd9teVSpkjIKrr1x48ytTs31BjnSLVGcWjr6pMxIjHj/P
 xNMLqhwgqiWFqRKpJGxJzfOEgbI57YuTINVTP6uOUNmSfRPuVzKl8QBdkcCNmAJFpkaYMsdRD6ZP2
 nlx5v6rhMFvJs72Y=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8gyI-0003l0-OX for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 15:29:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 48F1045263;
 Tue, 14 Oct 2025 15:29:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D838AC4CEE7;
 Tue, 14 Oct 2025 15:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760455784;
 bh=BCLZnlFtfyfyqV95kvnr8DLzhbdzdFCeJdir6zX5uTc=;
 h=From:To:Cc:Subject:Date:From;
 b=Ui+5zuIWnH9o2ODiPohYBuH53HAXcp05rYdTb2k/l4FZoTMYVTi/zn2mHtu4w/lxw
 4DU9Ds3qR9LCrH7/YQhG3qZKpC0uS9r88ZG//Xe/U7h5UnivDsuLe8gDRQqdqSBC1b
 KQzYtLhIYs3yF0eT9UYpeOySOWVQKuhQ99brGjB4ZuTiTUUO+DqSGvumpszs7kE5CV
 uNGFXL7ivKgcEL+L7Z668sMoxp8Y9RHnwP5EVJcaN9vYxuvQC1GA6yKTpTuD/s/avo
 0zWtljnka2dgEzaAkYjQ8wcfF2tOSt9fsYmE5RWHhLKm2YHMMNsTVBCFerys4sxb7v
 1/o2JHyUIXgZw==
To: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>,
 Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>,
 Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>,
 Corey Minyard <corey@minyard.net>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Date: Tue, 14 Oct 2025 10:29:34 -0500
Message-ID: <20251014152935.3782463-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Convert the nuvoton,
 npcm750-kcs-bmc binding to DT schema format.
 It's a straight-forward conversion. Signed-off-by: Rob Herring (Arm)
 <robh@kernel.org>
 --- .../bindings/ipmi/npcm7xx-kcs-bmc.txt | 40 .../ipmi/nuvoton,
 npcm750-kcs-bmc.yaml
 | 55 +++++++++++++++++++ 2 files changed, 55 inse [...] 
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
X-Headers-End: 1v8gyI-0003l0-OX
Subject: [Openipmi-developer] [PATCH] dt-bindings: ipmi: Convert nuvoton,
 npcm750-kcs-bmc to DT schema
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Convert the nuvoton,npcm750-kcs-bmc binding to DT schema format. It's a
straight-forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/ipmi/npcm7xx-kcs-bmc.txt         | 40 --------------
 .../ipmi/nuvoton,npcm750-kcs-bmc.yaml         | 55 +++++++++++++++++++
 2 files changed, 55 insertions(+), 40 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
 create mode 100644 Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml

diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
deleted file mode 100644
index 4fda76e63396..000000000000
--- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-* Nuvoton NPCM KCS (Keyboard Controller Style) IPMI interface
-
-The Nuvoton SOCs (NPCM) are commonly used as BMCs
-(Baseboard Management Controllers) and the KCS interface can be
-used to perform in-band IPMI communication with their host.
-
-Required properties:
-- compatible : should be one of
-    "nuvoton,npcm750-kcs-bmc"
-    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
-- interrupts : interrupt generated by the controller
-- kcs_chan : The KCS channel number in the controller
-
-Example:
-
-    lpc_kcs: lpc_kcs@f0007000 {
-        compatible = "nuvoton,npcm750-lpc-kcs", "simple-mfd", "syscon";
-        reg = <0xf0007000 0x40>;
-        reg-io-width = <1>;
-
-        #address-cells = <1>;
-        #size-cells = <1>;
-        ranges = <0x0 0xf0007000 0x40>;
-
-        kcs1: kcs1@0 {
-            compatible = "nuvoton,npcm750-kcs-bmc";
-            reg = <0x0 0x40>;
-            interrupts = <0 9 4>;
-            kcs_chan = <1>;
-            status = "disabled";
-        };
-
-        kcs2: kcs2@0 {
-            compatible = "nuvoton,npcm750-kcs-bmc";
-            reg = <0x0 0x40>;
-            interrupts = <0 9 4>;
-            kcs_chan = <2>;
-            status = "disabled";
-        };
-    };
diff --git a/Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml
new file mode 100644
index 000000000000..fc5df1c5e3bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ipmi/nuvoton,npcm750-kcs-bmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton NPCM KCS BMC
+
+maintainers:
+  - Avi Fishman <avifishman70@gmail.com>
+  - Tomer Maimon <tmaimon77@gmail.com>
+  - Tali Perry <tali.perry1@gmail.com>
+
+description:
+  The Nuvoton SOCs (NPCM) are commonly used as BMCs (Baseboard Management
+  Controllers) and the KCS interface can be used to perform in-band IPMI
+  communication with their host.
+
+properties:
+  compatible:
+    oneOf:
+      - const: nuvoton,npcm750-kcs-bmc
+      - items:
+          - enum:
+              - nuvoton,npcm845-kcs-bmc
+          - const: nuvoton,npcm750-kcs-bmc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  kcs_chan:
+    description: The KCS channel number in the controller
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 3
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - kcs_chan
+
+additionalProperties: false
+
+examples:
+  - |
+    kcs@0 {
+        compatible = "nuvoton,npcm750-kcs-bmc";
+        reg = <0x0 0x40>;
+        interrupts = <9 4>;
+        kcs_chan = <1>;
+    };
-- 
2.51.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
