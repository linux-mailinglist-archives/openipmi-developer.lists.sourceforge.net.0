Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8BB6B9D03
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Mar 2023 18:29:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pc8Sf-0007rS-9a;
	Tue, 14 Mar 2023 17:29:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pc8Sd-0007rM-UO
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 17:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=06bQPl1HxS4x8zpcxkGkx4PQDAsR/CV2/MH0+8c6S9k=; b=f+drYyLKTOPnBWQ6Ohhm6byfJ+
 bSyqUk2wTJmSjNe8pYWCLV0BBMdq5JNS5hfi/JyMTIuMqm2oiliRiy9u7IIV97ocnBOsybNnfAHGf
 7IOr1p4r+RQ0cN3p9KHWgqV+1GxH9qr/A/W3if3ih1NxLzVmY66SoKZTBcOFt96x3Hyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=06bQPl1HxS4x8zpcxkGkx4PQDAsR/CV2/MH0+8c6S9k=; b=Iu9Kgpgly0oWx3jegcV6ZoNU/P
 UzbKU1vKUBTI6pFZf8405hslj2il8YhNfzVRE+rMa0tC4xZoCKXCLGWNVzRk7lRTKflXpRDwpKLjQ
 4c37h8oYsJeSXl/LHd8nsWB7TX4PdTDAlKrSJ8BYLwMjJbghX/FjK4ElS8uzKK3KjO6w=;
Received: from mail-oa1-f47.google.com ([209.85.160.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pc8Sa-008Z6i-RZ for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Mar 2023 17:29:20 +0000
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-17683b570b8so18056901fac.13
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Mar 2023 10:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678814951;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=06bQPl1HxS4x8zpcxkGkx4PQDAsR/CV2/MH0+8c6S9k=;
 b=CG49HUXmoe23l3jnJf/DRJwP59kfyoXzACF377vpOTPDaU7jywOdfeS6nFy9yEX/1u
 8yBnXO6s5UbkKwX+MJi2jZ243h8izS/FTRKlZp1nCkMC0C9KP26Y0UflszBLbM7TV1Rl
 JKnmH8en5R/+LYLPnkAt3JTfD1wkWJH3U4C53cL9Mn3iBlfSmbGQPjcjP8DtSL7zevaC
 QvqjtT8s84LLn7L03rQ07PWOiBhXdFB4zjE0kGHq8GGoHMS30xK0rEJF/l/GDOLRfiAy
 DM24xODs5unuMulVWxoRLE/9SWtoEFjbtWTpJIJBfKtFYBeEfiiRnfIjhXBB9EFuzuGE
 NKng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678814951;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=06bQPl1HxS4x8zpcxkGkx4PQDAsR/CV2/MH0+8c6S9k=;
 b=Z4BTAlFOvYIgRJpBEkApYCOowYul6mJTS0xFepisa//3lpWBB+MFYjoXuL5+At5Pzk
 TiBSK+aREQYl31OsSjmpbsQhfynvC01Ks61mRhFd2Kxo1ZtdtIxuesx431Gdywb8iMGa
 kdzRuUGe6TmEWzdU7DHCt11Ucq/XNgvO06J8BMsreSq1xOaGkR0ZeZNXzp2+hx1/SdT0
 gZW5te70YbfUpdskLxh/g4vjakuoYZyO3CkYVpWagUdgar4UO+6n/rq8spFgmRi82wgm
 7fw0/wFN/EvwBDgSpYsayApvgIuy7B4uYlWktBRSox0pQUtlAa7sgknGCoq7oKBddDSf
 9GuQ==
X-Gm-Message-State: AO0yUKXwKftKEKqD+8/40QpSYZB2KS/ohl3UTf0QNVo/4XEW5E5DrXnx
 tAzi/JvA37BhOu7M5++z6HvGgJoVZA==
X-Google-Smtp-Source: AK7set/DnN+RiSP4JkRiu7rjoozSiH2RTDs0adfIGAphbCOFvqoSh+eFjsG9iHJZc4zk55A08eDt/Q==
X-Received: by 2002:a05:6870:e754:b0:177:b9d3:c028 with SMTP id
 t20-20020a056870e75400b00177b9d3c028mr4599669oak.12.1678814949515; 
 Tue, 14 Mar 2023 10:29:09 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 n7-20020a0568301e8700b00693d998f713sm1366375otr.35.2023.03.14.10.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Mar 2023 10:29:08 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:d290:38d8:4c6f:34f2])
 by serve.minyard.net (Postfix) with ESMTPSA id D3660180044;
 Tue, 14 Mar 2023 17:29:07 +0000 (UTC)
