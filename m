Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A9AB053AF
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Jul 2025 09:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZNuAaJWhNluXG1Tr77fVi9YalJLYWvj1Pzs8pu1uM6o=; b=bvuFvUFVNZ1jcC14oCd7hV5HpL
	iR1BC8qJhHy6GvM9PxS0zbFTGsM+AEdUir5nhwqUTbYBVXK36i8appYylbUL6PbD1/DK3WjzubqEy
	NtxLybXG7qmO2SKOgTPu9rd2FnYpGWL95Y+vXNOybGAcincNbOsdoC3fsaZNTO+FeFgs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ubaRb-0002zD-Qv;
	Tue, 15 Jul 2025 07:51:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1ubaRa-0002z4-JI
 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Jul 2025 07:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GITKUBnICez5LTQ8aU/c/94RrvStMVLacY9U+QECZxM=; b=OFyo12CE5AI9i6D4k4eoP396VI
 lgkW/iyi9P1QraVQbP6U+N4itJNIzaV621u6spjyRZeS8El4dL4msNRkYUeNrFNzXpTxh1rrQK1M5
 Kc+VNtqRWqYAhI19pFrTUh0uj9sbm/PhMNHPJsXOtUnwJCtlBqHUSuD95UFwCDQRjoE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GITKUBnICez5LTQ8aU/c/94RrvStMVLacY9U+QECZxM=; b=mrgUnA//mKicFTz/1kjqN0YshZ
 KC6aygd6oWm0hCCJVyc+JpxoNPAYaRMsOMPSt7UpklQbSuXEDe35/Rb/GxsaqcgsFDk9QSQUTD0Cy
 EvTtJ59Axp3GJUD0660V6YVK151vY7veg79BEX3Ye1n7w6p6ANeKlNF1EpP0g76CXXXc=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1ubaRZ-0003TM-KQ for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Jul 2025 07:51:18 +0000
Received: from loongson.cn (unknown [223.64.68.193])
 by gateway (Coremail) with SMTP id _____8AxlnBqCHZovRYqAQ--.21485S3;
 Tue, 15 Jul 2025 15:51:06 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.193])
 by front1 (Coremail) with SMTP id qMiowJCxH8JcCHZo3BQYAA--.11632S5;
 Tue, 15 Jul 2025 15:51:02 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>
Date: Tue, 15 Jul 2025 15:50:44 +0800
Message-ID: <98eaef30be21f8e810886beaa7bcd20769f311c3.1752548073.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1752548073.git.zhoubinbin@loongson.cn>
References: <cover.1752548073.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowJCxH8JcCHZo3BQYAA--.11632S5
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3Ar17WF17Gr17GrWkWw4rJFc_yoWfur47pa
 1aya43Cr48tF47G397ZryDWFyrAwnxWa4rtF47W34ruFWj934vgr1vya4fAry7tFyvqrW3
 JrZ8ArW3WF13JwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUBYb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v2
 6rxl6s0DM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYI
 kI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWrXVW3
 AwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
 8JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j
 6r4UMxCIbckI1I0E14v26r126r1DMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwV
 AFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv2
 0xvE14v26ryj6F1UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4
 v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x0267AK
 xVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU0_WrPUUUUU==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patch adds Loongson-2K BMC IPMI support. According to
 the existing design, we use software simulation to implement the KCS interface
 registers: Stauts/Command/Data_Out/Data_In. Also since both host side and
 BMC side read and write kcs status,
 fifo flag is used to ensure data consistency.
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1ubaRZ-0003TM-KQ
Subject: [Openipmi-developer] [PATCH v8 3/3] ipmi: Add Loongson-2K BMC
 support
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
Cc: Chong Qiao <qiaochong@loongson.cn>, jeffbai@aosc.io,
 Binbin Zhou <zhoubinbin@loongson.cn>, kexybiscuit@aosc.io,
 Huacai Chen <chenhuacai@kernel.org>, linux-kernel@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, loongarch@lists.linux.dev,
 wangyao@lemote.com, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This patch adds Loongson-2K BMC IPMI support.

According to the existing design, we use software simulation to
implement the KCS interface registers: Stauts/Command/Data_Out/Data_In.

