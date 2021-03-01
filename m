Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2F9328262
	for <lists+openipmi-developer@lfdr.de>; Mon,  1 Mar 2021 16:24:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lGkPa-0003ri-Kd; Mon, 01 Mar 2021 15:24:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zhangliguang@linux.alibaba.com>) id 1lGjB4-0000Np-B7
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Mar 2021 14:05:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=18r7MG4WRoKvyjWY4baoHauS1+iYCjVBd2V1WyEN0VA=; b=itiRpojFXL6y2yd3P+hKmzywWU
 7v3AGlNzsqj3gUK9Hsfandf9YbW4pKYnHg650aQ/ILg8GV1NVPFUT07WoKORncOGDUMF29ZhLu7lL
 9dwoL3UxVn0c/iDTcBeiOFhSPtcPTk9DLN46mJNQNZN9zt8czCEm51ddEpBhgtCfW2Io=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=18r7MG4WRoKvyjWY4baoHauS1+iYCjVBd2V1WyEN0VA=; b=L
 9FuEzYWJAKyhQfJT6JPxQj0DTBVHArmSeKhollr2wtHGIFP4BHjFLRy+k3aCmmvinDicrT1P93xh+
 9ZBYfEAq6ePUq/SIHgqRRYbkuVzvNdcJByq9Juo/9/v0m7GCxD4F15QJMkWXye/3BGxKUB1sZWBs2
 gP0bt3sr1gWSjjCE=;
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lGjAy-0003hM-UX
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Mar 2021 14:05:38 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R161e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426;
 MF=zhangliguang@linux.alibaba.com; NM=1; PH=DS; RN=4; SR=0;
 TI=SMTPD_---0UPzIpAQ_1614607517; 
Received: from localhost(mailfrom:zhangliguang@linux.alibaba.com
 fp:SMTPD_---0UPzIpAQ_1614607517) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 01 Mar 2021 22:05:24 +0800
From: Liguang Zhang <zhangliguang@linux.alibaba.com>
To: Corey Minyard <minyard@acm.org>
Date: Mon,  1 Mar 2021 22:05:15 +0800
Message-Id: <20210301140515.18951-1-zhangliguang@linux.alibaba.com>
X-Mailer: git-send-email 2.19.1.6.gb485710b
MIME-Version: 1.0
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1lGjAy-0003hM-UX
X-Mailman-Approved-At: Mon, 01 Mar 2021 15:24:38 +0000
Subject: [Openipmi-developer] [PATCH] ipmi:ssif: make ssif_i2c_send() void
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
Cc: Liguang Zhang <zhangliguang@linux.alibaba.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This function actually needs no return value. So remove the unneeded
check and make it void.

Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 81 +++++++++--------------------------
 1 file changed, 20 insertions(+), 61 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 0416b9c9d410..20d5af92966d 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -510,7 +510,7 @@ static int ipmi_ssif_thread(void *data)
 	return 0;
 }
 
