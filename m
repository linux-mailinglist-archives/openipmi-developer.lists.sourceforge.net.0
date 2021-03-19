Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53411341563
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Mar 2021 07:28:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lN8cx-00010y-Ee; Fri, 19 Mar 2021 06:28:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lN8cv-00010G-Fe
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eAeeFPa/3aS0LUUJ3Y67rAstef4Oy7Z+U7b9/nIh0GQ=; b=IMNjX9Eho2UE3PZ1M2ReI8jrT/
 A6n1pfUKdJvmFDXeJ2BzEcf+b4my2P+dBHSn0rpnpMysK1R425ksr3s7warOBGPSPlaCjoFovld5U
 Bj9mtR3bXl31zeoqg2heC//jVIsGv/T1p32fumkGXg8dCF7LU4WAeFtnFnyCWC+G1nUA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eAeeFPa/3aS0LUUJ3Y67rAstef4Oy7Z+U7b9/nIh0GQ=; b=MD9szJM4eCl0wxySWLhfrj00IS
 GNYtGLnfbtzgA6y/YNRLWejxWW1Udy5SYxYL+6UFZd+4+tZfbV52pt61VgekaijQRoTZY5o04mDWH
 xq5jVL4l5sU7n0EopvBZOheDIIBmo7/9AFbOuAKQSPjzDpHifK07BiYe7fL+Ttmr0CN0=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lN8ce-0004VJ-2v
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:28:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 895DF580A7B;
 Fri, 19 Mar 2021 02:28:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 02:28:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=eAeeFPa/3aS0L
 UUJ3Y67rAstef4Oy7Z+U7b9/nIh0GQ=; b=M4xB4XoJiCL++vUJ99KH80XBrH4hC
 WlyyFJSgNHAWjwNJ4vyKpvnmX0ydndXoUv7JBe74K/zUxFHwwPbb+cWSHSr5y+Z5
 0nKk6UE0De/kcyzbV43st9zp7pjXCBmIWdlBJtVFnPArPeL0WgzXuuUkUqoqK9+I
 scw/EOdLGf6SQ3iYZ9pYuydUfF+X8DOd7tR8XRU9oSrhdpBl+BADbQe6FCTbkODd
 dN74ZJSb27hGgq7G4w0tKqrbaOMmA2coPb+fTAyRahwFMzHgRKBiG3t3YaFt7LgL
 cZQJBiHbPOrPCdlR7pBrX8/df26vkTyeR8otPvvEVArLxZIvt4QQm8/QQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=eAeeFPa/3aS0LUUJ3Y67rAstef4Oy7Z+U7b9/nIh0GQ=; b=piUHoLXx
 DQgEWcCanDwsgpfRRukcbhbVWYyWRFpHUviUxg3rvK9zYs10Sxi0LiluSAia2CT5
 h3CECGrCqsBKmkYy6N2WXvqhCw9w3C1c2u+3hmj4wPVzHLtV93vzKTcJlOqOcL0s
 eJH8/pNRm5hY/k7KIJkG7/wn5KxVEymRttB5GkCkKcVImz1YSE6XMV5z6NsUuLne
 OD3mP2GFByUaqNHPTmI/SvmXa25fnLuyWsy42UkBbnN6ohVUmGZBlScOVE32l58q
 1ozQ8zLeYUEHLjWmI9k7mB/0p/FS68ukv5PhY0IbNc9G9L2t34jNlw4fzmclL0zq
 mVy6COGPWiZsog==
X-ME-Sender: <xms:jkRUYFfULbyQwfQ9U_AYFMm4pJx414cwr13jZQ9tuiI3TBU0cVnEvQ>
 <xme:jkRUYDOvc8b0ZDleJV4_lS3Wqpi5rH-VE4PIZDcElkKKTFyDRPOYcvuA1uM7NOSeP
 dASt_FdR342vnU7UA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucggtffrrghtth
 gvrhhnpeejgfdvveehteekveeggeellefgleetteejffelffdvudduveeiffegteelvefh
 teenucfkphepuddukedrvddutddrudekuddrheehnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:jkRUYOjCDSOKkPluc94Dn_Ev8G6K4OGkupsEjoYRXSvXaqTrF6HMvg>
 <xmx:jkRUYO_Yu2zX7d_MEgSivIyiTcw5asfMblFHffJCEpgRF2nvsBqSWA>
 <xmx:jkRUYBvceYsfRPA2DTSdRrj_lb7ZQCvsKE5-TJXUODO3UKlobwp_Eg>
 <xmx:jkRUYK_dQL6uIDIbpgIMfL3BSckj7HP0pRbgauiwwrTL4yQrOqcUpg>