Also since both host side and BMC side read and write kcs status, fifo flag
is used to ensure data consistency.

The single KCS message block is as follows:

+-------------------------------------------------------------------------+
|FIFO flags| KCS register data | CMD data | KCS version | WR REQ | WR ACK |
+-------------------------------------------------------------------------+

Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>
Acked-by: Corey Minyard <corey@minyard.net>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 MAINTAINERS                      |   1 +
 drivers/char/ipmi/Kconfig        |   7 ++
 drivers/char/ipmi/Makefile       |   1 +
 drivers/char/ipmi/ipmi_si.h      |   7 ++
 drivers/char/ipmi/ipmi_si_intf.c |   4 +
 drivers/char/ipmi/ipmi_si_ls2k.c | 189 +++++++++++++++++++++++++++++++
 6 files changed, 209 insertions(+)
 create mode 100644 drivers/char/ipmi/ipmi_si_ls2k.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 4eb0f7b69d35..a585a35aaa73 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14203,6 +14203,7 @@ LOONGSON-2K Board Management Controller (BMC) DRIVER
 M:	Binbin Zhou <zhoubinbin@loongson.cn>
 M:	Chong Qiao <qiaochong@loongson.cn>
 S:	Maintained
+F:	drivers/char/ipmi/ipmi_si_ls2k.c
 F:	drivers/mfd/ls2k-bmc-core.c
 
 LOONGSON EDAC DRIVER
diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index f4adc6feb3b2..92bed266d07c 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -84,6 +84,13 @@ config IPMI_IPMB
 	  bus, and it also supports direct messaging on the bus using
 	  IPMB direct messages.  This module requires I2C support.
 
+config IPMI_LS2K
+	bool 'Loongson-2K IPMI interface'
+	depends on LOONGARCH
+	select MFD_LS2K_BMC_CORE
+	help
+	  Provides a driver for Loongson-2K IPMI interfaces.
+
 config IPMI_POWERNV
 	depends on PPC_POWERNV
 	tristate 'POWERNV (OPAL firmware) IPMI interface'
diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index e0944547c9d0..4ea450a82242 100644
--- a/drivers/char/ipmi/Makefile
+++ b/drivers/char/ipmi/Makefile
@@ -8,6 +8,7 @@ ipmi_si-y := ipmi_si_intf.o ipmi_kcs_sm.o ipmi_smic_sm.o ipmi_bt_sm.o \
 	ipmi_si_mem_io.o
 ipmi_si-$(CONFIG_HAS_IOPORT) += ipmi_si_port_io.o
 ipmi_si-$(CONFIG_PCI) += ipmi_si_pci.o
+ipmi_si-$(CONFIG_IPMI_LS2K) += ipmi_si_ls2k.o
 ipmi_si-$(CONFIG_PARISC) += ipmi_si_parisc.o
 
 obj-$(CONFIG_IPMI_HANDLER) += ipmi_msghandler.o
diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
index 508c3fd45877..687835b53da5 100644
--- a/drivers/char/ipmi/ipmi_si.h
+++ b/drivers/char/ipmi/ipmi_si.h
@@ -101,6 +101,13 @@ void ipmi_si_pci_shutdown(void);
 static inline void ipmi_si_pci_init(void) { }
 static inline void ipmi_si_pci_shutdown(void) { }
 #endif
+#ifdef CONFIG_IPMI_LS2K
+void ipmi_si_ls2k_init(void);
+void ipmi_si_ls2k_shutdown(void);
+#else
+static inline void ipmi_si_ls2k_init(void) { }
+static inline void ipmi_si_ls2k_shutdown(void) { }
+#endif
 #ifdef CONFIG_PARISC
 void ipmi_si_parisc_init(void);
 void ipmi_si_parisc_shutdown(void);
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index bb42dfe1c6a8..9c38aca16fd0 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -2121,6 +2121,8 @@ static int __init init_ipmi_si(void)
 
 	ipmi_si_pci_init();
 
+	ipmi_si_ls2k_init();
+
 	ipmi_si_parisc_init();
 
 	mutex_lock(&smi_infos_lock);
