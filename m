Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5610F352ECE
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:56:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSO26-0004m3-FL; Fri, 02 Apr 2021 17:56:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSO1M-0004ZZ-B4
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cPfDlB/ym+mgT5Trs1wqHU2mquKLbkZMwNfI9wLY+To=; b=PSoPtVW0ElYeOwHhQ4FrN1vfO5
 iQpDw7NFoCr8TEi13K5JKOOsioKxHAIU2Dl3vSb/qbD62o9+9VU2knusdpFlGnBERgetFHp29sV5f
 sGDIiCrCzH+PucjEoBttLJHuLReVE1JvpbGw2kfknqZJcwVUC584ZxQikR9hlwfqja9Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cPfDlB/ym+mgT5Trs1wqHU2mquKLbkZMwNfI9wLY+To=; b=A6388hg+1/qk2d1ptEQ42fTlR/
 wTTPw8nAFvaryS2rs9ANl1bpdZQan/RGu+BpebJFj02Q6SMWVEQ4uCm0K7Tevtb3DDcFTw3MceiHE
 83mOSFlG7oewQ3vSMs/Z4UHHG/3joT/dAPCUPjpmbQmO8hA2c3VFjNFPR0szj+LTunrM=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lSNpo-007g46-Pj
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:44:08 +0000
IronPort-SDR: kb3ow7bitV4gXQMBb2anDRw38e7KW3lm8p+gurabYqGbDorzCsm98zv9/GxZkycFFnh/J7TQTM
 rVdvQKUGQsUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="179637195"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="179637195"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:28 -0700
IronPort-SDR: rrtGNnNEFXtyqRVPHSXwHdVcfr1+xESwVdsc0unV7lIAKnbVuFZWux3e+l7jv209uojoVyqzr8
 6cuZBCzyQFag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="413277896"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 02 Apr 2021 10:43:26 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id C6F3360D; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:32 +0300
Message-Id: <20210402174334.13466-9-andriy.shevchenko@linux.intel.com>
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSNpo-007g46-Pj
Subject: [Openipmi-developer] [PATCH v2 08/10] ipmi_si: Use strstrip() to
 remove surrounding spaces
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

Instead of home grown analogue, use strstrip() from the kernel library.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si_hotmod.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_hotmod.c b/drivers/char/ipmi/ipmi_si_hotmod.c
index 4fbb4e18bae2..087f5eb1ebc0 100644
--- a/drivers/char/ipmi/ipmi_si_hotmod.c
+++ b/drivers/char/ipmi/ipmi_si_hotmod.c
@@ -185,24 +185,16 @@ static atomic_t hotmod_nr;
 
 static int hotmod_handler(const char *val, const struct kernel_param *kp)
 {
-	char *str = kstrdup(val, GFP_KERNEL), *curr, *next;
 	int  rv;
 	struct ipmi_plat_data h;
-	unsigned int len;
-	int ival;
+	char *str, *curr, *next;
 
+	str = kstrdup(val, GFP_KERNEL);
 	if (!str)
 		return -ENOMEM;
 
 	/* Kill any trailing spaces, as we can get a "\n" from echo. */
-	len = strlen(str);
-	ival = len - 1;
-	while ((ival >= 0) && isspace(str[ival])) {
-		str[ival] = '\0';
-		ival--;
-	}
-
-	for (curr = str; curr; curr = next) {
+	for (curr = strstrip(str); curr; curr = next) {
 		enum hotmod_op op;
 
 		next = strchr(curr, ':');
@@ -235,7 +227,7 @@ static int hotmod_handler(const char *val, const struct kernel_param *kp)
 				put_device(dev);
 		}
 	}
-	rv = len;
+	rv = strlen(val);
 out:
 	kfree(str);
 	return rv;
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
