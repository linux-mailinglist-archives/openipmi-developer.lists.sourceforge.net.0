Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D39F729C84
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Jun 2023 16:15:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1q7ctE-0000tz-Uf;
	Fri, 09 Jun 2023 14:14:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <krzysztof.kozlowski@linaro.org>) id 1q7ctB-0000tp-TF
 for openipmi-developer@lists.sourceforge.net;
 Fri, 09 Jun 2023 14:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BNpjcXkr4XdA1aEMYzKVhMl+Nwfx5E6NuXkWy4+942c=; b=fHo+69mJJ44cclbyJG9HkZT5nf
 NdSWNe0OhWL/Lo65ecfcP1EQCLOgtBbntVFsG7oTBp0IcKzCPvUORDjP7Xit5FS1MN+lbdPhKF1J6
 1qPy0Ycqn15eHQs0ElskFCsUHCdDzPjo+RMsiI+bmIRxY3bjkhFhths6SDEC1/cguTr0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BNpjcXkr4XdA1aEMYzKVhMl+Nwfx5E6NuXkWy4+942c=; b=A
 FRCPqbyBlhkTivnZNDWnbnbGgLVkfYfw1l9q+mHtnO3ePkJzYyIQtN4T3S7gLBBI6YhXBvahHnRDV
 WieI8hkLHKPSdjQ7QWu2mV72GGXkn4+ZuZmsv3YqW9TtRXbBbQiQTSWk+NtFXVuWLaLwoQtHrCupL
 LDy+gvqiFBR3VDZc=;
Received: from mail-ej1-f45.google.com ([209.85.218.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q7ct8-00FgXJ-0F for openipmi-developer@lists.sourceforge.net;
 Fri, 09 Jun 2023 14:14:54 +0000
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-97881a996a0so332613666b.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Jun 2023 07:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1686320083; x=1688912083;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=BNpjcXkr4XdA1aEMYzKVhMl+Nwfx5E6NuXkWy4+942c=;
 b=e4GKaDZmBuBB0LTSjsB7HRtbXpSFLZuQSQauL2VbZRZ93IyFVQvBGBQAb3QHobO8pb
 DPq+dRpGQHmoOUs/8bZbR3PHb+59/gwkl0oUDYSHj0yV/5+7pBie7VTFXgpTrBHbyKXf
 fGBtq6MiNPWBIWnnyW18b636vjfvC8aUTbmYH6MrwnzD4NYlj3e6MLp5LsoJnSzgmyw/
 Dr+JGZcuh3605o6Je5ldpJRPlqIAeApz7itNcF2mXqYsEIIl9s2CmF+ORXzUYQN+MrIn
 O6v1wqbgMf0ZckazjryKkD+2pRkYXSOqv/VLa2GDM9NpkHcm10aFOtUrmsGNRDgNf73c
 qrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686320083; x=1688912083;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BNpjcXkr4XdA1aEMYzKVhMl+Nwfx5E6NuXkWy4+942c=;
 b=EmaKroH3FkasA61PpnvH+N5RYJgHybqLQ5lPUUi4UrgxaP65bYi+XGC5zf8k9rggGJ
 LAmtUpGXdVhDVAijNZXtkkJvgp8/b7E+P7mz1l7pZeVzfqyVHRx5dZOfdpy8d3YNF4MT
 gz4WByMzJgmz8i+l+k4kDVh0OX53VbiorTuCt2SpHnDJQwxamtUK/K4pAbADnnWn5AUo
 ekbawSNhnVpU75t3UvtUHHBDMKkVaSnaWsug2XrB3OPQN3hC/PF7ZYoYbh69erTT2Bia
 g0LuD5+GK1ej9OfNbH62t1p/KXVqxgz8Z6idvvzCYY7/lrgE6M08ocuzIWVxDT63YR3i
 +tBw==
X-Gm-Message-State: AC+VfDyr5tu28L9Rhd1E3OHiJYXbieGb0aOu0UmhwO+umEbJRIF+yKaG
 wR4UERavFxieh1Dia+Z+57FdJ3y4vnGDvW1jn5w=
X-Google-Smtp-Source: ACHHUZ6tu0S7jpijz8wYA/H2VIUA9frrKVPVS0WyI8s8uHqseYj4pLDhHub+2PrCg8ZxcgNEya9nBQ==
X-Received: by 2002:a19:5f5d:0:b0:4f6:2b74:d05c with SMTP id
 a29-20020a195f5d000000b004f62b74d05cmr1033768lfj.62.1686319652088; 
 Fri, 09 Jun 2023 07:07:32 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26]) by smtp.gmail.com with ESMTPSA id
 n24-20020a05640206d800b005169f9365c3sm1807036edy.20.2023.06.09.07.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Jun 2023 07:07:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Date: Fri,  9 Jun 2023 16:07:29 +0200
Message-Id: <20230609140729.64799-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Cleanup bindings dropping unneeded quotes. Once all these
 are fixed,
 checking for this can be enabled in yamllint. Signed-off-by: Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org> ---
 .../devicetree/bindings/ipmi/aspeed, ast2400-kcs-bmc.yaml
 | 8 ++++---- 1 file changed, 4 insertions(+), 4 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.45 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.45 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q7ct8-00FgXJ-0F
Subject: [Openipmi-developer] [PATCH] dt-bindings: ipmi: aspeed,
 ast2400-kcs-bmc: drop unneeded quotes
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
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml  | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
index 4ff6fabfcb30..129e32c4c774 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
@@ -41,7 +41,7 @@ properties:
       - description: STR register
 
   aspeed,lpc-io-reg:
-    $ref: '/schemas/types.yaml#/definitions/uint32-array'
+    $ref: /schemas/types.yaml#/definitions/uint32-array
     minItems: 1
     maxItems: 2
     description: |
@@ -50,7 +50,7 @@ properties:
       status address may be optionally provided.
 
   aspeed,lpc-interrupts:
-    $ref: "/schemas/types.yaml#/definitions/uint32-array"
+    $ref: /schemas/types.yaml#/definitions/uint32-array
     minItems: 2
     maxItems: 2
     description: |
@@ -63,12 +63,12 @@ properties:
 
   kcs_chan:
     deprecated: true
-    $ref: '/schemas/types.yaml#/definitions/uint32'
+    $ref: /schemas/types.yaml#/definitions/uint32
     description: The LPC channel number in the controller
 
   kcs_addr:
     deprecated: true
-    $ref: '/schemas/types.yaml#/definitions/uint32'
+    $ref: /schemas/types.yaml#/definitions/uint32
     description: The host CPU IO map address
 
 required:
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
