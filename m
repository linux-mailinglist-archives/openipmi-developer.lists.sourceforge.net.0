Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDF422376
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 May 2019 14:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hRy9n-0004EZ-HR; Sat, 18 May 2019 12:09:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangkefeng.wang@huawei.com>) id 1hRZij-0008WG-5R
 for openipmi-developer@lists.sourceforge.net; Fri, 17 May 2019 10:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MJQLvptYThEjA09U5WHZdPMuBKF/HAzNqOcf2V4SdHA=; b=Uw9CIhU4nSh5MCrRyd4q4g9knU
 HGZYacCiDgJLuAL3BZPW1pYT2rWOUkVr1cf9vLrtHWirSIe6OIJh+6Lt/ELDMnQz9SnU1dV38Hpao
 PrVH1vDQgmZI4VUDpBjtQY3rBdWOucNJOF+tCRwGQKs8Vj6DX/JI2VJUvO7s4A3/bv7s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MJQLvptYThEjA09U5WHZdPMuBKF/HAzNqOcf2V4SdHA=; b=j
 Ean6xsdBoP9rjIRFX0CojeNBw7YJ9Ib3PLV+PtzlqpJzrxatrCuR5tYSXzr/t7QJFf6TIJvmB2fkq
 yl1jmfuTGsxXDWbVqRESPSMsHKUqfKkWHZ7ImVqqLyGd3adaVSj6Acl3W9ewIw3XsB53jxsSpymv9
 p93q1OH3rU8QueTE=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hRZih-007okc-F1
 for openipmi-developer@lists.sourceforge.net; Fri, 17 May 2019 10:04:09 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A4A91164ADCA12F9ABB6;
 Fri, 17 May 2019 18:03:59 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Fri, 17 May 2019 18:03:49 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>,
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Date: Fri, 17 May 2019 18:12:44 +0800
Message-ID: <20190517101245.4341-1-wangkefeng.wang@huawei.com>
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
X-Headers-End: 1hRZih-007okc-F1
X-Mailman-Approved-At: Sat, 18 May 2019 12:09:42 +0000
Subject: [Openipmi-developer] [PATCH] ipmi_si: fix unexpected driver
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

If ipmi_si_platform_init()->platform_driver_register() fails,
platform_driver_unregister() called unconditionally will trigger
following warning,

ipmi_platform: Unable to register driver: -12
------------[ cut here ]------------
Unexpected driver unregister!
WARNING: CPU: 1 PID: 7210 at drivers/base/driver.c:193 driver_unregister+0x60/0x70 drivers/base/driver.c:193

Fix it by adding platform_registered variable, only unregister platform
driver when it is already successfully registered.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index f2a91c4d8cab..0cd849675d99 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -19,6 +19,7 @@
 #include "ipmi_si.h"
 #include "ipmi_dmi.h"
 
+static bool platform_registered;
 static bool si_tryplatform = true;
 #ifdef CONFIG_ACPI
 static bool          si_tryacpi = true;
@@ -469,9 +470,12 @@ void ipmi_si_platform_init(void)
 	int rv = platform_driver_register(&ipmi_platform_driver);
 	if (rv)
 		pr_err("Unable to register driver: %d\n", rv);
+	else
+		platform_registered = true;
 }
 
 void ipmi_si_platform_shutdown(void)
 {
-	platform_driver_unregister(&ipmi_platform_driver);
+	if (platform_registered)
+		platform_driver_unregister(&ipmi_platform_driver);
 }
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
