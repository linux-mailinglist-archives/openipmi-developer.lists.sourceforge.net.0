Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CC415285B
	for <lists+openipmi-developer@lfdr.de>; Wed,  5 Feb 2020 10:32:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1izH2T-0004B1-94; Wed, 05 Feb 2020 09:32:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tiwai@suse.de>) id 1izH2R-0004Aj-Iy
 for openipmi-developer@lists.sourceforge.net; Wed, 05 Feb 2020 09:32:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q9QouxdA4ghqgShJpKgDaz4JwE+Y2m8vbmNRjuCH46U=; b=jtGH4eAwyVhStWN/4wHYYK+SIR
 qJIjZ6Wi9ugecGAUiyWIrGeP55NLteRykgorPhNztG48aMyDdlFDiwK52+GWPoBnvtm6Jylu+sij4
 9fGl+eyNpwEuj0AqMaRMQyjRmgIGt4+ZhwyEI5Q9+mRwkb/s0Vf2ppfpn9PVRXLTZL/0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=q9QouxdA4ghqgShJpKgDaz4JwE+Y2m8vbmNRjuCH46U=; b=GyTTpiDjCiFZN6q78HPwHUdwcB
 xyoqHe6Oyi91Us57tabkGOw1DeSrGv/sWHmaoex+zwJAr8xKaRJ7rZW7Otl0mVgZzr8g61W8kPu04
 OXDy/NpU+4rsJ4u5V8v/p/jxIkYnL8RFJlJOSIqo48qwLSUSCQpODiTWznuRmseKZYOY=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izH2Q-0000WA-22
 for openipmi-developer@lists.sourceforge.net; Wed, 05 Feb 2020 09:32:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 523E7AAC2;
 Wed,  5 Feb 2020 09:31:53 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Corey Minyard <minyard@acm.org>
Date: Wed,  5 Feb 2020 10:31:46 +0100
Message-Id: <20200205093146.1352-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izH2Q-0000WA-22
Subject: [Openipmi-developer] [PATCH] ipmi_si: Avoid spurious errors for
 optional IRQs
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Patrick Vo <patrick.vo@hpe.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Although the IRQ assignment in ipmi_si driver is optional,
platform_get_irq() spews error messages unnecessarily:
  ipmi_si dmi-ipmi-si.0: IRQ index 0 not found

Fix this by switching to platform_get_irq_optional().

Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
Reported-and-tested-by: Patrick Vo <patrick.vo@hpe.com>
Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/char/ipmi/ipmi_si_platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index c78127ccbc0d..638c693e17ad 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -194,7 +194,7 @@ static int platform_ipmi_probe(struct platform_device *pdev)
 	else
 		io.slave_addr = slave_addr;
 
-	io.irq = platform_get_irq(pdev, 0);
+	io.irq = platform_get_irq_optional(pdev, 0);
 	if (io.irq > 0)
 		io.irq_setup = ipmi_std_irq_setup;
 	else
@@ -378,7 +378,7 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 		io.irq = tmp;
 		io.irq_setup = acpi_gpe_irq_setup;
 	} else {
-		int irq = platform_get_irq(pdev, 0);
+		int irq = platform_get_irq_optional(pdev, 0);
 
 		if (irq > 0) {
 			io.irq = irq;
-- 
2.16.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
