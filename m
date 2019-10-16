Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E922D8C7C
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Oct 2019 11:25:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iKfY9-0003lp-Ed; Wed, 16 Oct 2019 09:24:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yuehaibing@huawei.com>) id 1iKfY7-0003lU-Vj
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 09:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=96U4Yj5DZvVzXvi93PMxtUUOKr6q3JC3TQZ7N+8m0w8=; b=KuLnPUrA6M4qWRs2R+PBLcYmlc
 +16mAL7/yPwB9EIL7HbCBdySis5I5ZBBC2+i5CIbBtT71WFlBfzra1u1VCVrC1tOWaB7v/oNF0FbR
 iKYz0K73X8bb/iKTHnQqKRg7/hMYj6BWvDV3fcbxnc9godO3NyXwb+9FkzG1IHCLhLPA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=96U4Yj5DZvVzXvi93PMxtUUOKr6q3JC3TQZ7N+8m0w8=; b=Q
 aziPSTqFIPA/E6TWJUMYY8S5PrqvtI7OHBhhbXnifNrdKyI+kYxOGZEehrYa0T0dF6bC4Qa7Uei6o
 91GJRsLmxDBqYyeMBPfakYeLPnSEKSfWp375xJIk/1rAvs6nTRFPTs0DuQm6yi72l+/qrPybkHHz9
 OmDUJi8NcGseGl6Y=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iKfY5-00BGbS-It
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 09:24:55 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 58B5D5162D73CB561496;
 Wed, 16 Oct 2019 17:24:45 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Wed, 16 Oct 2019
 17:24:36 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>
Date: Wed, 16 Oct 2019 17:21:31 +0800
Message-ID: <20191016092131.23096-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iKfY5-00BGbS-It
Subject: [Openipmi-developer] [PATCH -next] ipmi: bt-bmc: use
 devm_platform_ioremap_resource() to simplify code
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

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/char/ipmi/bt-bmc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index 40b9927..d36aeac 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -444,15 +444,13 @@ static int bt_bmc_probe(struct platform_device *pdev)
 
 	bt_bmc->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
 	if (IS_ERR(bt_bmc->map)) {
-		struct resource *res;
 		void __iomem *base;
 
 		/*
 		 * Assume it's not the MFD-based devicetree description, in
 		 * which case generate a regmap ourselves
 		 */
-		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-		base = devm_ioremap_resource(&pdev->dev, res);
+		base = devm_platform_ioremap_resource(pdev, 0);
 		if (IS_ERR(base))
 			return PTR_ERR(base);
 
-- 
2.7.4




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
