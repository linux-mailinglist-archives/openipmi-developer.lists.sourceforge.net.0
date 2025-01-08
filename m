Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8668A061FE
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Jan 2025 17:37:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tVZ3k-0000XP-Hc;
	Wed, 08 Jan 2025 16:37:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ninad@linux.ibm.com>) id 1tVZ3j-0000XJ-B2
 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 16:37:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1VA4FnLg6AvKPrRYtRK9oUlIVGRANDBmf4NbQIGwPjI=; b=cpT7dtawtuC0gSJWlgzRuEDZOU
 Ep6ZgHDFKi9XYYFP+xWeSpjS6y7ibUXP8FkRsPrgFCC/o1Nd5TaD27zvU0Iq1p+MVRZwrWGqXTcPZ
 Nr4Up0ssitimYECCbN20cWuPD1BLWIfi1X7Re+LjgI1Xcq4cLE4lS4D2TI/M55FaZYNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1VA4FnLg6AvKPrRYtRK9oUlIVGRANDBmf4NbQIGwPjI=; b=Q
 MRl9bcM5TNL7K6GeeucKwFWI6tl5JfDXU1S1x37ZT2eP1bYUwGKIMB95/qn7Y6Z0yQybW4YrMoQjl
 0nRg2f8jk/3mYPylflQNSSh9IWkmVv27TzlPHqXMH2HVgVJMcVDQ43XO+CuO077wewzxEODUuZ7mI
 HJujAYcJsqzPFBvs=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tVZ3g-0000Gl-R9 for openipmi-developer@lists.sourceforge.net;
 Wed, 08 Jan 2025 16:37:30 +0000
Received: from pps.filterd (m0356516.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 508D6H3H026793;
 Wed, 8 Jan 2025 16:36:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=cc
 :content-transfer-encoding:date:from:message-id:mime-version
 :subject:to; s=pp1; bh=1VA4FnLg6AvKPrRYtRK9oUlIVGRANDBmf4NbQIGwP
 jI=; b=OStWXGSm9nCog8IqzqUB5mzviot330BxZIFq9Xyb9tduBEjY7A7V2N/7u
 V7vdp81Aeqtavy30flT69x0o2sMNUin7Kt5I+IcbiljzH0p3wxCI8lo9TwLhAXzw
 wR24xCNXK6j1/p6bN+zz6gN3Lrtt0d7P6aCmN3P4WmGb58DGZgNhTFztXjgPojli
 cssxgSOc00fV2mtesYIDUqTCptIaQhuhCI1HBRLPW6ghdXsX6dxNXwASiqzZIj2t
 jpjjMcKM1cYP1tEgOwGF/77LvzquYeMue/vpmBb5OHTJxI5b8+CMNZh9P+4hFd6J
 xnzBHZR8hQMgjdcszy+XkC1snP/Fg==
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441e3b3ymf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 16:36:46 +0000 (GMT)
Received: from m0356516.ppops.net (m0356516.ppops.net [127.0.0.1])
 by pps.reinject (8.18.0.8/8.18.0.8) with ESMTP id 508GVHaV012904;
 Wed, 8 Jan 2025 16:36:45 GMT
Received: from ppma21.wdc07v.mail.ibm.com
 (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 441e3b3ymc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 16:36:45 +0000 (GMT)
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma21.wdc07v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 508DUSK7013663;
 Wed, 8 Jan 2025 16:36:44 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([172.16.1.69])
 by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 43ygap0nq6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2025 16:36:44 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com
 [10.241.53.100])
 by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 508Gahii27198136
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 Jan 2025 16:36:43 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 538B158059;
 Wed,  8 Jan 2025 16:36:43 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 25D6F58058;
 Wed,  8 Jan 2025 16:36:42 +0000 (GMT)
Received: from gfwa153.aus.stglabs.ibm.com (unknown [9.3.84.127])
 by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Wed,  8 Jan 2025 16:36:42 +0000 (GMT)
To: minyard@acm.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, ratbert@faraday-tech.com,
 openipmi-developer@lists.sourceforge.net, netdev@vger.kernel.org,
 joel@jms.id.au, andrew@codeconstruct.com.au,
 devicetree@vger.kernel.org, eajames@linux.ibm.com,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Date: Wed,  8 Jan 2025 10:36:28 -0600
Message-ID: <20250108163640.1374680-1-ninad@linux.ibm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 56gAYlJwF9rTlfsKRDyoE1WveLeBGmap
X-Proofpoint-GUID: Ua654eol_PRhKB7UIS7w0T6FCjVbxqA1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 mlxlogscore=528 adultscore=0 suspectscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501080137
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 Please review the patch set. V3: --- - Fixed dt_binding_check
 warnings in ipmb-dev.yaml - Updated title and description in ipmb-dev.yaml
 file. - Updated i2c-protocol description in ipmb-dev.yaml file. 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
X-Headers-End: 1tVZ3g-0000Gl-R9
Subject: [Openipmi-developer] [PATCH v3 00/10] DTS updates for system1 BMC
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

Hello,

Please review the patch set.

V3:
---
  - Fixed dt_binding_check warnings in ipmb-dev.yaml
  - Updated title and description in ipmb-dev.yaml file.
  - Updated i2c-protocol description in ipmb-dev.yaml file.

V2:
---
  Fixed CHECK_DTBS errors by
    - Using generic node names
    - Documenting phy-mode rgmii-rxid in ftgmac100.yaml
    - Adding binding documentation for IPMB device interface

NINAD PALSULE (7):
  ARM: dts: aspeed: system1: Add IPMB device
  ARM: dts: aspeed: system1: Add GPIO line name
  ARM: dts: aspeed: system1: Add RGMII support
  ARM: dts: aspeed: system1: Reduce sgpio speed
  ARM: dts: aspeed: system1: Update LED gpio name
  ARM: dts: aspeed: system1: Remove VRs max8952
  ARM: dts: aspeed: system1: Mark GPIO line high/low

Ninad Palsule (3):
  dt-bindings: net: faraday,ftgmac100: Add phys mode
  bindings: ipmi: Add binding for IPMB device intf
  ARM: dts: aspeed: system1: Disable gpio pull down

 .../devicetree/bindings/ipmi/ipmb-dev.yaml    |  44 +++++
 .../bindings/net/faraday,ftgmac100.yaml       |   3 +
 .../dts/aspeed/aspeed-bmc-ibm-system1.dts     | 177 ++++++++++++------
 3 files changed, 165 insertions(+), 59 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml

-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
