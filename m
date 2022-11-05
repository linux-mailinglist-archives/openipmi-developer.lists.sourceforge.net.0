Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9E461D7AB
	for <lists+openipmi-developer@lfdr.de>; Sat,  5 Nov 2022 07:01:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1orCFV-00042k-1R;
	Sat, 05 Nov 2022 06:01:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=G+DL=3F=goodmis.org=rostedt@kernel.org>)
 id 1orCFN-00042S-M2; Sat, 05 Nov 2022 06:01:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KhgPs05e8gwVXjG20Y27nmjVZkHotT1YULwbE9HM2Xk=; b=nQy0cnKZzCHL9AmrkjeaXPE2Xy
 /v7vmH7w1xGdSk54/7VJ83os+c0WKwP4w/Xfwrbkz78SH62jZ8l6OhmZmRUDCxfNfFDQwCr9R/R4G
 ttZQXfwDJ6idpQRCoQrPkKOsYyFdsTjXPk55hqlKQOi43pz4qdI+31JV/fHMQjnBliY4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KhgPs05e8gwVXjG20Y27nmjVZkHotT1YULwbE9HM2Xk=; b=BmmXU2zl7Acu46VX6rIU7t4yKR
 hho2xkqkir6EMv8414+UApcDlZTgUnGdcEZBKVxMlaGHYFGUl6yBiHkCpLeYgR/ykbidf32yvsj/b
 AHl6aVhrW+DNMEoTJA90ay8c9/ePqJ8f/d1/CK5DZ1Lk7skH6/G0BJaHrt1OBczqMBJY=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1orCFM-00CN9T-Ll; Sat, 05 Nov 2022 06:01:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6CB25B81CC0;
 Sat,  5 Nov 2022 06:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08B27C433C1;
 Sat,  5 Nov 2022 06:01:27 +0000 (UTC)
Received: from rostedt by gandalf.local.home with local (Exim 4.96)
 (envelope-from <rostedt@goodmis.org>) id 1orCFf-007Oer-03;
 Sat, 05 Nov 2022 02:01:55 -0400
Message-ID: <20221105060024.598488967@goodmis.org>
User-Agent: quilt/0.66
Date: Sat, 05 Nov 2022 02:00:24 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: linux-kernel@vger.kernel.org
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Back in April, I posted an RFC patch set to help mitigate
 a common issue where a timer gets armed just before it is freed, and when
 the timer goes off, it crashes in the timer code without any evidenc [...]
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
X-Headers-End: 1orCFM-00CN9T-Ll
Subject: [Openipmi-developer] [PATCH v4a 00/38] timers: Use
 timer_shutdown*() before freeing timers
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
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org, cgroups@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


Back in April, I posted an RFC patch set to help mitigate a common issue
where a timer gets armed just before it is freed, and when the timer
goes off, it crashes in the timer code without any evidence of who the
culprit was. I got side tracked and never finished up on that patch set.
Since this type of crash is still our #1 crash we are seeing in the field,
it has become a priority again to finish it.

The last version of that patch set is here:

  https://lore.kernel.org/all/20221104054053.431922658@goodmis.org/

I'm calling this version 4a as it only has obvious changes were the timer that
is being shutdown is in the same function where it will be freed or released,
as this series should be "safe" for adding. I'll be calling the other patches
4b for the next merge window.

Patch 1 fixes an issue with sunrpc/xprt where it incorrectly uses
del_singleshot_timer_sync() for something that is not a oneshot timer. As this
will be converted to shutdown, this needs to be fixed first.

Patches 2-4 changes existing timer_shutdown() functions used locally in ARM and
some drivers to better namespace names.

Patch 5 implements the new timer_shutdown() and timer_shutdown_sync() functions
that disable re-arming the timer after they are called.

Patches 6-28 change all the locations where there's a kfree(), kfree_rcu(),
kmem_cache_free() and one call_rcu() call where the RCU function frees the
timer (the workqueue patch) in the same function as the del_timer{,_sync}() is
called on that timer, and there's no extra exit path between the del_timer and
freeing of the timer.

Patches 29-32 add timer_shutdown*() on on-stack timers that are about to be
released at the end of the function.

Patches 33-37 add timer_shutdown*() on module timers in the module exit code.

Patch 38 simply converts an open coded "shutdown" code into timer_shutdown(),
as a way timer_shutdown() disables the timer is by setting that timer function
to NULL.

Linus, I sorted the patches this way to let you see which you would think is
safe to go into this -rc. I honestly believe that they are all safe, but that's
just my own opinion.

