Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C25781AEDDF
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2020 16:10:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jPoB2-0005GB-ET; Sat, 18 Apr 2020 14:10:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1jPoB1-0005Fn-5J
 for openipmi-developer@lists.sourceforge.net; Sat, 18 Apr 2020 14:10:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q7iETbiTSWdmbLBp7m4d87bl5oy94FlxNJJHRALWPSM=; b=R77gz9SvK9O7/Jc2Jki2JLj95/
 IO06TIleGoj9nPR7Ucl/E+xOJ+0O3TxyMGUQ+fKrAn1cMrSQG1Bm/FLbb24evEeOu7mluxi3yO9uZ
 TA7F5KOLED8uykgzVc4MsIu5eTadEVMPYcG5Zrx1jxR7dYu7lG9KRXL/c83j0ozPH6t0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q7iETbiTSWdmbLBp7m4d87bl5oy94FlxNJJHRALWPSM=; b=kcnbtEtxRVOdWwuaVmrLFgf5Py
 MJPuBfPaDofrTq3jk/cJRQKwK3950ZLDvHt70RVvrFfXUoV/4KjOjTDQfQbJ+gm3dTNkyE1oBAXcf
 6b641cGRacxR/kxUEefx3HpM2OsngW/YeK8Ul5oacIcT9yaO3cX/GQ+/5cvm34JFw7GU=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jPoAz-006VgQ-8s
 for openipmi-developer@lists.sourceforge.net; Sat, 18 Apr 2020 14:10:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1FEE21D6C;
 Sat, 18 Apr 2020 14:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587219027;
 bh=z5dYLHcHjfsFQ8/0jvOvn36gZiwUOSgHbKRE0i4pM9Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sPehZaVc61FiPL09zBIbC2Y+d/9+c8RDoRimxPlQQZ8tqTOYZQQ5fzCYeTPxP4ryJ
 nHbZqU0rYk/sJFQvfvRfVgQ0n+UqIAhOlJwASHBWpGki4q9udvWOEh+Qq66TX9PUNK
 Xl9mYujAMy4OTJBbeT6DLM5svrGSoBEr+rKH4sAc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sat, 18 Apr 2020 10:08:57 -0400
Message-Id: <20200418140910.8280-62-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418140910.8280-1-sashal@kernel.org>
References: <20200418140910.8280-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jPoAz-006VgQ-8s
Subject: [Openipmi-developer] [PATCH AUTOSEL 5.5 62/75] ipmi: fix hung
 processes in __get_guid()
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
Cc: Corey Minyard <minyard@acm.org>, Corey Minyard <cminyard@mvista.com>,
 Wen Yang <wenyang@linux.alibaba.com>, Arnd Bergmann <arnd@arndb.de>,
 Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Wen Yang <wenyang@linux.alibaba.com>

[ Upstream commit 32830a0534700f86366f371b150b17f0f0d140d7 ]

The wait_event() function is used to detect command completion.
When send_guid_cmd() returns an error, smi_send() has not been
called to send data. Therefore, wait_event() should not be used
on the error path, otherwise it will cause the following warning:

[ 1361.588808] systemd-udevd   D    0  1501   1436 0x00000004
[ 1361.588813]  ffff883f4b1298c0 0000000000000000 ffff883f4b188000 ffff887f7e3d9f40
[ 1361.677952]  ffff887f64bd4280 ffffc90037297a68 ffffffff8173ca3b ffffc90000000010
[ 1361.767077]  00ffc90037297ad0 ffff887f7e3d9f40 0000000000000286 ffff883f4b188000
[ 1361.856199] Call Trace:
[ 1361.885578]  [<ffffffff8173ca3b>] ? __schedule+0x23b/0x780
[ 1361.951406]  [<ffffffff8173cfb6>] schedule+0x36/0x80
[ 1362.010979]  [<ffffffffa071f178>] get_guid+0x118/0x150 [ipmi_msghandler]
[ 1362.091281]  [<ffffffff810d5350>] ? prepare_to_wait_event+0x100/0x100
[ 1362.168533]  [<ffffffffa071f755>] ipmi_register_smi+0x405/0x940 [ipmi_msghandler]
[ 1362.258337]  [<ffffffffa0230ae9>] try_smi_init+0x529/0x950 [ipmi_si]
[ 1362.334521]  [<ffffffffa022f350>] ? std_irq_setup+0xd0/0xd0 [ipmi_si]
[ 1362.411701]  [<ffffffffa0232bd2>] init_ipmi_si+0x492/0x9e0 [ipmi_si]
[ 1362.487917]  [<ffffffffa0232740>] ? ipmi_pci_probe+0x280/0x280 [ipmi_si]
[ 1362.568219]  [<ffffffff810021a0>] do_one_initcall+0x50/0x180
[ 1362.636109]  [<ffffffff812231b2>] ? kmem_cache_alloc_trace+0x142/0x190
[ 1362.714330]  [<ffffffff811b2ae1>] do_init_module+0x5f/0x200
[ 1362.781208]  [<ffffffff81123ca8>] load_module+0x1898/0x1de0
[ 1362.848069]  [<ffffffff811202e0>] ? __symbol_put+0x60/0x60
[ 1362.913886]  [<ffffffff8130696b>] ? security_kernel_post_read_file+0x6b/0x80
[ 1362.998514]  [<ffffffff81124465>] SYSC_finit_module+0xe5/0x120
[ 1363.068463]  [<ffffffff81124465>] ? SYSC_finit_module+0xe5/0x120
[ 1363.140513]  [<ffffffff811244be>] SyS_finit_module+0xe/0x10
[ 1363.207364]  [<ffffffff81003c04>] do_syscall_64+0x74/0x180

Fixes: 50c812b2b951 ("[PATCH] ipmi: add full sysfs support")
Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: openipmi-developer@lists.sourceforge.net
Cc: linux-kernel@vger.kernel.org
Cc: stable@vger.kernel.org # 2.6.17-
Message-Id: <20200403090408.58745-1-wenyang@linux.alibaba.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index cad9563f8f485..4c51f794d04ca 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3188,8 +3188,8 @@ static void __get_guid(struct ipmi_smi *intf)
 	if (rv)
 		/* Send failed, no GUID available. */
 		bmc->dyn_guid_set = 0;
-
-	wait_event(intf->waitq, bmc->dyn_guid_set != 2);
+	else
+		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
 
 	/* dyn_guid_set makes the guid data available. */
 	smp_rmb();
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
