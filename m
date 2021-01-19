Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE2E2FB4FD
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Jan 2021 10:39:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l1nUJ-0007Pa-OD; Tue, 19 Jan 2021 09:39:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wsa+renesas@sang-engineering.com>)
 id 1l1nUH-0007PR-8l
 for openipmi-developer@lists.sourceforge.net; Tue, 19 Jan 2021 09:39:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nq0xeaZKtzIDYE3mdMA0/xnX/phdvpQAxmiHTeWyeHI=; b=GT89ukeOxzst5AK3SA4zKlKgjT
 ogoPBeFUJH5olnStLecp5gvLD/BODrSqySBclIOhYjzmT3BR7eh6EyO901dwiDMubFA8G02btFoEl
 DX2Rcm0W0ypFbqhdh8xzWSHVeZPnqYyHI6tDyEpAxVslmIfar46mXk0Q2KGSyifhczGc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nq0xeaZKtzIDYE3mdMA0/xnX/phdvpQAxmiHTeWyeHI=; b=Vmxp1bSt2OJqIv5D/fPgbdDSXP
 5uylqL/8B4x7LBqV/wIoSQCVHWurfNh3JVQO9uu9SpSplDb5fbhtAIFG+d/zbrsJyzgQe3PB4j8fM
 FPcZPXI6iNfO+4f2mASH2VLmDFpf+Kd2Rh1qt6bLg7ayUb0qYeRCTrvSOT4ikYk8We4Q=;
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1nU3-00EPFs-1l
 for openipmi-developer@lists.sourceforge.net; Tue, 19 Jan 2021 09:39:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=k1; bh=7oj9WQno7QEpA1
 XamLc4MgaH1m7rUqRR3GpKdU/K1M0=; b=lFqM8BxbfRkKtAIH+OAQCIBqJ/edPp
 JDKwf35ERefl3U+wvK83fIYZpnHZyz/s20k7uUNgt28icomNL6aOPYiQYsqwm1s1
 bohjfIVCxb3R+hPN86P5QcokI9CG8yqb8p3Gkza8tfz+tcAnnLyUJR7ZYjy1yftS
 viVYfXxUrMUNU=
Received: (qmail 1003573 invoked from network); 19 Jan 2021 10:39:21 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 19 Jan 2021 10:39:21 +0100
X-UD-Smtp-Session: l3s3148p1@Gm/3nD258tkgAwDPXyX1ACWcscxtZ2TX
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Date: Tue, 19 Jan 2021 10:39:10 +0100
Message-Id: <20210119093912.1838-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210119093912.1838-1-wsa+renesas@sang-engineering.com>
References: <20210119093912.1838-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [194.117.254.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.117.254.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1l1nU3-00EPFs-1l
Subject: [Openipmi-developer] [PATCH 3/3] ipmi: remove open coded version of
 SMBus block write
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
Cc: linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The block-write function of the core was not used because there was no
client-struct to use. However, in this case it seems apropriate to use a
temporary client struct. Because we are answering a request we recieved
when being a client ourselves. So, convert the code to use a temporary
client and use the block-write function of the I2C core.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Changes since RFC:
* don't use stack but kmemdup. No complaints from buildbots

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
2.29.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
