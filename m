Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2E551283A
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFZ-0005QD-M8; Thu, 28 Apr 2022 00:43:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr2M-0002iT-LY
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VYrOPrqDKiFUsTfjme0J+bb1QZ+0oMPMNlfIlQcQCIU=; b=Ac9Jk6jjnzxYgIl5uR/0e9BtSk
 8qf3h5uun3dOpvFNeEazJ5eznJpF0mA/1nK9jgFevbyaiPkSUpzC5Mrc+t1UCEFJPgC1HFhgN6kwk
 TmprRpy8tGaW8tUoAs6XcOjlTDWs7uvaTE3vzAlhQNntDCpGPy5HjoVuEdbhcntRIAYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VYrOPrqDKiFUsTfjme0J+bb1QZ+0oMPMNlfIlQcQCIU=; b=DxK7W5X1qZKnkeaOgT6QkBC8IF
 kZIGV2OeILqRVxlzEqsK4UXfB9gthhhYZYxNXb/HyQ+1u5bAMaDJEH/AGgtvr8zlSa1+L26m+PGD2
 nF9P9RJOlXMrqaqjd7QY4ChWKgqqdRzZAZ5Eq2DhELGmmiEtlpNxD6SHG/dAXQvZVM14=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr2M-00080r-9p
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VYrOPrqDKiFUsTfjme0J+bb1QZ+0oMPMNlfIlQcQCIU=; b=esIQjYNUmn8XOAMCY8KOPnZ+c+
 YZlzZFZJpud7l5aihfe1Itrd6ZZ98nnyy8UW1vOI1POK9zaRsPqoo2RhL4mEx84eRCHYefMesX5mG
 VJrQ0svjjO9G7VgOzDpcDLV/ntiz5AJExQTPCtbTdt7JFiAMS9guj375T3WC2+gnc5gFYq3Gv7f9R
 ZGEBpB02C9AAgh+86UxcqyV3yEw/FrOPinej5D7IeCAr0QV77wv10T31rCvUIuA1DrjRAh9qz2P38
 INNgxs5Kiy35sxcHJ/zXmQv2S2dVW6xiWlXVQ/tXuVpNtfQbdJCWgDKWsqK11QKSPuRppT31lgGJ9
 pH1ZqjsQ==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqZZ-0002Nv-Ix; Thu, 28 Apr 2022 00:55:50 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:16 -0300
Message-Id: <20220427224924.592546-23-gpiccoli@igalia.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220427224924.592546-1-gpiccoli@igalia.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Currently we have 3 notifier lists in the panic path, which
 will be wired in a way to allow the notifier callbacks to run in different
 moments at panic time, in a subsequent patch. But there is also an odd set
 of architecture calls hardcoded in the end of panic path, after the restart
 machinery. They're responsible for late time tunings / events, like enabling
 a stop button (Spa [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1njr2M-00080r-9p
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:10 +0000
Subject: [Openipmi-developer] [PATCH 22/30] panic: Introduce the panic
 post-reboot notifier list
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, Alexander Gordeev <agordeev@linux.ibm.com>,
 will@kernel.org, tglx@linutronix.de, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, dyoung@redhat.com,
 Heiko Carstens <hca@linux.ibm.com>, vgoyal@redhat.com,
 Sven Schnelle <svens@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, senozhatsky@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 gpiccoli@igalia.com, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Currently we have 3 notifier lists in the panic path, which will
be wired in a way to allow the notifier callbacks to run in
different moments at panic time, in a subsequent patch.

But there is also an odd set of architecture calls hardcoded in
the end of panic path, after the restart machinery. They're
responsible for late time tunings / events, like enabling a stop
button (Sparc) or effectively stopping the machine (s390).

This patch introduces yet another notifier list to offer the
architectures a way to add callbacks in such late moment on
panic path without the need of ifdefs / hardcoded approaches.

Cc: Alexander Gordeev <agordeev@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@linux.ibm.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Heiko Carstens <hca@linux.ibm.com>
Cc: Sven Schnelle <svens@linux.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 arch/s390/kernel/setup.c       | 19 ++++++++++++++++++-
 arch/sparc/kernel/setup_32.c   | 27 +++++++++++++++++++++++----
 arch/sparc/kernel/setup_64.c   | 29 ++++++++++++++++++++++++-----
 include/linux/panic_notifier.h |  1 +
 kernel/panic.c                 | 19 +++++++------------
 5 files changed, 73 insertions(+), 22 deletions(-)

diff --git a/arch/s390/kernel/setup.c b/arch/s390/kernel/setup.c
index d860ac300919..d816b2045f1e 100644
--- a/arch/s390/kernel/setup.c
+++ b/arch/s390/kernel/setup.c
@@ -39,7 +39,6 @@
 #include <linux/kernel_stat.h>
 #include <linux/dma-map-ops.h>
 #include <linux/device.h>
-#include <linux/notifier.h>
 #include <linux/pfn.h>
 #include <linux/ctype.h>
 #include <linux/reboot.h>
@@ -51,6 +50,7 @@
 #include <linux/start_kernel.h>
 #include <linux/hugetlb.h>
 #include <linux/kmemleak.h>
+#include <linux/panic_notifier.h>
 
 #include <asm/boot_data.h>
 #include <asm/ipl.h>
@@ -943,6 +943,20 @@ static void __init log_component_list(void)
 	}
 }
 
