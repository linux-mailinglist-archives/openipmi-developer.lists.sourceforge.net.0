Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05945512838
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFZ-0005Pv-Gv; Thu, 28 Apr 2022 00:43:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr2D-0004bJ-TY
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:25:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jkYRHw7XLP9WroKS48pjCKf8DZNXzuNJkBrmx0UcVRc=; b=UWqdqwdka+fYMzNp2lR37cI2iw
 C835q27+kxy35YSznCxdXIVxWsan6KNritzfsEx2O1refeJjswF8UOPe295qyav5QJgY563lEdruc
 QLS/Do+wsBxQLNBlRn5JzuhAHe5oQiktV5Co7Y15WeQFXQUfB/pSKx7u8QZeRowLJA0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jkYRHw7XLP9WroKS48pjCKf8DZNXzuNJkBrmx0UcVRc=; b=hgLTCh7EWcFZfVdyuhzFlmv7l0
 OnTnjpsSfOVUR/TtmIX8ywjuzNsoKwS7/KjLFGGertepgz/a8utObTkvM5vabaYmrOncMc6KrnuYT
 z5xD3XhBNRVgopNgiYMcBqnlqilYB3cdRQLJ9tryf0v57B3NR4c1kbNE3twYeEBcyN0w=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr2B-00CA0q-LX
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:25:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jkYRHw7XLP9WroKS48pjCKf8DZNXzuNJkBrmx0UcVRc=; b=fbM2Fu2zuIxXnRnSKiwEiLyyJe
 XagaY4Y4i5sW6+W+epTqREIZ/ICl1Xi2oNzNqYSLfAiAeujQhcD2J6BRDpwqIfpK1aYn9B4Gepnqm
 UXEPwRAoI9LiYlvqP9hTq72CQIYynMwPnO/khrMA9H8ZW9ZKFbbeWjtIm9rBmVgqZX/xUmom+B8xi
 QY1BWJZFFIiYDwppo949ykglLrpZKKBYxdtwbkyN1uybFrzpdjMmPjKvulL2l2aogMZ8iE6aJcjTZ
 GbdvguHg7iZbdZllsoe1PY/R6t06HkFNrymWUR1pYeoyB7ORK7qb8BLpbexkNshwnkf274e7nAB6M
 ydSnW7kQ==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqaG-0002Qg-Er; Thu, 28 Apr 2022 00:56:33 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:19 -0300
Message-Id: <20220427224924.592546-26-gpiccoli@igalia.com>
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
 Content preview:  Currently the parameter "panic_print" relies in a function
 called directly on panic path;
 one of the flags the users can set for panic_print
 triggers a console replay mechanism, to show the entire ker [...] 
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
X-Headers-End: 1njr2B-00CA0q-LX
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:10 +0000
Subject: [Openipmi-developer] [PATCH 25/30] panic,
 printk: Add console flush parameter and convert panic_print to a
 notifier
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
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 senozhatsky@chromium.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, gpiccoli@igalia.com, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Currently the parameter "panic_print" relies in a function called
directly on panic path; one of the flags the users can set for
panic_print triggers a console replay mechanism, to show the
entire kernel log buffer (from the beginning) in a panic event.

Two problems with that: the dual nature of the panic_print
isn't really appropriate, the function was originally meant
to allow users dumping system information on panic events,
and was "overridden" to also force a console flush of the full
kernel log buffer. It also turns the code a bit more complex
and duplicate than it needs to be.

This patch proposes 2 changes: first, we decouple panic_print
from the console flushing mechanism, in the form of a new kernel
core parameter (panic_console_replay); we kept the functionality
on panic_print to avoid userspace breakage, although we comment
in both code and documentation that this panic_print usage is
deprecated.

We converted panic_print function to a panic notifier too, adding
it on the panic informational notifier list, executed as the final
callback. This allows a more clear code and makes sense, as
panic_print_sys_info() is really a panic-time only function.
We also moved its code to kernel/printk.c, it seems to make more
sense given it's related to printing stuff.

Suggested-by: Petr Mladek <pmladek@suse.com>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 .../admin-guide/kernel-parameters.txt         | 12 +++-
 Documentation/admin-guide/sysctl/kernel.rst   |  5 +-
 include/linux/console.h                       |  2 +
 include/linux/panic.h                         |  1 -
 include/linux/printk.h                        |  1 +
 kernel/panic.c                                | 51 +++------------
 kernel/printk/printk.c                        | 62 +++++++++++++++++++
 7 files changed, 87 insertions(+), 47 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 8d3524060ce3..c99da8b2b216 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3791,6 +3791,14 @@
 			timeout < 0: reboot immediately
 			Format: <timeout>
 
+	panic_console_replay
+			[KNL] Force a kernel log replay in the console on
+			panic event. Notice that there is already a flush
+			mechanism for pending messages; this option is meant
+			for users that wish to replay the *full* buffer.
+			It deprecates the bit 5 setting on "panic_print",
+			both having the same functionality.
+
 	panic_notifiers_level=
 			[KNL] Set the panic notifiers execution order.
 			Format: <unsigned int>
