Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1F1442479
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 01:04:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhhIM-0003tB-Te; Tue, 02 Nov 2021 00:04:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@intel.com>) id 1mhgZU-00039e-T3
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rSsnhsjhUsc8f4ZZXuBBeUtumNmY4JVLWJfnpt+XM8A=; b=i3x31Cgpxwk2/rR7qKlPUTNpxd
 DCVmpVQUV7wFQ5nsuh1nZ35Et/ar9TXkNtR+ak8j3pFicnSIhMxDcwqEgmncPs0TA6Nrc36flNDBr
 5o8lPg1BRyISaXCMgBhy56owVAKsKgPSCrjiInNHGy0KuBmg6i6R5cK98UNwOQRBbANI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rSsnhsjhUsc8f4ZZXuBBeUtumNmY4JVLWJfnpt+XM8A=; b=evRXJboJ3wPCqBa603SA2gM/0T
 ajNaoUIuHEg7OnHy7pSIpWnaLnDNls6OQHEysh0Y06NpGHCSCELLMeN1itzWyTF0evKo8CDl8cwGb
 3J4bOBsThVjCsyEiE4BONEMZ2RRxSBGf8IpimvVnm/anK9r5oS1sWHH5fwm75Qwb2Mpg=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhgZU-00DBgH-Ak
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:18:32 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211196465"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="211196465"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 16:18:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="727670711"
Received: from maru.jf.intel.com ([10.54.51.77])
 by fmsmga005.fm.intel.com with ESMTP; 01 Nov 2021 16:18:24 -0700
From: jae.hyun.yoo@intel.com
To: Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Date: Mon,  1 Nov 2021 16:37:50 -0700
Message-Id: <20211101233751.49222-4-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> Add LCLK
 clock setting into LPC KCS nodes to enable the LCLK by individual LPC sub
 drivers. Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> ---
 arch/arm/boot/dts/aspeed-g5.dtsi
 | 4 ++++ arch/arm/boot/dts/aspeed-g6.dtsi | 4 ++++ 2 files changed,
 8 insertions(+)
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mhgZU-00DBgH-Ak
X-Mailman-Approved-At: Tue, 02 Nov 2021 00:04:52 +0000
Subject: [Openipmi-developer] [PATCH -next 3/4] ARM: dts: aspeed: add LCLK
 setting into LPC KCS nodes
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

Add LCLK clock setting into LPC KCS nodes to enable the LCLK by
individual LPC sub drivers.

Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 4 ++++
 arch/arm/boot/dts/aspeed-g6.dtsi | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index d0cc4be2de59..7495f93c5069 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -446,6 +446,7 @@ kcs1: kcs@24 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -453,6 +454,7 @@ kcs2: kcs@28 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -460,6 +462,7 @@ kcs3: kcs@2c {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -467,6 +470,7 @@ kcs4: kcs@114 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 465c3549fdc3..891b862363a7 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -520,6 +520,7 @@ kcs1: kcs@24 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
 					interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					kcs_chan = <1>;
 					status = "disabled";
 				};
@@ -528,6 +529,7 @@ kcs2: kcs@28 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
 					interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -535,6 +537,7 @@ kcs3: kcs@2c {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
 					interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
@@ -542,6 +545,7 @@ kcs4: kcs@114 {
 					compatible = "aspeed,ast2500-kcs-bmc-v2";
 					reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
 					interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
