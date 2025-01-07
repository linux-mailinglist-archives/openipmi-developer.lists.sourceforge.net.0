Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F148A04812
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Jan 2025 18:20:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVDFy-0008Iw-5n;
	Tue, 07 Jan 2025 17:20:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tVDFw-0008Io-HL
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 17:20:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T3YI0sFBhFDTDUYnCbQb2U5+D1I/OiNL7gPEpcZzlvc=; b=dCZacvtTnQ+2Su4LNuyPB8zEEu
 K3XDIOh+dogNYYcWT4gTkeH6fKFuEdpUpO0oEFqeGrlRnlZ/PDYH+wX+LAWpun28zvnBSlmvvwufu
 wTl25mNaRN1oBbKFoCXD0e0miwM3xTbomV90/wHMABICYWdXWUgBnSzKAzwgqbeObeOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T3YI0sFBhFDTDUYnCbQb2U5+D1I/OiNL7gPEpcZzlvc=; b=ezF2/N0jOxljjquuCSGRwH/DP3
 okJ5q27mTrACXrglS/aRCIBdd9pmF909D4w7S68Cpq8qglZ//Pk4fPIvspiLiN9lf/+1o0WTuy+Ug
 LkEhjtQq+V6aLPc0+j6JPbB7/dolW9g+0x1dWC9z3p5p0G3ucxVMaQ/8n63zXaHHp0Jg=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVDFv-0005Ra-OD for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 17:20:40 +0000
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507BWGgh009731;
 Tue, 7 Jan 2025 16:23:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=pp1; bh=T3YI0sFBhFDTDUYnC
 bQb2U5+D1I/OiNL7gPEpcZzlvc=; b=sUhvz9iv7X8muDs/+l7BCL1UCf1F2EymB
 zXwH429zGVvx1TOBSZaRejmpRnt2Yw9W40+clo1vs88H7a6jCBS1YXYhewhlPpC7
 ML0KSjEgnIMwmzjURo1zJtnq1m1lIMSydEUb7SM4opdRSYyIZYaCIC98bMQDXzMt
 pT5qcQ3l/VB4GEwHIGbBpQYf27mN+7putiN/95X8aseScClloPyp7FUU5CTQu6Gy
 Utycdl/53AqG1jvhL81omJHl+2MwsYfchV8TAGvfRJcvkrNK2E0KRRJu50EKioDk
 f3WGp+sZz7gfLQuF8gKLeE5w+40xz3NQmbRIPEBk8bFjFlb/X3KJA==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440s0abvw5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2025 16:23:57 +0000 (GMT)
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 507GNv9O021018;
 Tue, 7 Jan 2025 16:23:57 GMT
Received: from ppma13.dal12v.mail.ibm.com
 (dd.9e.1632.ip4.static.sl-reverse.com [50.22.158.221])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440s0abvw2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2025 16:23:57 +0000 (GMT)
Received: from pps.filterd (ppma13.dal12v.mail.ibm.com [127.0.0.1])
 by ppma13.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507ERsB3027976;
 Tue, 7 Jan 2025 16:23:56 GMT
Received: from smtprelay07.wdc07v.mail.ibm.com ([172.16.1.74])
 by ppma13.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yhhk34nw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2025 16:23:56 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com
 [10.241.53.100])
 by smtprelay07.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 507GNsKM525034
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 7 Jan 2025 16:23:54 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 819AF58058;
 Tue,  7 Jan 2025 16:23:54 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 47B3D58063;
 Tue,  7 Jan 2025 16:23:54 +0000 (GMT)
Received: from gfwa153.aus.stglabs.ibm.com (unknown [9.3.84.127])
 by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue,  7 Jan 2025 16:23:54 +0000 (GMT)
To: minyard@acm.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ninad@linux.ibm.com,
 ratbert@faraday-tech.com, openipmi-developer@lists.sourceforge.net,
 netdev@vger.kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
 devicetree@vger.kernel.org, eajames@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Date: Tue,  7 Jan 2025 10:23:45 -0600
Message-ID: <20250107162350.1281165-9-ninad@linux.ibm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250107162350.1281165-1-ninad@linux.ibm.com>
References: <20250107162350.1281165-1-ninad@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 1_3uMRz20beaWfdTC6mphqlGL-Ll-N3B
X-Proofpoint-ORIG-GUID: YJ6ZbhGc0E5iT_nkKOy8Czbb5FdZGSG4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501070133
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Removing voltage regulators max8952 from device tree. Those
 are fully controlled by hardware and firmware should not touch them.
 Signed-off-by: Ninad Palsule <ninad@linux.ibm.com> ---
 .../dts/aspeed/aspeed-bmc-ibm-system1.dts
 | 34 1 file changed, 34 deletions(-) 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1tVDFv-0005Ra-OD
Subject: [Openipmi-developer] [PATCH v2 08/10] ARM: dts: aspeed: system1:
 Remove VRs max8952
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Removing voltage regulators max8952 from device tree. Those are fully
controlled by hardware and firmware should not touch them.

Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
---
 .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 34 -------------------
 1 file changed, 34 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
index 5e6824836213..90570b4d6d35 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
@@ -514,23 +514,6 @@ eeprom@50 {
 		compatible = "atmel,24c64";
 		reg = <0x50>;
 	};
-
-	regulator@60 {
-		compatible = "maxim,max8952";
-		reg = <0x60>;
-
-		max8952,default-mode = <0>;
-		max8952,dvs-mode-microvolt = <1250000>, <1200000>,
-						<1050000>, <950000>;
-		max8952,sync-freq = <0>;
-		max8952,ramp-speed = <0>;
-
-		regulator-name = "VR_v77_1v4";
-		regulator-min-microvolt = <770000>;
-		regulator-max-microvolt = <1400000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
 };
 
 &i2c1 {
@@ -1226,23 +1209,6 @@ eeprom@50 {
 		compatible = "atmel,24c64";
 		reg = <0x50>;
 	};
-
-	regulator@60 {
-		compatible = "maxim,max8952";
-		reg = <0x60>;
-
-		max8952,default-mode = <0>;
-		max8952,dvs-mode-microvolt = <1250000>, <1200000>,
-						<1050000>, <950000>;
-		max8952,sync-freq = <0>;
-		max8952,ramp-speed = <0>;
-
-		regulator-name = "VR_v77_1v4";
-		regulator-min-microvolt = <770000>;
-		regulator-max-microvolt = <1400000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
 };
 
 &i2c11 {
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
