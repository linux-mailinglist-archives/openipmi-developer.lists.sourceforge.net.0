Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0DE7BB4AF
	for <lists+openipmi-developer@lfdr.de>; Fri,  6 Oct 2023 12:02:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qohfJ-0008FW-A6;
	Fri, 06 Oct 2023 10:02:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aladyshev22@gmail.com>) id 1qohfH-0008FP-K0
 for openipmi-developer@lists.sourceforge.net;
 Fri, 06 Oct 2023 10:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YUX/UAbHIqbeqOjhPaMPY2ZesCBPS6XxII45ueUUUxU=; b=cLtNLrbYvVBnS6EKiG2Tw7l7pH
 IWO+ssh8siVwb3lDGtCkFK9XZwHRwLNQZi5DzO/rN2NU/6CtFckEf+vCgOkNkItZQ7aJRipn7hjip
 11DCUH4mjwSadTDzwUGWXKmdqjoABVWQaxTaqxpHEaXRyI7wlYMA/s04PSsA9MWKZYxA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YUX/UAbHIqbeqOjhPaMPY2ZesCBPS6XxII45ueUUUxU=; b=BtLmWXA2z0JTFnlxfOcL/Xzhbu
 et2DW+wduwSFe1sLTR13muHWN2HFum/2two1PniCR7hvxhNVC7hcbMXxci8eAIinSB1Dtc36KRsAE
 aRtuTZ7b5PwDrLsfwY5yiri245h9T+IGgvVK5kQlKqPLC5r8UF/sDy3Igd7zV9TPL6TE=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qohfB-003IwB-BS for openipmi-developer@lists.sourceforge.net;
 Fri, 06 Oct 2023 10:02:34 +0000
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-50585357903so2566185e87.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 06 Oct 2023 03:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696586542; x=1697191342; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YUX/UAbHIqbeqOjhPaMPY2ZesCBPS6XxII45ueUUUxU=;
 b=izslzUYFMgZe0QhH4v8rMyT8r5Y4f+/m7bEISRG5dlwJmFjl7frUZ0U0UcM7nvd7En
 2EumiZA4n1NBHZmajNCUVFH0BzbTSGX4tKu6jvkPEVhCmiZJHcr7ZfQJ9sb4ZT6wWgYk
 q4lo3c4QUVwToDOPeHa7Hwb2FRMmc1VkPtnuo+sm+AKrTYMUSER3Reroz3VSKR4e2k2f
 0djrn1/aK2GpPt6djDq3hYOpRfkUXnhQlTopycuCARGiAn2He4vjOQIS2t5akdw1pTrB
 WnmD7dhx0JigwMG0SGfJtXhiV0l8hRqxLPgEfFL+F3/yf00702ttdDD3KaBBg02pv6Ho
 s+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696586542; x=1697191342;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YUX/UAbHIqbeqOjhPaMPY2ZesCBPS6XxII45ueUUUxU=;
 b=j3sMenG3Ay1UCiiYiw6Jc225Y68Hu/z+cTEu9dHPfmkobqf0zCaPgRwh3XWbEcPO77
 0Js7ubfDLsA5SOk67mJZcWTutfTDOXnK3nvUADnAYbFnPxSasl7I6IGdSpknWzIlFuOA
 0cHjtheMVWzmYqnw4DWN0sOqXnMKiUgjj7t7JnmOfFssE6VAuEwd7SXwXAr+CWWGtTp3
 VRwGtw1zMGOCxkQQQ+zhNuwYL29Qt0LlUnl9wyHy3Lt2KDEVe0VC2PRHqdg7eWDHNwC/
 4UjiOtID1vDrXfRke61MrBu7UKvqLe2AfP7wpKM9WpPfhdocmvY2QMYHtpQJc5rZa4+0
 bmDw==
X-Gm-Message-State: AOJu0Yz71GgD0dFP7mGTDd2LfRG108Pkd8d2mBpKZPuG1Mu/vgF069Wp
 rtyiYaqwWkBbpDVCsK+I/i8=
X-Google-Smtp-Source: AGHT+IFjrzT7dsTckMv9vrji9YO0ch4tOuJBrePWI1iOFYJBSSCiTqAdVoJYQCbiuwXpZ76ptkaXnw==
X-Received: by 2002:a2e:8445:0:b0:2c0:3186:8efa with SMTP id
 u5-20020a2e8445000000b002c031868efamr5697429ljh.11.1696586542330; 
 Fri, 06 Oct 2023 03:02:22 -0700 (PDT)
Received: from PC10319.67 ([82.97.198.254])
 by smtp.googlemail.com with ESMTPSA id
 x12-20020a2e9dcc000000b002bcedacd726sm713674ljj.25.2023.10.06.03.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 03:02:21 -0700 (PDT)
