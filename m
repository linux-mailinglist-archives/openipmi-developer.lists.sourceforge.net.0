Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 555B45ADC97
	for <lists+openipmi-developer@lfdr.de>; Tue,  6 Sep 2022 02:38:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oVMbL-0003vG-9C;
	Tue, 06 Sep 2022 00:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <i.kononenko@yadro.com>) id 1oQ131-0000vn-0d
 for openipmi-developer@lists.sourceforge.net;
 Mon, 22 Aug 2022 06:36:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Elj9qKFHEBAmwmxJ/Pg7aDsfSByXzDDTKgZ6W8RSJ5E=; b=g21MY23SzfWmkobpbqHy59Q5BM
 8CVKT5aZ1jCRC4LLy0+5r7dR+NJe44T+0KYyMO0vFL5skOel73kPaoeS7G66iVU+ioyVaKN3M4mBt
 y339PsJ5bDWvwr1oG0jrKftVAGP6iasq/KzlPXvNU2sZFFdouMeWKv4XhDzzOcimZ3x0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Elj9qKFHEBAmwmxJ/Pg7aDsfSByXzDDTKgZ6W8RSJ5E=; b=kkeUSA/GrgoLWQ5+XyHlA4+fPP
 thc9zB3qv92nTTzBPsVPZG7GwUAh6Ycjl+b4rYXpyCH5joyU9JbyFxSWSqvtPtrGGc0c5w7aH/q1N
 fElEo/R6dWAEbVyKmzittR9+mVnfL+9+pQkyvFymS+9QiWbFJKLXnKLKcGoNpVppueWw=;
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oQ12z-00CmaJ-9d for openipmi-developer@lists.sourceforge.net;
 Mon, 22 Aug 2022 06:36:30 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id EB188412DF;
 Mon, 22 Aug 2022 06:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-type:content-type:content-transfer-encoding:mime-version
 :references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received:received; s=
 mta-01; t=1661150176; x=1662964577; bh=whFlBZP+yR9KhM+S8ZHayWSEL
 7ddcPPVJQw/8yS0LJI=; b=YbI+l9rX9Po/xOaXVC9iyJEYlSZgC/aGmRBuJuqPB
 Z2bw7cakcrEEGhoJBSQBgBlFs+j67Km5QodOqneIhhE7AiNsxRPG+GnNIr6WPk6E
 Btxg9Il+Ynt2lg/tTbICV7lHjcWn9mCwU6ljo1oLUimNRH0HYnvYN5KWFqjd18zt
 1c=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NcYq-AMldSeq; Mon, 22 Aug 2022 09:36:16 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 1F9A9412DB;
 Mon, 22 Aug 2022 09:36:15 +0300 (MSK)
Received: from T-EXCH-08.corp.yadro.com (172.17.11.58) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Mon, 22 Aug 2022 09:36:15 +0300
Received: from ik-yadro.yadro.com (10.178.113.33) by T-EXCH-08.corp.yadro.com
 (172.17.11.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.1118.9; Mon, 22 Aug
 2022 09:36:10 +0300
From: Igor Kononenko <i.kononenko@yadro.com>
To: Corey Minyard <minyard@acm.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@aj.id.au>
Date: Mon, 22 Aug 2022 09:35:57 +0300
Message-ID: <ad3cd046c4dcb9169aaff6c0b739b23d0a06014d.1661149313.git.i.kononenko@yadro.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <fb81dda34f9db0b9f743b247a2464576dcccd7c9.1661094034.git.i.kononenko@yadro.com>
References: <fb81dda34f9db0b9f743b247a2464576dcccd7c9.1661094034.git.i.kononenko@yadro.com>
MIME-Version: 1.0
X-Originating-IP: [10.178.113.33]
X-ClientProxiedBy: T-EXCH-02.corp.yadro.com (172.17.10.102) To
 T-EXCH-08.corp.yadro.com (172.17.11.58)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The previos v1 [PATCH 1/3] have error of getting `struct
 kcs_bmc_device`
 pointer from `struct platform_device *`. Replaced to retriveing pointer by
 `platform_get_drvdata()` Reported-by: kernel test robot <lkp@intel.com>
 Signed-off-by:
 Igor Kononenko <i.kononenko@yadro.com> --- drivers/char/ipmi/kcs_bmc_aspeed.c
 | 9 +++++++++ 1 file changed, 9 insertions(+) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oQ12z-00CmaJ-9d
X-Mailman-Approved-At: Tue, 06 Sep 2022 00:38:00 +0000
Subject: [Openipmi-developer] [PATCH v2 1/3] ipmi:kcs_bmc: Add cleanup
 regmap(interrupt-regs) on a shutdown.
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
Cc: Igor Kononenko <i.kononenko@yadro.com>, kernel test robot <lkp@intel.com>,
 linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The previos v1 [PATCH 1/3] have error of getting `struct kcs_bmc_device` 
pointer from `struct platform_device *`. Replaced to retriveing pointer by 
`platform_get_drvdata()`

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Igor Kononenko <i.kononenko@yadro.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index cdc88cde1e9a..8437f3cfe3f4 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -636,6 +636,14 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static void aspeed_kcs_shutdown(struct platform_device *pdev)
+{
+	struct aspeed_kcs_bmc *priv = platform_get_drvdata(pdev);
+	struct kcs_bmc_device *kcs_bmc = &priv->kcs_bmc;
+
+	aspeed_kcs_irq_mask_update(kcs_bmc, (KCS_BMC_EVENT_TYPE_IBF), 0);
+}
+
 static const struct of_device_id ast_kcs_bmc_match[] = {
 	{ .compatible = "aspeed,ast2400-kcs-bmc-v2" },
 	{ .compatible = "aspeed,ast2500-kcs-bmc-v2" },
@@ -651,6 +659,7 @@ static struct platform_driver ast_kcs_bmc_driver = {
 	},
 	.probe  = aspeed_kcs_probe,
 	.remove = aspeed_kcs_remove,
+	.shutdown = aspeed_kcs_shutdown,
 };
 module_platform_driver(ast_kcs_bmc_driver);
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
