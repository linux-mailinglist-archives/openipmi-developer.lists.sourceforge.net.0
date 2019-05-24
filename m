Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 809B929A0F
	for <lists+openipmi-developer@lfdr.de>; Fri, 24 May 2019 16:29:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hUBBy-0008C1-EJ; Fri, 24 May 2019 14:29:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangkefeng.wang@huawei.com>) id 1hUBBw-0008Ba-Kw
 for openipmi-developer@lists.sourceforge.net; Fri, 24 May 2019 14:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q0RBTr3ATO56a+beKNQ+BIcx6jveg8OyjiBpO1E+9Vs=; b=UMLAbNhkleE5SAkT8H25eJ04n8
 hiObBqkWWYp+SI1CStjoryVbnjc0n7cqdVnj5rRc1l0AjLfoW/KeZqLvt1Z2ksRzD2d4+rb0yuqj4
 bHRZdhSWnx5BNNbIAhGD8LUGjMEJNIf/hvEEzlQiz9+ukqI6eMYqna1oKWOEoHGHSaOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Q0RBTr3ATO56a+beKNQ+BIcx6jveg8OyjiBpO1E+9Vs=; b=b
 lIFV1bvP4BBIlX9zi/zXcbZBfat/AW8UxrX8Ix9I/mJmCVqzUiu/SqRJoHbd3XRsMNI/1cjdU2wkR
 hvvadDF3/hACvOtDXyF3JrlaqlH9VyVsLsnvCNrU/xQNc40mHQK5e+tRpUWyneJ+kXJ/zrGQBBJ6X
 Wb/KoPxkfUCwve0U=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hUBBu-007864-HP
 for openipmi-developer@lists.sourceforge.net; Fri, 24 May 2019 14:29:04 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D30FCC3B7DC05045323B;
 Fri, 24 May 2019 22:28:52 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Fri, 24 May 2019 22:28:47 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>,
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 22:37:24 +0800
Message-ID: <20190524143724.43218-1-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hUBBu-007864-HP
Subject: [Openipmi-developer] [PATCH] ipmi_ssif: fix unexpected driver
 unregister warning
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
Cc: Hulk Robot <hulkci@huawei.com>, Kefeng Wang <wangkefeng.wang@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

If platform_driver_register() fails from init_ipmi_ssif(),
platform_driver_unregister() called unconditionally will
trigger following warning,

ipmi_ssif: Unable to register driver: -12
------------[ cut here ]------------
Unexpected driver unregister!
WARNING: CPU: 1 PID: 6305 at drivers/base/driver.c:193 driver_unregister+0x60/0x70 drivers/base/driver.c:193

Fix it by adding platform_registered variable, only unregister platform
driver when it is already successfully registered.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index cf8156d6bc07..305fa5054274 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -303,6 +303,7 @@ struct ssif_info {
 	((unsigned int) atomic_read(&(ssif)->stats[SSIF_STAT_ ## stat]))
 
 static bool initialized;
+static bool platform_registered;
 
 static void return_hosed_msg(struct ssif_info *ssif_info,
 			     struct ipmi_smi_msg *msg);
@@ -2088,6 +2089,8 @@ static int init_ipmi_ssif(void)
 		rv = platform_driver_register(&ipmi_driver);
 		if (rv)
 			pr_err("Unable to register driver: %d\n", rv);
+		else
+			platform_registered = true;
 	}
 
 	ssif_i2c_driver.address_list = ssif_address_list();
@@ -2111,7 +2114,7 @@ static void cleanup_ipmi_ssif(void)
 
 	kfree(ssif_i2c_driver.address_list);
 
-	if (ssif_trydmi)
+	if (ssif_trydmi && platform_registered)
 		platform_driver_unregister(&ipmi_driver);
 
 	free_ssif_clients();
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
