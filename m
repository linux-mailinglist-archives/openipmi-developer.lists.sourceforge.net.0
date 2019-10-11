Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E93D44C3
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Oct 2019 17:50:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iIxBn-0004pW-Vx; Fri, 11 Oct 2019 15:50:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1iIxBn-0004pP-Gk
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 15:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jl9Pihm467B2Rm9kEafSA8OTSlWiOrhPHyuHqoeCGQQ=; b=Sy3fv7awn7F8oQqzo1psK8BFJY
 UZf6A4gZC5mMfIL+1PjWOSTYQ+xFVkRA4GM2lccgON6AC3t9JY1fmYaoxOGBGPuZz8HB9BH2qLPkn
 xVVonL05b/b5ucauuZRwfQnMiPjMdEsqvDycJIPpwcLySVw1ILMKJFI6P8d32h+fZcSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jl9Pihm467B2Rm9kEafSA8OTSlWiOrhPHyuHqoeCGQQ=; b=Z
 zUQh+uTcWIGR6BOINCDUj0Rq8fwhZBZSIzdfFoj9WnEvJkLjDBN8odIKNJYde9YEfpWK+Tq6KA2Mp
 TJnz91e8E4TVeOnLh9dSJD5Rpv6OGtmvLBTl7kB2ZGFh6lx+skbNGv0R6Jfhy64XzJ+4VG7y44q20
 qt2uBxXJJRDrlAhk=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iIxBl-0068MF-8b
 for openipmi-developer@lists.sourceforge.net; Fri, 11 Oct 2019 15:50:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 08:50:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="200820645"
Received: from black.fi.intel.com ([10.237.72.28])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Oct 2019 08:50:37 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id C4EB116A; Fri, 11 Oct 2019 18:50:36 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>
Date: Fri, 11 Oct 2019 18:50:36 +0300
Message-Id: <20191011155036.36748-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.23.0
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
X-Headers-End: 1iIxBl-0068MF-8b
Subject: [Openipmi-developer] [PATCH v2] ipmi: use %*ph to print small buffer
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

This completely eliminates ipmi_debug_msg() in favour of Dynamic Debug.

Signed-off-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
- eliminate ipmi_debug_msg() in favour of Dynamic Debug (Joe)
 drivers/char/ipmi/ipmi_msghandler.c | 27 ++++-----------------------
 1 file changed, 4 insertions(+), 23 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 2aab80e19ae0..1768b81aaf78 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -44,25 +44,6 @@ static void need_waiter(struct ipmi_smi *intf);
 static int handle_one_recv_msg(struct ipmi_smi *intf,
 			       struct ipmi_smi_msg *msg);
 
-#ifdef DEBUG
-static void ipmi_debug_msg(const char *title, unsigned char *data,
-			   unsigned int len)
-{
-	int i, pos;
-	char buf[100];
-
-	pos = snprintf(buf, sizeof(buf), "%s: ", title);
-	for (i = 0; i < len; i++)
-		pos += snprintf(buf + pos, sizeof(buf) - pos,
-				" %2.2x", data[i]);
-	pr_debug("%s\n", buf);
-}
-#else
-static void ipmi_debug_msg(const char *title, unsigned char *data,
-			   unsigned int len)
-{ }
-#endif
-
 static bool initialized;
 static bool drvregistered;
 
@@ -2267,7 +2248,7 @@ static int i_ipmi_request(struct ipmi_user     *user,
 		ipmi_free_smi_msg(smi_msg);
 		ipmi_free_recv_msg(recv_msg);
 	} else {
-		ipmi_debug_msg("Send", smi_msg->data, smi_msg->data_size);
+		pr_debug("Send: %*ph\n", smi_msg->data_size, smi_msg->data);
 
 		smi_send(intf, intf->handlers, smi_msg, priority);
 	}
@@ -3730,7 +3711,7 @@ static int handle_ipmb_get_msg_cmd(struct ipmi_smi *intf,
 		msg->data[10] = ipmb_checksum(&msg->data[6], 4);
 		msg->data_size = 11;
 
-		ipmi_debug_msg("Invalid command:", msg->data, msg->data_size);
+		pr_debug("Invalid command: %*ph\n", msg->data_size, msg->data);
 
 		rcu_read_lock();
 		if (!intf->in_shutdown) {
@@ -4217,7 +4198,7 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 	int requeue;
 	int chan;
 
-	ipmi_debug_msg("Recv:", msg->rsp, msg->rsp_size);
+	pr_debug("Recv: %*ph\n", msg->rsp_size, msg->rsp);
 
 	if ((msg->data_size >= 2)
 	    && (msg->data[0] == (IPMI_NETFN_APP_REQUEST << 2))
@@ -4576,7 +4557,7 @@ smi_from_recv_msg(struct ipmi_smi *intf, struct ipmi_recv_msg *recv_msg,
 	smi_msg->data_size = recv_msg->msg.data_len;
 	smi_msg->msgid = STORE_SEQ_IN_MSGID(seq, seqid);
 
-	ipmi_debug_msg("Resend: ", smi_msg->data, smi_msg->data_size);
+	pr_debug("Resend: %*ph\n", smi_msg->data_size, smi_msg->data);
 
 	return smi_msg;
 }
-- 
2.23.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
