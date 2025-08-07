Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2FCB1DE52
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Aug 2025 22:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aml/MmhZDqTCnXZ/uNkPYhqHloeJ7L5WLIfCPy6QgQo=; b=ECiSiEIHut2KGKFQvd3HtQtMm5
	g2QJ/dVP3umw+BACQiULLs5dA2IgwGiY4NoZzLVEQF0i4qf/lWYfnz5wYPyXrUz2sggwh8HTigTqw
	fqxHEporoRvpnVpDbY4SSHmM6S/XHJfJcEusmCyImq5CaK2k2MfOqXCskjCqEOVkm/dw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uk7En-00030v-UB;
	Thu, 07 Aug 2025 20:29:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uk7El-00030n-Og
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 20:29:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aIqlvQFrxYwl3uh7TgoGBkH+JrtKoH+8x+kfuvMJktA=; b=mDkBYLV2DpYT1pQjNJCFXNJPrv
 Rn8xfJdSfBTDYSDVsBc6CFW1Ibuh2qWr7BdzExMR55ESNtvyRjNrS/D6WIMiseblq0nonNEL6NWSk
 aFaNym2rlEQ3IaZhjLJTxEaHgtrt4XPZ7jFQQ8ku36lABamiLUPbwNoreTiHO9cP4v3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aIqlvQFrxYwl3uh7TgoGBkH+JrtKoH+8x+kfuvMJktA=; b=eC9/cGw9HAgRx1foEA1uKM2mDa
 j65H+zv/rbdiwRljcC5hyg8uldwSKTvYqrQv3fyGzsRFwn5qY9cmQrY4okBPKLEIeVs02dptQJ8TP
 RU0Z4Ry7S7kMIg0KEfocNUW/RivhJaQl11z5MvLVmiDM/srkN3he4OLmxL+LdZ3tGza4=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uk7El-0007R7-27 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 20:29:19 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 46e09a7af769-741b1fe0d4fso891635a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Aug 2025 13:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754598553; x=1755203353;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aIqlvQFrxYwl3uh7TgoGBkH+JrtKoH+8x+kfuvMJktA=;
 b=Oj0/3iYPR8zbZjJX3k0fU7U0T2OZCUwccIT0Pi3xdn+NoRLHReVWcOcPhhoTcIO0WJ
 nBSDxexwSRLa3FQ9idbp0tV3g6fwgCpLbmcWHvyECMeWVD60A0ekYOtQMx20hp9ApAH5
 eYFf2u+oofhrm+AHX5n9DlaPB5lwWgpUDzILhvXKgEgOZtcvQPwDZNtC9RDKBWTlxbvs
 AQo7wsfv4HZ6O3fjhD9ysxVjuJa48yB2WXhm8y+XMi4fPOjjkdKKxw/Qr+hl/Q95/w5v
 sHQJi2pV5EP9vC/Pf6rWf/5GbRfFXFx+MMq9N/UZznw5X/NiF4wHaQkoqhwHSMxf27kW
 TyNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754598553; x=1755203353;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aIqlvQFrxYwl3uh7TgoGBkH+JrtKoH+8x+kfuvMJktA=;
 b=X0pg/Wsl/KHY0dPqqasHz4QmNyRvh/H39I/GHfGGbdas3Owor7q28pRDZ3dkaMc7OJ
 RvBr8XoxZoFkUvcVT4TWB5I7K1KbdvNxrpB+LOFYMyZJNTzCZmQ9YQdZTOdUyZeo9qn+
 sz9svxttqS9Q5cSkez5SEY4TqFm7l1H2qhQGpWW1UX4Rae0ZQpSC5/jmV1YnHQSQxCCV
 9E/+CyC68aIlN69+rJfYbZYvEHVCR8QxezqVB/s690Us7LwfYB7EAfqhYegFWlh4etCf
 14a8+Yzc6gnc95zIeaRHkfwyNvad/1aQK0nE3HYUUrnGObvwvWAK2CrFoExw6Ukrn7Fh
 5Zhw==