Date: Tue, 14 Mar 2023 12:29:06 -0500
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZBCu4muJlZKujlJy@minyard.net>
References: <ZA9CR6nLtHqav2Lc@minyard.net>
 <5814DED7-2C7F-4B40-9B97-AACD54DC5408@flyingcircus.io>
 <7B86181E-6DA6-4D91-9BEB-5102C161A32F@flyingcircus.io>
 <ZA9ZsPiPH9x2lPrG@minyard.net>
 <7A542D45-B87F-49B6-B092-4B8DCA5D6DB1@flyingcircus.io>
 <ZBCKkEtvPbVKBaYy@minyard.net>
 <73D4D6CA-E610-4B2E-B435-A889EBBEA600@flyingcircus.io>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fa1ajuqZV7TbvQZB"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <73D4D6CA-E610-4B2E-B435-A889EBBEA600@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Well, dang, I had already fixed this a year and a half ago.
 I wish I had a better memory. Anyway,
 the fix is commit db05ddf7f321634c5659a0cf7ea56594e22365f7
 ("ipmi:watchdog: Set panic count to proper value on a panic") in mainstream
 5.16. I'm attaching that patch. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.47 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pc8Sa-008Z6i-RZ
Subject: Re: [Openipmi-developer] PANIC / OEM strings missing,
 not sure whether misconfiguration or a bug
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
Reply-To: minyard@acm.org
Cc: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--fa1ajuqZV7TbvQZB
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Well, dang, I had already fixed this a year and a half ago.  I wish I
had a better memory.

Anyway, the fix is commit db05ddf7f321634c5659a0cf7ea56594e22365f7
("ipmi:watchdog: Set panic count to proper value on a panic") in
mainstream 5.16.  I'm attaching that patch.

-corey

