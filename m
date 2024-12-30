Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 514979FE685
	for <lists+openipmi-developer@lfdr.de>; Mon, 30 Dec 2024 14:32:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tSFsI-0000Zj-0H;
	Mon, 30 Dec 2024 13:32:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1tSCLB-0004sB-R5
 for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Dec 2024 09:45:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7kB5kx/BhDSPKEg94Iqo+Vx2xb6OXOkw8glBJdYIF9s=; b=imvLPp6wlibT3KwprlREA6JsD1
 Nd6nIYMy/VEwAK0Jml17T+UAxMLco1MoJNE18LxKpi09uyy49FTEMCk5hrcR5cvicx6a6TpEWlsNT
 cEMvVURqJzRfANtGWereDAmv4TnrqKVRFkjX8tibwrHHG+dpG+lrW8HzfKrydzMvixXE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7kB5kx/BhDSPKEg94Iqo+Vx2xb6OXOkw8glBJdYIF9s=; b=fObs2SqtRaA2459Ls+TwDGBjo3
 R0SnD1cgEwMwetS4/DTT/0vFxrZWKDLUJHWsLE6keYg8a1oTzmF+AvIdo+p8sDgCuHQtzXmv7HHg3
 zLiPYRX612yHWeP+MXO8kb+PWn3mV1epfY9yeOkdDgfy3l8pfEi+jA2auFItwIsRpb5g=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1tSCL8-0008G8-D2 for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Dec 2024 09:45:37 +0000
Received: from loongson.cn (unknown [223.64.68.63])
 by gateway (Coremail) with SMTP id _____8AxLOJoaHJnDs9bAA--.48420S3;
 Mon, 30 Dec 2024 17:31:20 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.63])
 by front1 (Coremail) with SMTP id qMiowMCxncVkaHJnp74NAA--.4295S3;
 Mon, 30 Dec 2024 17:31:18 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Date: Mon, 30 Dec 2024 17:31:08 +0800
