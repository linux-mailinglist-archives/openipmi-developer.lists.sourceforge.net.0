Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2749447DED
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 11:27:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk1s2-0005ve-9g; Mon, 08 Nov 2021 10:27:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bp@alien8.de>) id 1mk1s0-0005vJ-7h
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 10:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CDGB0dpLCqhyN2VLkOyFdq64uDUd6G/RUsDL3dC+Ipo=; b=DUAw3EFzaoNE/vg3r8hr+aeKx4
 nDyz+lDWzsAbHZMhBmQ2ECPbBIB5LPZ1Yblg874k6EJk15Thnu4e3owxmeUEAxQduwRjk/vLP108w
 bpQHP84CBYT7a35wb/varv3yeYs5y+u+JLnUKm5u9Kz8pLxqmHoEeomTRj2/cbPPUMfk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CDGB0dpLCqhyN2VLkOyFdq64uDUd6G/RUsDL3dC+Ipo=; b=M3Qxj8PdcW0MVZoRdSXRJPFJ1h
 Hh3945Wxjva4425ODUV+wWoSt2eoThY4O0tLG71WwQ1F1bdh5q0Pbx6LhXLl0r6hPcyBIvCE2S1gO
 2rr1n3PfSftBSo+6cof8O5luvSocuhejN/6/3wjQF/j7Lf4akIMFw9lC22EmpJSwNdNk=;
