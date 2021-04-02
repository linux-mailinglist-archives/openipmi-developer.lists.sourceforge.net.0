Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FCE352ECD
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:56:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSO25-0004lP-CK; Fri, 02 Apr 2021 17:56:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSO1H-0004ZZ-OG
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:55:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p0VCiT8XBlgz6vTg64e0SRDSMWGKKJnc7UmR6B2tlIA=; b=IskeaFDRZIFn3MxBxgN5EB7jQv
 v7r9hOOnYheEcyrWfYBOBctrYy4AMytklwN83Wkq82QYjyDylAu/OKSNeI3fngnwUoJySAWFb9xZS
 9/1s2N4iuNaznE0j0PEmPpgyZzatSciTT5xa2lFDb1stXTcgMtf316RhvDgVQY85NzoI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p0VCiT8XBlgz6vTg64e0SRDSMWGKKJnc7UmR6B2tlIA=; b=k2PboV5fNPom7QR7iQ25HaJS3P
 2J25W3JYmsRwEKIVVKDOZk2kHD3WpF7LgO6QzYuWWdtXgu4EDAWwKhWLJgtEksvSSuQhhHegTpvn6
 eVfhpT8eye+NXNJ0FH0LRqGI8bhEXiPiIIt/a7uXiIVTEi9f8aD32Ae4+Gsucj7o3BlA=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lSNq4-007g46-4b
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:44:30 +0000
IronPort-SDR: AT20XUrxTqNSK7KxKvzuqqh6xhe64y42CXel/XXh1kKnMy48Dk2mtxAgyL6bMvJE74vSq83uTy
 orvyBQihEcBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="179637196"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="179637196"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:28 -0700
IronPort-SDR: O6zZjvzu9DZGIBEQI3Nt15LowJpW7bu6A9YS8Turjnn9sszrbuxIvJeymWfQBmbD3WhnhFT0xx
 oINCoaDzJo/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="413277897"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 02 Apr 2021 10:43:26 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id D775B687; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:34 +0300
Message-Id: <20210402174334.13466-11-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
References: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSNq4-007g46-4b
Subject: [Openipmi-developer] [PATCH v2 10/10] ipmi_si: Join string literals
 back
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

For easy grepping on debug purposes join string literals back in
the messages.

No functional change.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_msghandler.c  |  3 +-
 drivers/char/ipmi/ipmi_si_hardcode.c | 50 +++++++++-------------------
 drivers/char/ipmi/ipmi_si_hotmod.c   |  5 ++-
 drivers/char/ipmi/ipmi_si_intf.c     | 25 +++++---------
 drivers/char/ipmi/ipmi_si_pci.c      |  4 +--
 drivers/char/ipmi/ipmi_si_platform.c | 17 +++++-----
 6 files changed, 38 insertions(+), 66 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 367616a408b6..8a0e97b33cae 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -5209,7 +5209,6 @@ module_exit(cleanup_ipmi);
 module_init(ipmi_init_msghandler_mod);
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Corey Minyard <minyard@mvista.com>");
-MODULE_DESCRIPTION("Incoming and outgoing message routing for an IPMI"
-		   " interface.");
+MODULE_DESCRIPTION("Incoming and outgoing message routing for an IPMI interface.");
 MODULE_VERSION(IPMI_DRIVER_VERSION);
 MODULE_SOFTDEP("post: ipmi_devintf");
diff --git a/drivers/char/ipmi/ipmi_si_hardcode.c b/drivers/char/ipmi/ipmi_si_hardcode.c
index bbcf7483d569..ed5e91b1e040 100644
--- a/drivers/char/ipmi/ipmi_si_hardcode.c
+++ b/drivers/char/ipmi/ipmi_si_hardcode.c
@@ -32,47 +32,29 @@ static int slave_addrs[SI_MAX_PARMS] __initdata;
 static unsigned int num_slave_addrs __initdata;
 
 module_param_string(type, si_type_str, MAX_SI_TYPE_STR, 0);
