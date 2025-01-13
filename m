Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B99A0C1E0
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Jan 2025 20:49:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXQQy-0005vj-5u;
	Mon, 13 Jan 2025 19:49:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tXQQw-0005va-WF
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 19:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rk3OoVHAVYMfMoueIwWue8QGrekdaZap998SLuh1D5s=; b=JpI5CagF24bXxITRlnp6H8gPBh
 SEtPRRPrst3DsTv8k7mjfjZf7pkYs6rmXjkaI8z7lBbY/AguAl19D4gkJ1Y4TKrvU7CjGPtn9Hro+
 F+GimwtqxWjVk2eY0amNx6PeIfEm88J0VJRCogMyIhWlJ/6RFku9u5uCPjQPVd+iDeQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rk3OoVHAVYMfMoueIwWue8QGrekdaZap998SLuh1D5s=; b=R0QEaG85KVD9tg52Sat/zp8kCr
 d4YL4PXJb9I8owkKxiEDuMkGgLgl0xxOlSiPzX+PF5PfOjN5WH33BSz6B1O05bYPOUfxTdkc5klIw
 o6sG4bnPR83x/zQD+eLZyBvI53oWQnHxUTonaLaRw+7JmkwOV45nsPk6cpZox194H4fk=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tXQQx-0000jR-08 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Jan 2025 19:49:11 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DE7Pto021345;
 Mon, 13 Jan 2025 19:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=pp1; bh=rk3OoVHAVYMfMoueI
 wWue8QGrekdaZap998SLuh1D5s=; b=oIlho9shMERVqsdIICcMwTehdpOjGe+N4
 IfclfQVLR79TYAGW2CbRJy7hYuhhqyOWyGRIFy33FWSCOjgK+ACRn80jpRTmaTfr
 N/ADgOI8ZKo1JN2GpgF10+nPhWI5u5yo41ywI/XcxhHI92yIyiSwr2e4LmBe1CGV
 qGf0tjvNOqhwoBQmygm0ghL0PAQ+L8hqbJo9lTKSrnuRjj6J+NBnTMhzqvgdrUJ2
 QzhOvUDse/sn8U0VPZE8F95jXHLE6C4lnEjFQq+LFv7+4AB2jGMOXUNeheAghhOR
 rzKCij6weqbpoioiVi/5mqsv07NcJ06k3u4euOIBBEAEf7y3QuUBg==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4454a59hk6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:48:34 +0000 (GMT)
