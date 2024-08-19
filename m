Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0CF959A37
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Aug 2024 13:38:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sgjfO-0008Lx-6N;
	Wed, 21 Aug 2024 11:38:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liuyuntao12@huawei.com>) id 1sg0r2-0001XA-MF
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wE26j5LIu2JAsOuM/ys4W5kswPkX00tVpkFoIfUdf34=; b=HkM2mHF5WsEmHgtrw7yuGwroIr
 J2Vi8wrkLyy619GU/72ojaqFIh099/VPXZ2URiRe7boLuJl+FHsQFXASS6pySoPDkxQrrh4zwcFG3
 kQHCvx9WLJfFInbGH3eHO+cnLz+B06SXsc/55mXzDO4Q3hikcW4QEFefKz8WrMaOgc3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wE26j5LIu2JAsOuM/ys4W5kswPkX00tVpkFoIfUdf34=; b=MQZPee0ZlYjherom1OIMrCJyBa
 JBVAsACr/OL2ZTMahZrm7VlWSGahFfprs6C9lLF1raA2/80nUpuHJc5AZk06HGmg2jC/d5gIsx3Z/
 k4F5BA/DRXOFRaDWlIWvB6DSaIgVBu9l34egERyATTi8mivX0sriJNriUoGnrAW3ylDo=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg0r1-0000IS-IU for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:47:20 +0000
Received: from mail.maildlp.com (unknown [172.19.88.194])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4WnW5l1QVvz13Tr5;
 Mon, 19 Aug 2024 19:46:35 +0800 (CST)
Received: from kwepemg500010.china.huawei.com (unknown [7.202.181.71])
 by mail.maildlp.com (Postfix) with ESMTPS id 8A0D7140159;
 Mon, 19 Aug 2024 19:47:11 +0800 (CST)
Received: from huawei.com (10.67.174.76) by kwepemg500010.china.huawei.com
 (7.202.181.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Mon, 19 Aug
 2024 19:47:10 +0800
To: <openipmi-developer@lists.sourceforge.net>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, <linux-edac@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, <linux-usb@vger.kernel.org>
Date: Mon, 19 Aug 2024 11:38:52 +0000
Message-ID: <20240819113855.787149-7-liuyuntao12@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240819113855.787149-1-liuyuntao12@huawei.com>
References: <20240819113855.787149-1-liuyuntao12@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.174.76]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemg500010.china.huawei.com (7.202.181.71)
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add MODULE_DEVICE_TABLE(),
 so modules could be properly autoloaded
 based on the alias from platform_device_id table. Signed-off-by: Yuntao Liu
 <liuyuntao12@huawei.com> --- drivers/dma/pxa_dma.c | 1 + 1 file changed,
 1 insertion(+) 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [45.249.212.255 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.255 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.255 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.255 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sg0r1-0000IS-IU
X-Mailman-Approved-At: Wed, 21 Aug 2024 11:38:09 +0000
Subject: [Openipmi-developer] [PATCH -next 6/9] dmaengine: pxa: fix module
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
 drivers/dma/pxa_dma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma/pxa_dma.c b/drivers/dma/pxa_dma.c
index 31f8da810c05..56785805e7a7 100644
--- a/drivers/dma/pxa_dma.c
+++ b/drivers/dma/pxa_dma.c
@@ -1434,6 +1434,7 @@ static const struct platform_device_id pxad_id_table[] = {
 	{ "pxa-dma", },
 	{ },
 };
+MODULE_DEVICE_TABLE(platform, pxad_id_table);
 
 static struct platform_driver pxad_driver = {
 	.driver		= {
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