-MODULE_PARM_DESC(type, "Defines the type of each interface, each"
-		 " interface separated by commas.  The types are 'kcs',"
-		 " 'smic', and 'bt'.  For example si_type=kcs,bt will set"
-		 " the first interface to kcs and the second to bt");
+MODULE_PARM_DESC(type,
+		 "Defines the type of each interface, each interface separated by commas.  The types are 'kcs', 'smic', and 'bt'.  For example si_type=kcs,bt will set the first interface to kcs and the second to bt");
 module_param_hw_array(addrs, ulong, iomem, &num_addrs, 0);
-MODULE_PARM_DESC(addrs, "Sets the memory address of each interface, the"
-		 " addresses separated by commas.  Only use if an interface"
-		 " is in memory.  Otherwise, set it to zero or leave"
-		 " it blank.");
+MODULE_PARM_DESC(addrs,
+		 "Sets the memory address of each interface, the addresses separated by commas.  Only use if an interface is in memory.  Otherwise, set it to zero or leave it blank.");
 module_param_hw_array(ports, uint, ioport, &num_ports, 0);
-MODULE_PARM_DESC(ports, "Sets the port address of each interface, the"
-		 " addresses separated by commas.  Only use if an interface"
-		 " is a port.  Otherwise, set it to zero or leave"
-		 " it blank.");
+MODULE_PARM_DESC(ports,
+		 "Sets the port address of each interface, the addresses separated by commas.  Only use if an interface is a port.  Otherwise, set it to zero or leave it blank.");
 module_param_hw_array(irqs, int, irq, &num_irqs, 0);
-MODULE_PARM_DESC(irqs, "Sets the interrupt of each interface, the"
-		 " addresses separated by commas.  Only use if an interface"
-		 " has an interrupt.  Otherwise, set it to zero or leave"
-		 " it blank.");
+MODULE_PARM_DESC(irqs,
+		 "Sets the interrupt of each interface, the addresses separated by commas.  Only use if an interface has an interrupt.  Otherwise, set it to zero or leave it blank.");
 module_param_hw_array(regspacings, int, other, &num_regspacings, 0);
-MODULE_PARM_DESC(regspacings, "The number of bytes between the start address"
-		 " and each successive register used by the interface.  For"
-		 " instance, if the start address is 0xca2 and the spacing"
-		 " is 2, then the second address is at 0xca4.  Defaults"
-		 " to 1.");
+MODULE_PARM_DESC(regspacings,
+		 "The number of bytes between the start address and each successive register used by the interface.  For instance, if the start address is 0xca2 and the spacing is 2, then the second address is at 0xca4.  Defaults to 1.");
 module_param_hw_array(regsizes, int, other, &num_regsizes, 0);
-MODULE_PARM_DESC(regsizes, "The size of the specific IPMI register in bytes."
-		 " This should generally be 1, 2, 4, or 8 for an 8-bit,"
-		 " 16-bit, 32-bit, or 64-bit register.  Use this if you"
-		 " the 8-bit IPMI register has to be read from a larger"
-		 " register.");
+MODULE_PARM_DESC(regsizes,
+		 "The size of the specific IPMI register in bytes. This should generally be 1, 2, 4, or 8 for an 8-bit, 16-bit, 32-bit, or 64-bit register.  Use this if you the 8-bit IPMI register has to be read from a larger register.");
 module_param_hw_array(regshifts, int, other, &num_regshifts, 0);
-MODULE_PARM_DESC(regshifts, "The amount to shift the data read from the."
-		 " IPMI register, in bits.  For instance, if the data"
-		 " is read from a 32-bit word and the IPMI data is in"
-		 " bit 8-15, then the shift would be 8");
+MODULE_PARM_DESC(regshifts,
+		 "The amount to shift the data read from the. IPMI register, in bits.  For instance, if the data is read from a 32-bit word and the IPMI data is in bit 8-15, then the shift would be 8");
 module_param_hw_array(slave_addrs, int, other, &num_slave_addrs, 0);
