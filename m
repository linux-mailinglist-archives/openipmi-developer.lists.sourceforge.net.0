Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 065C5A27B8F
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Feb 2025 20:41:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tfOnt-0003sJ-UL;
	Tue, 04 Feb 2025 19:41:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tfOns-0003sC-Gu
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 19:41:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MbUuesV7B/Hl/l+uRNAZvT3az2VOWPemnWYXP7QjbFY=; b=Jf9deVB/vRICxjSYPmsyGfpJ3k
 jc33j5jxHH6wH1TnIzVKKDR9iqshJ/5nhhluk/Vv/MUFtrTXrWnVDkMip+zdk5+RXpnPyVsAgV16e
 JTI+k3l0El2/fHSMagSmUIO9sbR3BISA80qIJD/z/PTPBsazPxNkiWgMedTJPi5AaFPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MbUuesV7B/Hl/l+uRNAZvT3az2VOWPemnWYXP7QjbFY=; b=FzkrNboxlUvLVCZmKKdCRTxBlG
 w/InggnEy05r5bWgJpi8RAffcOPz4gGdpjaymLMdd/73qvcvFu8C41A6PPf3s4VW3m6tqJWrovLYF
 EHzhAgq6FcJrQnT/3huRd2WtAn4SYQLEju0Lhu1ZeYZOgbimgUitXLBRV+wW/Qi/NfcE=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfOns-0005w7-Ku for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 19:41:49 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 514GFPFv024364;
 Tue, 4 Feb 2025 19:41:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=pp1; bh=MbUuesV7B/Hl/l+uR
 NAZvT3az2VOWPemnWYXP7QjbFY=; b=mfhw66uKmm8BxnsgCgJLIsdhW1vJfQscd
 mmKfUd8bZWTQZ8TGBagUh1QAbH7X7J4ByXhVJSlE/O4VRb2LmTPu4GFtyCb8bkMt
 cJVRKYVrStxVDiShjz6Hvca8ZnDaf3hqKZ1uyEr+70oXSV2ilQEMKEUWKdOeaGkV
 Uk6GKmPD3pLZ/EMdtSSgtp+CLwIBIihhzJzw5iHjqXJdjEHMNWuBWmpsPNigzxvG
 6gInvh5bwEYlu60O2hd0KGiAHceDV4LL6Eh3gE885BfC/NSbddxjE8DoHQ522rs0
 p5jFL0GOQ9Fz13ZNT/I3mHHsgVQHtenBqlXi6XsMFVdaM0yaOeN+w==
Received: from ppma12.dal12v.mail.ibm.com
 (dc.9e.1632.ip4.static.sl-reverse.com [50.22.158.220])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44kn62hf0b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 19:41:20 +0000 (GMT)
Received: from pps.filterd (ppma12.dal12v.mail.ibm.com [127.0.0.1])
 by ppma12.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 514JDKq3016276;
 Tue, 4 Feb 2025 19:41:19 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
 by ppma12.dal12v.mail.ibm.com (PPS) with ESMTPS id 44hwxsdbjy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 19:41:19 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com
 [10.241.53.105])
 by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 514JfImn13501086
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 4 Feb 2025 19:41:18 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 963CB5805D;
 Tue,  4 Feb 2025 19:41:18 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3DCCF58059;
 Tue,  4 Feb 2025 19:41:18 +0000 (GMT)
Received: from gfwa153.aus.stglabs.ibm.com (unknown [9.3.84.127])
 by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue,  4 Feb 2025 19:41:18 +0000 (GMT)
To: brgl@bgdev.pl, linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, joel@jms.id.au,
 andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
 eajames@linux.ibm.com, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Date: Tue,  4 Feb 2025 13:41:06 -0600
Message-ID: <20250204194115.3899174-4-ninad@linux.ibm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204194115.3899174-1-ninad@linux.ibm.com>
References: <20250204194115.3899174-1-ninad@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: f2KqIpIvJv-cO3JFZ_qSlfMcUEbPYTxy
X-Proofpoint-ORIG-GUID: f2KqIpIvJv-cO3JFZ_qSlfMcUEbPYTxy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-04_09,2025-02-04_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0
 mlxlogscore=741 spamscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502040143
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add IPMB device sitting behind PCH module Reviewed-by: Eddie
 James <eajames@linux.ibm.com> Signed-off-by: Ninad Palsule
 <ninad@linux.ibm.com>
 --- arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts | 9 +++++++++ 1 file
 changed, 9 insertions(+ [...] 
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tfOns-0005w7-Ku
Subject: [Openipmi-developer] [PATCH v9 3/9] ARM: dts: aspeed: system1: Add
 IPMB device
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

Add IPMB device sitting behind PCH module

Reviewed-by: Eddie James <eajames@linux.ibm.com>
Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
index 360b9ce3c850..53d0abece02c 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-system1.dts
@@ -763,6 +763,15 @@ i2c3mux0chn7: i2c@7 {
 
 &i2c4 {
 	status = "okay";
+	multi-master;
+	bus-frequency = <1000000>;
+
+	ipmb@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+
+		i2c-protocol;
+	};
 };
 
 &i2c5 {
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
