Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64391352ECA
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:55:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSO1O-0001M9-Mf; Fri, 02 Apr 2021 17:55:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSO1L-0001L0-Pj
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FdddAAJlc/cYyIr/hFfd3WdYB7R8sar14QuL1Mx8eTg=; b=nHU15WnSRTU/26r0dGDvlptcRC
 8nMYkZ0eYSH+OQAd+iP2KAZY6EIaPYAI8JlZ35U3eefxvBh772eKfGzXgUu2+QmLvX/ykWT3HRXqk
 NxwBjJjBxH8Lb9FINERE0gkqz0dXrDj29leSWoE7oXUthCKgy7hLqjpaF2j6C+48HUaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FdddAAJlc/cYyIr/hFfd3WdYB7R8sar14QuL1Mx8eTg=; b=bRcyTt/4wxnQQKYEPvZrewcnmM
 vZq6f8js7D7Ll9KndDy/Lxc4ZwxKgOP2CFEoW0ztcfHpU+EYQalWXWWXk4XSkW2AY0aND2J0fDKR6
 b2FHzFgzIq2tQNeyNA2Vu4NTmQJly5lYijmU/2juCif+ThmvfTpx821+30ytVtou7ZZc=;
Received: from mga03.intel.com ([134.134.136.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lSNpU-007g2m-6x
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:43:54 +0000
IronPort-SDR: eptht/rptPuHZOtLLdS4Pd4BHy47SLGJuYZPJIVHLqudqhcFuG+Vsso4V8o54jQ62OElwyJ9Ge
 WfmitlNUhXAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="192546615"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="192546615"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:26 -0700
IronPort-SDR: UWHi01lu+PSwZDYx0hGm/c1PZfm0tH3Z3XBOgRRnq+qvQsRY5g6RZBh5pP52kN9XH7SSkhNSpB
 LBbMz0pP9gbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="378152796"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga003.jf.intel.com with ESMTP; 02 Apr 2021 10:43:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 7BF4049; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:25 +0300
Message-Id: <20210402174334.13466-2-andriy.shevchenko@linux.intel.com>
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
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSNpU-007g2m-6x
Subject: [Openipmi-developer] [PATCH v2 01/10] ipmi_si: Switch to use
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
 drivers/char/ipmi/ipmi_si_platform.c | 34 ++++++++++++----------------
 1 file changed, 14 insertions(+), 20 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index 129b5713f187..8f2fefc015b2 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -100,32 +100,31 @@ static int acpi_gpe_irq_setup(struct si_sm_io *io)
 }
 #endif
 
+static void ipmi_set_addr_data_and_space(struct resource *r, struct si_sm_io *io)
+{
+	if (resource_type(r) == IORESOURCE_IO)
+		io->addr_space = IPMI_IO_ADDR_SPACE;
+	else
+		io->addr_space = IPMI_MEM_ADDR_SPACE;
+	io->addr_data = r->start;
+}
+
 static struct resource *
 ipmi_get_info_from_resources(struct platform_device *pdev,
 			     struct si_sm_io *io)
 {
 	struct resource *res, *res_second;
 
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
+	res_second = platform_get_mem_or_io(pdev, 1);
+	if (res_second && resource_type(res_second) == resource_type(res)) {
 		if (res_second->start > io->addr_data)
 			io->regspacing = res_second->start - io->addr_data;
 	}
@@ -275,12 +274,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
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
