Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 469C17ED543
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Nov 2023 22:03:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r3N28-0007KJ-3b;
	Wed, 15 Nov 2023 21:02:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robherring2@gmail.com>) id 1r3N26-0007KC-PG
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Nov 2023 21:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+l4iWaR6h+VOkkOHlCg7l333+HWiuAX0svGEETkQvCE=; b=TXHwTVTh6FjN14XoprTzxTymZG
 ka9+DggXvUo9EpbcSp8ctdyjK+gKLkdvU3Ier8FZyheC4IVpj2COCqdxv7Wez1uhuEHlN3px9PtSI
 jcyO6CmkLQL83aeRexckIji/QSwZuFvHtY3R6hy6j75f8j3pIrgtGw8VMYLRffzfl/pw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+l4iWaR6h+VOkkOHlCg7l333+HWiuAX0svGEETkQvCE=; b=b
 v+81uJqGCxgcT6HHZ/gT7NPaXKBe1dWHCAT9FzalAYcpjGu7waEUvWSRygtt+VAMy8o69mhOxSJ0l
 EuwAUYmaiOdIZr2dnCNJpNwwZ+8QaD5QLMbL7Nj+WGE2d9IojP8sO8Tl3cvWFrQhsz3RAKN6kyljk
 lSRymVi31y9HIh0k=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1r3N22-006lwF-Ao for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Nov 2023 21:02:46 +0000
Received: by mail-oi1-f182.google.com with SMTP id
 5614622812f47-3b58d96a3bbso62839b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 15 Nov 2023 13:02:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700082156; x=1700686956;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+l4iWaR6h+VOkkOHlCg7l333+HWiuAX0svGEETkQvCE=;
 b=awRqIp0q7CjDUIp05Ety16lBf+W01vtHfSBbR40U4WkCE3wasurnymeRD67g687Pcu
 VKsL0rcCRQqM0ihUWRIlN2IeXInTOYqwFI9UVl7nGhQdm3gs119cRxvo26dPRQkvRnqm
 y4/KlM9nL4du+1Z+93KM8H+HqJEqPu2Pa4PRQXO5duK9wSroskdjYm4JB1erLLVzsrk7
 m0ZgGQ86Rt3H6k5T+tRMZh6hVKMprbEuuiXUag+xrPjzmjCjEG6A6wJDMw1p8NeB+E4j
 dZTBK9ipbjJs6EB8mg7aLtcf83LnlHvbPNJRSEN9xitt+1/eZDUdkixsTjZhbSzr9y0Z
 EI3w==
X-Gm-Message-State: AOJu0YwOGts/+X9BtoSm88e9CzwBF6vbHZEOJ+OKQF3hMxfcbM5nREp1
 PAVtKlQIWd1SCTHskWwaaw==
X-Google-Smtp-Source: AGHT+IFySdlGGNcNzqz0BYk7uO+iI4jMX2mScewB9bsNEw9TYpdOk1K4TOv50GG0gPr+QUFIO+XP2g==
X-Received: by 2002:a05:6808:448d:b0:3b5:ae0d:b1f5 with SMTP id
 eq13-20020a056808448d00b003b5ae0db1f5mr16898152oib.50.1700082156694; 
 Wed, 15 Nov 2023 13:02:36 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 a9-20020a05680804c900b003b29c2f50f0sm1589471oie.18.2023.11.15.13.02.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Nov 2023 13:02:36 -0800 (PST)
Received: (nullmailer pid 3744363 invoked by uid 1000);
 Wed, 15 Nov 2023 21:02:35 -0000
From: Rob Herring <robh@kernel.org>
To: Corey Minyard <minyard@acm.org>
Date: Wed, 15 Nov 2023 15:02:29 -0600
Message-ID: <20231115210230.3744198-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use preferred device_get_match_data() instead of
 of_match_device()
 to get the driver match data. With this, adjust the includes to explicitly
 include the correct headers. Signed-off-by: Rob Herring <robh@kernel.org>
 --- drivers/char/ipmi/ipmi_si_platform.c | 12 ++++-------- 1 file changed,
 4 insertions(+), 8 deletions(-) 
 Content analysis details:   (0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1r3N22-006lwF-Ao
Subject: [Openipmi-developer] [RESEND PATCH] ipmi: si: Use
 device_get_match_data()
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Use preferred device_get_match_data() instead of of_match_device() to
get the driver match data. With this, adjust the includes to explicitly
include the correct headers.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/char/ipmi/ipmi_si_platform.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index c3d8ac7873ba..cd2edd8f8a03 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -11,10 +11,11 @@
 
 #include <linux/types.h>
 #include <linux/module.h>
-#include <linux/of_device.h>
-#include <linux/of_platform.h>
+#include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/property.h>
 #include <linux/acpi.h>
 #include "ipmi_si.h"
 #include "ipmi_dmi.h"
@@ -224,7 +225,6 @@ MODULE_DEVICE_TABLE(of, of_ipmi_match);
 
 static int of_ipmi_probe(struct platform_device *pdev)
 {
-	const struct of_device_id *match;
 	struct si_sm_io io;
 	struct resource resource;
 	const __be32 *regsize, *regspacing, *regshift;
@@ -237,10 +237,6 @@ static int of_ipmi_probe(struct platform_device *pdev)
 
 	dev_info(&pdev->dev, "probing via device tree\n");
 
-	match = of_match_device(of_ipmi_match, &pdev->dev);
-	if (!match)
-		return -ENODEV;
-
 	if (!of_device_is_available(np))
 		return -EINVAL;
 
@@ -269,7 +265,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
 	}
 
 	memset(&io, 0, sizeof(io));
-	io.si_type	= (unsigned long) match->data;
+	io.si_type	= (enum si_type)device_get_match_data(&pdev->dev);
 	io.addr_source	= SI_DEVICETREE;
 	io.irq_setup	= ipmi_std_irq_setup;
 
-- 
2.42.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
