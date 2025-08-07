Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD29B1DD9F
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Aug 2025 21:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9eVwePZmnj2nJ2+XqMzNUOjPurrcD7T1cLXrGe778h4=; b=LraNL+Ccs1ZLWzzbze/PX7rn9j
	nW187SLJfChS+2xItkhPJRICqJBBaPbOv/+c45uyxXTaWxY7QewzY4OpOohGYdaHUk5wn+9BwGa0a
	8YsSoUbZLHgpC0gCo2Cjn/lkNN0HkdGd3oTdCDEA2g2OyEnhmg5XQlxi9Hqu2iUur6zw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uk6WP-0008MT-Nw;
	Thu, 07 Aug 2025 19:43:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <fred@cloudflare.com>) id 1uk6WN-0008MC-UJ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 19:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ksN7QoEbspBuW98h37TMe0g97VeYrOETORSi4asOWIE=; b=HppLplyVbUkanulhe6JcZsL+R0
 HKQTMZ7J81LWO8N3lQwLZVBNbb5lRWNRzMM5vApPM/F5lsYbcErt40ZoHdB374Tf/bYgGIK0Rk8LU
 yPxfzc071yVcrcQUZD3Uu99AwoxHj++PMF0vhx3CAYPu5pIQAZHOSILnoAs0tVVn3Gew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ksN7QoEbspBuW98h37TMe0g97VeYrOETORSi4asOWIE=; b=HdH8yZ/t67oompvLNIl54KJuyI
 DB+9NgZDOVqvEUQnessq9Q28yP2VOhwFe9np9DWG2LHl71XKRt+KPkg9ZnPDekjDTixY2z9LC4xXn
 +jvbLIfpAWF0d36olQ8hKQfuqpx4ePNoaGGpBDMseQ2T4T5WN1SeOJTBvdHSncHIr590=;
