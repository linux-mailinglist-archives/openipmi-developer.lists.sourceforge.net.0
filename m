Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 648FE9FE688
	for <lists+openipmi-developer@lfdr.de>; Mon, 30 Dec 2024 14:32:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tSFsI-0000Zv-9x;
	Mon, 30 Dec 2024 13:32:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhoubinbin@loongson.cn>) id 1tSCLC-0006Yu-Ui
 for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Dec 2024 09:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JSAtUH36yJ70+qP85hk98lccz4v5MBvK+tPvu4j0OzQ=; b=H+Qc7jkSDUBpblkYHrt7q92y77
 kqCHVeAkb/2LBcQzXzQrM4gcU6JroELVqvnBf5TOt43hTOrf9om2NWXMZ/65uPftu6vB2W8+y89rB
 ozB6lwMVXspazYPIdLefioBGcaEv+mYpYgWKyi8HG+I2VwVcnmhzGeE0R2P+2uZk5J0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JSAtUH36yJ70+qP85hk98lccz4v5MBvK+tPvu4j0OzQ=; b=b6BxFk8io4+35LwNv4H/XPAE6f
 VwtymvDZxT+3/e1rjDyVuC1VYwM5AaG50L+W5UfOMPuQLq+VkaYOOYbjBGfCQ3aL68vjznIslNwmF
 dEoMEQA1Iw5S/iIATv58mVlzQfXH8nrJ8NJnzL7TBNK7O34WX5hZ7H3g04+GgqAqNOZI=;
Received: from mail.loongson.cn ([114.242.206.163])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1tSCL8-0008G9-Hu for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Dec 2024 09:45:38 +0000
Received: from loongson.cn (unknown [223.64.68.63])
 by gateway (Coremail) with SMTP id _____8DxmeB0aHJnPs9bAA--.50036S3;
 Mon, 30 Dec 2024 17:31:32 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.63])
 by front1 (Coremail) with SMTP id qMiowMCxncVkaHJnp74NAA--.4295S5;
 Mon, 30 Dec 2024 17:31:21 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Lee Jones <lee@kernel.org>, Corey Minyard <minyard@acm.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>
Date: Mon, 30 Dec 2024 17:31:10 +0800
Message-ID: <4d62076ee560b35c653a9fbced8d03ef3bdb3005.1735550269.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1735550269.git.zhoubinbin@loongson.cn>
References: <cover.1735550269.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
X-CM-TRANSID: qMiowMCxncVkaHJnp74NAA--.4295S5
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj9fXoWfWr4kurykGw4xAr48Xry7Jwc_yoW8uF48Xo
 Z7XF13Xw48Gw1Fq39xGr1ktanavayvga93G345ur4vva1DWw1YyFW7Ww1YvFWxZr1rtr4D
 Zr1qvF1xJF4xJan5l-sFpf9Il3svdjkaLaAFLSUrUUUUnb8apTn2vfkv8UJUUUU8wcxFpf
 9Il3svdxBIdaVrn0xqx4xG64xvF2IEw4CE5I8CrVC2j2Jv73VFW2AGmfu7bjvjm3AaLaJ3
 UjIYCTnIWjp_UUUYZ7kC6x804xWl14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI
 8IcIk0rVWrJVCq3wAFIxvE14AKwVWUAVWUZwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xG
 Y2AK021l84ACjcxK6xIIjxv20xvE14v26F1j6w1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14
 v26F4j6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E
 14v26r4UJVWxJr1ln4kS14v26r126r1DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6x
 kI12xvs2x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v2
 6rWY6Fy7McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2
 Ij64vIr41lc7CjxVAaw2AFwI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Y
 z7v_Jr0_Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x
 8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r4a6rW5MIIYrxkI7VAKI48JMIIF0xvE
 2Ix0cI8IcVAFwI0_Xr0_Ar1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42
 xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF
 7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxUV5ETDUUUU
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Adds a driver for the Loongson-2K BMC display as a
 sub-function
 of the BMC device. Display-related scan output buffers, sizes, and display
 formats are provided through the Loongson-2K BMC MFD driver. 
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
X-Headers-End: 1tSCL8-0008G9-Hu
X-Mailman-Approved-At: Mon, 30 Dec 2024 13:32:00 +0000
Subject: [Openipmi-developer] [PATCH v1 3/4] drm/ls2kbmc: Add support for
 Loongson-2K BMC display
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

