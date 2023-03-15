Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC326BA7E2
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Mar 2023 07:33:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pcKhU-0006Xc-JQ;
	Wed, 15 Mar 2023 06:33:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1pcKhS-0006XW-Mq
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Mar 2023 06:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:To:Cc:In-Reply-To:Date:Subject:
 Mime-Version:Content-Type:Message-Id:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sILBO4dEoVXWHZH/8tVSaskCBctmZA0VxidGMMt391A=; b=RKHW21K2Xf/C8mhy6webaEg88H
 Ihj2knBXy+ddRvv9/Tj7xckWIV+N9pwNvGpJ+pBb7sx15xeSP6phK3aqm4vNml2e/iSslVd2IyiaI
 JizHgBguuBOzfbBPYPe2rx33FRs/yMAYrcpXVdJWrxKso/1Ja1X8wZe1EE0vZXKX3pJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Content-Type:
 Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sILBO4dEoVXWHZH/8tVSaskCBctmZA0VxidGMMt391A=; b=NLfOd0QL4ONbyNtWZerbWdD+BU
 P3UBF5WztMtO7WCCw0ZSAWG/sI2qwns0cIbN25L9H0nvHUcKHVhAb/ou6l+By/ihp/AVPCaCQZuy8
 G2VozARnN6OXd2RHCmrEsh3Dy4XlS4y9ooTv1XTfHkMXFpjOHed/e6fbX1S5yeZWpTG0=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pcKhQ-0001mg-Ba for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Mar 2023 06:33:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1678861981;
 bh=sILBO4dEoVXWHZH/8tVSaskCBctmZA0VxidGMMt391A=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References;
 b=RfCm/AI6Zlc/1XMMvyccfz7JLRDgpiYGV6ozUWHBrEpt2Q5FY9c9Go04/kfcxp7Sg
 8ISeX2rB6bUs0AlX6wNBiqZsnhSnz3nlc07sCMNQs9P41Luo0eIKfPYK3IMnTHn58B
 +Xopf/pPDYxgDGAZQvaG3D5CE5uEmVwCtBh6S71A=
Message-Id: <B95B8748-C2D1-47FF-A3CF-8ABBB819B889@flyingcircus.io>
Content-Type: multipart/mixed;
 boundary="Apple-Mail=_E4FB77B7-8BE6-4E76-9C75-42922E1CB34F"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Date: Wed, 15 Mar 2023 07:32:41 +0100
