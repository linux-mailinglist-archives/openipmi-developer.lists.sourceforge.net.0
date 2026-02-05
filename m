Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EL48GG3vhWkPIgQAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 06 Feb 2026 14:41:01 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D255FFE4D3
	for <lists+openipmi-developer@lfdr.de>; Fri, 06 Feb 2026 14:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oSoFQiw3zLqoANzSpXpuJDFhHFLXY4SXlc4M9gRKeb8=; b=FfEyo2uhHf1VjCMhOXKq4z+mKG
	REBdKf6imG6PPA8GHaR/t/YHPkbrjI3aAA1WJbXwMd+2B4reGDlwrXLp5L4vKttGSxdxYzkyUy3CB
	DShAxFjDMILd0vPDIIuj9pMmTjRvc7DcGm1IP6jEBshoPdnctPYfF4IbOln9iH5TViGw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1voM4m-0001Ga-J8;
	Fri, 06 Feb 2026 13:40:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <k@mgml.me>) id 1vo1Ch-00087l-OG
 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Feb 2026 15:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Iy63dnk4v66ntNaVeNlNQMC7btpSCCmyJG1nYU/ReBU=; b=MP72PtJ6Wx0eIijPm+de/sNfJR
 EdhtvG1b9yUavrccukN2cUob2aGWoPXiffU70xh+QjUuDVnarJWUbfdv6CDXoJBOR9CPYzog3Rum9
 tSKoPVRs+yJIPY2BwNgDxouPVX64Q9BG3F7im5bpTW3OG08LlS9kZ6ER++9MWEEJMWio=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Iy63dnk4v66ntNaVeNlNQMC7btpSCCmyJG1nYU/ReBU=; b=iL885HmhgW8XXiNCe8wo2XZZeD
 9vsmwnBja0n0jtKzVUztXuYVta8OX3VDkC2/EBpO7IImqmoFA6RR64cnJKpi+zKVqbG44bL6ES+PO
 WOgj7muaxr/0LhOiXqb3nGMLs3UzCJETJJx6jLtorh8vBNZ1dt9vQahvouyzJccYDM5E=;
Received: from www5210.sakura.ne.jp ([133.167.8.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vo1Cg-0003yx-W6 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Feb 2026 15:23:35 +0000
Received: from fedora (p4512038-ipxg00s01tokaisakaetozai.aichi.ocn.ne.jp
 [114.172.121.38]) (authenticated bits=0)
 by www5210.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 615ElrnL045624
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 5 Feb 2026 23:48:21 +0900 (JST) (envelope-from k@mgml.me)
DKIM-Signature: a=rsa-sha256; bh=Iy63dnk4v66ntNaVeNlNQMC7btpSCCmyJG1nYU/ReBU=; 
 c=relaxed/relaxed; d=mgml.me;
 h=From:To:Subject:Date:Message-ID;
 s=rs20250315; t=1770302902; v=1;
 b=v96u4Vo3qyWBMXHnm5zVdWgq6GZKZ4RGRoPA9BDsWhgw6cl00nqhY9GSkP5lH62u
 SNVWSLjZrHLp5CLkEGmPd1p6AHCtOOISViJybPWxzauDKanJ6MmGGDtdlb/Un7yQ
 sEfoDf3cA4uPCaM4UbHwxTq9+CgkTXtUbtqutJSKhunCDBi3E1vdEha0KNpLk6gw
 RkzTleTMGD9HA2HypO1yTOCD8pS7gtQ+NOW3CXRUTl80H4R2CrHigc97Tyl7Wjvs
 N95Ff610KgYVNf1/9w4FRO0a+iunjKiPmV94YH5D1YHNAe3WM2rIKHCdyxzkhy5/
 rPeqjzFrgUtqQGC3C1KHgg==
From: Kenta Akagi <k@mgml.me>
To: Corey Minyard <corey@minyard.net>
Date: Thu,  5 Feb 2026 23:47:39 +0900
Message-ID: <20260205144739.116409-2-k@mgml.me>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205144739.116409-1-k@mgml.me>
References: <20260205144739.116409-1-k@mgml.me>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Since commit 9cf93a8fa951 ("ipmi: Allow an SMI sender to
 return
 an error"), when the BMC does not respond, the sender returns an error, and
 smi_work goes to restart. However, curr_msg is not cleared during restart,
 which results in a panic due to a double add to the list after restart. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vo1Cg-0003yx-W6
X-Mailman-Approved-At: Fri, 06 Feb 2026 13:40:47 +0000
Subject: [Openipmi-developer] [PATCH RFC 1/1] ipmi: Fix double list_add when
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
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:k@mgml.me,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[k@mgml.me,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mgml.me:mid,mgml.me:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: D255FFE4D3
X-Rspamd-Action: no action

Since commit 9cf93a8fa951 ("ipmi: Allow an SMI sender to return an
error"), when the BMC does not respond, the sender returns an error, and
smi_work goes to restart.

However, curr_msg is not cleared during restart,
which results in a panic due to a double add to the list after restart.

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

This commit ensures that the next message is dequeued from the queue
upon restart.

Cc: stable@vger.kernel.org
Fixes: 9cf93a8fa951 ("ipmi: Allow an SMI sender to return an error")
Signed-off-by: Kenta Akagi <k@mgml.me>
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 3f48fc6ab596..17242b3cf53d 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4814,7 +4814,7 @@ static void smi_work(struct work_struct *t)
 	unsigned long flags = 0; /* keep us warning-free. */
 	struct ipmi_smi *intf = from_work(intf, t, smi_work);
 	int run_to_completion = READ_ONCE(intf->run_to_completion);
-	struct ipmi_smi_msg *newmsg = NULL;
+	struct ipmi_smi_msg *newmsg;
 	struct ipmi_recv_msg *msg, *msg2;
 	int cc;
 
@@ -4826,6 +4826,7 @@ static void smi_work(struct work_struct *t)
 	 * message delivery.
 	 */
 restart:
+	newmsg = NULL;
 	if (!run_to_completion)
 		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
 	if (intf->curr_msg == NULL && !intf->in_shutdown) {
@@ -4854,6 +4855,7 @@ static void smi_work(struct work_struct *t)
 						     newmsg->recv_msg, cc);
 			else
 				ipmi_free_smi_msg(newmsg);
+			intf->curr_msg = NULL;
 			goto restart;
 		}
 	}
-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
