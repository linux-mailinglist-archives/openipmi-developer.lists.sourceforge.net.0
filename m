Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 336CD512842
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFb-0005Tu-K9; Thu, 28 Apr 2022 00:43:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr3H-0005j9-08
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sBnzQEgOETevrWvoFDe4UXYaoyJvnokumNTnFd8nYd4=; b=HTP7u1+4TcDI/Qm79ryzlENZUk
 oR1Er1Vnu9LbZjp3rWxNecX6DzlAgwvfsP6neF5F4vcG4a8pdGo4PqnKSa5KvlZ7UvpTJYgtGkm6B
 CmFI7DO6XZ+E33NhF+Oo8R7lLyYYFwmsqu1N20MdQ5t4DrZgfRhd/D0iuKltCKvMJvPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sBnzQEgOETevrWvoFDe4UXYaoyJvnokumNTnFd8nYd4=; b=nIessTx1/ofsp+bMG3Y/mKxmSJ
 L2o/kjUJ1bJz5INwERGbyjpfteT1pKCuUIXnQR5RpPnNyqrRMsIpWcogArfs6oIJ09Z8Lu0Go4g2r
 WbQ4sD1QjR2d44nzeW1FCxAiEuVFKNFfO4OGXaqFCnEeFx8hwR1W1DDw8sAEL6BMRrIg=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr3F-00CA4A-EZ
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sBnzQEgOETevrWvoFDe4UXYaoyJvnokumNTnFd8nYd4=; b=C3WoMDzHemUiz3TJonrj4OLB2r
 FSxQF+F2lHHptNuVBTghKMJZClefE6Imxei6ehl090Dy2iIiwWYXrKfz8k6+wORL9DMg3LEbLg3HV
 Yy5IDocQKz78CwwV1x1BjunLLiApngptGwnQE+MM0c5kIHbxgr5QD1BtqzYPoELgJZUScA99Ow0T5
 DgoMAXPJxcpvr2MM73b5S2P6pfeIYXcyYWBlbiqaBO38Mb9qP/Auq8X4+iMlX3NAoRdIHY9DVHKc8
 OvjiTLZuxC2PHt1XEzIKelV5l8TbSCfHnuQVB2KdJOLt6lDAQzFhqrTn+CsXTsATCFcE2SPeUMfAC
 eC7wzCXg==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqVW-000250-IT; Thu, 28 Apr 2022 00:51:39 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:01 -0300
Message-Id: <20220427224924.592546-8-gpiccoli@igalia.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220427224924.592546-1-gpiccoli@igalia.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Many other place in the kernel prefer the latter, so let's
 keep it consistent in MIPS code as well. Also, removes a useless header.
 Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de> Signed-off-by: Guilherme
 G. Piccoli <gpiccoli@igalia.com> --- arch/mips/sgi-ip22/ip22-reset.c | 11
 +++++------ 1 file changed, 5 insertions(+), 6 de [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1njr3F-00CA4A-EZ
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:11 +0000
Subject: [Openipmi-developer] [PATCH 07/30] mips: ip22: Reword PANICED to
 PANICKED and remove useless header
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
 linux-edac@vger.kernel.org, jgross@suse.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, gpiccoli@igalia.com, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Many other place in the kernel prefer the latter, so let's keep
it consistent in MIPS code as well. Also, removes a useless header.

Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 arch/mips/sgi-ip22/ip22-reset.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/mips/sgi-ip22/ip22-reset.c b/arch/mips/sgi-ip22/ip22-reset.c
index 9028dbbb45dd..8f0861c58080 100644
--- a/arch/mips/sgi-ip22/ip22-reset.c
+++ b/arch/mips/sgi-ip22/ip22-reset.c
@@ -11,7 +11,6 @@
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/sched/signal.h>
-#include <linux/notifier.h>
 #include <linux/panic_notifier.h>
 #include <linux/pm.h>
 #include <linux/timer.h>
@@ -41,7 +40,7 @@
 static struct timer_list power_timer, blink_timer, debounce_timer;
 static unsigned long blink_timer_timeout;
 
-#define MACHINE_PANICED		1
+#define MACHINE_PANICKED		1
 #define MACHINE_SHUTTING_DOWN	2
 
 static int machine_state;
@@ -112,7 +111,7 @@ static void debounce(struct timer_list *unused)
 		return;
 	}
 
-	if (machine_state & MACHINE_PANICED)
+	if (machine_state & MACHINE_PANICKED)
 		sgimc->cpuctrl0 |= SGIMC_CCTRL0_SYSINIT;
 
 	enable_irq(SGI_PANEL_IRQ);
@@ -120,7 +119,7 @@ static void debounce(struct timer_list *unused)
 
 static inline void power_button(void)
 {
-	if (machine_state & MACHINE_PANICED)
+	if (machine_state & MACHINE_PANICKED)
 		return;
 
 	if ((machine_state & MACHINE_SHUTTING_DOWN) ||
@@ -167,9 +166,9 @@ static irqreturn_t panel_int(int irq, void *dev_id)
 static int panic_event(struct notifier_block *this, unsigned long event,
 		      void *ptr)
 {
-	if (machine_state & MACHINE_PANICED)
+	if (machine_state & MACHINE_PANICKED)
 		return NOTIFY_DONE;
-	machine_state |= MACHINE_PANICED;
+	machine_state |= MACHINE_PANICKED;
 
 	blink_timer_timeout = PANIC_FREQ;
 	blink_timeout(&blink_timer);
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
