Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8610225BFE1
	for <lists+openipmi-developer@lfdr.de>; Thu,  3 Sep 2020 13:09:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kDn75-00077U-2Y; Thu, 03 Sep 2020 11:09:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangxiongfeng2@huawei.com>) id 1kDn72-00076w-2C
 for openipmi-developer@lists.sourceforge.net; Thu, 03 Sep 2020 11:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wlZGrP0o8abeQerYHP7Tkt4QTjr4IxsbDuSTg+uL3kE=; b=WXl+5vy/iRe4S3E2Bjral/fUH5
 HQY1c7jb7zuou+x9N5iGOey6EwT6H+DLglKgRPMXlwFKLtYkS//tEECNCxqyrv2pirTjiJqg+Jha9
 cX7oA+Uo2dKVlaF/eGXUwrXjrxFyo9J/We1V6EroRA+3FmFJLsI+K0ZBnLaCtILwZYpM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wlZGrP0o8abeQerYHP7Tkt4QTjr4IxsbDuSTg+uL3kE=; b=c
 MBw7dnWxTk2Qk2xNTBs/auFWvhPSo5tPQR8fFhgDKkh48GtSo+BL8HANTeESrl8C7UNvh46oku5pa
 8BAPGwPtdtivOZbw0pVhu9kGzCgd4pXo+6xNq4nO+506TSHdsOTrSu3EHN5DQNtvFUcbbnhKWQIin
 +iuWwVzo5zru0Xuc=;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kDn6v-00BJhS-8U
 for openipmi-developer@lists.sourceforge.net; Thu, 03 Sep 2020 11:09:04 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 41D9C69B637213C69AA1;
 Thu,  3 Sep 2020 19:08:41 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Thu, 3 Sep 2020 19:08:32 +0800
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>
Date: Thu, 3 Sep 2020 19:01:13 +0800
Message-ID: <1599130873-2402-1-git-send-email-wangxiongfeng2@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kDn6v-00BJhS-8U
Subject: [Openipmi-developer] [PATCH] ipmi: add a newline when printing
 parameter 'panic_op' by sysfs
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 wangxiongfeng2@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

When I cat ipmi_msghandler parameter 'panic_op' by sysfs, it displays as
follows. It's better to add a newline for easy reading.

root@(none):/# cat /sys/module/ipmi_msghandler/parameters/panic_op
noneroot@(none):/#

Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 737c0b6..6ebb549 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -89,19 +89,19 @@ static int panic_op_read_handler(char *buffer, const struct kernel_param *kp)
 {
 	switch (ipmi_send_panic_event) {
 	case IPMI_SEND_PANIC_EVENT_NONE:
-		strcpy(buffer, "none");
+		strcpy(buffer, "none\n");
 		break;
 
 	case IPMI_SEND_PANIC_EVENT:
-		strcpy(buffer, "event");
+		strcpy(buffer, "event\n");
 		break;
 
 	case IPMI_SEND_PANIC_EVENT_STRING:
-		strcpy(buffer, "string");
+		strcpy(buffer, "string\n");
 		break;
 
 	default:
-		strcpy(buffer, "???");
+		strcpy(buffer, "???\n");
 		break;
 	}
 
-- 
1.7.12.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