X-Gm-Message-State: AOJu0YyCSovFVi8KDn4Y6PRCQaDNXdPGP5tysLmER53ohaZALCbb6F5g
 o74r4G7Wn92ior8E6k6bfkE2TWCvtQ7+DhuRJUB1lmyXrutPN3MxvvzmklBzd4Vhjms=
X-Gm-Gg: ASbGnctGiLvtFad/+RSxbjHFQzk5ys9rop7emGlt5kAzeP1gDBJzcVNq1NGqaU7JdXI
 WfwBqZLh0pT9/MBxURC+z9sHs2jSqke4X6d/YpAXwWlw+Gs9FwP3OSvGXEr+7Zy04+donWddP+2
 Xhd07Smt7WueCSoaifMAGeb2zvrUzc0821j33Ts6zmNVcdAnc7ZbAii1+FVr6GXxU0aMIQM1/l4
 ODo+dajIWE3pZzJF31yra9CZmrBaT7KQdd/BAxmAtLVDB+bZmfj1l18qtq+zWTf4sdb/eLP0yUg
 KDxPqQn5kdOWLumT+frWj04vK1+MDviIXTUZqCoeizy7bi1Vo5wbqDHqiP1DEZpJohrmNrmWbxJ
 0XZhSbPIB+wZHMyRXqvb/sQgMaw==
X-Google-Smtp-Source: AGHT+IHCZJurdRIwU4wfFIwuhvsPHbftFeS/wE2rphZqxkateyl66SIEUs0wEvn1pXagzXrZNrWWrg==
X-Received: by 2002:a05:6830:2b24:b0:73e:9857:9839 with SMTP id
 46e09a7af769-7432c5bf6d6mr396716a34.0.1754598553210; 
 Thu, 07 Aug 2025 13:29:13 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:e698:accb:897b:ca29])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-741a67da683sm3135237a34.40.2025.08.07.13.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Aug 2025 13:29:12 -0700 (PDT)
Date: Thu, 7 Aug 2025 15:29:08 -0500
From: Corey Minyard <corey@minyard.net>
To: Frederick Lawler <fred@cloudflare.com>
Message-ID: <aJUMlAG17c6lCgFq@mail.minyard.net>
References: <aJO3q8JiVXKewMjW@CMGLRV3>
 <CA+QrTELaLFRGn1ynG5dG+KB_40aPA31hU5QgLn7ikh2Zbk3Hpg@mail.gmail.com>
 <aJPGItElGBN3nilX@mail.minyard.net> <aJPK6Vuxc1jL-uu_@CMGLRV3>
 <aJPccSayM2nXk891@mail.minyard.net> <aJUB0gQZ6cH1zMRE@CMGLRV3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aJUB0gQZ6cH1zMRE@CMGLRV3>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Aug 07, 2025 at 02:43:14PM -0500, Frederick Lawler
 wrote: > > It occurred to me last night that I'd probably like a rate limit
 on the KCS > messages as well. I didn't see if a patch for that w [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uk7El-0007R7-27
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Aug 07, 2025 at 02:43:14PM -0500, Frederick Lawler wrote:
> 
> It occurred to me last night that I'd probably like a rate limit on the KCS
> messages as well. I didn't see if a patch for that was made. I can whip
> that up sometime next week, that could be of use to anyone.

That jogged my memory a bit; there is something called "maintenance
mode" in the IPMI driver.  It's used primarily for firmware updates,
but it's triggered by reset commands in addition to firmware update
commands.  It has three basic affects:

* It turns off automatic messages sent to the BMC by the driver
  (only fetching flags, I think).

* It changes the way the timing works to check for the BMC being ready
  a lot more often.  (This is a hardware check and shouldn't affect
  the BMC, but maybe it does on some.)

* It changes the timing for messages routed to the IPMB bus to give
  them more time.

It solved two problems:

* For systems without IPMI interrupts, firmware updates were taking
  forever.  

* When you would reset the BMC, the driver's automatic messages would
  generally time out.  And IPMB messages pending would time out.

