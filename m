Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D74352ECF
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:56:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSO26-0004mF-I0; Fri, 02 Apr 2021 17:56:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSO1P-0004ZZ-Bi
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YL90Y+5Dj/9OeCg5UQPh/bkDsqo4Bsj+mOfdctikeaw=; b=G9KF6XZyr6LeJ5kKsQ8ayDhZYa
 RlV10VxovCtL6+J+EvCJx/YC3f8lVpq6Ai2ceVaaj82QUQmvZKTtLP3FHSOE3+1fgmiDXobgrz5uK
 I6+XTU606fTm8d08FzbcwQTw7JmfZU/v1QyVQZDMBHkWCINKctM8ydzP2Sz1utvukwjM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YL90Y+5Dj/9OeCg5UQPh/bkDsqo4Bsj+mOfdctikeaw=; b=DMgGyy2qG3CDgpRs5YiDKnVDgA
 O5uLQLWnxePYXf0vABD3RsrJj8OzS6zfFCbWQIZJXHdtrn8I/Ckntx2CnNipGlv6E/iZvwBZA3zgq
 5cGt/6QMWD4H5yOaX6js15BIiL2sYbjtb7HEtjuVMNDgJklCJ8yshLOqO3eB0Xi2mkA8=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lSNpV-007g2t-Vp
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:43:52 +0000
IronPort-SDR: iCWVAKMe9G1B/qB8N4+E348yXPN7obvocbAATrb3XUWWqUIcBZkdeJNVyaiYauEVjhSbRTNQvP
 OpUw0PDRLuSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="253842295"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="253842295"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:28 -0700
IronPort-SDR: tv8AY9uTXMxK8XE7mA2FLUF0hq0LJ+IwRYc80XnBLf8dBROOEOI2HOmQ/TFxGfNxTkfcalVksj
 4TC7mYLT4u/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="417142823"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga007.jf.intel.com with ESMTP; 02 Apr 2021 10:43:26 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id A7697450; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:29 +0300
Message-Id: <20210402174334.13466-6-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1lSNpV-007g2t-Vp
Subject: [Openipmi-developer] [PATCH v2 05/10] ipmi_si: Introduce
 ipmi_panic_event_str[] array
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

Instead of repeating twice the constant literals, introduce
ipmi_panic_event_str[] array. It allows to simplify the code
with help of match_string() API.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 51 +++++++++++------------------
 1 file changed, 19 insertions(+), 32 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index f19f0f967e28..367616a408b6 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -49,11 +49,17 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 static bool initialized;
 static bool drvregistered;
 
+/* Numbers in this enumerator should be mapped to ipmi_panic_event_str */
 enum ipmi_panic_event_op {
 	IPMI_SEND_PANIC_EVENT_NONE,
 	IPMI_SEND_PANIC_EVENT,
-	IPMI_SEND_PANIC_EVENT_STRING
+	IPMI_SEND_PANIC_EVENT_STRING,
+	IPMI_SEND_PANIC_EVENT_MAX
 };
+
+/* Indices in this array should be mapped to enum ipmi_panic_event_op */
+static const char *const ipmi_panic_event_str[] = { "none", "event", "string", NULL };
+
 #ifdef CONFIG_IPMI_PANIC_STRING
 #define IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_STRING
 #elif defined(CONFIG_IPMI_PANIC_EVENT)
@@ -68,46 +74,27 @@ static int panic_op_write_handler(const char *val,
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
+	e = match_string(ipmi_panic_event_str, -1, strstrip(valcp));
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
+		event_str = ipmi_panic_event_str[ipmi_send_panic_event];
 
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