From: Konstantin Aladyshev <aladyshev22@gmail.com>
To: 
Date: Fri,  6 Oct 2023 13:02:12 +0300
Message-Id: <20231006100214.396-2-aladyshev22@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231006100214.396-1-aladyshev22@gmail.com>
References: <20231006100214.396-1-aladyshev22@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The current KCS header files can be utilized by both IPMI
 drivers (drivers/char/ipmi) and MCTP driver (drivers/net/mctp). To be able
 to use them in both cases move the headers to 'include/linux' folde [...]
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aladyshev22[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aladyshev22[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
 -0.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1qohfB-003IwB-BS
Subject: [Openipmi-developer] [PATCH v4 1/3] ipmi: Move KCS headers to
 common include folder
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

The current KCS header files can be utilized by both IPMI drivers
(drivers/char/ipmi) and MCTP driver (drivers/net/mctp). To be able to
use them in both cases move the headers to 'include/linux' folder.

Signed-off-by: Konstantin Aladyshev <aladyshev22@gmail.com>
---
 drivers/char/ipmi/kcs_bmc.c                           | 8 +++-----
 drivers/char/ipmi/kcs_bmc_aspeed.c                    | 3 +--
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c                 | 2 +-
 drivers/char/ipmi/kcs_bmc_npcm7xx.c                   | 2 +-
 drivers/char/ipmi/kcs_bmc_serio.c                     | 2 +-
 {drivers/char/ipmi => include/linux}/kcs_bmc.h        | 0
 {drivers/char/ipmi => include/linux}/kcs_bmc_client.h | 3 +--
 {drivers/char/ipmi => include/linux}/kcs_bmc_device.h | 3 +--
 8 files changed, 9 insertions(+), 14 deletions(-)
 rename {drivers/char/ipmi => include/linux}/kcs_bmc.h (100%)
 rename {drivers/char/ipmi => include/linux}/kcs_bmc_client.h (97%)
 rename {drivers/char/ipmi => include/linux}/kcs_bmc_device.h (96%)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 8b1161d5194a..d29a8505d6ed 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -5,15 +5,13 @@
  */
 
 #include <linux/device.h>
+#include <linux/kcs_bmc.h>
+#include <linux/kcs_bmc_client.h>
+#include <linux/kcs_bmc_device.h>
 #include <linux/list.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 
-#include "kcs_bmc.h"
-
-/* Implement both the device and client interfaces here */
-#include "kcs_bmc_device.h"
-#include "kcs_bmc_client.h"
 
 /* Record registered devices and drivers */
 static DEFINE_MUTEX(kcs_bmc_lock);
diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 72640da55380..3dc0dfb448f5 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -10,6 +10,7 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/irq.h>
+#include <linux/kcs_bmc_device.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -21,8 +22,6 @@
 #include <linux/slab.h>
 #include <linux/timer.h>
 
-#include "kcs_bmc_device.h"
-
 
 #define DEVICE_NAME     "ast-kcs-bmc"
 
diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index cf670e891966..bf1001130a6c 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -8,6 +8,7 @@
 #include <linux/errno.h>
 #include <linux/io.h>
 #include <linux/ipmi_bmc.h>
+#include <linux/kcs_bmc_client.h>
 #include <linux/list.h>
 #include <linux/miscdevice.h>
 #include <linux/module.h>
@@ -17,7 +18,6 @@
 #include <linux/sched.h>
 #include <linux/slab.h>
 
-#include "kcs_bmc_client.h"
 
 /* Different phases of the KCS BMC module.
  *  KCS_PHASE_IDLE:
diff --git a/drivers/char/ipmi/kcs_bmc_npcm7xx.c b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
index 7961fec56476..160553248a93 100644
--- a/drivers/char/ipmi/kcs_bmc_npcm7xx.c
+++ b/drivers/char/ipmi/kcs_bmc_npcm7xx.c
@@ -10,6 +10,7 @@
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/kcs_bmc_device.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -17,7 +18,6 @@
 #include <linux/regmap.h>
 #include <linux/slab.h>
 
-#include "kcs_bmc_device.h"
 
 #define DEVICE_NAME	"npcm-kcs-bmc"
 #define KCS_CHANNEL_MAX	3
diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
index 1793358be782..24df7144a189 100644
--- a/drivers/char/ipmi/kcs_bmc_serio.c
+++ b/drivers/char/ipmi/kcs_bmc_serio.c
@@ -5,12 +5,12 @@
 #include <linux/device.h>
 #include <linux/errno.h>
 #include <linux/list.h>
+#include <linux/kcs_bmc_client.h>
 #include <linux/module.h>
 #include <linux/sched/signal.h>
 #include <linux/serio.h>
 #include <linux/slab.h>
 
-#include "kcs_bmc_client.h"
 
 struct kcs_bmc_serio {
 	struct list_head entry;
diff --git a/drivers/char/ipmi/kcs_bmc.h b/include/linux/kcs_bmc.h
similarity index 100%
rename from drivers/char/ipmi/kcs_bmc.h
rename to include/linux/kcs_bmc.h
diff --git a/drivers/char/ipmi/kcs_bmc_client.h b/include/linux/kcs_bmc_client.h
similarity index 97%
rename from drivers/char/ipmi/kcs_bmc_client.h
rename to include/linux/kcs_bmc_client.h
index 6fdcde0a7169..f6350c9366dd 100644
--- a/drivers/char/ipmi/kcs_bmc_client.h
+++ b/include/linux/kcs_bmc_client.h
@@ -5,8 +5,7 @@
 #define __KCS_BMC_CONSUMER_H__
 
 #include <linux/irqreturn.h>
-
-#include "kcs_bmc.h"
+#include <linux/kcs_bmc.h>
 
 struct kcs_bmc_driver_ops {
 	int (*add_device)(struct kcs_bmc_device *kcs_bmc);
diff --git a/drivers/char/ipmi/kcs_bmc_device.h b/include/linux/kcs_bmc_device.h
similarity index 96%
rename from drivers/char/ipmi/kcs_bmc_device.h
rename to include/linux/kcs_bmc_device.h
index 17c572f25c54..65333b68c0af 100644
--- a/drivers/char/ipmi/kcs_bmc_device.h
+++ b/include/linux/kcs_bmc_device.h
@@ -5,8 +5,7 @@
 #define __KCS_BMC_DEVICE_H__
 
 #include <linux/irqreturn.h>
-
-#include "kcs_bmc.h"
+#include <linux/kcs_bmc.h>
 
 struct kcs_bmc_device_ops {
 	void (*irq_mask_update)(struct kcs_bmc_device *kcs_bmc, u8 mask, u8 enable);
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
