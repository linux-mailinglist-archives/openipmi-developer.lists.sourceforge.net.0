Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D558751283F
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFb-0005V8-Vx; Thu, 28 Apr 2022 00:43:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr3r-0005kN-VP
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=durrkKWmzUfzH9qHOG14tQL4R8NCjUjLsTL3Zd00Gek=; b=A5YnZgCnAxHFB9bMlXkDq2aNDz
 qDLLVC6GXF3eJZtT7+BRVr8ynwOk4Ru6llWCDgDUqbwTM8Shke8gvqeUlMbJN1UBF0hBK8+gsFA8P
 Hh2qeJuqM0yK0ULWFiZkwylD7AftVoSEPlVeYwDrjNb2Hzcp85HX+q3flCho+BPUHy5k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=durrkKWmzUfzH9qHOG14tQL4R8NCjUjLsTL3Zd00Gek=; b=YosuOeAp02zYBy5a42UBqPCMAD
 adG2K5zu6QTaSlp8wnwI89mwz1olpZ8IHePcKRhhtRcORgqJ5IkKdObhesqSQz7pB69gpdwy+IjqA
 cimriVLX1+RLgYk6HBRBrXbO/h+CSDSr3rBmurQ99bO3un67gysTIZHXj11gWpqDuTwg=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr3q-00CA5D-BG
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=durrkKWmzUfzH9qHOG14tQL4R8NCjUjLsTL3Zd00Gek=; b=My7iXYZdsvmohLkJmMGImfYof2
 p5qkpSJIhXISH+Sbyoj7EeJcOzhmrD5DtjdC6ethktkBlGYO4OfumrpixOUOKLn0Yc0W3TzG54aQY
 qwtzEOPADTIziH/itInY9Ffg69Sdqh65llZVZNXQlNolBLE2NFdio5E/kUq6oVXX/i2DBK4KweBxr
 JYm/gjauE4ZVcDNk28sbO0j6B73HXBblZWGmkswBaL+iIGNqLKObr06z5uxWmvVGTIOTQmQ/deHWL
 LutJobNbiLmganjaFUa+PvHzE64AyIeADEi0jWz8oHx43nzynoDLyNtzoi4XrtuDHAtIno5r39V8q
 Qw3pgkkw==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqZo-0002Om-0k; Thu, 28 Apr 2022 00:56:04 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:17 -0300
Message-Id: <20220427224924.592546-24-gpiccoli@igalia.com>
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
 Content preview: Currently we don't have a way to check if there are dumpers
 set, except counting the list members maybe. This patch introduces a very
 simple helper to provide this information, by just keeping track o [...] 
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
X-Headers-End: 1njr3q-00CA5D-BG
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:11 +0000
Subject: [Openipmi-developer] [PATCH 23/30] printk: kmsg_dump: Introduce
 helper to inform number of dumpers
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

Currently we don't have a way to check if there are dumpers set,
except counting the list members maybe. This patch introduces a very
simple helper to provide this information, by just keeping track of
registered/unregistered kmsg dumpers. It's going to be used on the
panic path in the subsequent patch.

Notice that the spinlock guarding kmsg_dumpers list also guards
increment/decrement of the dumper's counter, but there's no need
for that when reading the counter in the panic path, since that is
an atomic path and there's no other (planned) user.

Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 include/linux/kmsg_dump.h |  7 +++++++
 kernel/printk/printk.c    | 14 ++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/include/linux/kmsg_dump.h b/include/linux/kmsg_dump.h
index 906521c2329c..abea1974bff8 100644
--- a/include/linux/kmsg_dump.h
+++ b/include/linux/kmsg_dump.h
@@ -65,6 +65,8 @@ bool kmsg_dump_get_buffer(struct kmsg_dump_iter *iter, bool syslog,
 
 void kmsg_dump_rewind(struct kmsg_dump_iter *iter);
 
+bool kmsg_has_dumpers(void);
+
 int kmsg_dump_register(struct kmsg_dumper *dumper);
 
 int kmsg_dump_unregister(struct kmsg_dumper *dumper);
@@ -91,6 +93,11 @@ static inline void kmsg_dump_rewind(struct kmsg_dump_iter *iter)
 {
 }
 
+static inline bool kmsg_has_dumpers(void)
+{
+	return false;
+}
+
 static inline int kmsg_dump_register(struct kmsg_dumper *dumper)
 {
 	return -EINVAL;
diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index da03c15ecc89..e3a1c429fbbc 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -3399,6 +3399,18 @@ EXPORT_SYMBOL(printk_timed_ratelimit);
 
 static DEFINE_SPINLOCK(dump_list_lock);
 static LIST_HEAD(dump_list);
+static int num_dumpers;
+
+/**
+ * kmsg_has_dumpers - inform if there is any kmsg dumper registered.
+ *
+ * Returns true if there's at least one registered dumper, or false
+ * if otherwise.
+ */
+bool kmsg_has_dumpers(void)
+{
+	return num_dumpers ? true : false;
+}
 
 /**
  * kmsg_dump_register - register a kernel log dumper.
@@ -3423,6 +3435,7 @@ int kmsg_dump_register(struct kmsg_dumper *dumper)
 		dumper->registered = 1;
 		list_add_tail_rcu(&dumper->list, &dump_list);
 		err = 0;
+		num_dumpers++;
 	}
 	spin_unlock_irqrestore(&dump_list_lock, flags);
 
@@ -3447,6 +3460,7 @@ int kmsg_dump_unregister(struct kmsg_dumper *dumper)
 		dumper->registered = 0;
 		list_del_rcu(&dumper->list);
 		err = 0;
+		num_dumpers--;
 	}
 	spin_unlock_irqrestore(&dump_list_lock, flags);
 	synchronize_rcu();
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
