Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BA331DB65
	for <lists+openipmi-developer@lfdr.de>; Wed, 17 Feb 2021 15:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:References:Mime-Version:Message-Id:
	In-Reply-To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Www03PMUdCjk60kS8+SbjNXKv9AFIt8S8aDJ8MZinhE=; b=CNaTn30+8Onxogxe7bD/frkHs
	Twn67Tt7aVOiY4UcDEIes7s7N2xUVCfdShYhr/3TueUwUp8p6IReiKB898JNBeUEPBMbUpiJnh85h
	5bDoVb4ik6pQQjycgKT0SFmMJ1bIwLvPOSClMm2TxlomXlEhdwzwTlsooV2C1VUsduf3A=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lCNlU-0005G9-5t; Wed, 17 Feb 2021 14:25:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <33MYsYAMKACUXBLHPPHMF.DPN@flex--wak.bounces.google.com>)
 id 1lCHn8-0003Pm-6o
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Feb 2021 08:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:References:
 Mime-Version:Message-Id:In-Reply-To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6qKo0RCKzfkUdg1aVv7+GSGl79l43/TBLx7+DoXXi8I=; b=f7j5AYAeZWvTpBe2BaHSY0oAH
 tF/0j95pvFFN1hsuySrpqfhd3eXBhUoPzwDb7mBOF6QINOIFU4UkDm/5DaEfOS0gxCorgvbryRDv0
 Qfuia7XaGtyOhJDugZK9py5PYbOaBQImVFHJ3r5sjhaV/2auFD7ZbyO0YSFCHT37FPqpE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:References:Mime-Version:Message-Id:
 In-Reply-To:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6qKo0RCKzfkUdg1aVv7+GSGl79l43/TBLx7+DoXXi8I=; b=SDBUzxQxJZSTVXyi1WyORV9OFk
 XNawgpBpgYR6d7O7MZIKodIZ6US2HW0F6xE12LbwFT8ll99vyDxkRbwQwa/P7aHkAHPA0Zud50CDH
 OhMx1F7Y1CLGW53QDOSw4+bKNbHON7t8Gr7B1PqWJy+PvwTtwPUXjCldIhQPti2PY+Q8=;
Received: from mail-yb1-f201.google.com ([209.85.219.201])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lCHmw-00BphS-FR
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Feb 2021 08:02:34 +0000
Received: by mail-yb1-f201.google.com with SMTP id f3so16958870ybg.15
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 17 Feb 2021 00:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=sender:date:in-reply-to:message-id:mime-version:references:subject
 :from:to:cc; bh=6qKo0RCKzfkUdg1aVv7+GSGl79l43/TBLx7+DoXXi8I=;
 b=NUUqAKSm5fJlcLA3lidIGQhpQA/w5v7l+bo4P6DdSbGbL5iJcXCaTumT3ekzXeuYm2
 j88vcVcLoobDoICWGa15GihF/y1dgXsRseyicIt+l9Opiv6ItwHRz3x2d2bh5cKoc2sk
 IvjP7C68JNAGmVZ7uIkwBw1MVEtum9X/6Z+b+YKkzjBDoDISGqYSJD4QixrRpPhlDdRG
 YoW6419SqKu5s2fXzWtk9Dd3wQ4XNRIiBw+1E666y0yJ2ImPYnulWg6YA191KGT3yK5W
 qMB7JTCZFSeHpZTqrasQSE+rdXKhamMmIx8id2kAN3t3NN7rXDZxMZ0JRFnDwrmBd/kr
 U/UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=6qKo0RCKzfkUdg1aVv7+GSGl79l43/TBLx7+DoXXi8I=;
 b=mslraZMbHNUQEJd9lazbhDHD0rxEKQbd3J82M1Iz/pqlBsxoFcjq9yibyBTM7dc5j5
 Ja9+M9NrU7v1nOFt1Lgi9bvlJ4oWIGpdIZRxs9NCf4XQo2N9mdxVcjet59uuQ3agAmfF
 T19IiUYzEujI/kScqJisyKPwMUEVYK5s8CllrWwMgpUDBB2pe7F15zPhDz+w1tAtWuR3
 aSQYRWCwoNMqF491TFOlG9zAbtSAtjMH1YJ1lT+NOE8DpvUzOYZ5qN08ACpjJQs7Hpuq
 PZeD4onYn2H6yzzdwwesI4NAsmL5K4hOPYNd0/j+KbMk6WjtyeYDzqWBKcS57+Xkh5MK
 /MuA==
