Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ABF352ECB
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:55:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSO1P-0001Ma-EL; Fri, 02 Apr 2021 17:55:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSO1N-0001L0-6F
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lovxu/0f0vC3KNr4zAlSAqMJGYIEnIffhTC06SJgkXw=; b=aG7mnT9Z5UCjQwEHI1B0n99do/
 uOfCEGE52HYo0TQ8NyNGsdd9tYE/3lCIZolm0/hr/AtKaXl4XawWIQ3x2LBkNQC9jY+oP61fnaERV
 nKogAwraB3LbD9DEEaZc9WNKcGzg0VkFQggUkZl9QZ5JyoMSm3bgBwBf4ptRL6IS9xyg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lovxu/0f0vC3KNr4zAlSAqMJGYIEnIffhTC06SJgkXw=; b=DvOMAPHlZc2MQ7ew0qozEqlgHq
 iNpGuSYSF8+AnlyEDPUwxWxH8DUhmrauQ0DdlKf1x08f1pG2dxAqLwcJ7GR9jC8oO4oY2IIkjDVfU
 gCOFaDF/WaoDn4Dj75LgzM9hc98pFzOkiSSZ/BlSDgeMhH8OcGIZcBOsBZP+QX0fk/Eg=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lSNpU-007g2f-0v
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:43:49 +0000
IronPort-SDR: sLauyU4tIrX20LjtGm1YqISK/+l3guNNPKOz9FzKkfXX6CaSxJ2xTiNh15rx4k+2TRxuw/TMw/
 PMBxp1b46sOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="256488266"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="256488266"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:25 -0700
IronPort-SDR: 89XLoFq7u8idQk/vL2e+LxN8QOClgTxDC4cPVNCF9iT3HOKWCPtcN9s2PYXveV/ILOhzRRmgVw
 PO9PUNSRpYnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="517843208"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga001.fm.intel.com with ESMTP; 02 Apr 2021 10:43:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 908212E4; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:27 +0300
Message-Id: <20210402174334.13466-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
References: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1lSNpU-007g2f-0v
Subject: [Openipmi-developer] [PATCH v2 03/10] ipmi_si: Utilize temporary
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

Introduce a temporary variable to hold a device pointer.
It can be utilized in the ->probe() and save a bit of LOCs.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index e5cd5006f0e5..5f641d316ecb 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -311,6 +311,7 @@ static int find_slave_address(struct si_sm_io *io, int slave_addr)
 
 static int acpi_ipmi_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	struct si_sm_io io;
 	acpi_handle handle;
 	acpi_status status;
@@ -320,21 +321,20 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
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
 
@@ -351,10 +351,11 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
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
 
@@ -378,9 +379,7 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 
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