On Tue, Mar 14, 2023 at 03:58:26PM +0100, Christian Theune via Openipmi-developer wrote:
> Awesome!
> 
> > On 14. Mar 2023, at 15:54, Corey Minyard <minyard@acm.org> wrote:
> > 
> > On Tue, Mar 14, 2023 at 03:22:39PM +0100, Christian Theune via Openipmi-developer wrote:
> >> Hi,
> >> 
> >> sorry, I didn’t expect you to make me a branch. I had already taken your diff over to 5.10 as it applied cleanly … sorry for the additional work and thanks anyways.
> > 
> > Ok, that's great.  It's something about the IPMI watchdog panic
> > routines, and I can reproduce.  I should be able to fix this pretty
> > quickly.  I'll send a patch when I get this fixed.
> > 
> > Thanks,
> > 
> > -corey
> > 
> >> 
> >> Here’s the output:
> >> 
> >> [ 6521.905890] sysrq: Trigger a crash
> >> [ 6521.909294] Kernel panic - not syncing: sysrq triggered crash
> >> [ 6521.915026] CPU: 1 PID: 43785 Comm: bash Tainted: G          I       5.10.159 #1-NixOS
> >> [ 6521.922925] Hardware name: Dell Inc. PowerEdge R510/00HDP0, BIOS 1.11.0 07/23/2012
> >> [ 6521.930475] Call Trace:
> >> [ 6521.932923]  dump_stack+0x6b/0x83
> >> [ 6521.936230]  panic+0x101/0x2c8
> >> [ 6521.939276]  ? printk+0x58/0x73
> >> [ 6521.942408]  sysrq_handle_crash+0x16/0x20
> >> [ 6521.946407]  __handle_sysrq.cold+0x43/0x11a
> >> [ 6521.950580]  write_sysrq_trigger+0x24/0x40
> >> [ 6521.954668]  proc_reg_write+0x51/0x90
> >> [ 6521.958322]  vfs_write+0xc3/0x280
> >> [ 6521.961627]  ksys_write+0x5f/0xe0
> >> [ 6521.964935]  do_syscall_64+0x33/0x40
> >> [ 6521.968502]  entry_SYSCALL_64_after_hwframe+0x61/0xc6
> >> [ 6521.973540] RIP: 0033:0x7f2c6b91a133
> >> [ 6521.977106] Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b3 0f 1f 80 00 00 00 00 64 8b 04 25 18 00 00 00 85 c0 75 14 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 55 c3 0f 1f 40 00 41 54 49 89 d4 55 48 89 f5
> >> [ 6521.995836] RSP: 002b:00007ffc4cf11088 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> >> [ 6522.003387] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f2c6b91a133
> >> [ 6522.010505] RDX: 0000000000000002 RSI: 0000000001555c08 RDI: 0000000000000001
> >> [ 6522.017623] RBP: 0000000001555c08 R08: 000000000000000a R09: 00007f2c6b9aaf40
> >> [ 6522.024743] R10: 00000000016e4218 R11: 0000000000000246 R12: 0000000000000002
> >> [ 6522.031864] R13: 00007f2c6b9e8520 R14: 00007f2c6b9e8720 R15: 0000000000000002
> >> [ 6522.039085] Calling notifier panic_event+0x0/0x410 [ipmi_msghandler] (000000008eb8cb44)
> >> [ 6522.047071] IPMI message handler: IPMI: panic event handler
> >> [ 6522.052628] IPMI message handler: IPMI: handling panic event for intf 0: 00000000443777b3 0000000067d05ff8
> >> …
> >> and then it reboots after the 255 seconds from the watchdog timer are passed.
> >> 
> >> Christian
> >> 
> >>> On 13. Mar 2023, at 18:13, Corey Minyard <minyard@acm.org> wrote:
> >>> 
> >>> On Mon, Mar 13, 2023 at 05:42:39PM +0100, Christian Theune wrote:
> >>>> Hrghs. I’m applying your patch to 5.10 as my distro build infrastructure has some patches that don’t apply to 6.2 and that I don’t know how to circumvent quickly enough… :)
> >>> 
> >>> Ok, there's a
> >>> 
> >>> https://github.com/cminyard/linux-ipmi.git:debug-panic-oem-events-5.10
> >>> 
> >>> branch available for you to pull.  It's on top of latest 5.10.
> >>> 
> >>> -corey
> >>> 
> >>>> 
> >>>>> On 13. Mar 2023, at 16:59, Christian Theune <ct@flyingcircus.io> wrote:
> >>>>> 
> >>>>> I should be easily able to run 6.2, no worries.
> >>>>> 
> >>>>> 
> >>>>>> On 13. Mar 2023, at 16:33, Corey Minyard <minyard@acm.org> wrote:
> >>>>>> 
> >>>>>> ﻿On Mon, Mar 13, 2023 at 02:07:01PM +0100, Christian Theune wrote:
> >>>>>>> Hi,
> >>>>>>> 
> >>>>>>> yeah, the IPMI log is fine. This is a 10 minute interval job in our system that exports the log and clears it:
> >>>>>>> 
> >>>>>>> The job looks like this:
> >>>>>>> 
> >>>>>>> /nix/store/m7lb36dr93qj27r9vskmjihz8imywy86-ipmitool-1.8.18/bin/ipmitool sel elist
> >>>>>>> /nix/store/m7lb36dr93qj27r9vskmjihz8imywy86-ipmitool-1.8.18/bin/ipmitool sel clear
> >>>>>>> 
> >>>>>>> So it’s not atomic but it runs after the boot and the elist should output it properly … at least it did in the past. ;)
> >>>>>>> 
> >>>>>>> As I said - I’m happy to run any patches you have. If you point me to a git branch somewhere I can switch that system easily.
> >>>>>> 
> >>>>>> Ok, I have a branch at
> >>>>>> 
> >>>>>> https://github.com/cminyard/linux-ipmi.git:debug-panic-oem-events
> >>>>>> 
> >>>>>> that has debug tracing.  It will print the function for all panic event
> >>>>>> handlers, their return values, and adds traces in the IPMI panic event
> >>>>>> handlers.
> >>>>>> 
> >>>>>> It's a single patch right on top of 6.2; I'm not sure how portable it is
> >>>>>> to other kernel versions.  I can port if you like.
> >>>>>> 
> >>>>>> Thanks,
> >>>>>> 
> >>>>>> -corey
> >>>>>> 
> >>>>>>> 
> >>>>>>> Cheers,
> >>>>>>> Christian
> >>>>>>> 
> >>>>>>>>> On 13. Mar 2023, at 13:58, Corey Minyard <minyard@acm.org> wrote:
> >>>>>>>> 
> >>>>>>>> On Mon, Mar 13, 2023 at 10:27:51AM +0100, Christian Theune wrote:
> >>>>>>>>> Hi,
> >>>>>>>>> 
> >>>>>>>>> alright, so here’s the output from the NixOS machine:
> >>>>>>>>> 
> >>>>>>>>> root@xxx ~ # echo c >/proc/sysrq-trigger
> >>>>>>>>> client_loop: send disconnect: Broken pipe
> >>>>>>>>> …
> >>>>>>>>> 
> >>>>>>>>> root@xxx ~ # journalctl -u ipmi-log.service
> >>>>>>>>> -- Journal begins at Sun 2023-02-26 14:25:36 CET, ends at Mon 2023-03-13 10:25:27 CET. --
> >>>>>>>>> Mar 13 10:12:38 xxx ipmi-log-start[520973]: Clearing SEL.  Please allow a few seconds to erase.
> >>>>>>>>> ...
> >>>>>>>>> -- Boot fdef496e784e4541abd9ae40df472a0b --
> >>>>>>>>> Mar 13 10:25:07 xxx ipmi-log-start[1973]:    1 | 03/13/2023 | 09:12:49 | Event Logging Disabled SEL | Log area reset/cleared | Asserted
> >>>>>>>>> Mar 13 10:25:07 xxx ipmi-log-start[1973]:    2 | 03/13/2023 | 09:21:06 | Watchdog2 OS Watchdog | Hard reset | Asserted
> >>>>>>>>> Mar 13 10:25:07 xxx ipmi-log-start[1977]: Clearing SEL.  Please allow a few seconds to erase.
> >>>>>>>> 
> >>>>>>>> Hmm, the SEL got cleared.  That would clear out any of the logs that
> >>>>>>>> were issued before that time.  I'm not sure when the above happened
> >>>>>>>> verses the crash, though.  It looks like it occurred as part of the
> >>>>>>>> reboot, but I'm not sure what I'm seeing.  Maybe you have a startup
> >>>>>>>> process that clears the SEL?
> >>>>>>>> 
> >>>>>>>> Assuming that's not the issue, what you have looks ok.  I'd need to add
> >>>>>>>> some logs to the kernel to see if the log operation ever happens.
> >>>>>>>> 
> >>>>>>>> -corey
> >>>>>>>> 
> >>>>>>>>> 
> >>>>>>>>> The SOL log looks like this:
> >>>>>>>>> 
> >>>>>>>>> 
> >>>>>>>>> [1107585.917689] sysrq: Trigger a crash
> >>>>>>>>> [1107585.921272] Kernel panic - not syncing: sysrq triggered crash
> >>>>>>>>> [1107585.927178] CPU: 1 PID: 521033 Comm: bash Tainted: G          I       5.10.159 #1-NixOS
> >>>>>>>>> [1107585.935335] Hardware name: Dell Inc. PowerEdge R510/00HDP0, BIOS 1.11.0 07/23/2012
> >>>>>>>>> [1107585.943058] Call Trace:
> >>>>>>>>> [1107585.945680]  dump_stack+0x6b/0x83
> >>>>>>>>> [1107585.949158]  panic+0x101/0x2c8
> >>>>>>>>> [1107585.952379]  ? printk+0x58/0x73
> >>>>>>>>> [1107585.955687]  sysrq_handle_crash+0x16/0x20
> >>>>>>>>> [1107585.959859]  __handle_sysrq.cold+0x43/0x11a
> >>>>>>>>> [1107585.964203]  write_sysrq_trigger+0x24/0x40
> >>>>>>>>> [1107585.968463]  proc_reg_write+0x51/0x90
> >>>>>>>>> [1107585.972290]  vfs_write+0xc3/0x280
> >>>>>>>>> [1107585.975768]  ksys_write+0x5f/0xe0
> >>>>>>>>> [1107585.979248]  do_syscall_64+0x33/0x40
> >>>>>>>>> [1107585.982987]  entry_SYSCALL_64_after_hwframe+0x61/0xc6
> >>>>>>>>> [1107585.988199] RIP: 0033:0x7f5873932133
> >>>>>>>>> [1107585.991938] Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b3 0f 1f 80 00 00 00 00 64 8b 04 25 18 00 00 00 85 c0 75 14 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 55 c3 0f 1f 40 00 41 54 49 89 d4 55 48 89 f5
> >>>>>>>>> [1107586.010842] RSP: 002b:00007ffcc13808c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> >>>>>>>>> [1107586.018566] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: 00007f5873932133
> >>>>>>>>> [1107586.025923] RDX: 0000000000000002 RSI: 00000000005c1c08 RDI: 0000000000000001
> >>>>>>>>> [1107586.033213] RBP: 00000000005c1c08 R08: 000000000000000a R09: 00007f58739c2f40
> >>>>>>>>> [1107586.040504] R10: 00000000005cc348 R11: 0000000000000246 R12: 0000000000000002
> >>>>>>>>> [1107586.047794] R13: 00007f5873a00520 R14: 00007f5873a00720 R15: 0000000000000002
> >>>>>>>>> 
> >>>>>>>>> Nothing obvious to me here … if you have any further ideas what to test, let me know. I should be more responsive again now.
> >>>>>>>>> 
> >>>>>>>>> Thanks and kind regards,
> >>>>>>>>> Christian
> >>>>>>>>> 
> >>>>>>>>>> On 5. Mar 2023, at 23:53, Corey Minyard <minyard@acm.org> wrote:
> >>>>>>>>>> 
> >>>>>>>>>> On Wed, Mar 01, 2023 at 06:00:07PM +0100, Christian Theune wrote:
> >>>>>>>>>>> I’m going to actually attach a serial console to watch the “echo c” panic, maybe that gives _some_ indication.
> >>>>>>>>>>> 
> >>>>>>>>>>> Otherwise: I can quickly run patches on the kernel there to try out things. (And the funding offer still stands.)
> >>>>>>>>>> 
> >>>>>>>>>> Any news on this?  I'm curious what this could be.
> >>>>>>>>>> 
> >>>>>>>>>> -corey
> >>>>>>>>>> 
> >>>>>>>>>>> 
> >>>>>>>>>>> Christian
> >>>>>>>>>>> 
> >>>>>>>>>>>> On 1. Mar 2023, at 17:58, Corey Minyard <minyard@acm.org> wrote:
> >>>>>>>>>>>> 
> >>>>>>>>>>>> On Tue, Feb 28, 2023 at 06:36:17PM +0100, Christian Theune wrote:
> >>>>>>>>>>>>> Thanks, both machines report:
> >>>>>>>>>>>>> 
> >>>>>>>>>>>>> # cat /sys/module/ipmi_msghandler/parameters/panic_op
> >>>>>>>>>>>>> string
> >>>>>>>>>>>> 
> >>>>>>>>>>>> At this point, I have no idea.  I'd have to start adding printks into
> >>>>>>>>>>>> the code and cause crashes to see what is happing.
> >>>>>>>>>>>> 
> >>>>>>>>>>>> Maybe something is getting in the way of the panic notifiers and doing
> >>>>>>>>>>>> something to prevent the IPMI driver from working.
> >>>>>>>>>>>> 
> >>>>>>>>>>>> -corey
> >>>>>>>>>>>> 
> >>>>>>>>>>>>> 
> >>>>>>>>>>>>> 
> >>>>>>>>>>>>>> On 28. Feb 2023, at 18:04, Corey Minyard <minyard@acm.org> wrote:
> >>>>>>>>>>>>>> 
> >>>>>>>>>>>>>> Oh, I forgot.  You can look at panic_op in /sys/module/ipmi_msghandler/parameters/panic_op
> >>>>>>>>>>>>>> 
> >>>>>>>>>>>>>> -corey
> >>>>>>>>>>>>>> 
> >>>>>>>>>>>>>> On Tue, Feb 28, 2023 at 05:48:07PM +0100, Christian Theune via Openipmi-developer wrote:
> >>>>>>>>>>>>>>> Hi,
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> On 28. Feb 2023, at 17:36, Corey Minyard <minyard@acm.org> wrote:
> >>>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> On Tue, Feb 28, 2023 at 02:53:12PM +0100, Christian Theune via Openipmi-developer wrote:
> >>>>>>>>>>>>>>>>> Hi,
> >>>>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>>> I’ve been trying to debug the PANIC and OEM string handling and am running out of ideas whether this is a bug or whether something so subtle has changed in my config that I’m just not seeing it.
> >>>>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>>> (Note: I’m willing to pay for consulting.)
> >>>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> Probably not necessary.
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> Thanks! The offer always stands. If we should ever meet I’m also able to pay in beverages. ;)
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>>> I have machines that we’ve moved from an older setup (Gentoo, (mostly) vanilla kernel 4.19.157) to a newer setup (NixOS, (mostly) vanilla kernel 5.10.159) and I’m now experiencing crashes that seem to be kernel panics but do not get the usual messages in the IPMI SEL.
> >>>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> I just tested on stock 5.10.159 and it worked without issue.  Everything
> >>>>>>>>>>>>>>>> you have below looks ok.
> >>>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> Can you test by causing a crash with:
> >>>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> echo c >/proc/sysrq-trigger
> >>>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> and see if it works?
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> Yeah, already tried that and unfortunately that _doesn’t_ work.
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> It sounds like you are having some type of crash that you would normally
> >>>>>>>>>>>>>>>> use the IPMI logs to debug.  However, they aren't perfect, the system
> >>>>>>>>>>>>>>>> has to stay up long enough to get them into the event log.
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> I think they are staying up long enough because a panic triggers the 255 second bump in the watchdog and only then pass on. However, i’ve also noticed that the kernel _should_ be rebooting after a panic much faster (and not rely on the watchdog) and that doesn’t happen either. (Sorry this just popped from the back of my head).
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>>> In this situation, getting a serial console (probably through IPMI
> >>>>>>>>>>>>>>>> Serial over LAN) and getting the console output on a crash is probably
> >>>>>>>>>>>>>>>> your best option.  You can use ipmitool for this, or I have a library
> >>>>>>>>>>>>>>>> that is able to make connections to serial ports, including through IPMI
> >>>>>>>>>>>>>>>> SoL.
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> Yup. Been there, too. :)
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> Unfortunately we’re currently chasing something that pops up very randomly on somewhat odd machines and I also have the feeling that it’s systematically broken right now (as the “echo c” doesn’t work).
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> Thanks a lot,
> >>>>>>>>>>>>>>> Christian
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> -- 
> >>>>>>>>>>>>>>> Christian Theune · ct@flyingcircus.io · +49 345 219401 0
> >>>>>>>>>>>>>>> Flying Circus Internet Operations GmbH · https://flyingcircus.io
> >>>>>>>>>>>>>>> Leipziger Str. 70/71 · 06108 Halle (Saale) · Deutschland
> >>>>>>>>>>>>>>> HR Stendal HRB 21169 · Geschäftsführer: Christian Theune, Christian Zagrodnick
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> 
> >>>>>>>>>>>>>>> _______________________________________________
> >>>>>>>>>>>>>>> Openipmi-developer mailing list
> >>>>>>>>>>>>>>> Openipmi-developer@lists.sourceforge.net
> >>>>>>>>>>>>>>> https://lists.sourceforge.net/lists/listinfo/openipmi-developer
> >>>>>>>>>>>>> 
> >>>>>>>>>>>>> Liebe Grüße,
> >>>>>>>>>>>>> Christian Theune
> >>>>>>>>>>>>> 
> >>>>>>>>>>>>> -- 
> >>>>>>>>>>>>> Christian Theune · ct@flyingcircus.io · +49 345 219401 0
> >>>>>>>>>>>>> Flying Circus Internet Operations GmbH · https://flyingcircus.io
> >>>>>>>>>>>>> Leipziger Str. 70/71 · 06108 Halle (Saale) · Deutschland
> >>>>>>>>>>>>> HR Stendal HRB 21169 · Geschäftsführer: Christian Theune, Christian Zagrodnick
> >>>>>>>>>>>>> 
> >>>>>>>>>>> 
> >>>>>>>>>>> Liebe Grüße,
> >>>>>>>>>>> Christian Theune
> >>>>>>>>>>> 
> >>>>>>>>>>> -- 
> >>>>>>>>>>> Christian Theune · ct@flyingcircus.io · +49 345 219401 0
> >>>>>>>>>>> Flying Circus Internet Operations GmbH · https://flyingcircus.io
> >>>>>>>>>>> Leipziger Str. 70/71 · 06108 Halle (Saale) · Deutschland
> >>>>>>>>>>> HR Stendal HRB 21169 · Geschäftsführer: Christian Theune, Christian Zagrodnick
> >>>>>>>>>>> 
> >>>>>>>>> 
> >>>>>>>>> Liebe Grüße,
> >>>>>>>>> Christian Theune
> >>>>>>>>> 
> >>>>>>>>> -- 
> >>>>>>>>> Christian Theune · ct@flyingcircus.io · +49 345 219401 0
> >>>>>>>>> Flying Circus Internet Operations GmbH · https://flyingcircus.io
> >>>>>>>>> Leipziger Str. 70/71 · 06108 Halle (Saale) · Deutschland
> >>>>>>>>> HR Stendal HRB 21169 · Geschäftsführer: Christian Theune, Christian Zagrodnick
> >>>>>>> 
> >>>>>>> 
> >>>>>>> Liebe Grüße,
> >>>>>>> Christian Theune
> >>>>>>> 
> >>>>>>> -- 
> >>>>>>> Christian Theune · ct@flyingcircus.io · +49 345 219401 0
> >>>>>>> Flying Circus Internet Operations GmbH · https://flyingcircus.io
> >>>>>>> Leipziger Str. 70/71 · 06108 Halle (Saale) · Deutschland
> >>>>>>> HR Stendal HRB 21169 · Geschäftsführer: Christian Theune, Christian Zagrodnick
> >>>>>>> 
> >>>> 
> >>>> Liebe Grüße,
> >>>> Christian Theune
> >>>> 
> >>>> -- 
> >>>> Christian Theune · ct@flyingcircus.io · +49 345 219401 0
> >>>> Flying Circus Internet Operations GmbH · https://flyingcircus.io
> >>>> Leipziger Str. 70/71 · 06108 Halle (Saale) · Deutschland
> >>>> HR Stendal HRB 21169 · Geschäftsführer: Christian Theune, Christian Zagrodnick
> >>>> 
> >> 
> >> Liebe Grüße,
> >> Christian Theune
> >> 
> >> -- 
> >> Christian Theune · ct@flyingcircus.io · +49 345 219401 0
> >> Flying Circus Internet Operations GmbH · https://flyingcircus.io
> >> Leipziger Str. 70/71 · 06108 Halle (Saale) · Deutschland
> >> HR Stendal HRB 21169 · Geschäftsführer: Christian Theune, Christian Zagrodnick
> >> 
> >> 
> >> 
> >> _______________________________________________
> >> Openipmi-developer mailing list
> >> Openipmi-developer@lists.sourceforge.net
> >> https://lists.sourceforge.net/lists/listinfo/openipmi-developer
> 
> Liebe Grüße,
> Christian Theune
> 
> -- 
> Christian Theune · ct@flyingcircus.io · +49 345 219401 0
> Flying Circus Internet Operations GmbH · https://flyingcircus.io
> Leipziger Str. 70/71 · 06108 Halle (Saale) · Deutschland
> HR Stendal HRB 21169 · Geschäftsführer: Christian Theune, Christian Zagrodnick
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--fa1ajuqZV7TbvQZB
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-ipmi-watchdog-Set-panic-count-to-proper-value-on-a-p.patch"

