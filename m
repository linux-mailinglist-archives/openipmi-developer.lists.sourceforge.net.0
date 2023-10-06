Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2907BC166
	for <lists+openipmi-developer@lfdr.de>; Fri,  6 Oct 2023 23:43:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qosbQ-0003L1-7h;
	Fri, 06 Oct 2023 21:43:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rob@kernel.org>) id 1qosbP-0003Ku-7J
 for openipmi-developer@lists.sourceforge.net;
 Fri, 06 Oct 2023 21:43:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OfFOX/SlRtVBP62491tcadDkDa5U/LEBDhUkRJxWbjA=; b=eu0LO7Dv+6ROO0xbVuTmrK/Z1E
 zyu16u/A0FLIB4Jjx/WTs/k8yGHz84jV04UVV4o8JproJ+IWp3pRSeYJbaUDMUrCrWR8RgACGntLg
 yu8t77yyrUicGCD379g4RE8FcBxeBgN0SZu3qGJznRv997GMA76ukKQgPNcnz0/wyx10=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OfFOX/SlRtVBP62491tcadDkDa5U/LEBDhUkRJxWbjA=; b=e
 MUxhnw79T94Bq9faB3ntlyJE63gmOwJU6Sp09HPrGQ+busqG+EBAkc15v4we4ZvI5RA93wp8/rtqE
 WGBaWthGeGGiiWlU4RRcPYw3rxOTByI15TAxR/dI7gRVsp7PfzPvYOmskqzFF8fAIKcUuH9bwUflm
 5qwzx7cItyXdtrhA=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qosbO-0006dw-Qb for openipmi-developer@lists.sourceforge.net;
 Fri, 06 Oct 2023 21:43:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 151ACCE2571;
 Fri,  6 Oct 2023 21:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF39DC433C7;
 Fri,  6 Oct 2023 21:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696628588;
 bh=ueT+PDq/dcVRZVlCN00GU9z103GTs29FEWL1o6CcU4U=;
 h=From:To:Cc:Subject:Date:From;
 b=WwmSMrz+9sq/ZkBRA6lUw48zeNBb8P7ryVSVAC5SocsMkZPe3oKjBkev7+qw0a6nh
 gyMnC5zP+LEG+ay1SjHZgVDmenbZosRzRSRkQ/GjqPAgjPc0WKNRLuuaTfikDySoHB
 fUPqsm6bPsUTEa8CIv6NhvY4bVtevCyutZxsyqQroavcnnA8x8Z2RD3U7UImKu5snu
 v22RBPHT3D0F809re4a9C/AgG1ABvdmw0NDup71DHFi4QoMBF0E0/zU8/yFb034zbI
 EgsQvm2njgfdAwlpPlrdYQJfxbfEZvH7+cW40Eak857UY8UdcfzDR+5cYHnf4OumlH
 6Fgdeko0K4kaw==
Received: (nullmailer pid 337927 invoked by uid 1000);
 Fri, 06 Oct 2023 21:43:07 -0000
From: Rob Herring <robh@kernel.org>
To: Corey Minyard <minyard@acm.org>
Date: Fri,  6 Oct 2023 16:42:52 -0500
Message-Id: <20231006214252.337588-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
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
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qosbO-0006dw-Qb
Subject: [Openipmi-developer] [PATCH] ipmi: si: Use device_get_match_data()
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
2.40.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
