Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F74377BAC
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:43:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyhl-0004T9-Kh; Mon, 10 May 2021 05:43:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lfyhk-0004Ss-Q1
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:43:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AGY1Obu/JHy/iQm9onvFNxW29x0bpj0BoK1Nr879xuU=; b=Om6VWr6Lv7FyMwbtnJDQHRIits
 F9CuvjJmh72pDAK0lnuXnY1vULa4G0dQ3Gqa75/YNr1jp1SU7g/nSpj8MahOKdbMkPXNQtr9bKmgh
 gAdrFM0qoGQYWbKuYBDTAOMsrFd/ZtOtzMMo78Muu5rvCyLOt87RVNROjnQXkZ0gcILA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AGY1Obu/JHy/iQm9onvFNxW29x0bpj0BoK1Nr879xuU=; b=cGyPRieif72JODB2BT3UgvMs08
 wJgFwEnawjlNMpxwx/f4AgAkqTA+TlI/5TFizORq1p94C0SNiFGlVC5pfDXR6krEwpy0DEWh8VdGY
 hsKzhGCC58JPn4DruzUcLvIwMUEILv97dBfDhcqBxUOjdABRcnfjDJNC0J8jRgzY5wl0=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lfyhf-00038d-Hd
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:43:44 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id A27EF5803ED;
 Mon, 10 May 2021 01:43:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 10 May 2021 01:43:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=AGY1Obu/JHy/i
 Qm9onvFNxW29x0bpj0BoK1Nr879xuU=; b=Lpj3BEeUH9+bEKVFc71BD+9RYY4ET
 7+nhaGdT3E4cJxbCvTxVrP1523OO/zRfSpIWU4MA9VaFbUHr6WhaA4tCPKv60hej
 2ExSePxRNhYSx8ChNdQk65y+lOIks7h+zOExX088P5gfXzh/W5HgwkeVwLOUMVVf
 ilswUuUy2yI6G6Cf33V7lRknqWHDgEH6e8i9PYfaODiXdVMBla2zxyB+n3RIrGFl
 5f4rNbfGGftfWo8sVCcNFJByIzu+s5PBW72y3YpKldG2Aui227Nc4UCpEr/WMURy
 MYHprQ2l6fLyT5dC+mqjeNEMFpyW4KxF6VsmFxOP7FndOZWknmYxGhesg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=AGY1Obu/JHy/iQm9onvFNxW29x0bpj0BoK1Nr879xuU=; b=Ih1U+wE5
 QqOIkcQi1z1FcVazYS1fC9ljGiRc0JMa9yoUemV3iq4xkUWXPiVqaljtfSazbjqW
 l4qRMgO2A2gkSSO0BHQDJ+K8ELwB/KScbzkRiJ9WuraOeOSDyOB5QDyxBhC7fiHG
 axsjGyc1fspgoGhKy1xWVBGUteaX3UZi+qb3bDm769o5GWP9laLKoyfpl2VIHekz
 Iiqdt18ed91+byDhDQMFOUoUa6ZLth8lPRUnFo5KfYx6fs1mPTwydV9nwKL4OyJm
 aEajhVcFQIXFQYUURjVN8UxJTuIox8TBw4DJutDvBMwfGWp9VMINUoBTyQhtKChF
 B35C03mlaASRfA==
X-ME-Sender: <xms:BsiYYKoyHYosNZtGoYup1L2acYNBJ0mEF3o47y4PAU8bQY10z_b0zg>
 <xme:BsiYYIpqoXIgzxE_8ThKXwhhJ4EA1XMkNKoQBT4dAfgno2_zXOoZns6Ah1-FZOrf4
 y9oigFXYIMl_ULfBA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecukfhppedvtdefrdehjedrvdduhedrkeen
 ucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:BsiYYPOwCq92pPd0Hi8CL6yewEFpcuqq33S2O9TgDDnetvoDJNMeqw>
 <xmx:BsiYYJ4Vb0F98I4QPWClLQYHUhePbyBc1_Z2QwcoSr_cQixoxv1TIg>
 <xmx:BsiYYJ7so9c3mvc2yIXidxDR3j0BPk9LZAf0zsv4okyEPhiMMZflgA>
 <xmx:BsiYYIKsNpI1g08Xqwq77Y6fvYMWH5FTsS7k4GgIrVJw5a8p6TZWjw>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:43:29 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:12:01 +0930
