Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC9D512844
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 02:43:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1njsFc-0005W7-Ap; Thu, 28 Apr 2022 00:43:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1njr47-0002BL-DM
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bd3LEemhVeb7HF/IIMNoiSMnSaTUMrH2fhcorDNVPOw=; b=Ap/1nKYbVPcag8wtqQnl3kaCwI
 8hHUYnkHFqEVktPd9ezCoMfEib3P6B9Joa4NTLvKwHz5yULLp+C6/Uir37ZVZtlAJqyFlXzrArJEN
 UnO2rx1H4AbUIuLJt9oVilvVfA+AG8a7RZFFNhvF/9UVt4+2bqtp36GkjO9okIgv1rRc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bd3LEemhVeb7HF/IIMNoiSMnSaTUMrH2fhcorDNVPOw=; b=G
 /GiYiNEONiRpUELXf1gyx9sKml5FxP/X1mpxfKwoPq69EioNhERgOBTKbSgGtzI43h4tVd3q3oLAb
 0Ucfb84OqV+sCjlOnBv/mvOEQZMx+0Yjm+i5sY5cO6hB0MhaPNjdEniuf4S2VndNWXrPLbwo53NRj
 hDYGGffDQMWtg1M4=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1njr44-00CA5j-Mx
 for openipmi-developer@lists.sourceforge.net; Wed, 27 Apr 2022 23:27:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bd3LEemhVeb7HF/IIMNoiSMnSaTUMrH2fhcorDNVPOw=; b=reO22ihKOd/dWO6JG74IZyl/Fc
 ZRgGILhVwwQGIlc0vj0pe06pAIL0f1YnsjmZwa63b3ABCQ9Dxtfk7lOpgjSlBlW3mvUPOXpeDqCPF
 Rai8aA64fPaaS3uA4lyDgYZD5XuD0ZsHxLRl7fSfIQRGLMJx5CN6hSSRnLDC2sMLyPhnDWIKyd1uN
 dkM7kUYrK18mk3Ol/CnE0I+ZYy1cZnsseboaTczRU6buuvnTvUyLu0/yD31d9xZSykLYiRZ87DJrn
 1QwYj7LfEwisoBpfk6PfijWzaR37ghlKX+i9oyA2xcheBwMVt8x9sPCGngmKdbeGAFrivKg5AfP0H
 0Qh1iRoA==;
Received: from [179.113.53.197] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1njqTd-0001ws-8P; Thu, 28 Apr 2022 00:49:41 +0200
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
To: akpm@linux-foundation.org, bhe@redhat.com, pmladek@suse.com,
 kexec@lists.infradead.org
