Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 035E2AD8351
	for <lists+openipmi-developer@lfdr.de>; Fri, 13 Jun 2025 08:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OEpM8cw7v4/rbvmPtPwk/UlwWdvIEXv2dBRfQ0YlxMo=; b=SaKRyhGbwpTeJXsO4bcyTDQU6e
	ZTHDoi8OB6Od7MjlhCXynsrRhIqUovB8UpyNrS7/IHxaX+tY8HRS+5/s9cM8dlx960gAinuRyI+Uw
	ePl9Yg4QknhJ/eEaLWUwukwiGsDoiag9uLFZNrmYUUem0yFCWUoDq5F3+OsfbxwNfAS4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uPy96-000135-2F;
	Fri, 13 Jun 2025 06:44:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1uPy94-00012w-5O
 for openipmi-developer@lists.sourceforge.net;
 Fri, 13 Jun 2025 06:44:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tIeQzGJQYyZ7/MnChfgAZUZJlK5XYu5BabldQ2BsB04=; b=lblvrgPvM7FIDtdsh5+DKMYOsR
 3C8B4CFgFMqWb1MA7xuuHcjIJ3bBLnISap/C3B1k2od0b+t27usXu88G2hdyn5J79ldwhDUHoHP8y
 hDp9xd22Fx/0rnBF/xV3sXpnk8u31PB6ibWF0CfQe7CmLVXibvOrL9VYil3h7sevULZ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tIeQzGJQYyZ7/MnChfgAZUZJlK5XYu5BabldQ2BsB04=; b=RdDUecOVGLAAWhsQgKuB836Mo5
 i/LLSdOC1h0B2rYuaGGLCy/AR/9pepG/KGnE/JcqKSm8bqJbYV4mXoBG6LpAs3LhgEn4c6LseCBuI
 r9ms44HUd5IykJhZ8JE8cNG/ZkQDGt59LXIZlriIfFiBXmFw0VObCmLIdYcHNziUSetM=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1uPy92-0004J0-Ur for openipmi-developer@lists.sourceforge.net;
 Fri, 13 Jun 2025 06:44:10 +0000
Received: from loongson.cn (unknown [223.64.68.149])
 by gateway (Coremail) with SMTP id _____8CxyuCtyEtomIwVAQ--.52204S3;
 Fri, 13 Jun 2025 14:43:57 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.149])
 by front1 (Coremail) with SMTP id qMiowMBx3MSlyEto29MYAQ--.8851S4;
 Fri, 13 Jun 2025 14:43:56 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>
Date: Fri, 13 Jun 2025 14:43:40 +0800
Message-ID: <76640fb04a67d25bda6423450dddbc2706643a7d.1749731531.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1749731531.git.zhoubinbin@loongson.cn>
References: <cover.1749731531.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowMBx3MSlyEto29MYAQ--.8851S4
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj9fXoW3tF4DXrW3KFWDGryfGFW3urX_yoW8GFW5Co
 WfuFWfZw18Jr17Aa1ftF17Ka4UW3y0qas3Aws7CryqgFyxAasrJFy5GanrZw1fZr4fK345
 Zr95W3WxAFW3tr17l-sFpf9Il3svdjkaLaAFLSUrUUUU0b8apTn2vfkv8UJUUUU8wcxFpf
 9Il3svdxBIdaVrn0xqx4xG64xvF2IEw4CE5I8CrVC2j2Jv73VFW2AGmfu7bjvjm3AaLaJ3
 UjIYCTnIWjp_UUUYX7kC6x804xWl14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI
 8IcIk0rVWrJVCq3wAFIxvE14AKwVWUZVWUtwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xG
 Y2AK021l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14
 v26F4j6r4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AK
 xVW0oVCq3wAaw2AFwI0_JF0_Jw1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0c
 Ia020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jw0_
 WrylYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
 xGrwCY1x0262kKe7AKxVWUAVWUtwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWU
 JVW8JwCFI7km07C267AKxVWUAVWUtwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4
 vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IY
 x2IY67AKxVW8JVW5JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26c
 xKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7CjxVAF
 wI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07UAKsUUUUUU=
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Since the display is a sub-function of the Loongson-2K BMC, 
 when the BMC reset, the entire BMC PCIe is disconnected, including the display
 which is interrupted. Quick overview of the entire LS2K BMC reset process:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Headers-End: 1uPy92-0004J0-Ur
