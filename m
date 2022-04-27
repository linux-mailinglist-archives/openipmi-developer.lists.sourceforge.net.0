Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3FF512825
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFW-0005M5-P1; Thu, 28 Apr 2022 00:43:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njqzw-000240-7f
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hhYlsUbOeU+dOwRnxPZPUYbOytvtm3s9TOl//oHNJDA=; b=AxoGBIYHxsVhpCLFBOLqfmhNIX
 WQgGMWVatS29C5QR4mwDOPirEDi6yDCsxZT30wfK53q5UE821ztVCoOV1Zp1Gg/5zdBrs3GxJpCQd
 //gaEnUFEHy/0W1g8ukmjKjAYzjzWKxvuLCyq8MEhexeh4vpH6oS1LoOkKI3b9AIWk/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hhYlsUbOeU+dOwRnxPZPUYbOytvtm3s9TOl//oHNJDA=; b=IV8WUnMPEitsmrXF+8ApAfjor6
 MS85WM2zagMkjLYu+9akG/c55JTmxJ5bP/JGWVrgbhplvcae4VWwZFgUBDliNf43IgegsdUpzRr8F
 1nrO9MYSkeTNOscyZSybPqBw6wNtWIvKqiMI3hAigC4rs559blBv05qFtObL2hyzurEA=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njqzt-00C9vC-61
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hhYlsUbOeU+dOwRnxPZPUYbOytvtm3s9TOl//oHNJDA=; b=d0jf6vbMLbNOzh0eGG9B6/Px+6
 qkEUtrYepm4ucy/4pLos0iQRqgjXbtzxxFn26kSmjojOKmseLi3xGvVq3y13qqT30NTY0kTvl6DKc
 b6KKl04amU0+oieZ13497T1EMR69awT+qjyjGwR4D5aTKq4vZpRUj+GzWZO2UZDfeYATrEMziknBs
 TEMzSmzx206U+K28hnKwrx3+IjpI8ZztfEqS39tmb441zpVb+KuDwyZTgdwShziC74jYqn49bnQHG
 y/bSqJ0agKp8q0sRXPRW98dnPCHObluazUbKWH8Sqc1S7wQ8dewAG//hvPY5MrIv8zVHDor3/GUxI
 SaUMFP1g==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqcO-0002Xa-TN; Thu, 28 Apr 2022 00:58:45 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:24 -0300
Message-Id: <20220427224924.592546-31-gpiccoli@igalia.com>
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
 Content preview: Currently the panic notifier panic_exit() calls kmsg_dump()
 and some console flushing routines - this makes sense since such panic
 notifier
 exits UserMode Linux and never returns. Happens that after a panic refactor,
 kmsg_dump() is now always called *before* the pre_reboot list of panic
 notifiers, 
 in which panic_exit() belongs, leading to a double call situation. 
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
X-Headers-End: 1njqzt-00C9vC-61
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:09 +0000
Subject: [Openipmi-developer] [PATCH 30/30] um: Avoid duplicate call to
 kmsg_dump()
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
 linux-leds@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, Richard Weinberger <richard@nod.at>, bp@alien8.de,
 luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 senozhatsky@chromium.org, Johannes Berg <johannes@sipsolutions.net>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 gpiccoli@igalia.com, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Currently the panic notifier panic_exit() calls kmsg_dump() and
some console flushing routines - this makes sense since such
panic notifier exits UserMode Linux and never returns.

Happens that after a panic refactor, kmsg_dump() is now always
called *before* the pre_reboot list of panic notifiers, in which
panic_exit() belongs, leading to a double call situation.

This patch changes that by removing such call from the panic
notifier, but leaving the console flushing calls since the
pre_reboot list still runs before console flushing on panic().

Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Richard Weinberger <richard@nod.at>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 arch/um/kernel/um_arch.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/um/kernel/um_arch.c b/arch/um/kernel/um_arch.c
index fc6e443299da..651310e3e86f 100644
--- a/arch/um/kernel/um_arch.c
+++ b/arch/um/kernel/um_arch.c
@@ -241,7 +241,6 @@ static void __init uml_postsetup(void)
 static int panic_exit(struct notifier_block *self, unsigned long unused1,
 		      void *unused2)
 {
-	kmsg_dump(KMSG_DUMP_PANIC);
 	bust_spinlocks(1);
 	bust_spinlocks(0);
 	uml_exitcode = 1;
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