Date: Wed, 27 Apr 2022 19:48:54 -0300
Message-Id: <20220427224924.592546-1-gpiccoli@igalia.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hey folks, this is an attempt to improve/refactor the dated
 panic notifiers infrastructure. This is strongly based in a suggestion made
 by Pter Mladek [0] some time ago, and it's finally ready. Below [...] 
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
X-Headers-End: 1njr44-00CA5j-Mx
X-Mailman-Approved-At: Thu, 28 Apr 2022 00:43:11 +0000
Subject: [Openipmi-developer] [PATCH 00/30] The panic notifiers refactor
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Justin Chen <justinpopo6@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, fabiomirmar@gmail.com,
 stern@rowland.harvard.edu, Catalin Marinas <catalin.marinas@arm.com>,
 xen-devel@lists.xenproject.org, Matt Turner <mattst88@gmail.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, Nicholas Piggin <npiggin@gmail.com>,
 luto@kernel.org, Mihai Carabas <mihai.carabas@oracle.com>, tglx@linutronix.de,
 Xiaoming Ni <nixiaoming@huawei.com>, Richard Henderson <rth@twiddle.net>,
 Alex Elder <elder@kernel.org>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, senozhatsky@chromium.org,
 d.hatayama@jp.fujitsu.com, mhiramat@kernel.org, linux-hyperv@vger.kernel.org,
 dave.hansen@linux.intel.com,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Thierry Reding <thierry.reding@gmail.com>,
 Neeraj Upadhyay <quic_neeraju@quicinc.com>, linux-s390@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, Helge Deller <deller@gmx.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Frederic Weisbecker <frederic@kernel.org>, vgoyal@redhat.com,
 Sven Schnelle <svens@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-xtensa@linux-xtensa.org, john.ogness@linutronix.de,
 Scott Branden <scott.branden@broadcom.com>, coresight@lists.linaro.org,
 Florian Fainelli <f.fainelli@gmail.com>, Markus Mayer <mmayer@broadcom.com>,
 hidehiro.kawai.ez@hitachi.com, Cong Wang <xiyou.wangcong@gmail.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Arjan van de Ven <arjan@linux.intel.com>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>, Tony Luck <tony.luck@intel.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Wang ShaoBo <bobo.shaobowang@huawei.com>, gpiccoli@igalia.com,
 James Morse <james.morse@arm.com>, kernel-dev@igalia.com,
 Michael Ellerman <mpe@ellerman.id.au>, halves@canonical.com,
 alejandro.j.jimenez@oracle.com, Lai Jiangshan <jiangshanlai@gmail.com>,
 feng.tang@intel.com, Stephen Brennan <stephen.s.brennan@oracle.com>,
 zhenwei pi <pizhenwei@bytedance.com>, Joel Fernandes <joel@joelfernandes.org>,
 will@kernel.org, Doug Berger <opendmb@gmail.com>, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, Evan Green <evgreen@chromium.org>,
 bcm-kernel-feedback-list@broadcom.com, Mikko Perttunen <mperttunen@nvidia.com>,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>, rostedt@goodmis.org,
 rcu@vger.kernel.org, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-alpha@vger.kernel.org,
 Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, peterz@infradead.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-remoteproc@vger.kernel.org, mikelley@microsoft.com,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-leds@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, mingo@redhat.com, dyoung@redhat.com,
 Valentin Schneider <valentin.schneider@arm.com>,
 Mike Leach <mike.leach@linaro.org>, paulmck@kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Shile Zhang <shile.zhang@linux.alibaba.com>,
 Richard Weinberger <richard@nod.at>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 David Gow <davidgow@google.com>, Julius Werner <jwerner@chromium.org>,
 linux-tegra@vger.kernel.org, andriy.shevchenko@linux.intel.com,
 Johannes Berg <johannes@sipsolutions.net>,
 Hari Bathini <hbathini@linux.ibm.com>, linux-edac@vger.kernel.org,
 jgross@suse.com, netdev@vger.kernel.org, kernel@gpiccoli.net,
 linux-mips@vger.kernel.org, Leo Yan <leo.yan@linaro.org>, bp@alien8.de,
 vkuznets@redhat.com, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hey folks, this is an attempt to improve/refactor the dated panic notifiers
infrastructure. This is strongly based in a suggestion made by Pter Mladek [0]
some time ago, and it's finally ready. Below I'll detail the patch ordering,
testing made, etc.
First, a bit about the reason behind this.

The panic notifiers list is an infrastructure that allows callbacks to execute
during panic time. Happens that anybody can add functions there, no ordering
is enforced (by default) and the decision to execute or not such notifiers
before kdump may lead to high risk of failure in crash scenarios - default is
not to execute any of them. There is a parameter acting as a switch for that.
But some architectures require some notifiers, so..it's messy.

The suggestion from Petr came after a patch submission to add a notifiers
filter, allowing the notifiers selection by function name, which was welcomed
by some people, but not by Petr, which claimed the code should indeed have a
refactor - and it made a lot of sense, his suggestion makes code more clear
and reliable.

So, this series might be split in 3 portions:

Part 1: the first 18 patches are mostly fixes (one or two might be considered
improvements), mostly replacing spinlocks/mutexes with safer alternatives for
atomic contexts, like spin_trylock, etc. We also focused on commenting
everything that is possible and clean-up code.

Part 2, the core: patches 19-25 are the main refactor, which splits the panic
notifiers list in three, introduce the concept of panic notifier level and
clean-up and highly comment the code, effectively leading to a more reliable
and clear, yet highly customizable panic path.

Part 3: The remaining 5 patches are fixes that _require the main refactor_
patches, they don't make sense without the core changes - but again, these are
small fixes and not part of the main goal of refactoring the panic code.

