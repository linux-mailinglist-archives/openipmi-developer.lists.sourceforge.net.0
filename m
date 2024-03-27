Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 351A088ECAC
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Mar 2024 18:28:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpX4y-00078a-Kp;
	Wed, 27 Mar 2024 17:28:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <apais@linux.microsoft.com>) id 1rpW19-0002Ly-AU
 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:20:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wCLpjQkL/ru41Ip2DKr6ngKIXssxI+yPvh/4tHpaDQQ=; b=f00lLIgktfgg9i+Uc9BwEIOCOI
 UXHJmMVwUTkmw0k6F8n+F5rAVFPH4FEoejj2amdpSdCGBtZTnhl4mw+MxOJkLbeaElLqaR7pD+X2S
 8a+Us3dvd0uJGbZUegk30ezfmdu3M6IPUsej2VAmbyOfRm+kKoQtIL77PWFxFjTevlX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wCLpjQkL/ru41Ip2DKr6ngKIXssxI+yPvh/4tHpaDQQ=; b=CBafvRvoNTIEGTR+dHarS4YeVD
 G0mH4uUJwlPaVWFVTK8mxI8LSJZVHLUm3ROWcSQroMWcQYpeQFK/SDqD8xG80HkuUu3R6IsBC/g4A
 z7iBBriJLA8e4kw6v4Orsmlfkfqwh+fghlHuo03QTv4ccN3WA2GzlepEZNO7re7lA9Us=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1rpW0z-000528-QF for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:20:39 +0000
Received: from apais-vm1.0synte4vioeebbvidf5q0vz2ua.xx.internal.cloudapp.net
 (unknown [52.183.86.224])
 by linux.microsoft.com (Postfix) with ESMTPSA id 1998C2085CFD;
 Wed, 27 Mar 2024 09:03:21 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 1998C2085CFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1711555401;
 bh=wCLpjQkL/ru41Ip2DKr6ngKIXssxI+yPvh/4tHpaDQQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nxmkJqSXmGl7g68HXDx/9x2GA+7p2WKJQiiVe8QorJ/57CF9t5z1JvzkAHjTTRn5e
 Fm7Ss7Gx/+oc1I6X+C4UOU9dGhWfADCrdxQin+eotT6IIUf3OV8L3zN0V33d4sRdjA
 xwDGCsWcNNYAi7U4jn/Elfwlge9z4T9e0VLYOiyQ=
From: Allen Pais <apais@linux.microsoft.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 27 Mar 2024 16:03:06 +0000
Message-Id: <20240327160314.9982-2-apais@linux.microsoft.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240327160314.9982-1-apais@linux.microsoft.com>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 welcome-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1rpW0z-000528-QF
X-Mailman-Approved-At: Wed, 27 Mar 2024 17:28:45 +0000
Subject: [Openipmi-developer] [PATCH 1/9] hyperv: Convert from tasklet to BH
 workqueue
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

This patch converts drivers/hv/* from tasklet to BH workqueue.

Based on the work done by Tejun Heo <tj@kernel.org>
Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10

Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/hv/channel.c      |  8 ++++----
 drivers/hv/channel_mgmt.c |  5 ++---
 drivers/hv/connection.c   |  9 +++++----
 drivers/hv/hv.c           |  3 +--
 drivers/hv/hv_balloon.c   |  4 ++--
 drivers/hv/hv_fcopy.c     |  8 ++++----
 drivers/hv/hv_kvp.c       |  8 ++++----
 drivers/hv/hv_snapshot.c  |  8 ++++----
 drivers/hv/hyperv_vmbus.h |  9 +++++----
 drivers/hv/vmbus_drv.c    | 19 ++++++++++---------
 include/linux/hyperv.h    |  2 +-
 11 files changed, 42 insertions(+), 41 deletions(-)

diff --git a/drivers/hv/channel.c b/drivers/hv/channel.c
index adbf674355b2..876d78eb4dce 100644
--- a/drivers/hv/channel.c
+++ b/drivers/hv/channel.c
@@ -859,7 +859,7 @@ void vmbus_reset_channel_cb(struct vmbus_channel *channel)
 	unsigned long flags;
 
 	/*
-	 * vmbus_on_event(), running in the per-channel tasklet, can race
+	 * vmbus_on_event(), running in the per-channel work, can race
 	 * with vmbus_close_internal() in the case of SMP guest, e.g., when
 	 * the former is accessing channel->inbound.ring_buffer, the latter
 	 * could be freeing the ring_buffer pages, so here we must stop it
@@ -871,7 +871,7 @@ void vmbus_reset_channel_cb(struct vmbus_channel *channel)
 	 * and that the channel ring buffer is no longer being accessed, cf.
 	 * the calls to napi_disable() in netvsc_device_remove().
 	 */
