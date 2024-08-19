Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E455959A3C
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Aug 2024 13:38:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sgjfN-0008LZ-8S;
	Wed, 21 Aug 2024 11:38:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liuyuntao12@huawei.com>) id 1sg0qu-000227-UL
 for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:47:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NLH0B53lrCWLoOCLyyaHAKGXFloOvDI7qw3Us2k4Qhc=; b=K6fGKWukJjHMPfVIzYjnnlHalU
 UjpD3SmvM0eRAPll70VicgjO2Qiu7NdLF7VL/A0Vfxkljuj3j4S67XfDA3xtJ8qDBgIBIILz9vadR
 6B9/3H1llVL14YYXtPj2FIZBt3dBfkyGwxuTdDKNG7tGTln5RNzCMAd1SJkhvD+6D+go=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NLH0B53lrCWLoOCLyyaHAKGXFloOvDI7qw3Us2k4Qhc=; b=ke3/U2KC/TxZA1EDwucG24juBD
 fGbetl7RcgPkG1Ax3o7oYj4RTrci3NBDoGn0lRkPTHgUJ2hVoaHAo5tU4h6tumYS5vlCbPZhHHoJl
 DD+hrWZJfEq6v1vJmqS0OcxPJIrluXdRHm7WXpeNOT+5beD65hg5sma/VKFiXK4VHZdc=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sg0qt-0000ID-8Z for openipmi-developer@lists.sourceforge.net;
 Mon, 19 Aug 2024 11:47:12 +0000
Received: from mail.maildlp.com (unknown [172.19.162.254])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4WnW3t6T2bzfbZy;
 Mon, 19 Aug 2024 19:44:58 +0800 (CST)
Received: from kwepemg500010.china.huawei.com (unknown [7.202.181.71])
 by mail.maildlp.com (Postfix) with ESMTPS id 80512180101;
 Mon, 19 Aug 2024 19:46:58 +0800 (CST)
Received: from huawei.com (10.67.174.76) by kwepemg500010.china.huawei.com
 (7.202.181.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Mon, 19 Aug
 2024 19:46:57 +0800
To: <openipmi-developer@lists.sourceforge.net>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <dmaengine@vger.kernel.org>, <linux-edac@vger.kernel.org>,
 <linux-i2c@vger.kernel.org>, <linux-usb@vger.kernel.org>
Date: Mon, 19 Aug 2024 11:38:47 +0000
Message-ID: <20240819113855.787149-2-liuyuntao12@huawei.com>
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
 <liuyuntao12@huawei.com> --- drivers/usb/host/ehci-mv.c | 1 + 1 file changed, 
 1 insertion(+) 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [45.249.212.188 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.188 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [45.249.212.188 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.188 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sg0qt-0000ID-8Z
X-Mailman-Approved-At: Wed, 21 Aug 2024 11:38:09 +0000
Subject: [Openipmi-developer] [PATCH -next 1/9] usb: ehci-mv: fix module
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
 drivers/usb/host/ehci-mv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/host/ehci-mv.c b/drivers/usb/host/ehci-mv.c
index 2f1fc7eb8b72..33d925316eec 100644
--- a/drivers/usb/host/ehci-mv.c
+++ b/drivers/usb/host/ehci-mv.c
@@ -260,6 +260,7 @@ static const struct platform_device_id ehci_id_table[] = {
 	{"pxa-sph", 0},
 	{},
 };
+MODULE_DEVICE_TABLE(platform, ehci_id_table);
 
 static void mv_ehci_shutdown(struct platform_device *pdev)
 {
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
