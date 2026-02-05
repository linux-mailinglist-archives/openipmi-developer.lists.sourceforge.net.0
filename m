Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wygvMGrvhWkPIgQAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 06 Feb 2026 14:40:58 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 061D3FE4C4
	for <lists+openipmi-developer@lfdr.de>; Fri, 06 Feb 2026 14:40:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hJw0lFqpUoo8hNeJCLank13MsD8UnaB7tJTHeKJ4uOw=; b=OgI1P1weNC5haJSL0JAv2E2pch
	6JndlU6mkNo5dbV9fQaa1hgzk5fRg0jiGHr80IBbO6GgA0PtNiqqemE3MEnGhjhIQZ5Uznj3zRj8G
	CSyRfZ83EFsqH4O6VZ3Vfbg3MvLELWk5D1ap1tYOpSIxdx3tePLCdLL07pwp604lPWtM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1voM4m-0001GU-9v;
	Fri, 06 Feb 2026 13:40:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <k@mgml.me>) id 1vo1Cd-0003A9-6G
 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Feb 2026 15:23:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FMqKTVC4tFP0KfvzabCCcACgxz50qsTjISdyUVdpNgQ=; b=b19qzCm7GaoiENg0We40Rq7fyI
 y8pknBx4p63Qv80soGKUwX3+tsKS0UY+LYgZQ4d8cTiOE44aKxUC/q05Cz8krdVCCq2OHNQTs9GO7
 21S4aGj7dV/u39b8buYZLFdXVyi2GLp0YV8joz3wAyazUo1qa0xQLGeRTqxVLg+S3l9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FMqKTVC4tFP0KfvzabCCcACgxz50qsTjISdyUVdpNgQ=; b=Q
 vGIAie5GbeO2Ga1nlQZP6aVpcJgjQmTzWkrcGqsl01hy4MOrF3Nse1CG3+zMj+UiyjHHo89SqH7Pe
 3Qp0DMYHXAztnlrivZ3UtSWddsaakCvQMnrDK0kQrFEJTKcuG2b18exv8uOrokTryr3Bi73zb6Hmw
 CyptxxhJZ2j4DOgU=;
