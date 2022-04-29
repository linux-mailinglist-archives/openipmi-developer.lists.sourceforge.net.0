Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2BD514DAF
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 16:41:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkRo3-0000Wd-OY; Fri, 29 Apr 2022 14:41:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <schnelle@linux.ibm.com>) id 1nkRo1-0000WT-Gr
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0Xc8cWyJ2NjLttXNIONLG4ddbwBws1F37EFqTTA4s0k=; b=HndHSvuQI9PBU+npnOsrxNzZ2s
 0dGT4XyeEjJpeom13CfDo7+NsAwC3F5tFl7jBJu3Yx3g7ffZDzA4eWGYgFFenp4Z49VXHbpvZnYJv
 0whtGI3V2gZJpCAX4qPU1r0RU+LnW845WmD/kTQQDQ9jtn+ewfwJ0Nycfg3C1hYSwHAg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0Xc8cWyJ2NjLttXNIONLG4ddbwBws1F37EFqTTA4s0k=; b=G2pVqtR+E5pRabXXSdQJKKEX6I
 +92lmhsjTOFrJgORH17J8uvK8fwnd9WRlPNGt9QhNyxMRjdFDcIM71Ajcudq5C4hqJ/Xd216ORxl2
 PB1J3j4pCT/gg3oxGGN6aAMxJWmEmVc3B/whQ+BE1qB74WJKO34cKJp2wCoFdzgNvKbk=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkRnw-0006ax-R2
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:41:12 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 23TCc4dv016905;
 Fri, 29 Apr 2022 13:51:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=0Xc8cWyJ2NjLttXNIONLG4ddbwBws1F37EFqTTA4s0k=;
 b=eWZic8B6/s9qeZKdySJQhfQ7gkYU2G1oBfSW7a0s9YiUKNApT8VrgD99NL8lj0yZDerf
 e7rPahImlv4oclMHSVcCaDmj3Gr9d3Q7fKBfFYHvj3h+kI6ps9ZnG/qXx083q+gb+caL
 Vi6adne4/VgjSulB+5h2sypOe1T12jDVNq/IzoPNwfSHYIv03CWouYJDpRHU0dOHXywb
 1/9ks1Qy9Ttb3ZWk6Oi4OoQMd7H+jg0ZffQo8yBkNeuDQQgfz/OOh0l7Nnq5xlvTyRem
 No0At5X2MadI5GU867KlC0/wt5V+MIrvJPs5w1s+EluUKLBWc4wZhQacm7ye9TnLEeDA cQ== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3fqqtnsudk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 13:51:18 +0000
