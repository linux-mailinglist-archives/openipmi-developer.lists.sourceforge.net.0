Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D817BFB41
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 Oct 2023 14:23:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qqBlz-0007IC-BB;
	Tue, 10 Oct 2023 12:23:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aladyshev22@gmail.com>) id 1qqBlx-0007I1-7o
 for openipmi-developer@lists.sourceforge.net;
 Tue, 10 Oct 2023 12:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yp1yNMJhm0Xmlti2S7KpcZZ4ydY0GaIDDg/yGsmahK4=; b=QhDlO7MKcmZBeO1pavCo/mk61h
 qBalO5xDa0QuowblETY1Yt8lW42ZHj7+4DlnhtOhL5iQdkPLdydzvt6r4DjNWO9qOGRXaKu34fjvh
 OIVdDhqcyLgHbv6N3h1tlMZcYc+k8dCrIe9XI28/maqOpYbZ+YI5IlhrxLoo76z7+kuw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yp1yNMJhm0Xmlti2S7KpcZZ4ydY0GaIDDg/yGsmahK4=; b=fn1RjvuRb5ZQbuRLG2jcNfccPE
 SxIcYqi2uWZ1Vq13wbMjKu/O13jqpIjVfxGrAOi4Oi62LcvUoTclusNHinxqxGwpuvt8agbtkifah
 SL/2D3RMksIZpDLZGWAvDhJZB7dLjQoeMr6gzbu/LTDPm2wOlIIFmySPyrGsYNsMkTJ4=;