Received: from www5210.sakura.ne.jp ([133.167.8.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vo1Cd-0003yx-0L for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Feb 2026 15:23:31 +0000
Received: from fedora (p4512038-ipxg00s01tokaisakaetozai.aichi.ocn.ne.jp
 [114.172.121.38]) (authenticated bits=0)
 by www5210.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 615ElrnK045624
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 5 Feb 2026 23:48:17 +0900 (JST) (envelope-from k@mgml.me)
DKIM-Signature: a=rsa-sha256; bh=FMqKTVC4tFP0KfvzabCCcACgxz50qsTjISdyUVdpNgQ=; 
 c=relaxed/relaxed; d=mgml.me;
 h=From:To:Subject:Date:Message-ID;
 s=rs20250315; t=1770302897; v=1;
 b=DIKMJ26Kqp0HZF3fW9AwgU4HbVrLlC5yVdTI8ecmwNhRQoG6S77D4XI+ZNFXiuvg
 WsJiXuPZd0FT6r4I3ER4raYTWcM9fPgP+vo1GFZ7WgjkTxRge3xIMbGJ7lwcDWUq
 jR6XsWG04IGQEaN9pu7a4/2uxhfeW5vwBQfwb4C1JACr4OB6K2C68hFXI5PiWaAN
 gJ+m4Nl1VKtdxcSt8XpTY/CZaV32AITsiobU2MtktRmjUML12HtlgS4reVaJLR9i
 kLTApkdBvrYCQ+gwmXfdXHBdh6uul4tg571V5kAXPhioE+geSc/C9tDqbZYxwfVL
 MEGGHVWgExe6u3bNI5ZUDw==
From: Kenta Akagi <k@mgml.me>
To: Corey Minyard <corey@minyard.net>
Date: Thu,  5 Feb 2026 23:47:38 +0900
Message-ID: <20260205144739.116409-1-k@mgml.me>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In kernel 6.18.7,
 we encountered the following panic. [164050.860241]
 list_add double add: new=ffff8a5833cd0000, prev=ffff8a5833cd0000,
 next=ffff8a387b2491b0.
 [164050.869744] [ cut here ] [164050.874698] kernel BUG at lib/list_de [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vo1Cd-0003yx-0L
X-Mailman-Approved-At: Fri, 06 Feb 2026 13:40:46 +0000
Subject: [Openipmi-developer] [PATCH RFC 0/1] ipmi: Fix double list_add when
 sender returns an error
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
Cc: openipmi-developer@lists.sourceforge.net, Kenta Akagi <k@mgml.me>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[mgml.me : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:k@mgml.me,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[k@mgml.me,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,mgml.me:s=rs20250315];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k@mgml.me,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,mgml.me:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,mgml.me:mid]
X-Rspamd-Queue-Id: 061D3FE4C4
X-Rspamd-Action: no action

In kernel 6.18.7, we encountered the following panic.

    [164050.860241] list_add double add: new=ffff8a5833cd0000, prev=ffff8a5833cd0000, next=ffff8a387b2491b0.
    [164050.869744] ------------[ cut here ]------------
    [164050.874698] kernel BUG at lib/list_debug.c:35!
    [164050.879435] Oops: invalid opcode: 0000 [#1] SMP NOPTI
    [164050.884742] CPU: 5 UID: 0 PID: 99228 Comm: kworker/5:2 Kdump: loaded Tainted: G S          E       6.18.7-20260127.el9.x86_64 #1 PREEMPT(voluntary)
    [164050.899481] Tainted: [S]=CPU_OUT_OF_SPEC, [E]=UNSIGNED_MODULE
    [164050.905470] Hardware name: Dell Inc. PowerEdge R640/0X45NX, BIOS 2.15.1 06/15/2022
    [164050.913285] Workqueue: events smi_work [ipmi_msghandler]
    [164050.918865] RIP: 0010:__list_add_valid_or_report+0xb6/0xc0
    [164050.924609] Code: c7 e8 b1 c3 89 48 8b 16 48 89 f1 4c 89 e6 e8 e1 16 a9 ff 0f 0b 48 89 f2 4c 89 e1 48 89 fe 48 c7 c7 40 b2 c3 89 e8 ca 16 a9 ff <0f> 0b 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90
    [164050.943787] RSP: 0018:ffffceacac91fdc0 EFLAGS: 00010246
    [164050.949271] RAX: 0000000000000058 RBX: ffff8a5833cd0000 RCX: 0000000000000000
    [164050.956665] RDX: 0000000000000000 RSI: 0000000000000001 RDI: ffff8a773f89c1c0
    [164050.964054] RBP: ffff8a5833cd0000 R08: 0000000000000000 R09: ffffceacac91fc78
    [164050.971441] R10: ffffceacac91fc70 R11: ffffffff8a7e10c8 R12: ffff8a387b2491b0
    [164050.978837] R13: 0000000000000000 R14: ffff8a387b249190 R15: ffff8a387b2491b0
    [164050.986229] FS:  0000000000000000(0000) GS:ffff8a77b459d000(0000) knlGS:0000000000000000
    [164050.994581] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
    [164051.000597] CR2: 00007ff95841be6c CR3: 000000063b022001 CR4: 00000000007726f0
    [164051.007997] PKRU: 55555554
    [164051.010970] Call Trace:
    [164051.013690]  <TASK>
    [164051.016055]  ? mutex_lock+0xe/0x30
    [164051.019724]  deliver_response+0x59/0x100 [ipmi_msghandler]
    [164051.025495]  smi_work+0xa0/0x370 [ipmi_msghandler]
    [164051.030563]  process_one_work+0x19d/0x3d0
    [164051.034844]  worker_thread+0x23e/0x360
    [164051.038873]  ? __pfx_worker_thread+0x10/0x10
    [164051.043423]  kthread+0xfb/0x230
    [164051.046850]  ? __pfx_kthread+0x10/0x10
    [164051.050872]  ? __pfx_kthread+0x10/0x10
    [164051.054894]  ret_from_fork+0xe9/0x100
    [164051.058826]  ? __pfx_kthread+0x10/0x10
    [164051.062852]  ret_from_fork_asm+0x1a/0x30
    [164051.067065]  </TASK>

Because kdump was not properly configured, I was unable to inspect the
vmcore, but based on the oops and the current implementation, I infer
that the issue occurred via the following mechanism.

- The BMC becomes unstable
- Some kind of msg is queued in (hp_)xmit_msgs and smi_work runs
- (Because the BMC is unstable) intf->handlers->sender returns an error
- deliver_err_response() queues newmsg into intf->user_msg
- goto restart, but since intf->curr_msg is naturally non-NULL, no
  dequeue is performed from (hp_)xmit_msgs
- The same newmsg as before the restart goes through the same flow and
  deliver_err_response is executed, leading to a double add

I took a quick look at the BMC logs and there was a watchdog BMC reset
around the time of the panic, so I'm pretty sure the BMC was unstable.

I'm not sure if this is the correct approach, but I submit a RFC PATCH
in the spirit of a bug report. I would appreciate your feedback. You
can completely discard mine and fix it as a separate patch if you
prefer.

Thanks.

 
Kenta Akagi (1):
  ipmi: Fix double list_add when sender returns an error

 drivers/char/ipmi/ipmi_msghandler.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
