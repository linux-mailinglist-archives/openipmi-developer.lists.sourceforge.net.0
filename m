Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EC29870AD
	for <lists+openipmi-developer@lfdr.de>; Thu, 26 Sep 2024 11:50:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1stl8w-0002oW-K8;
	Thu, 26 Sep 2024 09:50:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hanchunchao@inspur.com>) id 1stl8u-0002oE-FG
 for openipmi-developer@lists.sourceforge.net;
 Thu, 26 Sep 2024 09:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yz2oIjLGYE6Pe0FD56RSsclglgu1xgLamfrRiXsvzZo=; b=D5K+fxSO00me5tSyGpK96w5JFf
 bE7jRJZWcgZ8kEw0NduC1skN2XDUlAP/wx11eOuC7XnBQ43MF8Txly7tsvrOlbwZ2iMz8cAoaJN0I
 XVVdW2YQ69Np6u3pH4Ce5LLOiQ3zZdxCBhpVaLReoYkrjAT8GJYGWMnetx01nvGaxZ5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yz2oIjLGYE6Pe0FD56RSsclglgu1xgLamfrRiXsvzZo=; b=C
 xSwRRlcF8HBZsdqEupdKRvO2HmvTl4Ool7nY3NHANvNT0uic3rQXbhMMNyEfT5AInZnkaNFAR4Q7A
 KXJjmlNioyT5dXFR5KHTvdQBeFPlTPEkXIWssi8Vh+MyCDmJqmibzLGCmyIKY+qaKLO3faR+vMT/h
 Di5+xigh7Eta9Ihs=;
Received: from mail-vip.corpemail.net ([162.243.126.186])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stl8s-0008VG-Ln for openipmi-developer@lists.sourceforge.net;
 Thu, 26 Sep 2024 09:50:36 +0000
Received: from unicom145.biz-email.net
 by unicom145.biz-email.net ((D)) with ASMTP (SSL) id XKU00015;
 Thu, 26 Sep 2024 17:45:15 +0800
Received: from localhost.localdomain (10.94.6.214) by
 jtjnmail201612.home.langchao.com (10.100.2.12) with Microsoft SMTP Server id
 15.1.2507.39; Thu, 26 Sep 2024 17:45:14 +0800
From: Charles Han <hanchunchao@inspur.com>
To: <Asmaa@mellanox.com>, <minyard@acm.org>, <vadimp@mellanox.com>
Date: Thu, 26 Sep 2024 17:44:19 +0800
Message-ID: <20240926094419.25900-1-hanchunchao@inspur.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.94.6.214]
tUid: 20249261745154c75b75870e7b94b0946c571db19850f
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  devm_kasprintf() can return a NULL pointer on failure but
 this returned value is not checked. Fixes: 51bd6f291583 ("Add support for
 IPMB driver") Signed-off-by: Charles Han <hanchunchao@inspur.com> ---
 drivers/char/ipmi/ipmb_dev_int.c
 | 3 +++ 1 file changed, 3 insertions(+) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1stl8s-0008VG-Ln
Subject: [Openipmi-developer] [PATCH] ipmi: ipmb: Add check devm_kasprintf()
 returned value
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
Cc: Charles Han <hanchunchao@inspur.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

devm_kasprintf() can return a NULL pointer on failure but this
returned value is not checked.

Fixes: 51bd6f291583 ("Add support for IPMB driver")
Signed-off-by: Charles Han <hanchunchao@inspur.com>
---
 drivers/char/ipmi/ipmb_dev_int.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 7296127181ec..8a14fd0291d8 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -321,6 +321,9 @@ static int ipmb_probe(struct i2c_client *client)
 	ipmb_dev->miscdev.name = devm_kasprintf(&client->dev, GFP_KERNEL,
 						"%s%d", "ipmb-",
 						client->adapter->nr);
+	if (!ipmb_dev->miscdev.name)
+		return -ENOMEM;
+
 	ipmb_dev->miscdev.fops = &ipmb_fops;
 	ipmb_dev->miscdev.parent = &client->dev;
 	ret = misc_register(&ipmb_dev->miscdev);
-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