Adds a driver for the Loongson-2K BMC display as a sub-function of
the BMC device.

Display-related scan output buffers, sizes, and display formats are
provided through the Loongson-2K BMC MFD driver.

Co-developed-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Chong Qiao <qiaochong@loongson.cn>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 drivers/gpu/drm/tiny/Kconfig   |  18 +
 drivers/gpu/drm/tiny/Makefile  |   1 +
 drivers/gpu/drm/tiny/ls2kbmc.c | 636 +++++++++++++++++++++++++++++++++
 3 files changed, 655 insertions(+)
 create mode 100644 drivers/gpu/drm/tiny/ls2kbmc.c

diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
index 94cbdb1337c0..5412f639a964 100644
--- a/drivers/gpu/drm/tiny/Kconfig
+++ b/drivers/gpu/drm/tiny/Kconfig
@@ -171,6 +171,24 @@ config TINYDRM_ILI9486
 
 	  If M is selected the module will be called ili9486.
 
+config TINYDRM_LS2KBMC
+	tristate "DRM support for Loongson-2K BMC display"
+	depends on DRM && MMU
+	depends on MFD_LS2K_BMC
+	select APERTURE_HELPERS
+	select DRM_CLIENT_SELECTION
+	select DRM_GEM_SHMEM_HELPER
+	select DRM_KMS_HELPER
+	help
+	  DRM driver for the Loongson-2K BMC display.
+
+	  This driver assumes that the display hardware has been initialized
+	  by the Loongson-2K BMC. Since the Loongson-2K BMC does not support
+	  resolution detection now, the scan buffer, size and display format
+	  are fixed and provided by the BMC.
+
+	  If M is selected the module will be called ls2kbmc.
+
 config TINYDRM_MI0283QT
 	tristate "DRM support for MI0283QT"
 	depends on DRM && SPI
diff --git a/drivers/gpu/drm/tiny/Makefile b/drivers/gpu/drm/tiny/Makefile
index 4aaf56f8707d..fa4e1646db77 100644
--- a/drivers/gpu/drm/tiny/Makefile
+++ b/drivers/gpu/drm/tiny/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_TINYDRM_ILI9163)		+= ili9163.o
 obj-$(CONFIG_TINYDRM_ILI9225)		+= ili9225.o
 obj-$(CONFIG_TINYDRM_ILI9341)		+= ili9341.o
 obj-$(CONFIG_TINYDRM_ILI9486)		+= ili9486.o
+obj-$(CONFIG_TINYDRM_LS2KBMC)		+= ls2kbmc.o
 obj-$(CONFIG_TINYDRM_MI0283QT)		+= mi0283qt.o
 obj-$(CONFIG_TINYDRM_REPAPER)		+= repaper.o
 obj-$(CONFIG_TINYDRM_SHARP_MEMORY)	+= sharp-memory.o
