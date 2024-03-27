Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD6F88ECAF
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Mar 2024 18:29:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpX4z-000794-93;
	Wed, 27 Mar 2024 17:28:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <apais@linux.microsoft.com>) id 1rpW1E-0005XA-1q
 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:20:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gG4HkPGUSv7UfrkIT/fLFeBn/l/I1IKATXvhPYPLyTc=; b=AezufE80jjYTW360AcCwErfmqq
 b6j2HOVd2ozx4HRLwcRvXy10+0h0Ar5IQfvBPbjeoKQpynKegBUut1WINItGMfuqnQz9I2Hj1toRS
 8/CQSbijAYDr0dxYdsXO7U/GfMwLfj3JQM3lFjTqG8tUfWhzd0zkM1Ps5z6IkF3Akn00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gG4HkPGUSv7UfrkIT/fLFeBn/l/I1IKATXvhPYPLyTc=; b=OoiPK5vLPXC1VEhD8L7C5SfBo0
 BBnLPrMxKz2v4b3sPtQOTYDu5rrUhGOKhxd68BwWJa8uwzTAzg+k85aw6gjEdg7P1aT6xqYvvW4DN
 U3I4hOECi+qybjLxAJ6kL9IfCKM1oWO3eAJ0EdatJYoYpgXZcPD2At8zrXUH/kEG0ReQ=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1rpW19-00052q-3U for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:20:52 +0000
Received: from apais-vm1.0synte4vioeebbvidf5q0vz2ua.xx.internal.cloudapp.net
 (unknown [52.183.86.224])
 by linux.microsoft.com (Postfix) with ESMTPSA id EA6502087EAD;
 Wed, 27 Mar 2024 09:03:21 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com EA6502087EAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1711555402;
 bh=gG4HkPGUSv7UfrkIT/fLFeBn/l/I1IKATXvhPYPLyTc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hZ9tbK6alrLBbs0gi/RA/rTTHk4Szr/ALK9qb/ljV5Z39ltd2AcQcwhzALpCC1wKd
 GIeCnfcSDRZCYwM84p9o8SFEII+jFkZGxJDmCb1a1V3QFisDxrwsPRClaYIO9y61bo
 AS1FoX6+/lM0tmj1WVEb896g3y43UOh3+1q2HAqg=
From: Allen Pais <apais@linux.microsoft.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 27 Mar 2024 16:03:10 +0000
Message-Id: <20240327160314.9982-6-apais@linux.microsoft.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240327160314.9982-1-apais@linux.microsoft.com>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The only generic interface to execute asynchronously in the
 BH context is tasklet; however, it's marked deprecated and has some design
 flaws. To replace tasklets, BH workqueue support was recently add [...] 
 Content analysis details:   (-15.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1rpW19-00052q-3U
X-Mailman-Approved-At: Wed, 27 Mar 2024 17:28:45 +0000
Subject: [Openipmi-developer] [PATCH 5/9] mailbox: Convert from tasklet to
 BH workqueue
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
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-hyperv@vger.kernel.org,
 HaraldWelte@viatech.com, paul@crapouillou.net, linux-tegra@vger.kernel.org,
 netdev@vger.kernel.org, maintainers@bluecherrydvr.com,
 peter.ujfalusi@gmail.com, manivannan.sadhasivam@linaro.org,
 linux-riscv@lists.infradead.org, kys@microsoft.com, robert.jarzmik@free.fr,
 haijie1@huawei.com, linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, wangzhou1@hisilicon.com, jernej.skrabec@gmail.com,
 jh80.chung@samsung.com, zw@zh-kernel.org, wens@csie.org,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com,
 pierre@ossman.eu, linux-usb@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 patrice.chotard@foss.st.com, asahi@lists.linux.dev, brucechang@via.com.tw,
 keescook@chromium.org, oakad@yahoo.com, sven@svenpeter.dev, rjui@broadcom.com,
 s.hauer@pengutronix.de, sean.wang@mediatek.com,
 linux-actions@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 haojian.zhuang@gmail.com, mirq-linux@rere.qmqm.pl, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 baolin.wang@linux.alibaba.com, matthias.bgg@gmail.com,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com,
 sbranden@broadcom.com, logang@deltatee.com, andersson@kernel.org,
 marcan@marcan.st, haiyangz@microsoft.com, linux-mips@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 vkoul@kernel.org, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The only generic interface to execute asynchronously in the BH context is
tasklet; however, it's marked deprecated and has some design flaws. To
replace tasklets, BH workqueue support was recently added. A BH workqueue
behaves similarly to regular workqueues except that the queued work items
are executed in the BH context.

This patch converts drivers/infiniband/* from tasklet to BH workqueue.

Based on the work done by Tejun Heo <tj@kernel.org>
Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10

Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/mailbox/bcm-pdc-mailbox.c | 21 +++++++++++----------
 drivers/mailbox/imx-mailbox.c     | 16 ++++++++--------
 2 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/mailbox/bcm-pdc-mailbox.c b/drivers/mailbox/bcm-pdc-mailbox.c
index 1768d3d5aaa0..242e7504a628 100644
--- a/drivers/mailbox/bcm-pdc-mailbox.c
+++ b/drivers/mailbox/bcm-pdc-mailbox.c
@@ -43,6 +43,7 @@
 #include <linux/dma-direction.h>
 #include <linux/dma-mapping.h>
 #include <linux/dmapool.h>
+#include <linux/workqueue.h>
 
 #define PDC_SUCCESS  0
 
@@ -293,8 +294,8 @@ struct pdc_state {
 
 	unsigned int pdc_irq;
 
-	/* tasklet for deferred processing after DMA rx interrupt */
-	struct tasklet_struct rx_tasklet;
+	/* work for deferred processing after DMA rx interrupt */
+	struct work_struct rx_work;
 
 	/* Number of bytes of receive status prior to each rx frame */
 	u32 rx_status_len;
@@ -952,18 +953,18 @@ static irqreturn_t pdc_irq_handler(int irq, void *data)
 	iowrite32(intstatus, pdcs->pdc_reg_vbase + PDC_INTSTATUS_OFFSET);
 
 	/* Wakeup IRQ thread */
-	tasklet_schedule(&pdcs->rx_tasklet);
+	queue_work(system_bh_wq, &pdcs->rx_work);
 	return IRQ_HANDLED;
 }
 
 /**
- * pdc_tasklet_cb() - Tasklet callback that runs the deferred processing after
+ * pdc_work_cb() - Work callback that runs the deferred processing after
  * a DMA receive interrupt. Reenables the receive interrupt.
  * @t: Pointer to the Altera sSGDMA channel structure
  */
