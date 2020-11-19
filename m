Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 927FD2C4065
	for <lists+openipmi-developer@lfdr.de>; Wed, 25 Nov 2020 13:41:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1khu72-0003xQ-0i; Wed, 25 Nov 2020 12:41:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <miaoqinglang@huawei.com>) id 1kfdzm-00057H-LR
 for openipmi-developer@lists.sourceforge.net; Thu, 19 Nov 2020 07:04:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nEdISTPpQsRftRasqS/O0es1uzDyisYqE4cuZh/rCTk=; b=IfYqk4yMfxGuWQbNPsycnE4E9N
 /vZnm+bb3Tv7x3WC9tPEos8aMF3q8/39ki+XUSEDlCyJx+BPwLsevq6S8J0OQSzU5KJYutk6zYmMd
 UYE97cPJqMhJd3iCUI8y99G6d1tluVmojF6gCzdnbpVCuk2Tow9FcxzliRJ9tTSp7aAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nEdISTPpQsRftRasqS/O0es1uzDyisYqE4cuZh/rCTk=; b=e
 pvtPRE/LrojD1qxtgGYz8bi4nJjqejSwluvyOoAkt2SSJKoNz7b68j0loomrFsFiKJCeVW1Q7kgph
 v6lLgppxzWSK9bH+XJdfs0Ee2Ao2mpDESos/xuZrotL6CU+KhfW6WPaEvMM6TUo5QMcb12RicYJj1
 6FCme5bQjhva/GS4=;
Received: from szxga06-in.huawei.com ([45.249.212.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kfdzW-00GCz9-0B
 for openipmi-developer@lists.sourceforge.net; Thu, 19 Nov 2020 07:04:42 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cc9dS0srczhdH9;
 Thu, 19 Nov 2020 15:03:56 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Thu, 19 Nov 2020 15:03:57 +0800
From: Qinglang Miao <miaoqinglang@huawei.com>
To: Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Date: Thu, 19 Nov 2020 15:08:39 +0800
Message-ID: <20201119070839.381-1-miaoqinglang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kfdzW-00GCz9-0B
X-Mailman-Approved-At: Wed, 25 Nov 2020 12:41:30 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: msghandler: Suppress suspicious
 RCU usage warning
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Qinglang Miao <miaoqinglang@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

while running ipmi, ipmi_smi_watcher_register() caused
a suspicious RCU usage warning.

-----

=============================
WARNING: suspicious RCU usage
5.10.0-rc3+ #1 Not tainted
-----------------------------
drivers/char/ipmi/ipmi_msghandler.c:750 RCU-list traversed in non-reader section!!
other info that might help us debug this:
rcu_scheduler_active = 2, debug_locks = 1
2 locks held by syz-executor.0/4254:
stack backtrace:
CPU: 0 PID: 4254 Comm: syz-executor.0 Not tainted 5.10.0-rc3+ #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1 04/ 01/2014
Call Trace:
dump_stack+0x19d/0x200
ipmi_smi_watcher_register+0x2d3/0x340 [ipmi_msghandler]
acpi_ipmi_init+0xb1/0x1000 [acpi_ipmi]
do_one_initcall+0x149/0x7e0
do_init_module+0x1ef/0x700
load_module+0x3467/0x4140
__do_sys_finit_module+0x10d/0x1a0
do_syscall_64+0x34/0x80
entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x468ded

-----

It is safe because smi_watchers_mutex is locked and srcu_read_lock
has been used, so simply pass lockdep_is_held() to the
list_for_each_entry_rcu() to suppress this warning.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 8774a3b8f..c44ad1846 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -747,7 +747,8 @@ int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher)
 	list_add(&watcher->link, &smi_watchers);
 
 	index = srcu_read_lock(&ipmi_interfaces_srcu);
-	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
+	list_for_each_entry_rcu(intf, &ipmi_interfaces, link,
+			lockdep_is_held(&smi_watchers_mutex)) {
 		int intf_num = READ_ONCE(intf->intf_num);
 
 		if (intf_num == -1)
-- 
2.23.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