-static int ssif_i2c_send(struct ssif_info *ssif_info,
+static void ssif_i2c_send(struct ssif_info *ssif_info,
 			ssif_i2c_done handler,
 			int read_write, int command,
 			unsigned char *data, unsigned int size)
@@ -522,7 +522,6 @@ static int ssif_i2c_send(struct ssif_info *ssif_info,
 	ssif_info->i2c_data = data;
 	ssif_info->i2c_size = size;
 	complete(&ssif_info->wake_thread);
-	return 0;
 }
 
 
@@ -531,22 +530,12 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 
 static void start_get(struct ssif_info *ssif_info)
 {
-	int rv;
-
 	ssif_info->rtc_us_timer = 0;
 	ssif_info->multi_pos = 0;
 
-	rv = ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
-			  SSIF_IPMI_RESPONSE,
-			  ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
-	if (rv < 0) {
-		/* request failed, just return the error. */
-		if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
-			dev_dbg(&ssif_info->client->dev,
-				"Error from i2c_non_blocking_op(5)\n");
-
-		msg_done_handler(ssif_info, -EIO, NULL, 0);
-	}
+	ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
+		  SSIF_IPMI_RESPONSE,
+		  ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
 }
 
 static void retry_timeout(struct timer_list *t)
@@ -620,7 +609,6 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 {
 	struct ipmi_smi_msg *msg;
 	unsigned long oflags, *flags;
-	int rv;
 
 	/*
 	 * We are single-threaded here, so no need for a lock until we
@@ -666,17 +654,10 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 		ssif_info->multi_len = len;
 		ssif_info->multi_pos = 1;
 
-		rv = ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
-				  SSIF_IPMI_MULTI_PART_RESPONSE_MIDDLE,
-				  ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
-		if (rv < 0) {
-			if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
-				dev_dbg(&ssif_info->client->dev,
-					"Error from i2c_non_blocking_op(1)\n");
-
-			result = -EIO;
-		} else
-			return;
+		ssif_i2c_send(ssif_info, msg_done_handler, I2C_SMBUS_READ,
+			 SSIF_IPMI_MULTI_PART_RESPONSE_MIDDLE,
+			 ssif_info->recv, I2C_SMBUS_BLOCK_DATA);
+		return;
 	} else if (ssif_info->multi_pos) {
 		/* Middle of multi-part read.  Start the next transaction. */
 		int i;
@@ -738,19 +719,12 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 
 			ssif_info->multi_pos++;
 
-			rv = ssif_i2c_send(ssif_info, msg_done_handler,
-					   I2C_SMBUS_READ,
-					   SSIF_IPMI_MULTI_PART_RESPONSE_MIDDLE,
-					   ssif_info->recv,
-					   I2C_SMBUS_BLOCK_DATA);
-			if (rv < 0) {
-				if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
-					dev_dbg(&ssif_info->client->dev,
-						"Error from ssif_i2c_send\n");
-
-				result = -EIO;
-			} else
-				return;
+			ssif_i2c_send(ssif_info, msg_done_handler,
+				  I2C_SMBUS_READ,
+				  SSIF_IPMI_MULTI_PART_RESPONSE_MIDDLE,
+				  ssif_info->recv,
+				  I2C_SMBUS_BLOCK_DATA);
+			return;
 		}
 	}
 
@@ -908,8 +882,6 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 static void msg_written_handler(struct ssif_info *ssif_info, int result,
 				unsigned char *data, unsigned int len)
 {
-	int rv;
-
 	/* We are single-threaded here, so no need for a lock. */
 	if (result < 0) {
 		ssif_info->retries_left--;
@@ -972,18 +944,9 @@ static void msg_written_handler(struct ssif_info *ssif_info, int result,
 			ssif_info->multi_data = NULL;
 		}
 
-		rv = ssif_i2c_send(ssif_info, msg_written_handler,
-				   I2C_SMBUS_WRITE, cmd,
-				   data_to_send, I2C_SMBUS_BLOCK_DATA);
-		if (rv < 0) {
-			/* request failed, just return the error. */
-			ssif_inc_stat(ssif_info, send_errors);
-
-			if (ssif_info->ssif_debug & SSIF_DEBUG_MSG)
-				dev_dbg(&ssif_info->client->dev,
-					"Error from i2c_non_blocking_op(3)\n");
-			msg_done_handler(ssif_info, -EIO, NULL, 0);
-		}
+		ssif_i2c_send(ssif_info, msg_written_handler,
+			  I2C_SMBUS_WRITE, cmd,
+			  data_to_send, I2C_SMBUS_BLOCK_DATA);
 	} else {
 		/* Ready to request the result. */
 		unsigned long oflags, *flags;
@@ -1012,7 +975,6 @@ static void msg_written_handler(struct ssif_info *ssif_info, int result,
 
 static int start_resend(struct ssif_info *ssif_info)
 {
-	int rv;
 	int command;
 
 	ssif_info->got_alert = false;
@@ -1034,12 +996,9 @@ static int start_resend(struct ssif_info *ssif_info)
 		ssif_info->data[0] = ssif_info->data_len;
 	}
 
-	rv = ssif_i2c_send(ssif_info, msg_written_handler, I2C_SMBUS_WRITE,
-			  command, ssif_info->data, I2C_SMBUS_BLOCK_DATA);
-	if (rv && (ssif_info->ssif_debug & SSIF_DEBUG_MSG))
-		dev_dbg(&ssif_info->client->dev,
-			"Error from i2c_non_blocking_op(4)\n");
-	return rv;
+	ssif_i2c_send(ssif_info, msg_written_handler, I2C_SMBUS_WRITE,
+		   command, ssif_info->data, I2C_SMBUS_BLOCK_DATA);
+	return 0;
 }
 
 static int start_send(struct ssif_info *ssif_info,
-- 
2.19.1.6.gb485710b



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
