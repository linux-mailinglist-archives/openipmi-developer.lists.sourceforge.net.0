Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6F8286727
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEBx-0007y1-D8; Wed, 07 Oct 2020 18:29:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wubo40@huawei.com>) id 1kHkL8-0006X1-Qx
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Sep 2020 08:59:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TisGlbcmthNUmuoUCz1WLQa1fHHlmlDYdQl/30gZrCc=; b=L6HKk4LibexS9uyJ782m6CPvrJ
 V/O2jMOLpF/tSVtP+FiThz8rkCkOdJM9h6K0cWE35Lbr2bZvlG1SWHgDWpFkzunbOWYX+rHL6/XZE
 GeW7HYkxqXG8MhyZUvgqAtmX52sN4uiMQELI9l/Lj9zDrVjhP121GNmSTDXbB2GfYiiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TisGlbcmthNUmuoUCz1WLQa1fHHlmlDYdQl/30gZrCc=; b=K
 A94jCdgHEBMd++gL0aW2UobRLgSqaZuYPFEC4cpybUjs57ISfgC7rNqx3oDpImv4a85+NSTMrC6mG
 LPFPV9MmdYA0gdL5sxpwB4tO9heEk5mYzeR7NJm8Jjfb7rCGhgxevv0uR2rTgH9gper0H3KO5fQ6J
 Fk1bwMGm+SCcKKxc=;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHkL4-008Bpw-DI
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Sep 2020 08:59:58 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 28BADE5CA8534F4C8F52;
 Mon, 14 Sep 2020 16:59:44 +0800 (CST)
Received: from huawei.com (10.175.124.27) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.487.0; Mon, 14 Sep 2020
 16:59:33 +0800
From: Wu Bo <wubo40@huawei.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>,
 <hidehiro.kawai.ez@hitachi.com>
Date: Mon, 14 Sep 2020 17:10:02 +0800
Message-ID: <1600074602-622893-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.27]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kHkL4-008Bpw-DI
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:28 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Fix out-of-bounds in
 write_next_byte()
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
Cc: linfeilong@huawei.com, wubo40@huawei.com,
 openipmi-developer@lists.sourceforge.net, liuzhiqiang26@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In the virtual machine, Use mce_inject to inject errors into the system. 
After mce-inject injects an uncorrectable error, there is a probability 
that the virtual machine is not reset immediately, but hangs for more than 
3000 seconds. And the write_data array is accessed out of bounds.

The real reason is that smi_event_handler lack of lock protection 
in the multi-threaded scenario, which causes write_pos to exceed 
the size of the write_data array.

Call Trace:
nmi_handle
   -> mce_raise_notify
       -> panic_event
	   -> ipmi_panic_request_and_wait
		-> flush_messages
		    -> smi_event_handler

Test steps:
1. # vim /tmp/uncorrected
CPU 1 BANK 4
STATUS uncorrected 0xc0
MCGSTATUS  EIPV MCIP
ADDR 0x1234
RIP 0xdeadbabe
RAISINGCPU 0
MCGCAP SER CMCI TES 0x6
 
2. # modprobe mce_inject
3. # cd /tmp
4. # mce-inject uncorrected

The log as follows:
[   29.826892] core: [Hardware Error]: CPU 1: Machine Check Exception: 6 Bank 4: b4000000000000c0
[   29.826893] core: [Hardware Error]: RIP 00:<00000000deadbabe>
[   29.826894] core: [Hardware Error]: TSC c5b604e3d3a ADDR 1234
[   29.826896] core: [Hardware Error]: PROCESSOR 0:50654 TIME 1598001986 SOCKET 0 APIC 1 microcode 1
[   29.826896] core: [Hardware Error]: Run the above through 'mcelog --ascii'
[   29.826898] core: [Hardware Error]: Machine check: In kernel and no restart IP
[   29.826899] Kernel panic - not syncing: Fatal machine check
[   29.826899] kernel fault(0x5) notification starting on CPU 2
[   29.826904] kernel fault(0x5) notification finished on CPU 2
[   29.889538] ------------[ cut here ]------------
[   29.889547] do_IRQ(): swapper/0 has overflown the kernel stack (cur:ffffffffb5400000,sp:fffffe0000007c48,
               irq stk top-bottom:ffff98067ac00080-ffff98067ac04000, exception stk top-bottom:fffffe0000009080-fffffe000000b000,ip:delay_tsc+0x34/0x50)
