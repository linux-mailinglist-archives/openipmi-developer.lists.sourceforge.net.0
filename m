Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C488E61A278
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Nov 2022 21:42:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1or3W4-0003WH-3o;
	Fri, 04 Nov 2022 20:42:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1or3Vy-0003W4-Ry;
 Fri, 04 Nov 2022 20:42:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LPWTHAu4vAKpdYGymfUO7xJHpj+KFNZBd9yee/lAZWg=; b=ZB9hXaztKsOWqH+dW4PfLnjIZK
 nJ2POliS2CGGOdCPSSXM+Y19Ci+7OFSExCrArCwAd5gYJ70ItX1KPdgns2iuTHZBfHQadT9yYuIlk
 TUuehMHhhNTD36JluGE3sUYGEIIvJ4csySXLlW17O6ACdNw3fDCDOzaEqDJ5Zm+qa5Uo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LPWTHAu4vAKpdYGymfUO7xJHpj+KFNZBd9yee/lAZWg=; b=bM9JK8pMLXzhOoQ5NYAGJQL5QT
 feimgRqhb6UTeasNA7NnFsM7C2crxgQPtr29dKDygxIILVRr1jJ7s1lYdNwsNa6y4fSBkWBdWxmhv
 mZJl9JMYvgkzqXvFWp+pzsPY4Kkhi32rCx2omP9AFW9LT1uku5HjMl1rvVIKfNmSAO14=;
