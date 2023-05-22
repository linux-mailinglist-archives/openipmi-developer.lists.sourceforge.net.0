Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABF170BBFD
	for <lists+openipmi-developer@lfdr.de>; Mon, 22 May 2023 13:36:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1q13qI-0006Lz-M6;
	Mon, 22 May 2023 11:36:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schnelle@linux.ibm.com>) id 1q13qG-0006Ls-BY
 for openipmi-developer@lists.sourceforge.net;
 Mon, 22 May 2023 11:36:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q9uKm/ITOeSbSR3pwgYcO9bIF+6IaBzH2bkgdFhfvN8=; b=bNaeG/Gm4v+ne8Q0vIONV5gmgn
 CAuaCs0EV28E9a85siYGqKbijGGzDNTlji0c/xmyqiFZL5Q4w4QbCzmzx3vSTsIZxYTqMO64wETx1
 I7Vs+HhWVwXPl/BIC5wOubmZzX0qvPoKzq051eyPdxq/vCl89za6YD1DOGzF+IU0b3zE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q9uKm/ITOeSbSR3pwgYcO9bIF+6IaBzH2bkgdFhfvN8=; b=JIiX3A+SbSxrBmdYLvIjFLoZgs
 Ng5tNTYuj+ptxgKagr9g4A1FXpfriLtVWCSx9iMFNuFk55c/BFCFO8DFATuLsMOx+rmO8LFUFYZG8
 7pSGJ8DqlHPNpo7TDC01wcNnScPjwe+Zy+SXP4cCXc9PC5ddRMDyqUG6kXWiyU6QtXQ0=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q13qA-00FhQ4-6r for openipmi-developer@lists.sourceforge.net;
 Mon, 22 May 2023 11:36:44 +0000
