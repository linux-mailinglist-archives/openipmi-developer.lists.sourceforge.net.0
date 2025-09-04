Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30313B43BB0
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Sep 2025 14:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3t91q5O7IjeNIG/sGYR30ElEv8dGNHzzakEFUzQ6P1U=; b=mjnAzypXqO53tyaj/iXNpt/g66
	+tcS1R99JFDfEsZeISyToZzVcN4aVpU4jDuCCqOCYrrlSNIZZxWvVXPkhjvv+ur1lBCnn4TrzGAzk
	1Kxh/ck1UdYDt1fOxGiWB+nlOMKLBdrmKpeIN3/heXBZ6/vcCZI1ZlQyQ7ZP5lBmhfpo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uu9Bx-0002Ej-7Q;
	Thu, 04 Sep 2025 12:35:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1uu9Bv-0002Eb-Ih
 for openipmi-developer@lists.sourceforge.net;
 Thu, 04 Sep 2025 12:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WWqaS1rZk/1L6pm6KxMNqLB+Ak5n4s5JJuYjyTITXZ0=; b=ld/S9CsSp4MvFgpq0b/MYn2lKg
 zpKWtuoaKp9EaD3n/RNpuiBZwYLDgH2+U1Ra2ymr4L858H05wroa+a0mLPCBw0MooVz8Vi/VEmmul
 7BnM3mefjJ8/sokcMKBtLBgb8QDXjBYqQxUmwZIckG5aGlBM8UXt6psYngXCrAZ0y23s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WWqaS1rZk/1L6pm6KxMNqLB+Ak5n4s5JJuYjyTITXZ0=; b=SFBIJj15kAgHaZz1GQMX8XZcwl
 5Ci3DlQyblAsGFabNGwK+abY4XTH5QU8pqQ5GuW2KaQ2u1OQf4ICZHEb0kxuVeyefsHTPmKG97ctM
 aYk6gJZ4fxD+1icF+GYDb2ylSifwrvF8kg8zs9HOQP+cwL1NI+vPmrb28YQ9mZXxxZwc=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1uu9Bu-0006LY-1g for openipmi-developer@lists.sourceforge.net;
 Thu, 04 Sep 2025 12:35:51 +0000
Received: from loongson.cn (unknown [223.64.68.89])
 by gateway (Coremail) with SMTP id _____8Dxb_CTh7loXakGAA--.14233S3;
 Thu, 04 Sep 2025 20:35:31 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.89])
 by front1 (Coremail) with SMTP id qMiowJAxE+SJh7lot_99AA--.5542S3;
 Thu, 04 Sep 2025 20:35:29 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>
Date: Thu,  4 Sep 2025 20:35:05 +0800
Message-ID: <0dc1fd53020ce2562453961ffed2cd9eb8f359e1.1756987761.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1756987761.git.zhoubinbin@loongson.cn>
References: <cover.1756987761.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowJAxE+SJh7lot_99AA--.5542S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3Jw1DWF1rZr1rXw1DKF1rGrX_yoWfWF1xp3
 WxAay5CF1DJF47G39xAr1UuFsxua9Yv3y5Xa9rJwnI9a13Ca4UXw48tFyavrWDJFyvgry2
 qr9xJr4UC3ZxJFcCm3ZEXasCq-sJn29KB7ZKAUJUUUUx529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUBYb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v2
 6rxl6s0DM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYI
 kI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUtVWr
 XwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
 8JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j
 6r4UMxCIbckI1I0E14v26r126r1DMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwV
 AFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv2
 0xvE14v26r4j6ryUMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4
 v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x0267AK
 xVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8_gA5UUUUU==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The Loongson-2K Board Management Controller provides an PCIe
 interface to the host to access the feature implemented in the BMC. The BMC
 is assembled on a server similar to the server machine with Loongson-3 CPU.
 It supports multiple sub-devices like DRM and IPMI. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1uu9Bu-0006LY-1g
Subject: [Openipmi-developer] [PATCH v11 1/3] mfd: ls2kbmc: Introduce
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
 Corey Minyard <corey@minyard.net>, loongarch@lists.linux.dev,
 wangyao@lemote.com, Xuerui Wang <kernel@xen0n.name>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The Loongson-2K Board Management Controller provides an PCIe interface
to the host to access the feature implemented in the BMC.

