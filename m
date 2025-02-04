Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F86A27B91
	for <lists+openipmi-developer@lfdr.de>; Tue,  4 Feb 2025 20:42:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tfOny-0003i6-66;
	Tue, 04 Feb 2025 19:41:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tfOnw-0003hv-TK
 for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 19:41:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MnSNxIgYPsgpg0tKKR24BYQMKAZxqPPimhE/YL6OUow=; b=RAeUR10WCxXzvGZZj86KrOhV5v
 sOe7GeCaJNwT4APXzkYYg88Pkfl0rIbBnr25EYuFZX+V8suaMTuwjG2x+UWJUhVD3efpUGHyHdbtn
 C0S6sh6Li1GQ4rzFihFYaWj4Xfs7Wc7qpzfTVRpflqd+QKs6Azv/ryzZ/p6RgwdeYkr8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MnSNxIgYPsgpg0tKKR24BYQMKAZxqPPimhE/YL6OUow=; b=DVH/YRjOXIMBsjsepZm0p3FqUB
 JYUeJ8uDg/Q9VFN/YFCtowwZ05b5ATMHCxEe62uv64ou9mLitAPLJm6QUIiqdndZFZbvFiJd4EwQE
 ADjoZSP1mCNYq0ZjZcM86T1H2rusWtyFhWok7BJEUJ59kvro5GahdgxXWS6DSoVAktBs=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tfOnw-0005wa-5L for openipmi-developer@lists.sourceforge.net;
 Tue, 04 Feb 2025 19:41:52 +0000
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 514GEpxq010883;
 Tue, 4 Feb 2025 19:41:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:date:from:in-reply-to:message-id
 :mime-version:references:subject:to; s=pp1; bh=MnSNxIgYPsgpg0tKK
 R24BYQMKAZxqPPimhE/YL6OUow=; b=ij+x1GitYSUIT0W54L0uMLwJmSX3HFKs3
 sWVPR9CuHyOScAyD8C6lmZyZlVdWiRbnuDJ863SXQwznnZR/KOenx7iK0KLt3oIy
 lYsuXCZRpu241ZG6GzZrbeZAaD/Amo0Ds2BNFW66LJ0lpA3gNmTtq21N8zQJzu+b
 KeEL4WCXscJNFz+ZfYEmJb5Qp0et0c2Zz4VpROr5n9GRGvSj+OTSPrK3A8KHcIWv
 GDZ75mjW6RG4Iv6GoHFCwXZ8fFx/kIyLJBUm2dsNGDR1jPH9wZma9aAHm8hfTOhi
 hqkdauorDM+xCY9FW7eydvcSr1RKyV0Xkm9jNxsLxhZ9oau5AsIPA==
Received: from ppma11.dal12v.mail.ibm.com
 (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 44k9r0vke3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 19:41:19 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
 by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 514HY3wo021493;
 Tue, 4 Feb 2025 19:41:18 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([172.16.1.8])
 by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 44j0n1ctym-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2025 19:41:18 +0000
Received: from smtpav06.dal12v.mail.ibm.com (smtpav06.dal12v.mail.ibm.com
 [10.241.53.105])
 by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 514JfHLu27263618
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 4 Feb 2025 19:41:18 GMT
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C46F25805E;
 Tue,  4 Feb 2025 19:41:17 +0000 (GMT)
Received: from smtpav06.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 74E0658055;
 Tue,  4 Feb 2025 19:41:17 +0000 (GMT)
Received: from gfwa153.aus.stglabs.ibm.com (unknown [9.3.84.127])
 by smtpav06.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue,  4 Feb 2025 19:41:17 +0000 (GMT)
To: brgl@bgdev.pl, linus.walleij@linaro.org, minyard@acm.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, joel@jms.id.au,
 andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
 eajames@linux.ibm.com, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Date: Tue,  4 Feb 2025 13:41:04 -0600
Message-ID: <20250204194115.3899174-2-ninad@linux.ibm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204194115.3899174-1-ninad@linux.ibm.com>
References: <20250204194115.3899174-1-ninad@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: sKvTjD2WXPN7YlgQK4oRoFEJHzF0qA1W
X-Proofpoint-GUID: sKvTjD2WXPN7YlgQK4oRoFEJHzF0qA1W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-04_09,2025-02-04_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0
 suspectscore=0 lowpriorityscore=0 mlxlogscore=999 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 mlxscore=0 malwarescore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502040145
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Add device tree binding document for the IPMB device
 interface.
 This device is already in use in both driver and .dts files. Reviewed-by:
 Rob Herring (Arm) <robh@kernel.org> Signed-off-by: Ninad Palsule
 <ninad@linux.ibm.com>
 --- .../devicetree/bindings/ipmi/ipmb-dev.yaml | 56 +++++++++++++++++++ 1
 file changed, 56 insertion [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [148.163.158.5 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tfOnw-0005wa-5L
Subject: [Openipmi-developer] [PATCH v9 1/9] dt-bindings: ipmi: Add binding
 for IPMB device
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

Add device tree binding document for the IPMB device interface.
This device is already in use in both driver and .dts files.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
---
 .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml

diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
new file mode 100644
index 000000000000..8b0d71901195
--- /dev/null
+++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: The Intelligent Platform Management Bus(IPMB) Device
+
+description: |
+  The IPMB is an I2C bus which provides interconnection between a Baseboard
+  Management Controller(BMC) and chassis electronics. The BMC sends IPMI
+  requests to intelligent controllers like Satellite Management Controller(MC)
+  devices via IPMB and the device sends responses back to the BMC.
+  This device uses an I2C slave device to send and receive IPMB messages,
+  either on a BMC or other MC. A miscellaneous device provices a user space
+  program to communicate with the kernel and the backend device. Some IPMB
+  devices only support the I2C protocol and not the SMB protocol.
+
+  IPMB communications protocol Specification V1.0
+  https://www.intel.com/content/dam/www/public/us/en/documents/product-briefs/ipmp-spec-v1.0.pdf
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
+      Use I2C block transfer instead of SMBUS block transfer.
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
+    #include <dt-bindings/i2c/i2c.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ipmb-dev@10 {
+            compatible = "ipmb-dev";
+            reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+            i2c-protocol;
+        };
+    };
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
