Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADBC2DF2A8
	for <lists+openipmi-developer@lfdr.de>; Sun, 20 Dec 2020 02:49:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kqnqx-0005x6-4A; Sun, 20 Dec 2020 01:49:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhengyongjun3@huawei.com>) id 1kpWom-0005FO-Ed
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Dec 2020 13:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mrPmWwN0Jx894HBx3YZf4Hp1aGOC4EJBoH2pXW/cVAg=; b=UShDk7jWpEU2jd1z4Wcrr6jQVT
 HX+1Bz/J2/3CAu8Zc40TdaMWiV34OvQNa2yUoPvCNISyxS/71bHf4UiEP7lqlDC2m0AcCoilbcMRx
 GkpBJBsSmThm/efxBYG5q5zwP/W7h7f3ld7UhBu4VS5y+Pjihs/Cc/uCbk0Dt4oMLFHw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mrPmWwN0Jx894HBx3YZf4Hp1aGOC4EJBoH2pXW/cVAg=; b=j
 b3B1WCCjnEsWz+wpGwxQBRAgCYFmBQzBOiFbKC3Wf7P1r6uyIALhnXSqGW6KkJ4X/gTfMsFgG+/lh
 6B0dt/BvBqdGGlUat00ZborIOeOYQCDCewuv5Me2aR1qyjW9K1Jt7oO8Ex0+m7PGakLpMBuaYwRqR
 S7kIGiiSNszKgohU=;
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kpWoi-00GPwW-0N
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Dec 2020 13:26:12 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Cwwpx5QfMz15ZnH;
 Wed, 16 Dec 2020 21:25:13 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.498.0; Wed, 16 Dec 2020 21:25:43 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <minyard@acm.org>, <openipmi-developer@lists.sourceforge.net>,
 <linux-kernel@vger.kernel.org>
Date: Wed, 16 Dec 2020 21:26:15 +0800
Message-ID: <20201216132615.15529-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.175.138.68]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kpWoi-00GPwW-0N
X-Mailman-Approved-At: Sun, 20 Dec 2020 01:49:41 +0000
Subject: [Openipmi-developer] [PATCH -next] char: ipmi: convert comma to
 semicolon
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
Cc: Zheng Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Replace a comma between expression statements by a semicolon.

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/char/ipmi/bt-bmc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index a395e2e70dc5..6e3d247b55d1 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -462,9 +462,9 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	mutex_init(&bt_bmc->mutex);
 	init_waitqueue_head(&bt_bmc->queue);
 
-	bt_bmc->miscdev.minor	= MISC_DYNAMIC_MINOR,
-	bt_bmc->miscdev.name	= DEVICE_NAME,
-	bt_bmc->miscdev.fops	= &bt_bmc_fops,
+	bt_bmc->miscdev.minor	= MISC_DYNAMIC_MINOR;
+	bt_bmc->miscdev.name	= DEVICE_NAME;
+	bt_bmc->miscdev.fops	= &bt_bmc_fops;
 	bt_bmc->miscdev.parent = dev;
 	rc = misc_register(&bt_bmc->miscdev);
 	if (rc) {
-- 
2.22.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
