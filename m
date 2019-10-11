Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67410D4371
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Oct 2019 16:52:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIwHI-0003ob-Bj; Fri, 11 Oct 2019 14:52:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIwHH-0003oH-3s
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 14:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uwPUhEEhsfyRoE1U6ftqnxpsRruxR8yueKh/CoIeR3E=; b=fqndLTZlrOZ6LuzMimZDpTQ/dy
 4ZJbg4KbqWBL1hKBoLr4TQsJShPF1SPlUKUtKqV18ZCgOhEgVTCCye2rNdJED5YmQMeGhZmVBj6Wz
 u1Qu1ux6aYX/2yIDriKNmzkHU8C+GBhZ5EaLI8QGJ81Rhuqs42xtKnEkg/9J8PkQvj9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uwPUhEEhsfyRoE1U6ftqnxpsRruxR8yueKh/CoIeR3E=; b=A
 3pJjrITp6xb2TxupDUaQLLFUecanZeAB4eMmOvUut4+gHu+r+VjkVYDZiPEncRY7UAswZvCdzi+X/
 AiOQSYZjo0xNQjKXZIg2YL1/a724vtiQy8iqVfus1TGoRYSxUwd45mRPjcrA/zmcpKWJcBk8roOJo
 fL0EM2SsHu0o1X9w=;
Received: from mga01.intel.com ([192.55.52.88])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIwHF-0065VZ-Q0
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 14:52:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 07:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="193554670"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga008.fm.intel.com with ESMTP; 11 Oct 2019 07:52:14 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id DB58F16A; Fri, 11 Oct 2019 17:52:13 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Fri, 11 Oct 2019 17:52:13 +0300
Message-Id: <20191011145213.65082-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iIwHF-0065VZ-Q0
Subject: [Openipmi-developer] [PATCH v1] ipmi: use %*ph to print small buffer
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
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Andy Shevchenko <andy.shevchenko@gmail.com>

Use %*ph format to print small buffer as hex string.

The change is safe since the specifier can handle up to 64 bytes and taking
into account the buffer size of 100 bytes on stack the function has never been
used to dump more than 32 bytes. Note, this also avoids potential buffer
overflow if the length of the input buffer is bigger.

Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 2aab80e19ae0..d0cefd95fa57 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -48,14 +48,7 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 static void ipmi_debug_msg(const char *title, unsigned char *data,
 			   unsigned int len)
 {
-	int i, pos;
-	char buf[100];
-
-	pos = snprintf(buf, sizeof(buf), "%s: ", title);
-	for (i = 0; i < len; i++)
-		pos += snprintf(buf + pos, sizeof(buf) - pos,
-				" %2.2x", data[i]);
-	pr_debug("%s\n", buf);
+	pr_debug("%s: %*ph\n", title, len, buf);
 }
 #else
 static void ipmi_debug_msg(const char *title, unsigned char *data,
-- 
2.23.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