This series is here:

  git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git
timers-start

Head SHA1: f58b516a65bac76f1bfa00126856d6c6c3d24a40


Steven Rostedt (Google) (38):
      SUNRPC/xprt: Use del_timer_sync() instead of del_singleshot_timer_sync()
      ARM: spear: Do not use timer namespace for timer_shutdown() function
      clocksource/drivers/arm_arch_timer: Do not use timer namespace for timer_shutdown() function
      clocksource/drivers/sp804: Do not use timer namespace for timer_shutdown() function
      timers: Add timer_shutdown_sync() and timer_shutdown() to be called before freeing timers
      timers: sh: Use timer_shutdown_sync() before freeing timer
      timers: block: Use timer_shutdown_sync() before freeing timer
      timers: ACPI: Use timer_shutdown_sync() before freeing timer
      timers: atm: Use timer_shutdown_sync() before freeing timer
      timers: Bluetooth: Use timer_shutdown_sync() before freeing timer
      timers: drm: Use timer_shutdown_sync() before freeing timer
      timers: HID: Use timer_shutdown_sync() before freeing timer
      timers: Input: Use timer_shutdown_sync() before freeing timer
      timers: mISDN: Use timer_shutdown_sync() before freeing timer
      timers: leds: Use timer_shutdown_sync() before freeing timer
      timers: media: Use timer_shutdown_sync() before freeing timer
      timers: net: Use timer_shutdown_sync() before freeing timer
      timers: usb: Use timer_shutdown_sync() before freeing timer
      timers: nfc: pn533: Use timer_shutdown_sync() before freeing timer
      timers: pcmcia: Use timer_shutdown_sync() before freeing timer
      timers: scsi: Use timer_shutdown_sync() and timer_shutdown() before freeing timer
      timers: tty: Use timer_shutdown_sync() before freeing timer
      timers: ext4: Use timer_shutdown_sync() before freeing timer
      timers: fs/nilfs2: Use timer_shutdown_sync() before freeing timer
      timers: ALSA: Use timer_shutdown_sync() before freeing timer
      timers: jbd2: Use timer_shutdown() before freeing timer
      timers: sched/psi: Use timer_shutdown_sync() before freeing timer
      timers: workqueue: Use timer_shutdown_sync() before freeing timer
      random: use timer_shutdown_sync() for on stack timers
      timers: dma-buf: Use timer_shutdown_sync() for on stack timers
      timers: drm: Use timer_shutdown_sync() for on stack timers
      timers: media: Use timer_shutdown_sync() for on stack timers
      timers: s390/cmm: Use timer_shutdown_sync() before a module is released
      timers: atm: Use timer_shutdown_sync() before a module is released
      timers: hangcheck: Use timer_shutdown_sync() before a module is released
      timers: ipmi: Use timer_shutdown_sync() before a module is released
      timers: Input: Use timer_shutdown_sync() before a module is released
      timers: PM: Use timer_shutdown_sync()