Message-ID: <074e91224f0e48861e11954dc80c92de322906a2.1735550269.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1735550269.git.zhoubinbin@loongson.cn>
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowMCxncVkaHJnp74NAA--.4295S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW3XrykWrWDAw1kJr4xKFWDJrc_yoW7uw43pF
 n3Jay5CF4kXF47GrsxWr1UCFsxua9Yya4jqrsrJ34avayay34UZ348tF9xZryDGryq9ry7
 tFWYyw1jkFs8JabCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUBIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r126r13M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
 xVW8Jr0_Cr1UM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
 AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
 tVWrXwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
 AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
 6r1j6r4UMxCIbckI1I0E14v26r126r1DMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
 xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xII
 jxv20xvE14v26r4j6ryUMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
 0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aVCY1x02
 67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8Gii3UUUUU==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The Loongson-2K Board Management Controller provides an PCIe
 interface to the host to access the feature implemented in the BMC. The BMC
 is assembled on a server similar to the server machine with Loongson-3C6000
 CPUs. It supports multiple sub-devices like DRM. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [114.242.206.163 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [114.242.206.163 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1tSCL8-0008G8-D2
X-Mailman-Approved-At: Mon, 30 Dec 2024 13:32:00 +0000
Subject: [Openipmi-developer] [PATCH v1 1/4] mfd: ls2kbmc: Introduce
 Loongson-2K BMC MFD Core driver
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
Cc: Chong Qiao <qiaochong@loongson.cn>, Binbin Zhou <zhoubinbin@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, loongarch@lists.linux.dev,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The Loongson-2K Board Management Controller provides an PCIe
interface to the host to access the feature implemented in the BMC.

The BMC is assembled on a server similar to the server machine with
Loongson-3C6000 CPUs. It supports multiple sub-devices like DRM.

Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 drivers/mfd/Kconfig       |  15 ++++
 drivers/mfd/Makefile      |   2 +
 drivers/mfd/ls2kbmc-mfd.c | 145 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 162 insertions(+)
 create mode 100644 drivers/mfd/ls2kbmc-mfd.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index ae23b317a64e..97d9d52b7e8a 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2414,5 +2414,20 @@ config MFD_RSMU_SPI
 	  Additional drivers must be enabled in order to use the functionality
 	  of the device.
 
+config MFD_LS2K_BMC
+	tristate "Loongson-2K Board Management Controller Support"
+	depends on LOONGARCH
+	select MFD_CORE
+	help
+	  Say yes here to add support for the Loongson-2K BMC
+	  which is a Board Management Controller connected to the PCIe bus.
+	  The device supports multiple sub-devices like DRM.
+	  This driver provides common support for accessing the devices;
+	  additional drivers must be enabled in order to use the
+	  functionality of the BMC device.
+
+	  This driver can also be built as a module. If so the module
+	  will be called ls2kbmc-mfd.
+
 endmenu
 endif
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index e057d6d6faef..3faec9638303 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -290,3 +290,5 @@ obj-$(CONFIG_MFD_ATC260X_I2C)	+= atc260x-i2c.o
 
 obj-$(CONFIG_MFD_RSMU_I2C)	+= rsmu_i2c.o rsmu_core.o
 obj-$(CONFIG_MFD_RSMU_SPI)	+= rsmu_spi.o rsmu_core.o
+
+obj-$(CONFIG_MFD_LS2K_BMC)	+= ls2kbmc-mfd.o
diff --git a/drivers/mfd/ls2kbmc-mfd.c b/drivers/mfd/ls2kbmc-mfd.c
new file mode 100644
index 000000000000..2912112c41c8
--- /dev/null
+++ b/drivers/mfd/ls2kbmc-mfd.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Loongson-2K Board Management Controller (BMC) MFD Core Driver.
+ *
+ * Copyright (C) 2024 Loongson Technology Corporation Limited.
+ *
+ * Originally written by Chong Qiao <qiaochong@loongson.cn>
+ * Rewritten for mainline by Binbin Zhou <zhoubinbin@loongson.cn>
+ */
+
+#include <linux/errno.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+#include <linux/pci_ids.h>
+#include <linux/platform_device.h>
+
+static struct resource ls2k_display_resources[] = {
+	{
+		.name	= "ls2kbmc-simplebuf-res",
+		.start	= SZ_16M + SZ_2M,
+		.end	= SZ_16M + SZ_2M + SZ_4M - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource ls2k_ipmi0_resources[] = {
+	{
+		.name	= "ipmi-res0",
+		.start	= SZ_16M + 0x00f00000,
+		.end	= SZ_16M + 0x00f00000 + 0x1c - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource ls2k_ipmi1_resources[] = {
+	{
+		.name	= "ipmi-res1",
+		.start	= SZ_16M + 0x00f00000 + 0x1c,
+		.end	= SZ_16M + 0x00f00000 + 0x1c * 2 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource ls2k_ipmi2_resources[] = {
+	{
+		.name	= "ipmi-res2",
+		.start	= SZ_16M + 0x00f00000 + 0x1c * 2,
+		.end	= SZ_16M + 0x00f00000 + 0x1c * 3 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource ls2k_ipmi3_resources[] = {
+	{
+		.name	= "ipmi-res3",
+		.start	= SZ_16M + 0x00f00000 + 0x1c * 3,
+		.end	= SZ_16M + 0x00f00000 + 0x1c * 4 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct resource ls2k_ipmi4_resources[] = {
+	{
+		.name	= "ipmi-res4",
+		.start	= SZ_16M + 0x00f00000 + 0x1c * 4,
+		.end	= SZ_16M + 0x00f00000 + 0x1c * 5 - 1,
+		.flags	= IORESOURCE_MEM,
+	},
+};
+
+static struct mfd_cell ls2k_bmc_cells[] = {
+	{
+		.name = "ls2kbmc-framebuffer",
+		.num_resources = ARRAY_SIZE(ls2k_display_resources),
+		.resources = ls2k_display_resources,
+	},
+	{
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi0_resources),
+		.resources = ls2k_ipmi0_resources,
+	},
+	{
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi1_resources),
+		.resources = ls2k_ipmi1_resources,
+	},
+	{
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi2_resources),
+		.resources = ls2k_ipmi2_resources,
+	},
+	{
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi3_resources),
+		.resources = ls2k_ipmi3_resources,
+	},
+	{
+		.name = "ls2k-ipmi-si",
+		.num_resources = ARRAY_SIZE(ls2k_ipmi4_resources),
+		.resources = ls2k_ipmi4_resources,
+	},
+};
+
+static int ls2k_bmc_probe(struct pci_dev *dev, const struct pci_device_id *id)
+{
+	int ret = 0;
+
+	ret = pci_enable_device(dev);
+	if (ret)
+		return ret;
+
+	ls2k_bmc_cells[0].platform_data = &dev;
+	ls2k_bmc_cells[0].pdata_size = sizeof(dev);
+
+	return devm_mfd_add_devices(&dev->dev, PLATFORM_DEVID_AUTO,
+				    ls2k_bmc_cells, ARRAY_SIZE(ls2k_bmc_cells),
+				    &dev->resource[0], 0, NULL);
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
+
+module_pci_driver(ls2k_bmc_driver);
+
+MODULE_DESCRIPTION("Loongson-2K BMC driver");
+MODULE_AUTHOR("Loongson Technology Corporation Limited");
+MODULE_LICENSE("GPL");
-- 
2.43.5



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
