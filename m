Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC1561A0E5
	for <lists+openipmi-developer@lfdr.de>; Fri,  4 Nov 2022 20:22:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1or2HD-0006Dd-Sv;
	Fri, 04 Nov 2022 19:22:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1or2H6-0006DQ-6K;
 Fri, 04 Nov 2022 19:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+CrrtBZaWaBIBfDEz9a9BacRZtXiPhURWnCTyiBknKU=; b=CqifBqn1FOWdnDv/zk6zMdc6qY
 SRe4+CgwS2V03gvr83B/W7opBZ1taujMmSIEdZk8sJXb1SuYEUamlxSWiG2Czzm2NvI3oynlyB6qa
 tHPeN+iFXp7coj62eSRHSK1uwxdXFw2FZHwJsk47FgDPXGpGMX86FoIjXEQxHgH0qQDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+CrrtBZaWaBIBfDEz9a9BacRZtXiPhURWnCTyiBknKU=; b=QWwccmRh1tWQeYI5otofmmyxpq
 fmQKVY/TuwoEnRnu7wISBeDo9dmb9h2utXHEeB1mQTXDHxB+B86WtsW9tccpUDv8w+wQIv1MLC9ZF
 ltRFDukRD1KVv0hO6kPiKK2f3rRy9eq9UE4rY0giKp26cQevnr+TPbgc92mN2B6EYjdQ=;
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1or2H2-00C0Wr-LT; Fri, 04 Nov 2022 19:22:44 +0000
Received: by mail-oi1-f178.google.com with SMTP id r83so6189212oih.2;
 Fri, 04 Nov 2022 12:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=+CrrtBZaWaBIBfDEz9a9BacRZtXiPhURWnCTyiBknKU=;
 b=f7SabvhELt4tvu58wD/HGUQtx2q3c42bp4689l/poRMwjHONs2y+uJybLQ6btnBic8
 iSYK/T680hWQ8YubanyiQ/jk4TxtOOSgyzZyzTjBStaumbjkRAc3PTfrEP9z1ET4ppjL
 os0cjm+F8kyIi27l3gX1TCu+EYDnb6I6sC6rEheSVAEJvEJuF1rkSUHHVYhQ9PjtWNZC
 /KoHUhscmHo/jN1PCMTUxC8NT4KR3QukfsWt+gbIkumzBVh1p3Sny9bKzJeet5110tpk
 HzVFo5k5iKj3j88DvNf1ucVPdH/av+bU0vEDu76g9bGVlHfWhJDUhqHlYTifQBH3QuBi
 oWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+CrrtBZaWaBIBfDEz9a9BacRZtXiPhURWnCTyiBknKU=;
 b=BinDEANe74X+TsyZHqJmgpApa5Ftl42vT4LbugchelZXK+s023KI7O2goI6mEt3Tw9
 IpLzxgMG1zf2zJf3c6YEv9x32qPipTe6s5gQt1WoElFQr6DBA47DbSRqWP8sRWVSBSoc
 a1o2aMs1hQXj8KXrST56IDpg2ivjUc7PNRi+5DEkJDhKFOZl2Nc6vL0sCgfdkmyThzEg
 PdfJkVZYVCt49aptaXcekCOYE8UKj6oaFLRhahsid6KhGQEXxcJttYtumdOQUkLA7AvT
 7xTNm1Zg8TXw5s88DdAEU9YtVp2bxvmYy6PcHxhX0VrxpYSamS7Hwu24VeC3Ca5WxY/u
 Rm/Q==
X-Gm-Message-State: ACrzQf21IUPJme+p9dG3b7UyNXQuZl7Lhu4ho6XeEX6+NJyylcCV2PWG
 qdICSLgn+NYKLdGe21TxmSM=
X-Google-Smtp-Source: AMsMyM5j57nGJ6ihP9Jnolnn5vAnBZp3njFzbqkVuO45h5Gs91zBtM7qMBV3ZTA/jEfxwCmFGOBzYQ==
X-Received: by 2002:aca:2819:0:b0:359:f8a7:c88 with SMTP id
 25-20020aca2819000000b00359f8a70c88mr260428oix.278.1667589755023; 
 Fri, 04 Nov 2022 12:22:35 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 n132-20020acabd8a000000b003547a3401e6sm1729901oif.43.2022.11.04.12.22.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Nov 2022 12:22:34 -0700 (PDT)
Date: Fri, 4 Nov 2022 12:22:32 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20221104192232.GA2520396@roeck-us.net>
References: <20221104054053.431922658@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104054053.431922658@goodmis.org>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Nov 04, 2022 at 01:40:53AM -0400,
 Steven Rostedt wrote:
 > > Back in April, I posted an RFC patch set to help mitigate a common issue
 > where a timer gets armed just before it is freed, and whe [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.178 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.178 listed in wl.mailspike.net]
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
X-Headers-End: 1or2H2-00C0Wr-LT
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

On Fri, Nov 04, 2022 at 01:40:53AM -0400, Steven Rostedt wrote:
> 
> Back in April, I posted an RFC patch set to help mitigate a common issue
> where a timer gets armed just before it is freed, and when the timer
> goes off, it crashes in the timer code without any evidence of who the
> culprit was. I got side tracked and never finished up on that patch set.
> Since this type of crash is still our #1 crash we are seeing in the field,
> it has become a priority again to finish it.
> 
> This is v3 of that patch set. Thomas Gleixner posted an untested version
> that makes timer->function NULL as the flag that it is shutdown. I took that
> code, tested it (fixed it up), added more comments, and changed the
> name to timer_shutdown_sync(). I also converted it to use WARN_ON_ONCE()
> instead of just WARN_ON() as Linus asked for.
> 

Unfortunately the renaming caused some symbol conflicts.

Global definition: timer_shutdown

  File             Line
0 time.c            93 static inline void timer_shutdown(struct clock_event_device *evt)
1 arm_arch_timer.c 690 static __always_inline int timer_shutdown(const int access,
2 timer-fttmr010.c 105 int (*timer_shutdown)(struct clock_event_device *evt);
3 timer-sp804.c    158 static inline void timer_shutdown(struct clock_event_device *evt)
4 timer.h          239 static inline int timer_shutdown(struct timer_list *timer)

Guenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
