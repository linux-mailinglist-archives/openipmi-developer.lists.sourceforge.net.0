Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5E334F0B8
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 20:17:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRIvi-0001xW-51; Tue, 30 Mar 2021 18:17:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lRIvO-0001we-DK
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NhcWywFZkW59U9b9rQI+0TV9nnhWRl56L20IjLa7esw=; b=NBBhsGO5Iq4cpyqf4cftwRlyuI
 +7rYXJQT1mBse//LFTy3W7/OPB39787f3DZovG6299IbREeocZ8u1JKZlOkBv14vZPe8CxdVkAVqG
 2a2q8AkRBEPJQAVriEKMJN6AoCdimxAj7FhUcJzD7hSqBWdWPaEG2w+Gp94+xwyZCEGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NhcWywFZkW59U9b9rQI+0TV9nnhWRl56L20IjLa7esw=; b=QHDBUP/ixA26EoxWSI73E/OvBb
 bRDcGnbCEjaNWwnyBUGnn9Um0BeaH5DP0I4hhh2Dcgye43DFMkmCiFUvN8DiQWtY6Arr2bge5pO5L
 wOTjwAKkgpk4eJlmpxCbBkTrKgdsHP1t9Fz3dbQ3RCpELnz0Lw1DVa4s05pQELM5/O5Y=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRIvL-00DvaQ-Gk
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:10 +0000
IronPort-SDR: VQeHT0re86HXlLEof36Isx3osjVSHPs/iz1YGDioHUjzHG9Jieic0Vju7+4MGR7wzh5ww+mtmy
 Qn0c7TiCjB2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="255820253"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="255820253"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:16:54 -0700
IronPort-SDR: pwDGYOYuahn2sUGVqMIlCvj0OEDHfdvYVMKWL5L6Z+lf7miHg/o3K2y8GCDgvD4wZyW2w6ybF2
 lb89/PvApZXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="595565177"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga005.jf.intel.com with ESMTP; 30 Mar 2021 11:16:51 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 4A5CA29D; Tue, 30 Mar 2021 21:17:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Mar 2021 21:16:44 +0300
Message-Id: <20210330181649.66496-5-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1lRIvL-00DvaQ-Gk
Subject: [Openipmi-developer] [PATCH v1 05/10] ipmi_si: Introduce
 panic_event_str array
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

Instead of twice repeat the constant literals, introduce
panic_event_str array. It allows to simplify the code with
help of match_string() API.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 49 ++++++++++-------------------
 1 file changed, 17 insertions(+), 32 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index f19f0f967e28..c7d37366d7bb 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -52,8 +52,12 @@ static bool drvregistered;
 enum ipmi_panic_event_op {
 	IPMI_SEND_PANIC_EVENT_NONE,
 	IPMI_SEND_PANIC_EVENT,
-	IPMI_SEND_PANIC_EVENT_STRING
+	IPMI_SEND_PANIC_EVENT_STRING,
+	IPMI_SEND_PANIC_EVENT_MAX
 };
+
+static const char *const panic_event_str[] = { "none", "event", "string", NULL };
+
 #ifdef CONFIG_IPMI_PANIC_STRING
 #define IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_STRING
 #elif defined(CONFIG_IPMI_PANIC_EVENT)
@@ -68,46 +72,27 @@ static int panic_op_write_handler(const char *val,
 				  const struct kernel_param *kp)
 {
 	char valcp[16];
-	char *s;
-
-	strncpy(valcp, val, 15);
-	valcp[15] = '\0';
+	int e;
 
-	s = strstrip(valcp);
-
-	if (strcmp(s, "none") == 0)
-		ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT_NONE;
-	else if (strcmp(s, "event") == 0)
-		ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT;
-	else if (strcmp(s, "string") == 0)
-		ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT_STRING;
-	else
-		return -EINVAL;
+	strscpy(valcp, val, sizeof(valcp));
+	e = match_string(panic_event_str, -1, strstrip(valcp));
+	if (e < 0)
+		return e;
 
+	ipmi_send_panic_event = e;
 	return 0;
 }
 
 static int panic_op_read_handler(char *buffer, const struct kernel_param *kp)
 {
-	switch (ipmi_send_panic_event) {
-	case IPMI_SEND_PANIC_EVENT_NONE:
-		strcpy(buffer, "none\n");
-		break;
-
-	case IPMI_SEND_PANIC_EVENT:
-		strcpy(buffer, "event\n");
-		break;
-
-	case IPMI_SEND_PANIC_EVENT_STRING:
-		strcpy(buffer, "string\n");
-		break;
+	const char *event_str;
 
-	default:
-		strcpy(buffer, "???\n");
-		break;
-	}
+	if (ipmi_send_panic_event >= IPMI_SEND_PANIC_EVENT_MAX)
+		event_str = "???";
+	else
+		event_str = panic_event_str[ipmi_send_panic_event];
 
-	return strlen(buffer);
+	return sprintf(buffer, "%s\n", event_str);
 }
 
 static const struct kernel_param_ops panic_op_ops = {
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