Received: from mail-lj1-f176.google.com ([209.85.208.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqBlv-0001Of-6b for openipmi-developer@lists.sourceforge.net;
 Tue, 10 Oct 2023 12:23:37 +0000
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-2b95d5ee18dso68122531fa.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 10 Oct 2023 05:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696940609; x=1697545409; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Yp1yNMJhm0Xmlti2S7KpcZZ4ydY0GaIDDg/yGsmahK4=;
 b=h4z29mdxy3o5WCKyoqmXsMg53vjIh0dKkipmUhk13zFxD51HSlW8S1J03okwG3PAuj
 zXaX/vJ1bTJxVqVXbqewNz44Rg7BXjuHTf1Zzb51CSRn0ChnhYrtIVYjK2hHbnhAxGbR
 nflaiTU8PXLrcQ04lLX/eoYOV15ASZethvDvlEyTlgpwP+1tZDUWJKKcxg8a7kWQZqhP
 s71gteBF0mAFYyThbkGcD6vGEM2dBUidktNs61HtPwSF977FTYVOa2XjqUidhVx4JUGG
 Jf1PvGL2k/eWe9tFf+FbMe6k+WdZXBnC8HFqqas8DCSWwE+XaHwipqjkCxwdrTjSMprP
 X9wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696940609; x=1697545409;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Yp1yNMJhm0Xmlti2S7KpcZZ4ydY0GaIDDg/yGsmahK4=;
 b=pGoBg9J88XrLCI9jQV+Y3oRHu2ySv3TPcRSDv6ergi+cQIu8L4xRsFHCa4GGKVPLiV
 V8gO5pjVgfcdP8cODN+I4/i5KaA9OanP20MhQS6oC18VmfIeZPSNn+tt+VWGNvuMpK10
 8itmDWZRnra8Z/iomRAHpJ036CFt/4DaZeNp2Li+2TsobU4SkeOfY/X8kS/K9XUxMpWW
 /gyM5oIfYK1gQsajbyhLmaWqyiWfWeb9dygd1pB81F5VqjnXJAeSkmMRUj9zmKB5l2n9
 gw6VdwL/jpAQgGaGthyW9oZbfGWnRAN5RtS+gz/C0NgJdOda1Np7aJbEwgZcNCQM4zkO
 /Sxg==
X-Gm-Message-State: AOJu0YwFGp4oPJLeouIF1qap0LkVcO7aRu2AarZw48isPR6mzUO8GGBC
 d1nN6drFbiHJVAVAhmmyTWE=
X-Google-Smtp-Source: AGHT+IE6Sf9WBnW7fB/PVNBWIP5TwKbcCvhx6WXGgnBaKiv0H1Z3E/dt1Hv3RyBRA5YTXQpg1DjOzQ==
X-Received: by 2002:a2e:9b07:0:b0:2bd:a85:899e with SMTP id
 u7-20020a2e9b07000000b002bd0a85899emr16820416lji.3.1696940608544; 
 Tue, 10 Oct 2023 05:23:28 -0700 (PDT)
Received: from PC10319.67 ([82.97.198.254])
 by smtp.googlemail.com with ESMTPSA id
 g9-20020a2e9cc9000000b002b9e346a152sm2425638ljj.96.2023.10.10.05.23.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Oct 2023 05:23:28 -0700 (PDT)
From: Konstantin Aladyshev <aladyshev22@gmail.com>
To: 
Date: Tue, 10 Oct 2023 15:23:20 +0300
Message-Id: <20231010122321.823-3-aladyshev22@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010122321.823-1-aladyshev22@gmail.com>
References: <20231010122321.823-1-aladyshev22@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Some definitions from the current kcs_bmc_cdev_ipmi driver
 can be also utilized by the MTCP KCS binding driver. Move such definitions
 to the common header file. Signed-off-by: Konstantin Aladyshev ---
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
 | 71 + include/linux/ipmi_kcs.h | 80 +++++++++++++++++++++++++++ 2 files
 changed, 81 insertions(+ [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aladyshev22[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aladyshev22[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.176 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qqBlv-0001Of-6b
Subject: [Openipmi-developer] [PATCH v5 2/3] ipmi: Create header with KCS
 interface defines
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
Cc: tmaimon77@gmail.com, linux-aspeed@lists.ozlabs.org, tali.perry1@gmail.com,
 edumazet@google.com, jk@codeconstruct.com.au, matt@codeconstruct.com.au,
 benjaminfair@google.com, openbmc@lists.ozlabs.org, yuenn@google.com,
 kuba@kernel.org, pabeni@redhat.com, minyard@acm.org, aladyshev22@gmail.com,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 andrew@aj.id.au, venture@google.com, linux-kernel@vger.kernel.org,
 avifishman70@gmail.com, netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Some definitions from the current kcs_bmc_cdev_ipmi driver can be also
utilized by the MTCP KCS binding driver. Move such definitions to the
common header file.

Signed-off-by: Konstantin Aladyshev <aladyshev22@gmail.com>
---
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 71 +-----------------------
 include/linux/ipmi_kcs.h              | 80 +++++++++++++++++++++++++++
 2 files changed, 81 insertions(+), 70 deletions(-)
 create mode 100644 include/linux/ipmi_kcs.h

diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index bf1001130a6c..f158f676114c 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -8,6 +8,7 @@
 #include <linux/errno.h>
 #include <linux/io.h>
 #include <linux/ipmi_bmc.h>
+#include <linux/ipmi_kcs.h>
 #include <linux/kcs_bmc_client.h>
 #include <linux/list.h>
 #include <linux/miscdevice.h>
@@ -19,53 +20,6 @@
 #include <linux/slab.h>
 
 
-/* Different phases of the KCS BMC module.
- *  KCS_PHASE_IDLE:
- *            BMC should not be expecting nor sending any data.
- *  KCS_PHASE_WRITE_START:
- *            BMC is receiving a WRITE_START command from system software.
- *  KCS_PHASE_WRITE_DATA:
- *            BMC is receiving a data byte from system software.
- *  KCS_PHASE_WRITE_END_CMD:
- *            BMC is waiting a last data byte from system software.
- *  KCS_PHASE_WRITE_DONE:
- *            BMC has received the whole request from system software.
- *  KCS_PHASE_WAIT_READ:
- *            BMC is waiting the response from the upper IPMI service.
- *  KCS_PHASE_READ:
- *            BMC is transferring the response to system software.
- *  KCS_PHASE_ABORT_ERROR1:
- *            BMC is waiting error status request from system software.
- *  KCS_PHASE_ABORT_ERROR2:
- *            BMC is waiting for idle status afer error from system software.
- *  KCS_PHASE_ERROR:
- *            BMC has detected a protocol violation at the interface level.
- */
-enum kcs_ipmi_phases {
-	KCS_PHASE_IDLE,
-
-	KCS_PHASE_WRITE_START,
-	KCS_PHASE_WRITE_DATA,
-	KCS_PHASE_WRITE_END_CMD,
-	KCS_PHASE_WRITE_DONE,
-
-	KCS_PHASE_WAIT_READ,
-	KCS_PHASE_READ,
-
-	KCS_PHASE_ABORT_ERROR1,
-	KCS_PHASE_ABORT_ERROR2,
-	KCS_PHASE_ERROR
-};
-
-/* IPMI 2.0 - Table 9-4, KCS Interface Status Codes */
-enum kcs_ipmi_errors {
-	KCS_NO_ERROR                = 0x00,
-	KCS_ABORTED_BY_COMMAND      = 0x01,
-	KCS_ILLEGAL_CONTROL_CODE    = 0x02,
-	KCS_LENGTH_ERROR            = 0x06,
-	KCS_UNSPECIFIED_ERROR       = 0xFF
-};
-
 struct kcs_bmc_ipmi {
 	struct list_head entry;
 
@@ -95,29 +49,6 @@ struct kcs_bmc_ipmi {
 
 #define KCS_MSG_BUFSIZ    1000
 
-#define KCS_ZERO_DATA     0
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
 
 static inline void set_state(struct kcs_bmc_ipmi *priv, u8 state)
 {
diff --git a/include/linux/ipmi_kcs.h b/include/linux/ipmi_kcs.h
new file mode 100644
index 000000000000..30c4b6e4d689
--- /dev/null
+++ b/include/linux/ipmi_kcs.h
@@ -0,0 +1,80 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2015-2018, Intel Corporation.
+ */
+
+#ifndef __IPMI_KCS_H__
+#define __IPMI_KCS_H__
+
+/* Different phases of the KCS BMC module.
+ *  KCS_PHASE_IDLE:
+ *            BMC should not be expecting nor sending any data.
+ *  KCS_PHASE_WRITE_START:
+ *            BMC is receiving a WRITE_START command from system software.
+ *  KCS_PHASE_WRITE_DATA:
+ *            BMC is receiving a data byte from system software.
+ *  KCS_PHASE_WRITE_END_CMD:
+ *            BMC is waiting a last data byte from system software.
+ *  KCS_PHASE_WRITE_DONE:
+ *            BMC has received the whole request from system software.
+ *  KCS_PHASE_WAIT_READ:
+ *            BMC is waiting the response from the upper IPMI service.
+ *  KCS_PHASE_READ:
+ *            BMC is transferring the response to system software.
+ *  KCS_PHASE_ABORT_ERROR1:
+ *            BMC is waiting error status request from system software.
+ *  KCS_PHASE_ABORT_ERROR2:
+ *            BMC is waiting for idle status afer error from system software.
+ *  KCS_PHASE_ERROR:
+ *            BMC has detected a protocol violation at the interface level.
+ */
+enum kcs_ipmi_phases {
+	KCS_PHASE_IDLE,
+
+	KCS_PHASE_WRITE_START,
+	KCS_PHASE_WRITE_DATA,
+	KCS_PHASE_WRITE_END_CMD,
+	KCS_PHASE_WRITE_DONE,
+
+	KCS_PHASE_WAIT_READ,
+	KCS_PHASE_READ,
+
+	KCS_PHASE_ABORT_ERROR1,
+	KCS_PHASE_ABORT_ERROR2,
+	KCS_PHASE_ERROR
+};
+
+/* IPMI 2.0 - Table 9-4, KCS Interface Status Codes */
+enum kcs_ipmi_errors {
+	KCS_NO_ERROR                = 0x00,
+	KCS_ABORTED_BY_COMMAND      = 0x01,
+	KCS_ILLEGAL_CONTROL_CODE    = 0x02,
+	KCS_LENGTH_ERROR            = 0x06,
+	KCS_UNSPECIFIED_ERROR       = 0xFF
+};
+
+#define KCS_ZERO_DATA     0
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
+#endif /* __IPMI_KCS_H__ */
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