Message-Id: <20210510054213.1610760-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510054213.1610760-1-andrew@aj.id.au>
References: <20210510054213.1610760-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfyhf-00038d-Hd
Subject: [Openipmi-developer] [PATCH v3 04/16] ipmi: kcs_bmc: Split out
 kcs_bmc_cdev_ipmi
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, robh+dt@kernel.org, arnd@arndb.de, zweiss@equinix.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Take steps towards defining a coherent API to separate the KCS device
drivers from the userspace interface. Decreasing the coupling will
improve the separation of concerns and enable the introduction of
alternative userspace interfaces.

For now, simply split the chardev logic out to a separate file. The code
continues to build into the same module.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Zev Weiss <zweiss@equinix.com>
---
 drivers/char/ipmi/Makefile            |   2 +-
 drivers/char/ipmi/kcs_bmc.c           | 423 +------------------------
 drivers/char/ipmi/kcs_bmc.h           |  10 +-
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 428 ++++++++++++++++++++++++++
 4 files changed, 451 insertions(+), 412 deletions(-)
 create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c

diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index 0822adc2ec41..a302bc865370 100644
--- a/drivers/char/ipmi/Makefile
+++ b/drivers/char/ipmi/Makefile
@@ -22,7 +22,7 @@ obj-$(CONFIG_IPMI_SSIF) += ipmi_ssif.o
 obj-$(CONFIG_IPMI_POWERNV) += ipmi_powernv.o
 obj-$(CONFIG_IPMI_WATCHDOG) += ipmi_watchdog.o
 obj-$(CONFIG_IPMI_POWEROFF) += ipmi_poweroff.o
-obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o
+obj-$(CONFIG_IPMI_KCS_BMC) += kcs_bmc.o kcs_bmc_cdev_ipmi.o
 obj-$(CONFIG_ASPEED_BT_IPMI_BMC) += bt-bmc.o
 obj-$(CONFIG_ASPEED_KCS_IPMI_BMC) += kcs_bmc_aspeed.o
 obj-$(CONFIG_NPCM7XX_KCS_IPMI_BMC) += kcs_bmc_npcm7xx.o
diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index c4336c1f2d6d..ef5c48ffe74a 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -3,446 +3,51 @@
  * Copyright (c) 2015-2018, Intel Corporation.
  */
 
-#define pr_fmt(fmt) "kcs-bmc: " fmt
-
-#include <linux/errno.h>
-#include <linux/io.h>
-#include <linux/ipmi_bmc.h>
 #include <linux/module.h>
-#include <linux/platform_device.h>
-#include <linux/poll.h>
-#include <linux/sched.h>
-#include <linux/slab.h>
 
 #include "kcs_bmc.h"
 
-#define DEVICE_NAME "ipmi-kcs"
-
-#define KCS_MSG_BUFSIZ    1000
-
-#define KCS_ZERO_DATA     0
-
-
-/* IPMI 2.0 - Table 9-1, KCS Interface Status Register Bits */
-#define KCS_STATUS_STATE(state) (state << 6)
-#define KCS_STATUS_STATE_MASK   GENMASK(7, 6)
-#define KCS_STATUS_CMD_DAT      BIT(3)
-#define KCS_STATUS_SMS_ATN      BIT(2)
-#define KCS_STATUS_IBF          BIT(1)
-#define KCS_STATUS_OBF          BIT(0)
-
-/* IPMI 2.0 - Table 9-2, KCS Interface State Bits */
-enum kcs_states {
-	IDLE_STATE  = 0,
-	READ_STATE  = 1,
-	WRITE_STATE = 2,
-	ERROR_STATE = 3,
-};
-
-/* IPMI 2.0 - Table 9-3, KCS Interface Control Codes */
-#define KCS_CMD_GET_STATUS_ABORT  0x60
-#define KCS_CMD_WRITE_START       0x61
-#define KCS_CMD_WRITE_END         0x62
-#define KCS_CMD_READ_BYTE         0x68
-
-static inline u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc)
+u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc)
 {
 	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
 }
+EXPORT_SYMBOL(kcs_bmc_read_data);
 
-static inline void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data)
+void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data)
 {
 	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.odr, data);
 }
+EXPORT_SYMBOL(kcs_bmc_write_data);
 
-static inline u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc)
+u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc)
 {
 	return kcs_bmc->io_inputb(kcs_bmc, kcs_bmc->ioreg.str);
 }
+EXPORT_SYMBOL(kcs_bmc_read_status);
 
-static inline void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data)
+void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data)
 {
 	kcs_bmc->io_outputb(kcs_bmc, kcs_bmc->ioreg.str, data);
 }
+EXPORT_SYMBOL(kcs_bmc_write_status);
 
