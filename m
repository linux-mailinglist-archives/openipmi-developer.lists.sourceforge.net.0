Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9298C13E33F
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2020 18:01:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1is8W1-0002pD-UL; Thu, 16 Jan 2020 17:01:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1is8W0-0002ov-Qb
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jan 2020 17:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/mol2vNmbE1QMuISLBoUcy/nWogrptqSSF22uPtWvzA=; b=UJRS7/zkhV31IEO6cAF53XaL5R
 giRzy/SG8/1sKfrSbTa8sF9nZkLqvNF7YeJkLF4vf6/LpX8YnFhxCgwnJ01vf7b5txwhtcx0e3LoC
 ttUSoc4+n/3JyZYN3dTOATY0BetD9On4c3CZenHs//fBgorMLoyrZfCP6Ua1wSorlyRY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/mol2vNmbE1QMuISLBoUcy/nWogrptqSSF22uPtWvzA=; b=IDYkwOeds3iQInihQ5ecN29E1Z
 ZsxXhStewCaX6HB5HcO1YLHu9c1TqaNl7grlSaEw3luoA/Vm1bdVit+45npPbe9G5jNnKiHYECEwz
 3kLNY5/+VodX4qQPSHf5j8KmBgheBhFJbtr6PXzYWxYKf/wP5xInXmYNtgG1cY/x5sTM=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1is8Vx-009XC1-H8
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jan 2020 17:01:04 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22E732073A;
 Thu, 16 Jan 2020 17:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194055;
 bh=dBLPW9njnuUVOoAFzsSRiHy03VMXVhY5zLhOEo4mUIA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BB7LVwrAb8dEGrOW4jN3LMJigL2SC/Fm8e58SG7GoRkLvEShwsETYMpWUjsAyJFFt
 0/A3KZqxC22RnIp/sDYLdBv3hZ6V9yM/qUdoo0FkCu5zKeBlpHns/Xk3v9qSC2ivdc
 9CCV9AonO2kLEfjdGRqwQO+jcjAmAA0qCQVZw2+w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu, 16 Jan 2020 11:51:18 -0500
Message-Id: <20200116165940.10720-52-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1is8Vx-009XC1-H8
Subject: [Openipmi-developer] [PATCH AUTOSEL 4.19 169/671] ipmi: kcs_bmc:
 handle devm_kasprintf() failure case
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
 Haiyue Wang <haiyue.wang@linux.intel.com>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Nicholas Mc Guire <hofrat@osadl.org>

[ Upstream commit 42c7c6ef1e6fa5fc0425120f06f045190b1dda2d ]

devm_kasprintf() may return NULL if internal allocation failed so this
assignment is not safe. Moved the error exit path and added the !NULL
which then allows the devres manager to take care of cleanup.

Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
Fixes: cd2315d471f4 ("ipmi: kcs_bmc: don't change device name")
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/kcs_bmc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index e6124bd548df..ed4dc3b1843e 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -440,12 +440,13 @@ struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel)
 	kcs_bmc->data_in = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 	kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 	kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
-	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer)
-		return NULL;
 
 	kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
 	kcs_bmc->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "%s%u",
 					       DEVICE_NAME, channel);
+	if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
+	    !kcs_bmc->miscdev.name)
+		return NULL;
 	kcs_bmc->miscdev.fops = &kcs_bmc_fops;
 
 	return kcs_bmc;
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