-MODULE_PARM_DESC(slave_addrs, "Set the default IPMB slave address for"
-		 " the controller.  Normally this is 0x20, but can be"
-		 " overridden by this parm.  This is an array indexed"
-		 " by interface number.");
+MODULE_PARM_DESC(slave_addrs,
+		 "Set the default IPMB slave address for the controller.  Normally this is 0x20, but can be overridden by this parm.  This is an array indexed by interface number.");
 
 static void __init ipmi_hardcode_init_one(const char *si_type_str,
 					  unsigned int i,
diff --git a/drivers/char/ipmi/ipmi_si_hotmod.c b/drivers/char/ipmi/ipmi_si_hotmod.c
index a07ef37c0e3f..6b12a83ccd4c 100644
--- a/drivers/char/ipmi/ipmi_si_hotmod.c
+++ b/drivers/char/ipmi/ipmi_si_hotmod.c
@@ -17,9 +17,8 @@
 static int hotmod_handler(const char *val, const struct kernel_param *kp);
 
 module_param_call(hotmod, hotmod_handler, NULL, NULL, 0200);
-MODULE_PARM_DESC(hotmod, "Add and remove interfaces.  See"
-		 " Documentation/driver-api/ipmi.rst in the kernel sources for the"
-		 " gory details.");
+MODULE_PARM_DESC(hotmod,
+		 "Add and remove interfaces.  See Documentation/driver-api/ipmi.rst in the kernel sources for the gory details.");
 
 /*
  * Parms come in as <op1>[:op2[:op3...]].  ops are:
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 5bf0ab61261f..62929a3e397e 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1170,9 +1170,8 @@ static int smi_start_processing(void            *send_info,
 		new_smi->thread = kthread_run(ipmi_thread, new_smi,
 					      "kipmi%d", new_smi->si_num);
 		if (IS_ERR(new_smi->thread)) {
-			dev_notice(new_smi->io.dev, "Could not start"
-				   " kernel thread due to error %ld, only using"
-				   " timers to drive the interface\n",
+			dev_notice(new_smi->io.dev,
+				   "Could not start kernel thread due to error %ld, only using timers to drive the interface\n",
 				   PTR_ERR(new_smi->thread));
 			new_smi->thread = NULL;
 		}
@@ -1224,18 +1223,14 @@ static int smi_num; /* Used to sequence the SMIs */
 static const char * const addr_space_to_str[] = { "i/o", "mem" };
 
 module_param_array(force_kipmid, int, &num_force_kipmid, 0);
-MODULE_PARM_DESC(force_kipmid, "Force the kipmi daemon to be enabled (1) or"
-		 " disabled(0).  Normally the IPMI driver auto-detects"
-		 " this, but the value may be overridden by this parm.");
+MODULE_PARM_DESC(force_kipmid,
+		 "Force the kipmi daemon to be enabled (1) or disabled(0).  Normally the IPMI driver auto-detects this, but the value may be overridden by this parm.");
 module_param(unload_when_empty, bool, 0);
-MODULE_PARM_DESC(unload_when_empty, "Unload the module if no interfaces are"
-		 " specified or found, default is 1.  Setting to 0"
-		 " is useful for hot add of devices using hotmod.");
+MODULE_PARM_DESC(unload_when_empty,
+		 "Unload the module if no interfaces are specified or found, default is 1.  Setting to 0 is useful for hot add of devices using hotmod.");
 module_param_array(kipmid_max_busy_us, uint, &num_max_busy_us, 0644);
 MODULE_PARM_DESC(kipmid_max_busy_us,
-		 "Max time (in microseconds) to busy-wait for IPMI data before"
-		 " sleeping. 0 (default) means to wait forever. Set to 100-500"
-		 " if kipmid is using up a lot of CPU time.");
+		 "Max time (in microseconds) to busy-wait for IPMI data before sleeping. 0 (default) means to wait forever. Set to 100-500 if kipmid is using up a lot of CPU time.");
 
 void ipmi_irq_finish_setup(struct si_sm_io *io)
 {
@@ -1271,8 +1266,7 @@ int ipmi_std_irq_setup(struct si_sm_io *io)
 			 SI_DEVICE_NAME,
 			 io->irq_handler_data);
 	if (rv) {
-		dev_warn(io->dev, "%s unable to claim interrupt %d,"
-			 " running polled\n",
+		dev_warn(io->dev, "%s unable to claim interrupt %d, running polled\n",
 			 SI_DEVICE_NAME, io->irq);
 		io->irq = 0;
 	} else {
@@ -2301,5 +2295,4 @@ module_exit(cleanup_ipmi_si);
 MODULE_ALIAS("platform:dmi-ipmi-si");
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Corey Minyard <minyard@mvista.com>");
-MODULE_DESCRIPTION("Interface to the IPMI driver for the KCS, SMIC, and BT"
-		   " system interfaces.");
+MODULE_DESCRIPTION("Interface to the IPMI driver for the KCS, SMIC, and BT system interfaces.");
diff --git a/drivers/char/ipmi/ipmi_si_pci.c b/drivers/char/ipmi/ipmi_si_pci.c
index 0bc7efb6902c..74fa2055868b 100644
--- a/drivers/char/ipmi/ipmi_si_pci.c
+++ b/drivers/char/ipmi/ipmi_si_pci.c
@@ -16,8 +16,8 @@ static bool pci_registered;
 static bool si_trypci = true;
 
 module_param_named(trypci, si_trypci, bool, 0);
-MODULE_PARM_DESC(trypci, "Setting this to zero will disable the"
-		 " default scan of the interfaces identified via pci");
+MODULE_PARM_DESC(trypci,
+		 "Setting this to zero will disable the default scan of the interfaces identified via pci");
 
 #define PCI_DEVICE_ID_HP_MMC 0x121A
 
diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index b87bd9933724..380a6a542890 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -34,23 +34,22 @@ static bool          si_trydmi = false;
 #endif
 
 module_param_named(tryplatform, si_tryplatform, bool, 0);
-MODULE_PARM_DESC(tryplatform, "Setting this to zero will disable the"
-		 " default scan of the interfaces identified via platform"
-		 " interfaces besides ACPI, OpenFirmware, and DMI");
+MODULE_PARM_DESC(tryplatform,
+		 "Setting this to zero will disable the default scan of the interfaces identified via platform interfaces besides ACPI, OpenFirmware, and DMI");
 #ifdef CONFIG_ACPI
 module_param_named(tryacpi, si_tryacpi, bool, 0);
-MODULE_PARM_DESC(tryacpi, "Setting this to zero will disable the"
-		 " default scan of the interfaces identified via ACPI");
+MODULE_PARM_DESC(tryacpi,
+		 "Setting this to zero will disable the default scan of the interfaces identified via ACPI");
 #endif
 #ifdef CONFIG_OF
 module_param_named(tryopenfirmware, si_tryopenfirmware, bool, 0);
-MODULE_PARM_DESC(tryopenfirmware, "Setting this to zero will disable the"
-		 " default scan of the interfaces identified via OpenFirmware");
+MODULE_PARM_DESC(tryopenfirmware,
+		 "Setting this to zero will disable the default scan of the interfaces identified via OpenFirmware");
 #endif
 #ifdef CONFIG_DMI
 module_param_named(trydmi, si_trydmi, bool, 0);
-MODULE_PARM_DESC(trydmi, "Setting this to zero will disable the"
-		 " default scan of the interfaces identified via DMI");
+MODULE_PARM_DESC(trydmi,
+		 "Setting this to zero will disable the default scan of the interfaces identified via DMI");
 #endif
 
 #ifdef CONFIG_ACPI
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
