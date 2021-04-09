Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 941AB3595FE
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 09:03:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUlAU-0000OT-43; Fri, 09 Apr 2021 07:03:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <akpm@linux-foundation.org>) id 1lUl9D-0000Dd-QR
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 07:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T0sVW8ohpjVk6G2qU0we19J9nz1XNidW/DB0QqT5Cng=; b=h74mxYXQbFjQg083J77D102dqy
 f4qVrlb8twEz0tDlBacNAwMvTVXuZbsfe3tVLMjnWG35G8CG3MjbFJUm+oj/ItCf6jMx5gpuI1v+b
 ptWh71M6HCdD8UJmbCrlCUuOzhcNHd7wsiQi6OMcqLcEnngMaNL31hq39kQXgmmz5rYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T0sVW8ohpjVk6G2qU0we19J9nz1XNidW/DB0QqT5Cng=; b=RW2bJNYlmZz69FQHMpLL/zojzF
 0I39vlix0+eXK93u9CPx63HQps8gbIUk/pErzq7emoIWkhDqlHz1j7QjTi/kSfak/Q3nwWoM0Gln2
 bGlrOkP6mpzPHCkWrhO6siqNfAOHKhr5Zhhi9FAZKoJ0wl3vQD8m9GNxy84CckX03/Cw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUkw3-00061a-Gl
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 06:48:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B90B261057;
 Fri,  9 Apr 2021 06:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1617949385;
 bh=mJ2iIVENJVBOnN2uXfAcyB/K8aKm5K5QHhvwNyApuAU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=csPjYedzWhmuKBGMU155cpHTdZItXq65aNVGkrX9cDOfKgzfcWV1yVZ7+8tq01r+z
 ODfCoIhkGumpTuUlBz+43/5MvpO/6M0D+77/eRG+VIJ27eTKjfLfS57BTaW5YITUdh
 97swMkpU38QBpyu9C25OZZIPhXniOvfHNvdymBZE=
Date: Thu, 8 Apr 2021 23:23:03 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-Id: <20210408232303.453749e0e6fb0adfa8545440@linux-foundation.org>
In-Reply-To: <CAHp75Ve+11u=dtNTO8BCohOJHGWSMJtb1nGCOrNde7bXaD4ehA@mail.gmail.com>
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
 <202104061143.E11D2D0@keescook>
 <CAHp75Ve+11u=dtNTO8BCohOJHGWSMJtb1nGCOrNde7bXaD4ehA@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUkw3-00061a-Gl
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] kernel.h: Split out panic
 and oops helpers
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Linux on Hyper-V List <linux-hyperv@vger.kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-remoteproc@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux-Arch <linux-arch@vger.kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Iurii Zaikin <yzaikin@google.com>,
 Ohad Ben-Cohen <ohad@wizery.com>, Joerg Roedel <jroedel@suse.de>,
 Kees Cook <keescook@chromium.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vlastimil Babka <vbabka@suse.cz>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biederman <ebiederm@xmission.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 "open list:LINUX FOR POWERPC PA SEMI PWRFICIENT"
 <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, 7 Apr 2021 11:46:37 +0300 Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Wed, Apr 7, 2021 at 11:17 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Tue, Apr 06, 2021 at 04:31:58PM +0300, Andy Shevchenko wrote:
> > > kernel.h is being used as a dump for all kinds of stuff for a long time.
> > > Here is the attempt to start cleaning it up by splitting out panic and
> > > oops helpers.
> > >
> > > At the same time convert users in header and lib folder to use new header.
> > > Though for time being include new header back to kernel.h to avoid twisted
> > > indirected includes for existing users.
> > >
> > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> >
> > I like it! Do you have a multi-arch CI to do allmodconfig builds to
> > double-check this?
> 
> Unfortunately no, I rely on plenty of bots that are harvesting mailing lists.
> 
> But I will appreciate it if somebody can run this through various build tests.
> 

um, did you try x86_64 allmodconfig?

I'm up to
kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix-fix-fix.patch
and counting.

From: Andrew Morton <akpm@linux-foundation.org>
Subject: kernelh-split-out-panic-and-oops-helpers-fix

more files need panic_notifier.h

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 arch/x86/xen/enlighten.c        |    1 +
 drivers/video/fbdev/hyperv_fb.c |    1 +
 2 files changed, 2 insertions(+)

--- a/arch/x86/xen/enlighten.c~kernelh-split-out-panic-and-oops-helpers-fix
+++ a/arch/x86/xen/enlighten.c
@@ -6,6 +6,7 @@
 #include <linux/cpu.h>
 #include <linux/kexec.h>
 #include <linux/slab.h>
+#include <linux/panic_notifier.h>
 
 #include <xen/xen.h>
 #include <xen/features.h>
--- a/drivers/video/fbdev/hyperv_fb.c~kernelh-split-out-panic-and-oops-helpers-fix
+++ a/drivers/video/fbdev/hyperv_fb.c
@@ -52,6 +52,7 @@
 #include <linux/completion.h>
 #include <linux/fb.h>
 #include <linux/pci.h>
+#include <linux/panic_notifier.h>
 #include <linux/efi.h>
 #include <linux/console.h>
 
_


From: Andrew Morton <akpm@linux-foundation.org>
Subject: kernelh-split-out-panic-and-oops-helpers-fix-fix

arch/x86/purgatory/purgatory.c needs kernel.h

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 arch/x86/purgatory/purgatory.c |    1 +
 1 file changed, 1 insertion(+)

