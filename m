Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2DB9FE687
	for <lists+openipmi-developer@lfdr.de>; Mon, 30 Dec 2024 14:32:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tSFsH-0000ZC-3w;
	Mon, 30 Dec 2024 13:32:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1tSCL4-0006YT-Df
 for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Dec 2024 09:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i5oCKUySfdGyJEyxyP9ssTkt9vI+zWiynAf4IXLu6WU=; b=Uq+lYKWsQ56bGccq2ktkIH45Mw
 UD7O8OhdDj7Q/5lcEER4TIaaeZ0tqRZEAdhhG8rKkZPiiSzslo1tOOQzF3nQCS8e0wWicpnCExaKc
 Px1miUb/4x7zWungEpg0MZzWkYbdaVUh8XolY0tP4ky1NDhehxFZh3ooMf0l/gsl1ViU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i5oCKUySfdGyJEyxyP9ssTkt9vI+zWiynAf4IXLu6WU=; b=ZEUD3xBxMLw7kFW51ru6S2s4vA
 Xwqcbf36TI7yJJJWUtn3Abwgpo6VPPckXkA8ZI63tPgdBqI754yhhIn/6qw/mPZbzh3sBW3or0TP8
 N10Xa5Ab9GToB6Xchj2uGASoYg19KMuAEnAwzM6RQteIafSRFUtG5AKhXX1bFDdWdK5g=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1tSCL3-0008FU-E1 for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Dec 2024 09:45:31 +0000
Received: from loongson.cn (unknown [223.64.68.63])
 by gateway (Coremail) with SMTP id _____8CxMK+DaHJnd89bAA--.25368S3;
 Mon, 30 Dec 2024 17:31:47 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.63])
 by front1 (Coremail) with SMTP id qMiowMCxbcd5aHJnyL4NAA--.3877S2;
 Mon, 30 Dec 2024 17:31:38 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Date: Mon, 30 Dec 2024 17:31:36 +0800