In-Reply-To: <ZBCu4muJlZKujlJy@minyard.net>
To: minyard@acm.org
References: <ZA9CR6nLtHqav2Lc@minyard.net>
 <5814DED7-2C7F-4B40-9B97-AACD54DC5408@flyingcircus.io>
 <7B86181E-6DA6-4D91-9BEB-5102C161A32F@flyingcircus.io>
 <ZA9ZsPiPH9x2lPrG@minyard.net>
 <7A542D45-B87F-49B6-B092-4B8DCA5D6DB1@flyingcircus.io>
 <ZBCKkEtvPbVKBaYy@minyard.net>
 <73D4D6CA-E610-4B2E-B435-A889EBBEA600@flyingcircus.io>
 <ZBCu4muJlZKujlJy@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, that didn’t apply on 5.10. Here’s what I’m currently
    trying to build after manually inspecting the rejected patch: > On 14. Mar
    2023, at 18:29, Corey Minyard <minyard@acm.org> wrote: > > Well, dang, I
   had already fixed this a year and a half ago. I wish I > had a better memory.
    > > Anyway, the fix is commit db05dd [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1pcKhQ-0001mg-Ba
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
From: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christian Theune <ct@flyingcircus.io>
Cc: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--Apple-Mail=_E4FB77B7-8BE6-4E76-9C75-42922E1CB34F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

that didn=E2=80=99t apply on 5.10. Here=E2=80=99s what I=E2=80=99m =
currently trying to build after manually inspecting the rejected patch:


--Apple-Mail=_E4FB77B7-8BE6-4E76-9C75-42922E1CB34F
Content-Disposition: attachment;
	filename=ipmi-watchdog-set-panic-count-5.10.y.patch
Content-Type: application/octet-stream;
	x-unix-mode=0644;
	name="ipmi-watchdog-set-panic-count-5.10.y.patch"
Content-Transfer-Encoding: 7bit

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 92eda5b2f134..883b4a341012 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -503,7 +503,7 @@ static void panic_halt_ipmi_heartbeat(void)
 	msg.cmd = IPMI_WDOG_RESET_TIMER;
 	msg.data = NULL;
 	msg.data_len = 0;
-	atomic_add(1, &panic_done_count);
+	atomic_add(2, &panic_done_count);
 	rv = ipmi_request_supply_msgs(watchdog_user,
 				      (struct ipmi_addr *) &addr,
 				      0,
@@ -513,7 +513,7 @@ static void panic_halt_ipmi_heartbeat(void)
 				      &panic_halt_heartbeat_recv_msg,
 				      1);
 	if (rv)
-		atomic_sub(1, &panic_done_count);
+		atomic_sub(2, &panic_done_count);
 }
 
 static struct ipmi_smi_msg panic_halt_smi_msg = {
@@ -537,12 +537,12 @@ static void panic_halt_ipmi_set_timeout(void)
 	/* Wait for the messages to be free. */
 	while (atomic_read(&panic_done_count) != 0)
 		ipmi_poll_interface(watchdog_user);
-	atomic_add(1, &panic_done_count);
+	atomic_add(2, &panic_done_count);
 	rv = __ipmi_set_timeout(&panic_halt_smi_msg,
 				&panic_halt_recv_msg,
 				&send_heartbeat_now);
 	if (rv) {
-		atomic_sub(1, &panic_done_count);
+		atomic_sub(2, &panic_done_count);
 		pr_warn("Unable to extend the watchdog timeout\n");
 	} else {
 		if (send_heartbeat_now)

--Apple-Mail=_E4FB77B7-8BE6-4E76-9C75-42922E1CB34F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 14. Mar 2023, at 18:29, Corey Minyard <minyard@acm.org> wrote:
>=20
> Well, dang, I had already fixed this a year and a half ago.  I wish I
> had a better memory.
>=20
> Anyway, the fix is commit db05ddf7f321634c5659a0cf7ea56594e22365f7
> ("ipmi:watchdog: Set panic count to proper value on a panic") in
> mainstream 5.16.  I'm attaching that patch.
>=20
> -corey
>=20
> On Tue, Mar 14, 2023 at 03:58:26PM +0100, Christian Theune via =
Openipmi-developer wrote:
>> Awesome!
>>=20
>>> On 14. Mar 2023, at 15:54, Corey Minyard <minyard@acm.org> wrote:
>>>=20
>>> On Tue, Mar 14, 2023 at 03:22:39PM +0100, Christian Theune via =
Openipmi-developer wrote:
>>>> Hi,
>>>>=20
>>>> sorry, I didn=E2=80=99t expect you to make me a branch. I had =
already taken your diff over to 5.10 as it applied cleanly =E2=80=A6 =
sorry for the additional work and thanks anyways.
>>>=20
>>> Ok, that's great.  It's something about the IPMI watchdog panic
>>> routines, and I can reproduce.  I should be able to fix this pretty
>>> quickly.  I'll send a patch when I get this fixed.
>>>=20
>>> Thanks,
>>>=20
>>> -corey
>>>=20
>>>>=20
>>>> Here=E2=80=99s the output:
>>>>=20
>>>> [ 6521.905890] sysrq: Trigger a crash
>>>> [ 6521.909294] Kernel panic - not syncing: sysrq triggered crash
>>>> [ 6521.915026] CPU: 1 PID: 43785 Comm: bash Tainted: G          I   =
    5.10.159 #1-NixOS
>>>> [ 6521.922925] Hardware name: Dell Inc. PowerEdge R510/00HDP0, BIOS =
1.11.0 07/23/2012
>>>> [ 6521.930475] Call Trace:
>>>> [ 6521.932923]  dump_stack+0x6b/0x83
>>>> [ 6521.936230]  panic+0x101/0x2c8
>>>> [ 6521.939276]  ? printk+0x58/0x73
>>>> [ 6521.942408]  sysrq_handle_crash+0x16/0x20
>>>> [ 6521.946407]  __handle_sysrq.cold+0x43/0x11a
>>>> [ 6521.950580]  write_sysrq_trigger+0x24/0x40
>>>> [ 6521.954668]  proc_reg_write+0x51/0x90
>>>> [ 6521.958322]  vfs_write+0xc3/0x280
>>>> [ 6521.961627]  ksys_write+0x5f/0xe0
>>>> [ 6521.964935]  do_syscall_64+0x33/0x40
>>>> [ 6521.968502]  entry_SYSCALL_64_after_hwframe+0x61/0xc6
>>>> [ 6521.973540] RIP: 0033:0x7f2c6b91a133
>>>> [ 6521.977106] Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb =
b3 0f 1f 80 00 00 00 00 64 8b 04 25 18 00 00 00 85 c0 75 14 b8 01 00 00 =
00 0f 05 <48> 3d 00 f0 ff ff 77 55 c3 0f 1f 40 00 41 54 49 89 d4 55 48 =
89 f5
>>>> [ 6521.995836] RSP: 002b:00007ffc4cf11088 EFLAGS: 00000246 =
ORIG_RAX: 0000000000000001
>>>> [ 6522.003387] RAX: ffffffffffffffda RBX: 0000000000000002 RCX: =
00007f2c6b91a133
>>>> [ 6522.010505] RDX: 0000000000000002 RSI: 0000000001555c08 RDI: =
0000000000000001
>>>> [ 6522.017623] RBP: 0000000001555c08 R08: 000000000000000a R09: =
00007f2c6b9aaf40
>>>> [ 6522.024743] R10: 00000000016e4218 R11: 0000000000000246 R12: =
0000000000000002
>>>> [ 6522.031864] R13: 00007f2c6b9e8520 R14: 00007f2c6b9e8720 R15: =
0000000000000002
>>>> [ 6522.039085] Calling notifier panic_event+0x0/0x410 =
[ipmi_msghandler] (000000008eb8cb44)
>>>> [ 6522.047071] IPMI message handler: IPMI: panic event handler
>>>> [ 6522.052628] IPMI message handler: IPMI: handling panic event for =
intf 0: 00000000443777b3 0000000067d05ff8
>>>> =E2=80=A6
>>>> and then it reboots after the 255 seconds from the watchdog timer =
are passed.
>>>>=20
>>>> Christian
>>>>=20
>>>>> On 13. Mar 2023, at 18:13, Corey Minyard <minyard@acm.org> wrote:
>>>>>=20
>>>>> On Mon, Mar 13, 2023 at 05:42:39PM +0100, Christian Theune wrote:
>>>>>> Hrghs. I=E2=80=99m applying your patch to 5.10 as my distro build =
infrastructure has some patches that don=E2=80=99t apply to 6.2 and that =
I don=E2=80=99t know how to circumvent quickly enough=E2=80=A6 :)
>>>>>=20
>>>>> Ok, there's a
>>>>>=20
>>>>> =
https://github.com/cminyard/linux-ipmi.git:debug-panic-oem-events-5.10
>>>>>=20
>>>>> branch available for you to pull.  It's on top of latest 5.10.
>>>>>=20
>>>>> -corey
>>>>>=20
>>>>>>=20
>>>>>>> On 13. Mar 2023, at 16:59, Christian Theune <ct@flyingcircus.io> =
wrote:
>>>>>>>=20
>>>>>>> I should be easily able to run 6.2, no worries.
>>>>>>>=20
>>>>>>>=20
>>>>>>>> On 13. Mar 2023, at 16:33, Corey Minyard <minyard@acm.org> =
wrote:
>>>>>>>>=20
>>>>>>>> =EF=BB=BFOn Mon, Mar 13, 2023 at 02:07:01PM +0100, Christian =
Theune wrote:
>>>>>>>>> Hi,
>>>>>>>>>=20
>>>>>>>>> yeah, the IPMI log is fine. This is a 10 minute interval job =
in our system that exports the log and clears it:
>>>>>>>>>=20
>>>>>>>>> The job looks like this:
>>>>>>>>>=20
>>>>>>>>> =
/nix/store/m7lb36dr93qj27r9vskmjihz8imywy86-ipmitool-1.8.18/bin/ipmitool =
sel elist
>>>>>>>>> =
/nix/store/m7lb36dr93qj27r9vskmjihz8imywy86-ipmitool-1.8.18/bin/ipmitool =
sel clear
>>>>>>>>>=20
>>>>>>>>> So it=E2=80=99s not atomic but it runs after the boot and the =
elist should output it properly =E2=80=A6 at least it did in the past. =
;)
>>>>>>>>>=20
>>>>>>>>> As I said - I=E2=80=99m happy to run any patches you have. If =
you point me to a git branch somewhere I can switch that system easily.
>>>>>>>>=20
>>>>>>>> Ok, I have a branch at
>>>>>>>>=20
>>>>>>>> =
https://github.com/cminyard/linux-ipmi.git:debug-panic-oem-events
>>>>>>>>=20
>>>>>>>> that has debug tracing.  It will print the function for all =
panic event
>>>>>>>> handlers, their return values, and adds traces in the IPMI =
panic event
>>>>>>>> handlers.
>>>>>>>>=20
>>>>>>>> It's a single patch right on top of 6.2; I'm not sure how =
portable it is
>>>>>>>> to other kernel versions.  I can port if you like.
>>>>>>>>=20
>>>>>>>> Thanks,
>>>>>>>>=20
>>>>>>>> -corey
>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>> Cheers,
>>>>>>>>> Christian
>>>>>>>>>=20
>>>>>>>>>>> On 13. Mar 2023, at 13:58, Corey Minyard <minyard@acm.org> =
wrote:
>>>>>>>>>>=20
>>>>>>>>>> On Mon, Mar 13, 2023 at 10:27:51AM +0100, Christian Theune =
wrote:
>>>>>>>>>>> Hi,
>>>>>>>>>>>=20
>>>>>>>>>>> alright, so here=E2=80=99s the output from the NixOS =
machine:
>>>>>>>>>>>=20
>>>>>>>>>>> root@xxx ~ # echo c >/proc/sysrq-trigger
>>>>>>>>>>> client_loop: send disconnect: Broken pipe
>>>>>>>>>>> =E2=80=A6
>>>>>>>>>>>=20
>>>>>>>>>>> root@xxx ~ # journalctl -u ipmi-log.service
>>>>>>>>>>> -- Journal begins at Sun 2023-02-26 14:25:36 CET, ends at =
Mon 2023-03-13 10:25:27 CET. --
>>>>>>>>>>> Mar 13 10:12:38 xxx ipmi-log-start[520973]: Clearing SEL.  =
Please allow a few seconds to erase.
>>>>>>>>>>> ...
>>>>>>>>>>> -- Boot fdef496e784e4541abd9ae40df472a0b --
>>>>>>>>>>> Mar 13 10:25:07 xxx ipmi-log-start[1973]:    1 | 03/13/2023 =
| 09:12:49 | Event Logging Disabled SEL | Log area reset/cleared | =
Asserted
>>>>>>>>>>> Mar 13 10:25:07 xxx ipmi-log-start[1973]:    2 | 03/13/2023 =
| 09:21:06 | Watchdog2 OS Watchdog | Hard reset | Asserted
>>>>>>>>>>> Mar 13 10:25:07 xxx ipmi-log-start[1977]: Clearing SEL.  =
Please allow a few seconds to erase.
>>>>>>>>>>=20
>>>>>>>>>> Hmm, the SEL got cleared.  That would clear out any of the =
logs that
>>>>>>>>>> were issued before that time.  I'm not sure when the above =
happened
>>>>>>>>>> verses the crash, though.  It looks like it occurred as part =
of the
>>>>>>>>>> reboot, but I'm not sure what I'm seeing.  Maybe you have a =
startup
>>>>>>>>>> process that clears the SEL?
>>>>>>>>>>=20
>>>>>>>>>> Assuming that's not the issue, what you have looks ok.  I'd =
need to add
>>>>>>>>>> some logs to the kernel to see if the log operation ever =
happens.
>>>>>>>>>>=20
>>>>>>>>>> -corey
>>>>>>>>>>=20
>>>>>>>>>>>=20
>>>>>>>>>>> The SOL log looks like this:
>>>>>>>>>>>=20
>>>>>>>>>>>=20
>>>>>>>>>>> [1107585.917689] sysrq: Trigger a crash
>>>>>>>>>>> [1107585.921272] Kernel panic - not syncing: sysrq triggered =
crash
>>>>>>>>>>> [1107585.927178] CPU: 1 PID: 521033 Comm: bash Tainted: G    =
      I       5.10.159 #1-NixOS