--- a/arch/x86/purgatory/purgatory.c~kernelh-split-out-panic-and-oops-helpers-fix-fix
+++ a/arch/x86/purgatory/purgatory.c
@@ -8,6 +8,7 @@
  *       Vivek Goyal <vgoyal@redhat.com>
  */
 
+#include <linux/kernel.h>
 #include <linux/bug.h>
 #include <crypto/sha2.h>
 #include <asm/purgatory.h>
_

From: Andrew Morton <akpm@linux-foundation.org>
Subject: kernelh-split-out-panic-and-oops-helpers-fix-fix-fix

drivers/clk/analogbits/wrpll-cln28hpc.c needs minmax.h, math.h and limits.h

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 drivers/clk/analogbits/wrpll-cln28hpc.c |    4 ++++
 1 file changed, 4 insertions(+)

--- a/drivers/clk/analogbits/wrpll-cln28hpc.c~kernelh-split-out-panic-and-oops-helpers-fix-fix-fix
+++ a/drivers/clk/analogbits/wrpll-cln28hpc.c
@@ -25,6 +25,10 @@
 #include <linux/err.h>
 #include <linux/log2.h>
 #include <linux/math64.h>
+#include <linux/minmax.h>
+#include <linux/math.h>
+#include <linux/limits.h>
+
 #include <linux/clk/analogbits-wrpll-cln28hpc.h>
 
 /* MIN_INPUT_FREQ: minimum input clock frequency, in Hz (Fref_min) */
_

From: Andrew Morton <akpm@linux-foundation.org>
Subject: kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix

drivers/misc/pvpanic/pvpanic.c needs panic_notifier.h

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 drivers/misc/pvpanic/pvpanic.c |    1 +
 1 file changed, 1 insertion(+)

--- a/drivers/misc/pvpanic/pvpanic.c~kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix
+++ a/drivers/misc/pvpanic/pvpanic.c
@@ -13,6 +13,7 @@
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
+#include <linux/panic_notifier.h>
 #include <linux/types.h>
 #include <linux/cdev.h>
 #include <linux/list.h>
_
From: Andrew Morton <akpm@linux-foundation.org>
Subject: kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix

fix drivers/misc/pvpanic/pvpanic.c and drivers/net/ipa/ipa_smp2p.c

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 drivers/net/ipa/ipa_smp2p.c |    1 +
 1 file changed, 1 insertion(+)

--- a/drivers/net/ipa/ipa_smp2p.c~kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix
+++ a/drivers/net/ipa/ipa_smp2p.c
@@ -8,6 +8,7 @@
 #include <linux/device.h>
 #include <linux/interrupt.h>
 #include <linux/notifier.h>
+#include <linux/panic_notifier.h>
 #include <linux/soc/qcom/smem.h>
 #include <linux/soc/qcom/smem_state.h>
 
_

From: Andrew Morton <akpm@linux-foundation.org>
Subject: kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix-fix

fix drivers/power/reset/ltc2952-poweroff.c and drivers/misc/bcm-vk/bcm_vk_dev.c

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 drivers/misc/bcm-vk/bcm_vk_dev.c       |    1 +
 drivers/power/reset/ltc2952-poweroff.c |    1 +
 2 files changed, 2 insertions(+)

--- a/drivers/power/reset/ltc2952-poweroff.c~kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix-fix
+++ a/drivers/power/reset/ltc2952-poweroff.c
@@ -52,6 +52,7 @@
 #include <linux/slab.h>
 #include <linux/kmod.h>
 #include <linux/module.h>
+#include <linux/panic_notifier.h>
 #include <linux/mod_devicetable.h>
 #include <linux/gpio/consumer.h>
 #include <linux/reboot.h>
--- a/drivers/misc/bcm-vk/bcm_vk_dev.c~kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix-fix
+++ a/drivers/misc/bcm-vk/bcm_vk_dev.c
@@ -9,6 +9,7 @@
 #include <linux/fs.h>
 #include <linux/idr.h>
 #include <linux/interrupt.h>
+#include <linux/panic_notifier.h>
 #include <linux/kref.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
_

From: Andrew Morton <akpm@linux-foundation.org>
Subject: kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix-fix-fix

fix drivers/leds/trigger/ledtrig-panic.c and drivers/firmware/google/gsmi.c

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 drivers/firmware/google/gsmi.c       |    1 +
 drivers/leds/trigger/ledtrig-panic.c |    1 +
 2 files changed, 2 insertions(+)

--- a/drivers/leds/trigger/ledtrig-panic.c~kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix-fix-fix
+++ a/drivers/leds/trigger/ledtrig-panic.c
@@ -8,6 +8,7 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/notifier.h>
+#include <linux/panic_notifier.h>
 #include <linux/leds.h>
 #include "../leds.h"
 
--- a/drivers/firmware/google/gsmi.c~kernelh-split-out-panic-and-oops-helpers-fix-fix-fix-fix-fix-fix-fix
+++ a/drivers/firmware/google/gsmi.c
@@ -19,6 +19,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/fs.h>
 #include <linux/slab.h>
+#include <linux/panic_notifier.h>
 #include <linux/ioctl.h>
 #include <linux/acpi.h>
 #include <linux/io.h>
_


and.... drivers/leds/trigger/ledtrig-heartbeat.c as well.

I'll drop it.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