From db05ddf7f321634c5659a0cf7ea56594e22365f7 Mon Sep 17 00:00:00 2001
From: Corey Minyard <cminyard@mvista.com>
Date: Mon, 20 Sep 2021 06:25:37 -0500
Subject: [PATCH] ipmi:watchdog: Set panic count to proper value on a panic

You will get two decrements when the messages on a panic are sent, not
one, since commit 2033f6858970 ("ipmi: Free receive messages when in an
oops") was added, but the watchdog code had a bug where it didn't set
the value properly.

Reported-by: Anton Lundin <glance@acc.umu.se>
Cc: <Stable@vger.kernel.org> # v5.4+
Fixes: 2033f6858970 ("ipmi: Free receive messages when in an oops")
Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index e4ff3b50de7f..f855a9665c28 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -497,7 +497,7 @@ static void panic_halt_ipmi_heartbeat(void)
 	msg.cmd = IPMI_WDOG_RESET_TIMER;
 	msg.data = NULL;
 	msg.data_len = 0;
-	atomic_inc(&panic_done_count);
+	atomic_add(2, &panic_done_count);
 	rv = ipmi_request_supply_msgs(watchdog_user,
 				      (struct ipmi_addr *) &addr,
 				      0,
@@ -507,7 +507,7 @@ static void panic_halt_ipmi_heartbeat(void)
 				      &panic_halt_heartbeat_recv_msg,
 				      1);
 	if (rv)
-		atomic_dec(&panic_done_count);
+		atomic_sub(2, &panic_done_count);
 }
 
 static struct ipmi_smi_msg panic_halt_smi_msg = {
@@ -531,12 +531,12 @@ static void panic_halt_ipmi_set_timeout(void)
 	/* Wait for the messages to be free. */
 	while (atomic_read(&panic_done_count) != 0)
 		ipmi_poll_interface(watchdog_user);
-	atomic_inc(&panic_done_count);
+	atomic_add(2, &panic_done_count);
 	rv = __ipmi_set_timeout(&panic_halt_smi_msg,
 				&panic_halt_recv_msg,
 				&send_heartbeat_now);
 	if (rv) {
-		atomic_dec(&panic_done_count);
+		atomic_sub(2, &panic_done_count);
 		pr_warn("Unable to extend the watchdog timeout\n");
 	} else {
 		if (send_heartbeat_now)
-- 
2.34.1


--fa1ajuqZV7TbvQZB
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--fa1ajuqZV7TbvQZB
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--fa1ajuqZV7TbvQZB--

