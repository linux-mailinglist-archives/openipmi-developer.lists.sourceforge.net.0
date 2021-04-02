Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DDB352EA6
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:44:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSNqK-00035Y-LG; Fri, 02 Apr 2021 17:44:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSNqJ-00035H-GZ
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aZIdDmISRGT/BdzJh6BgmZgl1DWZqHdM55N3SUK50ac=; b=dU9qTO9tyEd13DFhLFj6mDMPCQ
 h+DBQHJPH8Ct5emIrpVXHDGZfD8kDMQOnD6NMBpTA6NchEEkGnlEmP0if9BR4CWCMsf+7KXS48xXn
 ntFKCzPDJ39pVZDVYK+3iggvtqMXBQV6BpnJ8kzSFzv12uvc+ZTouV1YnxQNbpPyMQi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aZIdDmISRGT/BdzJh6BgmZgl1DWZqHdM55N3SUK50ac=; b=dgtkHEqY6KfmK0kvAfTqYJteWD
 aAGtIsjCxa7wF+a+xFA4/krPsOlT0tGKXJaz9q4DotOX55t4ktw3lzX57KNjDNuuBihX3+NNyQBeC
 Q63CiS4IHZj35Qcy4THrH45GuoQagYbB6FLI2JZPb2OkbAiYm9BQiTtfJkrpVmntNWoc=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lSNpq-0005B4-P7
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:44:22 +0000
IronPort-SDR: /YhnEpEbjYmmfLRQGrwklhwtrat5YF5yMQIgsSJ4NGobwGyJ+DVdJkjYVuB1Ox360FotBheVX5
 rAEprtPxAwcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="277702221"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="277702221"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:26 -0700
IronPort-SDR: fWfYtUytKxXSQ1fmtjw3x5xDFEYSgL3sLwMrp3fzttCidp5mF/Vry3S7M2coXKF8+CFaoCikE2
 gM4xh/nlmM1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="596812986"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga005.jf.intel.com with ESMTP; 02 Apr 2021 10:43:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 86BD134E; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:26 +0300
Message-Id: <20210402174334.13466-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
References: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSNpq-0005B4-P7
Subject: [Openipmi-developer] [PATCH v2 02/10] ipmi_si: Remove bogus
 err_free label
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

There is no more 'free' in the error path, so drop the label and
return errors inline.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index 8f2fefc015b2..e5cd5006f0e5 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -316,7 +316,6 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 	acpi_status status;
 	unsigned long long tmp;
 	struct resource *res;
-	int rv = -EINVAL;
 
 	if (!si_tryacpi)
 		return -ENODEV;
@@ -336,7 +335,7 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 	if (ACPI_FAILURE(status)) {
 		dev_err(&pdev->dev,
 			"Could not find ACPI IPMI interface type\n");
-		goto err_free;
+		return -EINVAL;
 	}
 
 	switch (tmp) {
@@ -350,21 +349,18 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 		io.si_type = SI_BT;
 		break;
 	case 4: /* SSIF, just ignore */
-		rv = -ENODEV;
-		goto err_free;
+		return -ENODEV;
 	default:
 		dev_info(&pdev->dev, "unknown IPMI type %lld\n", tmp);
-		goto err_free;
+		return -EINVAL;
 	}
 
 	io.regsize = DEFAULT_REGSIZE;
 	io.regshift = 0;
 
 	res = ipmi_get_info_from_resources(pdev, &io);
-	if (!res) {
-		rv = -EINVAL;
-		goto err_free;
-	}
+	if (!res)
+		return -EINVAL;
 
 	/* If _GPE exists, use it; otherwise use standard interrupts */
 	status = acpi_evaluate_integer(handle, "_GPE", NULL, &tmp);
@@ -390,9 +386,6 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 	request_module("acpi_ipmi");
 
 	return ipmi_si_add_smi(&io);
-
-err_free:
-	return rv;
 }
 
 static const struct acpi_device_id acpi_ipmi_match[] = {
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
