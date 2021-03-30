Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F33734F0BA
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 20:17:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRIvr-0008GQ-7B; Tue, 30 Mar 2021 18:17:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lRIvL-0008Az-BZ
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fvN+e7gUluWbly+I7Y9G1LbVXmhyymLu2e5UrM9TqyI=; b=BU2Rdl2I7+vnLHadexntpGEiNF
 w5sfMLL4UCTvI59Sw5Umr0ol0TDplVIEsp7RmYc7+At6loTOPJtF1HadUT55OS9vX4wacQfiJw9wi
 gIudB75aPsTR5rstDFHbej1jjtNW8aEx+9YZGAP9MVL3vhepASNAc1DdQ6Ka9oG0toXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fvN+e7gUluWbly+I7Y9G1LbVXmhyymLu2e5UrM9TqyI=; b=gzSBv27Ag9reQoVlqvqw2MZuuZ
 TZMHVoYiK6RuXaWnssOhQK26YmwsG61Cm1ma8DkHAEU9f+sZrAPyTgJ4t0fCAOqiQ5+BId7Gp6Rk1
 MK387hh3f6hV+sf04M6P9CbFx7m1yrB6WJGCxOv/2pScVytys/aMFgLVqrlEiF+cjLO0=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRIvD-00DvaR-DY
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:07 +0000
IronPort-SDR: kT45LOLcU0KFUHdmfvjm2oK2HLoO967+d8l2/49w1RNgFPQgb4R6zfOZBeGvIXcGpGaiRYhkwX
 AF4+TCJnuR4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="191857401"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="191857401"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:16:53 -0700
IronPort-SDR: kz2IuKPH3CCBrBalibVA7/OaMYQpFS1/mf4HCFw/ARlheGrQ8SGdOuHIcFgLRdt9ZLeTpyMj1W
 n9oP0zuCFVfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="411753270"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 30 Mar 2021 11:16:51 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 3D629269; Tue, 30 Mar 2021 21:17:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Mar 2021 21:16:43 +0300
Message-Id: <20210330181649.66496-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lRIvD-00DvaR-DY
Subject: [Openipmi-developer] [PATCH v1 04/10] ipmi_si: Use proper ACPI
 macros to check error code for failures
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
Cc: Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Instead of direct comparison, use proper ACPI macros to check error code
for failures.

While at it, drop unneeded 'else' keyword.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index 954c297b459b..023c88ea9c4c 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -85,18 +85,18 @@ static int acpi_gpe_irq_setup(struct si_sm_io *io)
 					  ACPI_GPE_LEVEL_TRIGGERED,
 					  &ipmi_acpi_gpe,
 					  io);
-	if (status != AE_OK) {
+	if (ACPI_FAILURE(status)) {
 		dev_warn(io->dev,
 			 "Unable to claim ACPI GPE %d, running polled\n",
 			 io->irq);
 		io->irq = 0;
 		return -EINVAL;
-	} else {
-		io->irq_cleanup = acpi_gpe_irq_cleanup;
-		ipmi_irq_finish_setup(io);
-		dev_info(io->dev, "Using ACPI GPE %d\n", io->irq);
-		return 0;
 	}
+
+	io->irq_cleanup = acpi_gpe_irq_cleanup;
+	ipmi_irq_finish_setup(io);
+	dev_info(io->dev, "Using ACPI GPE %d\n", io->irq);
+	return 0;
 }
 #endif
 
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
