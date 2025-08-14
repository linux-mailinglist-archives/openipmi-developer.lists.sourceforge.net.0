Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1BDB27F75
	for <lists+openipmi-developer@lfdr.de>; Fri, 15 Aug 2025 13:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:MIME-Version:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SX0fMBoKftgp4Y1yls2Y9gI+f5hw5fI5I3HCXZSaYUI=; b=hPVb4NA7Q8m7rgX5aCNz8tQso+
	Br9Wf8XwDlftSr0DwVjZjETg9mnKkDochJC8963CB362OYTMl1ETcnFJEGXm4TllXhWZPf02+79aw
	NiAeB31mJMF12tLUzpCZKpjetvb0ZXMZjvQM0yPwpI5ketMiZYSfDQmzc2ZUkzf/RTrE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1umsqv-0003H2-DB;
	Fri, 15 Aug 2025 11:44:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mbannister@janestreet.com>) id 1umU4M-00035F-TV
 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 09:16:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xnriYzOEC+iFta1WrL5pdQ+Sa4aTb0qCpJsrS35e2eM=; b=em0BrNaBWfL4vZu49/3xVLp9qJ
 IWuEHDhLh2RiRBuARxbPQk94C39MGE3dkqIIBKpfvotnqrw7Vo8LgcpjPxsMHjGBPThV/ztggchpw
 XS6d2I2yS8Jd+8ntbyrcX52Ue68wknCFnoAGJ9Hplwjsp6plAZJJ1iPMMEiiFwEnOn0k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:MIME-Version:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xnriYzOEC+iFta1WrL5pdQ+Sa4aTb0qCpJsrS35e2eM=; b=A
 ENfmC8P9WOKUtRUWvmkOOiYZzL+Buv8S9JLz4V5pL0TdteQ2X9k8tPcd4SnWGToe2d+bsfc3IC2zu
 FYorPvsBacdDHh9RMxi6VquvDWpyG4IzJJeCjXkx5Czcpn6sLPLARA+tWMAL2b/Exh5/68AoVBTP0
 2Sh56ug5C8MSAVFk=;
