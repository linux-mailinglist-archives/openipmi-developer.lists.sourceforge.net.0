Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB93352ECC
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:55:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSO1Q-0001Mz-9k; Fri, 02 Apr 2021 17:55:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSO1N-0001L0-U5
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QTnox7Tz9UE9fru7EOI52CQa6XZSKRrazIRc2nZtm94=; b=XjttujfKNR+CV47Xmjy/ImHXJH
 DdIKLqIr5z5MduYVrETivj95C7dcHaob5qt20WwMtYfZxDrwGtIICqH0VdVCXyyDis5UQ1xmFtwui
 THvhQJ8vGdiA6+nWoK+QCtwd07KwCDcf6sDD2cPEjYkSMyrfxeFVANs8yN7zBmgKv8ns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QTnox7Tz9UE9fru7EOI52CQa6XZSKRrazIRc2nZtm94=; b=QtYv8BRO/CcMQJAs2O+VGTueVg
 lDisSn0WZNcXvDKHoGqtzP7tzvK/twzAFUbGEDpsqtF3L8e9YsLwOzVXfl6xTQD3M6MaP/FBT4Fwg
 I0XBg4/WGkF1VD9zOXp+sMRF2tppcfLKYB04wnMHkeT4Z7GZ09bbpG1xOXo1qnCzCxgE=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lSNpU-007g2g-1c
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:43:47 +0000
IronPort-SDR: yYqDB+73fBRPmS1+qW7WCWQvMjcAjpobWj2WHUPMHKXiCM9iOpwNuPR+Geu9G+rDv1D08JbXRn
 qqmnSvklasJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="179637189"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="179637189"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:25 -0700
IronPort-SDR: LodzqoQ0ebiztRTWnb3q2rnBVgcASDIphZTGWzwVFzd9G4zQjjl/dTB9PvxRUrbfMTkce1MHpU
 50wCXZUYHnvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="385294384"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga007.fm.intel.com with ESMTP; 02 Apr 2021 10:43:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 9EEA63F1; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:28 +0300
Message-Id: <20210402174334.13466-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
References: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSNpU-007g2g-1c
Subject: [Openipmi-developer] [PATCH v2 04/10] ipmi_si: Use proper ACPI
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
index 5f641d316ecb..b87bd9933724 100644
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
