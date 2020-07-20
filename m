Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 016D424A0F7
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 16:00:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8Odn-0001N5-7Y; Wed, 19 Aug 2020 14:00:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jingxiangfeng@huawei.com>) id 1jxQoe-0007kC-1T
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jul 2020 08:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BtSNWKnb2qQ5IcZVsHnQ+Mm/WK7aCSDiChMesk4hrns=; b=PaptBHVLRV/hTHlKitsc9bdUV2
 9toCZopUq42JATh+Qlzj6h+3k+oJiy+IxA7XlQoYKymKXQyBYDsQqCH1qVqSaruugzv7EoYnDU5Y6
 dGyQ622b/2ls8LOsntBDvHiDTnoqxQX1AShbC2HvhSYx88JaEX1G6q+oHmsNBgiRPRaA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BtSNWKnb2qQ5IcZVsHnQ+Mm/WK7aCSDiChMesk4hrns=; b=P
 muzIsvKzKXg6lQunwnZVc8I1YDsUg9MyPzPMA2970AZP7Zza2SEL8oE5a36hzLwbuBupoc6T+xYjV
 cYObNGqpabyt+EWBMXGx4YJAunUvqtQQOQGgS/rNgIP9io0kiZuGcm9T1NDgTnDpZCeMJNHkkYSPp
 GJV38GuTkYkiZdxY=;
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxQoZ-0010fi-IS
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jul 2020 08:06:27 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B8920FD77153135EF878;
 Mon, 20 Jul 2020 16:06:16 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Mon, 20 Jul 2020 16:06:07 +0800
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>,
 <cminyard@mvista.com>
Date: Mon, 20 Jul 2020 16:08:38 +0800
Message-ID: <20200720080838.148737-1-jingxiangfeng@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxQoZ-0010fi-IS
X-Mailman-Approved-At: Wed, 19 Aug 2020 14:00:33 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: remve duplicate code in
 __ipmi_bmc_register()
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
 jingxiangfeng@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

__ipmi_bmc_register() jumps to the label 'out_free_my_dev_name' in an
error path. So we can remove duplicate code in the if (rv).

Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e1b22fe0916c..737c0b6b24ea 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3080,8 +3080,6 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
 	rv = sysfs_create_link(&bmc->pdev.dev.kobj, &intf->si_dev->kobj,
 			       intf->my_dev_name);
 	if (rv) {
-		kfree(intf->my_dev_name);
-		intf->my_dev_name = NULL;
 		dev_err(intf->si_dev, "Unable to create symlink to bmc: %d\n",
 			rv);
 		goto out_free_my_dev_name;
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