-static void pdc_tasklet_cb(struct tasklet_struct *t)
+static void pdc_work_cb(struct work_struct *t)
 {
-	struct pdc_state *pdcs = from_tasklet(pdcs, t, rx_tasklet);
+	struct pdc_state *pdcs = from_work(pdcs, t, rx_work);
 
 	pdc_receive(pdcs);
 
@@ -1577,8 +1578,8 @@ static int pdc_probe(struct platform_device *pdev)
 
 	pdc_hw_init(pdcs);
 
-	/* Init tasklet for deferred DMA rx processing */
-	tasklet_setup(&pdcs->rx_tasklet, pdc_tasklet_cb);
+	/* Init work for deferred DMA rx processing */
+	INIT_WORK(&pdcs->rx_work, pdc_work_cb);
 
 	err = pdc_interrupts_init(pdcs);
 	if (err)
@@ -1595,7 +1596,7 @@ static int pdc_probe(struct platform_device *pdev)
 	return PDC_SUCCESS;
 
 cleanup_buf_pool:
-	tasklet_kill(&pdcs->rx_tasklet);
+	cancel_work_sync(&pdcs->rx_work);
 	dma_pool_destroy(pdcs->rx_buf_pool);
 
 cleanup_ring_pool:
@@ -1611,7 +1612,7 @@ static void pdc_remove(struct platform_device *pdev)
 
 	pdc_free_debugfs();
 
-	tasklet_kill(&pdcs->rx_tasklet);
+	cancel_work_sync(&pdcs->rx_work);
 
 	pdc_hw_disable(pdcs);
 
diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 5c1d09cad761..933727f89431 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -21,6 +21,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/suspend.h>
 #include <linux/slab.h>
+#include <linux/workqueue.h>
 
 #include "mailbox.h"
 
@@ -80,7 +81,7 @@ struct imx_mu_con_priv {
 	char			irq_desc[IMX_MU_CHAN_NAME_SIZE];
 	enum imx_mu_chan_type	type;
 	struct mbox_chan	*chan;
-	struct tasklet_struct	txdb_tasklet;
+	struct work_struct 	txdb_work;
 };
 
 struct imx_mu_priv {
@@ -232,7 +233,7 @@ static int imx_mu_generic_tx(struct imx_mu_priv *priv,
 		break;
 	case IMX_MU_TYPE_TXDB:
 		imx_mu_xcr_rmw(priv, IMX_MU_GCR, IMX_MU_xCR_GIRn(priv->dcfg->type, cp->idx), 0);
-		tasklet_schedule(&cp->txdb_tasklet);
+		queue_work(system_bh_wq, &cp->txdb_work);
 		break;
 	case IMX_MU_TYPE_TXDB_V2:
 		imx_mu_xcr_rmw(priv, IMX_MU_GCR, IMX_MU_xCR_GIRn(priv->dcfg->type, cp->idx), 0);
@@ -420,7 +421,7 @@ static int imx_mu_seco_tx(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp,
 		}
 
 		/* Simulate hack for mbox framework */
-		tasklet_schedule(&cp->txdb_tasklet);
+		queue_work(system_bh_wq, &cp->txdb_work);
 
 		break;
 	default:
@@ -484,9 +485,9 @@ static int imx_mu_seco_rxdb(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp
 	return err;
 }
 
-static void imx_mu_txdb_tasklet(unsigned long data)
+static void imx_mu_txdb_work(struct work_struct *t)
 {
-	struct imx_mu_con_priv *cp = (struct imx_mu_con_priv *)data;
+	struct imx_mu_con_priv *cp = from_work(cp, t, txdb_work);
 
 	mbox_chan_txdone(cp->chan, 0);
 }
@@ -570,8 +571,7 @@ static int imx_mu_startup(struct mbox_chan *chan)
 
 	if (cp->type == IMX_MU_TYPE_TXDB) {
 		/* Tx doorbell don't have ACK support */
-		tasklet_init(&cp->txdb_tasklet, imx_mu_txdb_tasklet,
-			     (unsigned long)cp);
+		INIT_WORK(&cp->txdb_work, imx_mu_txdb_work);
 		return 0;
 	}
 
@@ -615,7 +615,7 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
 	}
 
 	if (cp->type == IMX_MU_TYPE_TXDB) {
-		tasklet_kill(&cp->txdb_tasklet);
+		cancel_work_sync(&cp->txdb_work);
 		pm_runtime_put_sync(priv->dev);
 		return;
 	}
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