-	tasklet_disable(&channel->callback_event);
+	disable_work_sync(&channel->callback_event);
 
 	/* See the inline comments in vmbus_chan_sched(). */
 	spin_lock_irqsave(&channel->sched_lock, flags);
@@ -880,8 +880,8 @@ void vmbus_reset_channel_cb(struct vmbus_channel *channel)
 
 	channel->sc_creation_callback = NULL;
 
-	/* Re-enable tasklet for use on re-open */
-	tasklet_enable(&channel->callback_event);
+	/* Re-enable work for use on re-open */
+	enable_and_queue_work(system_bh_wq, &channel->callback_event);
 }
 
 static int vmbus_close_internal(struct vmbus_channel *channel)
diff --git a/drivers/hv/channel_mgmt.c b/drivers/hv/channel_mgmt.c
index 2f4d09ce027a..58397071a0de 100644
--- a/drivers/hv/channel_mgmt.c
+++ b/drivers/hv/channel_mgmt.c
@@ -353,8 +353,7 @@ static struct vmbus_channel *alloc_channel(void)
 
 	INIT_LIST_HEAD(&channel->sc_list);
 
-	tasklet_init(&channel->callback_event,
-		     vmbus_on_event, (unsigned long)channel);
+	INIT_WORK(&channel->callback_event, vmbus_on_event);
 
 	hv_ringbuffer_pre_init(channel);
 
