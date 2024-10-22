Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4EA9A956B
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Oct 2024 03:23:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t33ci-0006l0-1q;
	Tue, 22 Oct 2024 01:23:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1t33ca-0006kp-FA
 for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Oct 2024 01:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0kpvlTNyCm02akaAvuo0njQRu2uaU/VS1NFzMgstuUA=; b=Pk5lKrKkWIuSIDzZjc1uMZqCLi
 9JVUwASaWFG8D/Y2D9DJBzIIBbddKMcoQhNJFc+UjhOSIZgkp75tSQtblls0ojicanKYd8dm45YGA
 3EFlfUb++MVMwaTcG2PubL6+ROyyZEwit3jpr58atoNjzySwdUPZLst/NPe4xubdypBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0kpvlTNyCm02akaAvuo0njQRu2uaU/VS1NFzMgstuUA=; b=kULgH33VbVRWBsx/SmudsCivEX
 6Fvx3pHUELlhT2c9xHNmeSUGLIkLKYyn0jW3/ZnmWmYnaeMhISEW2BYo07qcGKkzOrthA8WDoMcLB
 q5Y7Z2Pi7xAbo6siCZfW2pgRWCR1eqamzQfCXjU+GAX2KVgl+cPX15N9XwMH6oHJ10eA=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t33ca-0003uG-FK for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Oct 2024 01:23:41 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 98e67ed59e1d1-2e2a97c2681so3703397a91.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 21 Oct 2024 18:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729560210; x=1730165010; darn=lists.sourceforge.net;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=0kpvlTNyCm02akaAvuo0njQRu2uaU/VS1NFzMgstuUA=;
 b=mziCZmM66k84licIo2s5xTko+H0OcbogalTmkxwxyfpYivD6wjwqqUtPKgBldAqeUv
 X8z9J1vn1wiuWkwot+D0FnXA1Go89eJ0Ur6zr4PqMWTgn4piMWux8l12Eub4PkCtIDy/
 hA07SjV3iU5eomnPFaI3AAnI3yM1GaVfYW3ezttW2oei/k6LNFlTBR9YaZ2WYu7eaGiW
 b4+eeojQ9TX4Obshag5/GlmvrYkX0w0XJDxv3zmYVsTKZaQ4k1+n84sF+xwBWa+V3JNH
 K4kjfp2R+zlwfq+zOAijdpA57bnHbCdsRyteQzxdxB/Mw62BojzqocDkAeWBcq++7x2L
 oSNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729560210; x=1730165010;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0kpvlTNyCm02akaAvuo0njQRu2uaU/VS1NFzMgstuUA=;
 b=UZ+wFoKQhDTm8mh7cnjJPQ/BPkuvoaRnVLpxy4LFzqPgY+fDuy87S2PLd8Ib03gK9F
 FyHwl4i2sAuNjLcWvvsTs0uAnONKHIdQpHyl4V49DXX/VcpeS9ox2HkRmJQrnqBA3+rs
 E3jYafnqpEV99VgHRm8dGZegYmDY7+EeUnSXo2qTqKLHBihrhFFQGVmicDMjn/lBvBjq
 YomkdOWZIjhlsLP/EdZ+KZU1ZDcksUZ/TJmzoPNx+mKXomrlUudRti1TLiK09vREAOzp
 ITBkDXic4aCCRg+g3BnGtSGwqNzQYsSX+/THJ/WtAFftEjZ7sLejvk45+plHzWI6gVE5
 hSNg==
X-Gm-Message-State: AOJu0Yw07dxtqJsboXrYyxNjQRWjuhdSeHCUulvrec80MOOtPRvyX4A2
 XGTFQsZeku1MzhlSN6YgjVCerAiUVCZU1P8oZrcuG804BEjhrhJ2
X-Google-Smtp-Source: AGHT+IFDF8vNafHQIu1BhZKfSynLDr8X+Y76zj3pF0K4HDOWPyQhGrBM3vZ3HSYkUohWmDmh0iN3ug==
X-Received: by 2002:a17:90a:fd10:b0:2e2:8c75:b45 with SMTP id
 98e67ed59e1d1-2e5da580a85mr2166127a91.11.1729560206396; 
 Mon, 21 Oct 2024 18:23:26 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e5ad365d14sm4718919a91.13.2024.10.21.18.23.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2024 18:23:26 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Tue, 22 Oct 2024 09:20:47 +0800
