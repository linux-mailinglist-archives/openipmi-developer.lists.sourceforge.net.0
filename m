Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF90126EBAB
	for <lists+openipmi-developer@lfdr.de>; Fri, 18 Sep 2020 04:07:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kJ5nh-0002Sb-M8; Fri, 18 Sep 2020 02:07:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1kJ5ng-0002SL-4Q
 for openipmi-developer@lists.sourceforge.net; Fri, 18 Sep 2020 02:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ATmUoMvwkBllSmJPVz9nsW5g8Z254nX570LEoOtDpM0=; b=cnSCzq569S5JuQ1KJdd/JoIznL
 RhdpbsVfmtuQtUZ9X/bav8QEmVK0givH5chrs5fbnQCLC3dAcphidh+TXh7BPK/hGUxm8hEh9QyxX
 2HUM+9rXR9XdPfakQYz0JNxEIMuKcGWXJfTtBy04Oxk8lKWdARKVsRCzuV+mYnb43rko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ATmUoMvwkBllSmJPVz9nsW5g8Z254nX570LEoOtDpM0=; b=LVWsskhP0tLha1QVsx34z4uOc1
 SDB469mAm7QpcKWxNBiLdgoLWOf+h62HJaV3aTQmDqg+3wtOvTgggWx97OoH9113tq2k9FX3GnaGs
 0pPo5rvNebqdg8DEaTUIet3DatuCoGXDijjLYnxHDnPleU+6vR8orX1ElwgpuJblxBfw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ5nZ-00DibH-5N
 for openipmi-developer@lists.sourceforge.net; Fri, 18 Sep 2020 02:07:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95DF82388E;
 Fri, 18 Sep 2020 02:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600394800;
 bh=4QEX68LXmMj1dBXpx9bC+bzvAKqkEWyUNcAaYFv82EY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rngAtvDbZ3YWBYPbNN6wKKpAzCEspLDrzVKw3Vgju7fBJS9xHdAPpini/fbGaLG+u
 JPu46DjCzNDFUZrYxrJFwVe+Hxz+AhGx6arMubhDzg6b3VugWTQnEte+DwGqXKlo5S
 IYFkySsFNGoPMHfTP1wjeDDqhix0uq+3s0yNG3E0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu, 17 Sep 2020 22:00:09 -0400
Message-Id: <20200918020110.2063155-269-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200918020110.2063155-1-sashal@kernel.org>
References: <20200918020110.2063155-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kJ5nZ-00DibH-5N
Subject: [Openipmi-developer] [PATCH AUTOSEL 5.4 269/330] ipmi:bt-bmc: Fix
 error handling and status check
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
Cc: Sasha Levin <sashal@kernel.org>, Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>,
 Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Tang Bin <tangbin@cmss.chinamobile.com>

[ Upstream commit 49826937e7c7917140515aaf10c17bedcc4acaad ]

If the function platform_get_irq() failed, the negative value
returned will not be detected here. So fix error handling in
bt_bmc_config_irq(). And in the function bt_bmc_probe(),
when get irq failed, it will print error message. So use
platform_get_irq_optional() to simplify code. Finally in the
function bt_bmc_remove() should make the right status check
if get irq failed.

Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
Message-Id: <20200505102906.17196-1-tangbin@cmss.chinamobile.com>
[Also set bt_bmc->irq to a negative value if devm_request_irq() fails.]
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/bt-bmc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index 40b9927c072c9..89a8faa9b6cfa 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -399,15 +399,15 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
 	struct device *dev = &pdev->dev;
 	int rc;
 
-	bt_bmc->irq = platform_get_irq(pdev, 0);
-	if (!bt_bmc->irq)
-		return -ENODEV;
+	bt_bmc->irq = platform_get_irq_optional(pdev, 0);
+	if (bt_bmc->irq < 0)
+		return bt_bmc->irq;
 
 	rc = devm_request_irq(dev, bt_bmc->irq, bt_bmc_irq, IRQF_SHARED,
 			      DEVICE_NAME, bt_bmc);
 	if (rc < 0) {
 		dev_warn(dev, "Unable to request IRQ %d\n", bt_bmc->irq);
-		bt_bmc->irq = 0;
+		bt_bmc->irq = rc;
 		return rc;
 	}
 
@@ -479,7 +479,7 @@ static int bt_bmc_probe(struct platform_device *pdev)
 
 	bt_bmc_config_irq(bt_bmc, pdev);
 
-	if (bt_bmc->irq) {
+	if (bt_bmc->irq >= 0) {
 		dev_info(dev, "Using IRQ %d\n", bt_bmc->irq);
 	} else {
 		dev_info(dev, "No IRQ; using timer\n");
@@ -505,7 +505,7 @@ static int bt_bmc_remove(struct platform_device *pdev)
 	struct bt_bmc *bt_bmc = dev_get_drvdata(&pdev->dev);
 
 	misc_deregister(&bt_bmc->miscdev);
-	if (!bt_bmc->irq)
+	if (bt_bmc->irq < 0)
 		del_timer_sync(&bt_bmc->poll_timer);
 	return 0;
 }
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
