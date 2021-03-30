Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A636534F0B6
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 20:17:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRIvY-0005R1-LC; Tue, 30 Mar 2021 18:17:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lRIvL-0005QO-C7
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QPfdqIa7vx9tBMu+MpqW04LI137kZorvEPHfuQSHHMI=; b=G6x1sHChpnAubWKb1wWJPdSaBg
 UmiV3g3K7Ba1wpH3Tn6j0X09p3eG+FOilIJopGWkcoEkN1piBc0twmoWcPqFT+t4v9rciac4+vm5P
 Lcns6Niviyf07VwHhMFfdKGs2T6LQ5Z0FGoWOa3ouSk5DEa9f7QVYQV7JTev+OgtWvZE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QPfdqIa7vx9tBMu+MpqW04LI137kZorvEPHfuQSHHMI=; b=C7Y1OB60M3ZT5nzAZVloLDZ55w
 9fogm/6TMQdhyfV6yVCPhUHvj+Oit2rc7SHknLjY45NKbAr7XVjRuqxDwwFGwQSLDgDZzd1E/vDmC
 V341WLePzoyvYUrOAS3lsKmYnfS27d2PzWDdh2A8e7OZmGy7chpFhORa4GU3hN1LR5JU=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lRIvD-0003hi-Fp
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:07 +0000
IronPort-SDR: qrgQcKDrPUG6GFHPLAPorrl0cUEUi5fTghiAf7fRom3J6V3WMuvv6tjh/MbTdu1TnsAM9In/zR
 xUVLIrRdSojQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="277003647"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="277003647"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:16:52 -0700
IronPort-SDR: BhNwHlGYtgaOuEpW5zUSCwe75lTAG7QKxPZogZorg/cZZ27ARlQ4U0EAOci3yMIhM9Yh5pdzOM
 wQLq5l/SAjGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="610195633"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga005.fm.intel.com with ESMTP; 30 Mar 2021 11:16:51 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 22E4ED7; Tue, 30 Mar 2021 21:17:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Mar 2021 21:16:41 +0300
Message-Id: <20210330181649.66496-2-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1lRIvD-0003hi-Fp
Subject: [Openipmi-developer] [PATCH v1 02/10] ipmi_si: Remove bogus
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
index d7bd093f80e9..009563073d30 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -314,7 +314,6 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 	acpi_status status;
 	unsigned long long tmp;
 	struct resource *res;
-	int rv = -EINVAL;
 
 	if (!si_tryacpi)
 		return -ENODEV;
@@ -334,7 +333,7 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 	if (ACPI_FAILURE(status)) {
 		dev_err(&pdev->dev,
 			"Could not find ACPI IPMI interface type\n");
-		goto err_free;
+		return -EINVAL;
 	}
 
 	switch (tmp) {
@@ -348,21 +347,18 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
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
@@ -388,9 +384,6 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
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