Received: from m0098420.ppops.net (m0098420.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 23TDgAv5023460;
 Fri, 29 Apr 2022 13:51:18 GMT
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3fqqtnsucv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 13:51:18 +0000
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 23TDQknd021533;
 Fri, 29 Apr 2022 13:51:16 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com
 (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
 by ppma03ams.nl.ibm.com with ESMTP id 3fm93917qq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 13:51:16 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 23TDpEet34013462
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 Apr 2022 13:51:14 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0EB9E4C044;
 Fri, 29 Apr 2022 13:51:14 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id AB0A74C04A;
 Fri, 29 Apr 2022 13:51:13 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 29 Apr 2022 13:51:13 +0000 (GMT)
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 Apr 2022 15:50:04 +0200
Message-Id: <20220429135108.2781579-7-schnelle@linux.ibm.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220429135108.2781579-1-schnelle@linux.ibm.com>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: AZRYnlRzTQKDSjgjO_HSkX3FwzSks3wM
X-Proofpoint-GUID: iGMO7oNA9IIubfBNxVJGwmk2j693ADIn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-29_06,2022-04-28_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0
 adultscore=0 impostorscore=0 malwarescore=0 suspectscore=0 phishscore=0
 priorityscore=1501 spamscore=0 clxscore=1011 mlxlogscore=898
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204290078
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nkRnw-0006ax-R2
Subject: [Openipmi-developer] [RFC v2 04/39] char: impi,
 tpm: depend on HAS_IOPORT
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko@kernel.org>, linux-pci@vger.kernel.org,
 "open list:TPM DEVICE DRIVER" <linux-integrity@vger.kernel.org>,
 Peter Huewe <peterhuewe@gmx.de>,
 "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
not being declared. We thus need to add this dependency and ifdef
sections of code using inb()/outb() as alternative access methods.

Co-developed-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
---
 drivers/char/Kconfig             |  3 ++-
 drivers/char/ipmi/Makefile       | 11 ++++-------
 drivers/char/ipmi/ipmi_si_intf.c |  3 ++-
 drivers/char/ipmi/ipmi_si_pci.c  |  3 +++
 drivers/char/tpm/Kconfig         |  1 +
 drivers/char/tpm/tpm_infineon.c  | 14 ++++++++++----
 drivers/char/tpm/tpm_tis_core.c  | 19 ++++++++-----------
 7 files changed, 30 insertions(+), 24 deletions(-)

diff --git a/drivers/char/Kconfig b/drivers/char/Kconfig
index 55f48375e3fe..463b82935e78 100644
--- a/drivers/char/Kconfig
+++ b/drivers/char/Kconfig
@@ -33,6 +33,7 @@ config TTY_PRINTK_LEVEL
 config PRINTER
 	tristate "Parallel printer support"
 	depends on PARPORT
+	depends on HAS_IOPORT
 	help
 	  If you intend to attach a printer to the parallel port of your Linux
 	  box (as opposed to using a serial printer; if the connector at the
@@ -346,7 +347,7 @@ config NVRAM
 
 config DEVPORT
 	bool "/dev/port character device"
-	depends on ISA || PCI
+	depends on HAS_IOPORT
 	default y
 	help
 	  Say Y here if you want to support the /dev/port device. The /dev/port
diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index 7ce790efad92..439bed4feb3a 100644
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
index 64dedb3ef8ec..e8094b4007de 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1881,7 +1881,8 @@ int ipmi_si_add_smi(struct si_sm_io *io)
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
diff --git a/drivers/char/tpm/Kconfig b/drivers/char/tpm/Kconfig
index 4a5516406c22..4bc52ed08015 100644
--- a/drivers/char/tpm/Kconfig
+++ b/drivers/char/tpm/Kconfig
@@ -137,6 +137,7 @@ config TCG_NSC
 config TCG_ATMEL
 	tristate "Atmel TPM Interface"
 	depends on PPC64 || HAS_IOPORT_MAP
+	depends on HAS_IOPORT
 	help
 	  If you have a TPM security chip from Atmel say Yes and it 
 	  will be accessible from within Linux.  To compile this driver 
diff --git a/drivers/char/tpm/tpm_infineon.c b/drivers/char/tpm/tpm_infineon.c
index 9c924a1440a9..2d2ae37153ba 100644
--- a/drivers/char/tpm/tpm_infineon.c
+++ b/drivers/char/tpm/tpm_infineon.c
@@ -51,34 +51,40 @@ static struct tpm_inf_dev tpm_dev;
 
 static inline void tpm_data_out(unsigned char data, unsigned char offset)
 {
+#ifdef CONFIG_HAS_IOPORT
 	if (tpm_dev.iotype == TPM_INF_IO_PORT)
 		outb(data, tpm_dev.data_regs + offset);
 	else
+#endif
 		writeb(data, tpm_dev.mem_base + tpm_dev.data_regs + offset);
 }
 
 static inline unsigned char tpm_data_in(unsigned char offset)
 {
+#ifdef CONFIG_HAS_IOPORT
 	if (tpm_dev.iotype == TPM_INF_IO_PORT)
 		return inb(tpm_dev.data_regs + offset);
-	else
-		return readb(tpm_dev.mem_base + tpm_dev.data_regs + offset);
+#endif
+	return readb(tpm_dev.mem_base + tpm_dev.data_regs + offset);
 }
 
 static inline void tpm_config_out(unsigned char data, unsigned char offset)
 {
+#ifdef CONFIG_HAS_IOPORT
 	if (tpm_dev.iotype == TPM_INF_IO_PORT)
 		outb(data, tpm_dev.config_port + offset);
 	else
+#endif
 		writeb(data, tpm_dev.mem_base + tpm_dev.index_off + offset);
 }
 
 static inline unsigned char tpm_config_in(unsigned char offset)
 {
+#ifdef CONFIG_HAS_IOPORT
 	if (tpm_dev.iotype == TPM_INF_IO_PORT)
 		return inb(tpm_dev.config_port + offset);
-	else
-		return readb(tpm_dev.mem_base + tpm_dev.index_off + offset);
+#endif
+	return readb(tpm_dev.mem_base + tpm_dev.index_off + offset);
 }
 
 /* TPM header definitions */
diff --git a/drivers/char/tpm/tpm_tis_core.c b/drivers/char/tpm/tpm_tis_core.c
index dc56b976d816..1efb58dc1b41 100644
--- a/drivers/char/tpm/tpm_tis_core.c
+++ b/drivers/char/tpm/tpm_tis_core.c
@@ -879,11 +879,6 @@ static void tpm_tis_clkrun_enable(struct tpm_chip *chip, bool value)
 		clkrun_val &= ~LPC_CLKRUN_EN;
 		iowrite32(clkrun_val, data->ilb_base_addr + LPC_CNTRL_OFFSET);
 
-		/*
-		 * Write any random value on port 0x80 which is on LPC, to make
-		 * sure LPC clock is running before sending any TPM command.
-		 */
-		outb(0xCC, 0x80);
 	} else {
 		data->clkrun_enabled--;
 		if (data->clkrun_enabled)
@@ -894,13 +889,15 @@ static void tpm_tis_clkrun_enable(struct tpm_chip *chip, bool value)
 		/* Enable LPC CLKRUN# */
 		clkrun_val |= LPC_CLKRUN_EN;
 		iowrite32(clkrun_val, data->ilb_base_addr + LPC_CNTRL_OFFSET);
-
-		/*
-		 * Write any random value on port 0x80 which is on LPC, to make
-		 * sure LPC clock is running before sending any TPM command.
-		 */
-		outb(0xCC, 0x80);
 	}
+
+#ifdef CONFIG_HAS_IOPORT
+	/*
+	 * Write any random value on port 0x80 which is on LPC, to make
+	 * sure LPC clock is running before sending any TPM command.
+	 */
+	outb(0xCC, 0x80);
+#endif
 }
 
 static const struct tpm_class_ops tpm_tis = {
-- 
2.32.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