Received: from localhost.localdomain
 (ppp118-210-181-55.adl-adc-lon-bras34.tpg.internode.on.net [118.210.181.55])
 by mail.messagingengine.com (Postfix) with ESMTPA id F113624005D;
 Fri, 19 Mar 2021 02:28:24 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Fri, 19 Mar 2021 16:57:33 +1030
Message-Id: <20210319062752.145730-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210319062752.145730-1-andrew@aj.id.au>
References: <20210319062752.145730-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aspeedtech.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lN8ce-0004VJ-2v
Subject: [Openipmi-developer] [PATCH v2 02/21] ARM: dts: Remove LPC BMC and
 Host partitions
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
Cc: devicetree@vger.kernel.org, ryan_chen@aspeedtech.com, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 lee.jones@linaro.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>

The LPC controller has no concept of the BMC and the Host partitions.

A concrete instance is that the HICRB[5:4] are for the I/O port address
configurtaion of KCS channel 1/2. However, the KCS driver cannot access
HICRB for channel 1/2 initialization via syscon regmap interface due to
the parition boundary. (i.e. offset 80h)

In addition, for the HW design backward compatibility, a newly added HW
control bit could be located at any reserved one over the LPC addressing
space. Thereby, this patch removes the lpc-bmc and lpc-host child node
and thus the LPC partitioning.