@@ -2335,6 +2337,8 @@ static void cleanup_ipmi_si(void)
 
 	ipmi_si_pci_shutdown();
 
+	ipmi_si_ls2k_shutdown();
+
 	ipmi_si_parisc_shutdown();
 
 	ipmi_si_platform_shutdown();
diff --git a/drivers/char/ipmi/ipmi_si_ls2k.c b/drivers/char/ipmi/ipmi_si_ls2k.c
new file mode 100644
index 000000000000..45442c257efd
--- /dev/null
+++ b/drivers/char/ipmi/ipmi_si_ls2k.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Loongson-2K BMC IPMI interface
+ *
+ * Copyright (C) 2024-2025 Loongson Technology Corporation Limited.
+ *
+ * Authors:
+ *	Chong Qiao <qiaochong@loongson.cn>
+ *	Binbin Zhou <zhoubinbin@loongson.cn>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/ioport.h>
+#include <linux/module.h>
+#include <linux/types.h>
+
+#include "ipmi_si.h"
+
+#define LS2K_KCS_FIFO_IBFH	0x0
+#define LS2K_KCS_FIFO_IBFT	0x1
+#define LS2K_KCS_FIFO_OBFH	0x2
+#define LS2K_KCS_FIFO_OBFT	0x3
+
+/* KCS registers */
+#define LS2K_KCS_REG_STS	0x4
+#define LS2K_KCS_REG_DATA_OUT	0x5
+#define LS2K_KCS_REG_DATA_IN	0x6
+#define LS2K_KCS_REG_CMD	0x8
+
+#define LS2K_KCS_CMD_DATA	0xa
+#define LS2K_KCS_VERSION	0xb
+#define LS2K_KCS_WR_REQ		0xc
+#define LS2K_KCS_WR_ACK		0x10
+
+#define LS2K_KCS_STS_OBF	BIT(0)
+#define LS2K_KCS_STS_IBF	BIT(1)
+#define LS2K_KCS_STS_SMS_ATN	BIT(2)
+#define LS2K_KCS_STS_CMD	BIT(3)
+
+#define LS2K_KCS_DATA_MASK	(LS2K_KCS_STS_OBF | LS2K_KCS_STS_IBF | LS2K_KCS_STS_CMD)
+
+static bool ls2k_registered;
+
+static unsigned char ls2k_mem_inb_v0(const struct si_sm_io *io, unsigned int offset)
+{
+	void __iomem *addr = io->addr;
+	int reg_offset;
+
+	if (offset & BIT(0)) {
+		reg_offset = LS2K_KCS_REG_STS;
+	} else {
+		writeb(readb(addr + LS2K_KCS_REG_STS) & ~LS2K_KCS_STS_OBF, addr + LS2K_KCS_REG_STS);
+		reg_offset = LS2K_KCS_REG_DATA_OUT;
+	}
+
+	return readb(addr + reg_offset);
+}
+
+static unsigned char ls2k_mem_inb_v1(const struct si_sm_io *io, unsigned int offset)
+{
+	void __iomem *addr = io->addr;
+	unsigned char inb = 0, cmd;
+	bool obf, ibf;
+
+	obf = readb(addr + LS2K_KCS_FIFO_OBFH) ^ readb(addr + LS2K_KCS_FIFO_OBFT);
+	ibf = readb(addr + LS2K_KCS_FIFO_IBFH) ^ readb(addr + LS2K_KCS_FIFO_IBFT);
+	cmd = readb(addr + LS2K_KCS_CMD_DATA);
+
+	if (offset & BIT(0)) {
+		inb = readb(addr + LS2K_KCS_REG_STS) & ~LS2K_KCS_DATA_MASK;
+		inb |= FIELD_PREP(LS2K_KCS_STS_OBF, obf)
+		    | FIELD_PREP(LS2K_KCS_STS_IBF, ibf)
+		    | FIELD_PREP(LS2K_KCS_STS_CMD, cmd);
+	} else {
+		inb = readb(addr + LS2K_KCS_REG_DATA_OUT);
+		writeb(readb(addr + LS2K_KCS_FIFO_OBFH), addr + LS2K_KCS_FIFO_OBFT);
+	}
+
+	return inb;
+}
+
+static void ls2k_mem_outb_v0(const struct si_sm_io *io, unsigned int offset,
+			     unsigned char val)
+{
+	void __iomem *addr = io->addr;
+	unsigned char sts = readb(addr + LS2K_KCS_REG_STS);
+	int reg_offset;
+
+	if (sts & LS2K_KCS_STS_IBF)
+		return;
+
+	if (offset & BIT(0)) {
+		reg_offset = LS2K_KCS_REG_CMD;
+		sts |= LS2K_KCS_STS_CMD;
+	} else {
+		reg_offset = LS2K_KCS_REG_DATA_IN;
+		sts &= ~LS2K_KCS_STS_CMD;
+	}
+
+	writew(val, addr + reg_offset);
+	writeb(sts | LS2K_KCS_STS_IBF, addr + LS2K_KCS_REG_STS);
+	writel(readl(addr + LS2K_KCS_WR_REQ) + 1, addr + LS2K_KCS_WR_REQ);
+}
+
+static void ls2k_mem_outb_v1(const struct si_sm_io *io, unsigned int offset,
+			     unsigned char val)
+{
+	void __iomem *addr = io->addr;
+	unsigned char ibfh, ibft;
+	int reg_offset;
+
+	ibfh = readb(addr + LS2K_KCS_FIFO_IBFH);
+	ibft = readb(addr + LS2K_KCS_FIFO_IBFT);
+
+	if (ibfh ^ ibft)
+		return;
+
+	reg_offset = (offset & BIT(0)) ? LS2K_KCS_REG_CMD : LS2K_KCS_REG_DATA_IN;
+	writew(val, addr + reg_offset);
+
+	writeb(offset & BIT(0), addr + LS2K_KCS_CMD_DATA);
+	writeb(!ibft, addr + LS2K_KCS_FIFO_IBFH);
+	writel(readl(addr + LS2K_KCS_WR_REQ) + 1, addr + LS2K_KCS_WR_REQ);
+}
+
+static void ls2k_mem_cleanup(struct si_sm_io *io)
+{
+	if (io->addr)
+		iounmap(io->addr);
+}
+
+static int ipmi_ls2k_mem_setup(struct si_sm_io *io)
+{
+	unsigned char version;
+
+	io->addr = ioremap(io->addr_data, io->regspacing);
+	if (!io->addr)
+		return -EIO;
+
+	version = readb(io->addr + LS2K_KCS_VERSION);
+
+	io->inputb = version ? ls2k_mem_inb_v1 : ls2k_mem_inb_v0;
+	io->outputb = version ? ls2k_mem_outb_v1 : ls2k_mem_outb_v0;
+	io->io_cleanup = ls2k_mem_cleanup;
+
+	return 0;
+}
+
+static int ipmi_ls2k_probe(struct platform_device *pdev)
+{
+	struct si_sm_io io;
+
+	memset(&io, 0, sizeof(io));
+
+	io.si_info	= &ipmi_kcs_si_info;
+	io.io_setup	= ipmi_ls2k_mem_setup;
+	io.addr_data	= pdev->resource[0].start;
+	io.regspacing	= resource_size(&pdev->resource[0]);
+	io.dev		= &pdev->dev;
+
+	dev_dbg(&pdev->dev, "addr 0x%lx, spacing %d.\n", io.addr_data, io.regspacing);
+
+	return ipmi_si_add_smi(&io);
+}
+
+static void ipmi_ls2k_remove(struct platform_device *pdev)
+{
+	ipmi_si_remove_by_dev(&pdev->dev);
+}
+
+struct platform_driver ipmi_ls2k_platform_driver = {
+	.driver = {
+		.name = "ls2k-ipmi-si",
+	},
+	.probe	= ipmi_ls2k_probe,
+	.remove	= ipmi_ls2k_remove,
+};
+
+void ipmi_si_ls2k_init(void)
+{
+	platform_driver_register(&ipmi_ls2k_platform_driver);
+	ls2k_registered = true;
+}
+
+void ipmi_si_ls2k_shutdown(void)
+{
+	if (ls2k_registered)
+		platform_driver_unregister(&ipmi_ls2k_platform_driver);
+}
-- 
2.47.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
