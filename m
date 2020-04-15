Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A85881AA0F9
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Apr 2020 14:34:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jOhFM-0006H1-RU; Wed, 15 Apr 2020 12:34:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <gregkh@linuxfoundation.org>) id 1jOhFL-0006Gu-DR
 for openipmi-developer@lists.sourceforge.net; Wed, 15 Apr 2020 12:34:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:In-Reply-To:Date:From:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q6dUNsc0249DtVdn+GmbfCKYgG+eQg6cCfRplpTmftQ=; b=izGAb2qNqJ/cxXSaE7oNIZ+o05
 nK/adw9yEJEFCBq1Ka7CkksMFbJdk75tSEamd0tsphTfyJVWBREvBDVCP92iClVfEYqa9cceqCzsT
 TT2bCGL1GAM4NEBaCzeRbqTO5jF8Sx1w8rawUccqqmwTK8oJd2gsHVpoVrh72QcT5Nb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:From:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q6dUNsc0249DtVdn+GmbfCKYgG+eQg6cCfRplpTmftQ=; b=BNPji0OV0ZfaCVxB78c+geVU1r
 x5hKGliOCxfDrWorepwZq3PWMqjTlC8YrDt1DeSOh60wvY4JG9FnVM75lx3XA5hkDuB9tWZz2Ix9P
 v42x+pTuLmFHGV6jtGQovQMvwfLxSVbFNLOMk7BJLvUPQdRwsFlXO61WnojDnIB0V8dI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jOhFJ-00Gase-Il
 for openipmi-developer@lists.sourceforge.net; Wed, 15 Apr 2020 12:34:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65ADC2078B;
 Wed, 15 Apr 2020 12:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586953072;
 bh=qrm0SoKDkW2vbEeFnb2BkKrXeUSU2dk7BkxkgiN4G6M=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=QmIGBDbRF9Vt8XK6gNYVoBZnACyJF8AK0vSwxJLmKUgFDCS9IQBx3mg3fI1rMbIX/
 dt/vxYLC7ALrhpY8dXohlZevS8A5y9xY+7WqEQtPh6WblaADEDSfONYvr4ajbi5jwo
 bSDKvW7Bm/a9RY/0agXP/+mlaK0Uu5YVKeT5lqO8=
To: 20200403090408.58745-1-wenyang@linux.alibaba.com, arnd@arndb.de,
 cminyard@mvista.com, gregkh@linuxfoundation.org, minyard@acm.org,
 openipmi-developer@lists.sourceforge.net, wenyang@linux.alibaba.com
From: <gregkh@linuxfoundation.org>
Date: Wed, 15 Apr 2020 14:16:35 +0200
In-Reply-To: <20200403090408.58745-1-wenyang@linux.alibaba.com>
Message-ID: <15869529958033@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOhFJ-00Gase-Il
Subject: [Openipmi-developer] Patch "ipmi: fix hung processes in
 __get_guid()" has been added to the 5.4-stable tree
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


This is a note to let you know that I've just added the patch titled

    ipmi: fix hung processes in __get_guid()

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     ipmi-fix-hung-processes-in-__get_guid.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 32830a0534700f86366f371b150b17f0f0d140d7 Mon Sep 17 00:00:00 2001
From: Wen Yang <wenyang@linux.alibaba.com>
Date: Fri, 3 Apr 2020 17:04:08 +0800
Subject: ipmi: fix hung processes in __get_guid()

From: Wen Yang <wenyang@linux.alibaba.com>

commit 32830a0534700f86366f371b150b17f0f0d140d7 upstream.

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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 drivers/char/ipmi/ipmi_msghandler.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3207,8 +3207,8 @@ static void __get_guid(struct ipmi_smi *
 	if (rv)
 		/* Send failed, no GUID available. */
 		bmc->dyn_guid_set = 0;
-
-	wait_event(intf->waitq, bmc->dyn_guid_set != 2);
+	else
+		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
 
 	/* dyn_guid_set makes the guid data available. */
 	smp_rmb();


Patches currently in stable-queue which might be from wenyang@linux.alibaba.com are

queue-5.4/ipmi-fix-hung-processes-in-__get_guid.patch


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