Received: from mail-oa1-f44.google.com ([209.85.160.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1or3Vv-00C3tS-AK; Fri, 04 Nov 2022 20:42:10 +0000
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-13ba86b5ac0so6807660fac.1; 
 Fri, 04 Nov 2022 13:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=LPWTHAu4vAKpdYGymfUO7xJHpj+KFNZBd9yee/lAZWg=;
 b=lOkZpKJZGrRdTwW1q1n3PYtNavkFYrwxfV2GFvR6YWuaVKwLPk4VJ5U5ZDx0nuSETe
 4J0qx8jESJCo6y+3k5I/RIDeXo7Y6jSgRRXz2DJFkzXiePACdAOetFhkjtL5bcgp83ac
 L9LEH/9+5kOlP36xHlU1S0A9pTTFCmy4MsC6KZRblm7eTmGH17TdH1F+e+pVpfC6YibP
 OD0bbJB9hlpboqehpl8hGHOw6SotGw7ZzxTK+J5+Bkycl7auUJR59DVXhb+Lm2qdFRIM
 WNNsyFThpDNs5XVQPsJWiyibl8FySITsqyv8EbD5o54HP3A3J+dpKDkJeIuzl/+kIUVP
 0S2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LPWTHAu4vAKpdYGymfUO7xJHpj+KFNZBd9yee/lAZWg=;
 b=ddl4sV33W5Xui0q5Us4vVGfnMMtxPndF7tpauj7g2VtjbQ0xaqJXyIaTx1gikWvGio
 p+Hz9IhLCORHOuVIN48I1D7aoKbdAViRl2lxOIEBd1AfYNqtGVw37CfocMrZ7iH8DP+5
 MMD8xKXzQT4n3NZlRzu9GocuEuk02L4vIlmhjQ+CpzeLMYYMDSGlHiUN4FuWofquwxGL
 FgprreSkYJYgIlawPWpPBvx/kgSfs844kdK4vRgTAe8vAdzdDzdNLTbBhVXRSrx6ubtE
 HCPBda7ZmRCu7Qo3PlClP5DTiWm6su8sGHGzcJJbqoPYmLe04GgyEtvpYDt/P/mEtgzh
 WUlQ==
X-Gm-Message-State: ACrzQf0AgXY4TwuyteqZjqnKzeYr1UyZYzpdL+QkhFwHbNmrxLQ1o7M+
 qc9uiW0aZ6LBNrDnttG3Kg4=
X-Google-Smtp-Source: AMsMyM4YoEr7WxXxO25Opwv5nzrxjGmv3HfOq/bk78IdaTMObaueZEnFddqxBoG0u+KT3n0Hv+LaGQ==
X-Received: by 2002:a05:6870:9597:b0:13a:f95a:2bc1 with SMTP id
 k23-20020a056870959700b0013af95a2bc1mr32722633oao.292.1667594521690; 
 Fri, 04 Nov 2022 13:42:01 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a9-20020a544e09000000b00359ad661d3csm43433oiy.30.2022.11.04.13.42.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 13:42:00 -0700 (PDT)
Date: Fri, 4 Nov 2022 13:41:59 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104204159.GA506794@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
 <20221104192232.GA2520396@roeck-us.net>
 <20221104154209.21b26782@rorschach.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104154209.21b26782@rorschach.local.home>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Nov 04, 2022 at 03:42:09PM -0400,
 Steven Rostedt wrote:
 > On Fri, 4 Nov 2022 12:22:32 -0700 > Guenter Roeck <linux@roeck-us.net>
 wrote: > > > Unfortunately the renaming caused some symbol conf [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.44 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.44 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1or3Vv-00C3tS-AK
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

On Fri, Nov 04, 2022 at 03:42:09PM -0400, Steven Rostedt wrote:
> On Fri, 4 Nov 2022 12:22:32 -0700
> Guenter Roeck <linux@roeck-us.net> wrote:
> 
> > Unfortunately the renaming caused some symbol conflicts.
> > 
> > Global definition: timer_shutdown
> > 
> >   File             Line
> > 0 time.c            93 static inline void timer_shutdown(struct clock_event_device *evt)
> > 1 arm_arch_timer.c 690 static __always_inline int timer_shutdown(const int access,
> > 2 timer-fttmr010.c 105 int (*timer_shutdown)(struct clock_event_device *evt);
> > 3 timer-sp804.c    158 static inline void timer_shutdown(struct clock_event_device *evt)
> > 4 timer.h          239 static inline int timer_shutdown(struct timer_list *timer)
> 
> $ git grep '\btimer_shutdown'
> arch/arm/mach-spear/time.c:static inline void timer_shutdown(struct clock_event_device *evt)
> arch/arm/mach-spear/time.c:     timer_shutdown(evt);
> arch/arm/mach-spear/time.c:     timer_shutdown(evt);
> arch/arm/mach-spear/time.c:     timer_shutdown(evt);
> drivers/clocksource/arm_arch_timer.c:static __always_inline int timer_shutdown(const int access,
> drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_VIRT_ACCESS, clk);
> drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_PHYS_ACCESS, clk);
> drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_VIRT_ACCESS, clk);
> drivers/clocksource/arm_arch_timer.c:   return timer_shutdown(ARCH_TIMER_MEM_PHYS_ACCESS, clk);
> drivers/clocksource/timer-fttmr010.c:   int (*timer_shutdown)(struct clock_event_device *evt);
> drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> drivers/clocksource/timer-fttmr010.c:   fttmr010->timer_shutdown(evt);
> drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = ast2600_timer_shutdown;
> drivers/clocksource/timer-fttmr010.c:           fttmr010->timer_shutdown = fttmr010_timer_shutdown;
> drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.set_state_shutdown = fttmr010->timer_shutdown;
> drivers/clocksource/timer-fttmr010.c:   fttmr010->clkevt.tick_resume = fttmr010->timer_shutdown;
> drivers/clocksource/timer-sp804.c:static inline void timer_shutdown(struct clock_event_device *evt)
> drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);
> drivers/clocksource/timer-sp804.c:      timer_shutdown(evt);
> 
> Honestly, I think these need to be renamed, as "timer_shutdown()"
> should be specific to the timer code, and not individual timers.

Yes, that is what I did locally. I am repeating my test now with that
change made.

Guenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