X-Gm-Message-State: AOAM531CNrKyxj2jGuNgEA2oxllE9aBqg5dgffLc/kpTveQGiLqFcYhe
 hQVHW9P7AAeiQVSf5UAEJZjaW34=
X-Google-Smtp-Source: ABdhPJyCbvWIcimi/8Dd3oa4K5QbAuJxaLHILVFxNfFetvLayltZYdOWETxjv17kQsAqFtTDvQt5VGQ=
X-Received: from wak-linux.svl.corp.google.com
 ([2620:15c:2c5:3:e984:b7fc:110a:274a])
 (user=wak job=sendgmr) by 2002:a25:830e:: with SMTP id
 s14mr36705171ybk.42.1613547228953; 
 Tue, 16 Feb 2021 23:33:48 -0800 (PST)
Date: Tue, 16 Feb 2021 23:33:18 -0800
In-Reply-To: <20210217073318.540369-1-wak@google.com>
Message-Id: <20210217073318.540369-5-wak@google.com>
Mime-Version: 1.0
References: <20210217073318.540369-1-wak@google.com>
X-Mailer: git-send-email 2.30.0.478.g8a0d178c01-goog
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.201 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.201 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lCHmw-00BphS-FR
X-Mailman-Approved-At: Wed, 17 Feb 2021 14:25:09 +0000
Subject: [Openipmi-developer] [PATCH 4/4] ipmi: kcs_bmc: Simplify state
 machine
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
From: "William A. Kennington III via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "William A. Kennington III" <wak@google.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "William A. Kennington III" <wak@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This makes a few changes, notably:

  - Removes the mutex primitive as it is not needed in the file
    operation path. The read path had multiple spinlock acquisitions
    with state changes that don't appear safe to reordering,
    specifically around forced aborts.

  - Removes multiple per-channel allocated data buffers, opting to only
    store the necessary data for the currently in flight transaction.
    Since only 1 data buffer can really be used at a given time, we
    don't need the previous 2-3.

  - Reduces the number of states in the KCS state machine. There are
    some states, like the second abort state, that effectively duplicate
    others.

  - Cleans up the initialization and register setting logic to include
    bits that were missed previously.

Signed-off-by: William A. Kennington III <wak@google.com>
---
 drivers/char/ipmi/kcs_bmc.c | 301 ++++++++++++++----------------------
 drivers/char/ipmi/kcs_bmc.h |  49 ++----
 2 files changed, 132 insertions(+), 218 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 16a378d79db9..f2fa43a516da 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -11,21 +11,14 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/poll.h>
-#include <linux/sched.h>
-#include <linux/slab.h>
 
 #include "kcs_bmc.h"
 
 #define DEVICE_NAME "ipmi-kcs"
 
-#define KCS_MSG_BUFSIZ    1000
-
-#define KCS_ZERO_DATA     0
-
-
 /* IPMI 2.0 - Table 9-1, KCS Interface Status Register Bits */
 #define KCS_STATUS_STATE(state) (state << 6)
-#define KCS_STATUS_STATE_MASK   GENMASK(7, 6)
+#define KCS_STATUS_STATE_MASK   GENMASK(7, 4)
 #define KCS_STATUS_CMD_DAT      BIT(3)
 #define KCS_STATUS_SMS_ATN      BIT(2)
 #define KCS_STATUS_IBF          BIT(1)
@@ -33,19 +26,19 @@
 
 /* IPMI 2.0 - Table 9-2, KCS Interface State Bits */
 enum kcs_states {
-	IDLE_STATE  = 0,
-	READ_STATE  = 1,
-	WRITE_STATE = 2,
-	ERROR_STATE = 3,
+	KCS_STATE_IDLE  = 0,
+	KCS_STATE_READ  = 1,
+	KCS_STATE_WRITE = 2,
+	KCS_STATE_ERROR = 3,
 };
 
 /* IPMI 2.0 - Table 9-3, KCS Interface Control Codes */
 #define KCS_CMD_GET_STATUS_ABORT  0x60
 #define KCS_CMD_WRITE_START       0x61
 #define KCS_CMD_WRITE_END         0x62
-#define KCS_CMD_READ_BYTE         0x68
+#define KCS_DATA_READ_BYTE        0x68
 