diff --git a/drivers/gpu/drm/tiny/ls2kbmc.c b/drivers/gpu/drm/tiny/ls2kbmc.c
new file mode 100644
index 000000000000..909d6c687193
--- /dev/null
+++ b/drivers/gpu/drm/tiny/ls2kbmc.c
@@ -0,0 +1,636 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * DRM driver for Loongson-2K BMC display
+ *
+ * Copyright (C) 2024 Loongson Technology Corporation Limited.
+ *
+ * Based on simpledrm
+ */
+
+#include <linux/aperture.h>
+#include <linux/minmax.h>
+#include <linux/pci.h>
+#include <linux/platform_data/simplefb.h>
+#include <linux/platform_device.h>
+
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_state_helper.h>
+#include <drm/drm_client_setup.h>
+#include <drm/drm_connector.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_damage_helper.h>
+#include <drm/drm_device.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_fbdev_shmem.h>
+#include <drm/drm_format_helper.h>
+#include <drm/drm_framebuffer.h>
+#include <drm/drm_gem_atomic_helper.h>
+#include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_gem_shmem_helper.h>
+#include <drm/drm_managed.h>
+#include <drm/drm_modeset_helper_vtables.h>
+#include <drm/drm_panic.h>
+#include <drm/drm_probe_helper.h>
+
+struct ls2kbmc_pdata {
+	struct pci_dev *pdev;
+	struct simplefb_platform_data pd;
+};
+
+/*
+ * Helpers for simplefb_platform_data
+ */
+
+static int
+simplefb_get_validated_int(struct drm_device *dev, const char *name,
+			   u32 value)
+{
+	if (value > INT_MAX) {
+		drm_err(dev, "simplefb: invalid framebuffer %s of %u\n",
+			name, value);
+		return -EINVAL;
+	}
+	return (int)value;
+}
+
+static int
+simplefb_get_validated_int0(struct drm_device *dev, const char *name,
+			    u32 value)
+{
+	if (!value) {
+		drm_err(dev, "simplefb: invalid framebuffer %s of %u\n",
+			name, value);
+		return -EINVAL;
+	}
+	return simplefb_get_validated_int(dev, name, value);
+}
+
+static const struct drm_format_info *
+simplefb_get_validated_format(struct drm_device *dev, const char *format_name)
+{
+	static const struct simplefb_format formats[] = SIMPLEFB_FORMATS;
+	const struct simplefb_format *fmt = formats;
+	const struct simplefb_format *end = fmt + ARRAY_SIZE(formats);
+	const struct drm_format_info *info;
+
+	if (!format_name) {
+		drm_err(dev, "simplefb: missing framebuffer format\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	while (fmt < end) {
+		if (!strcmp(format_name, fmt->name)) {
+			info = drm_format_info(fmt->fourcc);
+			if (!info)
+				return ERR_PTR(-EINVAL);
+			return info;
+		}
+		++fmt;
+	}
+
+	drm_err(dev, "simplefb: unknown framebuffer format %s\n",
+		format_name);
+
+	return ERR_PTR(-EINVAL);
+}
+
+static int
+simplefb_get_width_pd(struct drm_device *dev,
+		      const struct simplefb_platform_data *pd)
+{
+	return simplefb_get_validated_int0(dev, "width", pd->width);
+}
+
+static int
+simplefb_get_height_pd(struct drm_device *dev,
+		       const struct simplefb_platform_data *pd)
+{
+	return simplefb_get_validated_int0(dev, "height", pd->height);
+}
+
+static int
+simplefb_get_stride_pd(struct drm_device *dev,
+		       const struct simplefb_platform_data *pd)
+{
+	return simplefb_get_validated_int(dev, "stride", pd->stride);
+}
+
+static const struct drm_format_info *
+simplefb_get_format_pd(struct drm_device *dev,
+		       const struct simplefb_platform_data *pd)
+{
+	return simplefb_get_validated_format(dev, pd->format);
+}
+
+/*
+ * ls2kbmc Framebuffer device
+ */
+
+struct ls2kbmc_device {
+	struct drm_device dev;
+
+	/* simplefb settings */
+	struct drm_display_mode mode;
+	const struct drm_format_info *format;
+	unsigned int pitch;
+
+	/* memory management */
+	struct iosys_map screen_base;
+
+	/* modesetting */
+	u32 formats[8];
+	struct drm_plane primary_plane;
+	struct drm_crtc crtc;
+	struct drm_encoder encoder;
+	struct drm_connector connector;
+};
+
+static struct ls2kbmc_device *ls2kbmc_device_of_dev(struct drm_device *dev)
+{
+	return container_of(dev, struct ls2kbmc_device, dev);
+}
+
+/*
+ * Modesetting
+ */
+
+static const u64 ls2kbmc_primary_plane_format_modifiers[] = {
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
+static int ls2kbmc_primary_plane_helper_atomic_check(struct drm_plane *plane,
+						     struct drm_atomic_state *state)
+{
+	struct drm_plane_state *new_plane_state = drm_atomic_get_new_plane_state(state, plane);
+	struct drm_shadow_plane_state *new_shadow_plane_state =
+		to_drm_shadow_plane_state(new_plane_state);
+	struct drm_framebuffer *new_fb = new_plane_state->fb;
+	struct drm_crtc *new_crtc = new_plane_state->crtc;
+	struct drm_crtc_state *new_crtc_state = NULL;
+	struct drm_device *dev = plane->dev;
+	struct ls2kbmc_device *sdev = ls2kbmc_device_of_dev(dev);
+	int ret;
+
+	if (new_crtc)
+		new_crtc_state = drm_atomic_get_new_crtc_state(state, new_crtc);
+
+	ret = drm_atomic_helper_check_plane_state(new_plane_state, new_crtc_state,
+						  DRM_PLANE_NO_SCALING,
+						  DRM_PLANE_NO_SCALING,
+						  false, false);
+	if (ret)
+		return ret;
+	else if (!new_plane_state->visible)
+		return 0;
+
+	if (new_fb->format != sdev->format) {
+		void *buf;
+
+		/* format conversion necessary; reserve buffer */
+		buf = drm_format_conv_state_reserve(&new_shadow_plane_state->fmtcnv_state,
+						    sdev->pitch, GFP_KERNEL);
+		if (!buf)
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static void ls2kbmc_primary_plane_helper_atomic_update(struct drm_plane *plane,
+						       struct drm_atomic_state *state)
+{
+	struct drm_plane_state *plane_state = drm_atomic_get_new_plane_state(state, plane);
+	struct drm_plane_state *old_plane_state = drm_atomic_get_old_plane_state(state, plane);
+	struct drm_shadow_plane_state *shadow_plane_state = to_drm_shadow_plane_state(plane_state);
+	struct drm_framebuffer *fb = plane_state->fb;
+	struct drm_device *dev = plane->dev;
+	struct ls2kbmc_device *sdev = ls2kbmc_device_of_dev(dev);
+	struct drm_atomic_helper_damage_iter iter;
+	struct drm_rect damage;
+	int ret, idx;
+
+	ret = drm_gem_fb_begin_cpu_access(fb, DMA_FROM_DEVICE);
+	if (ret)
+		return;
+
+	if (!drm_dev_enter(dev, &idx))
+		goto out_drm_gem_fb_end_cpu_access;
+
+	drm_atomic_helper_damage_iter_init(&iter, old_plane_state, plane_state);
+	drm_atomic_for_each_plane_damage(&iter, &damage) {
+		struct drm_rect dst_clip = plane_state->dst;
+		struct iosys_map dst = sdev->screen_base;
+
+		if (!drm_rect_intersect(&dst_clip, &damage))
+			continue;
+
+		iosys_map_incr(&dst, drm_fb_clip_offset(sdev->pitch, sdev->format, &dst_clip));
+		drm_fb_blit(&dst, &sdev->pitch, sdev->format->format, shadow_plane_state->data,
+			    fb, &damage, &shadow_plane_state->fmtcnv_state);
+	}
+
+	drm_dev_exit(idx);
+out_drm_gem_fb_end_cpu_access:
+	drm_gem_fb_end_cpu_access(fb, DMA_FROM_DEVICE);
+}
+
+static void ls2kbmc_primary_plane_helper_atomic_disable(struct drm_plane *plane,
+							struct drm_atomic_state *state)
+{
+	struct drm_device *dev = plane->dev;
+	struct ls2kbmc_device *sdev = ls2kbmc_device_of_dev(dev);
+	int idx;
+
+	if (!drm_dev_enter(dev, &idx))
+		return;
+
+	/* Clear screen to black if disabled */
+	iosys_map_memset(&sdev->screen_base, 0, 0, sdev->pitch * sdev->mode.vdisplay);
+
+	drm_dev_exit(idx);
+}
+
+static int ls2kbmc_primary_plane_helper_get_scanout_buffer(struct drm_plane *plane,
+							   struct drm_scanout_buffer *sb)
+{
+	struct ls2kbmc_device *sdev = ls2kbmc_device_of_dev(plane->dev);
+
+	sb->width = sdev->mode.hdisplay;
+	sb->height = sdev->mode.vdisplay;
+	sb->format = sdev->format;
+	sb->pitch[0] = sdev->pitch;
+	sb->map[0] = sdev->screen_base;
+
+	return 0;
+}
+
+static const struct drm_plane_helper_funcs ls2kbmc_primary_plane_helper_funcs = {
+	DRM_GEM_SHADOW_PLANE_HELPER_FUNCS,
+	.atomic_check = ls2kbmc_primary_plane_helper_atomic_check,
+	.atomic_update = ls2kbmc_primary_plane_helper_atomic_update,
+	.atomic_disable = ls2kbmc_primary_plane_helper_atomic_disable,
+	.get_scanout_buffer = ls2kbmc_primary_plane_helper_get_scanout_buffer,
+};
+
+static const struct drm_plane_funcs ls2kbmc_primary_plane_funcs = {
+	.update_plane = drm_atomic_helper_update_plane,
+	.disable_plane = drm_atomic_helper_disable_plane,
+	.destroy = drm_plane_cleanup,
+	DRM_GEM_SHADOW_PLANE_FUNCS,
+};
+
+static enum drm_mode_status ls2kbmc_crtc_helper_mode_valid(struct drm_crtc *crtc,
+							   const struct drm_display_mode *mode)
+{
+	struct ls2kbmc_device *sdev = ls2kbmc_device_of_dev(crtc->dev);
+
+	return drm_crtc_helper_mode_valid_fixed(crtc, mode, &sdev->mode);
+}
+
+/*
+ * The CRTC is always enabled. Screen updates are performed by
+ * the primary plane's atomic_update function. Disabling clears
+ * the screen in the primary plane's atomic_disable function.
+ */
+static const struct drm_crtc_helper_funcs ls2kbmc_crtc_helper_funcs = {
+	.mode_valid = ls2kbmc_crtc_helper_mode_valid,
+	.atomic_check = drm_crtc_helper_atomic_check,
+};
+
+static const struct drm_crtc_funcs ls2kbmc_crtc_funcs = {
+	.reset = drm_atomic_helper_crtc_reset,
+	.destroy = drm_crtc_cleanup,
+	.set_config = drm_atomic_helper_set_config,
+	.page_flip = drm_atomic_helper_page_flip,
+	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_crtc_destroy_state,
+};
+
+static const struct drm_encoder_funcs ls2kbmc_encoder_funcs = {
+	.destroy = drm_encoder_cleanup,
+};
+
+static int ls2kbmc_connector_helper_get_modes(struct drm_connector *connector)
+{
+	struct ls2kbmc_device *sdev = ls2kbmc_device_of_dev(connector->dev);
+
+	return drm_connector_helper_get_modes_fixed(connector, &sdev->mode);
+}
+
+static const struct drm_connector_helper_funcs ls2kbmc_connector_helper_funcs = {
+	.get_modes = ls2kbmc_connector_helper_get_modes,
+};
+
+static const struct drm_connector_funcs ls2kbmc_connector_funcs = {
+	.reset = drm_atomic_helper_connector_reset,
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = drm_connector_cleanup,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static const struct drm_mode_config_funcs ls2kbmc_mode_config_funcs = {
+	.fb_create = drm_gem_fb_create_with_dirty,
+	.atomic_check = drm_atomic_helper_check,
+	.atomic_commit = drm_atomic_helper_commit,
+};
+
+/*
+ * Init / Cleanup
+ */
+
+static struct drm_display_mode ls2kbmc_mode(unsigned int width, unsigned int height,
+					    unsigned int width_mm, unsigned int height_mm)
+{
+	const struct drm_display_mode mode = {
+		DRM_MODE_INIT(60, width, height, width_mm, height_mm)
+	};
+
+	return mode;
+}
+
+/*
+ * DRM driver
+ */
+
+DEFINE_DRM_GEM_FOPS(ls2kbmc_fops);
+
+static struct drm_driver ls2kbmc_driver = {
+	DRM_GEM_SHMEM_DRIVER_OPS,
+	DRM_FBDEV_SHMEM_DRIVER_OPS,
+	.name			= "simpledrm",
+	.desc			= "DRM driver for Loongson-2K BMC",
+	.date			= "20241211",
+	.major			= 1,
+	.minor			= 0,
+	.driver_features	= DRIVER_ATOMIC | DRIVER_GEM | DRIVER_MODESET,
+	.fops			= &ls2kbmc_fops,
+};
+
+/*
+ * Currently the Loongson-2K0500 BMC hardware does not have an i2c interface to
+ * adapt to the resolution.
+ * We set the resolution by presetting "video=1280x1024-16@2M" to the bmc memory.
+ */
+static int ls2kbmc_get_video_mode(struct pci_dev *pdev, struct simplefb_platform_data *pd)
+{
+	char *mode;
+	int depth, ret;
+
+	/* The pci mem bar last 16M is used to store the string. */
+	mode = devm_ioremap(&pdev->dev, pci_resource_start(pdev, 0) + SZ_16M, SZ_16M);
+	if (!mode)
+		return -ENOMEM;
+
+	/*env at last 16M's beginning, first env is video */
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
+static struct ls2kbmc_device *ls2kbmc_device_create(struct drm_driver *drv,
+						    struct platform_device *pdev,
+						    struct ls2kbmc_pdata *priv)
+{
+	struct pci_dev *ppdev = priv->pdev;
+	struct simplefb_platform_data *pd = &priv->pd;
+	struct ls2kbmc_device *sdev;
+	struct drm_device *dev;
+	int width, height, stride;
+	int width_mm = 0, height_mm = 0;
+	const struct drm_format_info *format;
+	struct resource *res, *mem = NULL;
+	struct drm_plane *primary_plane;
+	struct drm_crtc *crtc;
+	struct drm_encoder *encoder;
+	struct drm_connector *connector;
+	unsigned long max_width, max_height;
+	void __iomem *screen_base;
+	size_t nformats;
+	int ret;
+
+	sdev = devm_drm_dev_alloc(&pdev->dev, drv, struct ls2kbmc_device, dev);
+	if (IS_ERR(sdev))
+		return ERR_CAST(sdev);
+	dev = &sdev->dev;
+	platform_set_drvdata(pdev, sdev);
+
+	ret = ls2kbmc_get_video_mode(ppdev, pd);
+	if (ret) {
+		drm_err(dev, "no simplefb configuration found\n");
+		return ERR_PTR(ret);
+	}
+
+	width = simplefb_get_width_pd(dev, pd);
+	if (width < 0)
+		return ERR_PTR(width);
+
+	height = simplefb_get_height_pd(dev, pd);
+	if (height < 0)
+		return ERR_PTR(height);
+
+	stride = simplefb_get_stride_pd(dev, pd);
+	if (stride < 0)
+		return ERR_PTR(stride);
+
+	if (!stride) {
+		stride = drm_format_info_min_pitch(format, 0, width);
+		if (drm_WARN_ON(dev, !stride))
+			return ERR_PTR(-EINVAL);
+	}
+
+	format = simplefb_get_format_pd(dev, pd);
+	if (IS_ERR(format))
+		return ERR_CAST(format);
+
+	/*
+	 * Assume a monitor resolution of 96 dpi if physical dimensions
+	 * are not specified to get a somewhat reasonable screen size.
+	 */
+	if (!width_mm)
+		width_mm = DRM_MODE_RES_MM(width, 96ul);
+	if (!height_mm)
+		height_mm = DRM_MODE_RES_MM(height, 96ul);
+
+	sdev->mode = ls2kbmc_mode(width, height, width_mm, height_mm);
+	sdev->format = format;
+	sdev->pitch = stride;
+
+	drm_dbg(dev, "display mode={" DRM_MODE_FMT "}\n", DRM_MODE_ARG(&sdev->mode));
+	drm_dbg(dev, "framebuffer format=%p4cc, size=%dx%d, stride=%d byte\n",
+		&format->format, width, height, stride);
+
+	/*
+	 * Memory management
+	 */
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return ERR_PTR(-EINVAL);
+
+	ret = aperture_remove_conflicting_pci_devices(ppdev, ls2kbmc_driver.name);
+	if (ret) {
+		drm_err(dev, "could not acquire memory range %pr: %d\n", res, ret);
+		return ERR_PTR(ret);
+	}
+
+	drm_dbg(dev, "using I/O memory framebuffer at %pr\n", res);
+
+	mem = devm_request_mem_region(&ppdev->dev, res->start, resource_size(res),
+				      drv->name);
+	if (!mem) {
+		/*
+		 * We cannot make this fatal. Sometimes this comes from magic
+		 * spaces our resource handlers simply don't know about. Use
+		 * the I/O-memory resource as-is and try to map that instead.
+		 */
+		drm_warn(dev, "could not acquire memory region %pr\n", res);
+		mem = res;
+	}
+
+	screen_base = devm_ioremap_wc(&ppdev->dev, mem->start, resource_size(mem));
+	if (!screen_base)
+		return ERR_PTR(-ENOMEM);
+
+	iosys_map_set_vaddr_iomem(&sdev->screen_base, screen_base);
+
+	/*
+	 * Modesetting
+	 */
+
+	ret = drmm_mode_config_init(dev);
+	if (ret)
+		return ERR_PTR(ret);
+
+	max_width = max_t(unsigned long, width, DRM_SHADOW_PLANE_MAX_WIDTH);
+	max_height = max_t(unsigned long, height, DRM_SHADOW_PLANE_MAX_HEIGHT);
+
+	dev->mode_config.min_width = width;
+	dev->mode_config.max_width = max_width;
+	dev->mode_config.min_height = height;
+	dev->mode_config.max_height = max_height;
+	dev->mode_config.preferred_depth = format->depth;
+	dev->mode_config.funcs = &ls2kbmc_mode_config_funcs;
+
+	/* Primary plane */
+
+	nformats = drm_fb_build_fourcc_list(dev, &format->format, 1,
+					    sdev->formats, ARRAY_SIZE(sdev->formats));
+
+	primary_plane = &sdev->primary_plane;
+	ret = drm_universal_plane_init(dev, primary_plane, 0, &ls2kbmc_primary_plane_funcs,
+				       sdev->formats, nformats,
+				       ls2kbmc_primary_plane_format_modifiers,
+				       DRM_PLANE_TYPE_PRIMARY, NULL);
+	if (ret)
+		return ERR_PTR(ret);
+	drm_plane_helper_add(primary_plane, &ls2kbmc_primary_plane_helper_funcs);
+	drm_plane_enable_fb_damage_clips(primary_plane);
+
+	/* CRTC */
+
+	crtc = &sdev->crtc;
+	ret = drm_crtc_init_with_planes(dev, crtc, primary_plane, NULL,
+					&ls2kbmc_crtc_funcs, NULL);
+	if (ret)
+		return ERR_PTR(ret);
+	drm_crtc_helper_add(crtc, &ls2kbmc_crtc_helper_funcs);
+
+	/* Encoder */
+
+	encoder = &sdev->encoder;
+	ret = drm_encoder_init(dev, encoder, &ls2kbmc_encoder_funcs,
+			       DRM_MODE_ENCODER_NONE, NULL);
+	if (ret)
+		return ERR_PTR(ret);
+	encoder->possible_crtcs = drm_crtc_mask(crtc);
+
+	/* Connector */
+
+	connector = &sdev->connector;
+	ret = drm_connector_init(dev, connector, &ls2kbmc_connector_funcs,
+				 DRM_MODE_CONNECTOR_Unknown);
+	if (ret)
+		return ERR_PTR(ret);
+	drm_connector_helper_add(connector, &ls2kbmc_connector_helper_funcs);
+	drm_connector_set_panel_orientation_with_quirk(connector,
+						       DRM_MODE_PANEL_ORIENTATION_UNKNOWN,
+						       width, height);
+
+	ret = drm_connector_attach_encoder(connector, encoder);
+	if (ret)
+		return ERR_PTR(ret);
+
+	drm_mode_config_reset(dev);
+
+	return sdev;
+}
+
+/*
+ * Platform driver
+ */
+
+static int ls2kbmc_probe(struct platform_device *pdev)
+{
+	struct ls2kbmc_device *sdev;
+	struct ls2kbmc_pdata *priv;
+	struct drm_device *dev;
+	int ret;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (IS_ERR(priv))
+		return -ENOMEM;
+
+	priv->pdev = *(struct pci_dev **)dev_get_platdata(&pdev->dev);
+
+	sdev = ls2kbmc_device_create(&ls2kbmc_driver, pdev, priv);
+	if (IS_ERR(sdev))
+		return PTR_ERR(sdev);
+	dev = &sdev->dev;
+
+	ret = drm_dev_register(dev, 0);
+	if (ret)
+		return ret;
+
+	drm_client_setup(dev, sdev->format);
+
+	return 0;
+}
+
+static void ls2kbmc_remove(struct platform_device *pdev)
+{
+	struct ls2kbmc_device *sdev = platform_get_drvdata(pdev);
+	struct drm_device *dev = &sdev->dev;
+
+	drm_dev_unplug(dev);
+}
+
+static struct platform_driver ls2kbmc_platform_driver = {
+	.driver = {
+		.name = "ls2kbmc-framebuffer",
+	},
+	.probe = ls2kbmc_probe,
+	.remove = ls2kbmc_remove,
+};
+
+module_platform_driver(ls2kbmc_platform_driver);
+
+MODULE_DESCRIPTION("DRM driver for Loongson-2K BMC");
+MODULE_LICENSE("GPL");
-- 
2.43.5



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
