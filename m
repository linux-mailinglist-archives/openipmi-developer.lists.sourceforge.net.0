Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6C244372D
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 21:18:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi0EN-00076h-BO; Tue, 02 Nov 2021 20:18:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@intel.com>) id 1mi0EH-00076I-Md
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 20:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lb7fWTwHlv37hX7FZ1Nl12bzyC5Au/3ipGLtHjJtXCI=; b=mifhYnZgzTN1Kf9ctTka2J24dL
 xotZ3R+IZPC6FYEWKPFpN3RYIWGaJcmyf+rMNL2JgflcXqkHheMRexJJwNr555cUMBJt3hUv+xY24
 Fna6c2iurhAXlkAwvFiSUwuYiChngl2fBWkBRdCW3fAZGKa+QW24lgCq4YFDS+NCFxSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lb7fWTwHlv37hX7FZ1Nl12bzyC5Au/3ipGLtHjJtXCI=; b=klPnrplsK955Ton442XzY7dVGw
 AT6MVfvzL6m6Rbb2VZQ/zIIkIwbWUVf4AjUV5s3eFJH+/rR6jJpP9WnpfpSKkRG+hlTd7ZBQCeK44
 c3B36JFA7XJqWs508fM6TRNeZlAREnh8JILtRUhi6tZLDZEFcSFx8aLAjdtFOHL3Uf/Q=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi0EF-0001zn-EY
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 20:17:56 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="317561524"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="317561524"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 13:17:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="500738819"
Received: from maru.jf.intel.com ([10.54.51.77])
 by orsmga008.jf.intel.com with ESMTP; 02 Nov 2021 13:17:48 -0700
From: jae.hyun.yoo@intel.com
To: Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Date: Tue,  2 Nov 2021 13:37:16 -0700
Message-Id: <20211102203717.96794-6-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> Add
 'clocks' as a required property. Signed-off-by: Jae Hyun Yoo
 <jae.hyun.yoo@linux.intel.com>
 --- v1 -> v2: Changes sinve v1: - Added 'clocks' property into kcs-bmc
 bindings
 using 'aspeed,ast2400-kcs-bmc.yaml' because it's not merged i [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mi0EF-0001zn-EY
Subject: [Openipmi-developer] [PATCH -next v2 5/6] dt-bindings: ipmi: aspeed,
 kcs-bmc: add 'clocks' as a required property
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Add 'clocks' as a required property.

Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
v1 -> v2:
Changes sinve v1:
 - Added 'clocks' property into kcs-bmc bindings using
   'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
   'aspeed-lpc.yaml' yet. The bindings merging could be done using a
   separate patch later.

 .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
index 4ff6fabfcb30..92ec0da047f4 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
@@ -71,9 +71,14 @@ properties:
     $ref: '/schemas/types.yaml#/definitions/uint32'
     description: The host CPU IO map address
 
+  clocks:
+    maxItems: 1
+    description: Reference clock for the LPC controller
+
 required:
   - compatible
   - interrupts
+  - clocks
 
 additionalProperties: false
 
@@ -96,6 +101,7 @@ allOf:
 
 examples:
   - |
+    #include <dt-bindings/clock/aspeed-clock.h>
     #include <dt-bindings/interrupt-controller/irq.h>
     kcs3: kcs@24 {
         compatible = "aspeed,ast2600-kcs-bmc";
@@ -103,4 +109,5 @@ examples:
         aspeed,lpc-io-reg = <0xca2>;
         aspeed,lpc-interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
         interrupts = <8>;
+        clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
     };
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