@@ -3825,12 +3833,14 @@
 			bit 2: print timer info
 			bit 3: print locks info if CONFIG_LOCKDEP is on
 			bit 4: print ftrace buffer
-			bit 5: print all printk messages in buffer
+			bit 5: print all printk messages in buffer (DEPRECATED)
 			bit 6: print all CPUs backtrace (if available in the arch)
 			*Be aware* that this option may print a _lot_ of lines,
 			so there are risks of losing older messages in the log.
 			Use this option carefully, maybe worth to setup a
 			bigger log buffer with "log_buf_len" along with this.
+			Also, notice that bit 5 was deprecated in favor of the
+			parameter "panic_console_replay".
 
 	panic_on_taint=	Bitmask for conditionally calling panic() in add_taint()
 			Format: <hex>[,nousertaint]
diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
index 1144ea3229a3..17b293a0e566 100644
--- a/Documentation/admin-guide/sysctl/kernel.rst
+++ b/Documentation/admin-guide/sysctl/kernel.rst
@@ -763,10 +763,13 @@ bit 1  print system memory info
 bit 2  print timer info
 bit 3  print locks info if ``CONFIG_LOCKDEP`` is on
 bit 4  print ftrace buffer
-bit 5  print all printk messages in buffer
+bit 5  print all printk messages in buffer (DEPRECATED)
 bit 6  print all CPUs backtrace (if available in the arch)
 =====  ============================================
 
+Notice that bit 5 was deprecated in favor of kernel core parameter
+"panic_console_replay" (see kernel-parameters.txt documentation).
+
 So for example to print tasks and memory info on panic, user can::
 
   echo 3 > /proc/sys/kernel/panic_print
diff --git a/include/linux/console.h b/include/linux/console.h
index 7cd758a4f44e..351c14f623ad 100644
--- a/include/linux/console.h
+++ b/include/linux/console.h
@@ -169,6 +169,8 @@ enum con_flush_mode {
 	CONSOLE_REPLAY_ALL,
 };
 
+extern bool panic_console_replay;
+
 extern int add_preferred_console(char *name, int idx, char *options);
 extern void register_console(struct console *);
 extern int unregister_console(struct console *);
diff --git a/include/linux/panic.h b/include/linux/panic.h
index f5844908a089..34175d0188d0 100644
--- a/include/linux/panic.h
+++ b/include/linux/panic.h
@@ -22,7 +22,6 @@ extern unsigned int sysctl_oops_all_cpu_backtrace;
 #endif /* CONFIG_SMP */
 
 extern int panic_timeout;
-extern unsigned long panic_print;
 extern int panic_on_oops;
 extern int panic_on_unrecovered_nmi;
 extern int panic_on_io_nmi;
diff --git a/include/linux/printk.h b/include/linux/printk.h
index 1522df223c0f..aee2e8ebd541 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -13,6 +13,7 @@
 extern const char linux_banner[];
 extern const char linux_proc_banner[];
 
+extern unsigned long panic_print;
 extern int oops_in_progress;	/* If set, an oops, panic(), BUG() or die() is in progress */
 
 #define PRINTK_MAX_SINGLE_HEADER_LEN 2
diff --git a/kernel/panic.c b/kernel/panic.c
index b7c055d4f87f..ff257bd8f81b 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -68,15 +68,6 @@ unsigned int panic_notifiers_level = 2;
 /* DEPRECATED in favor of panic_notifiers_level */
 bool crash_kexec_post_notifiers;
 
-#define PANIC_PRINT_TASK_INFO		0x00000001
-#define PANIC_PRINT_MEM_INFO		0x00000002
-#define PANIC_PRINT_TIMER_INFO		0x00000004
-#define PANIC_PRINT_LOCK_INFO		0x00000008
-#define PANIC_PRINT_FTRACE_INFO		0x00000010
-#define PANIC_PRINT_ALL_PRINTK_MSG	0x00000020
-#define PANIC_PRINT_ALL_CPU_BT		0x00000040
-unsigned long panic_print;
-
 ATOMIC_NOTIFIER_HEAD(panic_hypervisor_list);
 EXPORT_SYMBOL(panic_hypervisor_list);
 
@@ -168,33 +159,6 @@ void nmi_panic(struct pt_regs *regs, const char *msg)
 }
 EXPORT_SYMBOL(nmi_panic);
 
-static void panic_print_sys_info(bool console_flush)
-{
-	if (console_flush) {
-		if (panic_print & PANIC_PRINT_ALL_PRINTK_MSG)
-			console_flush_on_panic(CONSOLE_REPLAY_ALL);
-		return;
-	}
-
-	if (panic_print & PANIC_PRINT_ALL_CPU_BT)
-		trigger_all_cpu_backtrace();
-
-	if (panic_print & PANIC_PRINT_TASK_INFO)
-		show_state();
-
-	if (panic_print & PANIC_PRINT_MEM_INFO)
-		show_mem(0, NULL);
-
-	if (panic_print & PANIC_PRINT_TIMER_INFO)
-		sysrq_timer_list_show();
-
-	if (panic_print & PANIC_PRINT_LOCK_INFO)
-		debug_show_all_locks();
-
-	if (panic_print & PANIC_PRINT_FTRACE_INFO)
-		ftrace_dump(DUMP_ALL);
-}
-
 /*
  * Helper that accumulates all console flushing routines executed on panic.
  */
