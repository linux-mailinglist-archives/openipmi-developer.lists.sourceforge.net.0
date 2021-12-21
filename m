Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 983C147BA06
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Dec 2021 07:25:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mzYaa-0003Cl-2T; Tue, 21 Dec 2021 06:25:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wubo40@huawei.com>) id 1mzYaY-0003Cf-0D
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Dec 2021 06:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W9EIRdXR+Tz7jxS3mTyT5WVf6U8gz1brZg0vaA+Ha8g=; b=NSBq9xLwPIzhoi/at/U4/N6j6v
 wjCpk7jhurLN+QelPx5Z2hYVB5AMVm5B1KxwWEt04xMQ37bgSklDeQbICUEB7IlKYhJgYNk3ZQvsE
 0hUElMLf/vVqD7LOC3HdsTIN52ou3BxzgVoGI5i/+iSAWcus4zxJ13ey8cPx7/BzMefo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=W9EIRdXR+Tz7jxS3mTyT5WVf6U8gz1brZg0vaA+Ha8g=; b=g
 JpASv8ge6IiC1+hLg7DINyzJZ5aCAq5lKBqQbbN2nRNCurnbL1vlV0lbRBHk3vw4XnZstvZ/iDdNe
 VmsYKLUoPn/9oNLNQqUWtBqp17xbKERCZZQcXUG4v1xOKdlKILa3++4c/oDWScrzssMZoJord2gex
 S4jhZ0VNMojBDd5k=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mzYaU-004uDO-Fu
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Dec 2021 06:25:31 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4JJ5w40Y9KzZdhn;
 Tue, 21 Dec 2021 14:22:12 +0800 (CST)
Received: from dggpeml500019.china.huawei.com (7.185.36.137) by
 dggpeml500024.china.huawei.com (7.185.36.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 14:25:19 +0800
Received: from huawei.com (10.175.124.27) by dggpeml500019.china.huawei.com
 (7.185.36.137) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Tue, 21 Dec
 2021 14:25:19 +0800
To: <minyard@acm.org>
Date: Tue, 21 Dec 2021 15:00:34 +0800
Message-ID: <1640070034-56671-1-git-send-email-wubo40@huawei.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.27]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpeml500019.china.huawei.com (7.185.36.137)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 When testing install and uninstall of ipmi_si.ko and ipmi_msghandler.ko, 
 the system crashed. The log as follows: [ 141.087026] BUG: unable to handle
 kernel paging request at ffffffffc09b3a5a [ 141.087241] PGD 8fe4c0d067 P4D
 8fe4c0d067 PUD 8fe4c0f067 PMD 103ad89067 PTE 0 [ 141.087464] Oops: 00 [...]
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [45.249.212.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mzYaU-004uDO-Fu
Subject: [Openipmi-developer] [PATCH v2] ipmi: Fix UAF when uninstall
 ipmi_si and ipmi_msghandler module
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
From: Wu Bo via Openipmi-developer <openipmi-developer@lists.sourceforge.net>
Reply-To: Wu Bo <wubo40@huawei.com>
Cc: linfeilong@huawei.com, wubo40@huawei.com,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi,

When testing install and uninstall of ipmi_si.ko and ipmi_msghandler.ko,
the system crashed.

The log as follows:
[  141.087026] BUG: unable to handle kernel paging request at ffffffffc09b3a5a
[  141.087241] PGD 8fe4c0d067 P4D 8fe4c0d067 PUD 8fe4c0f067 PMD 103ad89067 PTE 0
[  141.087464] Oops: 0010 [#1] SMP NOPTI
[  141.087580] CPU: 67 PID: 668 Comm: kworker/67:1 Kdump: loaded Not tainted 4.18.0.x86_64 #47
[  141.088009] Workqueue: events 0xffffffffc09b3a40
[  141.088009] RIP: 0010:0xffffffffc09b3a5a
[  141.088009] Code: Bad RIP value.
[  141.088009] RSP: 0018:ffffb9094e2c3e88 EFLAGS: 00010246
[  141.088009] RAX: 0000000000000000 RBX: ffff9abfdb1f04a0 RCX: 0000000000000000
[  141.088009] RDX: 0000000000000000 RSI: 0000000000000246 RDI: 0000000000000246
[  141.088009] RBP: 0000000000000000 R08: ffff9abfffee3cb8 R09: 00000000000002e1
[  141.088009] R10: ffffb9094cb73d90 R11: 00000000000f4240 R12: ffff9abfffee8700
[  141.088009] R13: 0000000000000000 R14: ffff9abfdb1f04a0 R15: ffff9abfdb1f04a8
[  141.088009] FS:  0000000000000000(0000) GS:ffff9abfffec0000(0000) knlGS:0000000000000000
[  141.088009] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  141.088009] CR2: ffffffffc09b3a30 CR3: 0000008fe4c0a001 CR4: 00000000007606e0
[  141.088009] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  141.088009] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  141.088009] PKRU: 55555554
[  141.088009] Call Trace:
[  141.088009]  ? process_one_work+0x195/0x390
[  141.088009]  ? worker_thread+0x30/0x390
[  141.088009]  ? process_one_work+0x390/0x390
[  141.088009]  ? kthread+0x10d/0x130
[  141.088009]  ? kthread_flush_work_fn+0x10/0x10
[  141.088009]  ? ret_from_fork+0x35/0x40] BUG: unable to handle kernel paging request at ffffffffc0b28a5a
[  200.223240] PGD 97fe00d067 P4D 97fe00d067 PUD 97fe00f067 PMD a580cbf067 PTE 0
[  200.223464] Oops: 0010 [#1] SMP NOPTI
[  200.223579] CPU: 63 PID: 664 Comm: kworker/63:1 Kdump: loaded Not tainted 4.18.0.x86_64 #46
[  200.224008] Workqueue: events 0xffffffffc0b28a40
[  200.224008] RIP: 0010:0xffffffffc0b28a5a
[  200.224008] Code: Bad RIP value.
[  200.224008] RSP: 0018:ffffbf3c8e2a3e88 EFLAGS: 00010246
[  200.224008] RAX: 0000000000000000 RBX: ffffa0799ad6bca0 RCX: 0000000000000000
[  200.224008] RDX: 0000000000000000 RSI: 0000000000000246 RDI: 0000000000000246
[  200.224008] RBP: 0000000000000000 R08: ffff9fe43fde3cb8 R09: 00000000000000d5
[  200.224008] R10: ffffbf3c8cb53d90 R11: 00000000000f4240 R12: ffff9fe43fde8700
[  200.224008] R13: 0000000000000000 R14: ffffa0799ad6bca0 R15: ffffa0799ad6bca8
[  200.224008] FS:  0000000000000000(0000) GS:ffff9fe43fdc0000(0000) knlGS:0000000000000000
[  200.224008] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  200.224008] CR2: ffffffffc0b28a30 CR3: 00000097fe00a002 CR4: 00000000007606e0
[  200.224008] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  200.224008] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  200.224008] PKRU: 55555554
[  200.224008] Call Trace:
[  200.224008]  ? process_one_work+0x195/0x390
[  200.224008]  ? worker_thread+0x30/0x390
[  200.224008]  ? process_one_work+0x390/0x390
[  200.224008]  ? kthread+0x10d/0x130
[  200.224008]  ? kthread_flush_work_fn+0x10/0x10
[  200.224008]  ? ret_from_fork+0x35/0x40
[  200.224008] kernel fault(0x1) notification starting on CPU 63
[  200.224008] kernel fault(0x1) notification finished on CPU 63
[  200.224008] CR2: ffffffffc0b28a5a
[  200.224008] ---[ end trace c82a412d93f57412 ]---