@@ -366,7 +365,7 @@ static struct vmbus_channel *alloc_channel(void)
  */
 static void free_channel(struct vmbus_channel *channel)
 {
-	tasklet_kill(&channel->callback_event);
+	cancel_work_sync(&channel->callback_event);
 	vmbus_remove_channel_attr_group(channel);
 
 	kobject_put(&channel->kobj);
diff --git a/drivers/hv/connection.c b/drivers/hv/connection.c
index 3cabeeabb1ca..f2a3394a8303 100644
--- a/drivers/hv/connection.c
+++ b/drivers/hv/connection.c
@@ -372,12 +372,13 @@ struct vmbus_channel *relid2channel(u32 relid)
  * 3. Once we return, enable signaling from the host. Once this
  *    state is set we check to see if additional packets are
  *    available to read. In this case we repeat the process.
- *    If this tasklet has been running for a long time
+ *    If this work has been running for a long time
  *    then reschedule ourselves.
  */
-void vmbus_on_event(unsigned long data)
+void vmbus_on_event(struct work_struct *t)
 {
-	struct vmbus_channel *channel = (void *) data;
+	struct vmbus_channel *channel = from_work(channel, t,
+						callback_event);
 	void (*callback_fn)(void *context);
 
 	trace_vmbus_on_event(channel);
@@ -401,7 +402,7 @@ void vmbus_on_event(unsigned long data)
 		return;
 
 	hv_begin_read(&channel->inbound);
-	tasklet_schedule(&channel->callback_event);
+	queue_work(system_bh_wq, &channel->callback_event);
 }
 
 /*
diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
index a8ad728354cb..2af92f08f9ce 100644
--- a/drivers/hv/hv.c
+++ b/drivers/hv/hv.c
@@ -119,8 +119,7 @@ int hv_synic_alloc(void)
 	for_each_present_cpu(cpu) {
 		hv_cpu = per_cpu_ptr(hv_context.cpu_context, cpu);
 
-		tasklet_init(&hv_cpu->msg_dpc,
-			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
+		INIT_WORK(&hv_cpu->msg_dpc, vmbus_on_msg_dpc);
 
 		if (ms_hyperv.paravisor_present && hv_isolation_type_tdx()) {
 			hv_cpu->post_msg_page = (void *)get_zeroed_page(GFP_ATOMIC);
diff --git a/drivers/hv/hv_balloon.c b/drivers/hv/hv_balloon.c
index e000fa3b9f97..c7efa2ff4cdf 100644
--- a/drivers/hv/hv_balloon.c
+++ b/drivers/hv/hv_balloon.c
@@ -2083,7 +2083,7 @@ static int balloon_suspend(struct hv_device *hv_dev)
 {
 	struct hv_dynmem_device *dm = hv_get_drvdata(hv_dev);
 
-	tasklet_disable(&hv_dev->channel->callback_event);
+	disable_work_sync(&hv_dev->channel->callback_event);
 
 	cancel_work_sync(&dm->balloon_wrk.wrk);
 	cancel_work_sync(&dm->ha_wrk.wrk);
@@ -2094,7 +2094,7 @@ static int balloon_suspend(struct hv_device *hv_dev)
 		vmbus_close(hv_dev->channel);
 	}
 
-	tasklet_enable(&hv_dev->channel->callback_event);
+	enable_and_queue_work(system_bh_wq, &hv_dev->channel->callback_event);
 
 	return 0;
 
diff --git a/drivers/hv/hv_fcopy.c b/drivers/hv/hv_fcopy.c
index 922d83eb7ddf..fd6799293c17 100644
--- a/drivers/hv/hv_fcopy.c
+++ b/drivers/hv/hv_fcopy.c
@@ -71,7 +71,7 @@ static void fcopy_poll_wrapper(void *channel)
 {
 	/* Transaction is finished, reset the state here to avoid races. */
 	fcopy_transaction.state = HVUTIL_READY;
-	tasklet_schedule(&((struct vmbus_channel *)channel)->callback_event);
+	queue_work(system_bh_wq, &((struct vmbus_channel *)channel)->callback_event);
 }
 
 static void fcopy_timeout_func(struct work_struct *dummy)
@@ -391,7 +391,7 @@ int hv_fcopy_pre_suspend(void)
 	if (!fcopy_msg)
 		return -ENOMEM;
 
-	tasklet_disable(&channel->callback_event);
+	disable_work_sync(&channel->callback_event);
 
 	fcopy_msg->operation = CANCEL_FCOPY;
 
@@ -404,7 +404,7 @@ int hv_fcopy_pre_suspend(void)
 
 	fcopy_transaction.state = HVUTIL_READY;
 
-	/* tasklet_enable() will be called in hv_fcopy_pre_resume(). */
+	/* enable_and_queue_work(system_bh_wq, ) will be called in hv_fcopy_pre_resume(). */
 	return 0;
 }
 
@@ -412,7 +412,7 @@ int hv_fcopy_pre_resume(void)
 {
 	struct vmbus_channel *channel = fcopy_transaction.recv_channel;
 
-	tasklet_enable(&channel->callback_event);
+	enable_and_queue_work(system_bh_wq, &channel->callback_event);
 
 	return 0;
 }
diff --git a/drivers/hv/hv_kvp.c b/drivers/hv/hv_kvp.c
index d35b60c06114..85b8fb4a3d2e 100644
--- a/drivers/hv/hv_kvp.c
+++ b/drivers/hv/hv_kvp.c
@@ -113,7 +113,7 @@ static void kvp_poll_wrapper(void *channel)
 {
 	/* Transaction is finished, reset the state here to avoid races. */
 	kvp_transaction.state = HVUTIL_READY;
-	tasklet_schedule(&((struct vmbus_channel *)channel)->callback_event);
+	queue_work(system_bh_wq, &((struct vmbus_channel *)channel)->callback_event);
 }
 
 static void kvp_register_done(void)
