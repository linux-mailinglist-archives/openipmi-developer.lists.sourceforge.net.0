Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FCA512832
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFY-0005OR-HJ; Thu, 28 Apr 2022 00:43:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr1a-0004Zn-Lo
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:24:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r/T7YOY0VHwWAfHSEqxJa3Wt3qfvSExYRCUKLKE/qpM=; b=ZLkFGrKfFYteguan9piqexh+EP
 gAh1c3ZPYOVPr7GSOZRkmxDNu0LbP6DIO/oZS0PUbNgqn7+e5Iiw6J6QFOEnTE8Zp4kViFjOU9IN6
 xdKYe8ZOWzCWRwn/b9dLM3TrzItiLIiC4UGTUyZ+Jm6s+76bOi6wG+YCcAkYgWxQb2kM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r/T7YOY0VHwWAfHSEqxJa3Wt3qfvSExYRCUKLKE/qpM=; b=dAIssEhhGheyRqfrjSGG8sYbAO
 ItY5UoQZM0DEoe2S8wMDOMRdlBB6AGGxBkHp388gDalzy8HQ4NN4NLuTViV9/B50wBC7m87hVI47u
 6hDMsKqZ+UAr6bPmNb2x7qL9mvkjZzj+AYkIxrL5FuhYYsE8Lgy0Zlae9omJNY/J/b/I=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr1Z-00C9zH-0J
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:24:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r/T7YOY0VHwWAfHSEqxJa3Wt3qfvSExYRCUKLKE/qpM=; b=XhhicIlaxPAENQgGkNSZu/8JWa
 MoKMtLET2WEey/cUMjdoOeeZp/qIHF9AnIAQ1U9UG9ceTx5YsNvbqlEug3W8sTqjMADP3kqZkWGXE
 81ePHhsZB9/Fl6O5VwXVIzqdUd2GxbFqpTJI3oISOjep5UHhEIJ1gEAyfbzeKWGz11qqm1H8SqNmy
 PIXViapEJaVN3g1qVA0ll8xOHoXY2Fth5HpQAgahG3Orvdyx32C20SUgZY0+6ymNqW2eIcskQ9hv0
 PnRYqaVu+GNdXU/wxDKHHXg22u4+P2b/VN7O5/RK6RnCNvbziWOBIpkgY1JIKXd1EMfFHtVMCWu3y
 LPmztM1w==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqTt-0001xj-VW; Thu, 28 Apr 2022 00:49:58 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:48:55 -0300
Message-Id: <20220427224924.592546-2-gpiccoli@igalia.com>
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
 Content preview:  In the panic path we have a list of functions to be called, 
 the panic notifiers - such callbacks perform various actions in the machine's
 last breath, and sometimes users want them to run before kdump [...] 
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
X-Headers-End: 1njr1Z-00C9zH-0J
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:10 +0000
Subject: [Openipmi-developer] [PATCH 01/30] x86/crash,
 reboot: Avoid re-disabling VMX in all CPUs on crash/restart
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
 fabiomirmar@gmail.com, x86@kernel.org, "David P . Reed" <dpreed@deepplum.com>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, Sean Christopherson <seanjc@google.com>,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 senozhatsky@chromium.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, gpiccoli@igalia.com, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In the panic path we have a list of functions to be called, the panic
notifiers - such callbacks perform various actions in the machine's
last breath, and sometimes users want them to run before kdump. We
have the parameter "crash_kexec_post_notifiers" for that. When such
parameter is used, the function "crash_smp_send_stop()" is executed
to poweroff all secondary CPUs through the NMI-shootdown mechanism;
part of this process involves disabling virtualization features in
all CPUs (except the main one).

Now, in the emergency restart procedure we have also a way of
disabling VMX in all CPUs, using the same NMI-shootdown mechanism;
what happens though is that in case we already NMI-disabled all CPUs,
the emergency restart fails due to a second addition of the same items
in the NMI list, as per the following log output:

