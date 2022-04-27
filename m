Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0EE51283E
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFb-0005Sw-7E; Thu, 28 Apr 2022 00:43:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr30-0002jd-TP
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jupyQNOg8qT8hQfxmdiNJNMjaTUz/u9LiRmSHTNez6Y=; b=YrQA4IF3OUjLeGVq/gBpWCISYf
 Ai3LhPDzVIAHPJnKv2534ePv9UW60AhU46Y7PhDS0gQVAmpUuAhir2jefKCg3x3EutEzsbanXUZVS
 qG4FfPN5LM7fP0JBJTHOM/q5W5k2F4i9VB4vihjK9DKW+c4WqZJTZDIehFvLxuNWwnd8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jupyQNOg8qT8hQfxmdiNJNMjaTUz/u9LiRmSHTNez6Y=; b=UrURCHDItEplrnULLhwEx1jx3r
 4LLYNWfZ4HwlTmHltElNxVMLPs1viS5zduE9pm4ILxhxD94NhQxMce5xMqSooBtm6Pflh5DljyyFA
 ruRum5eM2lmbo/wyM8bFK55NSsblqBKlZNclWQFDSj2VLcLmXAT3KYctPw0zbvsmfL3E=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr31-00CA3f-6A
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jupyQNOg8qT8hQfxmdiNJNMjaTUz/u9LiRmSHTNez6Y=; b=p7drin3mWpI9T0ZfMOO6eJj4J8
 Szpgonvq7i/v524yc5jBLpbigKUiUN0wy7/WDOnlytx03+FGgGN1Adqusl4cOO6PJlw+seakKl4N4
 fX95EDE8pbxBc/NNWRr732wIqJtKKX/BphsJRWnwXH/62I6x/BTA0R4L8cWEa/lku3Ma0ky8B2K89
 MQrzxBf2Hm8tnWC5d0fBkJ7uMzqRE/yfr9AAId6oRoN4APimw2mDpSMEi6ZVrVuwLoacCVsSTBNQz
 KQprHSNi9G6RdCXwUMjprlLz6QcEgqvhkAE50juvJF1BOQucBso5epBizOEqf+g5ZQam3KuAFn9x9
 BasVHnnQ==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqbZ-0002Uv-Ai; Thu, 28 Apr 2022 00:57:53 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:22 -0300
Message-Id: <20220427224924.592546-29-gpiccoli@igalia.com>
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
 Content preview: There is no users anymore of this variable that requires it
 to be "exported" in the headers;
 also, it was deprecated by the kernel parameter
 "panic_notifiers_level". Signed-off-by: Guilherme G. Piccoli
 <gpiccoli@igalia.com>
 --- include/linux/panic.h | 2 -- include/linux/panic_notifier.h | 1 - 2 files
 changed, 3 deletions(-) 
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
X-Headers-End: 1njr31-00CA3f-6A
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:11 +0000
Subject: [Openipmi-developer] [PATCH 28/30] panic: Unexport
 crash_kexec_post_notifiers
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

There is no users anymore of this variable that requires
it to be "exported" in the headers; also, it was deprecated
by the kernel parameter "panic_notifiers_level".

Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 include/linux/panic.h          | 2 --
 include/linux/panic_notifier.h | 1 -
 2 files changed, 3 deletions(-)

diff --git a/include/linux/panic.h b/include/linux/panic.h
index 34175d0188d0..d301db07a8af 100644
--- a/include/linux/panic.h
+++ b/include/linux/panic.h
@@ -34,8 +34,6 @@ extern int sysctl_panic_on_rcu_stall;
 extern int sysctl_max_rcu_stall_to_panic;
 extern int sysctl_panic_on_stackoverflow;
 
-extern bool crash_kexec_post_notifiers;
-
 /*
  * panic_cpu is used for synchronizing panic() and crash_kexec() execution. It
  * holds a CPU number which is executing panic() currently. A value of
diff --git a/include/linux/panic_notifier.h b/include/linux/panic_notifier.h
index b5041132321d..8fda7045e2f7 100644
--- a/include/linux/panic_notifier.h
+++ b/include/linux/panic_notifier.h
@@ -11,7 +11,6 @@ extern struct atomic_notifier_head panic_pre_reboot_list;
 extern struct atomic_notifier_head panic_post_reboot_list;
 
 bool panic_notifiers_before_kdump(void);
-extern bool crash_kexec_post_notifiers;
 
 enum panic_notifier_val {
 	PANIC_UNUSED,
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