Subject: [Openipmi-developer] [PATCH v4 2/3] mfd: ls2kbmc: Add Loongson-2K
 BMC reset function support
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

Since the display is a sub-function of the Loongson-2K BMC, when the
BMC reset, the entire BMC PCIe is disconnected, including the display
which is interrupted.

Quick overview of the entire LS2K BMC reset process:

There are two types of reset methods: soft reset (BMC-initiated reboot
of IPMI reset command) and BMC watchdog reset (watchdog timeout).

First, regardless of the method, an interrupt is generated (PCIe interrupt
for soft reset/GPIO interrupt for watchdog reset);

Second, during the interrupt process, the system enters bmc_reset_work,
clears the bus/IO/mem resources of the LS7A PCI-E bridge, waits for the BMC
reset to begin, then restores the parent device's PCI configuration space,
waits for the BMC reset to complete, and finally restores the BMC PCI
configuration space.

Display restoration occurs last.

Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>
Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 drivers/mfd/ls2kbmc-mfd.c | 329 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 329 insertions(+)

diff --git a/drivers/mfd/ls2kbmc-mfd.c b/drivers/mfd/ls2kbmc-mfd.c
index 310ca70700c0..2c8e86194cb3 100644
--- a/drivers/mfd/ls2kbmc-mfd.c
+++ b/drivers/mfd/ls2kbmc-mfd.c
@@ -10,8 +10,12 @@
  */
 
 #include <linux/aperture.h>
+#include <linux/bitfield.h>
+#include <linux/delay.h>
 #include <linux/errno.h>
 #include <linux/init.h>
+#include <linux/iopoll.h>
+#include <linux/kbd_kern.h>
 #include <linux/kernel.h>
 #include <linux/mfd/core.h>
 #include <linux/module.h>
@@ -19,6 +23,8 @@
 #include <linux/pci_ids.h>
 #include <linux/platform_data/simplefb.h>
 #include <linux/platform_device.h>
+#include <linux/stop_machine.h>
+#include <linux/vt_kern.h>
 
 /* LS2K BMC resources */
 #define LS2K_DISPLAY_RES_START		(SZ_16M + SZ_2M)
@@ -29,6 +35,48 @@
 #define LS2K_IPMI3_RES_START		(LS2K_IPMI2_RES_START + LS2K_IPMI_RES_SIZE)
 #define LS2K_IPMI4_RES_START		(LS2K_IPMI3_RES_START + LS2K_IPMI_RES_SIZE)
 
+#define LS7A_PCI_CFG_SIZE		0x100
+
+/* LS7A bridge registers */
+#define LS7A_PCIE_PORT_CTL0		0x0
+#define LS7A_PCIE_PORT_STS1		0xC
+#define LS7A_GEN2_CTL			0x80C
+#define LS7A_SYMBOL_TIMER		0x71C
+
+/* Bits of LS7A_PCIE_PORT_CTL0 */
+#define LS2K_BMC_PCIE_LTSSM_ENABLE	BIT(3)
+
+/* Bits of LS7A_PCIE_PORT_STS1 */
+#define LS2K_BMC_PCIE_LTSSM_STS		GENMASK(5, 0)
+#define LS2K_BMC_PCIE_CONNECTED		0x11
+
+#define LS2K_BMC_PCIE_DELAY_US		1000
+#define LS2K_BMC_PCIE_TIMEOUT_US	1000000
+
+/* Bits of LS7A_GEN2_CTL */
+#define LS7A_GEN2_SPEED_CHANG		BIT(17)
+#define LS7A_CONF_PHY_TX		BIT(18)
+
+/* Bits of LS7A_SYMBOL_TIMER */
+#define LS7A_MASK_LEN_MATCH		BIT(26)
+
+/* Interval between interruptions */
+#define LS2K_BMC_INT_INTERVAL		(60 * HZ)
+
+/* Maximum time to wait for U-Boot and DDR to be ready with ms. */
+#define LS2K_BMC_RESET_WAIT_TIME	10000
+
+/* It's an experience value */
+#define LS7A_BAR0_CHECK_MAX_TIMES	2000
+
+#define LS2K_BMC_RESET_GPIO		14
+#define LOONGSON_GPIO_REG_BASE		0x1FE00500
+#define LOONGSON_GPIO_REG_SIZE		0x18
+#define LOONGSON_GPIO_OEN		0x0
+#define LOONGSON_GPIO_FUNC		0x4
+#define LOONGSON_GPIO_INTPOL		0x10
+#define LOONGSON_GPIO_INTEN		0x14
+
 static struct resource ls2k_display_resources[] = {
 	DEFINE_RES_MEM_NAMED(LS2K_DISPLAY_RES_START, SZ_4M, "simpledrm-res"),
 };