sysrq: Trigger a crash
Kernel panic - not syncing: sysrq triggered crash
[...]
Rebooting in 2 seconds..
list_add double add: new=<addr1>, prev=<addr2>, next=<addr1>.
------------[ cut here ]------------
kernel BUG at lib/list_debug.c:29!
invalid opcode: 0000 [#1] PREEMPT SMP PTI

In order to reproduce the problem, users just need to set the kernel
parameter "crash_kexec_post_notifiers" *without* kdump set in any
system with the VMX feature present.

Since there is no benefit in re-disabling VMX in all CPUs in case
it was already done, this patch prevents that by guarding the restart
routine against doubly issuing NMIs unnecessarily. Notice we still
need to disable VMX locally in the emergency restart.

Fixes: ed72736183c4 ("x86/reboot: Force all cpus to exit VMX root if VMX is supported)
Fixes: 0ee59413c967 ("x86/panic: replace smp_send_stop() with kdump friendly version in panic path")
Cc: David P. Reed <dpreed@deepplum.com>
Cc: Hidehiro Kawai <hidehiro.kawai.ez@hitachi.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>
Cc: Sean Christopherson <seanjc@google.com>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 arch/x86/include/asm/cpu.h |  1 +
 arch/x86/kernel/crash.c    |  8 ++++----
 arch/x86/kernel/reboot.c   | 14 ++++++++++++--
 3 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/arch/x86/include/asm/cpu.h b/arch/x86/include/asm/cpu.h
index 86e5e4e26fcb..b6a9062d387f 100644
--- a/arch/x86/include/asm/cpu.h
+++ b/arch/x86/include/asm/cpu.h
@@ -36,6 +36,7 @@ extern int _debug_hotplug_cpu(int cpu, int action);
 #endif
 #endif
 
+extern bool crash_cpus_stopped;
 int mwait_usable(const struct cpuinfo_x86 *);
 
 unsigned int x86_family(unsigned int sig);
diff --git a/arch/x86/kernel/crash.c b/arch/x86/kernel/crash.c
index e8326a8d1c5d..71dd1a990e8d 100644
--- a/arch/x86/kernel/crash.c
+++ b/arch/x86/kernel/crash.c
@@ -42,6 +42,8 @@
 #include <asm/crash.h>
 #include <asm/cmdline.h>
 
+bool crash_cpus_stopped;
+
 /* Used while preparing memory map entries for second kernel */
 struct crash_memmap_data {
 	struct boot_params *params;
@@ -108,9 +110,7 @@ void kdump_nmi_shootdown_cpus(void)
 /* Override the weak function in kernel/panic.c */
 void crash_smp_send_stop(void)
 {
-	static int cpus_stopped;
-
-	if (cpus_stopped)
+	if (crash_cpus_stopped)
 		return;
 
 	if (smp_ops.crash_stop_other_cpus)
@@ -118,7 +118,7 @@ void crash_smp_send_stop(void)
 	else
 		smp_send_stop();
 
-	cpus_stopped = 1;
+	crash_cpus_stopped = true;
 }
 
 #else
diff --git a/arch/x86/kernel/reboot.c b/arch/x86/kernel/reboot.c
index fa700b46588e..2fc42b8402ac 100644
--- a/arch/x86/kernel/reboot.c
+++ b/arch/x86/kernel/reboot.c
@@ -589,8 +589,18 @@ static void native_machine_emergency_restart(void)
 	int orig_reboot_type = reboot_type;
 	unsigned short mode;
 
-	if (reboot_emergency)
-		emergency_vmx_disable_all();
+	/*
+	 * We can reach this point in the end of panic path, having
+	 * NMI-disabled all secondary CPUs. This process involves
+	 * disabling the CPU virtualization technologies, so if that
+	 * is the case, we only miss disabling the local CPU VMX...
+	 */
+	if (reboot_emergency) {
+		if (!crash_cpus_stopped)
+			emergency_vmx_disable_all();
+		else
+			cpu_emergency_vmxoff();
+	}
 
 	tboot_shutdown(TB_SHUTDOWN_REBOOT);
 
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
