Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C3E512828
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFX-0005MB-0y; Thu, 28 Apr 2022 00:43:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr04-0003sV-D6
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:23:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oI9b5duO8OJ5vQDZCcg8/YSfwN8M5sfdHxH8XUnmtlk=; b=IyoTEitG2BCRvZwSYxSuBGGl0Z
 wKN1XQvaqSvCyO8QeWqIP4hY/rDKx0q5CN81oQtqySGqPTMmuiZqdYIqrv8RHFPs3Ed82GFKWXa75
 +2x5qo9XfbrnNvx2lv01B2jH+VFKY5cXVU0ZtkaTRSSHW+36TjP/JkN6BcBtJyxvgkNA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oI9b5duO8OJ5vQDZCcg8/YSfwN8M5sfdHxH8XUnmtlk=; b=IzKESFRt4Fcw1n2r9s7EIZWWRI
 C6eiJXm/AMdAIEtSFvSfp7SM5x5JNm+dWiUfxJMioo7sf1ELqH0WuhlR/zJms2bX2wMZ5gKyidn8a
 HFPRJdFNhw0f//Kjqf7RmvSw10P83EYZFKRUmspdw1mjTVBmbQH6SjSxHpxs0ah8ZV28=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr02-00C9vi-Si
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:23:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oI9b5duO8OJ5vQDZCcg8/YSfwN8M5sfdHxH8XUnmtlk=; b=Dl2B7pSVJp25fe7IfIs24mmkq8
 hNWQZdfuE5b8NzwyHqbjR/6C1jbxbEv8wNNcNdcZK+x2mWiNzNr+u6ej0RkZPoYhNEHBCsZ6UD+6G
 UKVT1x0W1ctGqUC1Gq0pKfbBSIn3/AQDQpBwhuyH0wupCzlBVEy+S+oaSi7mTGACgenSYzi35Memm
 cwNrE6VLPhA8HIa6SL7ijwVZV/Cmf5guYFGY1etNEWb16ALz0OIjrK84zUZZaRulPOC47prAFsrmC
 8jtFSnfk5SwoqCho0RbgOB8YFry+V3AQ6FT8GxIeK9uuEGFeYv+qjRy2g8pgwIU4Wj4/dnNONMvQE
 5U+RG0NQ==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqYG-0002IR-Ki; Thu, 28 Apr 2022 00:54:29 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:12 -0300
Message-Id: <20220427224924.592546-19-gpiccoli@igalia.com>
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
 Content preview:  Currently we have a debug infrastructure in the notifiers
 file, but it's very simple/limited. This patch extends it by: (a) Showing
 all registered/unregistered notifiers' callback names; (b) Adding a dynamic
 debug tuning to allow showing called notifiers' function names. Notice that
 this should be guarded as a tunable since it can flood the kernel log buffer.
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
X-Headers-End: 1njr02-00C9vi-Si
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:09 +0000
Subject: [Openipmi-developer] [PATCH 18/30] notifier: Show function names on
 notifier routines if DEBUG_NOTIFIERS is set
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
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, Valentin Schneider <valentin.schneider@arm.com>,
 vgoyal@redhat.com, Xiaoming Ni <nixiaoming@huawei.com>,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, Cong Wang <xiyou.wangcong@gmail.com>,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 senozhatsky@chromium.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, jgross@suse.com,
 Arjan van de Ven <arjan@linux.intel.com>, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, gpiccoli@igalia.com, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Currently we have a debug infrastructure in the notifiers file, but
it's very simple/limited. This patch extends it by:

(a) Showing all registered/unregistered notifiers' callback names;

(b) Adding a dynamic debug tuning to allow showing called notifiers'
function names. Notice that this should be guarded as a tunable since
it can flood the kernel log buffer.

Cc: Arjan van de Ven <arjan@linux.intel.com>
Cc: Cong Wang <xiyou.wangcong@gmail.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Valentin Schneider <valentin.schneider@arm.com>
Cc: Xiaoming Ni <nixiaoming@huawei.com>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---

We have some design decisions that worth discussing here:

(a) First of call, using C99 helps a lot to write clear and concise code, but
due to commit 4d94f910e79a ("Kbuild: use -Wdeclaration-after-statement") we
have a warning if mixing variable declarations with code. For this patch though,
doing that makes the code way clear, so decision was to add the debug code
inside brackets whenever this warning pops up. We can change that, but that'll
cause more ifdefs in the same function.

(b) In the symbol lookup helper function, we modify the parameter passed but
even more, we return it as well! This is unusual and seems unnecessary, but was
the strategy taken to allow embedding such function in the pr_debug() call.

Not doing that would likely requiring 3 symbol_name variables to avoid
concurrency (registering notifier A while calling notifier B) - we rely in
local variables as a serialization mechanism.

We're open for suggestions in case this design is not appropriate;
thanks in advance!

 kernel/notifier.c | 48 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 46 insertions(+), 2 deletions(-)

diff --git a/kernel/notifier.c b/kernel/notifier.c
index ba005ebf4730..21032ebcde57 100644
--- a/kernel/notifier.c
+++ b/kernel/notifier.c
@@ -7,6 +7,22 @@
 #include <linux/vmalloc.h>
 #include <linux/reboot.h>
 
+#ifdef CONFIG_DEBUG_NOTIFIERS
+#include <linux/kallsyms.h>
+
+/*
+ *	Helper to get symbol names in case DEBUG_NOTIFIERS is set.
+ *	Return the modified parameter is a strategy used to achieve
+ *	the pr_debug() functionality - with this, function is only
+ *	executed if the dynamic debug tuning is effectively set.
+ */
+static inline char *notifier_name(struct notifier_block *nb, char *sym_name)
+{
+	lookup_symbol_name((unsigned long)(nb->notifier_call), sym_name);
+	return sym_name;
+}
+#endif
+
 /*
  *	Notifier list for kernel code which wants to be called
  *	at shutdown. This is used to stop any idling DMA operations
@@ -34,20 +50,41 @@ static int notifier_chain_register(struct notifier_block **nl,
 	}
 	n->next = *nl;
 	rcu_assign_pointer(*nl, n);
+
+#ifdef CONFIG_DEBUG_NOTIFIERS
+	{
+		char sym_name[KSYM_NAME_LEN];
+
+		pr_info("notifiers: registered %s()\n",
+			notifier_name(n, sym_name));
+	}
+#endif
 	return 0;
 }
 
 static int notifier_chain_unregister(struct notifier_block **nl,
 		struct notifier_block *n)
 {
+	int ret = -ENOENT;
+
 	while ((*nl) != NULL) {
 		if ((*nl) == n) {
 			rcu_assign_pointer(*nl, n->next);
-			return 0;
+			ret = 0;
+			break;
 		}
 		nl = &((*nl)->next);
 	}
-	return -ENOENT;
+
+#ifdef CONFIG_DEBUG_NOTIFIERS
+	if (!ret) {
+		char sym_name[KSYM_NAME_LEN];
+
+		pr_info("notifiers: unregistered %s()\n",
+			notifier_name(n, sym_name));
+	}
+#endif
+	return ret;
 }
 
 /**
@@ -80,6 +117,13 @@ static int notifier_call_chain(struct notifier_block **nl,
 			nb = next_nb;
 			continue;
 		}
+
+		{
+			char sym_name[KSYM_NAME_LEN];
+
+			pr_debug("notifiers: calling %s()\n",
+				 notifier_name(nb, sym_name));
+		}
 #endif
 		ret = nb->notifier_call(nb, val, v);
 
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