I've tried my best to make the patches the more "bisectable" as possible, so
they tend to be self-contained and easy to backport (specially patches from
part 1). Notice that the series is *based on 5.18-rc4* - usually a refactor
like this would be based on linux-next, but since we have many fixes in the
series, I kept it based on mainline tree. Of course I could change that in a
subsequent iteration, if desired.

Since this touches multiple architectures and drivers, it's very difficult to
test it really (by executing all touched code). So, my tests split in two
approaches: build tests and real tests, that involves panic triggering with
and without kdump, changing panic notifiers level, etc.

Build tests (using cross-compilers): alpha, arm, arm64, mips (sgi 22 and 32),
parisc, s390, sparc, um, x86_64 (couldn't get a functional xtensa cross
compiler).

Real/full tests: x86_64 (Hyper-V and QEMU guests) + PowerPC (pseries guest).

Here is the link with the .config files used: https://people.igalia.com/gpiccoli/panic_notifiers_configs/
(tried my best to build all the affected code).

Finally, a bit about my CCing strategy: I've included everybody present in the
original thread [0] plus some maintainers and other interested parties as CC
in the full series. But the patches have individual CC lists, for people that
are definitely related to them but might not care much for the whole series;
nevertheless, _everybody_ mentioned at least once in some patch is CCed in this
cover-letter. Hopefully I didn't forget to include anybody - all the mailing
lists were CCed in the whole series. Apologies in advance if (a) you received
emails you didn't want to or, (b) I forgot to include you but it was something
considered interesting by you.

Thanks in advance for reviews / comments / suggestions!
Cheers,

Guilherme

[0] https://lore.kernel.org/lkml/YfPxvzSzDLjO5ldp@alley/