+/*
+ * The following notifier executes as one of the latest things in the panic
+ * path, only if the restart routines weren't executed (or didn't succeed).
+ */
+static int panic_event(struct notifier_block *n, unsigned long ev, void *unused)
+{
+	disabled_wait();
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block post_reboot_panic_block = {
+	.notifier_call = panic_event,
+};
+
 /*
  * Setup function called from init/main.c just after the banner
  * was printed.
@@ -1058,4 +1072,7 @@ void __init setup_arch(char **cmdline_p)
 
 	/* Add system specific data to the random pool */
 	setup_randomness();
+
+	atomic_notifier_chain_register(&panic_post_reboot_list,
+				       &post_reboot_panic_block);
 }
diff --git a/arch/sparc/kernel/setup_32.c b/arch/sparc/kernel/setup_32.c
index c8e0dd99f370..4e2428972f76 100644
--- a/arch/sparc/kernel/setup_32.c
+++ b/arch/sparc/kernel/setup_32.c
@@ -34,6 +34,7 @@
 #include <linux/kdebug.h>
 #include <linux/export.h>
 #include <linux/start_kernel.h>
+#include <linux/panic_notifier.h>
 #include <uapi/linux/mount.h>
 
 #include <asm/io.h>
@@ -51,6 +52,7 @@
 
 #include "kernel.h"
 
+int stop_a_enabled = 1;
 struct screen_info screen_info = {
 	0, 0,			/* orig-x, orig-y */
 	0,			/* unused */
@@ -293,6 +295,24 @@ void __init sparc32_start_kernel(struct linux_romvec *rp)
 	start_kernel();
 }
 
+/*
+ * The following notifier executes as one of the latest things in the panic
+ * path, only if the restart routines weren't executed (or didn't succeed).
+ */
+static int panic_event(struct notifier_block *n, unsigned long ev, void *unused)
+{
+	/* Make sure the user can actually press Stop-A (L1-A) */
+	stop_a_enabled = 1;
+	pr_emerg("Press Stop-A (L1-A) from sun keyboard or send break\n"
+		"twice on console to return to the boot prom\n");
+
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block post_reboot_panic_block = {
+	.notifier_call = panic_event,
+};
+
 void __init setup_arch(char **cmdline_p)
 {
 	int i;
@@ -368,9 +388,10 @@ void __init setup_arch(char **cmdline_p)
 	paging_init();
 
 	smp_setup_cpu_possible_map();
-}
 
-extern int stop_a_enabled;
+	atomic_notifier_chain_register(&panic_post_reboot_list,
+				       &post_reboot_panic_block);
+}
 
 void sun_do_break(void)
 {
@@ -384,8 +405,6 @@ void sun_do_break(void)
 }
 EXPORT_SYMBOL(sun_do_break);
 
