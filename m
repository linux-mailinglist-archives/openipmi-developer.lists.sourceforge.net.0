Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0266751282E
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFX-0005NH-Pt; Thu, 28 Apr 2022 00:43:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr10-0004Yh-0b
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:24:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9bJIN4/MOEhLx8CsVfKAquGTzb1mVDbHr+j6ymCNHAs=; b=JuUpy7dZFn/KqKD7ci3WTmkzda
 6lNO5u8fHDC3uPBN/Ekjrm/ss9hCCm3UIDnOLgXEXnjqmeC055sNpMbwuEf3+rU6lsQsu+BQpS7LY
 wK7r8n9JXOboBfybJwuQYqcexJLoKhwTsbaY8QVohNxBwMiP3Fj6WL4vBAxzcOVQ0UJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9bJIN4/MOEhLx8CsVfKAquGTzb1mVDbHr+j6ymCNHAs=; b=iP7DZaa/j/9rkSU4ie1xtQBqcA
 xt5atjRd6jwc36BmfKy19uocyKaGuN6xqOSxPs7rG35/AlP9n4nnq6RFd2WOco1iEOo0OBWguFNj0
 JOlwf4xrFh/rzBQLGqT0vqywF83z9JxYigb+h+AiJccKfd34XSklBclPoLyzyl4sXbzw=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr0y-00C9xl-DU
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:24:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9bJIN4/MOEhLx8CsVfKAquGTzb1mVDbHr+j6ymCNHAs=; b=S+EoVVMbG0R6l0pBfRnMsKZosp
 2PXBHwhmghS5Lvs4v4GQMUSqpGyoQ5U6Zbnyj6sMhUP4BCGILxO7PkeMyVqV/H8eeh+l7ihT1MYQn
 6lRWijWvq/MbBgY8W5xo5rf6VIJ8bQ3A6HUNn+RlRorsijlroe/vsascbDWK+dCTLeTv/edmbXzZt
 IkkQl7Ezob0EK5zEWLgIk+XPPHoVSiw2Ov7kaRBDa36NQrRgmO2O3HFxvBLZEYb5QzmHEcsWLMOdr
 YdjDzKF3as62X+/HBzxjW/bJqz3Ux15HOHGOCZtJDgeQcPUWNNi8PdpLZsxk0QJWHs39xjqIBwc58
 XGSV7jaw==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqU9-0001ye-3z; Thu, 28 Apr 2022 00:50:14 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:48:56 -0300
Message-Id: <20220427224924.592546-3-gpiccoli@igalia.com>
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
 Content preview: Currently the regular CPU shutdown path for ARM disables
 IRQs/FIQs
 in the secondary CPUs - smp_send_stop() calls ipi_cpu_stop(),
 which is responsible
 for that. This makes sense, since we're turning of [...] 
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
X-Headers-End: 1njr0y-00C9xl-DU
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:10 +0000
Subject: [Openipmi-developer] [PATCH 02/30] ARM: kexec: Disable IRQs/FIQs
 also on crash CPUs shutdown path
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
 fabiomirmar@gmail.com, x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
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

Currently the regular CPU shutdown path for ARM disables IRQs/FIQs
in the secondary CPUs - smp_send_stop() calls ipi_cpu_stop(), which
is responsible for that. This makes sense, since we're turning off
such CPUs, putting them in an endless busy-wait loop.

Problem is that there is an alternative path for disabling CPUs,
in the form of function crash_smp_send_stop(), used for kexec/panic
paths. This functions relies in a SMP call that also triggers a
busy-wait loop [at machine_crash_nonpanic_core()], but *without*
disabling interrupts. This might lead to odd scenarios, like early
interrupts in the boot of kexec'd kernel or even interrupts in
other CPUs while the main one still works in the panic path and
assumes all secondary CPUs are (really!) off.

This patch mimics the ipi_cpu_stop() interrupt disable mechanism
in the crash CPU shutdown path, hence disabling IRQs/FIQs in all
secondary CPUs in the kexec/panic path as well.

Cc: Marc Zyngier <maz@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---
 arch/arm/kernel/machine_kexec.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/kernel/machine_kexec.c b/arch/arm/kernel/machine_kexec.c
index f567032a09c0..ef788ee00519 100644
--- a/arch/arm/kernel/machine_kexec.c
+++ b/arch/arm/kernel/machine_kexec.c
@@ -86,6 +86,9 @@ void machine_crash_nonpanic_core(void *unused)
 	set_cpu_online(smp_processor_id(), false);
 	atomic_dec(&waiting_for_crash_ipi);
 
+	local_fiq_disable();
+	local_irq_disable();
+
 	while (1) {
 		cpu_relax();
 		wfe();
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
