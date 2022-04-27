Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 143B1512826
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFW-0005Lz-JE; Thu, 28 Apr 2022 00:43:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njqzj-0002dZ-MB
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:22:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mOzFWStqo1l1SFAwioSEW9cov+DtDc5WSMbZaYL5OFk=; b=lxN6znsAu2XS7K/ASqHVPBlgFW
 36hLW0DkudKpbjDMqpaSukZgP9POaf40EWBTsednU44UgWH6BH8N0tkQ2aoNMVH8k1cUiilVRohaO
 Ozyc3iRogvG3qfuBtWdVIKK/XP04paA/Y4R4FkB22KYck9r2QOlS1gAo5cpSUQznctm4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mOzFWStqo1l1SFAwioSEW9cov+DtDc5WSMbZaYL5OFk=; b=QDIG/Vi6xRdbmikZrAQOqk/ywc
 WjOckRA50rFca/CnvArdAyO+VTXYTDchrD6aWrA2DLXUG3KnqzpUfGoHd1KxUrlq8kkqScCYp6wb0
 zlLJXLrmoUPvFETrNHFaLt5sWX7znfyW42/2Boyi/awjfpvdEAAWqjf5SJiBVh/bBEvM=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njqzj-0007tH-Vd
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:22:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mOzFWStqo1l1SFAwioSEW9cov+DtDc5WSMbZaYL5OFk=; b=jORyziNh7Mp7CJnb2ldBvIVUYT
 miqK/KwxTCDE0PrnGOVoO5V4xtjW+TEXZOKHxzyxZAzEuCslLE//gxMpeQbei+ydr8zg3pnWZUWxE
 L40pn68w+NUbAHLuqvLt2UI0hgcbpQZODu83KlzMI8qRKWoyX30oYob/b9pQLrf+6HFREi99ePbwb
 zW4TblodvYrIgJCYkkWUlwk3Cl/V3uSBOUWLD/GIZmkaB62kyu6wuslAaH0LxO2Qqyrw8rvwJQSXp
 vohmbyikfHUVSRBgOx4Bv9HUeJbAvmB/X4rw1kDURxjWp8eCgUztnLBZm1GN+7lilt+TPvGD7Gymp
 FQwd7uqA==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqXD-0002EK-E5; Thu, 28 Apr 2022 00:53:24 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:08 -0300
Message-Id: <20220427224924.592546-15-gpiccoli@igalia.com>
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
 Content preview: The notifiers infrastructure provides a way to pass an "id"
 to the callbacks to determine what kind of event happened, i.e., what is
 the reason behind they getting called. The panic notifier currently pass 0,
 but this is soon to be used in a multi-targeted notifier, so let's pass a
 meaningful "id" over there. 
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
X-Headers-End: 1njqzj-0007tH-Vd
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:09 +0000
Subject: [Openipmi-developer] [PATCH 14/30] panic: Properly identify the
 panic event to the notifiers' callbacks
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

The notifiers infrastructure provides a way to pass an "id" to the
callbacks to determine what kind of event happened, i.e., what is
the reason behind they getting called.

The panic notifier currently pass 0, but this is soon to be
used in a multi-targeted notifier, so let's pass a meaningful
"id" over there.

Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 include/linux/panic_notifier.h | 5 +++++
 kernel/panic.c                 | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/linux/panic_notifier.h b/include/linux/panic_notifier.h
index 41e32483d7a7..07dced83a783 100644
--- a/include/linux/panic_notifier.h
+++ b/include/linux/panic_notifier.h
@@ -9,4 +9,9 @@ extern struct atomic_notifier_head panic_notifier_list;
 
 extern bool crash_kexec_post_notifiers;
 
+enum panic_notifier_val {
+	PANIC_UNUSED,
+	PANIC_NOTIFIER = 0xDEAD,
+};
+
 #endif	/* _LINUX_PANIC_NOTIFIERS_H */
diff --git a/kernel/panic.c b/kernel/panic.c
index eb4dfb932c85..523bc9ccd0e9 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -287,7 +287,7 @@ void panic(const char *fmt, ...)
 	 * Run any panic handlers, including those that might need to
 	 * add information to the kmsg dump output.
 	 */
-	atomic_notifier_call_chain(&panic_notifier_list, 0, buf);
+	atomic_notifier_call_chain(&panic_notifier_list, PANIC_NOTIFIER, buf);
 
 	panic_print_sys_info(false);
 
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