Note that this change requires the synchronization between device tree
change and the driver change. To prevent the misuse of old devicetrees
with new drivers, or vice versa, the v2 compatible strings are adopted
for the LPC device as listed:

	"aspeed,ast2400-lpc-v2"
	"aspeed,ast2500-lpc-v2"
	"aspeed,ast2600-lpc-v2"

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g4.dtsi |  70 +++++++-----------
 arch/arm/boot/dts/aspeed-g5.dtsi | 121 +++++++++++++-----------------
 arch/arm/boot/dts/aspeed-g6.dtsi | 123 +++++++++++++------------------
 3 files changed, 133 insertions(+), 181 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index e7a45ba18fc9..c5aeb3cf3a09 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -343,59 +343,45 @@ vuart: serial@1e787000 {
 			};
 
 			lpc: lpc@1e789000 {
-				compatible = "aspeed,ast2400-lpc", "simple-mfd";
+				compatible = "aspeed,ast2400-lpc-v2", "simple-mfd", "syscon";
 				reg = <0x1e789000 0x1000>;
+				reg-io-width = <4>;
 
 				#address-cells = <1>;
 				#size-cells = <1>;
 				ranges = <0x0 0x1e789000 0x1000>;
 
-				lpc_bmc: lpc-bmc@0 {
-					compatible = "aspeed,ast2400-lpc-bmc";
-					reg = <0x0 0x80>;
+				lpc_ctrl: lpc-ctrl@80 {
+					compatible = "aspeed,ast2400-lpc-ctrl";
+					reg = <0x80 0x10>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
+					status = "disabled";
 				};
 
-				lpc_host: lpc-host@80 {
-					compatible = "aspeed,ast2400-lpc-host", "simple-mfd", "syscon";
-					reg = <0x80 0x1e0>;
-					reg-io-width = <4>;
-
-					#address-cells = <1>;
-					#size-cells = <1>;
-					ranges = <0x0 0x80 0x1e0>;
-
-					lpc_ctrl: lpc-ctrl@0 {
-						compatible = "aspeed,ast2400-lpc-ctrl";
-						reg = <0x0 0x10>;
-						clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
-						status = "disabled";
-					};
-
-					lpc_snoop: lpc-snoop@10 {
-						compatible = "aspeed,ast2400-lpc-snoop";
-						reg = <0x10 0x8>;
-						interrupts = <8>;
-						clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
-						status = "disabled";
-					};
+				lpc_snoop: lpc-snoop@90 {
+					compatible = "aspeed,ast2400-lpc-snoop";
+					reg = <0x90 0x8>;
+					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
+					status = "disabled";
+				};
 
-					lhc: lhc@20 {
-						compatible = "aspeed,ast2400-lhc";
-						reg = <0x20 0x24 0x48 0x8>;
-					};
+				lhc: lhc@a0 {
+					compatible = "aspeed,ast2400-lhc";
+					reg = <0xa0 0x24 0xc8 0x8>;
+				};
 
-					lpc_reset: reset-controller@18 {
-						compatible = "aspeed,ast2400-lpc-reset";
-						reg = <0x18 0x4>;
-						#reset-cells = <1>;
-					};
+				lpc_reset: reset-controller@98 {
+					compatible = "aspeed,ast2400-lpc-reset";
+					reg = <0x98 0x4>;
+					#reset-cells = <1>;
+				};
 
-					ibt: ibt@c0  {
-						compatible = "aspeed,ast2400-ibt-bmc";
-						reg = <0xc0 0x18>;
-						interrupts = <8>;
-						status = "disabled";
-					};
+				ibt: ibt@140 {
+					compatible = "aspeed,ast2400-ibt-bmc";
+					reg = <0x140 0x18>;
+					interrupts = <8>;
+					status = "disabled";
 				};
 			};
 
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 21930521a986..d733c1f161c1 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -434,91 +434,74 @@ vuart: serial@1e787000 {
 			};
 
 			lpc: lpc@1e789000 {
-				compatible = "aspeed,ast2500-lpc", "simple-mfd";
+				compatible = "aspeed,ast2500-lpc-v2", "simple-mfd", "syscon";
 				reg = <0x1e789000 0x1000>;
+				reg-io-width = <4>;
 
 				#address-cells = <1>;
 				#size-cells = <1>;
 				ranges = <0x0 0x1e789000 0x1000>;
 
-				lpc_bmc: lpc-bmc@0 {
-					compatible = "aspeed,ast2500-lpc-bmc", "simple-mfd", "syscon";
-					reg = <0x0 0x80>;
-					reg-io-width = <4>;
-
-					#address-cells = <1>;
-					#size-cells = <1>;
-					ranges = <0x0 0x0 0x80>;
-
-					kcs1: kcs@24 {
-						compatible = "aspeed,ast2500-kcs-bmc-v2";
-						reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
-						interrupts = <8>;
-						status = "disabled";
-					};
-					kcs2: kcs@28 {
-						compatible = "aspeed,ast2500-kcs-bmc-v2";
-						reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
-						interrupts = <8>;
-						status = "disabled";
-					};
-					kcs3: kcs@2c {
-						compatible = "aspeed,ast2500-kcs-bmc-v2";
-						reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
-						interrupts = <8>;
-						status = "disabled";
-					};
+				kcs1: kcs@24 {
+					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
+					interrupts = <8>;
+					status = "disabled";
 				};
 
-				lpc_host: lpc-host@80 {
-					compatible = "aspeed,ast2500-lpc-host", "simple-mfd", "syscon";
-					reg = <0x80 0x1e0>;
-					reg-io-width = <4>;
+				kcs2: kcs@28 {
+					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
+					interrupts = <8>;
+					status = "disabled";
+				};
 
-					#address-cells = <1>;
-					#size-cells = <1>;
-					ranges = <0x0 0x80 0x1e0>;
+				kcs3: kcs@2c {
+					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
+					interrupts = <8>;
+					status = "disabled";
+				};
 
-					kcs4: kcs@94 {
-						compatible = "aspeed,ast2500-kcs-bmc-v2";
-						reg = <0x94 0x1>, <0x98 0x1>, <0x9c 0x1>;
-						interrupts = <8>;
-						status = "disabled";
-					};
+				kcs4: kcs@114 {
+					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
+					interrupts = <8>;
+					status = "disabled";
+				};
 
-					lpc_ctrl: lpc-ctrl@0 {
-						compatible = "aspeed,ast2500-lpc-ctrl";
-						reg = <0x0 0x10>;
-						clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
-						status = "disabled";
-					};
+				lpc_ctrl: lpc-ctrl@80 {
+					compatible = "aspeed,ast2500-lpc-ctrl";
+					reg = <0x80 0x10>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
+					status = "disabled";
+				};
 
-					lpc_snoop: lpc-snoop@10 {
-						compatible = "aspeed,ast2500-lpc-snoop";
-						reg = <0x10 0x8>;
-						interrupts = <8>;
-						clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
-						status = "disabled";
-					};
+				lpc_snoop: lpc-snoop@90 {
+					compatible = "aspeed,ast2500-lpc-snoop";
+					reg = <0x90 0x8>;
+					interrupts = <8>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
+					status = "disabled";
+				};
 
-					lpc_reset: reset-controller@18 {
-						compatible = "aspeed,ast2500-lpc-reset";
-						reg = <0x18 0x4>;
-						#reset-cells = <1>;
-					};
+				lpc_reset: reset-controller@98 {
+					compatible = "aspeed,ast2500-lpc-reset";
+					reg = <0x98 0x4>;
+					#reset-cells = <1>;
+				};
 
-					lhc: lhc@20 {
-						compatible = "aspeed,ast2500-lhc";
-						reg = <0x20 0x24 0x48 0x8>;
-					};
+				lhc: lhc@a0 {
+					compatible = "aspeed,ast2500-lhc";
+					reg = <0xa0 0x24 0xc8 0x8>;
+				};
 
 
-					ibt: ibt@c0 {
-						compatible = "aspeed,ast2500-ibt-bmc";
-						reg = <0xc0 0x18>;
-						interrupts = <8>;
-						status = "disabled";
-					};
+				ibt: ibt@140 {
+					compatible = "aspeed,ast2500-ibt-bmc";
+					reg = <0x140 0x18>;
+					interrupts = <8>;
+					status = "disabled";
 				};
 			};
 
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
index 3ee470c2b7b5..f96607b7b4e2 100644
--- a/arch/arm/boot/dts/aspeed-g6.dtsi
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -460,91 +460,74 @@ wdt4: watchdog@1e7850c0 {
 			};
 
 			lpc: lpc@1e789000 {
-				compatible = "aspeed,ast2600-lpc", "simple-mfd";
+				compatible = "aspeed,ast2600-lpc-v2", "simple-mfd", "syscon";
 				reg = <0x1e789000 0x1000>;
+				reg-io-width = <4>;
 
 				#address-cells = <1>;
 				#size-cells = <1>;
 				ranges = <0x0 0x1e789000 0x1000>;
 
-				lpc_bmc: lpc-bmc@0 {
-					compatible = "aspeed,ast2600-lpc-bmc", "simple-mfd", "syscon";
-					reg = <0x0 0x80>;
-					reg-io-width = <4>;
-
-					#address-cells = <1>;
-					#size-cells = <1>;
-					ranges = <0x0 0x0 0x80>;
-
-					kcs1: kcs@24 {
-						compatible = "aspeed,ast2500-kcs-bmc-v2";
-						reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
-						interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
-						kcs_chan = <1>;
-						status = "disabled";
-					};
-					kcs2: kcs@28 {
-						compatible = "aspeed,ast2500-kcs-bmc-v2";
-						reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
-						interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
-						status = "disabled";
-					};
-					kcs3: kcs@2c {
-						compatible = "aspeed,ast2500-kcs-bmc-v2";
-						reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
-						interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-						status = "disabled";
-					};
+				kcs1: kcs@24 {
+					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
+					interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
+					kcs_chan = <1>;
+					status = "disabled";
 				};
 
-				lpc_host: lpc-host@80 {
-					compatible = "aspeed,ast2600-lpc-host", "simple-mfd", "syscon";
-					reg = <0x80 0x1e0>;
-					reg-io-width = <4>;
+				kcs2: kcs@28 {
+					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
+					interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+					status = "disabled";
+				};
 
-					#address-cells = <1>;
-					#size-cells = <1>;
-					ranges = <0x0 0x80 0x1e0>;
+				kcs3: kcs@2c {
+					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
+					interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+					status = "disabled";
+				};
 
-					kcs4: kcs@94 {
-						compatible = "aspeed,ast2500-kcs-bmc-v2";
-						reg = <0x94 0x1>, <0x98 0x1>, <0x9c 0x1>;
-						interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-						status = "disabled";
-					};
+				kcs4: kcs@114 {
+					compatible = "aspeed,ast2500-kcs-bmc-v2";
+					reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
+					interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+					status = "disabled";
+				};
 
-					lpc_ctrl: lpc-ctrl@0 {
-						compatible = "aspeed,ast2600-lpc-ctrl";
-						reg = <0x0 0x80>;
-						clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
-						status = "disabled";
-					};
+				lpc_ctrl: lpc-ctrl@80 {
+					compatible = "aspeed,ast2600-lpc-ctrl";
+					reg = <0x80 0x80>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
+					status = "disabled";
+				};
 
-					lpc_snoop: lpc-snoop@0 {
-						compatible = "aspeed,ast2600-lpc-snoop";
-						reg = <0x0 0x80>;
-						interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
-						clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
-						status = "disabled";
-					};
+				lpc_snoop: lpc-snoop@80 {
+					compatible = "aspeed,ast2600-lpc-snoop";
+					reg = <0x80 0x80>;
+					interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
+					status = "disabled";
+				};
 
-					lhc: lhc@20 {
-						compatible = "aspeed,ast2600-lhc";
-						reg = <0x20 0x24 0x48 0x8>;
-					};
+				lhc: lhc@a0 {
+					compatible = "aspeed,ast2600-lhc";
+					reg = <0xa0 0x24 0xc8 0x8>;
+				};
 
-					lpc_reset: reset-controller@18 {
-						compatible = "aspeed,ast2600-lpc-reset";
-						reg = <0x18 0x4>;
-						#reset-cells = <1>;
-					};
+				lpc_reset: reset-controller@98 {
+					compatible = "aspeed,ast2600-lpc-reset";
+					reg = <0x98 0x4>;
+					#reset-cells = <1>;
+				};
 
-					ibt: ibt@c0 {
-						compatible = "aspeed,ast2600-ibt-bmc";
-						reg = <0xc0 0x18>;
-						interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
-						status = "disabled";
-					};
+				ibt: ibt@140 {
+					compatible = "aspeed,ast2600-ibt-bmc";
+					reg = <0x140 0x18>;
+					interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+					status = "disabled";
 				};
 			};
 
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
