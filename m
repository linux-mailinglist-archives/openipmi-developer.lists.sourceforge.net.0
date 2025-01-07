Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 676A2A04808
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Jan 2025 18:18:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVDDf-0003Hp-Q4;
	Tue, 07 Jan 2025 17:18:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tVDDd-0003HV-Ik
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 17:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m79slvYmcFGMNba4e5Lu8C/jeyYR7QGcVkmj9V6zJSw=; b=jPpx9KQ0uemThDpobcTmm5zcIK
 KxA3hwikdbNp6OujeyMHwAfP03v9re3UXcn3JSdGSHwusvbEs0VmWvzAZ8LOxEm28kmsGrkQnJN8s
 RCEO21TK4kZIJYApM0FBfq2gEe6irH50NAibFs3oopMpYkjDkD4bgTPxkQNQ2bs5PAfg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m79slvYmcFGMNba4e5Lu8C/jeyYR7QGcVkmj9V6zJSw=; b=fBg0Xzs2E9WciM26CrDMqAdtD/
 srjyalfvJlZUxTT71OE0urLnE5ueLGRWgohjsero4ZBBkbHkSGWCbaaWFCK49sNBCBqig8Ps6xfFY
 OV8W/vB3okGvdgwS8Tk01S6QrYWNvpUJFUhqdpogs1W/Wj11FMhlgIKsZmFNZi/vA5U0=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVDDc-0005LI-Vc for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Jan 2025 17:18:17 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507FtSAT028294;
 Tue, 7 Jan 2025 16:23:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=
 content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=pp1; bh=m79slvYmcFGMNba4e
 5Lu8C/jeyYR7QGcVkmj9V6zJSw=; b=TLiP103rBx6fqm2GOqK6av4q+ll+1FdTo
 nU6G7cAH0PCltLFCVCSS9g+R8ecm0FFD70MmVV8Q0Ntth/3UkWGMX6Ro8OMlJ1AB
 2P61JlKI9p7Y3+PMpCqDUEyTbn08anDoY3ahWG54Kchja5IVkT5kk5SecWuIh9d3
 5rO50BHr5Xyxztq8efPecd0rOsVlc3wKgPBhvqDrkg5gtYBudcP+EV8peRM3QRqf
 1MbyuowKGHAgxGhnJjrmXnK62+czIJebtLPjR5EAYDNXk1G1n4YpnhqR4Vjfbfuz
 D561uPqitSDR6Adl6/oGg+QNLbdGRc5qkwI9GMffREeZtmOVnkUgQ==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440vrjb8f5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2025 16:23:56 +0000 (GMT)
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 507G5vOt028941;
 Tue, 7 Jan 2025 16:23:55 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 440vrjb8ey-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2025 16:23:55 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507DDRip013648;
 Tue, 7 Jan 2025 16:23:54 GMT
Received: from smtprelay05.wdc07v.mail.ibm.com ([172.16.1.72])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43yganua95-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2025 16:23:54 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com
 [10.241.53.100])
 by smtprelay05.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 507GNqPF27984434
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 7 Jan 2025 16:23:53 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C20BE58062;
 Tue,  7 Jan 2025 16:23:52 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8364C58058;
 Tue,  7 Jan 2025 16:23:52 +0000 (GMT)
Received: from gfwa153.aus.stglabs.ibm.com (unknown [9.3.84.127])
 by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue,  7 Jan 2025 16:23:52 +0000 (GMT)
To: minyard@acm.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ninad@linux.ibm.com,
 ratbert@faraday-tech.com, openipmi-developer@lists.sourceforge.net,
 netdev@vger.kernel.org, joel@jms.id.au, andrew@codeconstruct.com.au,
 devicetree@vger.kernel.org, eajames@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Date: Tue,  7 Jan 2025 10:23:39 -0600
Message-ID: <20250107162350.1281165-3-ninad@linux.ibm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250107162350.1281165-1-ninad@linux.ibm.com>
References: <20250107162350.1281165-1-ninad@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: fweTAHP2dvCxkI-kLKV5x6hvfV4uuR8A
X-Proofpoint-ORIG-GUID: scbJMDTQ_TeCK3-3x3fAOMCeSXlV96xJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015
 adultscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=999 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501070133
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add device tree binding document for the IPMB device
 interface
 driver. Signed-off-by: Ninad Palsule <ninad@linux.ibm.com> ---
 .../devicetree/bindings/ipmi/ipmb-dev.yaml
 | 42 +++++++++++++++++++ 1 file changed, 42 insertions(+) create mode 100644
 Documentation/devicetree/ [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.156.1 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
X-Headers-End: 1tVDDc-0005LI-Vc
Subject: [Openipmi-developer] [PATCH v2 02/10] bindings: ipmi: Add binding
 for IPMB device intf
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

Add device tree binding document for the IPMB device interface driver.

Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
---
 .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml

diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
new file mode 100644
index 000000000000..9136ac8004dc
--- /dev/null
+++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: IPMB Device Driver
+
+description: IPMB Device Driver bindings
+
+maintainers:
+  - Ninad Palsule <ninad@linux.ibm.com>
+
+properties:
+  compatible:
+    enum:
+      - ipmb-dev
+
+  reg:
+    maxItems: 1
+
+  i2c-protocol:
+    description:
+      This property specifies that the I2C block transfer should be performed
+      instead of SMBUS block transfer.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        i2c@10 {
+            compatible = "ipmb-dev";
+            reg = <0x10>;
+            i2c-protocol;
+        };
+    };
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
