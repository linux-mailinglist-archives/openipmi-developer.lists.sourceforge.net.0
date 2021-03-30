Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA9734F0BC
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 20:17:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRIvt-0001yf-A4; Tue, 30 Mar 2021 18:17:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lRIvd-0001xA-SA
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aVPxJeEwqa5MYORTNINHJLxtbfvUstojaO7qT4vqX+U=; b=RKnuk+JvrvoGvHkRgeE3p9U9kY
 x3EnNyRK0I2KDyusjSpndFioSq4WZaJ1ckKMvEop/Pe9bhsUXFyjo0RXdMoJhjP93A9TjAWQ9po0r
 7B6zOXXEIb/ttIDwL//woTbuzkrnzF1lKlrm+2oxC4+Rbg2zyPAEAZcB1RNFsDrSAnYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aVPxJeEwqa5MYORTNINHJLxtbfvUstojaO7qT4vqX+U=; b=TifYlqObGPC5R4+QvM8sNGJxJ8
 Zm4zYERK8hpDva8S5i5612KzAqd0SL7JH/u1aZ5qG2p5Klr1LZfhfv9UbdmdGniiv5pX3cam0sArU
 bZoOxt1s7kgoSUUa5DOSuBQkkJZYGkAPjOpbEJNWfMcyDUW6VuwaQjtYOff3nxxI7vVQ=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRIvU-00Dvb7-NW
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:25 +0000
IronPort-SDR: KqsKzSfhrSoX9QBN/Ydi/bI+xTPUBeMDefNzG8QKVB1dmgkGetkLHffB0mUR/BkK3rSNz/qogm
 GpUoplOZxIPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="253169565"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="253169565"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:16:55 -0700
IronPort-SDR: etjm4Kucbm6tgRgQa7+SXZVn06MgYXL4KUx/FdC20Aa0BGxFdkSQlLcja4XmiwMEvazbBJCDT4
 cqnkSK4q+t0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="606862472"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga006.fm.intel.com with ESMTP; 30 Mar 2021 11:16:53 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 6AABE368; Tue, 30 Mar 2021 21:17:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Mar 2021 21:16:48 +0300
Message-Id: <20210330181649.66496-9-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1lRIvU-00Dvb7-NW
Subject: [Openipmi-developer] [PATCH v1 09/10] ipmi_si: Drop redundant check
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