@@ -218,7 +182,11 @@ static void console_flushing(void)
 	debug_locks_off();
 	console_flush_on_panic(CONSOLE_FLUSH_PENDING);
 
-	panic_print_sys_info(true);
+	/* In case users wish to replay the full log buffer... */
+	if (panic_console_replay) {
+		pr_warn("Replaying the log buffer from the beginning\n");
+		console_flush_on_panic(CONSOLE_REPLAY_ALL);
+	}
 }
 
 #define PN_HYPERVISOR_BIT	0
@@ -431,10 +399,8 @@ void panic(const char *fmt, ...)
 	crash_smp_send_stop();
 	panic_notifier_hypervisor_once(buf);
 
-	if (panic_notifier_info_once(buf)) {
-		panic_print_sys_info(false);
+	if (panic_notifier_info_once(buf))
 		kmsg_dump(KMSG_DUMP_PANIC);
-	}
 
 	panic_notifier_pre_reboot_once(buf);
 
@@ -442,10 +408,8 @@ void panic(const char *fmt, ...)
 
 	panic_notifier_hypervisor_once(buf);
 
-	if (panic_notifier_info_once(buf)) {
-		panic_print_sys_info(false);
+	if (panic_notifier_info_once(buf))
 		kmsg_dump(KMSG_DUMP_PANIC);
-	}
 
 	panic_notifier_pre_reboot_once(buf);
 
@@ -814,7 +778,6 @@ EXPORT_SYMBOL(__stack_chk_fail);
 #endif
 
 core_param(panic, panic_timeout, int, 0644);
-core_param(panic_print, panic_print, ulong, 0644);
 core_param(pause_on_oops, pause_on_oops, int, 0644);
 core_param(panic_on_warn, panic_on_warn, int, 0644);
 core_param(panic_notifiers_level, panic_notifiers_level, uint, 0644);
diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index e3a1c429fbbc..ad91d4c04246 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -35,6 +35,7 @@
 #include <linux/memblock.h>
 #include <linux/syscalls.h>
 #include <linux/crash_core.h>
+#include <linux/panic_notifier.h>
 #include <linux/ratelimit.h>
 #include <linux/kmsg_dump.h>
 #include <linux/syslog.h>
@@ -3234,6 +3235,61 @@ void __init console_init(void)
 	}
 }
 
+#define PANIC_PRINT_TASK_INFO		0x00000001
+#define PANIC_PRINT_MEM_INFO		0x00000002
+#define PANIC_PRINT_TIMER_INFO		0x00000004
+#define PANIC_PRINT_LOCK_INFO		0x00000008
+#define PANIC_PRINT_FTRACE_INFO		0x00000010
+
+/* DEPRECATED - please use "panic_console_replay" */
+#define PANIC_PRINT_ALL_PRINTK_MSG	0x00000020
+
+#define PANIC_PRINT_ALL_CPU_BT		0x00000040
+
+unsigned long panic_print;
+bool panic_console_replay;
+
+static int panic_print_sys_info(struct notifier_block *self,
+				unsigned long ev, void *unused)
+{
+	if (panic_print & PANIC_PRINT_ALL_CPU_BT)
+		trigger_all_cpu_backtrace();
+
+	if (panic_print & PANIC_PRINT_TASK_INFO)
+		show_state();
+
+	if (panic_print & PANIC_PRINT_MEM_INFO)
+		show_mem(0, NULL);
+
+	if (panic_print & PANIC_PRINT_TIMER_INFO)
+		sysrq_timer_list_show();
+
+	if (panic_print & PANIC_PRINT_LOCK_INFO)
+		debug_show_all_locks();
+
+	if (panic_print & PANIC_PRINT_FTRACE_INFO)
+		ftrace_dump(DUMP_ALL);
+
+	/*
+	 * This is legacy/deprecated feature from panic_print,
+	 * the console force flushing. We have now the parameter
+	 * "panic_console_replay", but we need to keep the
+	 * retro-compatibility with the old stuff...
+	 */
+	if (panic_print & PANIC_PRINT_ALL_PRINTK_MSG)
+		panic_console_replay = true;
+
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block panic_print_nb = {
+	.notifier_call = panic_print_sys_info,
+	.priority = INT_MIN, /* defer to run as late as possible */
+};
+
+core_param(panic_print, panic_print, ulong, 0644);
+core_param(panic_console_replay, panic_console_replay, bool, 0644);
+
 /*
  * Some boot consoles access data that is in the init section and which will
  * be discarded after the initcalls have been run. To make sure that no code
@@ -3253,6 +3309,12 @@ static int __init printk_late_init(void)
 	struct console *con;
 	int ret;
 
+	/*
+	 * Register the panic notifier to print user information
+	 * in case the user have that set.
+	 */
+	atomic_notifier_chain_register(&panic_info_list, &panic_print_nb);
+
 	for_each_console(con) {
 		if (!(con->flags & CON_BOOT))
 			continue;
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