The theory was that if the user reset the BMC, they wouldn't issue any
IPMI commands, and the driver wouldn't either, so it would leave the
BMC interface alone until it's done resetting.

It's not perfect, the reset or firmware update can happen over the LAN
interface, but it seemed to help a lot of people.

Anyway, after that long explaination, maybe that needs to be extended
and if the driver goes into maintenance mode have all sysfs accesses
to the BMC return an error.

It also might be a good idea to differentiate between resets and
firmware update commands.  After a reset nothing will probably work, but
the BMC is still partially function during a firmware update.  So no
IPMI commands at all for a little while after a reset.  That is a
behavioral change, but it's probably not a lot different that what would
happen, anyway.  The error just comes back faster.

None of this solves the basic issue, though.

I'm not exactly sure what you mean by a rate limit on KCS messages.  It
would lower the probability, perhaps, but it wouldn't eliminate the
problem, either.  Just not allowing anything during these times is
probably better.

> 
> [1533534.869508] [Hardware Error]: Corrected error, no action required.
> [1533534.884635] [Hardware Error]: CPU:1 (17:31:0) MC18_STATUS[Over|CE|MiscV|AddrV|-|-|SyndV|CECC|-|-|-]: 0xdc2040000000011b
> [1533534.912122] [Hardware Error]: Error Addr: 0x0000000313c7a020
> [1533534.926641] [Hardware Error]: IPID: 0x0000009600350f00, Syndrome: 0x9fec08000a800a01
> [1533534.943278] [Hardware Error]: Unified Memory Controller Ext. Error Code: 0
> [1533534.946635] EDAC MC0: 1 CE Cannot decode normalized address on mc#0csrow#1channel#3 (csrow:1 channel:3 page:0x0 offset:0x0 grain:64 syndrome:0x800)
> [1533535.369487] INFO: task cat:1844873 blocked for more than 10 seconds.
> [1533535.385145]       Tainted: G        W  O       6.12.35-cloudflare-2025.6.15 #1
> [1533535.401614] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [1533535.418715] task:cat             state:D stack:0     pid:1844873 tgid:1844873 ppid:1844872 task_flags:0x400000 flags:0x00004002
> [1533535.447475] Call Trace:
> [1533535.458691]  <TASK>
> [1533535.469154]  __schedule+0x4fa/0xbf0
> [1533535.481433]  schedule+0x27/0xf0
> [1533535.493181]  __get_guid+0xf4/0x130 [ipmi_msghandler]
> [1533535.506325]  ? __pfx_autoremove_wake_function+0x10/0x10
> [1533535.519910]  __bmc_get_device_id+0xd6/0xa30 [ipmi_msghandler]

Yeah, this is what I would expect to see if you are doing this operation
and the BMC is in reset.  It's going to sit there until it times out and
returns an error.

-corey

