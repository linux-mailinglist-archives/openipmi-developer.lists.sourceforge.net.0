Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76652AC7DA6
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 May 2025 14:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pbi29WPK6lV4tYuJz01FG88Hllg9dlHxB7ycV5SPUlI=; b=IQ3gqotqz9ElzpcUmIz7GonEtf
	xwNQS9mHN+MbnGVaiYMfnC6idlIMlH+8cyTp3BOzEKdueTN2SJW24ukQr4auvns5CDJ1kzI6yH2HN
	LIa28P2qX+ksE3gxe0ggN+uWTIt3t3SVdvMaQc7PUWVEx+S8PQe//+uaRn31ZMGIZd2I=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uKcIZ-0006JC-KX;
	Thu, 29 May 2025 12:23:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1uKcIW-0006J3-SS
 for openipmi-developer@lists.sourceforge.net;
 Thu, 29 May 2025 12:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=typWPe+Koik9kIKGiyU7n6r8L9V8P7RHMRgRTvVWE6w=; b=GSP5YvnRULzgf5uIDepIaCrQnw
 5PdKXZOGnJrMtxDnvcdVu+AiN4ASfosUW41erZ/wZh8ptV/11MugIOrQQvXn2or1IBQS759KB5i7X
 K4IUkvmPOBZSoc3q/tANlONaQJj5GTsUTsCOUq3ZtMZr8tWqlFjeggJ4p+FmS0GIT1E8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=typWPe+Koik9kIKGiyU7n6r8L9V8P7RHMRgRTvVWE6w=; b=NMRB8KD6GVgbszk9Ei7P969TM2
 tml7wJh8XNo14+nIqdUSkylickZ6L1WAyerz3JTQWqHB44J5osAM4pN1i1Vzr3CEYfsG1vBKU5a7T
 zUthhS38Lp2KnkiV5KoOs1zjb6fRXezpvOohjmxQqGNsNBHhsQ3UkOlgkJ4jvfgc383E=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1uKcIW-0006T8-FV for openipmi-developer@lists.sourceforge.net;
 Thu, 29 May 2025 12:23:48 +0000
Received: from loongson.cn (unknown [223.64.69.3])
 by gateway (Coremail) with SMTP id _____8AxDGvOUThooRkCAQ--.21578S3;
 Thu, 29 May 2025 20:23:42 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.69.3])
 by front1 (Coremail) with SMTP id qMiowMDxu8TFUTho4J76AA--.53528S3;
 Thu, 29 May 2025 20:23:40 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>
Date: Thu, 29 May 2025 20:23:22 +0800
Message-ID: <47fd3483be9bb14d0f70edc7c6fbc2aef827be11.1748505446.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1748505446.git.zhoubinbin@loongson.cn>
References: <cover.1748505446.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowMDxu8TFUTho4J76AA--.53528S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3Aw1rWFyxGw1Duw4xAw45twc_yoWxtF47p3
 WxAay5GFs8AF17Ga93Zr1UCFW3ua9av3y5tay3XwnIya97Aa4kXw1ktFyavF9rJFykKry2
 qF9xXr4UCan8JFcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
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
 cVAFwI0_Gr0_Xr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI
 8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF7I0E14v2
 6r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxU4BHqDUUUU
X-Headers-End: 1uKcIW-0006T8-FV
Subject: [Openipmi-developer] [PATCH v3 1/3] mfd: ls2kbmc: Introduce
 Loongson-2K BMC core driver
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

The Loongson-2K Board Management Controller provides an PCIe interface
to the host to access the feature implemented in the BMC.

The BMC is assembled on a server similar to the server machine with
Loongson-3C6000 CPUs. It supports multiple sub-devices like DRM.

Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 drivers/mfd/Kconfig       |  12 +++
 drivers/mfd/Makefile      |   2 +
 drivers/mfd/ls2kbmc-mfd.c | 156 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 drivers/mfd/ls2kbmc-mfd.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 22b936310039..4993b0708fe5 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2422,5 +2422,17 @@ config MFD_UPBOARD_FPGA
 	  To compile this driver as a module, choose M here: the module will be
 	  called upboard-fpga.
 