[   29.889569] WARNING: CPU: 0 PID: 0 at arch/x86/kernel/irq_64.c:73 handle_irq+0x102/0x110
[   29.889569] Modules linked in: mce_inject core_module_frame(OE) kbox(O) sysmonitor(O) kboxdriver(O) sunrpc nfit
[   29.889604] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.10.2-0-g5f4c7b1-20181220_000000-szxrtosci10000 04/01/2014
[   29.889607] RIP: 0010:handle_irq+0x102/0x110
[   29.889608] Code: 00 00 50 65 4c 8b 14 25 80 5c 01 00 57 49 81 c2 e0 0a 00 00 48 c7 c7 f8 53 26 b5 4c 89 d6 c6 05 4e 08 3a 01 01
[   29.889609] RSP: 0018:ffff98067ac03fa0 EFLAGS: 00010086
[   29.889611] RAX: 0000000000000000 RBX: ffff980675568800 RCX: 0000000000000006
[   29.889611] RDX: 0000000000000007 RSI: 0000000000000000 RDI: ffff98067ac16a00
[   29.889612] RBP: 0000000000000027 R08: 0000000c83bdf5cc R09: 00000000000002cf
[   29.889613] R10: ffffffffb5413260 R11: 0000000000000002 R12: fffffe0000007b98
[   29.889614] R13: 0000000000000027 R14: 0000000000000000 R15: 0000000000000000
[   29.889615] FS:  0000000000000000(0000) GS:ffff98067ac00000(0000) knlGS:0000000000000000
[   29.889616] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   29.889617] CR2: 00007fd391992fb8 CR3: 00000000a0a0a005 CR4: 00000000003606f0
[   29.889624] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   29.889624] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   29.889625] Call Trace:
[   29.889629]  <IRQ>
[   29.889633]  ? delay_tsc+0x34/0x50
[   29.889638]  do_IRQ+0x49/0xe0
[   29.889641]  common_interrupt+0xf/0xf
[   29.889642]  </IRQ>
[   29.889642]  <NMI>
[   29.889644] RIP: 0010:delay_tsc+0x34/0x50
[   29.889646] Code: 5a 4b 0f ae e8 0f 31 48 c1 e2 20 48 89 d1 48 09 c1 0f ae e8 0f 31 48 c1 e2 20 48 09 d0 48 89 c2 48 29 ca 48 39 fa 73 15 f3 90 <65>
[   29.889647] RSP: 0018:fffffe0000007c48 EFLAGS: 00000287 ORIG_RAX: ffffffffffffffd8
[   29.889648] RAX: 00000c5b6825d6ec RBX: 00000000004b6c49 RCX: 00000c5b6825cf64
[   29.889649] RDX: 0000000000000788 RSI: 0000000000000000 RDI: 0000000000000835
[   29.889649] RBP: fffffe0000007cc0 R08: 0000000000000004 R09: fffffe0000007c5c
[   29.889650] R10: ffffffffb5605ae0 R11: 0000000000000000 R12: fffffe0000007cb0
[   29.889651] R13: 0000000000000001 R14: fffffe0000007ef8 R15: ffffffffb526a280
[   29.889654]  ? __ndelay+0x40/0x40
[   29.889657]  wait_for_panic+0x1c/0x60
[   29.889662]  mce_timed_out+0x6d/0x90
[   29.889665]  do_machine_check+0x8d4/0xdb0
[   29.889673]  ? native_safe_halt+0xe/0x10
[   29.889679]  raise_exception+0x47/0xb0 [mce_inject]
[   29.889684]  ? __intel_pmu_enable_all+0x47/0x80
[   29.889689]  ? native_apic_msr_write+0x27/0x30
[   29.889691]  ? intel_pmu_handle_irq+0x10d/0x160
[   29.889692]  mce_raise_notify+0x62/0x70 [mce_inject]
[   29.889694]  ? raise_local+0xc0/0xc0 [mce_inject]
[   29.889696]  nmi_handle+0x63/0x110
[   29.889699]  default_do_nmi+0x4e/0x100
[   29.889702]  do_nmi+0x12c/0x190
[   29.889704]  end_repeat_nmi+0x16/0x6a
[   29.889707] RIP: 0010:native_safe_halt+0xe/0x10
[   29.889708] Code: eb bd 90 90 90 90 90 90 90 90 90 90 e9 07 00 00 00 0f 00 2d 46 6b 59 00 f4 c3 66 90
[   29.889709] RSP: 0018:ffffffffb5403e90 EFLAGS: 00000246
[   29.889710] RAX: ffffffffb4a71f30 RBX: 0000000000000000 RCX: 0000000000000000
[   29.889711] RDX: 0000000000000001 RSI: 0000000000000000 RDI: 0000000000000000
[   29.889712] RBP: 0000000000000000 R08: 0000000c7fd07643 R09: 0000000000000001
[   29.889712] R10: 0000000000000401 R11: 00000000000003f4 R12: 0000000000000000
[   29.889715] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[   29.889719]  ? __cpuidle_text_start+0x8/0x8
[   29.889721]  ? first_nmi+0x1e/0x1e
[   29.889723]  ? delay_tsc+0x3b/0x50
[   29.889724]  </NMI>
[   29.889724] WARNING: stack recursion on stack type 6
[   29.889725] ---[ end trace e03eaf0134c6fcd6 ]---
[ 3086.488900] BUG: unable to handle kernel paging request at ffff980680000001
[ 3086.488902] PGD a1801067 P4D a1801067 PUD 0
[ 3086.488916] Oops: 0000 [#1] SMP PTI
[ 3086.488919] CPU: 2 PID: 0 Comm: swapper/2 Kdump: loaded Tainted: G   M    W  OE
[ 3086.488920] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.10.2-0-g5f4c7b1-20181220_000000-szxrtosci10000 04/01/2014
[ 3086.488927] RIP: 0010:kcs_event+0x3c2/0x890 [ipmi_si]
[ 3086.488928] Code: 74 0e 48 8b 7b 08 31 f6 48 8b 07 e8 68 0f 9b f4 83 bb 24 01 00 00 01 48 8b 7b 08
[ 3086.488930] RSP: 0018:fffffe000005d658 EFLAGS: 00010046
[ 3086.488931] RAX: 0000000009a24ff1 RBX: ffff9806765db000 RCX: 0000000000000000
[ 3086.488931] RDX: 0000000000000ca2 RSI: 0000000000000000 RDI: ffff98067551fc40
[ 3086.488932] RBP: 0000000000000001 R08: 0000000000000000 R09: ffffffff00080204
[ 3086.488933] R10: fffffe000005dae8 R11: fffffe000005db00 R12: 0000000000000000
[ 3086.488933] R13: fffffe000005db28 R14: ffff980674870000 R15: 0000000000000000
[ 3086.488934] FS:  0000000000000000(0000) GS:ffff98067ad00000(0000) knlGS:0000000000000000
[ 3086.488935] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 3086.488936] CR2: ffff980680000001 CR3: 00000000a0a0a006 CR4: 00000000003606e0
[ 3086.488942] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 3086.488942] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 3086.488943] Call Trace:
[ 3086.488946]  <NMI>
[ 3086.488950]  smi_event_handler+0x4f/0x690 [ipmi_si]
[ 3086.488952]  flush_messages+0x10/0x40 [ipmi_si]
[ 3086.488957]  ipmi_panic_request_and_wait+0xf5/0x100 [ipmi_msghandler]
[ 3086.488960]  ? dummy_smi_done_handler+0x10/0x10 [ipmi_msghandler]
[ 3086.488967]  ? kvm_sched_clock_read+0xd/0x20
[ 3086.488970]  ? sched_clock+0x5/0x10
[ 3086.488975]  ? sched_clock_cpu+0xc/0xa0
[ 3086.488980]  ? log_store+0x278/0x2c0
[ 3086.488982]  ? ipmi_si_platform_shutdown+0x20/0x20 [ipmi_si]
[ 3086.488984]  ? kcs_event+0x20/0x890 [ipmi_si]
[ 3086.488986]  ? ipmi_addr_length+0x40/0x40 [ipmi_msghandler]
[ 3086.488988]  ? panic_event+0x1d4/0x3e0 [ipmi_msghandler]
[ 3086.488990]  panic_event+0x1d4/0x3e0 [ipmi_msghandler]
[ 3086.488993]  ? vprintk_deferred+0x3a/0x40
[ 3086.488994]  ? printk+0x52/0x6e
[ 3086.488998]  ? cpumask_next+0x17/0x20
[ 3086.489000]  notifier_call_chain+0x47/0x70
[ 3086.489004]  panic+0x17d/0x2c2
[ 3086.489007]  mce_panic+0x216/0x240
[ 3086.489009]  do_machine_check+0xccd/0xdb0
[ 3086.489012]  ? native_safe_halt+0xe/0x10
[ 3086.489018]  raise_exception+0x47/0xb0 [mce_inject]
[ 3086.489021]  ? __intel_pmu_enable_all+0x47/0x80
[ 3086.489024]  ? native_apic_msr_write+0x27/0x30
[ 3086.489025]  ? intel_pmu_handle_irq+0x10d/0x160
[ 3086.489027]  mce_raise_notify+0x62/0x70 [mce_inject]
[ 3086.489029]  ? raise_local+0xc0/0xc0 [mce_inject]
[ 3086.489032]  nmi_handle+0x63/0x110
[ 3086.489035]  default_do_nmi+0x4e/0x100
[ 3086.489037]  do_nmi+0x12c/0x190
[ 3086.489038]  end_repeat_nmi+0x16/0x6a
[ 3086.489041] RIP: 0010:native_safe_halt+0xe/0x10
[ 3086.489042] Code: eb bd 90 90 90 90 90 90 90 90 90 90 e9 07 00 00 00 0f 00 2d 46 6b
[ 3086.489043] RSP: 0018:ffffb545c069beb0 EFLAGS: 00000246
[ 3086.489044] RAX: ffffffffb4a71f30 RBX: 0000000000000002 RCX: 0000000000000000
[ 3086.489044] RDX: 0000000000000001 RSI: 0000000000000000 RDI: 0000000000000000
[ 3086.489045] RBP: 0000000000000002 R08: 0000000c7fa43cae R09: 0000000000000027
[ 3086.489045] R10: ffffb545c067bce0 R11: 00000000000001ba R12: 0000000000000000
[ 3086.489046] R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
[ 3086.489048]  ? __cpuidle_text_start+0x8/0x8
[ 3086.489051]  ? native_safe_halt+0xe/0x10
[ 3086.489052]  ? native_safe_halt+0xe/0x10
[ 3086.489053]  </NMI>
[ 3086.489054]  default_idle+0x1a/0xd0
[ 3086.489056]  do_idle+0x1aa/0x250
[ 3086.489057]  cpu_startup_entry+0x6f/0x80
[ 3086.489060]  start_secondary+0x1a7/0x200
[ 3086.489064]  secondary_startup_64+0xb7/0xc0
[ 3086.489066] Modules linked in: mce_inject core_module_frame(OE) kbox(O) sysmonitor(O)
[ 3086.489089] kernel fault(0x1) notification starting on CPU 2
[ 3086.489094] kernel fault(0x1) notification finished on CPU 2