@@ -160,7 +160,7 @@ static void kvp_timeout_func(struct work_struct *dummy)
 
 static void kvp_host_handshake_func(struct work_struct *dummy)
 {
-	tasklet_schedule(&kvp_transaction.recv_channel->callback_event);
+	queue_work(system_bh_wq, &kvp_transaction.recv_channel->callback_event);
 }
 
 static int kvp_handle_handshake(struct hv_kvp_msg *msg)
@@ -786,7 +786,7 @@ int hv_kvp_pre_suspend(void)
 {
 	struct vmbus_channel *channel = kvp_transaction.recv_channel;
 
-	tasklet_disable(&channel->callback_event);
+	disable_work_sync(&channel->callback_event);
 
 	/*
 	 * If there is a pending transtion, it's unnecessary to tell the host
@@ -809,7 +809,7 @@ int hv_kvp_pre_resume(void)
 {
 	struct vmbus_channel *channel = kvp_transaction.recv_channel;
 
-	tasklet_enable(&channel->callback_event);
+	enable_and_queue_work(system_bh_wq, &channel->callback_event);
 
 	return 0;
 }
diff --git a/drivers/hv/hv_snapshot.c b/drivers/hv/hv_snapshot.c
index 0d2184be1691..46c2263d2591 100644
--- a/drivers/hv/hv_snapshot.c
+++ b/drivers/hv/hv_snapshot.c
@@ -83,7 +83,7 @@ static void vss_poll_wrapper(void *channel)
 {
 	/* Transaction is finished, reset the state here to avoid races. */
 	vss_transaction.state = HVUTIL_READY;
-	tasklet_schedule(&((struct vmbus_channel *)channel)->callback_event);
+	queue_work(system_bh_wq, &((struct vmbus_channel *)channel)->callback_event);
 }
 
 /*
@@ -421,7 +421,7 @@ int hv_vss_pre_suspend(void)
 	if (!vss_msg)
 		return -ENOMEM;
 
-	tasklet_disable(&channel->callback_event);
+	disable_work_sync(&channel->callback_event);
 
 	vss_msg->vss_hdr.operation = VSS_OP_THAW;
 
@@ -435,7 +435,7 @@ int hv_vss_pre_suspend(void)
 
 	vss_transaction.state = HVUTIL_READY;
 
-	/* tasklet_enable() will be called in hv_vss_pre_resume(). */
+	/* enable_and_queue_work() will be called in hv_vss_pre_resume(). */
 	return 0;
 }
 
@@ -443,7 +443,7 @@ int hv_vss_pre_resume(void)
 {
 	struct vmbus_channel *channel = vss_transaction.recv_channel;
 
-	tasklet_enable(&channel->callback_event);
+	enable_and_queue_work(system_bh_wq, &channel->callback_event);
 
 	return 0;
 }
diff --git a/drivers/hv/hyperv_vmbus.h b/drivers/hv/hyperv_vmbus.h
index f6b1e710f805..95ca570ac7af 100644
--- a/drivers/hv/hyperv_vmbus.h
+++ b/drivers/hv/hyperv_vmbus.h
@@ -19,6 +19,7 @@
 #include <linux/atomic.h>
 #include <linux/hyperv.h>
 #include <linux/interrupt.h>
+#include <linux/workqueue.h>
 
 #include "hv_trace.h"
 
@@ -136,10 +137,10 @@ struct hv_per_cpu_context {
 
 	/*
 	 * Starting with win8, we can take channel interrupts on any CPU;
-	 * we will manage the tasklet that handles events messages on a per CPU
+	 * we will manage the work that handles events messages on a per CPU
 	 * basis.
 	 */
-	struct tasklet_struct msg_dpc;
+	struct work_struct msg_dpc;
 };
 
 struct hv_context {
@@ -366,8 +367,8 @@ void vmbus_disconnect(void);
 
 int vmbus_post_msg(void *buffer, size_t buflen, bool can_sleep);
 
-void vmbus_on_event(unsigned long data);
-void vmbus_on_msg_dpc(unsigned long data);
+void vmbus_on_event(struct work_struct *t);
+void vmbus_on_msg_dpc(struct work_struct *t);
 
 int hv_kvp_init(struct hv_util_service *srv);
 void hv_kvp_deinit(void);
diff --git a/drivers/hv/vmbus_drv.c b/drivers/hv/vmbus_drv.c
index 4cb17603a828..d9755054a881 100644
--- a/drivers/hv/vmbus_drv.c
+++ b/drivers/hv/vmbus_drv.c
@@ -1025,9 +1025,9 @@ static void vmbus_onmessage_work(struct work_struct *work)
 	kfree(ctx);
 }
 