Message-ID: <b0ac8b81fbb8955ed8ada27aba423cff45aad9f6.1735550269.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1735550269.git.zhoubinbin@loongson.cn>
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowMCxbcd5aHJnyL4NAA--.3877S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxKw4UZrWDJrW3AF1DZr4xAFc_yoWfuF1rpF
 W5Aa4rtrWUtr1YgrZrX3WUCwsxKwn0qay7GFyIq3Zaya1avryDZFyrtF1fZF1fJrWkAr13
 X3ySkFW7uFyDA3gCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
 sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
 0xBIdaVrnRJUUUBvb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
 IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
 e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
 0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
 wI0_Gr1j6F4UJwAaw2AFwI0_JF0_Jw1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2
 xF0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_
 Wrv_ZF1lYx0Ex4A2jsIE14v26F4j6r4UJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2
 Ij64vIr41lc7CjxVAaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
 z7v_Jr0_Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x
 8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE
 2Ix0cI8IcVAFwI0_Ar0_tr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26F4j6r4UJwCI42IY6x
 AIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Cr0_Gr1UMIIF0xvEx4A2jsIE
 c7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07jxxhdUUUUU=
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Since the display is a sub-function of the Loongson-2K BMC, 
 when the BMC reset, the entire BMC PCIe is disconnected, including the display
 which is interrupted. Not only do you need to save/restore the relevant PCIe
 registers throughout the reset process, but you also need to re-push the
 display to the monitor at the end. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [114.242.206.163 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [114.242.206.163 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1tSCL3-0008FU-E1
X-Mailman-Approved-At: Mon, 30 Dec 2024 13:31:59 +0000
Subject: [Openipmi-developer] [PATCH v1 4/4] drm/ls2kbmc: Add Loongson-2K
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
Cc: Chong Qiao <qiaochong@loongson.cn>, Binbin Zhou <zhoubinbin@loongson.cn>,
 Huacai Chen <chenhuacai@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, loongarch@lists.linux.dev,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Since the display is a sub-function of the Loongson-2K BMC, when the
BMC reset, the entire BMC PCIe is disconnected, including the display
which is interrupted.

Not only do you need to save/restore the relevant PCIe registers
throughout the reset process, but you also need to re-push the display
to the monitor at the end.

Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 drivers/gpu/drm/tiny/ls2kbmc.c | 284 ++++++++++++++++++++++++++++++++-
 1 file changed, 283 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tiny/ls2kbmc.c b/drivers/gpu/drm/tiny/ls2kbmc.c
index 909d6c687193..4b440f20cb4d 100644
--- a/drivers/gpu/drm/tiny/ls2kbmc.c
+++ b/drivers/gpu/drm/tiny/ls2kbmc.c
@@ -8,10 +8,12 @@
  */
 
 #include <linux/aperture.h>
+#include <linux/delay.h>
 #include <linux/minmax.h>
 #include <linux/pci.h>
 #include <linux/platform_data/simplefb.h>
 #include <linux/platform_device.h>
+#include <linux/stop_machine.h>
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_state_helper.h>
@@ -32,9 +34,27 @@
 #include <drm/drm_panic.h>
 #include <drm/drm_probe_helper.h>
 
+#define BMC_RESET_DELAY	(60 * HZ)
+#define BMC_RESET_WAIT	10000
+
+static const u32 index[] = { 0x4, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24,
+			     0x30, 0x3c, 0x54, 0x58, 0x78, 0x7c, 0x80 };
+static const u32 cindex[] = { 0x4, 0x10, 0x3c };
+
+struct ls2kbmc_pci_data {
+	u32 d80c;
+	u32 d71c;
+	u32 data[14];
+	u32 cdata[3];
+};
+
 struct ls2kbmc_pdata {
 	struct pci_dev *pdev;
+	struct drm_device *ddev;
+	struct work_struct bmc_work;
+	unsigned long reset_time;
 	struct simplefb_platform_data pd;
+	struct ls2kbmc_pci_data pci_data;
 };
 
 /*
@@ -583,6 +603,265 @@ static struct ls2kbmc_device *ls2kbmc_device_create(struct drm_driver *drv,
 	return sdev;
 }
 
+static bool ls2kbmc_bar0_addr_is_set(struct pci_dev *ppdev)
+{
+	u32 addr;
+
+	pci_read_config_dword(ppdev, PCI_BASE_ADDRESS_0, &addr);
+	addr &= PCI_BASE_ADDRESS_MEM_MASK;
+
+	return addr ? true : false;
+}
+
+static void ls2kbmc_save_pci_data(struct ls2kbmc_pdata *priv)
+{
+	struct pci_dev *pdev = priv->pdev;
+	struct pci_dev *parent = pdev->bus->self;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(index); i++)
+		pci_read_config_dword(parent, index[i], &priv->pci_data.data[i]);
+
+	for (i = 0; i < ARRAY_SIZE(cindex); i++)
+		pci_read_config_dword(pdev, cindex[i], &priv->pci_data.cdata[i]);
+
+	pci_read_config_dword(parent, 0x80c, &priv->pci_data.d80c);
+	priv->pci_data.d80c = (priv->pci_data.d80c & ~(3 << 17)) | (1 << 17);
+
+	pci_read_config_dword(parent, 0x71c, &priv->pci_data.d71c);
+	priv->pci_data.d71c |= 1 << 26;
+}
+
+static bool ls2kbmc_check_pcie_connected(struct pci_dev *parent, struct drm_device *dev)
+{
+	void __iomem *mmio;
+	int sts, timeout = 10000;
+
+	mmio = pci_iomap(parent, 0, 0x100);
+	if (!mmio)
+		return false;
+
+	writel(readl(mmio) | 0x8, mmio);
+	while (timeout) {
+		sts = readl(mmio + 0xc);
+		if ((sts & 0x11) == 0x11)
+			break;
+		mdelay(1);
+		timeout--;
+	}
+
+	pci_iounmap(parent, mmio);
+
+	if (!timeout) {
+		drm_err(dev, "pcie train failed status=0x%x\n", sts);
+		return false;
+	}
+
+	return true;
+}
+
+static int ls2kbmc_recove_pci_data(void *data)
+{
+	struct ls2kbmc_pdata *priv = data;
+	struct pci_dev *pdev = priv->pdev;
+	struct drm_device *dev = priv->ddev;
+	struct pci_dev *parent = pdev->bus->self;
+	u32 i, timeout, retry = 0;
+	bool ready;
+
+	pci_write_config_dword(parent, PCI_BASE_ADDRESS_2, 0);
+	pci_write_config_dword(parent, PCI_BASE_ADDRESS_3, 0);
+	pci_write_config_dword(parent, PCI_BASE_ADDRESS_4, 0);
+
+	timeout = 10000;
+	while (timeout) {
+		ready = ls2kbmc_bar0_addr_is_set(parent);
+		if (!ready)
+			break;
+		mdelay(1);
+		timeout--;
+	};
+
+	if (!timeout)
+		drm_warn(dev, "bar not clear 0\n");
+
+retrain:
+	for (i = 0; i < ARRAY_SIZE(index); i++)
+		pci_write_config_dword(parent, index[i], priv->pci_data.data[i]);
+
+	pci_write_config_dword(parent, 0x80c, priv->pci_data.d80c);
+	pci_write_config_dword(parent, 0x71c, priv->pci_data.d71c);
+
+	/* Check if the pcie is connected */
+	ready = ls2kbmc_check_pcie_connected(parent, dev);
+	if (!ready)
+		return ready;
+
+	for (i = 0; i < ARRAY_SIZE(cindex); i++)
+		pci_write_config_dword(pdev, cindex[i], priv->pci_data.cdata[i]);
+
+	drm_info(dev, "pcie recovered done\n");
+
+	if (!retry) {
+		/*wait u-boot ddr config */
+		mdelay(BMC_RESET_WAIT);
+		ready = ls2kbmc_bar0_addr_is_set(parent);
+		if (!ready) {
+			retry = 1;
+			goto retrain;
+		}
+	}
+
+	return 0;
+}
+
+static int ls2kbmc_push_drm_mode(struct drm_device *dev)
+{
+	struct ls2kbmc_device *sdev = ls2kbmc_device_of_dev(dev);
+	struct drm_crtc *crtc = &sdev->crtc;
+	struct drm_plane *plane = crtc->primary;
+	struct drm_connector *connector = &sdev->connector;
+	struct drm_framebuffer *fb = NULL;
+	struct drm_mode_set set;
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
+
+	mutex_lock(&dev->mode_config.mutex);
+	connector->funcs->fill_modes(connector, 4096, 4096);
+	mutex_unlock(&dev->mode_config.mutex);
+
+	DRM_MODESET_LOCK_ALL_BEGIN(dev, ctx,
+				   DRM_MODESET_ACQUIRE_INTERRUPTIBLE, ret);
+
+	if (plane->state)
+		fb = plane->state->fb;
+	else
+		fb = plane->fb;
+
+	if (!fb) {
+		drm_dbg(dev, "CRTC doesn't have current FB\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	drm_framebuffer_get(fb);
+
+	set.crtc = crtc;
+	set.x = 0;
+	set.y = 0;
+	set.mode = &sdev->mode;
+	set.connectors = &connector;
+	set.num_connectors = 1;
+	set.fb = fb;
+
+	ret = crtc->funcs->set_config(&set, &ctx);
+
+out:
+	DRM_MODESET_LOCK_ALL_END(dev, ctx, ret);
+
+	return ret;
+}
+
+static void ls2kbmc_events_fn(struct work_struct *work)
+{
+	struct ls2kbmc_pdata *priv = container_of(work, struct ls2kbmc_pdata, bmc_work);
+
+	/*
+	 * The pcie is lost when the BMC resets,
+	 * at which point access to the pcie from other CPUs
+	 * is suspended to prevent a crash.
+	 */
+	stop_machine(ls2kbmc_recove_pci_data, priv, NULL);
+
+	drm_info(priv->ddev, "redraw console\n");
+
+	/* We need to re-push the display due to previous pcie loss. */
+	ls2kbmc_push_drm_mode(priv->ddev);
+}
+
+static irqreturn_t ls2kbmc_interrupt(int irq, void *arg)
+{
+	struct ls2kbmc_pdata *priv = arg;
+
+	if (system_state != SYSTEM_RUNNING)
+		return IRQ_HANDLED;
+
+	/* skip interrupt in BMC_RESET_DELAY */
+	if (time_after(jiffies, priv->reset_time + BMC_RESET_DELAY))
+		schedule_work(&priv->bmc_work);
+
+	priv->reset_time = jiffies;
+
+	return IRQ_HANDLED;
+}
+
+#define BMC_RESET_GPIO			14
+#define LOONGSON_GPIO_REG_BASE		0x1fe00500
+#define LOONGSON_GPIO_REG_SIZE		0x18
+#define LOONGSON_GPIO_OEN		0x0
+#define LOONGSON_GPIO_FUNC		0x4
+#define LOONGSON_GPIO_INTPOL		0x10
+#define LOONGSON_GPIO_INTEN		0x14
+
+/* The gpio interrupt is a watchdog interrupt that is triggered when the BMC resets. */
+static int ls2kbmc_gpio_reset_handler(struct ls2kbmc_pdata *priv)
+{
+	int irq, ret = 0;
+	int gsi = 16 + (BMC_RESET_GPIO & 7);
+	void __iomem *gpio_base;
+
+	/* Since Loongson-3A hardware does not support GPIO interrupt cascade,
+	 * chip->gpio_to_irq() cannot be implemented,
+	 * here acpi_register_gsi() is used to get gpio irq.
+	 */
+	irq = acpi_register_gsi(NULL, gsi, ACPI_EDGE_SENSITIVE, ACPI_ACTIVE_LOW);
+	if (irq < 0)
+		return irq;
+
+	gpio_base = ioremap(LOONGSON_GPIO_REG_BASE, LOONGSON_GPIO_REG_SIZE);
+	if (!gpio_base) {
+		acpi_unregister_gsi(gsi);
+		return PTR_ERR(gpio_base);
+	}
+
+	writel(readl(gpio_base + LOONGSON_GPIO_OEN) | BIT(BMC_RESET_GPIO),
+	       gpio_base + LOONGSON_GPIO_OEN);
+	writel(readl(gpio_base + LOONGSON_GPIO_FUNC) & ~BIT(BMC_RESET_GPIO),
+	       gpio_base + LOONGSON_GPIO_FUNC);
+	writel(readl(gpio_base + LOONGSON_GPIO_INTPOL) & ~BIT(BMC_RESET_GPIO),
+	       gpio_base + LOONGSON_GPIO_INTPOL);
+	writel(readl(gpio_base + LOONGSON_GPIO_INTEN) | BIT(BMC_RESET_GPIO),
+	       gpio_base + LOONGSON_GPIO_INTEN);
+
+	ret = request_irq(irq, ls2kbmc_interrupt, IRQF_SHARED | IRQF_TRIGGER_FALLING,
+			  "ls2kbmc gpio", priv);
+
+	acpi_unregister_gsi(gsi);
+	iounmap(gpio_base);
+
+	return ret;
+}
+
+static int ls2kbmc_pdata_initial(struct platform_device *pdev, struct ls2kbmc_pdata *priv)
+{
+	int ret;
+
+	priv->pdev = *(struct pci_dev **)dev_get_platdata(&pdev->dev);
+
+	ls2kbmc_save_pci_data(priv);
+
+	INIT_WORK(&priv->bmc_work, ls2kbmc_events_fn);
+
+	ret = request_irq(priv->pdev->irq, ls2kbmc_interrupt,
+			  IRQF_SHARED | IRQF_TRIGGER_RISING, "ls2kbmc pcie", priv);
+	if (ret) {
+		pr_err("request_irq(%d) failed\n", priv->pdev->irq);
+		return ret;
+	}
+
+	return ls2kbmc_gpio_reset_handler(priv);
+}
+
 /*
  * Platform driver
  */
@@ -598,12 +877,15 @@ static int ls2kbmc_probe(struct platform_device *pdev)
 	if (IS_ERR(priv))
 		return -ENOMEM;
 
-	priv->pdev = *(struct pci_dev **)dev_get_platdata(&pdev->dev);
+	ret = ls2kbmc_pdata_initial(pdev, priv);
+	if (ret)
+		return ret;
 
 	sdev = ls2kbmc_device_create(&ls2kbmc_driver, pdev, priv);
 	if (IS_ERR(sdev))
 		return PTR_ERR(sdev);
 	dev = &sdev->dev;
+	priv->ddev = &sdev->dev;
 
 	ret = drm_dev_register(dev, 0);
 	if (ret)
-- 
2.43.5



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
