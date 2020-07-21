Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6E82278F4
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Jul 2020 08:42:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jxlyp-0003iG-Gc; Tue, 21 Jul 2020 06:42:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangxiongfeng2@huawei.com>) id 1jxlyn-0003hc-Bl
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 06:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9UleHAtlUT+xg/jYp6gjWsy1ATx7Y/MSWpB70tYWKjU=; b=bZ/MvqX4dQyumeR2ckTl7eQUZg
 IbxyBxbwfOfw4/dc40lqTDYcL20M0ad4NEY4+PU9ZQA0Nzp5aIqFNilhsDNfI6JMQPfdk4H2AjLP9
 6oVN4QTIbPaVnqE+XxcSwEuNAWfdk2vwhhUq2J0DziBhOp7BV7QSoAsZrjczideOz1/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9UleHAtlUT+xg/jYp6gjWsy1ATx7Y/MSWpB70tYWKjU=; b=C
 blHkKgqO9pt6N8oND07zbFX+rwpl37icshgx4y66KH2znESzosZmrx+OAtXfLhGaZh61fdfnj4BMn
 TRG3TM4JrXOSWXh22AdWlZvWQKQqPuJULsuWlsTHMX7Nl6adMWuYrzOe5fA24FzwC0iE6HofAMTfW
 ThPyRozQm54rdhac=;
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxlyk-002b7Q-Vx
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 06:42:21 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2A8488869F8712D5EE36;
 Tue, 21 Jul 2020 14:41:55 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.487.0; Tue, 21 Jul 2020 14:41:46 +0800
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>
Date: Tue, 21 Jul 2020 14:35:09 +0800
Message-ID: <1595313309-43881-1-git-send-email-wangxiongfeng2@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxlyk-002b7Q-Vx
Subject: [Openipmi-developer] [PATCH v2] ipmi/watchdog: add missing newlines
 when printing parameters by sysfs
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
Cc: joe@perches.com, openipmi-developer@lists.sourceforge.net,
 wangxiongfeng2@huawei.com, linux-kernel@vger.kernel.org, guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

When I cat some ipmi_watchdog parameters by sysfs, it displays as
follows. It's better to add a newline for easy reading.

root@(none):/# cat /sys/module/ipmi_watchdog/parameters/action
resetroot@(none):/# cat /sys/module/ipmi_watchdog/parameters/preaction
pre_noneroot@(none):/# cat /sys/module/ipmi_watchdog/parameters/preop
preop_noneroot@(none):/#

Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 55986e1..f78156d 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -232,12 +232,17 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
 static int get_param_str(char *buffer, const struct kernel_param *kp)
 {
 	action_fn fn = (action_fn) kp->arg;
-	int       rv;
+	int rv, len;
 
 	rv = fn(NULL, buffer);
 	if (rv)
 		return rv;
-	return strlen(buffer);
+
+	len = strlen(buffer);
+	buffer[len++] = '\n';
+	buffer[len] = 0;
+
+	return len;
 }
 
 
-- 
1.7.12.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
