Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CD934F0B7
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 20:17:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRIvi-0001xL-09; Tue, 30 Mar 2021 18:17:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lRIvL-0001wN-Bc
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SXOwPETZKGCNPlcvDLO7CQj/r9SPH2aOB4+hKX4qDyI=; b=gwy0OXKPEeLJKYDZR0fgxsBRT8
 9chyJl+TrdvB4CxDt7n9+2VXmTdb69kA1twX8RH8kLICfGEEbfoMZxGx89a3z5EE+hvoXRx6vSToG
 vk1stuwAUscguh0dvxtCdVG7GN+VAQN2zr7YBpDyfZTlp4NtBMdEbLNQDgIhIK8Q5Hh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SXOwPETZKGCNPlcvDLO7CQj/r9SPH2aOB4+hKX4qDyI=; b=KSa2AK/aXFWSPrTcdKARK6V5oo
 Gj3Bi3k+0JmbJ3La3IT6n0eGksisM1O41G0rDQo5gioubNdTCtQSqP0QW190auzI55SbczBtlZYkp
 COw4JX0NdMu+u/nsdBxuo5Wa/q1eY+6ChgKthBFby6cA4ZNvC3FZEQryTN2pSxep8PK4=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRIvD-00DvaQ-Gy
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:07 +0000
IronPort-SDR: gsuj3t8cELGRZkaBi5kbiVokb4W8w11sz02GIkMCdSL03O8ZeQcVeUJiuRWbIMvDGRjaonkE8z
 s55HCi6TgS6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="255820244"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="255820244"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:16:52 -0700
IronPort-SDR: AtZFsGZV+z3V5Mjxt/3UBqH8C3TGIwXONIAyr3PiF1Joqi9HQgPiop4yYF2LvDEVelOVNn9yjz
 Z2OLtu+erZ/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="376935106"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2021 11:16:51 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 2D3B0199; Tue, 30 Mar 2021 21:17:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Mar 2021 21:16:42 +0300
Message-Id: <20210330181649.66496-3-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1lRIvD-00DvaQ-Gy
Subject: [Openipmi-developer] [PATCH v1 03/10] ipmi_si: Utilize temporary
 variable to hold device pointer
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

By one of the previous clean up change we got a temporary variable to hold
a device pointer. It can be utilized in other calls in the ->probe() and
save a bit of LOCs.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index 009563073d30..954c297b459b 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -309,6 +309,7 @@ static int find_slave_address(struct si_sm_io *io, int slave_addr)
 
 static int acpi_ipmi_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct si_sm_io io;
 	acpi_handle handle;
 	acpi_status status;
@@ -318,21 +319,20 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 	if (!si_tryacpi)
 		return -ENODEV;
 
-	handle = ACPI_HANDLE(&pdev->dev);
+	handle = ACPI_HANDLE(dev);
 	if (!handle)
 		return -ENODEV;
 
 	memset(&io, 0, sizeof(io));
 	io.addr_source = SI_ACPI;
-	dev_info(&pdev->dev, "probing via ACPI\n");
+	dev_info(dev, "probing via ACPI\n");
 
 	io.addr_info.acpi_info.acpi_handle = handle;
 
 	/* _IFT tells us the interface type: KCS, BT, etc */
 	status = acpi_evaluate_integer(handle, "_IFT", NULL, &tmp);
 	if (ACPI_FAILURE(status)) {
-		dev_err(&pdev->dev,
-			"Could not find ACPI IPMI interface type\n");
+		dev_err(dev, "Could not find ACPI IPMI interface type\n");
 		return -EINVAL;
 	}
 
@@ -349,10 +349,11 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 	case 4: /* SSIF, just ignore */
 		return -ENODEV;
 	default:
-		dev_info(&pdev->dev, "unknown IPMI type %lld\n", tmp);
+		dev_info(dev, "unknown IPMI type %lld\n", tmp);
 		return -EINVAL;
 	}
 
+	io.dev = dev;
 	io.regsize = DEFAULT_REGSIZE;
 	io.regshift = 0;
 
@@ -376,9 +377,7 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 
 	io.slave_addr = find_slave_address(&io, io.slave_addr);
 
-	io.dev = &pdev->dev;
-
-	dev_info(io.dev, "%pR regsize %d spacing %d irq %d\n",
+	dev_info(dev, "%pR regsize %d spacing %d irq %d\n",
 		 res, io.regsize, io.regspacing, io.irq);
 
 	request_module("acpi_ipmi");
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