-int stop_a_enabled = 1;
-
 static int __init topology_init(void)
 {
 	int i, ncpus, err;
diff --git a/arch/sparc/kernel/setup_64.c b/arch/sparc/kernel/setup_64.c
index 48abee4eee29..9066c25ecc07 100644
--- a/arch/sparc/kernel/setup_64.c
+++ b/arch/sparc/kernel/setup_64.c
@@ -33,6 +33,7 @@
 #include <linux/module.h>
 #include <linux/start_kernel.h>
 #include <linux/memblock.h>
+#include <linux/panic_notifier.h>
 #include <uapi/linux/mount.h>
 
 #include <asm/io.h>
@@ -62,6 +63,8 @@
 #include "entry.h"
 #include "kernel.h"
 
+int stop_a_enabled = 1;
+
 /* Used to synchronize accesses to NatSemi SUPER I/O chip configure
  * operations in asm/ns87303.h
  */
@@ -632,6 +635,24 @@ void __init alloc_irqstack_bootmem(void)
 	}
 }
 
+/*
+ * The following notifier executes as one of the latest things in the panic
+ * path, only if the restart routines weren't executed (or didn't succeed).
+ */
+static int panic_event(struct notifier_block *n, unsigned long ev, void *unused)
+{
+	/* Make sure the user can actually press Stop-A (L1-A) */
+	stop_a_enabled = 1;
+	pr_emerg("Press Stop-A (L1-A) from sun keyboard or send break\n"
+		"twice on console to return to the boot prom\n");
+
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block post_reboot_panic_block = {
+	.notifier_call = panic_event,
+};
+
 void __init setup_arch(char **cmdline_p)
 {
 	/* Initialize PROM console and command line. */
@@ -691,9 +712,10 @@ void __init setup_arch(char **cmdline_p)
 	 * allocate the IRQ stacks.
 	 */
 	alloc_irqstack_bootmem();
-}
 
-extern int stop_a_enabled;
+	atomic_notifier_chain_register(&panic_post_reboot_list,
+				       &post_reboot_panic_block);
+}
 
 void sun_do_break(void)
 {
@@ -706,6 +728,3 @@ void sun_do_break(void)
 	prom_cmdline();
 }
 EXPORT_SYMBOL(sun_do_break);
-
-int stop_a_enabled = 1;
-EXPORT_SYMBOL(stop_a_enabled);
diff --git a/include/linux/panic_notifier.h b/include/linux/panic_notifier.h
index 7912aacbc0e5..bcf6a5ea9d7f 100644
--- a/include/linux/panic_notifier.h
+++ b/include/linux/panic_notifier.h
@@ -8,6 +8,7 @@
 extern struct atomic_notifier_head panic_hypervisor_list;
 extern struct atomic_notifier_head panic_info_list;
 extern struct atomic_notifier_head panic_pre_reboot_list;
+extern struct atomic_notifier_head panic_post_reboot_list;
 
 extern bool crash_kexec_post_notifiers;
 
diff --git a/kernel/panic.c b/kernel/panic.c
index a9d43b98b05b..bf792102b43e 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -78,6 +78,9 @@ EXPORT_SYMBOL(panic_info_list);
 ATOMIC_NOTIFIER_HEAD(panic_pre_reboot_list);
 EXPORT_SYMBOL(panic_pre_reboot_list);
 
+ATOMIC_NOTIFIER_HEAD(panic_post_reboot_list);
+EXPORT_SYMBOL(panic_post_reboot_list);
+
 static long no_blink(int state)
 {
 	return 0;
@@ -359,18 +362,10 @@ void panic(const char *fmt, ...)
 			reboot_mode = panic_reboot_mode;
 		emergency_restart();
 	}
-#ifdef __sparc__
-	{
-		extern int stop_a_enabled;
-		/* Make sure the user can actually press Stop-A (L1-A) */
-		stop_a_enabled = 1;
-		pr_emerg("Press Stop-A (L1-A) from sun keyboard or send break\n"
-			 "twice on console to return to the boot prom\n");
-	}
-#endif
-#if defined(CONFIG_S390)
-	disabled_wait();
-#endif
+
+	atomic_notifier_call_chain(&panic_post_reboot_list,
+				   PANIC_NOTIFIER, buf);
+
 	pr_emerg("---[ end Kernel panic - not syncing: %s ]---\n", buf);
 
 	/* Do not scroll important messages printed above */
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
