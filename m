Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3A241AAB
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Jun 2019 05:20:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hatoV-0006ab-Oh; Wed, 12 Jun 2019 03:20:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yuehaibing@huawei.com>) id 1hatoT-0006aK-LG
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jun 2019 03:20:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f+eev2D/zBkiu3PQjqZJ0w/6cEQyH74iyrHS8CLAeb0=; b=A8JJA/0HP80jggcqecAfQxXvns
 4jm3yrMdeGujOo/FrBGvfzMQlXpl1iSandvEj9tQuAIAFRp0WjX3LiuuqHQsR13sgandPs3HwizAe
 NO7HX6lb5C+lm0MnsK7i36Ej0/4pTQorEL389G4aTwPVw0KXimlAe918OOQd+rYu5mhY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=f+eev2D/zBkiu3PQjqZJ0w/6cEQyH74iyrHS8CLAeb0=; b=K
 k65tOqdj+2K/09kJ++LQkynPiHA+KsYnMDjSyYi35rMZwFDWSCIA8DWF3GsdlQWL1WB8jUXnn8GSw
 aspwxZtoRcSLQIWC9iVJg/0k7fZbNy6DzIq4IXe6vSP+LQPkbHUJ0qVyX3hYtDDwzaHKTcci8adKR
 HbtzKPF5o7JOcH44=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hatoR-002A48-Bz
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jun 2019 03:20:37 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B8EA16075F7EE67F5A9C;
 Wed, 12 Jun 2019 11:20:26 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Wed, 12 Jun 2019
 11:20:16 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>,
 <Asmaa@mellanox.com>, <vadimp@mellanox.com>
Date: Wed, 12 Jun 2019 11:18:25 +0800
Message-ID: <20190612031825.24732-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hatoR-002A48-Bz
Subject: [Openipmi-developer] [PATCH] ipmi: ipmb: Fix build error while
 CONFIG_I2C is set to m
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
Cc: openipmi-developer@lists.sourceforge.net,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

If CONFIG_I2C is m and CONFIG_I2C_SLAVE is y,
building with CONFIG_IPMB_DEVICE_INTERFACE setting to
y will fail:

drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_remove':
ipmb_dev_int.c: undefined reference to `i2c_slave_unregister'
drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_write':
ipmb_dev_int.c: undefined reference to `i2c_smbus_write_block_data'
drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_probe':
ipmb_dev_int.c: undefined reference to `i2c_slave_register'
drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_driver_init':
ipmb_dev_int.c: undefined reference to `i2c_register_driver'
drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_driver_exit':
ipmb_dev_int.c: undefined reference to `i2c_del_driver'

Add I2C Kconfig dependency to fix this.

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 51bd6f291583 ("Add support for IPMB driver")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/char/ipmi/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 987191b..4bad061 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -135,6 +135,7 @@ config ASPEED_BT_IPMI_BMC
 
 config IPMB_DEVICE_INTERFACE
 	tristate 'IPMB Interface handler'
+	depends on I2C
 	depends on I2C_SLAVE
 	help
 	  Provides a driver for a device (Satellite MC) to
-- 
2.7.4




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
