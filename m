Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6237DAE9D80
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Jun 2025 14:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wrGisFzZlv9HZ6JWct+4MPG7LX7ce0WTYs9kVhQwrSg=; b=d/3S9+GcCxuspZr6XJ35nRofAv
	RACMi1PSl3VOYtA564VD4tRKbscLIhMAVtP1IqC/o0Pmw1dhOPyuAFcMCfw5oQk9U1jbEsPceluv0
	By/HcCHDV3cXLVNPoTJ75EVl20FlutklpAfKPYi77u7DTfScdxRAYrc4RC9/0nfnTwCM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uUllE-0001GH-Jy;
	Thu, 26 Jun 2025 12:31:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1uUllC-0001G4-Sm
 for openipmi-developer@lists.sourceforge.net;
 Thu, 26 Jun 2025 12:31:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1gNsCk05tsuEymDHgmIOGZy4MJGl+/S8F9ENj6/LWzI=; b=Vgkf/pWmcc0XE8C/W65CmqPj3v
 SZ8RJqz3GTRXiXqSllhH9iYq22YU4Zz7Wg0nPcORkqLgL4KiFiOyD8hWCSEZ6u7y+vz7RNelSZXkn
 TMpHjFAxKQoGWbH39B8Y9/6uJBCPmNAxYJM+HRxiTQzjQPufbf7oQteEJcQt+0201268=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1gNsCk05tsuEymDHgmIOGZy4MJGl+/S8F9ENj6/LWzI=; b=hKxnqgkbO9BHTKQ5qbR4jvvSbP
 D1hjdyxDIavq6X2UCv0GRR1d7SFxdKQAwefd/CISiKfPRvOxFLoXJAbOh2RmgDkdOw/61tFUaGL03
 ZHrje8Lr0MYD5MO4tQ05WGy4xcBOrVfZicPxDcqEIBhS/nb6TXAEDqzzIKvmqbiPmBiw=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1uUllB-0002aQ-Rc for openipmi-developer@lists.sourceforge.net;
 Thu, 26 Jun 2025 12:31:22 +0000
Received: from loongson.cn (unknown [223.64.68.149])
 by gateway (Coremail) with SMTP id _____8AxLOKOPV1oLJgdAQ--.24874S3;
 Thu, 26 Jun 2025 20:31:10 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.149])
 by front1 (Coremail) with SMTP id qMiowMCx7xt8PV1ohncrAQ--.65009S5;
 Thu, 26 Jun 2025 20:31:09 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>
Date: Thu, 26 Jun 2025 20:30:42 +0800
Message-ID: <b0551cf0ecab31dabba9bf9a059928e8833df1e2.1750939357.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1750939357.git.zhoubinbin@loongson.cn>
References: <cover.1750939357.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowMCx7xt8PV1ohncrAQ--.65009S5
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3Ar17WF17Gr17GF4rtr4UKFX_yoWfur47pa
 1aya43Cr48tF47G397ZryDWFyrC3ZxWa4rtF47W34ruFWj934vgr1vya4fAry7tFy0qrW3
 JrZ8ArW3WF13JwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUB0b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
 GcCE3s1ln4kS14v26r126r1DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2
 x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26rWY6Fy7
 McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr4
 1lc7CjxVAaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_
 Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67
 AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8I
 cVAFwI0_Xr0_Ar1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI
 8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF7I0E14v2
 6r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxUVWrXDUUUU
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
X-Headers-End: 1uUllB-0002aQ-Rc
Subject: [Openipmi-developer] [PATCH v6 3/3] ipmi: Add Loongson-2K BMC
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
index 611f2f9acbe2..8779e9eaf296 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14202,6 +14202,7 @@ LOONGSON-2K Board Management Controller (BMC) DRIVER
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