-static void update_status_bits(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
+static void kcs_update_status_bits(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
 {
 	u8 tmp = kcs_bmc->read_status(kcs_bmc);
 	tmp &= ~mask;
@@ -53,95 +46,70 @@ static void update_status_bits(struct kcs_bmc *kcs_bmc, u8 mask, u8 val)
 	kcs_bmc->write_status(kcs_bmc, tmp);
 }
 
-static inline void set_state(struct kcs_bmc *kcs_bmc, u8 state)
+static void kcs_set_state(struct kcs_bmc *kcs_bmc, enum kcs_states state)
 {
-	update_status_bits(kcs_bmc, KCS_STATUS_STATE_MASK,
+	kcs_update_status_bits(kcs_bmc, KCS_STATUS_STATE_MASK,
 					KCS_STATUS_STATE(state));
 }
 
-static void kcs_force_abort(struct kcs_bmc *kcs_bmc)
+static void kcs_force_abort(struct kcs_bmc *kcs_bmc, enum kcs_errors error)
 {
-	set_state(kcs_bmc, ERROR_STATE);
+	kcs_bmc->phase = KCS_PHASE_ERROR;
+	kcs_bmc->error = error;
+	kcs_set_state(kcs_bmc, KCS_STATE_ERROR);
 	kcs_bmc->read_data_in(kcs_bmc);
-	kcs_bmc->write_data_out(kcs_bmc, KCS_ZERO_DATA);
+	kcs_bmc->write_data_out(kcs_bmc, 0);
+}
 
-	kcs_bmc->phase = KCS_PHASE_ERROR;
-	kcs_bmc->data_in_avail = false;
-	kcs_bmc->data_in_idx = 0;
+static void kcs_pump_data_out(struct kcs_bmc *kcs_bmc)
+{
+	kcs_bmc->write_data_out(kcs_bmc,
+			kcs_bmc->data_idx >= kcs_bmc->data_len ?
+			0 : kcs_bmc->data[kcs_bmc->data_idx++]);
 }
 
 static void kcs_bmc_handle_data(struct kcs_bmc *kcs_bmc)
 {
-	u8 data;
-
 	switch (kcs_bmc->phase) {
-	case KCS_PHASE_WRITE_START:
-		kcs_bmc->phase = KCS_PHASE_WRITE_DATA;
-		fallthrough;
-
 	case KCS_PHASE_WRITE_DATA:
-		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
-			set_state(kcs_bmc, WRITE_STATE);
-			kcs_bmc->write_data_out(kcs_bmc, KCS_ZERO_DATA);
-			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
-						kcs_bmc->read_data_in(kcs_bmc);
-		} else {
-			kcs_force_abort(kcs_bmc);
-			kcs_bmc->error = KCS_LENGTH_ERROR;
-		}
+		if (kcs_bmc->data_len >= KCS_MSG_BUFSIZ)
+			return kcs_force_abort(kcs_bmc, KCS_LENGTH_ERROR);
+		kcs_bmc->data[kcs_bmc->data_len++] =
+			kcs_bmc->read_data_in(kcs_bmc);
+		kcs_bmc->write_data_out(kcs_bmc, 0);
 		break;
 
-	case KCS_PHASE_WRITE_END_CMD:
-		if (kcs_bmc->data_in_idx < KCS_MSG_BUFSIZ) {
-			set_state(kcs_bmc, READ_STATE);
-			kcs_bmc->data_in[kcs_bmc->data_in_idx++] =
-						kcs_bmc->read_data_in(kcs_bmc);
-			kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
-			kcs_bmc->data_in_avail = true;
-			wake_up_interruptible(&kcs_bmc->queue);
-		} else {
-			kcs_force_abort(kcs_bmc);
-			kcs_bmc->error = KCS_LENGTH_ERROR;
-		}
+	case KCS_PHASE_WRITE_END:
+		if (kcs_bmc->data_len < 1 && kcs_bmc->data_len >= KCS_MSG_BUFSIZ)
+			return kcs_force_abort(kcs_bmc, KCS_LENGTH_ERROR);
+		kcs_bmc->phase = KCS_PHASE_WRITE_DONE;
+		kcs_set_state(kcs_bmc, KCS_STATE_READ);
+		kcs_bmc->data[kcs_bmc->data_len++] =
+			kcs_bmc->read_data_in(kcs_bmc);
+		wake_up_interruptible(&kcs_bmc->read_ready);
 		break;
 
 	case KCS_PHASE_READ:
-		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len)
-			set_state(kcs_bmc, IDLE_STATE);
-
-		data = kcs_bmc->read_data_in(kcs_bmc);
-		if (data != KCS_CMD_READ_BYTE) {
-			set_state(kcs_bmc, ERROR_STATE);
-			kcs_bmc->write_data_out(kcs_bmc, KCS_ZERO_DATA);
-			break;
-		}
-
-		if (kcs_bmc->data_out_idx == kcs_bmc->data_out_len) {
-			kcs_bmc->write_data_out(kcs_bmc, KCS_ZERO_DATA);
+		if (kcs_bmc->data_idx >= kcs_bmc->data_len) {
 			kcs_bmc->phase = KCS_PHASE_IDLE;
-			break;
+			kcs_set_state(kcs_bmc, KCS_STATE_IDLE);
 		}
-
-		kcs_bmc->write_data_out(kcs_bmc,
-			kcs_bmc->data_out[kcs_bmc->data_out_idx++]);
+		if (kcs_bmc->read_data_in(kcs_bmc) != KCS_DATA_READ_BYTE)
+			return kcs_force_abort(kcs_bmc, KCS_UNSPECIFIED_ERROR);
+		kcs_pump_data_out(kcs_bmc);
 		break;
 
-	case KCS_PHASE_ABORT_ERROR1:
-		set_state(kcs_bmc, READ_STATE);
-		kcs_bmc->read_data_in(kcs_bmc);
+	case KCS_PHASE_ABORT:
+		kcs_set_state(kcs_bmc, KCS_STATE_READ);
+		if (kcs_bmc->read_data_in(kcs_bmc) != 0)
+			return kcs_force_abort(kcs_bmc, KCS_UNSPECIFIED_ERROR);
+		kcs_bmc->phase = KCS_PHASE_READ;
+		kcs_bmc->data_len = 0;
 		kcs_bmc->write_data_out(kcs_bmc, kcs_bmc->error);
-		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR2;
-		break;
-
-	case KCS_PHASE_ABORT_ERROR2:
-		set_state(kcs_bmc, IDLE_STATE);
-		kcs_bmc->read_data_in(kcs_bmc);
-		kcs_bmc->write_data_out(kcs_bmc, KCS_ZERO_DATA);
-		kcs_bmc->phase = KCS_PHASE_IDLE;
 		break;
 
 	default:
-		kcs_force_abort(kcs_bmc);
+		kcs_force_abort(kcs_bmc, KCS_UNSPECIFIED_ERROR);
 		break;
 	}
 }
@@ -150,40 +118,32 @@ static void kcs_bmc_handle_cmd(struct kcs_bmc *kcs_bmc)
 {
 	u8 cmd;
 
-	set_state(kcs_bmc, WRITE_STATE);
-	kcs_bmc->write_data_out(kcs_bmc, KCS_ZERO_DATA);
-
+	kcs_set_state(kcs_bmc, KCS_STATE_WRITE);
 	cmd = kcs_bmc->read_data_in(kcs_bmc);
+	kcs_bmc->write_data_out(kcs_bmc, 0);
+
 	switch (cmd) {
 	case KCS_CMD_WRITE_START:
-		kcs_bmc->phase = KCS_PHASE_WRITE_START;
-		kcs_bmc->error = KCS_NO_ERROR;
-		kcs_bmc->data_in_avail = false;
-		kcs_bmc->data_in_idx = 0;
+		if (kcs_bmc->phase != KCS_PHASE_IDLE)
+			return kcs_force_abort(kcs_bmc, KCS_UNSPECIFIED_ERROR);
+		kcs_bmc->phase = KCS_PHASE_WRITE_DATA;
+		kcs_bmc->data_len = 0;
 		break;
 
 	case KCS_CMD_WRITE_END:
-		if (kcs_bmc->phase != KCS_PHASE_WRITE_DATA) {
-			kcs_force_abort(kcs_bmc);
-			break;
-		}
-
-		kcs_bmc->phase = KCS_PHASE_WRITE_END_CMD;
+		if (kcs_bmc->phase != KCS_PHASE_WRITE_DATA)
+			return kcs_force_abort(kcs_bmc, KCS_UNSPECIFIED_ERROR);
+		kcs_bmc->phase = KCS_PHASE_WRITE_END;
 		break;
 
 	case KCS_CMD_GET_STATUS_ABORT:
-		if (kcs_bmc->error == KCS_NO_ERROR)
+		if (kcs_bmc->phase != KCS_PHASE_ERROR)
 			kcs_bmc->error = KCS_ABORTED_BY_COMMAND;
-
-		kcs_bmc->phase = KCS_PHASE_ABORT_ERROR1;
-		kcs_bmc->data_in_avail = false;
-		kcs_bmc->data_in_idx = 0;
+		kcs_bmc->phase = KCS_PHASE_ABORT;
 		break;
 
 	default:
-		kcs_force_abort(kcs_bmc);
-		kcs_bmc->error = KCS_ILLEGAL_CONTROL_CODE;
-		break;
+		kcs_force_abort(kcs_bmc, KCS_ILLEGAL_CONTROL_CODE);
 	}
 }
 
@@ -198,8 +158,8 @@ irqreturn_t kcs_bmc_irq(int irq, void *arg)
 
 	status = kcs_bmc->read_status(kcs_bmc);
 	if (status & KCS_STATUS_IBF) {
-		if (!kcs_bmc->running)
-			kcs_force_abort(kcs_bmc);
+		if (!kcs_bmc->open)
+			kcs_force_abort(kcs_bmc, KCS_NO_ERROR);
 		else if (status & KCS_STATUS_CMD_DAT)
 			kcs_bmc_handle_cmd(kcs_bmc);
 		else
@@ -218,30 +178,15 @@ static inline struct kcs_bmc *to_kcs_bmc(struct file *filp)
 	return container_of(filp->private_data, struct kcs_bmc, miscdev);
 }
 
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
 static __poll_t kcs_bmc_poll(struct file *filp, poll_table *wait)
 {
 	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
 	__poll_t mask = 0;
 
-	poll_wait(filp, &kcs_bmc->queue, wait);
+	poll_wait(filp, &kcs_bmc->read_ready, wait);
 
 	spin_lock_irq(&kcs_bmc->lock);
-	if (kcs_bmc->data_in_avail)
+	if (kcs_bmc->phase == KCS_PHASE_WRITE_DONE)
 		mask |= EPOLLIN;
 	spin_unlock_irq(&kcs_bmc->lock);
 
@@ -252,57 +197,36 @@ static ssize_t kcs_bmc_read(struct file *filp, char __user *buf,
 			    size_t count, loff_t *ppos)
 {
 	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
-	bool data_avail;
-	size_t data_len;
+	u8 data_in[KCS_MSG_BUFSIZ];
 	ssize_t ret;
 
-	if (!(filp->f_flags & O_NONBLOCK))
-		wait_event_interruptible(kcs_bmc->queue,
-					 kcs_bmc->data_in_avail);
-
-	mutex_lock(&kcs_bmc->mutex);
-
 	spin_lock_irq(&kcs_bmc->lock);
-	data_avail = kcs_bmc->data_in_avail;
-	if (data_avail) {
-		data_len = kcs_bmc->data_in_idx;
-		memcpy(kcs_bmc->kbuffer, kcs_bmc->data_in, data_len);
-	}
-	spin_unlock_irq(&kcs_bmc->lock);
 
-	if (!data_avail) {
-		ret = -EAGAIN;
-		goto out_unlock;
+	while (kcs_bmc->phase != KCS_PHASE_WRITE_DONE) {
+		if (filp->f_flags & O_NONBLOCK) {
+			spin_unlock_irq(&kcs_bmc->lock);
+			return -EAGAIN;
+		}
+		ret = wait_event_interruptible_lock_irq(kcs_bmc->read_ready,
+					 kcs_bmc->phase == KCS_PHASE_WRITE_DONE, kcs_bmc->lock);
+		if (ret) {
+			spin_unlock_irq(&kcs_bmc->lock);
+			return ret;
+		}
 	}
 
-	if (count < data_len) {
-		spin_lock_irq(&kcs_bmc->lock);
-		kcs_force_abort(kcs_bmc);
+	if (kcs_bmc->data_len > count) {
 		spin_unlock_irq(&kcs_bmc->lock);
-
-		ret = -EOVERFLOW;
-		goto out_unlock;
+		return -EOVERFLOW;
 	}
 
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
+	ret = kcs_bmc->data_len;
+	memcpy(data_in, kcs_bmc->data, kcs_bmc->data_len);
+	kcs_bmc->phase = KCS_PHASE_WAIT_READ;
 	spin_unlock_irq(&kcs_bmc->lock);
 
-out_unlock:
-	mutex_unlock(&kcs_bmc->mutex);
+	if (copy_to_user(buf, data_in, ret))
+		return -EFAULT;
 
 	return ret;
 }
@@ -312,34 +236,28 @@ static ssize_t kcs_bmc_write(struct file *filp, const char __user *buf,
 {
 	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
 	ssize_t ret;
+	u8 data_out[KCS_MSG_BUFSIZ];
 
 	/* a minimum response size '3' : netfn + cmd + ccode */
-	if (count < 3 || count > KCS_MSG_BUFSIZ)
+	if (count < 3 || count > sizeof(data_out))
 		return -EINVAL;
 
-	mutex_lock(&kcs_bmc->mutex);
-
-	if (copy_from_user(kcs_bmc->kbuffer, buf, count)) {
-		ret = -EFAULT;
-		goto out_unlock;
-	}
+	if (copy_from_user(data_out, buf, count))
+		return -EFAULT;
 
 	spin_lock_irq(&kcs_bmc->lock);
 	if (kcs_bmc->phase == KCS_PHASE_WAIT_READ) {
 		kcs_bmc->phase = KCS_PHASE_READ;
-		kcs_bmc->data_out_idx = 1;
-		kcs_bmc->data_out_len = count;
-		memcpy(kcs_bmc->data_out, kcs_bmc->kbuffer, count);
-		kcs_bmc->write_data_out(kcs_bmc, kcs_bmc->data_out[0]);
+		memcpy(kcs_bmc->data, data_out, count);
+		kcs_bmc->data_idx = 0;
+		kcs_bmc->data_len = count;
+		kcs_pump_data_out(kcs_bmc);
 		ret = count;
 	} else {
-		ret = -EINVAL;
+		ret = -EBUSY;
 	}
 	spin_unlock_irq(&kcs_bmc->lock);
 
-out_unlock:
-	mutex_unlock(&kcs_bmc->mutex);
-
 	return ret;
 }
 
@@ -350,27 +268,42 @@ static long kcs_bmc_ioctl(struct file *filp, unsigned int cmd,
 	long ret = 0;
 
 	spin_lock_irq(&kcs_bmc->lock);
-
 	switch (cmd) {
 	case IPMI_BMC_IOCTL_SET_SMS_ATN:
-		update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN,
-				   KCS_STATUS_SMS_ATN);
+		kcs_update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN,
+				KCS_STATUS_SMS_ATN);
 		break;
 
 	case IPMI_BMC_IOCTL_CLEAR_SMS_ATN:
-		update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN,
-				   0);
+		kcs_update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
 		break;
 
 	case IPMI_BMC_IOCTL_FORCE_ABORT:
-		kcs_force_abort(kcs_bmc);
+		kcs_force_abort(kcs_bmc, KCS_NO_ERROR);
 		break;
 
 	default:
 		ret = -EINVAL;
 		break;
 	}
+	spin_unlock_irq(&kcs_bmc->lock);
 
+	return ret;
+}
+
+static int kcs_bmc_open(struct inode *inode, struct file *filp)
+{
+	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
+	int ret = 0;
+
+	spin_lock_irq(&kcs_bmc->lock);
+	if (kcs_bmc->open) {
+		ret = -EBUSY;
+	} else {
+		kcs_bmc->open = true;
+		kcs_update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
+		kcs_force_abort(kcs_bmc, KCS_NO_ERROR);
+	}
 	spin_unlock_irq(&kcs_bmc->lock);
 
 	return ret;
@@ -381,8 +314,9 @@ static int kcs_bmc_release(struct inode *inode, struct file *filp)
 	struct kcs_bmc *kcs_bmc = to_kcs_bmc(filp);
 
 	spin_lock_irq(&kcs_bmc->lock);
-	kcs_bmc->running = 0;
-	kcs_force_abort(kcs_bmc);
+	kcs_bmc->open = false;
+	kcs_update_status_bits(kcs_bmc, KCS_STATUS_SMS_ATN, 0);
+	kcs_force_abort(kcs_bmc, KCS_NO_ERROR);
 	spin_unlock_irq(&kcs_bmc->lock);
 
 	return 0;
@@ -403,12 +337,9 @@ int kcs_bmc_init(struct kcs_bmc *kcs_bmc, struct device *dev, u32 channel)
 	int rc;
 
 	spin_lock_init(&kcs_bmc->lock);
-	mutex_init(&kcs_bmc->mutex);
-	init_waitqueue_head(&kcs_bmc->queue);
+	init_waitqueue_head(&kcs_bmc->read_ready);
 
-	kcs_bmc->data_in = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
+	kcs_bmc->open = false;
 
 	kcs_bmc->miscdev.fops = &kcs_bmc_fops;
 	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
index d65ffd479e9b..48c4fa8772d7 100644
--- a/drivers/char/ipmi/kcs_bmc.h
+++ b/drivers/char/ipmi/kcs_bmc.h
@@ -8,42 +8,37 @@
 
 #include <linux/irqreturn.h>
 #include <linux/miscdevice.h>
+#include <linux/spinlock.h>
+#include <linux/wait.h>
 
 /* Different phases of the KCS BMC module.
  *  KCS_PHASE_IDLE:
  *            BMC should not be expecting nor sending any data.
- *  KCS_PHASE_WRITE_START:
- *            BMC is receiving a WRITE_START command from system software.
  *  KCS_PHASE_WRITE_DATA:
  *            BMC is receiving a data byte from system software.
- *  KCS_PHASE_WRITE_END_CMD:
+ *  KCS_PHASE_WRITE_END:
  *            BMC is waiting a last data byte from system software.
  *  KCS_PHASE_WRITE_DONE:
- *            BMC has received the whole request from system software.
+ *            BMC is waiting to send request to the upper IPMI service.
  *  KCS_PHASE_WAIT_READ:
  *            BMC is waiting the response from the upper IPMI service.
  *  KCS_PHASE_READ:
  *            BMC is transferring the response to system software.
- *  KCS_PHASE_ABORT_ERROR1:
+ *  KCS_PHASE_ABORT:
  *            BMC is waiting error status request from system software.
- *  KCS_PHASE_ABORT_ERROR2:
- *            BMC is waiting for idle status afer error from system software.
  *  KCS_PHASE_ERROR:
  *            BMC has detected a protocol violation at the interface level.
  */
 enum kcs_phases {
 	KCS_PHASE_IDLE,
 
-	KCS_PHASE_WRITE_START,
 	KCS_PHASE_WRITE_DATA,
-	KCS_PHASE_WRITE_END_CMD,
+	KCS_PHASE_WRITE_END,
 	KCS_PHASE_WRITE_DONE,
-
 	KCS_PHASE_WAIT_READ,
 	KCS_PHASE_READ,
 
-	KCS_PHASE_ABORT_ERROR1,
-	KCS_PHASE_ABORT_ERROR2,
+	KCS_PHASE_ABORT,
 	KCS_PHASE_ERROR
 };
 
@@ -56,36 +51,24 @@ enum kcs_errors {
 	KCS_UNSPECIFIED_ERROR       = 0xFF
 };
 
-/* IPMI 2.0 - 9.5, KCS Interface Registers
- * @idr: Input Data Register
- * @odr: Output Data Register
- * @str: Status Register
- */
-struct kcs_bmc {
-	spinlock_t lock;
-
-	int running;
+#define KCS_MSG_BUFSIZ    960
 
+struct kcs_bmc {
 	/* Setup by BMC KCS controller driver */
 	u8 (*read_status)(struct kcs_bmc *kcs_bmc);
 	void (*write_status)(struct kcs_bmc *kcs_bmc, u8 b);
 	u8 (*read_data_in)(struct kcs_bmc *kcs_bmc);
 	void (*write_data_out)(struct kcs_bmc *kcs_bmc, u8 b);
 
+	spinlock_t lock;
+	wait_queue_head_t read_ready;
+
+	bool open;
 	enum kcs_phases phase;
 	enum kcs_errors error;
-
-	wait_queue_head_t queue;
-	bool data_in_avail;
-	int  data_in_idx;
-	u8  *data_in;
-
-	int  data_out_idx;
-	int  data_out_len;
-	u8  *data_out;
-
-	struct mutex mutex;
-	u8 *kbuffer;
+	u8 data[KCS_MSG_BUFSIZ];
+	size_t data_idx;
+	size_t data_len;
 
 	struct miscdevice miscdev;
 };
-- 
2.30.0.478.g8a0d178c01-goog



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
