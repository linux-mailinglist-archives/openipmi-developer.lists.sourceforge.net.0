Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E16B951283B
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFa-0005RP-IT; Thu, 28 Apr 2022 00:43:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr2d-0005LP-I0
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C9iT/xJ8gF8J/f7SmqQO2c8pu+KvBPlFfkqGdYboS2I=; b=XaT3PniP8da5Nyq59AVibiwqJr
 5y+QnBU802UpvExtNgl+88TFMCSojzKfont9w8N3bvEwIFfpDR6VFtv5yvPshTTK5oyZna7thMC8e
 ZaFP+cTiAwVIKnrWDCJYb3kavnsoz/QmY8R9O3ea8qOEQAGM/r+u2M9TDWZ33G6VfKTU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C9iT/xJ8gF8J/f7SmqQO2c8pu+KvBPlFfkqGdYboS2I=; b=cLHf8e3zYZgOuqVTSrvaQ3rfZC
 5+vZiTuRSjmECfuZ+0cwzWB88T1vcSY2pZAZXZNxdg4HjJhyYqn9zSvTZPrboC/tkzT9cRGnTkrj3
 LaiWSYAte5p4eDxjtgaolVHnmChZMYkOEOsLMMMzp1xApJKInF57qM2++W41xFC5GY3I=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr2b-00082Y-WB
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C9iT/xJ8gF8J/f7SmqQO2c8pu+KvBPlFfkqGdYboS2I=; b=PMFgjQG40D4y0EE10+nqxAPHVI
 yNLZ1EZJdP0IH30iYafdBfM788VaINOAVfe8Gnevld0DclzQJRd8t+br/vJapdawGOEWHQTLdmHei
 1IQvYGZ//MLpN+QQDVtOXWSfDQyyspNE1J3gOgOC4NUam3dGx8JeBgJ9jpYRHFoaP71Y3fG1ERN+7
 JvwIb059Xf3lNBTrEP8JiyuPOh5ugwSvNao5NfaR+bMPV8BospKPkEU02jshVAtp1UBbOdjrRb2r2
 ze90RIwfaZigyOQntmQCmXs163wt4gsMUWHmf1nSoidLeEjFKj9WA7H531Eyz4iqvzof4LvLiIP9u
 dq8Lxg9g==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqbL-0002UI-QD; Thu, 28 Apr 2022 00:57:40 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:49:21 -0300
Message-Id: <20220427224924.592546-28-gpiccoli@igalia.com>
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
 Content preview: Commit 06e629c25daa ("powerpc/fadump: Fix inaccurate CPU
 state
 info in vmcore generated with panic") introduced a hardcoded setting of kernel
 parameter "crash_kexec_post_notifiers", effectively forcin [...] 
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
X-Headers-End: 1njr2b-00082Y-WB
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:10 +0000
Subject: [Openipmi-developer] [PATCH 27/30] powerpc: Do not force all panic
 notifiers to execute before kdump
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, Hari Bathini <hbathini@linux.ibm.com>,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, Nicholas Piggin <npiggin@gmail.com>,
 luto@kernel.org, linux-tegra@vger.kernel.org,
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

Commit 06e629c25daa ("powerpc/fadump: Fix inaccurate CPU state info in
vmcore generated with panic") introduced a hardcoded setting of kernel
parameter "crash_kexec_post_notifiers", effectively forcing all the
panic notifiers to execute earlier in the panic path, before kdump.

The reason for that was a fadump issue on collecting data accurately,
due to smp_send_stop() setting all CPUs offline, so the net effect
desired with this change was to avoid calling the regular CPU
shutdown function, and instead rely on crash_smp_send_stop(), which
copes fine with fadump. The collateral effect was to increase the
risk for kdump if fadump is not used, since it forces all panic
notifiers to execute early, before kdump.

Happens that, after a panic refactor, crash_smp_send_stop() is
now used by default in the panic path, so there is no reason to
mess with the notifiers ordering (which was also improved in the
refactor) from within arch code.

Fixes: 06e629c25daa ("powerpc/fadump: Fix inaccurate CPU state info in vmcore generated with panic")
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Hari Bathini <hbathini@linux.ibm.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nicholas Piggin <npiggin@gmail.com>
Cc: Paul Mackerras <paulus@samba.org>
Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
---

We'd like to thanks specially the MiniCloud infrastructure [0] maintainers,
that allow us to test PowerPC code in a very complete, functional and FREE
environment.

[0] https://openpower.ic.unicamp.br/minicloud

 arch/powerpc/kernel/fadump.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/powerpc/kernel/fadump.c b/arch/powerpc/kernel/fadump.c
index 65562c4a0a69..35ae8c09af66 100644
--- a/arch/powerpc/kernel/fadump.c
+++ b/arch/powerpc/kernel/fadump.c
@@ -1649,14 +1649,6 @@ int __init setup_fadump(void)
 		register_fadump();
 	}
 
-	/*
-	 * In case of panic, fadump is triggered via ppc_panic_event()
-	 * panic notifier. Setting crash_kexec_post_notifiers to 'true'
-	 * lets panic() function take crash friendly path before panic
-	 * notifiers are invoked.
-	 */
-	crash_kexec_post_notifiers = true;
-
 	return 1;
 }
 /*
-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
