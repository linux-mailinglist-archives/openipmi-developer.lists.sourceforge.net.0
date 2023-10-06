Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 392247BB4B1
	for <lists+openipmi-developer@lfdr.de>; Fri,  6 Oct 2023 12:02:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qohfK-0000la-PR;
	Fri, 06 Oct 2023 10:02:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aladyshev22@gmail.com>) id 1qohfI-0000lR-Je
 for openipmi-developer@lists.sourceforge.net;
 Fri, 06 Oct 2023 10:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yp1yNMJhm0Xmlti2S7KpcZZ4ydY0GaIDDg/yGsmahK4=; b=btfO1Dp3spPqETAIX5IyZVtSFd
 aScdgN2/bGKrR859MyWL2LU9c9Vlc/LL1K+BjNUNi763UPKmwftBNjQdq43v5ki5uLeyHeF3JB8Jk
 uMzf8Vx8IkFIi1Ozg+XQ5w2u4PHvd7cwhFlk1K8Mo308+1uf1aTNIhM2P2AQ+YiPpp5Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yp1yNMJhm0Xmlti2S7KpcZZ4ydY0GaIDDg/yGsmahK4=; b=cDRGznI6oUy3+E59teF0r62gUo
 sc/8gZCdVGE8xg/RSuhpHgICZIkZcmbhEAaHaTxbHnzF172KfFkJQPMUTlL0mB4Er8iL8sHyqDVCN
 OH4BdnVIcZMyk35VIdvctcUH1M8cvPmr6iQ0qX7Q4sqyfEMpU/Sa4mS0svaK8Kh9fjuM=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qohfC-0001FH-1s for openipmi-developer@lists.sourceforge.net;
 Fri, 06 Oct 2023 10:02:35 +0000
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2c124adf469so22522311fa.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 06 Oct 2023 03:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696586543; x=1697191343; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Yp1yNMJhm0Xmlti2S7KpcZZ4ydY0GaIDDg/yGsmahK4=;
 b=FOSr/FbDZjHcv6reTGlxDRN4m5kPxfw93yOq//lHkehiJRBak0/gp5+1TscOiBZQfg
 rql42sjK5ausQ8R5mo+Bhg/ygK89bqvriAVdMOJ+oq20IlolA5+M8jgteDBIX2C8EKoZ
 6USR4bQc4+xzTSnNWWIZN3dnNYChFBTGUVSVQiZxz9l1zDb9vJ3tILnCaESgvwnvIP79
 zhxaM7FoJOIAjAhviwfHEFNeri8H+YntILRjupuV3OIxPZ/2MavH1hwxEY6RXqL6BIoq
 fTrINz1zdjQn3kBUBLN1TsG0ONoNxvMFT1b0ZAXIVlKE4TIXMilCGHPnoPbi85obOmfL
 NSNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696586543; x=1697191343;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Yp1yNMJhm0Xmlti2S7KpcZZ4ydY0GaIDDg/yGsmahK4=;
 b=dU6BWWoKkCM4k6GatR/crj3CR69lzYksPAj32x0lYjhtBPSQXiZa8hRE8PKrbsbPiL
 Y8b7Ta/M5dBfv22eTy8l72z+uZMzJTZsckB3/fBWlyYC3ck6/PxWAJZtY9IMvor9tdna
 z9gJeTpReaTdeZcAThKmG2+49gBkhtTZDQMjZEnQPwznnau6ESHH+NMDE9dLkK6uUlIE
 7/DQyLc2k0eM9zyJO9hZJ8nzfJT/5BJxa8QP8M9M7QAhY0PMm1HcgEZuxshUf4bejoMI
 /at29IOSnnbLwYZJW9RJLfKq4cMgrE6X/nawfGf2DTZDQx7UvQ+tjRFjuV3l6E91O3Qj
 fMOw==
X-Gm-Message-State: AOJu0YwuvmXG63dI2iLkjfzB2gPLplsJ78YwZaTZwA/zWDKJnNTl+DJL
 JCQkmGbc430rFseA9Q7/fmV8IOwbTy8GJGXi0MU=
X-Google-Smtp-Source: AGHT+IEAw64ITGn8zD/hrRbeUOfr6CVBTtqOx2AytEM6FmJ0zbi/4CWzzukSKnh07psQlzMotc3J4g==
X-Received: by 2002:a2e:9d83:0:b0:2bd:102c:4161 with SMTP id
 c3-20020a2e9d83000000b002bd102c4161mr7720596ljj.43.1696586543483; 
 Fri, 06 Oct 2023 03:02:23 -0700 (PDT)
Received: from PC10319.67 ([82.97.198.254])
 by smtp.googlemail.com with ESMTPSA id
 x12-20020a2e9dcc000000b002bcedacd726sm713674ljj.25.2023.10.06.03.02.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 03:02:23 -0700 (PDT)
From: Konstantin Aladyshev <aladyshev22@gmail.com>
To: 
Date: Fri,  6 Oct 2023 13:02:13 +0300
Message-Id: <20231006100214.396-3-aladyshev22@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231006100214.396-1-aladyshev22@gmail.com>
References: <20231006100214.396-1-aladyshev22@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aladyshev22[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aladyshev22[at]gmail.com]
 -0.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.172 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1qohfC-0001FH-1s
Subject: [Openipmi-developer] [PATCH v4 2/3] ipmi: Create header with KCS
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
