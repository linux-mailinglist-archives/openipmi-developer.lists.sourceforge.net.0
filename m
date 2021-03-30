Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5440434F0BD
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 20:18:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRIwG-0008Mn-Oj; Tue, 30 Mar 2021 18:18:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lRIvU-0008Cf-KG
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H2rTraiuneLq3U6XslAv5YvSTCJ1HM1QEPD6t5v2ePE=; b=L8z6yr8i/cUVE/ZVBOOuBUInzn
 Qx1k4/y5EwT2l9/nRXgnmzPIkYxX3ZlCyla1puRAjaYoN8Dk8HKaByBJgLprj2puOFC2mVGI+NlkN
 MF+4ORF4LC1aKyvyiQeL+rvmxwgY+RK5TS8FZWQVTv3eo2Inft5gNKEDN8HRv0zd/G5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H2rTraiuneLq3U6XslAv5YvSTCJ1HM1QEPD6t5v2ePE=; b=R
 sKCXRUYfYYOK2xUik74FLSyBa3XNjiYkUsPNsp9/zsm0Q5QckYCQhTNn7dX4Hro2Rq6Tu0zNkZv7w
 85+T+0QzpHHgU2O1HymRPN/d13acK4DYKt6scZmigfQXYr+N5P/JWH1XUQGGp4taGcs+6biWnBLGw
 b5EOdFxhL9OwqIa4=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRIvO-00Dvb7-LG
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:16 +0000
IronPort-SDR: Rp/vs2xlDoBNK6KxLG4J3q7Rgzha27ZkZhFdJbIhQaprQogwkB2wkcr6aTn8NKmaMIBqBrHYhy
 1fD0m+QobJSg==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="253169559"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="253169559"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:16:52 -0700
IronPort-SDR: K5/QiG7a7aWG7PiVPnlyEM+EKkNDWlzUzvvDZmHyL2eznNRr3TLTT0DM6J2tP3xOD9LZVfCX8t
 01zOiwUlYxeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="606862464"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga006.fm.intel.com with ESMTP; 30 Mar 2021 11:16:51 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 183D0133; Tue, 30 Mar 2021 21:17:05 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Mar 2021 21:16:40 +0300
Message-Id: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
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
X-Headers-End: 1lRIvO-00Dvb7-LG
Subject: [Openipmi-developer] [PATCH v1 01/10] ipmi_si: Switch to use
 platform_get_mem_or_io()
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

Switch to use new platform_get_mem_or_io() instead of home grown analogue.
Note, we also introduce ipmi_set_addr_data_and_space() helper here.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 40 +++++++++++-----------------
 1 file changed, 16 insertions(+), 24 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index 129b5713f187..d7bd093f80e9 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -100,35 +100,32 @@ static int acpi_gpe_irq_setup(struct si_sm_io *io)
 }
 #endif
 
+static void ipmi_set_addr_data_and_space(struct resource *r, struct si_sm_io *io)
+{
+	io->addr_data = r->start;
+	if (resource_type(r) == IORESOURCE_IO)
+		io->addr_space = IPMI_IO_ADDR_SPACE;
+	else
+		io->addr_space = IPMI_MEM_ADDR_SPACE;
+}
+
 static struct resource *
 ipmi_get_info_from_resources(struct platform_device *pdev,
 			     struct si_sm_io *io)
 {
-	struct resource *res, *res_second;
+	struct resource *res, *second;
 
-	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
-	if (res) {
-		io->addr_space = IPMI_IO_ADDR_SPACE;
-	} else {
-		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-		if (res)
-			io->addr_space = IPMI_MEM_ADDR_SPACE;
-	}
+	res = platform_get_mem_or_io(pdev, 0);
 	if (!res) {
 		dev_err(&pdev->dev, "no I/O or memory address\n");
 		return NULL;
 	}
-	io->addr_data = res->start;
+	ipmi_set_addr_data_and_space(res, io);
 
 	io->regspacing = DEFAULT_REGSPACING;
-	res_second = platform_get_resource(pdev,
-			       (io->addr_space == IPMI_IO_ADDR_SPACE) ?
-					IORESOURCE_IO : IORESOURCE_MEM,
-			       1);
-	if (res_second) {
-		if (res_second->start > io->addr_data)
-			io->regspacing = res_second->start - io->addr_data;
-	}
+	second = platform_get_mem_or_io(pdev, 1);
+	if (second && resource_type(second) == resource_type(res) && second->start > io->addr_data)
+		io->regspacing = second->start - io->addr_data;
 
 	return res;
 }
@@ -275,12 +272,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
 	io.addr_source	= SI_DEVICETREE;
 	io.irq_setup	= ipmi_std_irq_setup;
 
-	if (resource.flags & IORESOURCE_IO)
-		io.addr_space = IPMI_IO_ADDR_SPACE;
-	else
-		io.addr_space = IPMI_MEM_ADDR_SPACE;
-
-	io.addr_data	= resource.start;
+	ipmi_set_addr_data_and_space(&resource, &io);
 
 	io.regsize	= regsize ? be32_to_cpup(regsize) : DEFAULT_REGSIZE;
 	io.regspacing	= regspacing ? be32_to_cpup(regspacing) : DEFAULT_REGSPACING;
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
