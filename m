Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB50766F01
	for <lists+openipmi-developer@lfdr.de>; Fri, 28 Jul 2023 16:05:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qPO5Z-0002q5-D3;
	Fri, 28 Jul 2023 14:05:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=4JN+=DO=robh_at_kernel.org=rob@kernel.org>)
 id 1qPO5Y-0002pz-B9 for openipmi-developer@lists.sourceforge.net;
 Fri, 28 Jul 2023 14:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ng4QN9mR3U0EvrzsERKTTorONyTjXGbO112i5lmgsHw=; b=gJ/4RFWeeQk3Q/Mh6DU3btG69+
 hNUPOcG5ztIG731LrlusQupytkhgWuvmV3eo0SnmuTYX0yKFG/+G3J19U3AtVmq28N24HvndFaTzz
 1T4p6Um8h8EIiifjJiSvAKSBQS9FTrq7V/7czU2cth9pf46fDhy7YLYLUjWqC6Ex8e08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ng4QN9mR3U0EvrzsERKTTorONyTjXGbO112i5lmgsHw=; b=f
 8dRa+cyuohLJr6k7juDOyXSR8R80hCJ6cEq+0t8obUw8chEdGIfpC/djVKLcT4pUYf/WeV1Rm9cpG
 XE3Pzlw/RcLfvN6t87Z82Ah3J41kAVyyzFRYaDNhleb5GhY2p2rBwrdtflMSoi6hOnN+llKFxAjYY
 57SV/WI+/zN+P4EM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qPO5X-005Z8m-OU for openipmi-developer@lists.sourceforge.net;
 Fri, 28 Jul 2023 14:05:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4466B620DD;
 Fri, 28 Jul 2023 13:48:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5A17C433C8;
 Fri, 28 Jul 2023 13:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1690552106;
 bh=BfRz7+IlBdcF/JG2+s7kyWYuaZqm69j/PYmjGHVN70o=;
 h=From:To:Cc:Subject:Date:From;
 b=lvCkqtRAi8C7XvpKMhWGHtKa0QETNY+KmCu8+jY3Bh016P9n1rKIO2x8z6FfKWySn
 DeiaZuEuhSVlLO9Ch16BbQaU4Pqu1ibMBv/rgPFTkOtEqJmP4hs0X+tylmku3eZIL4
 +X/C01JgkUrN2L0Rkocp9fvIhGI4DMc/52Atw9Q1D7BcgF1+ud1pjluc7386uLEEgH
 RjYy3qwNWFWmfoLzhI5YZezFQQY1Jzb6TPSE/bx6ZBd/rkygyr4kmnSxNdCmvUgP4N
 +TwxLubl8qT+0aoA+MNULE7MxHjEHlB+G/G4bg0nIjVoJdNe7rAAr9zBMVm5aZhqV2
 aySD4bVBoLdLg==
Received: (nullmailer pid 3224159 invoked by uid 1000);
 Fri, 28 Jul 2023 13:48:24 -0000
From: Rob Herring <robh@kernel.org>
To: Corey Minyard <minyard@acm.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>
Date: Fri, 28 Jul 2023 07:48:18 -0600
Message-Id: <20230728134819.3224045-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The DT of_device.h and of_platform.h date back to the
 separate
 of_platform_bus_type before it was merged into the regular platform bus.
 As part of that merge prepping Arm DT support 13 years ago, they [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qPO5X-005Z8m-OU
Subject: [Openipmi-developer] [PATCH v3] ipmi: Explicitly include correct DT
 includes
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The DT of_device.h and of_platform.h date back to the separate
of_platform_bus_type before it was merged into the regular platform bus.
As part of that merge prepping Arm DT support 13 years ago, they
"temporarily" include each other. They also include platform_device.h
and of.h. As a result, there's a pretty much random mix of those include
files used throughout the tree. In order to detangle these headers and
replace the implicit includes with struct declarations, users need to
explicitly include the correct includes.

Signed-off-by: Rob Herring <robh@kernel.org>
---
v3:
 - Split out hw_random, ipmi and tpm
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 2dea8cd5a09a..72640da55380 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -14,7 +14,6 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/poll.h>
 #include <linux/regmap.h>
-- 
2.40.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