-static void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
+void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
 {
 	kcs_bmc->io_updateb(kcs_bmc, kcs_bmc->ioreg.str, mask, val);
 }
+EXPORT_SYMBOL(kcs_bmc_update_status);
 
-static inline void set_state(struct kcs_bmc *kcs_bmc, u8 state)
-{
-	kcs_bmc_update_status(kcs_bmc, KCS_STATUS_STATE_MASK,
-					KCS_STATUS_STATE(state));
-}
-
-static void kcs_force_abort(struct kcs_bmc *kcs_bmc)
-{
-	set_state(kcs_bmc, ERROR_STATE);
-	kcs_bmc_read_data(kcs_bmc);
-	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-
-	kcs_bmc->phase = KCS_PHASE_ERROR;
-	kcs_bmc->data_in_avail = false;
-	kcs_bmc->data_in_idx = 0;
-}
-
-static void kcs_bmc_handle_data(struct kcs_bmc *kcs_bmc)
-{
-	u8 data;
-
-	switch (kcs_bmc->phase) {
-	case KCS_PHASE_WRITE_START:
-		kcs_bmc->phase = KCS_PHASE_WRITE_DATA;
-		fallthrough;
-
-	case KCS_PHASE_WRITE_DATA:
-		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
-			set_state(kcs_bmc, WRITE_STATE);
-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
-						kcs_bmc_read_data(kcs_bmc);
-		} else {
-			kcs_force_abort(kcs_bmc);
-			kcs_bmc->error = KCS_LENGTH_ERROR;
-		}
-		break;
-
-	case KCS_PHASE_WRITE_END_CMD:
-		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
-			set_state(kcs_bmc, READ_STATE);
-			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
-						kcs_bmc_read_data(kcs_bmc);
-			kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
-			kcs_bmc->data_in_avail = true;
-			wake_up_interruptible(&kcs_bmc->queue);
-		} else {
-			kcs_force_abort(kcs_bmc);
-			kcs_bmc->error = KCS_LENGTH_ERROR;
-		}
-		break;
-
-	case KCS_PHASE_READ:
-		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
-			set_state(kcs_bmc, IDLE_STATE);
-
-		data = kcs_bmc_read_data(kcs_bmc);
-		if (data != KCS_CMD_READ_BYTE) {
-			set_state(kcs_bmc, ERROR_STATE);
-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-			break;
-		}
-
-		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
-			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-			kcs_bmc->phase = KCS_PHASE_IDLE;
-			break;
-		}
-
-		kcs_bmc_write_data(kcs_bmc,
-			kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
-		break;
-
-	case KCS_PHASE_ABORT_ERROR1:
-		set_state(kcs_bmc, READ_STATE);
-		kcs_bmc_read_data(kcs_bmc);
-		kcs_bmc_write_data(kcs_bmc, kcs_bmc->error);
-		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR2;
-		break;
-
-	case KCS_PHASE_ABORT_ERROR2:
-		set_state(kcs_bmc, IDLE_STATE);
-		kcs_bmc_read_data(kcs_bmc);
-		kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-		kcs_bmc->phase = KCS_PHASE_IDLE;
-		break;
-
-	default:
-		kcs_force_abort(kcs_bmc);
-		break;
-	}
-}
-
-static void kcs_bmc_handle_cmd(struct kcs_bmc *kcs_bmc)
-{
-	u8 cmd;
-
-	set_state(kcs_bmc, WRITE_STATE);
-	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
-
-	cmd = kcs_bmc_read_data(kcs_bmc);
-	switch (cmd) {
-	case KCS_CMD_WRITE_START:
-		kcs_bmc->phase = KCS_PHASE_WRITE_START;
-		kcs_bmc->error = KCS_NO_ERROR;
-		kcs_bmc->data_in_avail = false;
-		kcs_bmc->data_in_idx = 0;
-		break;
-
-	case KCS_CMD_WRITE_END:
-		if (kcs_bmc->phase != KCS_PHASE_WRITE_DATA) {
-			kcs_force_abort(kcs_bmc);
-			break;
-		}
-
-		kcs_bmc->phase = KCS_PHASE_WRITE_END_CMD;
-		break;
-
-	case KCS_CMD_GET_STATUS_ABORT:
-		if (kcs_bmc->error == KCS_NO_ERROR)
-			kcs_bmc->error = KCS_ABORTED_BY_COMMAND;
-
-		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR1;
-		kcs_bmc->data_in_avail = false;
-		kcs_bmc->data_in_idx = 0;
-		break;
-
-	default:
-		kcs_force_abort(kcs_bmc);
-		kcs_bmc->error = KCS_ILLEGAL_CONTROL_CODE;
-		break;
-	}
-}
-
+int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc);
 int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
 {
-	unsigned long flags;
-	int ret = -ENODATA;
-	u8 status;
-
-	spin_lock_irqsave(&kcs_bmc->lock, flags);
-
-	status = kcs_bmc_read_status(kcs_bmc);
-	if (status & KCS_STATUS_IBF) {
-		if (!kcs_bmc->running)
-			kcs_force_abort(kcs_bmc);
-		else if (status & KCS_STATUS_CMD_DAT)
-			kcs_bmc_handle_cmd(kcs_bmc);
-		else
-			kcs_bmc_handle_data(kcs_bmc);
-
-		ret = 0;
-	}
-
-	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
-
-	return ret;
+	return kcs_bmc_ipmi_event(kcs_bmc);
 }
 EXPORT_SYMBOL(kcs_bmc_handle_event);
 