Received: from pps.filterd (m0353724.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 34M9rw7J028674; Mon, 22 May 2023 10:50:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=Q9uKm/ITOeSbSR3pwgYcO9bIF+6IaBzH2bkgdFhfvN8=;
 b=DYQLxHh1FXKGq60rxJ0I3nnfWTJ1Ut18r9eXBqWy57i1AXQNOG6nwd5GcNRmdG0Wdkbd
 mcgZSGM0j7lcfpzgm1+pFwrjJA0dij1YQ0yrUfK9Exn9spggKEYCrrRDFGgvYDUgPRW6
 x9f9xi7EIrPxCevsUnPLgToTyCnti6X3QGUH9WYOzqLKI+tO+kRU0CdAHT6SExA0YPFO
 qKUuVrLbHQakAjojtL/MOt0vLMIerY7orpwtUDW8J38aQQYXtoUZgbOiR9Fsgpi3b+9i
 uFG1FrfhHTx+6pA8pfr/3Ked9F9JQXUhthf/8MnC3u7k1EvuMnUM8ZIa7BFidsDE5nf6 IA== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qqee6tdh9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 May 2023 10:50:58 +0000
Received: from m0353724.ppops.net (m0353724.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34MAbZGT013695;
 Mon, 22 May 2023 10:50:57 GMT
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com
 [159.122.73.71])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qqee6tdgq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 May 2023 10:50:57 +0000
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
 by ppma02fra.de.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34M3tMXN008210;
 Mon, 22 May 2023 10:50:55 GMT
Received: from smtprelay06.fra02v.mail.ibm.com ([9.218.2.230])
 by ppma02fra.de.ibm.com (PPS) with ESMTPS id 3qppcs8s0j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 May 2023 10:50:55 +0000
Received: from smtpav04.fra02v.mail.ibm.com (smtpav04.fra02v.mail.ibm.com
 [10.20.54.103])
 by smtprelay06.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 34MAorUq30409294
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 May 2023 10:50:53 GMT
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3F8CD2004B;
 Mon, 22 May 2023 10:50:53 +0000 (GMT)
Received: from smtpav04.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D8C7E20040;
 Mon, 22 May 2023 10:50:52 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by smtpav04.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Mon, 22 May 2023 10:50:52 +0000 (GMT)
To: Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>
Date: Mon, 22 May 2023 12:50:09 +0200
Message-Id: <20230522105049.1467313-5-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522105049.1467313-1-schnelle@linux.ibm.com>
References: <20230522105049.1467313-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: PAu3-NLEeCNw1KavPwUxfMEYo_9R07Y2
X-Proofpoint-ORIG-GUID: tYEBZCUv5Y4Xq7BIxZ1_QfPsRQM0g9qJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-22_06,2023-05-22_03,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0
 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 mlxlogscore=823 clxscore=1015 impostorscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305220089
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In a future patch HAS_IOPORT=n will result in inb()/outb()
 and friends not being declared. We thus need to add this dependency and ifdef
 sections of code using inb()/outb() as alternative access metho [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q13qA-00FhQ4-6r
Subject: [Openipmi-developer] [PATCH v5 04/44] char: ipmi: handle HAS_IOPORT
 dependencies
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
From: Niklas Schnelle via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: linux-arch@vger.kernel.org, Corey Minyard <cminyard@mvista.com>,
 Albert Ou <aou@eecs.berkeley.edu>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
not being declared. We thus need to add this dependency and ifdef
sections of code using inb()/outb() as alternative access methods.

Acked-by: Corey Minyard <cminyard@mvista.com>
Co-developed-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 drivers/char/ipmi/Makefile       | 11 ++++-------
 drivers/char/ipmi/ipmi_si_intf.c |  3 ++-
 drivers/char/ipmi/ipmi_si_pci.c  |  3 +++
 3 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index cb6138b8ded9..e0944547c9d0 100644
--- a/drivers/char/ipmi/Makefile
+++ b/drivers/char/ipmi/Makefile
@@ -5,13 +5,10 @@
 
 ipmi_si-y := ipmi_si_intf.o ipmi_kcs_sm.o ipmi_smic_sm.o ipmi_bt_sm.o \
 	ipmi_si_hotmod.o ipmi_si_hardcode.o ipmi_si_platform.o \
-	ipmi_si_port_io.o ipmi_si_mem_io.o
-ifdef CONFIG_PCI
-ipmi_si-y += ipmi_si_pci.o
-endif
-ifdef CONFIG_PARISC
-ipmi_si-y += ipmi_si_parisc.o
-endif
+	ipmi_si_mem_io.o
+ipmi_si-$(CONFIG_HAS_IOPORT) += ipmi_si_port_io.o
+ipmi_si-$(CONFIG_PCI) += ipmi_si_pci.o
+ipmi_si-$(CONFIG_PARISC) += ipmi_si_parisc.o
 
 obj-$(CONFIG_IPMI_HANDLER) += ipmi_msghandler.o
 obj-$(CONFIG_IPMI_DEVICE_INTERFACE) += ipmi_devintf.o
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index abddd7e43a9a..edbbdb804913 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1882,7 +1882,8 @@ int ipmi_si_add_smi(struct si_sm_io *io)
 	}
 
 	if (!io->io_setup) {
-		if (io->addr_space == IPMI_IO_ADDR_SPACE) {
+		if (IS_ENABLED(CONFIG_HAS_IOPORT) &&
+		    io->addr_space == IPMI_IO_ADDR_SPACE) {
 			io->io_setup = ipmi_si_port_setup;
 		} else if (io->addr_space == IPMI_MEM_ADDR_SPACE) {
 			io->io_setup = ipmi_si_mem_setup;
diff --git a/drivers/char/ipmi/ipmi_si_pci.c b/drivers/char/ipmi/ipmi_si_pci.c
index 74fa2055868b..b83d55685b22 100644
--- a/drivers/char/ipmi/ipmi_si_pci.c
+++ b/drivers/char/ipmi/ipmi_si_pci.c
@@ -97,6 +97,9 @@ static int ipmi_pci_probe(struct pci_dev *pdev,
 	}
 
 	if (pci_resource_flags(pdev, 0) & IORESOURCE_IO) {
+		if (!IS_ENABLED(CONFIG_HAS_IOPORT))
+			return -ENXIO;
+
 		io.addr_space = IPMI_IO_ADDR_SPACE;
 		io.io_setup = ipmi_si_port_setup;
 	} else {
-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
