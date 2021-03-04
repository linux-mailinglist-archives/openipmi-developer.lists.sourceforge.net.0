Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94047333298
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Mar 2021 02:00:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lJnDC-0001e2-IP; Wed, 10 Mar 2021 01:00:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <heikki.krogerus@linux.intel.com>) id 1lHjtU-0007xf-1o
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Mar 2021 09:03:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DWq+5dHfy2KaZnOvDfg7cDv73PoIMkre6lrXAbU31Ig=; b=Zm/SUwv3Twkg9zJGEk2o1IIsMc
 v66L9Gb3hA35fy8NlhRkMGdCf/iff+7LkyFETGIKoTTrwQJuzmZa8ZTz/ub2xfSOijH+HWrTjLNnA
 JDbsVB/N9VCQ9xCojaBs90nDbn5YwIisAFacuao0yjbSNa1kjsJc/TVDqQhASFQqfA5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DWq+5dHfy2KaZnOvDfg7cDv73PoIMkre6lrXAbU31Ig=; b=O
 /D4ZB9EUS42aoRvRU5RN2oOCcwPhT7XJmWXnaNKwcUfJk2kCD7YWwQYzM4NxF0hSSRnnz0UrsGivS
 NeuJr8gKY59n4/6m+dYtkstPtkLFd8OG/OB/iHB3fyTsLJ5YWC1apnAxebHZMn5/3iktaa0fFA08l
 lDtiDKBL4atnoXhM=;
Received: from mga11.intel.com ([192.55.52.93])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lHjtO-00069V-70
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Mar 2021 09:03:39 +0000
IronPort-SDR: c0BhbKPi6OnVN+KpBHNmnmuF4DCa5sCGn2qybRxPqdDa3Y6YsN+rx0DafE7DI1ZlQcdBY781f7
 uDAC+88GgZJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="184001921"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="184001921"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:03:17 -0800
IronPort-SDR: iVF34477WQOwcLzYuwmmrFrtjX0FgEqY699W1/68a9ie9vmqwrioqD7Tuk4gFtZzvNP3kZEJGV
 IzN7qDNDxDWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="507282467"
Received: from black.fi.intel.com (HELO black.fi.intel.com.) ([10.237.72.28])
 by fmsmga001.fm.intel.com with ESMTP; 04 Mar 2021 01:03:13 -0800
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Corey Minyard <minyard@acm.org>
Date: Thu,  4 Mar 2021 12:03:12 +0300
Message-Id: <20210304090312.26827-1-heikki.krogerus@linux.intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lHjtO-00069V-70
X-Mailman-Approved-At: Wed, 10 Mar 2021 01:00:28 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Handle device properties with
 software node API
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The old device property API is going to be removed.
Replacing the device_add_properties() call with the software
node API equivalent, device_create_managed_software_node().

Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
 drivers/char/ipmi/ipmi_plat_data.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_plat_data.c b/drivers/char/ipmi/ipmi_plat_data.c
index 28471ff2a3a3e..747b51ae01a80 100644
--- a/drivers/char/ipmi/ipmi_plat_data.c
+++ b/drivers/char/ipmi/ipmi_plat_data.c
@@ -102,7 +102,7 @@ struct platform_device *ipmi_platform_add(const char *name, unsigned int inst,
 		goto err;
 	}
  add_properties:
-	rv = platform_device_add_properties(pdev, pr);
+	rv = device_create_managed_software_node(&pdev->dev, pr, NULL);
 	if (rv) {
 		dev_err(&pdev->dev,
 			"Unable to add hard-code properties: %d\n", rv);
-- 
2.30.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