@@ -62,6 +110,274 @@ static struct mfd_cell ls2k_bmc_cells[] = {
 	MFD_CELL_RES("ls2k-ipmi-si", ls2k_ipmi4_resources),
 };
 
+/* Index of the BMC PCI configuration space to be restored at BMC reset. */
+struct ls2k_bmc_pci_data {
+	u32 pci_command;
+	u32 base_address0;
+	u32 interrupt_line;
+};
+
+/* Index of the parent PCI configuration space to be restored at BMC reset. */
+struct ls2k_bmc_bridge_pci_data {
+	u32 pci_command;
+	u32 base_address[6];
+	u32 rom_addreess;
+	u32 interrupt_line;
+	u32 msi_hi;
+	u32 msi_lo;
+	u32 devctl;
+	u32 linkcap;
+	u32 linkctl_sts;
+	u32 symbol_timer;
+	u32 gen2_ctrl;
+};
+
+struct ls2k_bmc_pdata {
+	struct device *dev;
+	struct work_struct bmc_reset_work;
+	struct ls2k_bmc_pci_data bmc_pci_data;
+	struct ls2k_bmc_bridge_pci_data bridge_pci_data;
+};
+
+static bool ls2k_bmc_bar0_addr_is_set(struct pci_dev *ppdev)
+{
+	u32 addr;
+
+	pci_read_config_dword(ppdev, PCI_BASE_ADDRESS_0, &addr);
+
+	return addr & PCI_BASE_ADDRESS_MEM_MASK ? true : false;
+}
+
+static bool ls2k_bmc_pcie_is_connected(struct pci_dev *parent, struct ls2k_bmc_pdata *priv)
+{
+	void __iomem *base;
+	int sts, ret;
+
+	base = pci_iomap(parent, 0, LS7A_PCI_CFG_SIZE);
+	if (!base)
+		return false;
+
+	writel(readl(base + LS7A_PCIE_PORT_CTL0) | LS2K_BMC_PCIE_LTSSM_ENABLE,
+	       base + LS7A_PCIE_PORT_CTL0);
+
+	ret = readl_poll_timeout_atomic(base + LS7A_PCIE_PORT_STS1, sts,
+					(sts & LS2K_BMC_PCIE_LTSSM_STS) == LS2K_BMC_PCIE_CONNECTED,
+					LS2K_BMC_PCIE_DELAY_US, LS2K_BMC_PCIE_TIMEOUT_US);
+	if (ret) {
+		pci_iounmap(parent, base);
+		dev_err(priv->dev, "PCIE train failed status=0x%x\n", sts);
+		return false;
+	}
+
+	pci_iounmap(parent, base);
+	return true;
+}
+
+static void ls2k_bmc_restore_bridge_pci_data(struct pci_dev *parent, struct ls2k_bmc_pdata *priv)
+{
+	int base, i = 0;
+
+	pci_write_config_dword(parent, PCI_COMMAND, priv->bridge_pci_data.pci_command);
+
+	for (base = PCI_BASE_ADDRESS_0; base <= PCI_BASE_ADDRESS_5; base += 4, i++)
+		pci_write_config_dword(parent, base, priv->bridge_pci_data.base_address[i]);
+
+	pci_write_config_dword(parent, PCI_ROM_ADDRESS, priv->bridge_pci_data.rom_addreess);
+	pci_write_config_dword(parent, PCI_INTERRUPT_LINE, priv->bridge_pci_data.interrupt_line);
+
+	pci_write_config_dword(parent, parent->msi_cap + PCI_MSI_ADDRESS_LO,
+			       priv->bridge_pci_data.msi_lo);
+	pci_write_config_dword(parent, parent->msi_cap + PCI_MSI_ADDRESS_HI,
+			       priv->bridge_pci_data.msi_hi);
+	pci_write_config_dword(parent, parent->pcie_cap + PCI_EXP_DEVCTL,
+			       priv->bridge_pci_data.devctl);
+	pci_write_config_dword(parent, parent->pcie_cap + PCI_EXP_LNKCAP,
+			       priv->bridge_pci_data.linkcap);
+	pci_write_config_dword(parent, parent->pcie_cap + PCI_EXP_LNKCTL,
+			       priv->bridge_pci_data.linkctl_sts);
+
+	pci_write_config_dword(parent, LS7A_GEN2_CTL, priv->bridge_pci_data.gen2_ctrl);
+	pci_write_config_dword(parent, LS7A_SYMBOL_TIMER, priv->bridge_pci_data.symbol_timer);
+}
+
+static int ls2k_bmc_recover_pci_data(void *data)
+{
+	struct ls2k_bmc_pdata *priv = data;
+	struct pci_dev *pdev = to_pci_dev(priv->dev);
+	struct pci_dev *parent = pdev->bus->self;
+	u32 i;
+
+	/*
+	 * Clear the bus, io and mem resources of the PCI-E bridge to zero, so that
+	 * the processor can not access the LS2K PCI-E port, to avoid crashing due to
+	 * the lack of return signal from accessing the LS2K PCI-E port.
+	 */
+	pci_write_config_dword(parent, PCI_BASE_ADDRESS_2, 0);
+	pci_write_config_dword(parent, PCI_BASE_ADDRESS_3, 0);
+	pci_write_config_dword(parent, PCI_BASE_ADDRESS_4, 0);
+
+	/*
+	 * When the LS2K BMC is reset, the LS7A PCI-E port is also reset, and its PCI
+	 * BAR0 register is cleared. Due to the time gap between the GPIO interrupt
+	 * generation and the LS2K BMC reset, the LS7A PCI BAR0 register is read to
+	 * determine whether the reset has begun.
+	 */
+	for (i = LS7A_BAR0_CHECK_MAX_TIMES; i > 0 ; i--) {
+		if (!ls2k_bmc_bar0_addr_is_set(parent))
+			break;
+		mdelay(1);
+	};
+
+	if (i == 0)
+		return false;
+
+	ls2k_bmc_restore_bridge_pci_data(parent, priv);
+
+	/* Check if PCI-E is connected */
+	if (!ls2k_bmc_pcie_is_connected(parent, priv))
+		return false;
+
+	/* Waiting for U-Boot and DDR ready */
+	mdelay(LS2K_BMC_RESET_WAIT_TIME);
+	if (!ls2k_bmc_bar0_addr_is_set(parent))
+		return false;
+
+	/* Restore LS2K BMC PCI-E config data */
+	pci_write_config_dword(pdev, PCI_COMMAND, priv->bmc_pci_data.pci_command);
+	pci_write_config_dword(pdev, PCI_BASE_ADDRESS_0, priv->bmc_pci_data.base_address0);
+	pci_write_config_dword(pdev, PCI_INTERRUPT_LINE, priv->bmc_pci_data.interrupt_line);
+
+	return 0;
+}
+
+static void ls2k_bmc_events_fn(struct work_struct *work)
+{
+	struct ls2k_bmc_pdata *priv = container_of(work, struct ls2k_bmc_pdata, bmc_reset_work);
+
+	/*
+	 * The PCI-E is lost when the BMC resets, at which point access to the PCI-E
+	 * from other CPUs is suspended to prevent a crash.
+	 */
+	stop_machine(ls2k_bmc_recover_pci_data, priv, NULL);
+
+#ifdef CONFIG_VT
+	/* Re-push the display due to previous PCI-E loss. */
+	set_console(vt_move_to_console(MAX_NR_CONSOLES - 1, 1));
+#endif
+}
+
+static irqreturn_t ls2k_bmc_interrupt(int irq, void *arg)
+{
+	struct ls2k_bmc_pdata *priv = arg;
+	static unsigned long last_jiffies;
+
+	if (system_state != SYSTEM_RUNNING)
+		return IRQ_HANDLED;
+
+	/* Skip interrupt in LS2K_BMC_INT_INTERVAL */
+	if (time_after(jiffies, last_jiffies + LS2K_BMC_INT_INTERVAL)) {
+		schedule_work(&priv->bmc_reset_work);
+		last_jiffies = jiffies;
+	}
+
+	return IRQ_HANDLED;
+}
+
+/*
+ * Saves the BMC parent device (LS7A) and its own PCI configuration space registers
+ * that need to be restored after BMC reset.
+ */
+static void ls2k_bmc_save_pci_data(struct pci_dev *pdev, struct ls2k_bmc_pdata *priv)
+{
+	struct pci_dev *parent = pdev->bus->self;
+	int base, i = 0;
+
+	pci_read_config_dword(parent, PCI_COMMAND, &priv->bridge_pci_data.pci_command);
+
+	for (base = PCI_BASE_ADDRESS_0; base <= PCI_BASE_ADDRESS_5; base += 4, i++)
+		pci_read_config_dword(parent, base, &priv->bridge_pci_data.base_address[i]);
+
+	pci_read_config_dword(parent, PCI_ROM_ADDRESS, &priv->bridge_pci_data.rom_addreess);
+	pci_read_config_dword(parent, PCI_INTERRUPT_LINE, &priv->bridge_pci_data.interrupt_line);
+
+	pci_read_config_dword(parent, parent->msi_cap + PCI_MSI_ADDRESS_LO,
+			      &priv->bridge_pci_data.msi_lo);
+	pci_read_config_dword(parent, parent->msi_cap + PCI_MSI_ADDRESS_HI,
+			      &priv->bridge_pci_data.msi_hi);
+
+	pci_read_config_dword(parent, parent->pcie_cap + PCI_EXP_DEVCTL,
+			      &priv->bridge_pci_data.devctl);
+	pci_read_config_dword(parent, parent->pcie_cap + PCI_EXP_LNKCAP,
+			      &priv->bridge_pci_data.linkcap);
+	pci_read_config_dword(parent, parent->pcie_cap + PCI_EXP_LNKCTL,
+			      &priv->bridge_pci_data.linkctl_sts);
+
+	pci_read_config_dword(parent, LS7A_GEN2_CTL, &priv->bridge_pci_data.gen2_ctrl);
+	priv->bridge_pci_data.gen2_ctrl |= FIELD_PREP(LS7A_GEN2_SPEED_CHANG, 0x1)
+					| FIELD_PREP(LS7A_CONF_PHY_TX, 0x0);
+
+	pci_read_config_dword(parent, LS7A_SYMBOL_TIMER, &priv->bridge_pci_data.symbol_timer);
+	priv->bridge_pci_data.symbol_timer |= LS7A_MASK_LEN_MATCH;
+
+	pci_read_config_dword(pdev, PCI_COMMAND, &priv->bmc_pci_data.pci_command);
+	pci_read_config_dword(pdev, PCI_BASE_ADDRESS_0, &priv->bmc_pci_data.base_address0);
+	pci_read_config_dword(pdev, PCI_INTERRUPT_LINE, &priv->bmc_pci_data.interrupt_line);
+}
+
+static int ls2k_bmc_pdata_initial(struct pci_dev *pdev, struct ls2k_bmc_pdata *priv)
+{
+	int gsi = 16 + (LS2K_BMC_RESET_GPIO & 7);
+	void __iomem *gpio_base;
+	int irq, ret;
+
+	ls2k_bmc_save_pci_data(pdev, priv);
+
+	INIT_WORK(&priv->bmc_reset_work, ls2k_bmc_events_fn);
+
+	ret = devm_request_irq(&pdev->dev, pdev->irq, ls2k_bmc_interrupt,
+			       IRQF_SHARED | IRQF_TRIGGER_FALLING, "ls2kbmc pcie", priv);
+	if (ret) {
+		dev_err(priv->dev, "LS2KBMC PCI-E request_irq(%d) failed\n", pdev->irq);
+		return ret;
+	}
+
+	/*
+	 * Since Loongson-3 hardware does not support GPIO interrupt cascade,
+	 * chip->gpio_to_irq() cannot be implemented, here acpi_register_gsi() is used
+	 * to get the GPIO irq.
+	 * The GPIO interrupt is a watchdog interrupt that is triggered when the BMC resets.
+	 */
+	irq = acpi_register_gsi(NULL, gsi, ACPI_EDGE_SENSITIVE, ACPI_ACTIVE_LOW);
+	if (irq < 0)
+		return irq;
+
+	gpio_base = ioremap(LOONGSON_GPIO_REG_BASE, LOONGSON_GPIO_REG_SIZE);
+	if (!gpio_base) {
+		ret = PTR_ERR(gpio_base);
+		goto acpi_failed;
+	}
+
+	writel(readl(gpio_base + LOONGSON_GPIO_OEN) | BIT(LS2K_BMC_RESET_GPIO),
+	       gpio_base + LOONGSON_GPIO_OEN);
+	writel(readl(gpio_base + LOONGSON_GPIO_FUNC) & ~BIT(LS2K_BMC_RESET_GPIO),
+	       gpio_base + LOONGSON_GPIO_FUNC);
+	writel(readl(gpio_base + LOONGSON_GPIO_INTPOL) & ~BIT(LS2K_BMC_RESET_GPIO),
+	       gpio_base + LOONGSON_GPIO_INTPOL);
+	writel(readl(gpio_base + LOONGSON_GPIO_INTEN) | BIT(LS2K_BMC_RESET_GPIO),
+	       gpio_base + LOONGSON_GPIO_INTEN);
+
+	ret = devm_request_irq(priv->dev, irq, ls2k_bmc_interrupt,
+			       IRQF_SHARED | IRQF_TRIGGER_FALLING, "ls2kbmc gpio", priv);
+	if (ret)
+		dev_err(priv->dev, "LS2KBMC GPIO request_irq(%d) failed\n", irq);
+
+	iounmap(gpio_base);
+
+acpi_failed:
+	acpi_unregister_gsi(gsi);
+	return ret;
+}
+
 /*
  * Currently the Loongson-2K BMC hardware does not have an I2C interface to adapt to the
  * resolution. We set the resolution by presetting "video=1280x1024-16@2M" to the BMC memory.
@@ -101,6 +417,7 @@ static int ls2k_bmc_parse_mode(struct pci_dev *pdev, struct simplefb_platform_da
 static int ls2k_bmc_probe(struct pci_dev *dev, const struct pci_device_id *id)
 {
 	struct simplefb_platform_data pd;
+	struct ls2k_bmc_pdata *priv;
 	resource_size_t base;
 	int ret;
 
@@ -108,6 +425,18 @@ static int ls2k_bmc_probe(struct pci_dev *dev, const struct pci_device_id *id)
 	if (ret)
 		return ret;
 
+	priv = devm_kzalloc(&dev->dev, sizeof(*priv), GFP_KERNEL);
+	if (IS_ERR(priv)) {
+		ret = -ENOMEM;
+		goto disable_pci;
+	}
+
+	priv->dev = &dev->dev;
+
+	ret = ls2k_bmc_pdata_initial(dev, priv);
+	if (ret)
+		goto disable_pci;
+
 	ret = ls2k_bmc_parse_mode(dev, &pd);
 	if (ret)
 		goto disable_pci;
-- 
2.47.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