Guilherme G. Piccoli (30):
  x86/crash,reboot: Avoid re-disabling VMX in all CPUs on crash/restart
  ARM: kexec: Disable IRQs/FIQs also on crash CPUs shutdown path
  notifier: Add panic notifiers info and purge trailing whitespaces
  firmware: google: Convert regular spinlock into trylock on panic path
  misc/pvpanic: Convert regular spinlock into trylock on panic path
  soc: bcm: brcmstb: Document panic notifier action and remove useless header
  mips: ip22: Reword PANICED to PANICKED and remove useless header
  powerpc/setup: Refactor/untangle panic notifiers
  coresight: cpu-debug: Replace mutex with mutex_trylock on panic notifier
  alpha: Clean-up the panic notifier code
  um: Improve panic notifiers consistency and ordering
  parisc: Replace regular spinlock with spin_trylock on panic path
  s390/consoles: Improve panic notifiers reliability
  panic: Properly identify the panic event to the notifiers' callbacks
  bus: brcmstb_gisb: Clean-up panic/die notifiers
  drivers/hv/vmbus, video/hyperv_fb: Untangle and refactor Hyper-V panic notifiers
  tracing: Improve panic/die notifiers
  notifier: Show function names on notifier routines if DEBUG_NOTIFIERS is set
  panic: Add the panic hypervisor notifier list
  panic: Add the panic informational notifier list
  panic: Introduce the panic pre-reboot notifier list
  panic: Introduce the panic post-reboot notifier list
  printk: kmsg_dump: Introduce helper to inform number of dumpers
  panic: Refactor the panic path
  panic, printk: Add console flush parameter and convert panic_print to a notifier
  Drivers: hv: Do not force all panic notifiers to execute before kdump
  powerpc: Do not force all panic notifiers to execute before kdump
  panic: Unexport crash_kexec_post_notifiers
  powerpc: ps3, pseries: Avoid duplicate call to kmsg_dump() on panic
  um: Avoid duplicate call to kmsg_dump()

 .../admin-guide/kernel-parameters.txt         |  54 ++-
 Documentation/admin-guide/sysctl/kernel.rst   |   5 +-
 arch/alpha/kernel/setup.c                     |  40 +--
 arch/arm/kernel/machine_kexec.c               |   3 +
 arch/arm64/kernel/setup.c                     |   2 +-
 arch/mips/kernel/relocate.c                   |   2 +-
 arch/mips/sgi-ip22/ip22-reset.c               |  13 +-
 arch/mips/sgi-ip32/ip32-reset.c               |   3 +-
 arch/parisc/include/asm/pdc.h                 |   1 +
 arch/parisc/kernel/firmware.c                 |  27 +-
 arch/parisc/kernel/pdc_chassis.c              |   3 +-
 arch/powerpc/include/asm/bug.h                |   2 +-
 arch/powerpc/kernel/fadump.c                  |   8 -
 arch/powerpc/kernel/setup-common.c            |  76 ++--
 arch/powerpc/kernel/traps.c                   |   6 +-
 arch/powerpc/platforms/powernv/opal.c         |   2 +-
 arch/powerpc/platforms/ps3/setup.c            |   2 +-
 arch/powerpc/platforms/pseries/setup.c        |   2 +-
 arch/s390/kernel/ipl.c                        |   4 +-
 arch/s390/kernel/setup.c                      |  19 +-
 arch/sparc/kernel/setup_32.c                  |  27 +-
 arch/sparc/kernel/setup_64.c                  |  29 +-
 arch/sparc/kernel/sstate.c                    |   3 +-
 arch/um/drivers/mconsole_kern.c               |  10 +-
 arch/um/kernel/um_arch.c                      |  11 +-
 arch/x86/include/asm/cpu.h                    |   1 +
 arch/x86/kernel/crash.c                       |   8 +-
 arch/x86/kernel/reboot.c                      |  14 +-
 arch/x86/kernel/setup.c                       |   2 +-
 arch/x86/xen/enlighten.c                      |   2 +-
 arch/xtensa/platforms/iss/setup.c             |   4 +-
 drivers/bus/brcmstb_gisb.c                    |  28 +-
 drivers/char/ipmi/ipmi_msghandler.c           |  12 +-
 drivers/edac/altera_edac.c                    |   3 +-
 drivers/firmware/google/gsmi.c                |  10 +-
 drivers/hv/hv_common.c                        |  12 -
 drivers/hv/vmbus_drv.c                        | 113 +++---
 .../hwtracing/coresight/coresight-cpu-debug.c |  11 +-
 drivers/leds/trigger/ledtrig-activity.c       |   4 +-
 drivers/leds/trigger/ledtrig-heartbeat.c      |   4 +-
 drivers/leds/trigger/ledtrig-panic.c          |   3 +-
 drivers/misc/bcm-vk/bcm_vk_dev.c              |   6 +-
 drivers/misc/ibmasm/heartbeat.c               |  16 +-
 drivers/misc/pvpanic/pvpanic.c                |  14 +-
 drivers/net/ipa/ipa_smp2p.c                   |   5 +-
 drivers/parisc/power.c                        |  21 +-
 drivers/power/reset/ltc2952-poweroff.c        |   4 +-
 drivers/remoteproc/remoteproc_core.c          |   6 +-
 drivers/s390/char/con3215.c                   |  38 +-
 drivers/s390/char/con3270.c                   |  36 +-
 drivers/s390/char/raw3270.c                   |  18 +
 drivers/s390/char/raw3270.h                   |   1 +
 drivers/s390/char/sclp_con.c                  |  30 +-
 drivers/s390/char/sclp_vt220.c                |  44 +--
 drivers/s390/char/zcore.c                     |   5 +-
 drivers/soc/bcm/brcmstb/pm/pm-arm.c           |  18 +-
 drivers/soc/tegra/ari-tegra186.c              |   3 +-
 drivers/staging/olpc_dcon/olpc_dcon.c         |   6 +-
 drivers/video/fbdev/hyperv_fb.c               |  12 +-
 include/linux/console.h                       |   2 +
 include/linux/kmsg_dump.h                     |   7 +
 include/linux/notifier.h                      |   8 +-
 include/linux/panic.h                         |   3 -
 include/linux/panic_notifier.h                |  12 +-
 include/linux/printk.h                        |   1 +
 kernel/hung_task.c                            |   3 +-
 kernel/kexec_core.c                           |   8 +-
 kernel/notifier.c                             |  48 ++-
 kernel/panic.c                                | 335 +++++++++++-------
 kernel/printk/printk.c                        |  76 ++++
 kernel/rcu/tree.c                             |   1 -
 kernel/rcu/tree_stall.h                       |   3 +-
 kernel/trace/trace.c                          |  59 +--
 .../selftests/pstore/pstore_crash_test        |   5 +-
 74 files changed, 953 insertions(+), 486 deletions(-)

-- 
2.36.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