-static inline struct kcs_bmc *to_kcs_bmc(struct file *filp)
-{
-	return container_of(filp->private_data, struct kcs_bmc, miscdev);
-}
-
-static int kcs_bmc_open(struct inode *inode, struct file *filp)
-{
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
-	int ret = 0;
-
-	spin_lock_irq(&kcs_bmc->lock);
-	if (!kcs_bmc->running)
-		kcs_bmc->running = 1;
-	else
-		ret = -EBUSY;
-	spin_unlock_irq(&kcs_bmc->lock);
-
-	return ret;
-}
-
-static __poll_t kcs_bmc_poll(struct file *filp, poll_table *wait)
-{
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
-	__poll_t mask = 0;
-
-	poll_wait(filp, &kcs_bmc->queue, wait);
-
-	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->data_in_avail)
-		mask |= EPOLLIN;
-	spin_unlock_irq(&kcs_bmc->lock);
-
-	return mask;
-}
-
-static ssize_t kcs_bmc_read(struct file *filp, char __user *buf,
-			    size_t count, loff_t *ppos)
-{
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
-	bool data_avail;
-	size_t data_len;
-	ssize_t ret;
-
-	if (!(filp->f_flags & O_NONBLOCK))
-		wait_event_interruptible(kcs_bmc->queue,
-					 kcs_bmc->data_in_avail);
-
-	mutex_lock(&kcs_bmc->mutex);
-
-	spin_lock_irq(&kcs_bmc->lock);
-	data_avail = kcs_bmc->data_in_avail;
-	if (data_avail) {
-		data_len = kcs_bmc->data_in_idx;
-		memcpy(kcs_bmc->kbuffer, kcs_bmc->data_in, data_len);
-	}
-	spin_unlock_irq(&kcs_bmc->lock);
-
-	if (!data_avail) {
-		ret = -EAGAIN;
-		goto out_unlock;
-	}
-
-	if (count < data_len) {
-		pr_err("channel=%u with too large data : %zu\n",
-			kcs_bmc->channel, data_len);
-
-		spin_lock_irq(&kcs_bmc->lock);
-		kcs_force_abort(kcs_bmc);
-		spin_unlock_irq(&kcs_bmc->lock);
-
-		ret = -EOVERFLOW;
-		goto out_unlock;
-	}
-
-	if (copy_to_user(buf, kcs_bmc->kbuffer, data_len)) {
-		ret = -EFAULT;
-		goto out_unlock;
-	}
-
-	ret = data_len;
-
-	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->phase == KCS_PHASE_WRITE_DONE) {
-		kcs_bmc->phase = KCS_PHASE_WAIT_READ;
-		kcs_bmc->data_in_avail = false;
-		kcs_bmc->data_in_idx = 0;
-	} else {
-		ret = -EAGAIN;
-	}
-	spin_unlock_irq(&kcs_bmc->lock);
-
-out_unlock:
-	mutex_unlock(&kcs_bmc->mutex);
-
-	return ret;
-}
-
-static ssize_t kcs_bmc_write(struct file *filp, const char __user *buf,
-			     size_t count, loff_t *ppos)
-{
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
-	ssize_t ret;
-
-	/* a minimum response size '3' : netfn + cmd + ccode */
-	if (count < 3 || count > KCS_MSG_BUFSIZ)
-		return -EINVAL;
-
-	mutex_lock(&kcs_bmc->mutex);
-
-	if (copy_from_user(kcs_bmc->kbuffer, buf, count)) {
-		ret = -EFAULT;
-		goto out_unlock;
-	}
-
-	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->phase == KCS_PHASE_WAIT_READ) {
-		kcs_bmc->phase = KCS_PHASE_READ;
-		kcs_bmc->data_out_idx = 1;
-		kcs_bmc->data_out_len = count;
-		memcpy(kcs_bmc->data_out, kcs_bmc->kbuffer, count);
-		kcs_bmc_write_data(kcs_bmc, kcs_bmc->data_out[0]);
-		ret = count;
-	} else {
-		ret = -EINVAL;
-	}
-	spin_unlock_irq(&kcs_bmc->lock);
-
-out_unlock:
-	mutex_unlock(&kcs_bmc->mutex);
-
-	return ret;
-}
-
-static long kcs_bmc_ioctl(struct file *filp, unsigned int cmd,
-			  unsigned long arg)
-{
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
-	long ret = 0;
-
-	spin_lock_irq(&kcs_bmc->lock);
-
-	switch (cmd) {
-	case IPMI_BMC_IOCTL_SET_SMS_ATN:
-		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
-		break;
-
-	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
-		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
-		break;
-
-	case IPMI_BMC_IOCTL_FORCE_ABORT:
-		kcs_force_abort(kcs_bmc);
-		break;
-
-	default:
-		ret = -EINVAL;
-		break;
-	}
-
-	spin_unlock_irq(&kcs_bmc->lock);
-
-	return ret;
-}
-
-static int kcs_bmc_release(struct inode *inode, struct file *filp)
-{
-	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
-
-	spin_lock_irq(&kcs_bmc->lock);
-	kcs_bmc->running = 0;
-	kcs_force_abort(kcs_bmc);
-	spin_unlock_irq(&kcs_bmc->lock);
-
-	return 0;
-}
-
-static const struct file_operations kcs_bmc_fops = {
-	.owner          = THIS_MODULE,
-	.open           = kcs_bmc_open,
-	.read           = kcs_bmc_read,
-	.write          = kcs_bmc_write,
-	.release        = kcs_bmc_release,
-	.poll           = kcs_bmc_poll,
-	.unlocked_ioctl = kcs_bmc_ioctl,
-};
-
+struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel);
 struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel)
 {
-	struct kcs_bmc *kcs_bmc;
-
-	kcs_bmc = devm_kzalloc(dev, sizeof(*kcs_bmc) + sizeof_priv, GFP_KERNEL);
-	if (!kcs_bmc)
-		return NULL;
-
-	spin_lock_init(&kcs_bmc->lock);
-	kcs_bmc->channel = channel;
-
-	mutex_init(&kcs_bmc->mutex);
-	init_waitqueue_head(&kcs_bmc->queue);
-
-	kcs_bmc->data_in = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-
-	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
-	kcs_bmc->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "%s%u",
-					       DEVICE_NAME, channel);
-	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
-	    !kcs_bmc->miscdev.name)
-		return NULL;
-	kcs_bmc->miscdev.fops = &kcs_bmc_fops;
-
-	return kcs_bmc;
+	return kcs_bmc_ipmi_alloc(dev, sizeof_priv, channel);
 }
 EXPORT_SYMBOL(kcs_bmc_alloc);
 
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index 970f53892f2d..febea0c8deb4 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -104,6 +104,12 @@ static inline void *kcs_bmc_priv(struct kcs_bmc *kcs_bmc)
 }
 
 int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc);
-struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv,
-					u32 channel);
+struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel);
+
+u8 kcs_bmc_read_data(struct kcs_bmc *kcs_bmc);
+void kcs_bmc_write_data(struct kcs_bmc *kcs_bmc, u8 data);
+u8 kcs_bmc_read_status(struct kcs_bmc *kcs_bmc);
+void kcs_bmc_write_status(struct kcs_bmc *kcs_bmc, u8 data);
+void kcs_bmc_update_status(struct kcs_bmc *kcs_bmc, u8 mask, u8 val);
+
 #endif /* __KCS_BMC_H__ */
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
new file mode 100644
index 000000000000..82c77994e481
--- /dev/null
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -0,0 +1,428 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2015-2018, Intel Corporation.
+ */
+
+#define pr_fmt(fmt) "kcs-bmc: " fmt
+
+#include <linux/errno.h>
+#include <linux/io.h>
+#include <linux/ipmi_bmc.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/poll.h>
+#include <linux/sched.h>
+#include <linux/slab.h>
+
+#include "kcs_bmc.h"
+
+#define DEVICE_NAME "ipmi-kcs"
+
+#define KCS_MSG_BUFSIZ    1000
+
+#define KCS_ZERO_DATA     0
+
+
+/* IPMI 2.0 - Table 9-1, KCS Interface Status Register Bits */
+#define KCS_STATUS_STATE(state) (state << 6)
+#define KCS_STATUS_STATE_MASK   GENMASK(7, 6)
+#define KCS_STATUS_CMD_DAT      BIT(3)
+#define KCS_STATUS_SMS_ATN      BIT(2)
+#define KCS_STATUS_IBF          BIT(1)
+#define KCS_STATUS_OBF          BIT(0)
+
+/* IPMI 2.0 - Table 9-2, KCS Interface State Bits */
+enum kcs_states {
+	IDLE_STATE  = 0,
+	READ_STATE  = 1,
+	WRITE_STATE = 2,
+	ERROR_STATE = 3,
+};
+
+/* IPMI 2.0 - Table 9-3, KCS Interface Control Codes */
+#define KCS_CMD_GET_STATUS_ABORT  0x60
+#define KCS_CMD_WRITE_START       0x61
+#define KCS_CMD_WRITE_END         0x62
+#define KCS_CMD_READ_BYTE         0x68
+
+static inline void set_state(struct kcs_bmc *kcs_bmc, u8 state)
+{
+	kcs_bmc_update_status(kcs_bmc, KCS_STATUS_STATE_MASK,
+					KCS_STATUS_STATE(state));
+}
+
+static void kcs_bmc_ipmi_force_abort(struct kcs_bmc *kcs_bmc)
+{
+	set_state(kcs_bmc, ERROR_STATE);
+	kcs_bmc_read_data(kcs_bmc);
+	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+
+	kcs_bmc->phase = KCS_PHASE_ERROR;
+	kcs_bmc->data_in_avail = false;
+	kcs_bmc->data_in_idx = 0;
+}
+
+static void kcs_bmc_ipmi_handle_data(struct kcs_bmc *kcs_bmc)
+{
+	u8 data;
+
+	switch (kcs_bmc->phase) {
+	case KCS_PHASE_WRITE_START:
+		kcs_bmc->phase = KCS_PHASE_WRITE_DATA;
+		fallthrough;
+
+	case KCS_PHASE_WRITE_DATA:
+		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
+			set_state(kcs_bmc, WRITE_STATE);
+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
+						kcs_bmc_read_data(kcs_bmc);
+		} else {
+			kcs_bmc_ipmi_force_abort(kcs_bmc);
+			kcs_bmc->error = KCS_LENGTH_ERROR;
+		}
+		break;
+
+	case KCS_PHASE_WRITE_END_CMD:
+		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
+			set_state(kcs_bmc, READ_STATE);
+			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
+						kcs_bmc_read_data(kcs_bmc);
+			kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
+			kcs_bmc->data_in_avail = true;
+			wake_up_interruptible(&kcs_bmc->queue);
+		} else {
+			kcs_bmc_ipmi_force_abort(kcs_bmc);
+			kcs_bmc->error = KCS_LENGTH_ERROR;
+		}
+		break;
+
+	case KCS_PHASE_READ:
+		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
+			set_state(kcs_bmc, IDLE_STATE);
+
+		data = kcs_bmc_read_data(kcs_bmc);
+		if (data != KCS_CMD_READ_BYTE) {
+			set_state(kcs_bmc, ERROR_STATE);
+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+			break;
+		}
+
+		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
+			kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+			kcs_bmc->phase = KCS_PHASE_IDLE;
+			break;
+		}
+
+		kcs_bmc_write_data(kcs_bmc,
+			kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
+		break;
+
+	case KCS_PHASE_ABORT_ERROR1:
+		set_state(kcs_bmc, READ_STATE);
+		kcs_bmc_read_data(kcs_bmc);
+		kcs_bmc_write_data(kcs_bmc, kcs_bmc->error);
+		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR2;
+		break;
+
+	case KCS_PHASE_ABORT_ERROR2:
+		set_state(kcs_bmc, IDLE_STATE);
+		kcs_bmc_read_data(kcs_bmc);
+		kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+		kcs_bmc->phase = KCS_PHASE_IDLE;
+		break;
+
+	default:
+		kcs_bmc_ipmi_force_abort(kcs_bmc);
+		break;
+	}
+}
+
+static void kcs_bmc_ipmi_handle_cmd(struct kcs_bmc *kcs_bmc)
+{
+	u8 cmd;
+
+	set_state(kcs_bmc, WRITE_STATE);
+	kcs_bmc_write_data(kcs_bmc, KCS_ZERO_DATA);
+
+	cmd = kcs_bmc_read_data(kcs_bmc);
+	switch (cmd) {
+	case KCS_CMD_WRITE_START:
+		kcs_bmc->phase = KCS_PHASE_WRITE_START;
+		kcs_bmc->error = KCS_NO_ERROR;
+		kcs_bmc->data_in_avail = false;
+		kcs_bmc->data_in_idx = 0;
+		break;
+
+	case KCS_CMD_WRITE_END:
+		if (kcs_bmc->phase != KCS_PHASE_WRITE_DATA) {
+			kcs_bmc_ipmi_force_abort(kcs_bmc);
+			break;
+		}
+
+		kcs_bmc->phase = KCS_PHASE_WRITE_END_CMD;
+		break;
+
+	case KCS_CMD_GET_STATUS_ABORT:
+		if (kcs_bmc->error == KCS_NO_ERROR)
+			kcs_bmc->error = KCS_ABORTED_BY_COMMAND;
+
+		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR1;
+		kcs_bmc->data_in_avail = false;
+		kcs_bmc->data_in_idx = 0;
+		break;
+
+	default:
+		kcs_bmc_ipmi_force_abort(kcs_bmc);
+		kcs_bmc->error = KCS_ILLEGAL_CONTROL_CODE;
+		break;
+	}
+}
+
+int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc);
+int kcs_bmc_ipmi_event(struct kcs_bmc *kcs_bmc)
+{
+	unsigned long flags;
+	int ret = -ENODATA;
+	u8 status;
+
+	spin_lock_irqsave(&kcs_bmc->lock, flags);
+
+	status = kcs_bmc_read_status(kcs_bmc);
+	if (status & KCS_STATUS_IBF) {
+		if (!kcs_bmc->running)
+			kcs_bmc_ipmi_force_abort(kcs_bmc);
+		else if (status & KCS_STATUS_CMD_DAT)
+			kcs_bmc_ipmi_handle_cmd(kcs_bmc);
+		else
+			kcs_bmc_ipmi_handle_data(kcs_bmc);
+
+		ret = 0;
+	}
+
+	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
+
+	return ret;
+}
+EXPORT_SYMBOL(kcs_bmc_ipmi_event);
+
+static inline struct kcs_bmc *to_kcs_bmc(struct file *filp)
+{
+	return container_of(filp->private_data, struct kcs_bmc, miscdev);
+}
+
+static int kcs_bmc_ipmi_open(struct inode *inode, struct file *filp)
+{
+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	int ret = 0;
+
+	spin_lock_irq(&kcs_bmc->lock);
+	if (!kcs_bmc->running)
+		kcs_bmc->running = 1;
+	else
+		ret = -EBUSY;
+	spin_unlock_irq(&kcs_bmc->lock);
+
+	return ret;
+}
+
+static __poll_t kcs_bmc_ipmi_poll(struct file *filp, poll_table *wait)
+{
+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	__poll_t mask = 0;
+
+	poll_wait(filp, &kcs_bmc->queue, wait);
+
+	spin_lock_irq(&kcs_bmc->lock);
+	if (kcs_bmc->data_in_avail)
+		mask |= EPOLLIN;
+	spin_unlock_irq(&kcs_bmc->lock);
+
+	return mask;
+}
+
+static ssize_t kcs_bmc_ipmi_read(struct file *filp, char __user *buf,
+			    size_t count, loff_t *ppos)
+{
+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	bool data_avail;
+	size_t data_len;
+	ssize_t ret;
+
+	if (!(filp->f_flags & O_NONBLOCK))
+		wait_event_interruptible(kcs_bmc->queue,
+					 kcs_bmc->data_in_avail);
+
+	mutex_lock(&kcs_bmc->mutex);
+
+	spin_lock_irq(&kcs_bmc->lock);
+	data_avail = kcs_bmc->data_in_avail;
+	if (data_avail) {
+		data_len = kcs_bmc->data_in_idx;
+		memcpy(kcs_bmc->kbuffer, kcs_bmc->data_in, data_len);
+	}
+	spin_unlock_irq(&kcs_bmc->lock);
+
+	if (!data_avail) {
+		ret = -EAGAIN;
+		goto out_unlock;
+	}
+
+	if (count < data_len) {
+		pr_err("channel=%u with too large data : %zu\n",
+			kcs_bmc->channel, data_len);
+
+		spin_lock_irq(&kcs_bmc->lock);
+		kcs_bmc_ipmi_force_abort(kcs_bmc);
+		spin_unlock_irq(&kcs_bmc->lock);
+
+		ret = -EOVERFLOW;
+		goto out_unlock;
+	}
+
+	if (copy_to_user(buf, kcs_bmc->kbuffer, data_len)) {
+		ret = -EFAULT;
+		goto out_unlock;
+	}
+
+	ret = data_len;
+
+	spin_lock_irq(&kcs_bmc->lock);
+	if (kcs_bmc->phase == KCS_PHASE_WRITE_DONE) {
+		kcs_bmc->phase = KCS_PHASE_WAIT_READ;
+		kcs_bmc->data_in_avail = false;
+		kcs_bmc->data_in_idx = 0;
+	} else {
+		ret = -EAGAIN;
+	}
+	spin_unlock_irq(&kcs_bmc->lock);
+
+out_unlock:
+	mutex_unlock(&kcs_bmc->mutex);
+
+	return ret;
+}
+
+static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
+			     size_t count, loff_t *ppos)
+{
+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	ssize_t ret;
+
+	/* a minimum response size '3' : netfn + cmd + ccode */
+	if (count < 3 || count > KCS_MSG_BUFSIZ)
+		return -EINVAL;
+
+	mutex_lock(&kcs_bmc->mutex);
+
+	if (copy_from_user(kcs_bmc->kbuffer, buf, count)) {
+		ret = -EFAULT;
+		goto out_unlock;
+	}
+
+	spin_lock_irq(&kcs_bmc->lock);
+	if (kcs_bmc->phase == KCS_PHASE_WAIT_READ) {
+		kcs_bmc->phase = KCS_PHASE_READ;
+		kcs_bmc->data_out_idx = 1;
+		kcs_bmc->data_out_len = count;
+		memcpy(kcs_bmc->data_out, kcs_bmc->kbuffer, count);
+		kcs_bmc_write_data(kcs_bmc, kcs_bmc->data_out[0]);
+		ret = count;
+	} else {
+		ret = -EINVAL;
+	}
+	spin_unlock_irq(&kcs_bmc->lock);
+
+out_unlock:
+	mutex_unlock(&kcs_bmc->mutex);
+
+	return ret;
+}
+
+static long kcs_bmc_ipmi_ioctl(struct file *filp, unsigned int cmd,
+			  unsigned long arg)
+{
+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	long ret = 0;
+
+	spin_lock_irq(&kcs_bmc->lock);
+
+	switch (cmd) {
+	case IPMI_BMC_IOCTL_SET_SMS_ATN:
+		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, KCS_STATUS_SMS_ATN);
+		break;
+
+	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
+		kcs_bmc_update_status(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
+		break;
+
+	case IPMI_BMC_IOCTL_FORCE_ABORT:
+		kcs_bmc_ipmi_force_abort(kcs_bmc);
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	spin_unlock_irq(&kcs_bmc->lock);
+
+	return ret;
+}
+
+static int kcs_bmc_ipmi_release(struct inode *inode, struct file *filp)
+{
+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+
+	spin_lock_irq(&kcs_bmc->lock);
+	kcs_bmc->running = 0;
+	kcs_bmc_ipmi_force_abort(kcs_bmc);
+	spin_unlock_irq(&kcs_bmc->lock);
+
+	return 0;
+}
+
+static const struct file_operations kcs_bmc_fops = {
+	.owner          = THIS_MODULE,
+	.open           = kcs_bmc_ipmi_open,
+	.read           = kcs_bmc_ipmi_read,
+	.write          = kcs_bmc_ipmi_write,
+	.release        = kcs_bmc_ipmi_release,
+	.poll           = kcs_bmc_ipmi_poll,
+	.unlocked_ioctl = kcs_bmc_ipmi_ioctl,
+};
+
+struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel);
+struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel)
+{
+	struct kcs_bmc *kcs_bmc;
+
+	kcs_bmc = devm_kzalloc(dev, sizeof(*kcs_bmc) + sizeof_priv, GFP_KERNEL);
+	if (!kcs_bmc)
+		return NULL;
+
+	spin_lock_init(&kcs_bmc->lock);
+	kcs_bmc->channel = channel;
+
+	mutex_init(&kcs_bmc->mutex);
+	init_waitqueue_head(&kcs_bmc->queue);
+
+	kcs_bmc->data_in = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
+	kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
+	kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
+
+	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
+	kcs_bmc->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "%s%u",
+					       DEVICE_NAME, channel);
+	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
+	    !kcs_bmc->miscdev.name)
+		return NULL;
+	kcs_bmc->miscdev.fops = &kcs_bmc_fops;
+
+	return kcs_bmc;
+}
+EXPORT_SYMBOL(kcs_bmc_ipmi_alloc);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Haiyue Wang <haiyue.wang@linux.intel.com>");
+MODULE_DESCRIPTION("KCS BMC to handle the IPMI request from system software");
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