The BMC is assembled on a server similar to the server machine with
Loongson-3 CPU. It supports multiple sub-devices like DRM and IPMI.

Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>
Acked-by: Corey Minyard <corey@minyard.net>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 MAINTAINERS                 |   6 ++
 drivers/mfd/Kconfig         |  13 +++
 drivers/mfd/Makefile        |   2 +
 drivers/mfd/ls2k-bmc-core.c | 189 ++++++++++++++++++++++++++++++++++++
 4 files changed, 210 insertions(+)
 create mode 100644 drivers/mfd/ls2k-bmc-core.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 51823e99ecdb..bff129a41bb0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14417,6 +14417,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/thermal/loongson,ls2k-thermal.yaml
 F:	drivers/thermal/loongson2_thermal.c
 
+LOONGSON-2K Board Management Controller (BMC) DRIVER
+M:	Binbin Zhou <zhoubinbin@loongson.cn>
+M:	Chong Qiao <qiaochong@loongson.cn>
+S:	Maintained
+F:	drivers/mfd/ls2k-bmc-core.c
+
 LOONGSON EDAC DRIVER
 M:	Zhao Qunqin <zhaoqunqin@loongson.cn>
 L:	linux-edac@vger.kernel.org
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 04f8bea1dccf..a79822e50f4a 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2454,6 +2454,19 @@ config MFD_LOONGSON_SE
 	  commands to the engine and must first send them to the controller,
 	  which will forward them to the corresponding engine.
 
+config MFD_LS2K_BMC_CORE
+	bool "Loongson-2K Board Management Controller Support"
+	depends on PCI && ACPI_GENERIC_GSI
+	select MFD_CORE
+	help
+	  Say yes here to add support for the Loongson-2K BMC which is a Board
+	  Management Controller connected to the PCIe bus. The device supports
+	  multiple sub-devices like display and IPMI. This driver provides common
+	  support for accessing the devices.
+
+	  The display is enabled by default in the driver, while the IPMI interface
+	  is enabled independently through the IPMI_LS2K option in the IPMI section.
+
 config MFD_QNAP_MCU
 	tristate "QNAP microcontroller unit core driver"
 	depends on SERIAL_DEV_BUS
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 73df7fc8b5ff..c93273dfd5ee 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -286,6 +286,8 @@ obj-$(CONFIG_MFD_INTEL_M10_BMC_CORE)   += intel-m10-bmc-core.o
 obj-$(CONFIG_MFD_INTEL_M10_BMC_SPI)    += intel-m10-bmc-spi.o
 obj-$(CONFIG_MFD_INTEL_M10_BMC_PMCI)   += intel-m10-bmc-pmci.o
 
+obj-$(CONFIG_MFD_LS2K_BMC_CORE)		+= ls2k-bmc-core.o
+
 obj-$(CONFIG_MFD_ATC260X)	+= atc260x-core.o
 obj-$(CONFIG_MFD_ATC260X_I2C)	+= atc260x-i2c.o
 
diff --git a/drivers/mfd/ls2k-bmc-core.c b/drivers/mfd/ls2k-bmc-core.c
new file mode 100644
index 000000000000..39cc481d9ba1
--- /dev/null
+++ b/drivers/mfd/ls2k-bmc-core.c
@@ -0,0 +1,189 @@
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
+enum {
+	LS2K_BMC_DISPLAY,
+	LS2K_BMC_IPMI0,
+	LS2K_BMC_IPMI1,
+	LS2K_BMC_IPMI2,
+	LS2K_BMC_IPMI3,
+	LS2K_BMC_IPMI4,
+};
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
+	[LS2K_BMC_DISPLAY] = {
+		.name = "simple-framebuffer",
+		.num_resources = ARRAY_SIZE(ls2k_display_resources),
+		.resources = ls2k_display_resources
+	},
+	[LS2K_BMC_IPMI0] = {
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi0_resources),
+		.resources = ls2k_ipmi0_resources
+	},
+	[LS2K_BMC_IPMI1] = {
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi1_resources),
+		.resources = ls2k_ipmi1_resources
+	},
+	[LS2K_BMC_IPMI2] = {
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi2_resources),
+		.resources = ls2k_ipmi2_resources
+	},
+	[LS2K_BMC_IPMI3] = {
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi3_resources),
+		.resources = ls2k_ipmi3_resources
+	},
+	[LS2K_BMC_IPMI4] = {
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi4_resources),
+		.resources = ls2k_ipmi4_resources
+	},
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
+	ls2k_bmc_cells[LS2K_BMC_DISPLAY].platform_data = &pd;
+	ls2k_bmc_cells[LS2K_BMC_DISPLAY].pdata_size = sizeof(pd);
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
+MODULE_DESCRIPTION("Loongson-2K Board Management Controller (BMC) Core driver");
+MODULE_AUTHOR("Loongson Technology Corporation Limited");
+MODULE_LICENSE("GPL");
-- 
2.47.3



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