The reason is as follows:
T1: rmmod ipmi_si.
    ->ipmi_unregister_smi()
        -> ipmi_bmc_unregister()
            -> __ipmi_bmc_unregister()
                -> kref_put(&bmc->usecount, cleanup_bmc_device);
                    -> schedule_work(&bmc->remove_work);

T2: rmmod ipmi_msghandler.
    ipmi_msghander module uninstalled, and the module space 
    will be freed.

T3: bmc->remove_work doing cleanup the bmc resource.
    -> cleanup_bmc_work()
        -> platform_device_unregister(&bmc->pdev);
            -> platform_device_del(pdev);
                -> device_del(&pdev->dev);
                    -> kobject_uevent(&dev->kobj, KOBJ_REMOVE);
                        -> kobject_uevent_env()
                            -> dev_uevent()
                                -> if (dev->type && dev->type->name)

   'dev->type'(bmc_device_type) pointer space has freed when uninstall
    ipmi_msghander module, 'dev->type->name' cause the system crash.

drivers/char/ipmi/ipmi_msghandler.c:
2820 static const struct device_type bmc_device_type = {
2821         .groups         = bmc_dev_attr_groups,
2822 };

Steps to reproduce:
Add a time delay in cleanup_bmc_work() function,
and uninstall ipmi_si and ipmi_msghandler module.

2910 static void cleanup_bmc_work(struct work_struct *work)
2911 {
2912         struct bmc_device *bmc = container_of(work, struct bmc_device,
2913                                               remove_work);
2914         int id = bmc->pdev.id; /* Unregister overwrites id */
2915
2916         msleep(3000);   <---
2917         platform_device_unregister(&bmc->pdev);
2918         ida_simple_remove(&ipmi_bmc_ida, id);
2919 }

Use 'remove_work_wq' instead of 'system_wq' to solve this issues.

Fixes: b2cfd8ab4add ("ipmi: Rework device id and guid handling to catch changing BMCs")
Signed-off-by: Wu Bo <wubo40@huawei.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c837d54..d96184d 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3031,7 +3031,7 @@ static void cleanup_bmc_work(struct work_struct *work)
 	 * with removing the device attributes while reading a device
 	 * attribute.
 	 */
-	schedule_work(&bmc->remove_work);
+	queue_work(remove_work_wq, &bmc->remove_work);
 }
 
 /*
-- 
1.8.3.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
