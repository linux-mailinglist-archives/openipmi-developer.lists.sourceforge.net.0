Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2AEA27A5B
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Feb 2025 19:44:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tfNuM-0002Z9-CA;
	Tue, 04 Feb 2025 18:44:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tfNuJ-0002Yt-46
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 18:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ftBo0P4wnz9NKDpBszzMvbwyZf8xb/pGYa+IgAkrrJs=; b=gA+rcFHIG+vG5zHkx1/6OBktKF
 5H23uLCeJeI3wRpbU/DaHkD5DiyYr0Mff0eHMnBO4tME7kjDqY3XqjNTicDoA7e30ndDVsXWirMMQ
 Z6Vu/+ehuohDD82Ax2J9L0XpgM3Q7zRhLPOnBRla4owrpIGQgIxz//q+kwX3saLEZjn4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ftBo0P4wnz9NKDpBszzMvbwyZf8xb/pGYa+IgAkrrJs=; b=XGkCHldBnOsEmNXKPf81oTzV2D
 Ic/DYIK7gsXT4CA1U+ri9tO5KEBn5+vSGwDHZu2oxf24YRQgzfOmQjKVuDE3VDpKP939+AZuQsS+j
 M/V0U+z07jQuBY7V0QzUJqj05AXXHRoQHn+eBZMGBl3NMnkDAdp4g74hniVOxEq4X7Tg=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfNuI-00089n-FI for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 18:44:23 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 514GEnM9023258;
 Tue, 4 Feb 2025 18:43:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=pp1; bh=ftBo0P4wnz9NKDpBs
 zzMvbwyZf8xb/pGYa+IgAkrrJs=; b=qJTkV2g9H+VKzkgK1iC9PJRulI+qPF91K
 DZuMO82Ba4wpj3gjskbvQWb80NEf31+sqBOjMd7Z6nwYakaBnvJEAXEQZh010QUE
 qUOsP/TlvwvcnDAmDbyRt/CsJG6+ekazN6kZqtNsgGSpWObxpJKnOLSDnBUgX0b7
 qmCkYrjyC5Nfpjzha/GbeeLffu1XbwjDpPy9dSjPyd7o4a3s8TjIDkmEZ7QRfOhe
 clg2DbJPFvs8NN+ResCECzaRGuh7tM36AHWPf1XetHSh1pOQ6y9loukmm0yl/ABC
 WFs3Sb+qEntRRQ03EZJVBZ8AiEiK8+U1Q+ir3xHOYtj/zA7+fkJTg==
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44kn62h6gm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 18:43:49 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 514G94ED024533;
 Tue, 4 Feb 2025 18:43:48 GMT
Received: from smtprelay02.dal12v.mail.ibm.com ([172.16.1.4])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 44hxxn4y16-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 18:43:48 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com
 [10.39.53.229])
 by smtprelay02.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 514IhlM225690652
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 4 Feb 2025 18:43:47 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 489925805E;
 Tue,  4 Feb 2025 18:43:47 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4FC0A5805B;
 Tue,  4 Feb 2025 18:43:46 +0000 (GMT)
Received: from gfwa153.aus.stglabs.ibm.com (unknown [9.3.84.127])
 by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Tue,  4 Feb 2025 18:43:46 +0000 (GMT)
To: brgl@bgdev.pl, linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, joel@jms.id.au,
 andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
 eajames@linux.ibm.com, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Date: Tue,  4 Feb 2025 12:43:32 -0600
Message-ID: <20250204184337.3896834-7-ninad@linux.ibm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204184337.3896834-1-ninad@linux.ibm.com>
References: <20250204184337.3896834-1-ninad@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: ok2NEFjTxTqDeVdTGWEB7G2t14OhTxAs
X-Proofpoint-ORIG-GUID: ok2NEFjTxTqDeVdTGWEB7G2t14OhTxAs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-04_08,2025-02-04_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0
 mlxlogscore=743 spamscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502040140
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Rename LEDs with meaningful names for easier identification.
 Reviewed-by: Eddie James <eajames@linux.ibm.com> Signed-off-by: Ninad Palsule
 <ninad@linux.ibm.com> --- .../dts/aspeed/aspeed-bmc-ibm-system1.dts | 36
 +++++++++ 1 file changed, 18 insertions [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tfNuI-00089n-FI
Subject: [Openipmi-developer] [PATCH v8 6/9] ARM: dts: aspeed: system1:
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
Cc: Ninad Palsule <ninad@linux.ibm.com>, andrew@lunn.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Rename LEDs with meaningful names for easier identification.

Reviewed-by: Eddie James <eajames@linux.ibm.com>
Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
---
 .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 36 +++++++++----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
index e02ff50fb48e..56357dda4b0a 100644
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
