Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB1013ACC1
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Jan 2020 15:57:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1irNd7-0006cj-0S; Tue, 14 Jan 2020 14:57:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <colin.king@canonical.com>) id 1irNd5-0006cU-He
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Jan 2020 14:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VCmZAO57W4q9v5hPpJzZGaek6H9LegwxALx6OzwzeUs=; b=aHJX3VP4NZ9zUkgexBKCapz2h5
 S6q/RDMAA0nom9a7ta5jXHMZC3L1Kjp4zwNCRaNXU0q8BIDLJvGRUdf6wEVdo3vK8mJNDiLWtDp+k
 cLY1Hidb6gVfjtXBU/I6IQBrayfA9O5Elp4P+RfHnN7VYyrvVQ4QuV6dO7w3LtvndRJU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VCmZAO57W4q9v5hPpJzZGaek6H9LegwxALx6OzwzeUs=; b=k
 k1lkodgmHpqJnWyUJIc3Bxam3C05/FpdnbHFZWQn4f4N0B/hngQFIBYb1aEz0HNpEJYwOXYOZi9Lz
 N0R7ln9PITbsG1H0AVBzbGvSqu4x/1A47D78pSqgL4GEjh4vWPSnCR2sS+QgQvLn/bD/FdHjcaZ/i
 66hZJtrVO2U0mXZg=;
Received: from youngberry.canonical.com ([91.189.89.112])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA:128) (Exim 4.92.2) id 1irNd2-00383O-7U
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Jan 2020 14:57:15 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1irNMt-0006dY-Tg; Tue, 14 Jan 2020 14:40:32 +0000
From: Colin King <colin.king@canonical.com>
To: Corey Minyard <cminyard@mvista.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, vadimp@mellanox.com,
 Asmaa Mnebhi <Asmaa@mellanox.com>, openipmi-developer@lists.sourceforge.net
Date: Tue, 14 Jan 2020 14:40:31 +0000
Message-Id: <20200114144031.358003-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1irNd2-00383O-7U
Subject: [Openipmi-developer] [PATCH][next] drivers: ipmi: fix off-by-one
 bounds check that leads to a out-of-bounds write
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Colin Ian King <colin.king@canonical.com>

The end of buffer check is off-by-one since the check is against
an index that is pre-incremented before a store to buf[]. Fix this
adjusting the bounds check appropriately.

Addresses-Coverity: ("Out-of-bounds write")
Fixes: 51bd6f291583 ("Add support for IPMB driver")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/char/ipmi/ipmb_dev_int.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 9fdae83e59e0..382b28f1cf2f 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -279,7 +279,7 @@ static int ipmb_slave_cb(struct i2c_client *client,
 		break;
 
 	case I2C_SLAVE_WRITE_RECEIVED:
-		if (ipmb_dev->msg_idx >= sizeof(struct ipmb_msg))
+		if (ipmb_dev->msg_idx >= sizeof(struct ipmb_msg) - 1)
 			break;
 
 		buf[++ipmb_dev->msg_idx] = *val;
-- 
2.24.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