>>>>>>>>>>> [1107585.935335] Hardware name: Dell Inc. PowerEdge =
R510/00HDP0, BIOS 1.11.0 07/23/2012
>>>>>>>>>>> [1107585.943058] Call Trace:
>>>>>>>>>>> [1107585.945680]  dump_stack+0x6b/0x83
>>>>>>>>>>> [1107585.949158]  panic+0x101/0x2c8
>>>>>>>>>>> [1107585.952379]  ? printk+0x58/0x73
>>>>>>>>>>> [1107585.955687]  sysrq_handle_crash+0x16/0x20
>>>>>>>>>>> [1107585.959859]  __handle_sysrq.cold+0x43/0x11a
>>>>>>>>>>> [1107585.964203]  write_sysrq_trigger+0x24/0x40
>>>>>>>>>>> [1107585.968463]  proc_reg_write+0x51/0x90
>>>>>>>>>>> [1107585.972290]  vfs_write+0xc3/0x280
>>>>>>>>>>> [1107585.975768]  ksys_write+0x5f/0xe0
>>>>>>>>>>> [1107585.979248]  do_syscall_64+0x33/0x40
>>>>>>>>>>> [1107585.982987]  entry_SYSCALL_64_after_hwframe+0x61/0xc6
>>>>>>>>>>> [1107585.988199] RIP: 0033:0x7f5873932133
>>>>>>>>>>> [1107585.991938] Code: 0c 00 f7 d8 64 89 02 48 c7 c0 ff ff =
ff ff eb b3 0f 1f 80 00 00 00 00 64 8b 04 25 18 00 00 00 85 c0 75 14 b8 =
01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 55 c3 0f 1f 40 00 41 54 49 89 =
d4 55 48 89 f5
>>>>>>>>>>> [1107586.010842] RSP: 002b:00007ffcc13808c8 EFLAGS: 00000246 =
ORIG_RAX: 0000000000000001
>>>>>>>>>>> [1107586.018566] RAX: ffffffffffffffda RBX: 0000000000000002 =
RCX: 00007f5873932133
>>>>>>>>>>> [1107586.025923] RDX: 0000000000000002 RSI: 00000000005c1c08 =
RDI: 0000000000000001
>>>>>>>>>>> [1107586.033213] RBP: 00000000005c1c08 R08: 000000000000000a =
R09: 00007f58739c2f40
>>>>>>>>>>> [1107586.040504] R10: 00000000005cc348 R11: 0000000000000246 =
R12: 0000000000000002
>>>>>>>>>>> [1107586.047794] R13: 00007f5873a00520 R14: 00007f5873a00720 =
R15: 0000000000000002
>>>>>>>>>>>=20
>>>>>>>>>>> Nothing obvious to me here =E2=80=A6 if you have any further =
ideas what to test, let me know. I should be more responsive again now.
>>>>>>>>>>>=20
>>>>>>>>>>> Thanks and kind regards,
>>>>>>>>>>> Christian
>>>>>>>>>>>=20
>>>>>>>>>>>> On 5. Mar 2023, at 23:53, Corey Minyard <minyard@acm.org> =
wrote:
>>>>>>>>>>>>=20
>>>>>>>>>>>> On Wed, Mar 01, 2023 at 06:00:07PM +0100, Christian Theune =
wrote:
>>>>>>>>>>>>> I=E2=80=99m going to actually attach a serial console to =
watch the =E2=80=9Cecho c=E2=80=9D panic, maybe that gives _some_ =
indication.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Otherwise: I can quickly run patches on the kernel there =
to try out things. (And the funding offer still stands.)
>>>>>>>>>>>>=20
>>>>>>>>>>>> Any news on this?  I'm curious what this could be.
>>>>>>>>>>>>=20
>>>>>>>>>>>> -corey
>>>>>>>>>>>>=20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Christian
>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> On 1. Mar 2023, at 17:58, Corey Minyard <minyard@acm.org> =
wrote:
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> On Tue, Feb 28, 2023 at 06:36:17PM +0100, Christian =
Theune wrote:
>>>>>>>>>>>>>>> Thanks, both machines report:
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> # cat /sys/module/ipmi_msghandler/parameters/panic_op
>>>>>>>>>>>>>>> string
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> At this point, I have no idea.  I'd have to start adding =
printks into
>>>>>>>>>>>>>> the code and cause crashes to see what is happing.
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> Maybe something is getting in the way of the panic =
notifiers and doing
>>>>>>>>>>>>>> something to prevent the IPMI driver from working.
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> -corey
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> On 28. Feb 2023, at 18:04, Corey Minyard =
<minyard@acm.org> wrote:
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> Oh, I forgot.  You can look at panic_op in =
/sys/module/ipmi_msghandler/parameters/panic_op
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> -corey
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> On Tue, Feb 28, 2023 at 05:48:07PM +0100, Christian =
Theune via Openipmi-developer wrote:
>>>>>>>>>>>>>>>>> Hi,
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> On 28. Feb 2023, at 17:36, Corey Minyard =
<minyard@acm.org> wrote:
>>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> On Tue, Feb 28, 2023 at 02:53:12PM +0100, Christian =
Theune via Openipmi-developer wrote:
>>>>>>>>>>>>>>>>>>> Hi,
>>>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>>> I=E2=80=99ve been trying to debug the PANIC and OEM =
string handling and am running out of ideas whether this is a bug or =
whether something so subtle has changed in my config that I=E2=80=99m =
just not seeing it.
>>>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>>> (Note: I=E2=80=99m willing to pay for consulting.)
>>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> Probably not necessary.
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>> Thanks! The offer always stands. If we should ever =
meet I=E2=80=99m also able to pay in beverages. ;)
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>>> I have machines that we=E2=80=99ve moved from an =
older setup (Gentoo, (mostly) vanilla kernel 4.19.157) to a newer setup =
(NixOS, (mostly) vanilla kernel 5.10.159) and I=E2=80=99m now =
experiencing crashes that seem to be kernel panics but do not get the =
usual messages in the IPMI SEL.
>>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> I just tested on stock 5.10.159 and it worked without =
issue.  Everything
>>>>>>>>>>>>>>>>>> you have below looks ok.
>>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> Can you test by causing a crash with:
>>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> echo c >/proc/sysrq-trigger
>>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> and see if it works?
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>> Yeah, already tried that and unfortunately that =
_doesn=E2=80=99t_ work.
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> It sounds like you are having some type of crash that =
you would normally
>>>>>>>>>>>>>>>>>> use the IPMI logs to debug.  However, they aren't =
perfect, the system
>>>>>>>>>>>>>>>>>> has to stay up long enough to get them into the event =
log.
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>> I think they are staying up long enough because a =
panic triggers the 255 second bump in the watchdog and only then pass =
on. However, i=E2=80=99ve also noticed that the kernel _should_ be =
rebooting after a panic much faster (and not rely on the watchdog) and =
that doesn=E2=80=99t happen either. (Sorry this just popped from the =
back of my head).
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>> In this situation, getting a serial console (probably =
through IPMI
>>>>>>>>>>>>>>>>>> Serial over LAN) and getting the console output on a =
crash is probably
>>>>>>>>>>>>>>>>>> your best option.  You can use ipmitool for this, or =
I have a library
>>>>>>>>>>>>>>>>>> that is able to make connections to serial ports, =
including through IPMI
>>>>>>>>>>>>>>>>>> SoL.
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>> Yup. Been there, too. :)
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>> Unfortunately we=E2=80=99re currently chasing =
something that pops up very randomly on somewhat odd machines and I also =
have the feeling that it=E2=80=99s systematically broken right now (as =
the =E2=80=9Cecho c=E2=80=9D doesn=E2=80=99t work).
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>> Thanks a lot,
>>>>>>>>>>>>>>>>> Christian
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>> --=20
>>>>>>>>>>>>>>>>> Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 =
345 219401 0
>>>>>>>>>>>>>>>>> Flying Circus Internet Operations GmbH =C2=B7 =
https://flyingcircus.io
>>>>>>>>>>>>>>>>> Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 =
Deutschland
>>>>>>>>>>>>>>>>> HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: =
Christian Theune, Christian Zagrodnick
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>>>>>>> Openipmi-developer mailing list
>>>>>>>>>>>>>>>>> Openipmi-developer@lists.sourceforge.net
>>>>>>>>>>>>>>>>> =
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Liebe Gr=C3=BC=C3=9Fe,
>>>>>>>>>>>>>>> Christian Theune
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> --=20
>>>>>>>>>>>>>>> Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 =
345 219401 0
>>>>>>>>>>>>>>> Flying Circus Internet Operations GmbH =C2=B7 =
https://flyingcircus.io
>>>>>>>>>>>>>>> Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 =
Deutschland
>>>>>>>>>>>>>>> HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: =
Christian Theune, Christian Zagrodnick
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Liebe Gr=C3=BC=C3=9Fe,
>>>>>>>>>>>>> Christian Theune
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> --=20
>>>>>>>>>>>>> Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 345 =
219401 0
>>>>>>>>>>>>> Flying Circus Internet Operations GmbH =C2=B7 =
https://flyingcircus.io
>>>>>>>>>>>>> Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 =
Deutschland
>>>>>>>>>>>>> HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: =
Christian Theune, Christian Zagrodnick
>>>>>>>>>>>>>=20
>>>>>>>>>>>=20
>>>>>>>>>>> Liebe Gr=C3=BC=C3=9Fe,
>>>>>>>>>>> Christian Theune
>>>>>>>>>>>=20
>>>>>>>>>>> --=20
>>>>>>>>>>> Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 345 =
219401 0
>>>>>>>>>>> Flying Circus Internet Operations GmbH =C2=B7 =
https://flyingcircus.io
>>>>>>>>>>> Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 =
Deutschland
>>>>>>>>>>> HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: =
Christian Theune, Christian Zagrodnick
>>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>> Liebe Gr=C3=BC=C3=9Fe,
>>>>>>>>> Christian Theune
>>>>>>>>>=20
>>>>>>>>> --=20
>>>>>>>>> Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 345 =
219401 0
>>>>>>>>> Flying Circus Internet Operations GmbH =C2=B7 =
https://flyingcircus.io
>>>>>>>>> Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 =
Deutschland
>>>>>>>>> HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: =
Christian Theune, Christian Zagrodnick
>>>>>>>>>=20
>>>>>>=20
>>>>>> Liebe Gr=C3=BC=C3=9Fe,
>>>>>> Christian Theune
>>>>>>=20
>>>>>> --=20
>>>>>> Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 345 219401 =
0
>>>>>> Flying Circus Internet Operations GmbH =C2=B7 =
https://flyingcircus.io
>>>>>> Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 =
Deutschland
>>>>>> HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: Christian =
Theune, Christian Zagrodnick
>>>>>>=20
>>>>=20
>>>> Liebe Gr=C3=BC=C3=9Fe,
>>>> Christian Theune
>>>>=20
>>>> --=20
>>>> Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 345 219401 0
>>>> Flying Circus Internet Operations GmbH =C2=B7 =
https://flyingcircus.io
>>>> Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 Deutschland
>>>> HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: Christian =
Theune, Christian Zagrodnick
>>>>=20
>>>>=20
>>>>=20
>>>> _______________________________________________
>>>> Openipmi-developer mailing list
>>>> Openipmi-developer@lists.sourceforge.net
>>>> https://lists.sourceforge.net/lists/listinfo/openipmi-developer
>>=20
>> Liebe Gr=C3=BC=C3=9Fe,
>> Christian Theune
>>=20
>> --=20
>> Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 345 219401 0
>> Flying Circus Internet Operations GmbH =C2=B7 https://flyingcircus.io
>> Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 Deutschland
>> HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: Christian =
Theune, Christian Zagrodnick
>>=20
>>=20
>>=20
>> _______________________________________________
>> Openipmi-developer mailing list
>> Openipmi-developer@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/openipmi-developer
> <0001-ipmi-watchdog-Set-panic-count-to-proper-value-on-a-p.patch>

Liebe Gr=C3=BC=C3=9Fe,
Christian Theune

--=20
Christian Theune =C2=B7 ct@flyingcircus.io =C2=B7 +49 345 219401 0
Flying Circus Internet Operations GmbH =C2=B7 https://flyingcircus.io
Leipziger Str. 70/71 =C2=B7 06108 Halle (Saale) =C2=B7 Deutschland
HR Stendal HRB 21169 =C2=B7 Gesch=C3=A4ftsf=C3=BChrer: Christian Theune, =
Christian Zagrodnick


--Apple-Mail=_E4FB77B7-8BE6-4E76-9C75-42922E1CB34F
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--Apple-Mail=_E4FB77B7-8BE6-4E76-9C75-42922E1CB34F
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--Apple-Mail=_E4FB77B7-8BE6-4E76-9C75-42922E1CB34F--

