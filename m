Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9150134F0B9
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 20:17:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRIvk-0005SJ-Nm; Tue, 30 Mar 2021 18:17:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lRIvU-0005Qi-KN
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3WTkTXxUZG4X0TXLmFJZqvygeQlwgLXR9KnU5F8Vwx0=; b=axUvcqMB4nJ5OqqQ7Gbil6MADf
 Eueh2L8BMdUqRtf9SKkohWmcdYo0ABgOL47xbufOO5Y8vaRCphO38M7SsE16ki2UrNpr0R2lKxAUO
 krgiTeNCHesvn4K29CJjeEmAPwoppzlY6PVslb+SGtOcQTkBhpg6r8VZbnn1E8RugcIs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3WTkTXxUZG4X0TXLmFJZqvygeQlwgLXR9KnU5F8Vwx0=; b=KWKdHv/bhppB8PfGdWaxF7rp4n
 K+AL635vadBwxjBq46uTEgaMx9vDGwnU7AuLsJ7d7IJ+aDVE8iHjCJbz3iCZL5hsY5fxWuvhMaQpz
 D2erie9REsm7ClKOLQtY5XknMbPxAJ0/HooCa581qNzFgjKwzqFluzwMDvVMwH+cth1Q=;
Received: from mga18.intel.com ([134.134.136.126])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRIvG-00DvaT-81
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:16 +0000
IronPort-SDR: gWj8JhchJFv+725ttW/gzXVgj1pxd4YSvsVdlqYX3NK47CugOg2xMfxmtiAC9nbs+VGLDJQJbj
 fEHk3YoqVdDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="179369077"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="179369077"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:16:55 -0700
IronPort-SDR: /U98T0bXoXWTgWd4r78jQ4YNa2EJTBOZ4w3Uy+NzccgQpqvj275R6zUg+nUvT835RgZL10MaRF
 kN+pdnlR+UnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="455135167"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga001.jf.intel.com with ESMTP; 30 Mar 2021 11:16:53 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 5A59734E; Tue, 30 Mar 2021 21:17:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Mar 2021 21:16:46 +0300
Message-Id: <20210330181649.66496-7-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1lRIvG-00DvaT-81
Subject: [Openipmi-developer] [PATCH v1 07/10] ipmi_si: Get rid of
 ->addr_source_cleanup()
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

The ->addr_source_cleanup() callback is solely used by PCI driver
and only for one purpose, i.e. to disable device. Get rid of
->addr_source_cleanup() by switching to PCI managed API.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si.h      |  2 --
 drivers/char/ipmi/ipmi_si_intf.c |  4 ----
 drivers/char/ipmi/ipmi_si_pci.c  | 18 ++----------------
 3 files changed, 2 insertions(+), 22 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
index fd3167d1e1e9..53463f7762e0 100644
--- a/drivers/char/ipmi/ipmi_si.h
+++ b/drivers/char/ipmi/ipmi_si.h
@@ -51,8 +51,6 @@ struct si_sm_io {
 	enum ipmi_addr_space addr_space;
 	unsigned long addr_data;
 	enum ipmi_addr_src addr_source; /* ACPI, PCI, SMBIOS, hardcode, etc. */
-	void (*addr_source_cleanup)(struct si_sm_io *io);
-	void *addr_source_data;
 	union ipmi_smi_info_union addr_info;
 
 	int (*io_setup)(struct si_sm_io *info);
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index ff448098f185..1f568cc88b39 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -2203,10 +2203,6 @@ static void shutdown_smi(void *send_info)
 	if (smi_info->handlers)
 		smi_info->handlers->cleanup(smi_info->si_sm);
 
-	if (smi_info->io.addr_source_cleanup) {
-		smi_info->io.addr_source_cleanup(&smi_info->io);
-		smi_info->io.addr_source_cleanup = NULL;
-	}
 	if (smi_info->io.io_cleanup) {
 		smi_info->io.io_cleanup(&smi_info->io);
 		smi_info->io.io_cleanup = NULL;
diff --git a/drivers/char/ipmi/ipmi_si_pci.c b/drivers/char/ipmi/ipmi_si_pci.c
index 95bbcfba5408..0bc7efb6902c 100644
--- a/drivers/char/ipmi/ipmi_si_pci.c
+++ b/drivers/char/ipmi/ipmi_si_pci.c
@@ -21,13 +21,6 @@ MODULE_PARM_DESC(trypci, "Setting this to zero will disable the"
 
 #define PCI_DEVICE_ID_HP_MMC 0x121A
 
-static void ipmi_pci_cleanup(struct si_sm_io *io)
-{
-	struct pci_dev *pdev = io->addr_source_data;
-
-	pci_disable_device(pdev);
-}
-
 static int ipmi_pci_probe_regspacing(struct si_sm_io *io)
 {
 	if (io->si_type == SI_KCS) {
@@ -97,15 +90,12 @@ static int ipmi_pci_probe(struct pci_dev *pdev,
 		return -ENOMEM;
 	}
 
-	rv = pci_enable_device(pdev);
+	rv = pcim_enable_device(pdev);
 	if (rv) {
 		dev_err(&pdev->dev, "couldn't enable PCI device\n");
 		return rv;
 	}
 
-	io.addr_source_cleanup = ipmi_pci_cleanup;
-	io.addr_source_data = pdev;
-
 	if (pci_resource_flags(pdev, 0) & IORESOURCE_IO) {
 		io.addr_space = IPMI_IO_ADDR_SPACE;
 		io.io_setup = ipmi_si_port_setup;
@@ -128,11 +118,7 @@ static int ipmi_pci_probe(struct pci_dev *pdev,
 	dev_info(&pdev->dev, "%pR regsize %d spacing %d irq %d\n",
 		 &pdev->resource[0], io.regsize, io.regspacing, io.irq);
 
-	rv = ipmi_si_add_smi(&io);
-	if (rv)
-		pci_disable_device(pdev);
-
-	return rv;
+	return ipmi_si_add_smi(&io);
 }
 
 static void ipmi_pci_remove(struct pci_dev *pdev)
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
