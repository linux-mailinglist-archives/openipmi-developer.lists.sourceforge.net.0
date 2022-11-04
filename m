Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9634A61A166
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Nov 2022 20:42:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1or2aI-0000FM-V4;
	Fri, 04 Nov 2022 19:42:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <SRS0=+Cc8=3E=goodmis.org=rostedt@kernel.org>)
 id 1or2aF-0000En-Cv; Fri, 04 Nov 2022 19:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MTwb9EZ3xrCGPAln3c1rHPPkamkYcbU4U5Oc/vM8ukM=; b=fZd82Jl9z/cg0s37pPqKreA0m4
 +fZ4291e0Y2Mbn8Ew26M2uN9Y0llo2sPr3ZnW/mvrPG5U28mcVxyQvD+gJfe+qmUkFoxYXsjxMtU8
 RaGmra2LgW7XM9mGvf9YkPe6zjFhxIltjDWW701hZmicsKoLXlC73iHmxRHWEW0AvWMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MTwb9EZ3xrCGPAln3c1rHPPkamkYcbU4U5Oc/vM8ukM=; b=VTfn02QFviSK9dHXcuo8afOE9s
 NSlnn0hw7ncLT74WcE5xn6rXsQTDDmX12iYDnMUyXDHG+zBVkL3Mj9GIVhmmphMa0+5dHzuchGc2A
 Qy15VKmBHXwu1zsygVPFzYiTsI6RiAKrFMmzEX8s0U4sXDo0eW+r/odv9LVwEXGaaqRI=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1or2a9-0004Tl-V0; Fri, 04 Nov 2022 19:42:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 02FAFB82DCA;
 Fri,  4 Nov 2022 19:42:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32A74C433D6;
 Fri,  4 Nov 2022 19:42:11 +0000 (UTC)
Date: Fri, 4 Nov 2022 15:42:09 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20221104154209.21b26782@rorschach.local.home>
In-Reply-To: <20221104192232.GA2520396@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -4.8 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri,
 4 Nov 2022 12:22:32 -0700 Guenter Roeck <linux@roeck-us.net>
 wrote: > Unfortunately the renaming caused some symbol conflicts. > > Global
 definition: timer_shutdown > > File Line > 0 time.c 93 static inline void
 timer_shutdown(struct clock_event_device *evt) > 1 arm_a [...] 
 Content analysis details:   (-4.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1or2a9-0004Tl-V0
Subject: Re: [Openipmi-developer] [RFC][PATCH v3 00/33] timers: Use
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
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org, rcu@vger.kernel.org,
 cgroups@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-edac@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-parisc@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 4 Nov 2022 12:22:32 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> Unfortunately the renaming caused some symbol conflicts.
> 
> Global definition: timer_shutdown
> 
>   File             Line
> 0 time.c            93 static inline void timer_shutdown(struct clock_event_device *evt)
> 1 arm_arch_timer.c 690 static __always_inline int timer_shutdown(const int access,
> 2 timer-fttmr010.c 105 int (*timer_shutdown)(struct clock_event_device *evt);
> 3 timer-sp804.c    158 static inline void timer_shutdown(struct clock_event_device *evt)
> 4 timer.h          239 static inline int timer_shutdown(struct timer_list *timer)

$ git grep '\btimer_shutdown'
arch/arm/mach-spear/time.c:static inline void timer_shutdown(struct clock_event_device *evt)
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
arch/arm/mach-spear/time.c:     timer_shutdown(evt);
drivers/clocksource/arm_arch_timer.c:static __always_inline int timer_shutdown(const int access,
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_VIRT_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_PHYS_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_VIRT_ACCESS, clk);
drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_PHYS_ACCESS, clk);
drivers/clocksource/timer-fttmr010.c:   int (*timer_shutdown)(struct clock_event_device *evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
drivers/clocksource/timer-sp804.c:static inline void timer_shutdown(struct clock_event_device *evt)
drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);
drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);

Honestly, I think these need to be renamed, as "timer_shutdown()"
should be specific to the timer code, and not individual timers.

I'll start making a patch set that starts by renaming these timers,
then adds the timer_shutdown() API, and finished with the trivial
updates, and that will be a real "PATCH" (non RFC).

Linus, should I also add any patches that has already been acked by the
respective maintainer?

-- Steve


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
