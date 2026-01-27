Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNJ5BlyMeGmqqwEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 10:58:52 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E1092408
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jan 2026 10:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:MIME-Version:Message-Id:Date:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rItLuItZKwcXhKCSGigCcRmK0rLb/GW88ifGzJKzsGU=; b=dn2MMDGCobpvA6tZrw2/6gPsLq
	vWD/jB0gzuQv4EzA95fRzkRPtMBlgNrCGaUZHIoDHpvYij0xt5XBWRMk7rUqxZO+EzTcF2D6q0rHv
	sAv4JoiwKvbGw3JGyIl3iYODyNEmDVQqjAMlLXF55ya+LDrWg1mPbX/WoHlIMlX1sn0k=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vkfqH-0006XU-Uu;
	Tue, 27 Jan 2026 09:58:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leitao@debian.org>) id 1vkfqF-0006XM-Ia
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 09:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WJ9jgq557aIsoOVME2r7v0yn0vgjgXIa6N0hsPBKqn8=; b=lhvZuZ6Otn43t5iMnjXl+CrTgr
 MU0SmNtDhbIKJkqPZCOwxzN+ueMe1rRUxLM9NpYyMkP76FtvBuWiCuftiqRXGhtj6rzP6WX7ECZ5G
 bcMKCJ+m8vUP7No/kEz0fcFH+T4AykFqpZ8IDaxIIHjvhDHWRmhC87Bftjg6O2Wk8am0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WJ9jgq557aIsoOVME2r7v0yn0vgjgXIa6N0hsPBKqn8=; b=B
 HMSFDbsTYTSLemXuE8JQBs7b0aBglEmkB5KBjL+F/8XOcf+dZuTj5PNESpURl6wY7a4/njgh2vSxR
 0GRKelgWiT4zyoMTrMc7OBy1aJKlAkuYG6KwDXSfFPG9/31+N+n0vRFHcmtdkNpX66BtiAeNQr+Yq
 VtWKn1dBxixhxurw=;
