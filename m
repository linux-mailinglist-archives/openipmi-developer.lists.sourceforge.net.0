Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E357512841
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFb-0005TS-Cu; Thu, 28 Apr 2022 00:43:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr3A-0002AM-Gj
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LH6oQ+KUrT2+UZ27jtgU/PGKhQQ202wn79cJAeqj5IE=; b=YPjUF5hQuGS7U8fnaacd5lTX0M
 U5gXqyGA8W3k3VqkNm3LtoD60Ee3fIHEPqViMJhND3ZpClAqRecBGasbWxSkKoWn3YSscIpc0jCMN
 mGSo21Zw8LF+VEcoYXmEHNC/KkRagg1u8Lw6frph6d6tr9hs3qe0BAWQShVf+4Sia4/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LH6oQ+KUrT2+UZ27jtgU/PGKhQQ202wn79cJAeqj5IE=; b=j2tJSuRO9GG7bN3z0H3ZSMYSiR
 svxa6Q+Yk1ugbfpZSqKOvtfj+ISXGrNYv6/h9MLRdxVwJp7K6pNsd/riyJZoqUVpifbB07vLqewfb
 /mwILEbMpP5cI61hvfEWnYXm+GhgGkY+mvbZmF1FeqXj4nvHhRhpIQngWdGhxp3ICvI8=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr38-000843-A2
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:26:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LH6oQ+KUrT2+UZ27jtgU/PGKhQQ202wn79cJAeqj5IE=; b=N1tY0S0aaQeR9NcKuaJbTqnNXy
 9pcqa1SEZnYDO5/TLstJB48aWkEQ4PDoBYIETAyDlKfJL300Z2BuvN4dT08YXOJQkKQRfd88YbBla
 BhKcNiLHKco0hFkhYWPs6DIH4v+5YaEldHsDLnnpsbsgJuChEIxNDXB5/EzphACOoX7xqZH0abztl
 vLKxKzrcWguRmMXDmvcU5nsznWqZJ1nSmpm/gOBpgQqBxhdFVL/WA1XIODSmEAnbcKKqL8Xui+5p0
 wYd62C0elRAkgaFmQPZ2Uk5W3nR2kjl80X0bqLIyvZBOzCHJbiVCOEqqyvgKj3yUn8TPr60YsbPp0
 Lml85pLA==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqXT-0002FK-Kn; Thu, 28 Apr 2022 00:53:40 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:09 -0300
Message-Id: <20220427224924.592546-16-gpiccoli@igalia.com>
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
 Content preview:  This patch improves the panic/die notifiers in this driver
 by making use of a passed "id" instead of comparing pointer address; also,
 it removes an useless prototype declaration and unnecessary header [...] 
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
X-Headers-End: 1njr38-000843-A2
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:11 +0000
Subject: [Openipmi-developer] [PATCH 15/30] bus: brcmstb_gisb: Clean-up
 panic/die notifiers
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
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, mikelley@microsoft.com,
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
 vkuznets@redhat.com, Brian Norris <computersforpeace@gmail.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This patch improves the panic/die notifiers in this driver by
making use of a passed "id" instead of comparing pointer
address; also, it removes an useless prototype declaration
and unnecessary header inclusion.

This is part of a panic notifiers refactor - this notifier in
the future will be moved to a new list, that encompass the
information notifiers only.

Fixes: 9eb60880d9a9 ("bus: brcmstb_gisb: add notifier handling")
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 drivers/bus/brcmstb_gisb.c | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/bus/brcmstb_gisb.c b/drivers/bus/brcmstb_gisb.c
index 183d5cc37d42..1ea7b015e225 100644
--- a/drivers/bus/brcmstb_gisb.c
+++ b/drivers/bus/brcmstb_gisb.c
@@ -19,7 +19,6 @@
 #include <linux/pm.h>
 #include <linux/kernel.h>
 #include <linux/kdebug.h>
-#include <linux/notifier.h>
 
 #ifdef CONFIG_MIPS
 #include <asm/traps.h>
@@ -347,25 +346,14 @@ static irqreturn_t brcmstb_gisb_bp_handler(int irq, void *dev_id)
 /*
  * Dump out gisb errors on die or panic.
  */
-static int dump_gisb_error(struct notifier_block *self, unsigned long v,
-			   void *p);
-
-static struct notifier_block gisb_die_notifier = {
-	.notifier_call = dump_gisb_error,
-};
-
-static struct notifier_block gisb_panic_notifier = {
-	.notifier_call = dump_gisb_error,
-};
-
 static int dump_gisb_error(struct notifier_block *self, unsigned long v,
 			   void *p)
 {
 	struct brcmstb_gisb_arb_device *gdev;
-	const char *reason = "panic";
+	const char *reason = "die";
 
-	if (self == &gisb_die_notifier)
-		reason = "die";
+	if (v == PANIC_NOTIFIER)
+		reason = "panic";
 
 	/* iterate over each GISB arb registered handlers */
 	list_for_each_entry(gdev, &brcmstb_gisb_arb_device_list, next)
@@ -374,6 +362,14 @@ static int dump_gisb_error(struct notifier_block *self, unsigned long v,
 	return NOTIFY_DONE;
 }
 
+static struct notifier_block gisb_die_notifier = {
+	.notifier_call = dump_gisb_error,
+};
+
+static struct notifier_block gisb_panic_notifier = {
+	.notifier_call = dump_gisb_error,
+};
+
 static DEVICE_ATTR(gisb_arb_timeout, S_IWUSR | S_IRUGO,
 		gisb_arb_get_timeout, gisb_arb_set_timeout);
 
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
