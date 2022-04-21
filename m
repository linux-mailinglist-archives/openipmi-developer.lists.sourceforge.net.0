Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB78509CC5
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 Apr 2022 11:53:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nhTVV-0001DU-JN; Thu, 21 Apr 2022 09:53:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <weiyongjun1@huawei.com>) id 1nhTVU-0001DO-BW
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Apr 2022 09:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ke3fklGzvXb4klCsB6GjKeeJUFMq5x+66WTMofvpTgo=; b=KsqpcTLPISrh0JwupX0wVzW+Af
 CFiLxXG8UtG2nepkFOpGwXXzetyCGAJ60KNa7TWndqlcnRm3Ac/ssZTNBkEXFP3Y7xUUMkCGijqIb
 9fqFo/IkP8Sns9Una5xknbTF37ujhZWqFyR70g8XLQNL3fgHQvIZCZFGYSE+ZPcaqT00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ke3fklGzvXb4klCsB6GjKeeJUFMq5x+66WTMofvpTgo=; b=V
 yDrgbtwpBGO5a1hxtaRdJWovWnrEb+n2ZVjV4dMUiOTYig56LJ8k8LuHBTxR78x5btntExQ9inVmI
 9a+oWh+utiXMz6xDZRdDSJH53P9Vo5ZvK1pJRHA7W2Unxv7WnMe7aD7PiqQplRHpozr9Dxe4RV8qh
 UP6ZE9vkkekMB4gc=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhTVT-0007At-TC
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Apr 2022 09:53:49 +0000
Received: from canpemm500009.china.huawei.com (unknown [172.30.72.56])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4KkXsG3Xphz1J9xb;
 Thu, 21 Apr 2022 17:52:50 +0800 (CST)
Received: from localhost.localdomain (10.175.102.38) by
 canpemm500009.china.huawei.com (7.192.105.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Thu, 21 Apr 2022 17:53:36 +0800
To: Corey Minyard <minyard@acm.org>
Date: Thu, 21 Apr 2022 10:08:35 +0000
Message-ID: <20220421100835.1942677-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.102.38]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 canpemm500009.china.huawei.com (7.192.105.203)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: KASAN report null-ptr-deref as follows: KASAN: null-ptr-deref
 in range [0x0000000000000008-0x000000000000000f] Hardware name: QEMU Standard
 PC (i440FX + PIIX, 1996),
 BIOS 1.13.0-1ubuntu1.1 04/01/2014 RIP: 0010:ipmi_unregister_smi+0x7d/0xd50
 [...] Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [45.249.212.255 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nhTVT-0007At-TC
Subject: [Openipmi-developer] [PATCH] ipmi: ipmi_ipmb: Fix null-ptr-deref in
 ipmi_unregister_smi()
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
From: Wei Yongjun via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Wei Yongjun <weiyongjun1@huawei.com>
Cc: Hulk Robot <hulkci@huawei.com>, openipmi-developer@lists.sourceforge.net,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

KASAN report null-ptr-deref as follows:

KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014
RIP: 0010:ipmi_unregister_smi+0x7d/0xd50 drivers/char/ipmi/ipmi_msghandler.c:3680
Call Trace:
 ipmi_ipmb_remove+0x138/0x1a0 drivers/char/ipmi/ipmi_ipmb.c:443
 ipmi_ipmb_probe+0x409/0xda1 drivers/char/ipmi/ipmi_ipmb.c:548
 i2c_device_probe+0x959/0xac0 drivers/i2c/i2c-core-base.c:563
 really_probe+0x3f3/0xa70 drivers/base/dd.c:541

In ipmi_ipmb_probe(), 'iidev->intf' is not set before ipmi_register_smi() success.
And in the error handling case, ipmi_ipmb_remove() is called to release resources,
ipmi_unregister_smi() is called without check 'iidev->intf', this will cause KASAN
null-ptr-deref issue.

Fix by adding NULL check prior to calling ipmi_unregister_smi().

Fixes: 57c9e3c9a374 ("ipmi:ipmi_ipmb: Unregister the SMI on remove")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/char/ipmi/ipmi_ipmb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
index b81b862532fb..ea8fdb5ecfc9 100644
--- a/drivers/char/ipmi/ipmi_ipmb.c
+++ b/drivers/char/ipmi/ipmi_ipmb.c
@@ -437,7 +437,8 @@ static int ipmi_ipmb_remove(struct i2c_client *client)
 	iidev->client = NULL;
 	ipmi_ipmb_stop_thread(iidev);
 
-	ipmi_unregister_smi(iidev->intf);
+	if (iidev->intf)
+		ipmi_unregister_smi(iidev->intf);
 
 	return 0;
 }
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