Received: from stravinsky.debian.org ([82.195.75.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vkfqE-00069K-S0 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jan 2026 09:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky;
 h=X-Debian-User:Cc:To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=WJ9jgq557aIsoOVME2r7v0yn0vgjgXIa6N0hsPBKqn8=; b=sQQb48HBG+b0VeueUk4xrXCjNA
 anX8G22s/Ml4agj5ItKvSqkeMRm+IxKUJwh4q68x8ByL6wb5iJJq97l5LDgGgfzP7FlR0Uwc3I3MX
 hPfFQPka0dGpGNSuLSbRcH34y08I/to1vL4m3rvEH2iAeHMeggGiQuLNkht4HLgwKIV/v2uVvpHo2
 OVYVnsc3rWRN7uw2LnDW1nV9+6Rskscr73br0ViBNGhARsW1Hp/5HnsUn9GH+Z1VCNgUtZBc0nx2x
 ZPk9Yp6vZX02b15ndZXXuroCuKDQPd9nlyV9UiIU60BHh9HT9foXtF0oteHcsHmx67YiEjFZrBiCc
 E65KC7Ww==;
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vkfq5-00GuDv-FA; Tue, 27 Jan 2026 09:58:25 +0000
From: Breno Leitao <leitao@debian.org>
Date: Tue, 27 Jan 2026 01:57:58 -0800
Message-Id: <20260127-ipmi-v1-0-ba5cc90f516f@debian.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACeMeGkC/yXMzQpAQBSG4Vs5fWtTY4iaW5HFDAdH+WkGKbl3Y
 fkunvdC5CAcYelC4EOiLDMspQmhGdzcs5IWlmC0KXRqSiXrJEpn3nHutCl9i4SwBu7k/DZV/Xf
 c/cjN9lrc9wPqKL8uaAAAAA==
X-Change-ID: 20260127-ipmi-03bae4a027bd
To: Corey Minyard <corey@minyard.net>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.15-dev-deb6e
X-Developer-Signature: v=1; a=openpgp-sha256; l=5642; i=leitao@debian.org;
 h=from:subject:message-id; bh=AzrFVW593Ai5xx9FLIVRL8w0+432x7sxOT+xZPYWQ9I=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBpeIw8mu+6XKANhhl0lz0RZKytOQ5n1QSt91NOc
 v0dx6v696iJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaXiMPAAKCRA1o5Of/Hh3
 bZr0EACvJonjnKi05xumnr6YGTcs8tOo/xIu6pfWSWMhvdwlATwh+ygE0D38BiTj0M4+oBxhRbi
 SK+qwGHAzwhmI2PMoWnwGg/CTuszR+h6Vf1DlLfI7ZGW2iq0rGl84Wc3VqZhPQyvVYjK5wteSgX
 rsG3g2Nq9PAI9O1JgjtFvzP77Vt1z79xhY7IomPMyGg1m5TociFZuKFRpsZL5g5DO/RdLgA578F
 tVvcV1kZJGpnpS17yh23CT12pfY6E4AdsQw0+0JcduiBGdETjiApHH59/8OZeiIZjhtvX5o7C//
 4TBFEiK5ruyj76MyF89n7/kLsua9fPmNEHjOIK4ZIzctHAouF9Zv5sUhMewVDYrz5HxzY3EqY9W
 CJoVCVKCCXUfx6weRojJU8oylNHL2TsIlnDj24lwl5wxOIa3ytgt6UUN0pVwcEwB+jvBGalmW7/
 ShP6qzj2o9cCGaXKkD4r1Itdr4zK6m+ncfz0NaqBNtAF0AzobDwJ6DwV8LExImzxGc03lzyQtKU
 s/1Vh3h+G2O0bohTnIpXU525o/vdMvJMSE/rm3VCFxDiBZgWOQwxTeFPBNDdwxZ6vJCUn/1t1HL
 HMjEXUu8M0v33MOlNjgDvbKxqc35hY9he0lQ5k2GrH4WdiBohruNwHzY2vhn7atnSUteT1PZagL
 immTvRw2GSJYFwg==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Debian-User: leitao
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I am getting the following crash on IPMI on linus' upstream.
 It tries to double-add the same element to a list,
 and then get a slab-use-after-free
 in handle_one_recv_msg. Here is the decoded stack against commit cf38b2340c0e
 ("Merge tag 'soc-fixes-6.19-2' of
 git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc")
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vkfqE-00069K-S0
Subject: [Openipmi-developer] [PATCH] ipmi: fix NULL pointer on smi_work
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
Cc: Breno Leitao <leitao@debian.org>, kernel-team@meta.com,
 openipmi-developer@lists.sourceforge.net, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:nathan@kernel.org,m:nick.desaulniers+lkml@gmail.com,m:morbo@google.com,m:justinstitt@google.com,m:leitao@debian.org,m:kernel-team@meta.com,m:openipmi-developer@lists.sourceforge.net,m:llvm@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:nickdesaulniers@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[minyard.net,kernel.org,gmail.com,google.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,debian.org:s=smtpauto.stravinsky];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[openipmi-developer,lkml];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,debian.org:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 46E1092408
X-Rspamd-Action: no action

I am getting the following crash on IPMI on linus' upstream. It tries to
double-add the same element to a list, and then get
a slab-use-after-free in handle_one_recv_msg.

Here is the decoded stack against commit cf38b2340c0e ("Merge tag
'soc-fixes-6.19-2' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc")

	list_add double add: new=ffff888145b19000, prev=ffff888145b19000, next=ffff88810bb6d480.
	  WARNING: lib/list_debug.c:37 at __list_add_valid_or_report+0x10a/0x130, CPU#64: 0/408
	  Workqueue: events smi_work [ipmi_msghandler]
	  RIP: 0010:__list_add_valid_or_report (rw/compile/lib/list_debug.c:35)

	  deliver_response (rw/compile/./include/linux/list.h:158 rw/compile/./include/linux/list.h:191 rw/compile/drivers/char/ipmi/ipmi_msghandler.c:974) ipmi_msghandler
	  smi_work (rw/compile/drivers/char/ipmi/ipmi_msghandler.c:985 rw/compile/drivers/char/ipmi/ipmi_msghandler.c:999 rw/compile/drivers/char/ipmi/ipmi_msghandler.c:4853) ipmi_msghandler
	  ? process_scheduled_works (rw/compile/kernel/workqueue.c:3233 rw/compile/kernel/workqueue.c:3340)
	  process_scheduled_works (rw/compile/kernel/workqueue.c:? rw/compile/kernel/workqueue.c:3340)
	  worker_thread (rw/compile/./include/linux/list.h:381 rw/compile/kernel/workqueue.c:946 rw/compile/kernel/workqueue.c:3422)
	  kthread (rw/compile/kernel/kthread.c:465)
	  ? pr_cont_work (rw/compile/kernel/workqueue.c:3367)
	  ? kthread_blkcg (rw/compile/kernel/kthread.c:412)
	  ret_from_fork (rw/compile/arch/x86/kernel/process.c:164)
	  ? kthread_blkcg (rw/compile/kernel/kthread.c:412)
	  ret_from_fork_asm (rw/compile/arch/x86/entry/entry_64.S:256)

	list_add double add: new=ffff888145b19000, prev=ffff888145b19000, next=ffff88810bb6d480.
	  WARNING: lib/list_debug.c:37 at __list_add_valid_or_report+0x10a/0x130, CPU#64: 0/408
	  <double add hit again same stack>

	BUG: KASAN: slab-use-after-free in handle_one_recv_msg (rw/compile/drivers/char/ipmi/ipmi_msghandler.c:? rw/compile/drivers/char/ipmi/ipmi_msghandler.c:4761) ipmi_msghandler
	  T473136] Write of size 4 at addr ffff888145b19010 by task kworker/30:3/473136
	  handle_new_recv_msgs (rw/compile/drivers/char/ipmi/ipmi_msghandler.c:4788) ipmi_msghandler
	  ? get_smi_info (rw/compile/drivers/char/ipmi/ipmi_si_intf.c:918) ipmi_si
	  smi_work (rw/compile/drivers/char/ipmi/ipmi_msghandler.c:?) ipmi_msghandler
	  ? process_scheduled_works (rw/compile/kernel/workqueue.c:3233 rw/compile/kernel/workqueue.c:3340)
	  process_scheduled_works (rw/compile/kernel/workqueue.c:? rw/compile/kernel/workqueue.c:3340)
	  worker_thread (rw/compile/./include/linux/list.h:381 rw/compile/kernel/workqueue.c:946 rw/compile/kernel/workqueue.c:3422)
	  kthread (rw/compile/kernel/kthread.c:465)
	  ? rcu_is_watching (rw/compile/./include/linux/context_tracking.h:128 rw/compile/kernel/rcu/tree.c:751)
	  ? pr_cont_work (rw/compile/kernel/workqueue.c:3367)
	  ? kthread_blkcg (rw/compile/kernel/kthread.c:412)
	  ret_from_fork (rw/compile/arch/x86/kernel/process.c:164)
	  ? kthread_blkcg (rw/compile/kernel/kthread.c:412)
	  ret_from_fork_asm (rw/compile/arch/x86/entry/entry_64.S:256)

	Allocated by task 6379:
	  kasan_save_track (rw/compile/mm/kasan/common.c:58 rw/compile/mm/kasan/common.c:78)
	  __kasan_kmalloc (rw/compile/mm/kasan/common.c:419)
	  __kmalloc_cache_noprof (rw/compile/mm/slub.c:5781)
	  kernfs_fop_open.llvm.1481521202032378051 (rw/compile/./include/linux/slab.h:957 rw/compile/./include/linux/slab.h:1094 rw/compile/fs/kernfs/file.c:641)
	  do_dentry_open (rw/compile/fs/open.c:963)
	  vfs_open (rw/compile/fs/open.c:1095)
	  path_openat (rw/compile/fs/namei.c:4638 rw/compile/fs/namei.c:4796)
	  do_filp_open (rw/compile/fs/namei.c:4823)
	  do_sys_openat2 (rw/compile/./include/linux/err.h:78 rw/compile/./include/linux/file.h:177 rw/compile/fs/open.c:1430)
	  __x64_sys_openat (rw/compile/fs/open.c:1447)
	  do_syscall_64 (rw/compile/arch/x86/entry/syscall_64.c:?)
	  entry_SYSCALL_64_after_hwframe (rw/compile/arch/x86/entry/entry_64.S:131)

	Freed by task 6379:
	  kasan_save_track (rw/compile/mm/kasan/common.c:58 rw/compile/mm/kasan/common.c:78)
	  kasan_save_free_info (rw/compile/mm/kasan/generic.c:587)
	  __kasan_slab_free (rw/compile/mm/kasan/common.c:287)
	  kfree (rw/compile/mm/slub.c:6674 rw/compile/mm/slub.c:6882)
	  kernfs_fop_release.llvm.1481521202032378051 (rw/compile/fs/kernfs/file.c:788)
	  __fput (rw/compile/fs/file_table.c:469)
	  fput_close_sync (rw/compile/fs/file_table.c:574)
	  __x64_sys_close (rw/compile/fs/open.c:1575 rw/compile/fs/open.c:1558 rw/compile/fs/open.c:1558)
	  do_syscall_64 (rw/compile/arch/x86/entry/syscall_64.c:?)
	  entry_SYSCALL_64_after_hwframe (rw/compile/arch/x86/entry/entry_64.S:131)

	  BUG: kernel NULL pointer dereference, address: 0000000000000000
	  #PF: supervisor instruction fetch in kernel mode
	  #PF: error_code(0x0010) - not-present page
	  PGD 1d14bb067 P4D 1d14bb067 PUD 67c50d067 PMD 0
	  Oops: Oops: 0010 [#1] SMP DEBUG_PAGEALLOC KASAN
	  Hardware name: Quanta North Dome MP/North Dome MP, BIOS F09C_3B14.sign 04/12/2023
	  Workqueue: events smi_work [ipmi_msghandler]

The next patch contains the issue I found and a possible fix.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
Breno Leitao (1):
      ipmi: Fix use-after-free and list corruption on sender error

 drivers/char/ipmi/ipmi_msghandler.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)
---
base-commit: cf38b2340c0e60ef695b7137440a4d187ed49c88
change-id: 20260127-ipmi-03bae4a027bd

Best regards,
--  
Breno Leitao <leitao@debian.org>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
