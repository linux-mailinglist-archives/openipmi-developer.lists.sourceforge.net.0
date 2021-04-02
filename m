Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF282352EC8
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:55:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSO1J-0001LE-Pg; Fri, 02 Apr 2021 17:55:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSO1J-0001L0-1Y
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:55:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aVPxJeEwqa5MYORTNINHJLxtbfvUstojaO7qT4vqX+U=; b=D5yX6WXubTn66kGXBVL4p6lAnk
 hUSn/oD5kF8L0/AGzzdmkz7lx01erJRosbhA/pgWEnV0xYO5evazhRh/BQ8bphLGDSGWXK3EXl4n7
 xI3+lx7porxp0ZCFOzH7HPfPEVXkxOeXWu5fX6sDInV+aEsaCtjmEWxdKRRq8nVqXZnw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aVPxJeEwqa5MYORTNINHJLxtbfvUstojaO7qT4vqX+U=; b=SW2gKo8xH/m5oO9M2FZisKzJ1i
 NUdVg2rF+P6DY2PGRA7C1ty2d6lr5r2OdRp3BHCG5/nZBHZgVpFewnT0hY7ux0DzPoNQTPuv3D2z8
 jnakanRZa2dtKXX77FKf7vwut5zY9ciUuROX8hCTzKVjzNUnuApP/pouFmbtESdTydjQ=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lSNpv-007g4U-Um
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:44:15 +0000
IronPort-SDR: 5hx5WN7OWMrWo4fCFkmLJMOvZwvvaGNqjE6E8XPNnVgHeu5FD0NfDP6sNt+gtpEqSMdd2JYXdo
 xR7/Vy7j1ymg==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="277702232"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="277702232"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:28 -0700
IronPort-SDR: vTHVuaPDrEpYeFIAMCyrMd6QsqBFaxYqX0Y6paXYTdOkD/vqvpMFgSIyjqsxQKIBdnORtz5NOy
 LAQzXF/PQXXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="528673883"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga004.jf.intel.com with ESMTP; 02 Apr 2021 10:43:26 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id CE981668; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:33 +0300
Message-Id: <20210402174334.13466-10-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
References: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
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
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSNpv-007g4U-Um
Subject: [Openipmi-developer] [PATCH v2 09/10] ipmi_si: Drop redundant check
 before calling put_device()
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
Cc: Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

put_device() is NULL aware, drop redundant check before calling it.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si_hotmod.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_hotmod.c b/drivers/char/ipmi/ipmi_si_hotmod.c
index 087f5eb1ebc0..a07ef37c0e3f 100644
--- a/drivers/char/ipmi/ipmi_si_hotmod.c
+++ b/drivers/char/ipmi/ipmi_si_hotmod.c
@@ -223,8 +223,7 @@ static int hotmod_handler(const char *val, const struct kernel_param *kp)
 				if (strcmp(pdev->name, "hotmod-ipmi-si") == 0)
 					platform_device_unregister(pdev);
 			}
-			if (dev)
-				put_device(dev);
+			put_device(dev);
 		}
 	}
 	rv = strlen(val);
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