Received: from mail.skyhub.de ([5.9.137.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk1ru-005xS4-OV
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 10:27:19 +0000
Received: from zn.tnic (p200300ec2f33110088892b77bd117736.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f33:1100:8889:2b77:bd11:7736])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 295D81EC04E0;
 Mon,  8 Nov 2021 11:19:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1636366768;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CDGB0dpLCqhyN2VLkOyFdq64uDUd6G/RUsDL3dC+Ipo=;
 b=OmXDZQiNXAykW6msgQxQV2D3jyNeh8L8Ur0LKSqcBbS8Z5Dq+lMoh+uc1KE9lZoNFhTNi5
 HSfl5kEDRsOkXKmO9qqEW67WUQUsv5GaQK9Erwx9IjY3o31Y8ehQnIfkizrSs0P3bzV/5j
 Fq9nLmulJEIgHjmCW/c8QaecUsrUi0U=
From: Borislav Petkov <bp@alien8.de>
To: LKML <linux-kernel@vger.kernel.org>
Date: Mon,  8 Nov 2021 11:19:24 +0100
Message-Id: <20211108101924.15759-1-bp@alien8.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20211108101157.15189-1-bp@alien8.de>
References: <20211108101157.15189-1-bp@alien8.de>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Borislav Petkov <bp@suse.de> Hi all, this is a huge
 patchset for something which is really trivial - it changes the notifier
 registration
 routines to return an error value if a notifier callback is already present
 on the respective list [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mk1ru-005xS4-OV
Subject: [Openipmi-developer] [PATCH v0 00/42] notifiers: Return an error
 when callback is already registered
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
Cc: alsa-devel@alsa-project.org, x86@kernel.org, linux-sh@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-fbdev@vger.kernel.org, netdev@vger.kernel.org,
 Ayush Sawal <ayush.sawal@chelsio.com>, sparclinux@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org,
 Rohit Maheshwari <rohitm@chelsio.com>, linux-staging@lists.linux.dev,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 linux-xtensa@linux-xtensa.org, Arnd Bergmann <arnd@arndb.de>,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Vinay Kumar Yadav <vinay.yadav@chelsio.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, rcu@vger.kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 intel-gvt-dev@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-parisc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-alpha@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Borislav Petkov <bp@suse.de>

Hi all,

this is a huge patchset for something which is really trivial - it
changes the notifier registration routines to return an error value
if a notifier callback is already present on the respective list of
callbacks. For more details scroll to the last patch.

Everything before it is converting the callers to check the return value
of the registration routines and issue a warning, instead of the WARN()
notifier_chain_register() does now.

Before the last patch has been applied, though, that checking is a
NOP which would make the application of those patches trivial - every
maintainer can pick a patch at her/his discretion - only the last one
enables the build warnings and that one will be queued only after the
preceding patches have all been merged so that there are no build
warnings.

Due to the sheer volume of the patches, I have addressed the respective
patch and the last one, which enables the warning, with addressees for
each maintained area so as not to spam people unnecessarily.

If people prefer I carry some through tip, instead, I'll gladly do so -
your call.

And, if you think the warning messages need to be more precise, feel
free to adjust them before committing.

Thanks!

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Ayush Sawal <ayush.sawal@chelsio.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rohit Maheshwari <rohitm@chelsio.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Vinay Kumar Yadav <vinay.yadav@chelsio.com> 
Cc: alsa-devel@alsa-project.org
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-gvt-dev@lists.freedesktop.org
Cc: linux-alpha@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-clk@vger.kernel.org
Cc: linux-crypto@vger.kernel.org
Cc: linux-edac@vger.kernel.org
Cc: linux-fbdev@vger.kernel.org
Cc: linux-hyperv@vger.kernel.org
Cc: linux-iio@vger.kernel.org
Cc: linux-leds@vger.kernel.org
Cc: linux-mips@vger.kernel.org
Cc: linux-parisc@vger.kernel.org
Cc: linux-pm@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-remoteproc@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org
Cc: linux-s390@vger.kernel.org
Cc: linux-scsi@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: linux-staging@lists.linux.dev
Cc: linux-tegra@vger.kernel.org
Cc: linux-um@lists.infradead.org
Cc: linux-usb@vger.kernel.org
Cc: linux-xtensa@linux-xtensa.org
Cc: netdev@vger.kernel.org
Cc: openipmi-developer@lists.sourceforge.net
Cc: rcu@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: x86@kernel.org
Cc: xen-devel@lists.xenproject.org

Borislav Petkov (42):
  x86: Check notifier registration return value
  xen/x86: Check notifier registration return value
  impi: Check notifier registration return value
  clk: renesas: Check notifier registration return value
  dca: Check notifier registration return value
  firmware: Check notifier registration return value
  drm/i915: Check notifier registration return value
  Drivers: hv: vmbus: Check notifier registration return value
  iio: proximity: cros_ec: Check notifier registration return value
  leds: trigger: Check notifier registration return value
  misc: Check notifier registration return value
  ethernet: chelsio: Check notifier registration return value
  power: reset: Check notifier registration return value
  remoteproc: Check notifier registration return value
  scsi: target: Check notifier registration return value
  USB: Check notifier registration return value
  drivers: video: Check notifier registration return value
  drivers/xen: Check notifier registration return value
  kernel/hung_task: Check notifier registration return value
  rcu: Check notifier registration return value
  tracing: Check notifier registration return value
  net: fib_notifier: Check notifier registration return value
  ASoC: soc-jack: Check notifier registration return value
  staging: olpc_dcon: Check notifier registration return value
  arch/um: Check notifier registration return value
  alpha: Check notifier registration return value
  bus: brcmstb_gisb: Check notifier registration return value
  soc: bcm: brcmstb: pm: pm-arm: Check notifier registration return
    value
  arm64: Check notifier registration return value
  soc/tegra: Check notifier registration return value
  parisc: Check notifier registration return value
  macintosh/adb: Check notifier registration return value
  mips: Check notifier registration return value
  powerpc: Check notifier registration return value
  sh: Check notifier registration return value
  s390: Check notifier registration return value
  sparc: Check notifier registration return value
  xtensa: Check notifier registration return value
  crypto: ccree - check notifier registration return value
  EDAC/altera: Check notifier registration return value
  power: supply: ab8500: Check notifier registration return value
  notifier: Return an error when callback is already registered

 arch/alpha/kernel/setup.c                     |  5 +--
 arch/arm64/kernel/setup.c                     |  6 ++--
 arch/mips/kernel/relocate.c                   |  6 ++--
 arch/mips/sgi-ip22/ip22-reset.c               |  4 ++-
 arch/mips/sgi-ip32/ip32-reset.c               |  4 ++-
 arch/parisc/kernel/pdc_chassis.c              |  5 +--
 arch/powerpc/kernel/setup-common.c            | 12 ++++---
 arch/s390/kernel/ipl.c                        |  4 ++-
 arch/s390/kvm/kvm-s390.c                      |  7 ++--
 arch/sh/kernel/cpu/sh4a/setup-sh7724.c        | 11 +++---
 arch/sparc/kernel/sstate.c                    |  6 ++--
 arch/um/drivers/mconsole_kern.c               |  6 ++--
 arch/um/kernel/um_arch.c                      |  5 +--
 arch/x86/kernel/cpu/mce/core.c                |  3 +-
 arch/x86/kernel/cpu/mce/dev-mcelog.c          |  3 +-
 arch/x86/kernel/setup.c                       |  7 ++--
 arch/x86/xen/enlighten.c                      |  4 ++-
 arch/xtensa/platforms/iss/setup.c             |  3 +-
 drivers/bus/brcmstb_gisb.c                    |  6 ++--
 drivers/char/ipmi/ipmi_msghandler.c           |  3 +-
 drivers/clk/renesas/clk-div6.c                |  4 ++-
 drivers/clk/renesas/rcar-cpg-lib.c            |  4 ++-
 drivers/crypto/ccree/cc_fips.c                |  4 ++-
 drivers/dca/dca-core.c                        |  3 +-
 drivers/edac/altera_edac.c                    |  6 ++--
 drivers/firmware/arm_scmi/notify.c            |  3 +-
 drivers/firmware/google/gsmi.c                |  6 ++--
 drivers/gpu/drm/i915/gvt/scheduler.c          |  6 ++--
 drivers/hv/vmbus_drv.c                        |  4 +--
 .../iio/proximity/cros_ec_mkbp_proximity.c    |  3 +-
 drivers/leds/trigger/ledtrig-activity.c       |  6 ++--
 drivers/leds/trigger/ledtrig-heartbeat.c      |  6 ++--
 drivers/leds/trigger/ledtrig-panic.c          |  4 +--
 drivers/macintosh/adbhid.c                    |  4 +--
 drivers/misc/ibmasm/heartbeat.c               |  3 +-
 drivers/misc/pvpanic/pvpanic.c                |  3 +-
 .../chelsio/inline_crypto/chtls/chtls_main.c  |  5 ++-
 drivers/parisc/power.c                        |  5 +--
 drivers/power/reset/ltc2952-poweroff.c        |  6 ++--
 drivers/power/supply/ab8500_charger.c         |  8 ++---
 drivers/remoteproc/qcom_common.c              |  3 +-
 drivers/remoteproc/qcom_sysmon.c              |  4 ++-
 drivers/remoteproc/remoteproc_core.c          |  4 ++-
 drivers/s390/char/con3215.c                   |  5 ++-
 drivers/s390/char/con3270.c                   |  5 ++-
 drivers/s390/char/sclp_con.c                  |  4 ++-
 drivers/s390/char/sclp_vt220.c                |  4 ++-
 drivers/s390/char/zcore.c                     |  4 ++-
 drivers/soc/bcm/brcmstb/pm/pm-arm.c           |  5 +--
 drivers/soc/tegra/ari-tegra186.c              |  7 ++--
 drivers/staging/olpc_dcon/olpc_dcon.c         |  4 ++-
 drivers/target/tcm_fc/tfc_conf.c              |  4 ++-
 drivers/usb/core/notify.c                     |  3 +-
 drivers/video/console/dummycon.c              |  3 +-
 drivers/video/fbdev/hyperv_fb.c               |  5 +--
 drivers/xen/manage.c                          |  3 +-
 drivers/xen/xenbus/xenbus_probe.c             |  8 +++--
 include/linux/notifier.h                      |  8 ++---
 kernel/hung_task.c                            |  3 +-
 kernel/notifier.c                             | 36 ++++++++++---------
 kernel/rcu/tree_stall.h                       |  4 ++-
 kernel/trace/trace.c                          |  4 +--
 net/core/fib_notifier.c                       |  4 ++-
 sound/soc/soc-jack.c                          |  3 +-
 64 files changed, 222 insertions(+), 118 deletions(-)

-- 
2.29.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
