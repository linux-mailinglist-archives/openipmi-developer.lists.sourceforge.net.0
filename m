Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED8E959A3D
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Aug 2024 13:38:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sgjfO-0008M7-Fb;
	Wed, 21 Aug 2024 11:38:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liuyuntao12@huawei.com>) id 1sg0r4-00022b-NA
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qpZmXGFe5yvG/iCseb9n007CrkNL1F4/5C0IWYDHhL4=; b=bxyNI2JzNwCo8iCrMbU2j+/Te9
 YrpA5dWN3N6HTEbbNr5qzIlmzr6iXRleyDuuPmXw3ux/ZZHX/co6IXVbWZa2DarrC7mgSmCR6vS4g
 dvYd1cwZvsxA+hbQ71RQ2jgEb2jO8KIETbkicJTo72UzZeneMArk0fxX+NViQAmmUNFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qpZmXGFe5yvG/iCseb9n007CrkNL1F4/5C0IWYDHhL4=; b=hAfW85wGObcklD5XF3BGOuwbQq
 P5vU62b+itYpCMHHINN2j+56kgBdqAkDrjI8rtvQS/kxGf7PzYc9dDJ4KMeVi7ID8B33Z9ttZhc8Y
 j4XkxOcBvdelPMkJ8muyFFQTcsM5Eog714l5hrnm8i8DdCXlA7A8uQTJ1V/yAfeQbYyA=;
Received: from szxga06-in.huawei.com ([45.249.212.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg0r2-0000Ib-QF for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:47:21 +0000
Received: from mail.maildlp.com (unknown [172.19.163.44])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4WnW4B5NnPz1xvTY;
 Mon, 19 Aug 2024 19:45:14 +0800 (CST)
Received: from kwepemg500010.china.huawei.com (unknown [7.202.181.71])
 by mail.maildlp.com (Postfix) with ESMTPS id 611201401F2;
 Mon, 19 Aug 2024 19:47:08 +0800 (CST)
Received: from huawei.com (10.67.174.76) by kwepemg500010.china.huawei.com
 (7.202.181.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Mon, 19 Aug
 2024 19:47:07 +0800
To: <openipmi-developer@lists.sourceforge.net>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, <linux-edac@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, <linux-usb@vger.kernel.org>
Date: Mon, 19 Aug 2024 11:38:50 +0000
Message-ID: <20240819113855.787149-5-liuyuntao12@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240819113855.787149-1-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.174.76]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemg500010.china.huawei.com (7.202.181.71)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add MODULE_DEVICE_TABLE(),
 so modules could be properly autoloaded
 based on the alias from platform_device_id table. Signed-off-by: Yuntao Liu
 <liuyuntao12@huawei.com> --- drivers/i2c/busses/i2c-at91-core.c | 1 + 1 file
 changed, 1 insertion(+) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.32 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sg0r2-0000Ib-QF
X-Mailman-Approved-At: Wed, 21 Aug 2024 11:38:09 +0000
Subject: [Openipmi-developer] [PATCH -next 4/9] i2c: at91: fix module
 autoloading
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
From: Yuntao Liu via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Yuntao Liu <liuyuntao12@huawei.com>
Cc: alexandre.belloni@bootlin.com, liuyuntao12@huawei.com,
 claudiu.beznea@tuxon.dev, robert.jarzmik@free.fr,
 andriy.shevchenko@linux.intel.com, minyard@acm.org,
 ludovic.desroches@microchip.com, stern@rowland.harvard.edu,
 u.kleine-koenig@pengutronix.de, codrin.ciubotariu@microchip.com,
 duje.mihanovic@skole.hr, rric@kernel.org, andi.shyti@kernel.org, arnd@arndb.de,
 haojian.zhuang@gmail.com, tony.luck@intel.com, bp@alien8.de,
 mchehab@kernel.org, morbidrsa@gmail.com, gregkh@linuxfoundation.org,
 nicolas.ferre@microchip.com, vkoul@kernel.org, broonie@kernel.org,
 james.morse@arm.com, daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Add MODULE_DEVICE_TABLE(), so modules could be properly autoloaded
based on the alias from platform_device_id table.

Signed-off-by: Yuntao Liu <liuyuntao12@huawei.com>
---
 drivers/i2c/busses/i2c-at91-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index dc52b3530725..bc3636f90712 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -107,6 +107,7 @@ static const struct platform_device_id at91_twi_devtypes[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(platform, at91_twi_devtypes);
 
 #if defined(CONFIG_OF)
 static struct at91_twi_pdata at91sam9x5_config = {
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
