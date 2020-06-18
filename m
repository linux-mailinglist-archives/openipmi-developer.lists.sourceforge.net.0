Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE591FDB5E
	for <lists+openipmi-developer@lfdr.de>; Thu, 18 Jun 2020 03:13:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jlj70-0002Qb-Nc; Thu, 18 Jun 2020 01:13:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1jlj70-0002QU-3v
 for openipmi-developer@lists.sourceforge.net; Thu, 18 Jun 2020 01:13:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HqT+Q7WTA5qXT7n2EvrmbpVK3+lkm9jI0E0UKORiVj0=; b=Ea0/Vo3FrqH58791m2LHycmOeA
 F/T6pawUvSQSBUGOgap8bM3oj8UY3osPi6pEXvjVGtq0o0eZZfMmGCxH8j9CHWIJmSc1lVF1xJdme
 XFvL9kZpcwZFsvykOXFXz6hjgAEMsErSPptGoUIBS3yB2T5QGtA0XPiFaVq0fuEcbBLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HqT+Q7WTA5qXT7n2EvrmbpVK3+lkm9jI0E0UKORiVj0=; b=k36Gh7BlF2mHxt+/HiXqz5QHz1
 /HBa/Jdi87jM1SL3LZXSRzmJIpXmAwuMB3Fy5oskfEiEpVju5RB1SNKHIn8och8wVAzq4JXp9XJk5
 2vbcaVRhGmdL/WWrrdf8wvi1liTY1Vtr0tSDLN93gmWJeuwyavWDslPYOkf3lfz+6gSI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlj6x-0071Vc-Ux
 for openipmi-developer@lists.sourceforge.net; Thu, 18 Jun 2020 01:13:02 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD81A21D7E;
 Thu, 18 Jun 2020 01:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442767;
 bh=YoXqK3VwWX/NJk5sqjpoTnUJTm/gb4JObnMUytC2uk8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nlJsqIaqZyhgZhOKTa0sm/ptKzCypbD0wVBHD/gZGZvS+xNagDzMeoWwlZqboFnBW
 agxV8l4Oe7Gcna4AGdjvkz4ItJG2pEIq0bZ4ZdnuLFBAXWs1f4gk3vJTr797EeDrx8
 P0KzA+t4wihnxEAD7CedsHM97RmaQSMdXImoxAYY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 17 Jun 2020 21:05:13 -0400
Message-Id: <20200618010805.600873-216-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlj6x-0071Vc-Ux
Subject: [Openipmi-developer] [PATCH AUTOSEL 5.7 216/388] ipmi: use vzalloc
 instead of kmalloc for user creation
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
Cc: Sasha Levin <sashal@kernel.org>, Corey Minyard <cminyard@mvista.com>,
 Feng Tang <feng.tang@intel.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Feng Tang <feng.tang@intel.com>

[ Upstream commit 7c47a219b95d0e06b5ef5fcc7bad807895015eac ]

We met mulitple times of failure of staring bmc-watchdog,
due to the runtime memory allocation failure of order 4.

     bmc-watchdog: page allocation failure: order:4, mode:0x40cc0(GFP_KERNEL|__GFP_COMP), nodemask=(null),cpuset=/,mems_allowed=0-1
     CPU: 1 PID: 2571 Comm: bmc-watchdog Not tainted 5.5.0-00045-g7d6bb61d6188c #1
     Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0015.110720180833 11/07/2018
     Call Trace:
      dump_stack+0x66/0x8b
      warn_alloc+0xfe/0x160
      __alloc_pages_slowpath+0xd3e/0xd80
      __alloc_pages_nodemask+0x2f0/0x340
      kmalloc_order+0x18/0x70
      kmalloc_order_trace+0x1d/0xb0
      ipmi_create_user+0x55/0x2c0 [ipmi_msghandler]
      ipmi_open+0x72/0x110 [ipmi_devintf]
      chrdev_open+0xcb/0x1e0
      do_dentry_open+0x1ce/0x380
      path_openat+0x305/0x14f0
      do_filp_open+0x9b/0x110
      do_sys_open+0x1bd/0x250
      do_syscall_64+0x5b/0x1f0
      entry_SYSCALL_64_after_hwframe+0x44/0xa9

Using vzalloc/vfree for creating ipmi_user heals the
problem

Thanks to Stephen Rothwell for finding the vmalloc.h
inclusion issue.

Signed-off-by: Feng Tang <feng.tang@intel.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c48d8f086382..9afd220cd824 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -33,6 +33,7 @@
 #include <linux/workqueue.h>
 #include <linux/uuid.h>
 #include <linux/nospec.h>
+#include <linux/vmalloc.h>
 
 #define IPMI_DRIVER_VERSION "39.2"
 
@@ -1153,7 +1154,7 @@ static void free_user_work(struct work_struct *work)
 					      remove_work);
 
 	cleanup_srcu_struct(&user->release_barrier);
-	kfree(user);
+	vfree(user);
 }
 
 int ipmi_create_user(unsigned int          if_num,
@@ -1185,7 +1186,7 @@ int ipmi_create_user(unsigned int          if_num,
 	if (rv)
 		return rv;
 
-	new_user = kmalloc(sizeof(*new_user), GFP_KERNEL);
+	new_user = vzalloc(sizeof(*new_user));
 	if (!new_user)
 		return -ENOMEM;
 
@@ -1232,7 +1233,7 @@ int ipmi_create_user(unsigned int          if_num,
 
 out_kfree:
 	srcu_read_unlock(&ipmi_interfaces_srcu, index);
-	kfree(new_user);
+	vfree(new_user);
 	return rv;
 }
 EXPORT_SYMBOL(ipmi_create_user);
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
