Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A814307215
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Jan 2021 09:56:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l536G-0003Nx-P0; Thu, 28 Jan 2021 08:56:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wsa+renesas@sang-engineering.com>)
 id 1l536E-0003Nk-Pd
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Jan 2021 08:56:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LSxtyVcpS/+iXJ/x4mVJXHTPBGa6sJg/WNFcZ93sUzk=; b=Wyl8cOuJuGH87YhJanfjTJGuO/
 fJgeQ26sONcv+CcwhEmp4dcnG1J18RlR6+PwLIg9zxTGs7H2WPqgtFzoruMP6ihJo8iMTHLzUT+6A
 D4YXIAdPS8tgEPU6OkmNwSkdl7t9k8qd9UptRiwdKnOkDaQksbD6bkBvesn1f1ZATxAI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LSxtyVcpS/+iXJ/x4mVJXHTPBGa6sJg/WNFcZ93sUzk=; b=C
 52aTLjP0LDOTTzzon5GBEAOuIw9XB+O3kHg8m5MjotYbGIOi2Xl4/A0xeYhsm6VxPtF2/k+On7mpw
 SoCOWEOlZOed7fyfppM3dnpIVfx/yVo7QqSUpDp5MBY1DQ+0nBiY/KgZ3JTM4opKDw49y/Er5QeFB
 4vuViSFzlOD3FPjw=;
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l535p-00013X-R9
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Jan 2021 08:56:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=k1; bh=RLPQGrUUCQdzVFt7dOPgwd8kwjq
 2az7yIbIuSrpxtls=; b=rO80uRpH+00Ic89PO/1NRjrZxX6Uv0tJQsvTlli2uG9
 gS4/kocQ4fzm3/QqovjW5jzYrohy0gefUpbHFb1TGhF+nNppXSel04iUx/OLuZZI
 +ECrGTF7myc35ufAcZg2IMG8SWdLfPK0kvurAm+HNHx/GGpDbAQTvpFV9e+SMqlM
 =
Received: (qmail 160739 invoked from network); 28 Jan 2021 09:55:48 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 28 Jan 2021 09:55:48 +0100
X-UD-Smtp-Session: l3s3148p1@kGXJDfK5ipMgAwDPXyX1AEdA8SGgn5QT
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Date: Thu, 28 Jan 2021 09:55:43 +0100
Message-Id: <20210128085544.7609-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: nvidia.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.117.254.33 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l535p-00013X-R9
Subject: [Openipmi-developer] [PATCH RESEND] ipmi: remove open coded version
 of SMBus block write
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
Cc: Corey Minyard <cminyard@mvista.com>, Asmaa Mnebhi <asmaa@nvidia.com>,
 Corey Minyard <minyard@acm.org>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The block-write function of the core was not used because there was no
client-struct to use. However, in this case it seems apropriate to use a
temporary client struct. Because we are answering a request we recieved
when being a client ourselves. So, convert the code to use a temporary
client and use the block-write function of the I2C core.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Asmaa Mnebhi <asmaa@nvidia.com>
Acked-by: Corey Minyard <cminyard@mvista.com>
---

No change since V1, Only added tags given in private communication.

 drivers/char/ipmi/ipmb_dev_int.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 382b28f1cf2f..49b8f22fdcf0 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -137,7 +137,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 {
 	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
 	u8 rq_sa, netf_rq_lun, msg_len;
-	union i2c_smbus_data data;
+	struct i2c_client *temp_client;
 	u8 msg[MAX_MSG_LEN];
 	ssize_t ret;
 
@@ -160,21 +160,21 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 	}
 
 	/*
-	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
-	 * i2c_smbus_xfer
+	 * subtract rq_sa and netf_rq_lun from the length of the msg. Fill the
+	 * temporary client. Note that its use is an exception for IPMI.
 	 */
 	msg_len = msg[IPMB_MSG_LEN_IDX] - SMBUS_MSG_HEADER_LENGTH;
-	if (msg_len > I2C_SMBUS_BLOCK_MAX)
-		msg_len = I2C_SMBUS_BLOCK_MAX;
+	temp_client = kmemdup(ipmb_dev->client, sizeof(*temp_client), GFP_KERNEL);
+	if (!temp_client)
+		return -ENOMEM;
+
+	temp_client->addr = rq_sa;
 
-	data.block[0] = msg_len;
-	memcpy(&data.block[1], msg + SMBUS_MSG_IDX_OFFSET, msg_len);
-	ret = i2c_smbus_xfer(ipmb_dev->client->adapter, rq_sa,
-			     ipmb_dev->client->flags,
-			     I2C_SMBUS_WRITE, netf_rq_lun,
-			     I2C_SMBUS_BLOCK_DATA, &data);
+	ret = i2c_smbus_write_block_data(temp_client, netf_rq_lun, msg_len,
+					 msg + SMBUS_MSG_IDX_OFFSET);
+	kfree(temp_client);
 
-	return ret ? : count;
+	return ret < 0 ? ret : count;
 }
 
 static __poll_t ipmb_poll(struct file *file, poll_table *wait)
-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