MIME-Version: 1.0
Message-Id: <20241022-ssif-alert-gpios-v2-2-c7dd6dd17a7e@gmail.com>
References: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
In-Reply-To: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 Patrick Williams <patrick@stwcx.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729560198; l=2721;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=PUD6kC7ss3fWPkXsFlsDDO/XmHqy3YarK27U7zFcq0Q=;
 b=MyfetClwEMMrsdJaxnzazo2rPnNjJCZ9K1ekxRTXpo/c8c/YsSJqGaU10vFCc71b8hk75UtUe
 2GRhg/5TkDrCWG8W1UO6rPs30IqeFSulmQw9mAGIAVkp3ZJVH0iVizv
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Cosmo Chou Implement GPIO-based alert mechanism in the
 SSIF BMC driver to notify the host when a response is ready. This improves
 host-BMC communication efficiency by providing immediate notification,
 potentially reducing host polling overhead. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t33ca-0003uG-FK
Subject: [Openipmi-developer] [PATCH v2 2/2] ipmi: ssif_bmc: add GPIO-based
 alert mechanism
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
Cc: devicetree@vger.kernel.org, Cosmo Chou <chou.cosmo@gmail.com>,
 Potin Lai <potin.lai@quantatw.com>, linux-kernel@vger.kernel.org,
 Potin Lai <potin.lai.pt@gmail.com>, Cosmo Chou <cosmo.chou@quantatw.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Cosmo Chou <chou.cosmo@gmail.com>

Implement GPIO-based alert mechanism in the SSIF BMC driver to notify
the host when a response is ready.

This improves host-BMC communication efficiency by providing immediate
notification, potentially reducing host polling overhead.

Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 drivers/char/ipmi/ssif_bmc.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index a14fafc583d4..73be166b0042 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -17,6 +17,7 @@
 #include <linux/spinlock.h>
 #include <linux/timer.h>
 #include <linux/jiffies.h>
+#include <linux/gpio/consumer.h>
 #include <linux/ipmi_ssif_bmc.h>
 
 #define DEVICE_NAME                             "ipmi-ssif-host"
@@ -102,6 +103,7 @@ struct ssif_bmc_ctx {
 	struct ssif_part_buffer part_buf;
 	struct ipmi_ssif_msg    response;
 	struct ipmi_ssif_msg    request;
+	struct gpio_desc        *alert;
 };
 
 static inline struct ssif_bmc_ctx *to_ssif_bmc(struct file *file)
@@ -222,6 +224,9 @@ static ssize_t ssif_bmc_write(struct file *file, const char __user *buf, size_t
 
 	/* Clean old request buffer */
 	memset(&ssif_bmc->request, 0, sizeof(struct ipmi_ssif_msg));
+
+	if (!IS_ERR(ssif_bmc->alert))
+		gpiod_set_value(ssif_bmc->alert, 1);
 exit:
 	spin_unlock_irqrestore(&ssif_bmc->lock, flags);
 
@@ -584,6 +589,9 @@ static void process_smbus_cmd(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 	memset(&ssif_bmc->part_buf.payload[0], 0, MAX_PAYLOAD_PER_TRANSACTION);
 
 	if (*val == SSIF_IPMI_SINGLEPART_WRITE || *val == SSIF_IPMI_MULTIPART_WRITE_START) {
+		if (!IS_ERR(ssif_bmc->alert))
+			gpiod_set_value(ssif_bmc->alert, 0);
+
 		/*
 		 * The response maybe not come in-time, causing host SSIF driver
 		 * to timeout and resend a new request. In such case check for
@@ -640,6 +648,8 @@ static void on_read_requested_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 	calculate_response_part_pec(&ssif_bmc->part_buf);
 	ssif_bmc->part_buf.index = 0;
 	*val = ssif_bmc->part_buf.length;
+	if (!IS_ERR(ssif_bmc->alert))
+		gpiod_set_value(ssif_bmc->alert, 0);
 }
 
 static void on_read_processed_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
@@ -808,6 +818,11 @@ static int ssif_bmc_probe(struct i2c_client *client)
 	if (!ssif_bmc)
 		return -ENOMEM;
 
+	/* Request GPIO for alerting the host that response is ready */
+	ssif_bmc->alert = devm_gpiod_get(&client->dev, "alert", GPIOD_ASIS);
+	if (!IS_ERR(ssif_bmc->alert))
+		gpiod_direction_output(ssif_bmc->alert, 0);
+
 	spin_lock_init(&ssif_bmc->lock);
 
 	init_waitqueue_head(&ssif_bmc->wait_queue);

-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
