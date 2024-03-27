Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8535988ECAD
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Mar 2024 18:29:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpX4x-00077n-Ni;
	Wed, 27 Mar 2024 17:28:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <apais@linux.microsoft.com>) id 1rpW0y-0007i2-FE
 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=41Ale5uO1PTnfIKryTKC5pcjHNLS2gULLDrqEidl/kI=; b=gUfRIYFtSxpfRyn0tedq8hx07R
 4+j8Hn1V5oraTAo9CA+QZ9RqlgQbx13DbIg6nxjx5sxlG+1ub6IDW+9viXVyOfON9VcWyPzUcXXWb
 gYqMFlSLct7htlRVodUbqubb7bmherleArlu9OYgrIDer0F7FafUxIzrdJY/79TUpqmA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=41Ale5uO1PTnfIKryTKC5pcjHNLS2gULLDrqEidl/kI=; b=FYHGMzLNB7oot7XI9BdusHtum7
 KUmQmWKfxj3xHicukcZf+x7CrUiXobbgODd/xKpNiSjiKTrARWIXQh1qklMVL7d0+hFy2ykxwAOLx
 f0h7xtngLUd351eRubfnna/O/gLl1xxUKol8e+f2mv+HAd2awhvDyG9HcCbEZ2PrOabQ=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1rpW0x-00051w-Kz for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 16:20:36 +0000
Received: from apais-vm1.0synte4vioeebbvidf5q0vz2ua.xx.internal.cloudapp.net
 (unknown [52.183.86.224])
 by linux.microsoft.com (Postfix) with ESMTPSA id 24E00208B324;
 Wed, 27 Mar 2024 09:03:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 24E00208B324
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1711555402;
 bh=41Ale5uO1PTnfIKryTKC5pcjHNLS2gULLDrqEidl/kI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Eq00WyCo6hcxiDCDUMRPmi0qrbBDFeudu7D2o12HCiVhgx5hyPk09CSdrCwkmdexm
 e1eYeDyIRpXMIVLQCm12FB4zn/X5Ye3TrTP4crCGnn6auu/kqknM2AUPJSVgHko5Fw
 HOHNjfcli5SdkOKdXhCQu+gocWohTCdQFuGGhSG4=
From: Allen Pais <apais@linux.microsoft.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 27 Mar 2024 16:03:11 +0000
Message-Id: <20240327160314.9982-7-apais@linux.microsoft.com>
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
X-Headers-End: 1rpW0x-00051w-Kz
X-Mailman-Approved-At: Wed, 27 Mar 2024 17:28:45 +0000
Subject: [Openipmi-developer] [PATCH 6/9] ipmi: Convert from tasklet to BH
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

This patch converts drivers/infiniband/* from tasklet to BH workqueue.

Based on the work done by Tejun Heo <tj@kernel.org>
Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10

Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 30 ++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index b0eedc4595b3..fce2a2dbdc82 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -36,12 +36,13 @@
 #include <linux/nospec.h>
 #include <linux/vmalloc.h>
 #include <linux/delay.h>
+#include <linux/workqueue.h>
 
 #define IPMI_DRIVER_VERSION "39.2"
 
 static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
 static int ipmi_init_msghandler(void);
-static void smi_recv_tasklet(struct tasklet_struct *t);
+static void smi_recv_work(struct work_struct *t);
 static void handle_new_recv_msgs(struct ipmi_smi *intf);
 static void need_waiter(struct ipmi_smi *intf);
 static int handle_one_recv_msg(struct ipmi_smi *intf,
@@ -498,13 +499,13 @@ struct ipmi_smi {
 	/*
 	 * Messages queued for delivery.  If delivery fails (out of memory
 	 * for instance), They will stay in here to be processed later in a
-	 * periodic timer interrupt.  The tasklet is for handling received
+	 * periodic timer interrupt.  The work is for handling received
 	 * messages directly from the handler.
 	 */
 	spinlock_t       waiting_rcv_msgs_lock;
 	struct list_head waiting_rcv_msgs;
 	atomic_t	 watchdog_pretimeouts_to_deliver;
-	struct tasklet_struct recv_tasklet;
+	struct work_struct recv_work;
 
 	spinlock_t             xmit_msgs_lock;
 	struct list_head       xmit_msgs;
@@ -704,7 +705,7 @@ static void clean_up_interface_data(struct ipmi_smi *intf)
 	struct cmd_rcvr  *rcvr, *rcvr2;
 	struct list_head list;
 
-	tasklet_kill(&intf->recv_tasklet);
+	cancel_work_sync(&intf->recv_work);
 
 	free_smi_msg_list(&intf->waiting_rcv_msgs);
 	free_recv_msg_list(&intf->waiting_events);
@@ -1319,7 +1320,7 @@ static void free_user(struct kref *ref)
 {
 	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
 
-	/* SRCU cleanup must happen in task context. */
+	/* SRCU cleanup must happen in work context. */
 	queue_work(remove_work_wq, &user->remove_work);
 }
 
@@ -3605,8 +3606,7 @@ int ipmi_add_smi(struct module         *owner,
 	intf->curr_seq = 0;
 	spin_lock_init(&intf->waiting_rcv_msgs_lock);
 	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
-	tasklet_setup(&intf->recv_tasklet,
-		     smi_recv_tasklet);
+	INIT_WORK(&intf->recv_work, smi_recv_work);
 	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
 	spin_lock_init(&intf->xmit_msgs_lock);
 	INIT_LIST_HEAD(&intf->xmit_msgs);
@@ -4779,7 +4779,7 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
 			 * To preserve message order, quit if we
 			 * can't handle a message.  Add the message
 			 * back at the head, this is safe because this
-			 * tasklet is the only thing that pulls the
+			 * work is the only thing that pulls the
 			 * messages.
 			 */
 			list_add(&smi_msg->link, &intf->waiting_rcv_msgs);
@@ -4812,10 +4812,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
 	}
 }
 
-static void smi_recv_tasklet(struct tasklet_struct *t)
+static void smi_recv_work(struct work_struct *t)
 {
 	unsigned long flags = 0; /* keep us warning-free. */
-	struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
+	struct ipmi_smi *intf = from_work(intf, t, recv_work);
 	int run_to_completion = intf->run_to_completion;
 	struct ipmi_smi_msg *newmsg = NULL;
 
@@ -4866,7 +4866,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 
 	/*
 	 * To preserve message order, we keep a queue and deliver from
-	 * a tasklet.
+	 * a work.
 	 */
 	if (!run_to_completion)
 		spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
@@ -4887,9 +4887,9 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
 
 	if (run_to_completion)
-		smi_recv_tasklet(&intf->recv_tasklet);
+		smi_recv_work(&intf->recv_work);
 	else
-		tasklet_schedule(&intf->recv_tasklet);
+		queue_work(system_bh_wq, &intf->recv_work);
 }
 EXPORT_SYMBOL(ipmi_smi_msg_received);
 
@@ -4899,7 +4899,7 @@ void ipmi_smi_watchdog_pretimeout(struct ipmi_smi *intf)
 		return;
 
 	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 1);
-	tasklet_schedule(&intf->recv_tasklet);
+	queue_work(system_bh_wq, &intf->recv_work);
 }
 EXPORT_SYMBOL(ipmi_smi_watchdog_pretimeout);
 
@@ -5068,7 +5068,7 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 				       flags);
 	}
 
-	tasklet_schedule(&intf->recv_tasklet);
+	queue_work(system_bh_wq, &intf->recv_work);
 
 	return need_timer;
 }
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
