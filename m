Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6299B9A9569
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Oct 2024 03:23:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t33cW-0006yo-33;
	Tue, 22 Oct 2024 01:23:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1t33cV-0006yg-1M
 for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Oct 2024 01:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VxtXGGp+IPO+JLVgjZAJAUQ+Dzcq0V5RhM6NRuq/n0k=; b=R1fk5hAWZDxsiqUHt9i7o2B/HS
 a+ZRNK8DP6hC/RBbxABUVM7ml0u+AarQFSISjKsstQ9GkjrMiJ7kHklCTYlIwywwWc7sOHxdE6FQw
 ohohP0L9rLmwSBLnjV1cFPMdnh3+QCBjjinydqAF4AeE7XoaiCpjb/qUOz2xDL+HEwsc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VxtXGGp+IPO+JLVgjZAJAUQ+Dzcq0V5RhM6NRuq/n0k=; b=c7W3GaHWQKzL4jMPdGjtOv9M23
 gjjckmHgeS/GiO1F8u08d1tw+p+zqo2kXB1lqi+gO13b9LYS4Pr6kHonmKzYq7e8S3qdtVmcl3IQS
 znfpO8zFA8/rTW/ZZJslPNDg9gMPoG2QpxbpdhdvRXTUsfH5k689abGLN01jNvrWahuw=;
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t33cU-0003tu-F6 for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Oct 2024 01:23:34 +0000
Received: by mail-pj1-f43.google.com with SMTP id
 98e67ed59e1d1-2e2ad9825a7so3365713a91.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 21 Oct 2024 18:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729560204; x=1730165004; darn=lists.sourceforge.net;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=VxtXGGp+IPO+JLVgjZAJAUQ+Dzcq0V5RhM6NRuq/n0k=;
 b=ayiJYuT6EgPhJZzrsO4/g5b1KxchgfD/jGt/XAfq76x8v3s1blV91al3hhfVya97Rn
 MTPbCQdujS/OR2eWNA7GBVNLdiNmw1VH+jV9/w5+zbTPNZTygpcBz/O9gQgu0b3yAiMZ
 xhgCT0nsPdIJn+y1V0xjKWbP6VwwC1lWFq0U+Ftch+PvAUdfXvdoyr1qohKn6URK1bDw
 jure/qtIXAOmMkeEZUPVX792s/woWMq4AG8eGWtvNUpHZJeVsgvjY5lMBBom7EIfjMOT
 SRP7lVUesqv4KdZd9FNp03zmCzBUKJJeBok5rvK6NBcSR3BKDLHZOp5AZ+HxhdwJLWXN
 8Kbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729560204; x=1730165004;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VxtXGGp+IPO+JLVgjZAJAUQ+Dzcq0V5RhM6NRuq/n0k=;
 b=Zz8fvsQa3ZmV0TH/sna0SMK+JFenRKoED5awfd7XUCfs6/vIX/DU061Gu6D/3qHB6q
 JNIvymr+lxFC1h5nvZ8xc6OlnzQaUCnuQ3UHvjWFPd8IgK0ckrAknDoin9k7c9cG59V3
 faaPazwrLifE2RhY4Gz1XxpDMuh0InOvfcvqvoNXwFUT4uy+uxZL9QP0Xb3CRQiZ75S0
 hP+5AuPVskZNDrwmYe1gQaByA9ti1jb/q4mE30Pt2DnklGLllXN6tY3Ps0QLPFRrDuEO
 gJvBbFVOUfbRBLdyCF9WO6/V+/a+or9nIjmSw7OwwR73rTES/PkntK3/ocUxapBYC+8d
 YvaQ==
X-Gm-Message-State: AOJu0YwwPHF1e8u/K5MKqdjMKpwYsaOZSa5urowUw4KVHfF7aVNuhrzD
 h57nGkQzNJrm/bDLLUbdWdjZyyEXX+VQ/AntiJbRx2700qklhAGS
X-Google-Smtp-Source: AGHT+IGEcA425R+zt7O3mhkGya1ytfmxp/EH1+frDZZC/31L7dOO7/HqcpoC1ICNuNvhynWfycL5WQ==
X-Received: by 2002:a17:90a:d90c:b0:2e5:5ab5:ba52 with SMTP id
 98e67ed59e1d1-2e56165ea76mr16533853a91.20.1729560203752; 
 Mon, 21 Oct 2024 18:23:23 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e5ad365d14sm4718919a91.13.2024.10.21.18.23.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2024 18:23:23 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Tue, 22 Oct 2024 09:20:46 +0800
MIME-Version: 1.0
Message-Id: <20241022-ssif-alert-gpios-v2-1-c7dd6dd17a7e@gmail.com>
References: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
In-Reply-To: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 Patrick Williams <patrick@stwcx.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729560198; l=1245;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=nn2Rxbzki8aH4042gmU46/WUTDCnn3JnpSpUDXByOCQ=;
 b=HwcYWWEZRDQhw8ANje8Mjiy2UnduAhS0y+SPltj9xaSY/Bfrd4THWJtvnIZNOU9IFMTUcMHVn
 3w2/K7UFoQaD+KjlbUYoHCi4s159GrnsOPBBSoDM6ISpSc6LhdzE/PZ
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Introduce the `alert-gpios` property to define an alert pin, 
 enabling the BMC to notify the host when a response is available.
 Signed-off-by:
 Potin Lai --- Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 8
 ++++++++ 1 file changed, 8 insertions(+) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.43 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t33cU-0003tu-F6
Subject: [Openipmi-developer] [PATCH v2 1/2] bindings: ipmi: Add alert GPIO
 enhancement for SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Potin Lai <potin.lai.pt@gmail.com>,
 Cosmo Chou <cosmo.chou@quantatw.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Introduce the `alert-gpios` property to define an alert pin, enabling
the BMC to notify the host when a response is available.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
index 02b662d780bb..7142151a3787 100644
--- a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
@@ -19,6 +19,12 @@ properties:
   reg:
     maxItems: 1
 
+  alert-gpios:
+    description:
+      GPIO pin designated for SSIF alert, used by the BMC to notify the
+      host when a response is available.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -27,6 +33,7 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     i2c {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -34,5 +41,6 @@ examples:
         ssif-bmc@10 {
             compatible = "ssif-bmc";
             reg = <0x10>;
+            alert-gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
         };
     };

-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