> [1533535.534459]  ? srso_return_thunk+0x5/0x5f
> [1533535.546509]  ? srso_return_thunk+0x5/0x5f
> [1533535.558540]  ? __memcg_slab_post_alloc_hook+0x21b/0x410
> [1533535.571722]  aux_firmware_rev_show+0x38/0x90 [ipmi_msghandler]
> [1533535.585304]  ? __kmalloc_node_noprof+0x3f6/0x450
> [1533535.598144]  ? seq_read_iter+0x376/0x460
> [1533535.609621]  dev_attr_show+0x1c/0x40
> [1533535.621024]  sysfs_kf_seq_show+0x8f/0xe0
> [1533535.632316]  seq_read_iter+0x11f/0x460
> [1533535.643172]  ? security_file_permission+0x9/0xb0
> [1533535.655102]  vfs_read+0x260/0x330
> [1533535.665368]  ksys_read+0x65/0xe0
> [1533535.675559]  do_syscall_64+0x4b/0x110
> [1533535.686324]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [1533535.698530] RIP: 0033:0x7f72b587125d
> [1533535.708857] RSP: 002b:00007ffccc21bb48 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
> [1533535.723411] RAX: ffffffffffffffda RBX: 0000000000020000 RCX: 00007f72b587125d
> [1533535.737361] RDX: 0000000000020000 RSI: 00007f72b5755000 RDI: 0000000000000003
> [1533535.751191] RBP: 0000000000020000 R08: 00000000ffffffff R09: 0000000000000000
> [1533535.764847] R10: 00007f72b5788b60 R11: 0000000000000246 R12: 00007f72b5755000
> [1533535.778536] R13: 0000000000000003 R14: 0000000000020000 R15: 0000000000000000
> [1533535.792210]  </TASK>
> 
> crash> bt -l 1781073
> PID: 1781073  TASK: ffff9d91c7040000  CPU: 81   COMMAND: "/usr/bin/python"
>  #0 [ffffb3a171683c00] __schedule at ffffffff9d559eea
>     /cfsetup_build/build/linux/kernel/sched/core.c: 5338
>  #1 [ffffb3a171683c80] schedule at ffffffff9d55a617
>     /cfsetup_build/build/linux/arch/x86/include/asm/preempt.h: 84
>  #2 [ffffb3a171683c90] __get_guid at ffffffffc22aa574 [ipmi_msghandler]
>  #3 [ffffb3a171683ce8] __bmc_get_device_id at ffffffffc22aa696 [ipmi_msghandler]
>  #4 [ffffb3a171683da0] aux_firmware_rev_show at ffffffffc22ab1c8 [ipmi_msghandler]
>  #5 [ffffb3a171683dd0] dev_attr_show at ffffffff9d1175dc
>     /cfsetup_build/build/linux/drivers/base/core.c: 2425
>  #6 [ffffb3a171683de8] sysfs_kf_seq_show at ffffffff9cc64caf
>     /cfsetup_build/build/linux/fs/sysfs/file.c: 60
>  #7 [ffffb3a171683e10] seq_read_iter at ffffffff9cbddf7f
>     /cfsetup_build/build/linux/fs/seq_file.c: 230
>  #8 [ffffb3a171683e68] vfs_read at ffffffff9cba8590
>     /cfsetup_build/build/linux/fs/read_write.c: 489
>  #9 [ffffb3a171683f00] ksys_read at ffffffff9cba9165
>     /cfsetup_build/build/linux/fs/read_write.c: 713
> #10 [ffffb3a171683f38] do_syscall_64 at ffffffff9d550c8b
>     /cfsetup_build/build/linux/arch/x86/entry/common.c: 52
> #11 [ffffb3a171683f50] entry_SYSCALL_64_after_hwframe at ffffffff9d60012f
>     /cfsetup_build/build/linux/arch/x86/entry/entry_64.S: 130
>     RIP: 00007f04e1b7c29c  RSP: 00007ffea7aaf6c0  RFLAGS: 00000246
>     RAX: ffffffffffffffda  RBX: 0000000000a840f8  RCX: 00007f04e1b7c29c
>     RDX: 0000000000001001  RSI: 000000002fd06ef0  RDI: 00000000000000c1
>     RBP: 00007f04e1a82fc0   R8: 0000000000000000   R9: 0000000000000000
>     R10: 0000000000000000  R11: 0000000000000246  R12: 0000000000001001
>     R13: 000000002fd06ef0  R14: 00000000000000c1  R15: 0000000000a41520
>     ORIG_RAX: 0000000000000000  CS: 0033  SS: 002b
> 
> crash> files 1781073
> ...
> 193 ffff9db5132e5800 ffff9dafb18bd200 ffff9da7b780bcf0 REG  /sys/devices/platform/ipmi_bmc.0/aux_firmware_revision
> 
> crash> log -c
> ...
> [1533553.998160] [      C7] ipmi_si IPI0001:00: KCS in invalid state 6
> [1533554.009156] [      C7] ipmi_si IPI0001:00: KCS in invalid state 8
> [1533554.019973] [T1844873] ipmi_si IPI0001:00: KCS in invalid state 9
> [1533554.031005] [     C81] ipmi_si IPI0001:00: IPMI message handler: device id fetch failed: 0xd5
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
