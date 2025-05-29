Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AE5AC7DA7
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 May 2025 14:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0sJbwy1/bXW5GnHOQYwwZNa18sofl8CZ7FOHhCL0mbY=; b=MYwI1ACHSl7CXwbWGEp621uA9L
	AH2DZPvy/772BcyxKrWPaHJCBHQk81vCdyI9r2AqVIYuoTDMV7pQgf1tZBhPvbQyin2RvACPH+ct0
	zfC3ageHyG8gdEze37AxZepk6FV5Uk6ylf+QZ9eztNx2KX0APX2aDnkMGHl7PLY4H+L4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uKcIi-0005jh-A9;
	Thu, 29 May 2025 12:24:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1uKcIg-0005jX-VK
 for openipmi-developer@lists.sourceforge.net;
 Thu, 29 May 2025 12:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G8TZ5KjNOZienQSDce1rauACKNV0njQ4wv37tH4RqyI=; b=BUg8nFJFGJ9KX/NqnZteCpQ+UI
 52aa8sqZ8uY17sKK/i2/GP21AbE2wDDlE5QmKkchpNhvbfLf8LeclO6JJRdFWu8jByr7a44pH54fr
 BVpAG+XUt68wJR8Q3f95HPEP+W4Sxcf/MzT91B30f1nE/Pt9J3Ax7w7hmx/oQgzKTVwE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G8TZ5KjNOZienQSDce1rauACKNV0njQ4wv37tH4RqyI=; b=DXWLSsxJsjbWa0zaq2RzZfVdmI
 1lzAvjJHDyOfqdXNn8cFKwGAGN4JbCvMYBHLHlHMOEacx8TyA8JrNM3OYyU7QjVt7zqWqk2gcs13C
 mi80M5xJqhhRgbTVdjOyI3hFBHUfVBxL0qnJQKgtRKyE0FLmBOG1mragGSXKAsZ5IH8U=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1uKcIg-0006Ub-HL for openipmi-developer@lists.sourceforge.net;
 Thu, 29 May 2025 12:23:58 +0000
Received: from loongson.cn (unknown [223.64.69.3])
 by gateway (Coremail) with SMTP id _____8BxlmnSUThosBkCAQ--.21695S3;
 Thu, 29 May 2025 20:23:46 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.69.3])
 by front1 (Coremail) with SMTP id qMiowMDxu8TFUTho4J76AA--.53528S4;
 Thu, 29 May 2025 20:23:43 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>
Date: Thu, 29 May 2025 20:23:23 +0800
Message-ID: <01805f8d1b9c8e6564a2d6d83964f78ed29b8f1f.1748505446.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1748505446.git.zhoubinbin@loongson.cn>
References: <cover.1748505446.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowMDxu8TFUTho4J76AA--.53528S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3Ar17uFW5uw1xJF17tFWftFc_yoW3urWfp3
 Waya43Cr48tF47K397ZryDWFyrAwnxW3Wrtr47W34ruFWj9w1vgr1vya4Syry7ta40q3y3
 JrZ8ArW3WF13JwcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUB0b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r106r15M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
 GcCE3s1ln4kS14v26r126r1DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2
 x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1q6rW5
 McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr4
 1lc7CjxVAaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_
 Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67
 AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8I
 cVAFwI0_Xr0_Ar1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI
 8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF7I0E14v2
 6r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxU4BHqDUUUU
X-Headers-End: 1uKcIg-0006Ub-HL
Subject: [Openipmi-developer] [PATCH v3 2/3] ipmi: Add Loongson-2K BMC
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
 loongarch@lists.linux.dev, wangyao@lemote.com, Xuerui Wang <kernel@xen0n.name>,
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
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 drivers/char/ipmi/Makefile       |   1 +
 drivers/char/ipmi/ipmi_si.h      |   7 ++
 drivers/char/ipmi/ipmi_si_intf.c |   3 +
 drivers/char/ipmi/ipmi_si_ls2k.c | 190 +++++++++++++++++++++++++++++++
 4 files changed, 201 insertions(+)
 create mode 100644 drivers/char/ipmi/ipmi_si_ls2k.c

diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index e0944547c9d0..17308dd6be20 100644
--- a/drivers/char/ipmi/Makefile
+++ b/drivers/char/ipmi/Makefile
@@ -8,6 +8,7 @@ ipmi_si-y := ipmi_si_intf.o ipmi_kcs_sm.o ipmi_smic_sm.o ipmi_bt_sm.o \
 	ipmi_si_mem_io.o
 ipmi_si-$(CONFIG_HAS_IOPORT) += ipmi_si_port_io.o
 ipmi_si-$(CONFIG_PCI) += ipmi_si_pci.o
+ipmi_si-$(CONFIG_MFD_LS2K_BMC) += ipmi_si_ls2k.o
 ipmi_si-$(CONFIG_PARISC) += ipmi_si_parisc.o
 
 obj-$(CONFIG_IPMI_HANDLER) += ipmi_msghandler.o
diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
index 508c3fd45877..f38ea4f4c891 100644
--- a/drivers/char/ipmi/ipmi_si.h
+++ b/drivers/char/ipmi/ipmi_si.h
@@ -101,6 +101,13 @@ void ipmi_si_pci_shutdown(void);
 static inline void ipmi_si_pci_init(void) { }
 static inline void ipmi_si_pci_shutdown(void) { }
 #endif
+#ifdef CONFIG_MFD_LS2K_BMC
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
index 7fe891783a37..c13d5132fffc 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -2120,6 +2120,7 @@ static int __init init_ipmi_si(void)
 
 	ipmi_si_pci_init();
 
+	ipmi_si_ls2k_init();
 	ipmi_si_parisc_init();
 
 	mutex_lock(&smi_infos_lock);
@@ -2334,6 +2335,8 @@ static void cleanup_ipmi_si(void)
 
 	ipmi_si_pci_shutdown();
 
+	ipmi_si_ls2k_shutdown();
+
 	ipmi_si_parisc_shutdown();
 
 	ipmi_si_platform_shutdown();
diff --git a/drivers/char/ipmi/ipmi_si_ls2k.c b/drivers/char/ipmi/ipmi_si_ls2k.c
new file mode 100644
index 000000000000..71159e9882b7
--- /dev/null
+++ b/drivers/char/ipmi/ipmi_si_ls2k.c
@@ -0,0 +1,190 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Loongson-2K BMC IPMI
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
+		writeb(readb(addr + LS2K_KCS_REG_STS) & ~LS2K_KCS_STS_OBF,
+		       addr + LS2K_KCS_REG_STS);
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