Received: from m0353725.ppops.net (m0353725.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 50DJmX3k016812;
 Mon, 13 Jan 2025 19:48:33 GMT
Received: from ppma13.dal12v.mail.ibm.com
 (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4454a59hk0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:48:33 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
 by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 50DHZ253001110;
 Mon, 13 Jan 2025 19:48:33 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
 by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 44456jqjpc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 13 Jan 2025 19:48:33 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com
 [10.39.53.229])
 by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 50DJmVw126084088
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jan 2025 19:48:31 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8429658058;
 Mon, 13 Jan 2025 19:48:31 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8089258059;
 Mon, 13 Jan 2025 19:48:30 +0000 (GMT)
Received: from gfwa153.aus.stglabs.ibm.com (unknown [9.3.84.127])
 by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 13 Jan 2025 19:48:30 +0000 (GMT)
To: minyard@acm.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, netdev@vger.kernel.org,
 joel@jms.id.au, andrew@codeconstruct.com.au,
 devicetree@vger.kernel.org, eajames@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Date: Mon, 13 Jan 2025 13:48:16 -0600
Message-ID: <20250113194822.571884-7-ninad@linux.ibm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250113194822.571884-1-ninad@linux.ibm.com>
References: <20250113194822.571884-1-ninad@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: fLWv9GfNnkhduomVILgjDvOfyYx89Ryi
X-Proofpoint-ORIG-GUID: -pa0ycg4fBcZih4yhdBwJFpsEnX_pQGR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 mlxlogscore=766 spamscore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501130156
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Rename LEDs with meaningful names for easier identification.
 Signed-off-by: Ninad Palsule <ninad@linux.ibm.com> ---
 .../dts/aspeed/aspeed-bmc-ibm-system1.dts
 | 36 +++++++++ 1 file changed, 18 insertions(+), 18 deletions(-) 
 Content analysis details:   (-2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-trusted.bondedsender.org]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 -1.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tXQQx-0000jR-08
Subject: [Openipmi-developer] [PATCH v4 6/9] ARM: dts: aspeed: system1:
 Update LED gpio name
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
From: Ninad Palsule via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Ninad Palsule <ninad@linux.ibm.com>
Cc: Ninad Palsule <ninad@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Rename LEDs with meaningful names for easier identification.

Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
---
 .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 36 +++++++++----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
index ca55a4fb6dff..1e0b1111ea9a 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
@@ -116,63 +116,63 @@ vga_memory: region@bf000000 {
 	leds {
 		compatible = "gpio-leds";
 
-		led-0 {
+		led-bmc-ready {
 			gpios = <&gpio0 ASPEED_GPIO(L, 7) GPIO_ACTIVE_HIGH>;
 		};
 
-		led-1 {
+		led-bmc-hb {
 			gpios = <&gpio0 ASPEED_GPIO(P, 7) GPIO_ACTIVE_HIGH>;
 		};
 
-		led-2 {
+		led-rear-enc-fault0 {
 			gpios = <&gpio0 ASPEED_GPIO(S, 6) GPIO_ACTIVE_HIGH>;
 		};
 
-		led-3 {
+		led-rear-enc-id0 {
 			gpios = <&gpio0 ASPEED_GPIO(S, 7) GPIO_ACTIVE_HIGH>;
 		};
 
-		led-4 {
+		led-fan0-fault {
 			gpios = <&pca3 5 GPIO_ACTIVE_LOW>;
 		};
 
-		led-5 {
+		led-fan1-fault {
 			gpios = <&pca3 6 GPIO_ACTIVE_LOW>;
 		};
 
-		led-6 {
+		led-fan2-fault {
 			gpios = <&pca3 7 GPIO_ACTIVE_LOW>;
 		};
 
-		led-7 {
+		led-fan3-fault {
 			gpios = <&pca3 8 GPIO_ACTIVE_LOW>;
 		};
 
-		led-8 {
+		led-fan4-fault {
 			gpios = <&pca3 9 GPIO_ACTIVE_LOW>;
 		};
 
-		led-9 {
+		led-fan5-fault {
 			gpios = <&pca3 10 GPIO_ACTIVE_LOW>;
 		};
 
-		led-a {
+		led-fan6-fault {
 			gpios = <&pca3 11 GPIO_ACTIVE_LOW>;
 		};
 
-		led-b {
+		led-nvmed0-fault {
 			gpios = <&pca4 4 GPIO_ACTIVE_HIGH>;
 		};
 
-		led-c {
+		led-nvmed1-fault {
 			gpios = <&pca4 5 GPIO_ACTIVE_HIGH>;
 		};
 
-		led-d {
+		led-nvmed2-fault {
 			gpios = <&pca4 6 GPIO_ACTIVE_HIGH>;
 		};
 
-		led-e {
+		led-nvmed3-fault {
 			gpios = <&pca4 7 GPIO_ACTIVE_HIGH>;
 		};
 	};
@@ -368,14 +368,14 @@ &gpio0 {
 	/*I0-I7*/	"","","","","","","","",
 	/*J0-J7*/	"","","","","","","","",
 	/*K0-K7*/	"","","","","","","","",
-	/*L0-L7*/	"","","","","","","","bmc-ready",
+	/*L0-L7*/	"","","","","","","","led-bmc-ready",
 	/*M0-M7*/	"","","","","","","","",
 	/*N0-N7*/	"pch-reset","","","","","flash-write-override","","",
 	/*O0-O7*/	"","","","","","","","",
-	/*P0-P7*/	"","","","","","","","bmc-hb",
+	/*P0-P7*/	"","","","","","","","led-bmc-hb",
 	/*Q0-Q7*/	"","","","","","","pch-ready","",
 	/*R0-R7*/	"","","","","","","","",
-	/*S0-S7*/	"","","","","","","rear-enc-fault0","rear-enc-id0",
+	/*S0-S7*/	"","","","","","","led-rear-enc-fault0","led-rear-enc-id0",
 	/*T0-T7*/	"","","","","","","","",
 	/*U0-U7*/	"","","","","","","","",
 	/*V0-V7*/	"","rtc-battery-voltage-read-enable","","power-chassis-control","","","","",
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