crash> struct si_sm_data 0xffff8b06f08bec00
struct si_sm_data {
  state = KCS_WAIT_WRITE,
  io = 0xffff8b06f0bd5e40,
  write_data = "\020\002A\003 Fo\241at\....
  write_pos = 18331179,    <----  
  write_count = -18331372, 
  orig_write_count = 10,
  read_data = "\034B\000\000\001\...
  read_pos = 0,
  truncated = 0,
  error_retries = 1,
  ibf_timeout = 5000000,
  obf_timeout = 5000000,
  error0_timeout = 4294734898
}

Fixes: 82802f968bd31 ("ipmi: Don't flush messages in sender() in run-to-completion mode")
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 77b8d551ae7f..961e7b0b11fe 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -882,15 +882,18 @@ static void flush_messages(void *send_info)
 {
 	struct smi_info *smi_info = send_info;
 	enum si_sm_result result;
+	unsigned long flags = 0;
+	int time = 0;
 
-	/*
-	 * Currently, this function is called only in run-to-completion
-	 * mode.  This means we are single-threaded, no need for locks.
-	 */
-	result = smi_event_handler(smi_info, 0);
-	while (result != SI_SM_IDLE) {
+restart:
+	spin_lock_irqsave(&smi_info->si_lock, flags);
+	result = smi_event_handler(smi_info, time);
+	spin_unlock_irqrestore(&smi_info->si_lock, flags);
+
+	if (result != SI_SM_IDLE) {
 		udelay(SI_SHORT_TIMEOUT_USEC);
-		result = smi_event_handler(smi_info, SI_SHORT_TIMEOUT_USEC);
+		time = SI_SHORT_TIMEOUT_USEC;
+		goto restart;
 	}
 }
 
-- 
2.23.0


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