Received: from mail-il1-f181.google.com ([209.85.166.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uk6WN-0004uQ-EA for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 19:43:28 +0000
Received: by mail-il1-f181.google.com with SMTP id
 e9e14a558f8ab-3e51dc20af6so13460165ab.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Aug 2025 12:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1754595796; x=1755200596;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ksN7QoEbspBuW98h37TMe0g97VeYrOETORSi4asOWIE=;
 b=CEi4yyMt+O658mbbc/AF3OaqkMr8eTR+PF78YNIROnM+Obp5gPSU8nDmJwYw2ORxgb
 NXY5f/uNs1INhLBZ7JhvEA9lGC+j09/GT0r0/ADvx8zCZCHby4lkUL93WFlULpIcsgBP
 N92l0Mub5KgDWHB5bJXNADFZF4yLUHKoyp6pT0GGsm1LlpzCL4b3wfSHqDMOXhbydHlX
 qGzQ7xQeGNSN0Dt71SUcqBui6cKRJPLYeuLr/ksLH4NYJ4cPBHoP//sJDybWPbfoyjCP
 DAIUUaWRcr99vXCyjiQ5QgKdplvzZZ/aceC0HyxXKCBjf9CeIV6DnxifPSH4xBTFdv7F
 3rLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754595796; x=1755200596;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ksN7QoEbspBuW98h37TMe0g97VeYrOETORSi4asOWIE=;
 b=j8rcrRql/7c6GlfBrlCJ0za/gdi/GImmfzIBjXEjDhTEmaViTs9jB0c7qz1CTGdaBC
 GWWccaeEDQ7TMFco47GicdcyNbX3B/RgBAMDjvynVb4FtnDHNt8j38vV/SKZqdEcV4Ag
 XHc8HjhMmeNgFkZZYSRMf5I7cXYcrwscvH4JUpXxNSuDSe1PjnPRdia5NiFLjvkYvfR7
 Hyepf2cwYRRF6lJHNuAK3x+B8KtWoAOt2rhpgplSvin0rowCU6nAxIlRw2W5aP1bEYbt
 8vHMB8gR2ISaqbfgVn2DhkhJ1GOIC1/BSJPQYZ1ZuJiBYsG6Y1Bi+RkzEz/IbqWaGQPT
 8rkQ==
X-Gm-Message-State: AOJu0YzN8ty7pR+ZuGu8664xKFe8uDYlgDHe2bACejF6+MCaYrrGDQ2c
 CyHThQ6REj6xyO8+EbTeBtcEoatVt5k5CxnY8fpRN7id0JUOzpgiBJClFCg8vLTOnB0=
X-Gm-Gg: ASbGncsnXiS/xrIJFOKGGpsfTd8x3F2+5GKu9a6DDlyRNBIPKJHaOflfgArJ9t7PD68
 lp8Rzt6EOWOpWM4MsxET7W9v6iCdho2TYqSvvGi6RtkO0FARromm21BtDMR1aeziqU8fso90GGZ
 qEdXQctowJxmS5+Iz2i5g2QRm+9tVingaE7vQNXtne0rwsTnfQc5swFIXZ3XwbTazTtVmNh0QUe
 qzQO8yq15yqxopetRm4XuKlz8iX3XjSc51IrwuESKW9bBBoKTTjtS2abtBZsKpvmF2ny/K1cb4H
 0IHsdoRrALWPn33ij9/s83xR8hy9iThx+dcaO5zWLCtRDwRDURPM3HT3bt0LKbcPSW7c/CSQb0I
 ujY9s
X-Google-Smtp-Source: AGHT+IFA/sAzgFcR2AzlnIx+4w0z6jjnn+uYNSIEDm7YokMqWR7scpx2gbqcep8UiSxQf6yrkGVliw==
X-Received: by 2002:a05:6e02:170c:b0:3e5:261c:bac0 with SMTP id
 e9e14a558f8ab-3e53317c453mr6676585ab.22.1754595796368; 
 Thu, 07 Aug 2025 12:43:16 -0700 (PDT)
Received: from CMGLRV3 ([2a09:bac5:8255:1b37::2b6:36])
 by smtp.gmail.com with ESMTPSA id
 e9e14a558f8ab-3e5254b5765sm11400145ab.34.2025.08.07.12.43.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Aug 2025 12:43:15 -0700 (PDT)
Date: Thu, 7 Aug 2025 14:43:14 -0500
To: Corey Minyard <corey@minyard.net>
Message-ID: <aJUB0gQZ6cH1zMRE@CMGLRV3>
References: <aJO3q8JiVXKewMjW@CMGLRV3>
 <CA+QrTELaLFRGn1ynG5dG+KB_40aPA31hU5QgLn7ikh2Zbk3Hpg@mail.gmail.com>
 <aJPGItElGBN3nilX@mail.minyard.net> <aJPK6Vuxc1jL-uu_@CMGLRV3>
 <aJPccSayM2nXk891@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aJPccSayM2nXk891@mail.minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 06, 2025 at 05:51:29PM -0500,
 Corey Minyard wrote:
 > On Wed, Aug 06, 2025 at 04:36:41PM -0500, Frederick Lawler wrote: > > On
 Wed, Aug 06, 2025 at 04:16:18PM -0500, Corey Minyard wrote: > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.181 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1uk6WN-0004uQ-EA
Subject: Re: [Openipmi-developer] [BUG] ipmi_si: watchdog: Watchdog detected
 hard LOCKUP
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
From: Frederick Lawler via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Frederick Lawler <fred@cloudflare.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 06, 2025 at 05:51:29PM -0500, Corey Minyard wrote:
> On Wed, Aug 06, 2025 at 04:36:41PM -0500, Frederick Lawler wrote:
> > On Wed, Aug 06, 2025 at 04:16:18PM -0500, Corey Minyard wrote:
> > > On Wed, Aug 06, 2025 at 03:19:02PM -0500, Fred Lawler wrote:
> > > > + CC: Corey Minyard <corey@minyard.net>
> > > > 
> > 
> > > I'm wondering if something is happening with the BMC resetting and
> > > interactions with ACPI involved in that.  Adding the extra part of
> > > trying to talk to the BMC while it's being reset could cause the BMC to
> > > get confused and do bad things?
> > > 
> > 
> > Sure, it's a possibility we explored. We have a lot of automation.
> > Predominately of which is a prometheus module exporting IPMI information
> > from the sysfs files. And we also have config management that's querying
> > sysfs files to regulate updates etc... Sometimes, the config management
> > automation will attempt to reset the BMC.
> 
> Ok.  I have tests that do BMC resets, but I can't run at the scale you
> do, and I'm running in a simulator so it's not going to be have the
> same.
> 
> The other possibility is the processor goes into the idle code while
> interrupts are off, but I think the kernel has checks all around that.
> I can't think of how else a processor would get stuck in idle.
> 

Yes, it's a bit of an odd case. There's nothing obvious reported by the
crash utility. By the time we get the NMI/panic, the CPUs are off doing
something else in our crash typical case. That said, earlier this week I got a
hard lockup outside of a BMC reset, but the node had too many MCE
correctable memory errors.

For sake of completeness, I'll post that stack trace here anyway since
that may provide some more context clues. In this case, I did catch two
separate reads to sysfs files, and then they appear to have competed.
The cat process seemed to already be off CPU, but the KCS
message is still coming in at the same time the python script was being
processed too. Only the python run was on CPU at time of crash. But NMI
panic was still on a idle CPU. Unfortunately, I didn't write down all
the logs this one, so it's missing the idle state NMI for watchdog, but
hopefully the snippets show what's happening. I posted this below.

> > 
> > > > >
> > > > > I tried also tried to load the CPUs with stress-ng, but the best I can do
> > > > > are the hung tasks.
> > > > >
> > > > > I identified that sni_send()[1] could be locked behind the
> > > > > spin_lock_irqsave() and within the KCS send handler, there's another irq
> > > > > save lock. I suspect this is where we're getting hung up. Below is a
> > > > > sample stack trace + log output.
> > > 
> > > Yeah, I don't see that in the traceback.  There is a lock in the KCS
> > > sender, but I don't see how that could do anything.
> > > 
> > > Maybe you could try changing the cpuidle handler?  That would be at
> > > least something to try.
> > > 
> > 
> > Would that help in forming a reproducer? I'd need to deploy any kernel
> > modifications fleet wide to cast a wide enough net. The lockups arn't
> > extremely consistent. We may get a couple or more a week.
> 
> Ah, so this isn't readily reproducable.  Bummer.
> 
> If the problem goes away if you change the cpuidle handler to something
> non-ACPI, that would be a big clue that it's an ACPI issue.
> 
> > 
> > Lastly, I have the rate limit patch backported. I'll be able to start
> > testing with that tomorrow, and same with loading the IPMI watchdog
> > module.
> 
> Ok.  I don't have much hope for it making much difference, but it's safe
> and will be coming in the next kernel release.
>

It occurred to me last night that I'd probably like a rate limit on the KCS
messages as well. I didn't see if a patch for that was made. I can whip
that up sometime next week, that could be of use to anyone.

[1533534.869508] [Hardware Error]: Corrected error, no action required.
[1533534.884635] [Hardware Error]: CPU:1 (17:31:0) MC18_STATUS[Over|CE|MiscV|AddrV|-|-|SyndV|CECC|-|-|-]: 0xdc2040000000011b
[1533534.912122] [Hardware Error]: Error Addr: 0x0000000313c7a020
[1533534.926641] [Hardware Error]: IPID: 0x0000009600350f00, Syndrome: 0x9fec08000a800a01
[1533534.943278] [Hardware Error]: Unified Memory Controller Ext. Error Code: 0
[1533534.946635] EDAC MC0: 1 CE Cannot decode normalized address on mc#0csrow#1channel#3 (csrow:1 channel:3 page:0x0 offset:0x0 grain:64 syndrome:0x800)
[1533535.369487] INFO: task cat:1844873 blocked for more than 10 seconds.
[1533535.385145]       Tainted: G        W  O       6.12.35-cloudflare-2025.6.15 #1
[1533535.401614] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[1533535.418715] task:cat             state:D stack:0     pid:1844873 tgid:1844873 ppid:1844872 task_flags:0x400000 flags:0x00004002
[1533535.447475] Call Trace:
[1533535.458691]  <TASK>
[1533535.469154]  __schedule+0x4fa/0xbf0
[1533535.481433]  schedule+0x27/0xf0
[1533535.493181]  __get_guid+0xf4/0x130 [ipmi_msghandler]
[1533535.506325]  ? __pfx_autoremove_wake_function+0x10/0x10
[1533535.519910]  __bmc_get_device_id+0xd6/0xa30 [ipmi_msghandler]
[1533535.534459]  ? srso_return_thunk+0x5/0x5f
[1533535.546509]  ? srso_return_thunk+0x5/0x5f
[1533535.558540]  ? __memcg_slab_post_alloc_hook+0x21b/0x410
[1533535.571722]  aux_firmware_rev_show+0x38/0x90 [ipmi_msghandler]
[1533535.585304]  ? __kmalloc_node_noprof+0x3f6/0x450
[1533535.598144]  ? seq_read_iter+0x376/0x460
[1533535.609621]  dev_attr_show+0x1c/0x40
[1533535.621024]  sysfs_kf_seq_show+0x8f/0xe0
[1533535.632316]  seq_read_iter+0x11f/0x460
[1533535.643172]  ? security_file_permission+0x9/0xb0
[1533535.655102]  vfs_read+0x260/0x330
[1533535.665368]  ksys_read+0x65/0xe0
[1533535.675559]  do_syscall_64+0x4b/0x110
[1533535.686324]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[1533535.698530] RIP: 0033:0x7f72b587125d
[1533535.708857] RSP: 002b:00007ffccc21bb48 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
[1533535.723411] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f72b587125d
[1533535.737361] RDX: 0000000000020000 RSI: 00007f72b5755000 RDI: 0000000000000003
[1533535.751191] RBP: 0000000000020000 R08: 00000000ffffffff R09: 0000000000000000
[1533535.764847] R10: 00007f72b5788b60 R11: 0000000000000246 R12: 00007f72b5755000
[1533535.778536] R13: 0000000000000003 R14: 0000000000020000 R15: 0000000000000000
[1533535.792210]  </TASK>

crash> bt -l 1781073
PID: 1781073  TASK: ffff9d91c7040000  CPU: 81   COMMAND: "/usr/bin/python"
 #0 [ffffb3a171683c00] __schedule at ffffffff9d559eea
    /cfsetup_build/build/linux/kernel/sched/core.c: 5338
 #1 [ffffb3a171683c80] schedule at ffffffff9d55a617
    /cfsetup_build/build/linux/arch/x86/include/asm/preempt.h: 84
 #2 [ffffb3a171683c90] __get_guid at ffffffffc22aa574 [ipmi_msghandler]
 #3 [ffffb3a171683ce8] __bmc_get_device_id at ffffffffc22aa696 [ipmi_msghandler]
 #4 [ffffb3a171683da0] aux_firmware_rev_show at ffffffffc22ab1c8 [ipmi_msghandler]
 #5 [ffffb3a171683dd0] dev_attr_show at ffffffff9d1175dc
    /cfsetup_build/build/linux/drivers/base/core.c: 2425
 #6 [ffffb3a171683de8] sysfs_kf_seq_show at ffffffff9cc64caf
    /cfsetup_build/build/linux/fs/sysfs/file.c: 60
 #7 [ffffb3a171683e10] seq_read_iter at ffffffff9cbddf7f
    /cfsetup_build/build/linux/fs/seq_file.c: 230
 #8 [ffffb3a171683e68] vfs_read at ffffffff9cba8590
    /cfsetup_build/build/linux/fs/read_write.c: 489
 #9 [ffffb3a171683f00] ksys_read at ffffffff9cba9165
    /cfsetup_build/build/linux/fs/read_write.c: 713
#10 [ffffb3a171683f38] do_syscall_64 at ffffffff9d550c8b
    /cfsetup_build/build/linux/arch/x86/entry/common.c: 52
#11 [ffffb3a171683f50] entry_SYSCALL_64_after_hwframe at ffffffff9d60012f
    /cfsetup_build/build/linux/arch/x86/entry/entry_64.S: 130
    RIP: 00007f04e1b7c29c  RSP: 00007ffea7aaf6c0  RFLAGS: 00000246
    RAX: ffffffffffffffda  RBX: 0000000000a840f8  RCX: 00007f04e1b7c29c
    RDX: 0000000000001001  RSI: 000000002fd06ef0  RDI: 00000000000000c1
    RBP: 00007f04e1a82fc0   R8: 0000000000000000   R9: 0000000000000000
    R10: 0000000000000000  R11: 0000000000000246  R12: 0000000000001001
    R13: 000000002fd06ef0  R14: 00000000000000c1  R15: 0000000000a41520
    ORIG_RAX: 0000000000000000  CS: 0033  SS: 002b

crash> files 1781073
...
193 ffff9db5132e5800 ffff9dafb18bd200 ffff9da7b780bcf0 REG  /sys/devices/platform/ipmi_bmc.0/aux_firmware_revision

crash> log -c
...
[1533553.998160] [      C7] ipmi_si IPI0001:00: KCS in invalid state 6
[1533554.009156] [      C7] ipmi_si IPI0001:00: KCS in invalid state 8
[1533554.019973] [T1844873] ipmi_si IPI0001:00: KCS in invalid state 9
[1533554.031005] [     C81] ipmi_si IPI0001:00: IPMI message handler: device id fetch failed: 0xd5



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