Received: from mxout1.mail.janestreet.com ([38.105.200.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1umU4K-00019C-Lu for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 09:16:22 +0000
Received: from mail-io1-f69.google.com ([209.85.166.69])
 by mxgoog2.mail.janestreet.com with esmtps (TLS1.3:TLS_AES_128_GCM_SHA256:128)
 (Exim 4.98.2) id 1umTmr-0000000BDYj-0yMG
 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 04:58:17 -0400
Received: by mail-io1-f69.google.com with SMTP id
 ca18e2360f4ac-88432d89576so80494739f.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 14 Aug 2025 01:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=janestreet.com; s=google; t=1755161896; x=1755766696;
 darn=lists.sourceforge.net; 
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=xnriYzOEC+iFta1WrL5pdQ+Sa4aTb0qCpJsrS35e2eM=;
 b=rIVMB7GoNrGHnVGHaFoWqAB/1JLM8/g16nGbtpoPTQl3D26gTpVJgzSM5bOey26ncU
 lU7hfDvO+ymfUCJgUIYoGsQ3trq56qAZfTV1Ld3bq/OBLnldX2zTea9ELoe8qDrTKhrs
 vBzjkvv8lmMh/9Exhpca2TqBwwGjn+eYy9IPU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=janestreet.com;
 s=waixah; t=1755161897;
 bh=xnriYzOEC+iFta1WrL5pdQ+Sa4aTb0qCpJsrS35e2eM=;
 h=From:Date:Subject:To:Cc;
 b=RQtxPd76VI9poJO0zu3ZnVvmsm3iwVyLemCVHd7TitW290t9OTjU8kGufs2Jk7cOp
 I9Jf72ddGJZVeTPPkUKzTHX2dG+1sfjZlqWnr1wFuhtyCny+e3PBcvdf+m7CEJu6V7
 kHjKQbBS1GxXP4S60t4rLUTE4AdcsGLs9RZPRM8WeZIna4PtCoB3VAvVTXbU8P9oU0
 QcbxZqoZvkOTddIwp/qQC+SkqUeEtcb5RK7IQztmPWdFTllSuiRDH8l1q9SOqbBjlR
 keIjQMn30N+FbYYuyZOjWUNc2jGhmlNOrqrUAnSNtuttUKOhYmsYUBEH2zOPXu6IrH
 lIpo+90plRrVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755161896; x=1755766696;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=xnriYzOEC+iFta1WrL5pdQ+Sa4aTb0qCpJsrS35e2eM=;
 b=pP4cceTCTwxNFPK4vy4Gg1HLw70FZB7zxf6cTPxHkj19+Jz4Q+rJmCbUTPbHttlEQf
 9fHd17Ic81AKX88sechPhUGqxtgbP8tGN/RefNoUi4dyswVMtZRjIfRb/edieb/QMrHQ
 f8WoSeIkNtVNJr3QvW8TEYYnlmZ5z/lQwqaRBvqtm4rsVvTis57SlPdd/o9Lkl9JrMKs
 5S4ZYvcduPgPoIesf3LsHV/vnzoihwWDYoGa3TfjMOVX1E7JzgYGEBpWvEOmszfyupSJ
 2u4treXo81KeAE4oU8GNQK+aTtLgO4KYqj5ABfsyCrWghPUD27/kh1s7a7ERgsy/EP54
 laEw==
X-Gm-Message-State: AOJu0YwdomK2NLMVcSz9UtpEZH8LbzwC1cI55OsM7rsrRMV97VzmyGO9
 4aYbM+8D5LJejBhyvVelaJuBJCl7abCIATtnV44BzqNVpZ1ALmVnWLVUKs8xJwfi+ct6Dumx7Ab
 FUU5IdG/rRb/b7iof0pMljAApoJ6Y6tzhTGuont5ajrwrFc6RJUmzMCYnLXxVPk8c6keHqjzjx6
 +Ia+HnVejHZYDUREMC4XTI4wReAPFiFY7mpjB4lKRXJ4jbaVytxJpgGZguDgc8acSJMg==
X-Gm-Gg: ASbGncvdnzPPG4/wWRTWwf56Sk0u3SYH5dOCXelw+AXSrzf851p60Dt1ZW94c1XNJSa
 Znuy95zzxq2N+Es0JfwjL5UpyyMUP6MfKty9twFC1JohtaF8DlCBfVthrWoy+4NeuZJ4phSNWu2
 drzMtpPQf0ExVteB5fC2/d
X-Received: by 2002:a05:6602:3402:b0:883:e1b3:19cc with SMTP id
 ca18e2360f4ac-88433809cf1mr467852639f.6.1755161895901; 
 Thu, 14 Aug 2025 01:58:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1fsyORtIEB3fD9lzuaBXeuCsNE5EP+mNR6TYrVPU/Rj8rQPaqlKX8QbJ9XTjbYeT3B1rmyd2MPsVHh3jx7AM=
X-Received: by 2002:a05:6602:3402:b0:883:e1b3:19cc with SMTP id
 ca18e2360f4ac-88433809cf1mr467849639f.6.1755161895240; Thu, 14 Aug 2025
 01:58:15 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 14 Aug 2025 09:58:04 +0100
X-Gm-Features: Ac12FXw5Jn2TUUTNCutJ86thJiFaduwicBa6zr8lNBm5JDALoAPhcDUcGbgx6yk
Message-ID: <CABpvmx_oukmj9LwcknfeupBx33_PPKWW=6LbZhYkPxk_=jQbGA@mail.gmail.com>
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hi Corey I crashed a machine on 1st August after issuing
 'ipmitool
 mc reset cold' to reset a BMC. I got a crash dump from this event which I
 have been analyzing. The crash occurred when the NMI watchdog detect [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: janestreet.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1umU4K-00019C-Lu
X-Mailman-Approved-At: Fri, 15 Aug 2025 11:44:08 +0000
Subject: [Openipmi-developer] [BUG] ipmi_si: watchdog: hard LOCKUP in
 smi_event_handler/kcs_event
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
From: Mark Bannister via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Mark Bannister <mbannister@janestreet.com>
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============6726053654965527342=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============6726053654965527342==
Content-Type: multipart/alternative; boundary="0000000000004a2a11063c4f7967"

--0000000000004a2a11063c4f7967
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Corey

I crashed a machine on 1st August after issuing 'ipmitool mc reset cold' to
reset a BMC.  I got a crash dump from this event which I have been
analyzing.  The crash occurred when the NMI watchdog detected a hard LOCKUP
in an interrupt handler:

[144482.968722] CPU: 1 PID: 96220 Comm: process-finder Kdump: loaded
Tainted: G        W  O       6.6.93-1.el8.x86_64 #1
[144482.968724] RIP: 0010:port_outb+0x13/0x20 [ipmi_si]
[144482.968735] Code: 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 0f 1f 44 00 00 66 0f af 77 18 89 d0 0f b7 57 28 01 f2 ee
<c3> cc cc cc cc 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90
[144482.968736] RSP: 0018:ff626798c007ce50 EFLAGS: 00000002
[144482.968737] RAX: 0000000000000000 RBX: ff2e8eaa120b1c00 RCX:
ff2e8ee87e860640
[144482.968738] RDX: 0000000000000ca2 RSI: 0000000000000000 RDI:
ff2e8ee98e8c0840
[144482.968738] RBP: 0000000000000001 R08: ff2e8ee87e860668 R09:
ff626798c007cf08
[144482.968739] R10: 0000000000000006 R11: 000000000000044d R12:
0000000000000000
[144482.968739] R13: ff2e8ee98e8c0800 R14: ffffffffc27ad210 R15:
ff626798c007cf00
[144482.968740] FS:  00007fffe8bff700(0000) GS:ff2e8ee87e840000(0000)
knlGS:0000000000000000
[144482.968740] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[144482.968741] CR2: 00007ffff7ceb528 CR3: 000000047de9e001 CR4:
0000000000771ee0
[144482.968742] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
0000000000000000
[144482.968742] DR3: 0000000000000000 DR6: 00000000fffe07f0 DR7:
0000000000000400
[144482.968743] PKRU: 55555554
[144482.968743] Call Trace:
[144482.968745]  <IRQ>
[144482.968746]  kcs_event+0x253/0x960 [ipmi_si]
[144482.968751]  smi_event_handler+0x5b/0x280 [ipmi_si]
[144482.968756]  smi_timeout+0x3b/0xc0 [ipmi_si]
[144482.968760]  ? __pfx_smi_timeout+0x10/0x10 [ipmi_si]
[144482.968764]  call_timer_fn+0x24/0x130
[144482.968769]  __run_timers.part.0+0x1d8/0x280
[144482.968771]  ? enqueue_hrtimer+0x35/0x90
[144482.968772]  ? __hrtimer_run_queues+0x141/0x2b0
[144482.968772]  ? sched_clock+0xc/0x30
[144482.968775]  run_timer_softirq+0x26/0x50
[144482.968776]  handle_softirqs+0xdd/0x2d0
[144482.968779]  irq_exit_rcu+0xa8/0xd0
[144482.968781]  sysvec_apic_timer_interrupt+0x6e/0x90
[144482.968784]  </IRQ>

I was able to reproduce the crash two days ago (12th August) by running
'ipmitool mc reset cold' in a loop with 2 minute sleeps between on
identical test hardware running the same kernel version, although so far
when I have reproduced the crash I have not been able to get another crash
dump.

# c=3D0; while :; do ((c+=3D1)); echo $(date) - $c; ipmitool mc reset cold;
sleep 120; done
Tue 12 Aug 07:02:28 EDT 2025 - 1
Sent cold reset command to MC
Tue 12 Aug 07:04:28 EDT 2025 - 2
Sent cold reset command to MC
Tue 12 Aug 07:06:28 EDT 2025 - 3
Sent cold reset command to MC
Tue 12 Aug 07:08:28 EDT 2025 - 4
Sent cold reset command to MC
Tue 12 Aug 07:10:28 EDT 2025 - 5
Sent cold reset command to MC
Tue 12 Aug 07:12:28 EDT 2025 - 6
Sent cold reset command to MC
Tue 12 Aug 07:14:28 EDT 2025 - 7
Sent cold reset command to MC
Tue 12 Aug 07:16:28 EDT 2025 - 8
Sent cold reset command to MC
Tue 12 Aug 07:18:28 EDT 2025 - 9
Sent cold reset command to MC
Tue 12 Aug 07:20:28 EDT 2025 - 10
Sent cold reset command to MC
Tue 12 Aug 07:22:28 EDT 2025 - 11
Sent cold reset command to MC
Tue 12 Aug 07:24:28 EDT 2025 - 12
Sent cold reset command to MC
Tue 12 Aug 07:26:28 EDT 2025 - 13
Sent cold reset command to MC
EXIT STATUS 255

I have tried (and so far failed) to reproduce the problem on
kernel 6.1.144-1.el8.x86_64, but admittedly I haven't tried very hard yet
so that might not be a reliable data point.

On the reproducer, I was gathering debug data from the ipmi_si module using
'echo 7 > /sys/module/ipmi_si/parameters/kcs_debug' and was running
'journalctl -f' in a terminal window at the time of the crash, where the
terminal buffer is filled up with thousands of lines like this, which were
produced as the BMC was resetting:

Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: ipmi_kcs_sm: kcs hosed: Not in
read state for error2
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: ipmi_kcs_sm: kcs hosed: Not in
read state for error2
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: ipmi_kcs_sm: kcs hosed: Not in
read state for error2
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: ipmi_kcs_sm: kcs hosed: Not in
read state for error2
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1
Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1

I collected some more debug data from the vmcore file collected on 1st
August:

$ crash --zero_excluded
/usr/lib/debug/lib/modules/6.6.93-1.el8.x86_64/vmlinux vmcore
...
crash> mod -s ipmi_si
     MODULE       NAME                              TEXT_BASE         SIZE
 OBJECT FILE
ffffffffc27dde80  ipmi_si                        ffffffffc27ab000    86016
 /usr/lib/debug/lib/modules/6.6.93-1.el8.x86_64/kernel/drivers/char/ipmi/ip=
mi_si.ko.debug


crash> struct smi_info 0xff2e8ee98e8c0800
struct smi_info {
  si_num =3D 0,
  intf =3D 0xff2e8ee98fbaa000,
  si_sm =3D 0xff2e8eaa120b1c00,
  handlers =3D 0xffffffffc27e4240 <kcs_smi_handlers>,
  si_lock =3D {
    {
      rlock =3D {
        raw_lock =3D {
          {
            val =3D {
              counter =3D 257
            },
            {
              locked =3D 1 '\001',
              pending =3D 1 '\001'
            },
            {
              locked_pending =3D 257,
              tail =3D 0
            }
          }
        }
      }
    }
  },
  waiting_msg =3D 0x0,
  curr_msg =3D 0x0,
  si_state =3D SI_NORMAL,
  io =3D {
    inputb =3D 0xffffffffc27b1940 <port_inb>,
    outputb =3D 0xffffffffc27b1970 <port_outb>,
    addr =3D 0x0,
    regspacing =3D 1,
    regsize =3D 1,
    regshift =3D 0,
    addr_space =3D IPMI_IO_ADDR_SPACE,
    addr_data =3D 3234,
    addr_source =3D SI_ACPI,
    addr_info =3D {
      acpi_info =3D {
        acpi_handle =3D 0xff2e8ee9891e2f30
      }
    },
    io_setup =3D 0xffffffffc27b1ac0 <ipmi_si_port_setup>,
    io_cleanup =3D 0xffffffffc27b1a60 <port_cleanup>,
    io_size =3D 2,
    irq =3D 0,
    irq_setup =3D 0x0,
    irq_handler_data =3D 0x0,
    irq_cleanup =3D 0x0,
    slave_addr =3D 32 ' ',
    si_type =3D SI_KCS,
    dev =3D 0xff2e8ee98ac6c010
  },
  oem_data_avail_handler =3D 0x0,
  msg_flags =3D 0 '\000',
  has_event_buffer =3D false,
  req_events =3D {
    counter =3D 0
  },
  run_to_completion =3D false,
  si_timer =3D {
    entry =3D {
      next =3D 0xdead000000000122,
      pprev =3D 0x0
    },
    expires =3D 4439136548,
    function =3D 0xffffffffc27ad210 <smi_timeout>,
    flags =3D 155189249
  },
  timer_can_start =3D true,
  timer_running =3D true,
  last_timeout_jiffies =3D 4439136547,
  need_watch =3D {
    counter =3D 0
  },
  interrupt_disabled =3D true,
  supports_event_msg_buff =3D false,
  cannot_disable_irq =3D false,
  irq_enable_broken =3D false,
  in_maintenance_mode =3D true,
  got_attn =3D false,
  device_id =3D {
    device_id =3D 32 ' ',
    device_revision =3D 2 '\002',
    firmware_revision_1 =3D 1 '\001',
    firmware_revision_2 =3D 0 '\000',
    ipmi_version =3D 2 '\002',
    additional_device_support =3D 191 '\277',
    manufacturer_id =3D 10876,
    product_id =3D 7496,
    aux_firmware_revision =3D "!\001\000 ",
    aux_firmware_revision_set =3D 1
  },
  dev_group_added =3D true,
  stats =3D {{
      counter =3D 13470
    }, {
      counter =3D 1809
    }, {
      counter =3D 358202
    }, {
      counter =3D 0
    }, {
      counter =3D 0
    }, {
      counter =3D 0
    }, {
      counter =3D 24503
    }, {
      counter =3D 357924
    }, {
      counter =3D 0
    }, {
      counter =3D 0
    }, {
      counter =3D 0
    }},
  thread =3D 0xff2e8eaa82124100,
  link =3D {
    next =3D 0xffffffffc27dd780 <smi_infos>,
    prev =3D 0xffffffffc27dd780 <smi_infos>
  }
}

crash> struct si_sm_data 0xff2e8eaa120b1c00
struct si_sm_data {
  state =3D KCS_ERROR1,
  io =3D 0xff2e8ee98e8c0840,
  write_data =3D "\030\001\003\001\000\000&\030@\000\000\000\000\000\000\00=
0\330\002\000\000\000\000\000\000\330\002\000\000\000\000\000\000\b\000\000=
\000\000\000\000\000\003\000\000\000\004\000\000\000\030\003\000\000\000\00=
0\000\000\030\003\000\000\000\000\000\000\030\003\000\000\000\000\000\000\0=
34\000\000\000\000\000\000\000\034\000\000\000\000\000\000\000\001\000\000\=
000\000\000\000\000\001\000\000\000\004\000\000\000\000\000\000\000\000\000=
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\00=
0\n\000\000\000\000\000\000\000\n\000\000\000\000\000\000\000\020\000\000\0=
00\000\000\000\001\000\000\000\005\000\000\000\000\020\000\000\000\000\000\=
000\000\020\000\000\000\000\000\000\000\020\000\000\000\000\000\000E\005\00=
0\000\000\000\000\000E\005\000\000\000\000\000\000\000\020\000\000\000\000\=
000\000\001\000\000\000\004\000\000\000\000
\000\000\000\000\000\000\000 \000\000\000\000\000\000\000
\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\003\000\000\00=
0\000\000\000\000"...,
  write_pos =3D 0,
  write_count =3D 0,
  orig_write_count =3D 0,
  read_data =3D "\034\002\000 \002\001\000\002\277|*\000H\035!\001\000
\034\000@SDA Temp\000\a-C\374\177\200KF\000\000\006\000\000\000@
-\000\000\000\000\000\000@=3D\000\000\000\000\000\000@=3D\000\000\000\000\0=
00\000
\002\000\000\000\000\000\000
\002\000\000\000\000\000\000\b\000\000\000\000\000\000\000\004\000\000\000\=
004\000\000\000\070\003\000\000\000\000\000\000\070\003\000\000\000\000\000=
\000\070\003\000\000\000\000\000\000
\000\000\000\000\000\000\000
\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\004\000\000\000\=
004\000\000\000X\003\000\000\000\000\000\000X\003\000\000\000\000\000\000X\=
003\000\000\000\000\000\000D\000\000\000\000\000\000\000D\000\000\000\000\0=
00\000\000\004\000\000\000\000\000\000\000S\345td\004\000\000\000pz\350\320=
\023u\023\376\070\003\000\000\000\000\000\000\070\003\000\000\000\000\000\0=
00
\000\000\000\000\000\000\000
\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000"...,
  read_pos =3D 0,
  truncated =3D 0,
  error_retries =3D 6,
  ibf_timeout =3D 5000000,
  obf_timeout =3D 5000000,
  error0_timeout =3D 4439151592
}
crash>

From the above it looks like, at the time of the crash, the state machine
was at KCS_ERROR1 (si_sm_data.state) having at that moment in time handled
6 retries (si_sm_data.error_retries), but having a hosed counter of 24,503
(smi_info.stats[6]).

Looking in the smi_event_handler code, I wasn't immediately sure whether a
result of SI_SM_HOSED would cause the interrupt handler to keep looping
around and not allow other interrupts to fire, but the symptoms might
suggest that?  Although if that was the case I'm surprised we haven't seen
the problem more often, we have lots of machines.

My presumption was that this:

[144482.968724] RIP: 0010:port_outb+0x13/0x20 [ipmi_si]
[144482.968735] Code: 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90 90 90
90 90 90 90 90 0f 1f 44 00 00 66 0f af 77 18 89 d0 0f b7 57 28 01 f2 ee
<c3> cc cc cc cc 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90

... as well as the thousands of state transitions I saw when reproducing
the problem with debug output, and the hosed counter being very high in the
vmcore, suggested that it wasn't actually stuck at a ret instruction (c3)
in port_outb, but that's just where RIP was at the point the crash was
taken.

Happy to collect more info from the vmcore as needed or test patches etc.

Best regards
Mark

--0000000000004a2a11063c4f7967
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Corey</div><div><br></div><div>I crashed a machine=
 on 1st August after issuing &#39;ipmitool mc reset cold&#39; to reset a BM=
C.=C2=A0 I got a crash dump from this event which I have been analyzing.=C2=
=A0 The crash occurred when the NMI watchdog detected a hard LOCKUP in an i=
nterrupt handler:</div><div><br></div><div><font face=3D"monospace">[144482=
.968722] CPU: 1 PID: 96220 Comm: process-finder Kdump: loaded Tainted: G =
=C2=A0 =C2=A0 =C2=A0 =C2=A0W =C2=A0O =C2=A0 =C2=A0 =C2=A0 6.6.93-1.el8.x86_=
64 #1<br>[144482.968724] RIP: 0010:port_outb+0x13/0x20 [ipmi_si]<br>[144482=
.968735] Code: 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 =
90 90 90 0f 1f 44 00 00 66 0f af 77 18 89 d0 0f b7 57 28 01 f2 ee &lt;c3&gt=
; cc cc cc cc 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90<br>[144482=
.968736] RSP: 0018:ff626798c007ce50 EFLAGS: 00000002<br>[144482.968737] RAX=
: 0000000000000000 RBX: ff2e8eaa120b1c00 RCX: ff2e8ee87e860640<br>[144482.9=
68738] RDX: 0000000000000ca2 RSI: 0000000000000000 RDI: ff2e8ee98e8c0840<br=
>[144482.968738] RBP: 0000000000000001 R08: ff2e8ee87e860668 R09: ff626798c=
007cf08<br>[144482.968739] R10: 0000000000000006 R11: 000000000000044d R12:=
 0000000000000000<br>[144482.968739] R13: ff2e8ee98e8c0800 R14: ffffffffc27=
ad210 R15: ff626798c007cf00<br>[144482.968740] FS: =C2=A000007fffe8bff700(0=
000) GS:ff2e8ee87e840000(0000) knlGS:0000000000000000<br>[144482.968740] CS=
: =C2=A00010 DS: 0000 ES: 0000 CR0: 0000000080050033<br>[144482.968741] CR2=
: 00007ffff7ceb528 CR3: 000000047de9e001 CR4: 0000000000771ee0<br>[144482.9=
68742] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000<br=
>[144482.968742] DR3: 0000000000000000 DR6: 00000000fffe07f0 DR7: 000000000=
0000400<br>[144482.968743] PKRU: 55555554<br>[144482.968743] Call Trace:<br=
>[144482.968745] =C2=A0&lt;IRQ&gt;<br>[144482.968746] =C2=A0kcs_event+0x253=
/0x960 [ipmi_si]<br>[144482.968751] =C2=A0smi_event_handler+0x5b/0x280 [ipm=
i_si]<br>[144482.968756] =C2=A0smi_timeout+0x3b/0xc0 [ipmi_si]<br>[144482.9=
68760] =C2=A0? __pfx_smi_timeout+0x10/0x10 [ipmi_si]<br>[144482.968764] =C2=
=A0call_timer_fn+0x24/0x130<br>[144482.968769] =C2=A0__run_timers.part.0+0x=
1d8/0x280<br>[144482.968771] =C2=A0? enqueue_hrtimer+0x35/0x90<br>[144482.9=
68772] =C2=A0? __hrtimer_run_queues+0x141/0x2b0<br>[144482.968772] =C2=A0? =
sched_clock+0xc/0x30<br>[144482.968775] =C2=A0run_timer_softirq+0x26/0x50<b=
r>[144482.968776] =C2=A0handle_softirqs+0xdd/0x2d0<br>[144482.968779] =C2=
=A0irq_exit_rcu+0xa8/0xd0<br>[144482.968781] =C2=A0sysvec_apic_timer_interr=
upt+0x6e/0x90<br>[144482.968784] =C2=A0&lt;/IRQ&gt;</font><br></div><div><b=
r></div><div>I was able to reproduce the crash two days ago (12th August) b=
y running &#39;ipmitool mc reset cold&#39; in a loop with 2 minute sleeps b=
etween on identical test hardware running the same kernel version, although=
 so far when I have reproduced the crash I have not been able to get anothe=
r crash dump.</div><div><br></div><div><font face=3D"monospace"># c=3D0; wh=
ile :; do ((c+=3D1)); echo $(date) - $c; ipmitool mc reset cold; sleep 120;=
 done<br>Tue 12 Aug 07:02:28 EDT 2025 - 1<br>Sent cold reset command to MC<=
br>Tue 12 Aug 07:04:28 EDT 2025 - 2<br>Sent cold reset command to MC<br>Tue=
 12 Aug 07:06:28 EDT 2025 - 3<br>Sent cold reset command to MC<br>Tue 12 Au=
g 07:08:28 EDT 2025 - 4<br>Sent cold reset command to MC<br>Tue 12 Aug 07:1=
0:28 EDT 2025 - 5<br>Sent cold reset command to MC<br>Tue 12 Aug 07:12:28 E=
DT 2025 - 6<br>Sent cold reset command to MC<br>Tue 12 Aug 07:14:28 EDT 202=
5 - 7<br>Sent cold reset command to MC<br>Tue 12 Aug 07:16:28 EDT 2025 - 8<=
br>Sent cold reset command to MC<br>Tue 12 Aug 07:18:28 EDT 2025 - 9<br>Sen=
t cold reset command to MC<br>Tue 12 Aug 07:20:28 EDT 2025 - 10<br>Sent col=
d reset command to MC<br>Tue 12 Aug 07:22:28 EDT 2025 - 11<br>Sent cold res=
et command to MC<br>Tue 12 Aug 07:24:28 EDT 2025 - 12<br>Sent cold reset co=
mmand to MC<br>Tue 12 Aug 07:26:28 EDT 2025 - 13<br>Sent cold reset command=
 to MC<br>EXIT STATUS 255</font></div><div><br></div><div>I have tried (and=
 so far failed) to reproduce the problem on kernel=C2=A06.1.144-1.el8.x86_6=
4, but admittedly I haven&#39;t tried very hard yet so that might not be a =
reliable data point.</div><div><br></div><div>On the reproducer, I was gath=
ering debug data from the ipmi_si module using &#39;echo 7 &gt; /sys/module=
/ipmi_si/parameters/kcs_debug&#39; and was running &#39;journalctl -f&#39; =
in a terminal window at the time of the crash, where the terminal buffer is=
 filled up with thousands of lines like this, which were produced as the BM=
C was resetting:</div><div><br></div><div><font face=3D"monospace">Aug 12 0=
7:27:44 kernel: ipmi_si IPI0001:00: ipmi_kcs_sm: kcs hosed: Not in read sta=
te for error2<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D=
 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<=
br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug =
12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:2=
7:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 ke=
rnel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: i=
pmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si =
IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001=
:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KC=
S: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: Stat=
e =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8=
, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br=
>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12=
 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:=
44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kern=
el: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipm=
i_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IP=
I0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:0=
0: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS:=
 State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =
=3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, =
c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>A=
ug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 0=
7:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44=
 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel=
: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_=
si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0=
001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00:=
 KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: S=
tate =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =
=3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: ipmi_kcs_sm: kcs h=
osed: Not in read state for error2<br>Aug 12 07:27:44 kernel: ipmi_si IPI00=
01:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: =
KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: St=
ate =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D=
 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<=
br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug =
12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:2=
7:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 ke=
rnel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: i=
pmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si =
IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001=
:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KC=
S: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: Stat=
e =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8=
, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br=
>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12=
 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:=
44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kern=
el: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipm=
i_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IP=
I0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:0=
0: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS:=
 State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =
=3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, =
c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>A=
ug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 0=
7:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44=
 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel=
: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_=
si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0=
001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00:=
 ipmi_kcs_sm: kcs hosed: Not in read state for error2<br>Aug 12 07:27:44 ke=
rnel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: i=
pmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si =
IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001=
:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KC=
S: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: Stat=
e =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6=
, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br=
>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12=
 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:=
44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kern=
el: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipm=
i_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IP=
I0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:0=
0: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS:=
 State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =
=3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, =
c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>A=
ug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 0=
7:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44=
 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel=
: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_=
si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0=
001:00: KCS: State =3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00:=
 KCS: State =3D 7, c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: S=
tate =3D 8, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =
=3D 6, c1<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, =
c9<br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>A=
ug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug 12 0=
7:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:27:44=
 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 kernel=
: ipmi_si IPI0001:00: ipmi_kcs_sm: kcs hosed: Not in read state for error2<=
br>Aug 12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 6, c1<br>Aug =
12 07:27:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 7, c9<br>Aug 12 07:2=
7:44 kernel: ipmi_si IPI0001:00: KCS: State =3D 8, c1<br>Aug 12 07:27:44 ke=
rnel: ipmi_si IPI0001:00: KCS: State =3D 6, c1</font><br></div><div><br></d=
iv><div>I collected some more debug data from the vmcore file collected on =
1st August:</div><div><br></div><div><font face=3D"monospace">$ crash --zer=
o_excluded /usr/lib/debug/lib/modules/6.6.93-1.el8.x86_64/vmlinux vmcore</f=
ont></div><div><font face=3D"monospace">...</font></div><div><font face=3D"=
monospace">crash&gt; mod -s ipmi_si<br>=C2=A0 =C2=A0 =C2=A0MODULE =C2=A0 =
=C2=A0 =C2=A0 NAME =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TEXT_BASE =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 SIZE =C2=A0OBJECT FILE<br>ffffffffc27dde80 =C2=A0ipmi_si =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0ffffffffc27ab000 =C2=A0 =C2=A086016 =C2=A0/usr/lib/debug/lib/modules/6.6=
.93-1.el8.x86_64/kernel/drivers/char/ipmi/ipmi_si.ko.debug <br><br></font><=
/div><div><font face=3D"monospace">crash&gt; struct smi_info 0xff2e8ee98e8c=
0800<br>struct smi_info {<br>=C2=A0 si_num =3D 0,<br>=C2=A0 intf =3D 0xff2e=
8ee98fbaa000,<br>=C2=A0 si_sm =3D 0xff2e8eaa120b1c00,<br>=C2=A0 handlers =
=3D 0xffffffffc27e4240 &lt;kcs_smi_handlers&gt;,<br>=C2=A0 si_lock =3D {<br=
>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 rlock =3D {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 raw_lock =3D {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 val =3D {<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 counter =3D 257<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 locked =3D 1 &#39;\001&#39;,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pending =3D 1 &#39;\001&#39;<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 loc=
ked_pending =3D 257,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ta=
il =3D 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =
=C2=A0 }<br>=C2=A0 =C2=A0 }<br>=C2=A0 },<br>=C2=A0 waiting_msg =3D 0x0,<br>=
=C2=A0 curr_msg =3D 0x0,<br>=C2=A0 si_state =3D SI_NORMAL,<br>=C2=A0 io =3D=
 {<br>=C2=A0 =C2=A0 inputb =3D 0xffffffffc27b1940 &lt;port_inb&gt;,<br>=C2=
=A0 =C2=A0 outputb =3D 0xffffffffc27b1970 &lt;port_outb&gt;,<br>=C2=A0 =C2=
=A0 addr =3D 0x0,<br>=C2=A0 =C2=A0 regspacing =3D 1,<br>=C2=A0 =C2=A0 regsi=
ze =3D 1,<br>=C2=A0 =C2=A0 regshift =3D 0,<br>=C2=A0 =C2=A0 addr_space =3D =
IPMI_IO_ADDR_SPACE,<br>=C2=A0 =C2=A0 addr_data =3D 3234,<br>=C2=A0 =C2=A0 a=
ddr_source =3D SI_ACPI,<br>=C2=A0 =C2=A0 addr_info =3D {<br>=C2=A0 =C2=A0 =
=C2=A0 acpi_info =3D {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 acpi_handle =3D 0xff2=
e8ee9891e2f30<br>=C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 },<br>=C2=A0 =C2=
=A0 io_setup =3D 0xffffffffc27b1ac0 &lt;ipmi_si_port_setup&gt;,<br>=C2=A0 =
=C2=A0 io_cleanup =3D 0xffffffffc27b1a60 &lt;port_cleanup&gt;,<br>=C2=A0 =
=C2=A0 io_size =3D 2,<br>=C2=A0 =C2=A0 irq =3D 0,<br>=C2=A0 =C2=A0 irq_setu=
p =3D 0x0,<br>=C2=A0 =C2=A0 irq_handler_data =3D 0x0,<br>=C2=A0 =C2=A0 irq_=
cleanup =3D 0x0,<br>=C2=A0 =C2=A0 slave_addr =3D 32 &#39; &#39;,<br>=C2=A0 =
=C2=A0 si_type =3D SI_KCS,<br>=C2=A0 =C2=A0 dev =3D 0xff2e8ee98ac6c010<br>=
=C2=A0 },<br>=C2=A0 oem_data_avail_handler =3D 0x0,<br>=C2=A0 msg_flags =3D=
 0 &#39;\000&#39;,<br>=C2=A0 has_event_buffer =3D false,<br>=C2=A0 req_even=
ts =3D {<br>=C2=A0 =C2=A0 counter =3D 0<br>=C2=A0 },<br>=C2=A0 run_to_compl=
etion =3D false,<br>=C2=A0 si_timer =3D {<br>=C2=A0 =C2=A0 entry =3D {<br>=
=C2=A0 =C2=A0 =C2=A0 next =3D 0xdead000000000122,<br>=C2=A0 =C2=A0 =C2=A0 p=
prev =3D 0x0<br>=C2=A0 =C2=A0 },<br>=C2=A0 =C2=A0 expires =3D 4439136548,<b=
r>=C2=A0 =C2=A0 function =3D 0xffffffffc27ad210 &lt;smi_timeout&gt;,<br>=C2=
=A0 =C2=A0 flags =3D 155189249<br>=C2=A0 },<br>=C2=A0 timer_can_start =3D t=
rue,<br>=C2=A0 timer_running =3D true,<br>=C2=A0 last_timeout_jiffies =3D 4=
439136547,<br>=C2=A0 need_watch =3D {<br>=C2=A0 =C2=A0 counter =3D 0<br>=C2=
=A0 },<br>=C2=A0 interrupt_disabled =3D true,<br>=C2=A0 supports_event_msg_=
buff =3D false,<br>=C2=A0 cannot_disable_irq =3D false,<br>=C2=A0 irq_enabl=
e_broken =3D false,<br>=C2=A0 in_maintenance_mode =3D true,<br>=C2=A0 got_a=
ttn =3D false,<br>=C2=A0 device_id =3D {<br>=C2=A0 =C2=A0 device_id =3D 32 =
&#39; &#39;,<br>=C2=A0 =C2=A0 device_revision =3D 2 &#39;\002&#39;,<br>=C2=
=A0 =C2=A0 firmware_revision_1 =3D 1 &#39;\001&#39;,<br>=C2=A0 =C2=A0 firmw=
are_revision_2 =3D 0 &#39;\000&#39;,<br>=C2=A0 =C2=A0 ipmi_version =3D 2 &#=
39;\002&#39;,<br>=C2=A0 =C2=A0 additional_device_support =3D 191 &#39;\277&=
#39;,<br>=C2=A0 =C2=A0 manufacturer_id =3D 10876,<br>=C2=A0 =C2=A0 product_=
id =3D 7496,<br>=C2=A0 =C2=A0 aux_firmware_revision =3D &quot;!\001\000 &qu=
ot;,<br>=C2=A0 =C2=A0 aux_firmware_revision_set =3D 1<br>=C2=A0 },<br>=C2=
=A0 dev_group_added =3D true,<br>=C2=A0 stats =3D {{<br>=C2=A0 =C2=A0 =C2=
=A0 counter =3D 13470<br>=C2=A0 =C2=A0 }, {<br>=C2=A0 =C2=A0 =C2=A0 counter=
 =3D 1809<br>=C2=A0 =C2=A0 }, {<br>=C2=A0 =C2=A0 =C2=A0 counter =3D 358202<=
br>=C2=A0 =C2=A0 }, {<br>=C2=A0 =C2=A0 =C2=A0 counter =3D 0<br>=C2=A0 =C2=
=A0 }, {<br>=C2=A0 =C2=A0 =C2=A0 counter =3D 0<br>=C2=A0 =C2=A0 }, {<br>=C2=
=A0 =C2=A0 =C2=A0 counter =3D 0<br>=C2=A0 =C2=A0 }, {<br>=C2=A0 =C2=A0 =C2=
=A0 counter =3D 24503<br>=C2=A0 =C2=A0 }, {<br>=C2=A0 =C2=A0 =C2=A0 counter=
 =3D 357924<br>=C2=A0 =C2=A0 }, {<br>=C2=A0 =C2=A0 =C2=A0 counter =3D 0<br>=
=C2=A0 =C2=A0 }, {<br>=C2=A0 =C2=A0 =C2=A0 counter =3D 0<br>=C2=A0 =C2=A0 }=
, {<br>=C2=A0 =C2=A0 =C2=A0 counter =3D 0<br>=C2=A0 =C2=A0 }},<br>=C2=A0 th=
read =3D 0xff2e8eaa82124100,<br>=C2=A0 link =3D {<br>=C2=A0 =C2=A0 next =3D=
 0xffffffffc27dd780 &lt;smi_infos&gt;,<br>=C2=A0 =C2=A0 prev =3D 0xffffffff=
c27dd780 &lt;smi_infos&gt;<br>=C2=A0 }<br>}</font></div><div><font face=3D"=
monospace"><br>crash&gt; struct si_sm_data 0xff2e8eaa120b1c00<br>struct si_=
sm_data {<br>=C2=A0 state =3D KCS_ERROR1,<br>=C2=A0 io =3D 0xff2e8ee98e8c08=
40,<br>=C2=A0 write_data =3D &quot;\030\001\003\001\000\000&amp;\030@\000\0=
00\000\000\000\000\000\330\002\000\000\000\000\000\000\330\002\000\000\000\=
000\000\000\b\000\000\000\000\000\000\000\003\000\000\000\004\000\000\000\0=
30\003\000\000\000\000\000\000\030\003\000\000\000\000\000\000\030\003\000\=
000\000\000\000\000\034\000\000\000\000\000\000\000\034\000\000\000\000\000=
\000\000\001\000\000\000\000\000\000\000\001\000\000\000\004\000\000\000\00=
0\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0=
00\000\000\000\000\000\n\000\000\000\000\000\000\000\n\000\000\000\000\000\=
000\000\020\000\000\000\000\000\000\001\000\000\000\005\000\000\000\000\020=
\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\020\000\000\00=
0\000\000\000E\005\000\000\000\000\000\000E\005\000\000\000\000\000\000\000=
\020\000\000\000\000\000\000\001\000\000\000\004\000\000\000\000 \000\000\0=
00\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000\00=
0\003\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000&quot;...,=
<br>=C2=A0 write_pos =3D 0,<br>=C2=A0 write_count =3D 0,<br>=C2=A0 orig_wri=
te_count =3D 0,<br>=C2=A0 read_data =3D &quot;\034\002\000 \002\001\000\002=
\277|*\000H\035!\001\000 \034\000@SDA Temp\000\a-C\374\177\200KF\000\000\00=
6\000\000\000@-\000\000\000\000\000\000@=3D\000\000\000\000\000\000@=3D\000=
\000\000\000\000\000 \002\000\000\000\000\000\000 \002\000\000\000\000\000\=
000\b\000\000\000\000\000\000\000\004\000\000\000\004\000\000\000\070\003\0=
00\000\000\000\000\000\070\003\000\000\000\000\000\000\070\003\000\000\000\=
000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000\000\b\000=
\000\000\000\000\000\000\004\000\000\000\004\000\000\000X\003\000\000\000\0=
00\000\000X\003\000\000\000\000\000\000X\003\000\000\000\000\000\000D\000\0=
00\000\000\000\000\000D\000\000\000\000\000\000\000\004\000\000\000\000\000=
\000\000S\345td\004\000\000\000pz\350\320\023u\023\376\070\003\000\000\000\=
000\000\000\070\003\000\000\000\000\000\000 \000\000\000\000\000\000\000 \0=
00\000\000\000\000\000\000\b\000\000\000\000\000\000\000&quot;...,<br>=C2=
=A0 read_pos =3D 0,<br>=C2=A0 truncated =3D 0,<br>=C2=A0 error_retries =3D =
6,<br>=C2=A0 ibf_timeout =3D 5000000,<br>=C2=A0 obf_timeout =3D 5000000,<br=
>=C2=A0 error0_timeout =3D 4439151592<br>}<br>crash&gt;</font></div><div><b=
r></div><div>From the above it looks like, at the time of the crash, the st=
ate machine was at KCS_ERROR1 (si_sm_data.state) having at that moment in t=
ime handled 6 retries (si_sm_data.error_retries), but having a hosed counte=
r of 24,503 (smi_info.stats[6]).</div><div><br></div><div>Looking in the=C2=
=A0smi_event_handler code, I wasn&#39;t immediately sure whether a result o=
f SI_SM_HOSED would cause the interrupt handler to keep looping around and =
not allow other interrupts to fire, but the symptoms might suggest that?=C2=
=A0 Although if that was the case I&#39;m surprised we haven&#39;t seen the=
 problem more often, we have lots of machines.</div><div><br></div><div>My =
presumption was that this:</div><div><br></div><div><font face=3D"monospace=
">[144482.968724] RIP: 0010:port_outb+0x13/0x20 [ipmi_si]<br>[144482.968735=
] Code: 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 9=
0 0f 1f 44 00 00 66 0f af 77 18 89 d0 0f b7 57 28 01 f2 ee &lt;c3&gt; cc cc=
 cc cc 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90</font></div><div>=
<br></div><div>... as well as the thousands of state transitions I saw when=
 reproducing the problem with debug output, and the hosed counter being ver=
y high in the vmcore, suggested that it wasn&#39;t actually stuck at a ret =
instruction (c3) in port_outb, but that&#39;s just where RIP was at the poi=
nt the crash was taken.</div><div><br></div><div>Happy to collect more info=
 from the vmcore as needed or test patches etc.</div><div><br></div><div>Be=
st regards</div><div>Mark</div><div><br></div><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><font face=3D"arial, sans-s=
erif"></font></div></div></div></div></div></div></div>

--0000000000004a2a11063c4f7967--


--===============6726053654965527342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6726053654965527342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============6726053654965527342==--