+config MFD_LS2K_BMC
+	tristate "Loongson-2K Board Management Controller Support"
+	depends on LOONGARCH
+	default y if LOONGARCH
+	select MFD_CORE
+	help
+	  Say yes here to add support for the Loongson-2K BMC which is a Board
+	  Management Controller connected to the PCIe bus. The device supports
+	  multiple sub-devices like DRM. This driver provides common support for
+	  accessing the devices; additional drivers must be enabled in order to
+	  use the functionality of the BMC device.
+
 endmenu
 endif
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 948cbdf42a18..18960ea13b64 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -290,3 +290,5 @@ obj-$(CONFIG_MFD_RSMU_I2C)	+= rsmu_i2c.o rsmu_core.o
 obj-$(CONFIG_MFD_RSMU_SPI)	+= rsmu_spi.o rsmu_core.o
 
 obj-$(CONFIG_MFD_UPBOARD_FPGA)	+= upboard-fpga.o
+
+obj-$(CONFIG_MFD_LS2K_BMC)	+= ls2kbmc-mfd.o
diff --git a/drivers/mfd/ls2kbmc-mfd.c b/drivers/mfd/ls2kbmc-mfd.c
new file mode 100644
index 000000000000..9dbcb5b371f9
--- /dev/null
+++ b/drivers/mfd/ls2kbmc-mfd.c
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Loongson-2K Board Management Controller (BMC) Core Driver.
+ *
+ * Copyright (C) 2024-2025 Loongson Technology Corporation Limited.
+ *
+ * Authors:
+ *	Chong Qiao <qiaochong@loongson.cn>
+ *	Binbin Zhou <zhoubinbin@loongson.cn>
+ */
+
+#include <linux/aperture.h>
+#include <linux/errno.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+#include <linux/pci_ids.h>
+#include <linux/platform_data/simplefb.h>
+#include <linux/platform_device.h>
+
+/* LS2K BMC resources */
+#define LS2K_DISPLAY_RES_START		(SZ_16M + SZ_2M)
+#define LS2K_IPMI_RES_SIZE		0x1C
+#define LS2K_IPMI0_RES_START		(SZ_16M + 0xF00000)
+#define LS2K_IPMI1_RES_START		(LS2K_IPMI0_RES_START + LS2K_IPMI_RES_SIZE)
+#define LS2K_IPMI2_RES_START		(LS2K_IPMI1_RES_START + LS2K_IPMI_RES_SIZE)
+#define LS2K_IPMI3_RES_START		(LS2K_IPMI2_RES_START + LS2K_IPMI_RES_SIZE)
+#define LS2K_IPMI4_RES_START		(LS2K_IPMI3_RES_START + LS2K_IPMI_RES_SIZE)
+
+static struct resource ls2k_display_resources[] = {
+	DEFINE_RES_MEM_NAMED(LS2K_DISPLAY_RES_START, SZ_4M, "simpledrm-res"),
+};
+
+static struct resource ls2k_ipmi0_resources[] = {
+	DEFINE_RES_MEM_NAMED(LS2K_IPMI0_RES_START, LS2K_IPMI_RES_SIZE, "ipmi0-res"),
+};
+
+static struct resource ls2k_ipmi1_resources[] = {
+	DEFINE_RES_MEM_NAMED(LS2K_IPMI1_RES_START, LS2K_IPMI_RES_SIZE, "ipmi1-res"),
+};
+
+static struct resource ls2k_ipmi2_resources[] = {
+	DEFINE_RES_MEM_NAMED(LS2K_IPMI2_RES_START, LS2K_IPMI_RES_SIZE, "ipmi2-res"),
+};
+
+static struct resource ls2k_ipmi3_resources[] = {
+	DEFINE_RES_MEM_NAMED(LS2K_IPMI3_RES_START, LS2K_IPMI_RES_SIZE, "ipmi3-res"),
+};
+
+static struct resource ls2k_ipmi4_resources[] = {
+	DEFINE_RES_MEM_NAMED(LS2K_IPMI4_RES_START, LS2K_IPMI_RES_SIZE, "ipmi4-res"),
+};
+
+static struct mfd_cell ls2k_bmc_cells[] = {
+	MFD_CELL_RES("simple-framebuffer", ls2k_display_resources),
+	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi0_resources),
+	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi1_resources),
+	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi2_resources),
+	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi3_resources),
+	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi4_resources),
+};
+
+/*
+ * Currently the Loongson-2K BMC hardware does not have an I2C interface to adapt to the
+ * resolution. We set the resolution by presetting "video=1280x1024-16@2M" to the BMC memory.
+ */
+static int ls2k_bmc_parse_mode(struct pci_dev *pdev, struct simplefb_platform_data *pd)
+{
+	char *mode;
+	int depth, ret;
+
+	/* The last 16M of PCI BAR0 is used to store the resolution string. */
+	mode = devm_ioremap(&pdev->dev, pci_resource_start(pdev, 0) + SZ_16M, SZ_16M);
+	if (!mode)
+		return -ENOMEM;
+
+	/* The resolution field starts with the flag "video=". */
+	if (!strncmp(mode, "video=", 6))
+		mode = mode + 6;
+
+	ret = kstrtoint(strsep(&mode, "x"), 10, &pd->width);
+	if (ret)
+		return ret;
+
+	ret = kstrtoint(strsep(&mode, "-"), 10, &pd->height);
+	if (ret)
+		return ret;
+
+	ret = kstrtoint(strsep(&mode, "@"), 10, &depth);
+	if (ret)
+		return ret;
+
+	pd->stride = pd->width * depth / 8;
+	pd->format = depth == 32 ? "a8r8g8b8" : "r5g6b5";
+
+	return 0;
+}
+
+static int ls2k_bmc_probe(struct pci_dev *dev, const struct pci_device_id *id)
+{
+	struct simplefb_platform_data pd;
+	resource_size_t base;
+	int ret;
+
+	ret = pci_enable_device(dev);
+	if (ret)
+		return ret;
+
+	ret = ls2k_bmc_parse_mode(dev, &pd);
+	if (ret)
+		goto disable_pci;
+
+	ls2k_bmc_cells[0].platform_data = &pd;
+	ls2k_bmc_cells[0].pdata_size = sizeof(pd);
+	base = dev->resource[0].start + LS2K_DISPLAY_RES_START;
+
+	/* Remove conflicting efifb device */
+	ret = aperture_remove_conflicting_devices(base, SZ_4M, "simple-framebuffer");
+	if (ret) {
+		dev_err(&dev->dev, "Failed to removed firmware framebuffers: %d\n", ret);
+		goto disable_pci;
+	}
+
+	return devm_mfd_add_devices(&dev->dev, PLATFORM_DEVID_AUTO,
+				    ls2k_bmc_cells, ARRAY_SIZE(ls2k_bmc_cells),
+				    &dev->resource[0], 0, NULL);
+
+disable_pci:
+	pci_disable_device(dev);
+	return ret;
+}
+
+static void ls2k_bmc_remove(struct pci_dev *dev)
+{
+	pci_disable_device(dev);
+}
+
+static struct pci_device_id ls2k_bmc_devices[] = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_LOONGSON, 0x1a05) },
+	{ }
+};
+MODULE_DEVICE_TABLE(pci, ls2k_bmc_devices);
+
+static struct pci_driver ls2k_bmc_driver = {
+	.name = "ls2k-bmc",
+	.id_table = ls2k_bmc_devices,
+	.probe = ls2k_bmc_probe,
+	.remove = ls2k_bmc_remove,
+};
+module_pci_driver(ls2k_bmc_driver);
+
+MODULE_DESCRIPTION("Loongson-2K BMC driver");
+MODULE_AUTHOR("Loongson Technology Corporation Limited");
+MODULE_LICENSE("GPL");
-- 
2.47.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
