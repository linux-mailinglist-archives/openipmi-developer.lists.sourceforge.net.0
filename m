Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 345C939F43F
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:52:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZKz-0008Vs-12; Tue, 08 Jun 2021 10:52:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lqZJh-00086p-JL
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zzc7gB5yDI9rOhlQvK5HVCt4JFBNmFnr0uke3sSm5CQ=; b=akd3703fdic7hQaQbDc59Ensuw
 /kKTn3eytzYPiQ8bw/BTlUHzJ/7akTbRQqt8gBSql8iQ8kPs8AgPEmiP1e7vMRzFr3S88uajWUHGU
 LXbemKDuE2Z2gihwWv0e5RAEBzdSkR2aibOrkWcKKjvQA0Ppqs3DuXocOq+Rp2qLDJFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zzc7gB5yDI9rOhlQvK5HVCt4JFBNmFnr0uke3sSm5CQ=; b=hlfxpV6DLc3BxYE/dSoKFmmFnO
 eHnU/mHGdpuMhjTaj8YxA9SC0HSIr/d0jHyVjw8tTaFzeytARzIc7Qepsb1joKAmJjkoUPEorAqCa
 YJ97AhrXL87mwWXHD5weZUxsmY7pbyPSolQoC9T4y7u5GtFd+kmXwhHkdyZg/7q3FXio=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZHw-0008Hj-Kr
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:48:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 02F9F580597;
 Tue,  8 Jun 2021 06:48:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 08 Jun 2021 06:48:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=zzc7gB5yDI9rO
 hlQvK5HVCt4JFBNmFnr0uke3sSm5CQ=; b=fXZ724+XBrELPJ4IK/tFMZBUOO8vJ
 Z6nK/D/NGU8EacylPpG8KzOH6ZESQ6fxbHf4eVfrZj3qwp1bRN0VH49AepEdmVeV
 IBD3P79iKkRaBvbBG6PkzWnh72Gt25XBW6fWXzud7u2Zd+Vg+BdGyrxyFIl0a5h/
 /FrRsYcKZaqXh2m6CaceX0WDUH+cuGmEm+tihr8BfKDQHzaZEA1QCdDB64kX6bmR
 fGVNmoL288yzGJcCiBft6nzc8i2wbQjavwc44WUYAyQhQ8ws+vDqSdRg9OUG8qob
 pKrnqsRCKm9g3NkaPA+8mGAiu1dtHT3GoELkHTTIZW09GodnAIPYCKUKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=zzc7gB5yDI9rOhlQvK5HVCt4JFBNmFnr0uke3sSm5CQ=; b=rv9gU+In
 sqRt6Jz/RZAY4gMUyHg2POfKDbrtm6X4LtPXMF/B/VVg6p2LINBYsXoUUgyK5Mji
 ygx6b83+VBrg41GRu0oblH6iMCOrXMtp2xOXOM3vEwuk2TER3+9N3/+qFwvuRNz7
 V1ASWXgejBSPNGeGJKKzPKD4EwlYyym8kpmAg4tR57KovDXJobUhe/NYkFD+yx7o
 gzm/r6zZtVvZCZbybDlUymGlWYGRAwKpz+pKycPtf8JFa1B6F+RvD59ekdEIN8dr
 uAmNDg9Ztf/A3CND4+ShlejRMmkMt+Zon2IlnvUkF7gZB5eHAQrttAHsDTeFdVqn
 WXb1Y0YE9aAM6g==
X-ME-Sender: <xms:DUu_YOmcvgA1QJrrOqcII-JDINKidqNik9D-_xe9okozWJGeUhfH2A>
 <xme:DUu_YF1B5I5t-dd1s9ZoAh1JAGxNUe_0NdcF1Yeah67BNPd1dBrT3hALvoUQjHS7e
 Yn9nCCJUsTugA5vPA>
X-ME-Received: <xmr:DUu_YMq6BcnwlsnvX4829X9PntNsRjZ33zw1lMf-3QS632wsudcabCQ6RhbV9KHIcnor_CrR3FOXtVQPNgoTDLfyWnA91o48IEo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuggftrfgrthhtvghrnhepjefgvdevheetkeevgeegleelgfelte
 etjeffleffvdduudevieffgeetleevhfetnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:DUu_YClwXWADRzkNdzwbPRhUt8ysn4fhCiQyaGuUV9DkFf6zaCo5sw>
 <xmx:DUu_YM1bnSqIGpTdhqmOCwsQhT0id0iiosm7PcbrWKlkCOn3ehz7oQ>
 <xmx:DUu_YJvgXG2ZXks_71u5wmt0kee1Bu6hozt-SGag6tjDPhZ-aKP3fg>
 <xmx:D0u_YFH8d-H706i3lzAP_3WqVZor7yC5fIs90_gTzJIDDiAUpxf-JA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:48:39 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:45 +0930
Message-Id: <20210608104757.582199-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210608104757.582199-1-andrew@aj.id.au>
References: <20210608104757.582199-1-andrew@aj.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lqZHw-0008Hj-Kr
Subject: [Openipmi-developer] [PATCH v4 04/16] ipmi: kcs_bmc: Split out
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
 linux-aspeed@lists.ozlabs.org, KWLIU@nuvoton.com, avifishman70@gmail.com,
 venture@google.com, chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
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
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