-void vmbus_on_msg_dpc(unsigned long data)
+void vmbus_on_msg_dpc(struct work_struct *t)
 {
-	struct hv_per_cpu_context *hv_cpu = (void *)data;
+	struct hv_per_cpu_context *hv_cpu = from_work(hv_cpu, t, msg_dpc);
 	void *page_addr = hv_cpu->synic_message_page;
 	struct hv_message msg_copy, *msg = (struct hv_message *)page_addr +
 				  VMBUS_MESSAGE_SINT;
@@ -1131,7 +1131,7 @@ void vmbus_on_msg_dpc(unsigned long data)
 			 * before sending the rescind message of the same
 			 * channel.  These messages are sent to the guest's
 			 * connect CPU; the guest then starts processing them
-			 * in the tasklet handler on this CPU:
+			 * in the work handler on this CPU:
 			 *
 			 * VMBUS_CONNECT_CPU
 			 *
@@ -1276,7 +1276,7 @@ static void vmbus_chan_sched(struct hv_per_cpu_context *hv_cpu)
 			hv_begin_read(&channel->inbound);
 			fallthrough;
 		case HV_CALL_DIRECT:
-			tasklet_schedule(&channel->callback_event);
+			queue_work(system_bh_wq, &channel->callback_event);
 		}
 
 sched_unlock:
@@ -1304,7 +1304,7 @@ static void vmbus_isr(void)
 			hv_stimer0_isr();
 			vmbus_signal_eom(msg, HVMSG_TIMER_EXPIRED);
 		} else
-			tasklet_schedule(&hv_cpu->msg_dpc);
+			queue_work(system_bh_wq, &hv_cpu->msg_dpc);
 	}
 
 	add_interrupt_randomness(vmbus_interrupt);
@@ -2371,10 +2371,11 @@ static int vmbus_bus_suspend(struct device *dev)
 			hv_context.cpu_context, VMBUS_CONNECT_CPU);
 	struct vmbus_channel *channel, *sc;
 
-	tasklet_disable(&hv_cpu->msg_dpc);
+	disable_work_sync(&hv_cpu->msg_dpc);
 	vmbus_connection.ignore_any_offer_msg = true;
-	/* The tasklet_enable() takes care of providing a memory barrier */
-	tasklet_enable(&hv_cpu->msg_dpc);
+	/* The enable_and_queue_work() takes care of
+	 * providing a memory barrier */
+	enable_and_queue_work(system_bh_wq, &hv_cpu->msg_dpc);
 
 	/* Drain all the workqueues as we are in suspend */
 	drain_workqueue(vmbus_connection.rescind_work_queue);
@@ -2692,7 +2693,7 @@ static void __exit vmbus_exit(void)
 		struct hv_per_cpu_context *hv_cpu
 			= per_cpu_ptr(hv_context.cpu_context, cpu);
 
-		tasklet_kill(&hv_cpu->msg_dpc);
+		cancel_work_sync(&hv_cpu->msg_dpc);
 	}
 	hv_debug_rm_all_dir();
 
diff --git a/include/linux/hyperv.h b/include/linux/hyperv.h
index 6ef0557b4bff..db3d85ea5ce6 100644
--- a/include/linux/hyperv.h
+++ b/include/linux/hyperv.h
@@ -882,7 +882,7 @@ struct vmbus_channel {
 	bool out_full_flag;
 
 	/* Channel callback's invoked in softirq context */
-	struct tasklet_struct callback_event;
+	struct work_struct callback_event;
 	void (*onchannel_callback)(void *context);
 	void *channel_callback_context;
 
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