----
 .../RCU/Design/Requirements/Requirements.rst       |  2 +-
 Documentation/core-api/local_ops.rst               |  2 +-
 Documentation/kernel-hacking/locking.rst           |  5 ++
 arch/arm/mach-spear/time.c                         |  8 +--
 arch/s390/mm/cmm.c                                 |  4 +-
 arch/sh/drivers/push-switch.c                      |  2 +-
 block/blk-iocost.c                                 |  2 +-
 block/blk-iolatency.c                              |  2 +-
 block/blk-throttle.c                               |  2 +-
 block/kyber-iosched.c                              |  2 +-
 drivers/acpi/apei/ghes.c                           |  2 +-
 drivers/atm/idt77105.c                             |  4 +-
 drivers/atm/idt77252.c                             |  4 +-
 drivers/atm/iphase.c                               |  2 +-
 drivers/base/power/wakeup.c                        |  7 +--
 drivers/block/drbd/drbd_main.c                     |  2 +-
 drivers/block/loop.c                               |  2 +-
 drivers/block/sunvdc.c                             |  2 +-
 drivers/bluetooth/hci_bcsp.c                       |  2 +-
 drivers/bluetooth/hci_h5.c                         |  4 +-
 drivers/bluetooth/hci_qca.c                        |  4 +-
 drivers/char/hangcheck-timer.c                     |  4 +-
 drivers/char/ipmi/ipmi_msghandler.c                |  2 +-
 drivers/char/random.c                              |  2 +-
 drivers/clocksource/arm_arch_timer.c               | 12 ++--
 drivers/clocksource/timer-sp804.c                  |  6 +-
 drivers/dma-buf/st-dma-fence.c                     |  2 +-
 drivers/gpu/drm/gud/gud_pipe.c                     |  2 +-
 drivers/gpu/drm/i915/i915_sw_fence.c               |  2 +-
 drivers/hid/hid-wiimote-core.c                     |  2 +-
 drivers/input/keyboard/locomokbd.c                 |  2 +-
 drivers/input/keyboard/omap-keypad.c               |  2 +-
 drivers/input/mouse/alps.c                         |  2 +-
 drivers/input/serio/hil_mlc.c                      |  2 +-
 drivers/isdn/hardware/mISDN/hfcmulti.c             |  5 +-
 drivers/isdn/mISDN/l1oip_core.c                    |  4 +-
 drivers/isdn/mISDN/timerdev.c                      |  4 +-
 drivers/leds/trigger/ledtrig-pattern.c             |  2 +-
 drivers/leds/trigger/ledtrig-transient.c           |  2 +-
 drivers/media/pci/ivtv/ivtv-driver.c               |  2 +-
 drivers/media/usb/pvrusb2/pvrusb2-hdw.c            | 18 +++---
 drivers/media/usb/s2255/s2255drv.c                 |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c        |  7 +--
 drivers/net/ethernet/marvell/sky2.c                |  2 +-
 drivers/net/ethernet/sun/sunvnet.c                 |  2 +-
 drivers/net/usb/sierra_net.c                       |  2 +-
 drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c   |  2 +-
 drivers/net/wireless/intersil/hostap/hostap_ap.c   |  2 +-
 drivers/net/wireless/marvell/mwifiex/main.c        |  2 +-
 drivers/net/wireless/microchip/wilc1000/hif.c      |  6 +-
 drivers/nfc/pn533/pn533.c                          |  2 +-
 drivers/nfc/pn533/uart.c                           |  2 +-
 drivers/pcmcia/bcm63xx_pcmcia.c                    |  2 +-
 drivers/pcmcia/electra_cf.c                        |  2 +-
 drivers/pcmcia/omap_cf.c                           |  2 +-
 drivers/pcmcia/pd6729.c                            |  4 +-
 drivers/pcmcia/yenta_socket.c                      |  4 +-
 drivers/scsi/qla2xxx/qla_edif.c                    |  4 +-
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c |  2 +-
 drivers/tty/n_gsm.c                                |  2 +-
 drivers/tty/sysrq.c                                |  2 +-
 drivers/usb/gadget/udc/m66592-udc.c                |  2 +-
 drivers/usb/serial/garmin_gps.c                    |  2 +-
 drivers/usb/serial/mos7840.c                       |  2 +-
 fs/ext4/super.c                                    |  2 +-
 fs/jbd2/journal.c                                  |  2 +
 fs/nilfs2/segment.c                                |  2 +-
 include/linux/timer.h                              | 64 +++++++++++++++++++---
 kernel/sched/psi.c                                 |  1 +
 kernel/time/timer.c                                | 64 ++++++++++++----------
 kernel/workqueue.c                                 |  4 +-
 net/802/garp.c                                     |  2 +-
 net/802/mrp.c                                      |  2 +-
 net/bridge/br_multicast.c                          |  6 +-
 net/bridge/br_multicast_eht.c                      |  4 +-
 net/core/gen_estimator.c                           |  2 +-
 net/core/neighbour.c                               |  2 +
 net/ipv4/inet_timewait_sock.c                      |  1 +
 net/ipv4/ipmr.c                                    |  2 +-
 net/ipv6/ip6mr.c                                   |  2 +-
 net/mac80211/mesh_pathtbl.c                        |  2 +-
 net/netfilter/ipset/ip_set_list_set.c              |  2 +-
 net/netfilter/ipvs/ip_vs_lblc.c                    |  2 +-
 net/netfilter/ipvs/ip_vs_lblcr.c                   |  2 +-
 net/netfilter/xt_LED.c                             |  2 +-
 net/rxrpc/conn_object.c                            |  2 +-
 net/sched/cls_flow.c                               |  2 +-
 net/sunrpc/svc.c                                   |  2 +-
 net/sunrpc/xprt.c                                  |  2 +-
 net/tipc/discover.c                                |  2 +-
 net/tipc/monitor.c                                 |  2 +-
 sound/i2c/other/ak4117.c                           |  2 +-
 sound/synth/emux/emux.c                            |  2 +-
 93 files changed, 227 insertions(+), 169 deletions(-)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
