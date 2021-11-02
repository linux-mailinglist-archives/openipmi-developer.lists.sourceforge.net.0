Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8A744372C
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 21:18:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi0EN-00076X-2a; Tue, 02 Nov 2021 20:18:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@intel.com>) id 1mi0EF-000768-Ov
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 20:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EfrlSiefor7vQGkhy9HO/5QfAtBXG3apK4+SLTt/t90=; b=gnbGGpwCyelGUYMnbQ2Ngk48IG
 SFHZZUklCuZVKmcrvTIhaKxsZxYqU6C9al9edlTCNKpi60kjeueV4etKK4pz5yhLa1i0/f3Rm9KAc
 siXPe1frEvjo4+UEdXlFy+NWQjHboHua3K+83EFM3P5R1GIjFiNb7WN4QRv4tJhu24lY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EfrlSiefor7vQGkhy9HO/5QfAtBXG3apK4+SLTt/t90=; b=E3iVuitxa5twsOXAytREEPV2eI
 ZHqGTkF0dFG/iT4BL6bWpWJCGWrkex9zCxrebjmMxk0Lo0BMIQU608Zvuh0pmwMtDeO7pXs9Sl3yD
 WpdmFQ3y/lSLQOe2sSSsFv/dmddVs8sGt9u6iMGotCMW/kTOXBIYxVWCAD+zOXLRx4MQ=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi0ED-0001zn-Qq
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 20:17:54 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="317561516"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="317561516"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 13:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="500738810"
Received: from maru.jf.intel.com ([10.54.51.77])
 by orsmga008.jf.intel.com with ESMTP; 02 Nov 2021 13:17:47 -0700
From: jae.hyun.yoo@intel.com
To: Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Date: Tue,  2 Nov 2021 13:37:12 -0700
Message-Id: <20211102203717.96794-2-jae.hyun.yoo@intel.com>
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
 Content preview:  From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> Add LCLK
 clock setting into LPC IBT node to enable the LCLK by individual LPC sub
 drivers. Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
 Reviewed-by:
 Joel Stanley <joel@jms.id.au> --- v1 -> v2: - No change. 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mi0ED-0001zn-Qq
Subject: [Openipmi-developer] [PATCH -next v2 1/6] ARM: dts: aspeed: add
 LCLK setting into LPC IBT node
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

Add LCLK clock setting into LPC IBT node to enable the LCLK by
individual LPC sub drivers.

Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
v1 -> v2:
 - No change.

 arch/arm/boot/dts/aspeed-g4.dtsi | 1 +
 arch/arm/boot/dts/aspeed-g5.dtsi | 1 +
 arch/arm/boot/dts/aspeed-g6.dtsi | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index b313a1cf5f73..f14dace34c5a 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -381,6 +381,7 @@ ibt: ibt@140 {
 					compatible = "aspeed,ast2400-ibt-bmc";
 					reg = <0x140 0x18>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index c7049454c7cb..d0cc4be2de59 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -507,6 +507,7 @@ ibt: ibt@140 {
 					compatible = "aspeed,ast2500-ibt-bmc";
 					reg = <0x140 0x18>;
 					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 			};
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 5106a424f1ce..465c3549fdc3 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -581,6 +581,7 @@ ibt: ibt@140 {
 					compatible = "aspeed,ast2600-ibt-bmc";
 					reg = <0x140 0x18>;
 					interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
 					status = "disabled";
 				};
 			};
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
