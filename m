Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BD6352EC9
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:55:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSO1N-0001Lr-ME; Fri, 02 Apr 2021 17:55:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSO1K-0001L0-3U
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:55:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zpHOwPcF7gRgIBO323na8PccNVMutnZGll5TSNZW8qU=; b=D4/M9rBtw/ezPBtcT9AJE+ZNSY
 PEiUsg+phqlBVxZBc9KkXz54aMkAZNs1yYGnPz29HfMTYR31AYn3ao6xQ4j5zqnbmZfJoFS8yrcUJ
 Me1jUPoJHRASF/QqAbABnPzpGLjZ9FYIaz3lTNEkpXwY0loEzcLKWy3kO2l2USgc+8fE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zpHOwPcF7gRgIBO323na8PccNVMutnZGll5TSNZW8qU=; b=RtOacNNGDaULmuLNOhat9GYYv9
 XnpUGvG1QW28rCK77V6qoIwLoOHxa76ZdMHNOzDfZFmu0naK+W1P/DbgsAtYSgvYzJwDS6Csot4HQ
 avr2G1GyEK7amAt7jWTt+of2yoVM04x2IQwOjgEm+n2JCnwrfvCS2oAGV80rraHJ7UmM=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lSNpj-007g2g-I4
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:44:09 +0000
IronPort-SDR: tPnzK1xnPkVSFreFIg49dDXuGWnMPhow+NoAoJZ+XYV4JUaCtJGqLKpKnRPysn1ZJ7U7KxMZzD
 1sIbrvFT9uvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="179637193"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="179637193"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:28 -0700
IronPort-SDR: QWu2A/LVar8jJM1v8L/EGBZTF2lNGrJ3G0jcapr9cEaZIQp/BgPSGAKPUnlzqfYpJOhw1Im3Rh
 Aw44mO3zt4jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="413277895"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 02 Apr 2021 10:43:26 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id BE95C60B; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:31 +0300
Message-Id: <20210402174334.13466-8-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
References: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSNpj-007g2g-I4
Subject: [Openipmi-developer] [PATCH v2 07/10] ipmi_si: Get rid of
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
index 9492c53eba86..0a4c69539f24 100644
--- a/drivers/char/ipmi/ipmi_si.h
+++ b/drivers/char/ipmi/ipmi_si.h
@@ -52,8 +52,6 @@ struct si_sm_io {
 	enum ipmi_addr_space addr_space;
 	unsigned long addr_data;
 	enum ipmi_addr_src addr_source; /* ACPI, PCI, SMBIOS, hardcode, etc. */
-	void (*addr_source_cleanup)(struct si_sm_io *io);
-	void *addr_source_data;
 	union ipmi_smi_info_union addr_info;
 
 	int (*io_setup)(struct si_sm_io *info);
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index d6ecf88636c4..5bf0ab61261f 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -2206,10 +2206,6 @@ static void shutdown_smi(void *send_info)
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
