Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DDC2FA255
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 Jan 2021 15:00:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l1V4c-0001B3-Lb; Mon, 18 Jan 2021 14:00:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wsa+renesas@sang-engineering.com>)
 id 1kzN9m-0001R3-PB
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Jan 2021 17:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fI/A7SnKxIEhVAtQ5sEyznNfSvza7GdCu11yLHGEj90=; b=SYaJVGLHN2eBhMWZ12IFODl5KD
 M6U4Af/859DkFV55kAnR2iROSNdxaj+KZ47fDo331bv/OsB6QkE/H88I7gY4CCuo4k9+ekqSiLx8H
 Hv8UKyDwFnAh230W3FxlIL6idWSg3V+DR+rx0CCOAltfkGE26aO7Wf7wr8vtLN5OymBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fI/A7SnKxIEhVAtQ5sEyznNfSvza7GdCu11yLHGEj90=; b=Qg4j7i60t2ajW/5azGLN2IP/A8
 jTl6pf/JSjYCXxCJ1qPbsar74V8pHJmyFPqZwW6vDle7/ZLVCt1pLk7rbAbStcD7Psv6X4ZOBCqxX
 LB4jRjEvXdrpft+A1RlE7qLOIgfTxPIOtMdKuSD+MBpf7NuRoFaVit1Md2733mZSPFrU=;
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kzN9j-004lAK-6u
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Jan 2021 17:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=k1; bh=CsQikiLEh7z44L
 KHTLDrKDuRYsf5V+chOq0ijqTAgJ4=; b=hJit5hJnfmEMXn9OMj6NsKv6CCVLA3
 J5lviJslZ9durafVrq+ZzkpLXBXZlL0/WCUIfL49xOt/7S/YMQET3OxwIeAvUhFb
 g4tbnbvw0Hbe37cxsZKKJ9oWATtSpDyJkgJlF0huLXUfZHzO06ZA5E6nP3xmpLQ1
 mg2E1/KJ9w40o=
Received: (qmail 2812505 invoked from network); 12 Jan 2021 17:41:36 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 12 Jan 2021 17:41:36 +0100
X-UD-Smtp-Session: l3s3148p1@GLUwsra4TNEgAwDPXwxzAHrEwO71dOp2
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Date: Tue, 12 Jan 2021 17:41:29 +0100
Message-Id: <20210112164130.47895-4-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210112164130.47895-1-wsa+renesas@sang-engineering.com>
References: <20210112164130.47895-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [194.117.254.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.117.254.33 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sang-engineering.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1kzN9j-004lAK-6u
X-Mailman-Approved-At: Mon, 18 Jan 2021 14:00:00 +0000
Subject: [Openipmi-developer] [PATCH RFC 3/3] ipmi: remove open coded
 version of SMBus block write
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
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
 drivers/char/ipmi/ipmb_dev_int.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 382b28f1cf2f..10d89886e5f3 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -137,7 +137,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 {
 	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
 	u8 rq_sa, netf_rq_lun, msg_len;
-	union i2c_smbus_data data;
+	struct i2c_client temp_client;
 	u8 msg[MAX_MSG_LEN];
 	ssize_t ret;
 
@@ -160,21 +160,16 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
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
+	memcpy(&temp_client, ipmb_dev->client, sizeof(temp_client));
+	temp_client.addr = rq_sa;
 
-	data.block[0] = msg_len;
-	memcpy(&data.block[1], msg + SMBUS_MSG_IDX_OFFSET, msg_len);
-	ret = i2c_smbus_xfer(ipmb_dev->client->adapter, rq_sa,
-			     ipmb_dev->client->flags,
-			     I2C_SMBUS_WRITE, netf_rq_lun,
-			     I2C_SMBUS_BLOCK_DATA, &data);
-
-	return ret ? : count;
+	ret = i2c_smbus_write_block_data(&temp_client, netf_rq_lun, msg_len,
+					 msg + SMBUS_MSG_IDX_OFFSET);
+	return ret < 0 ? ret : count;
 }
 
 static __poll_t ipmb_poll(struct file *file, poll_table *wait)
-- 
2.29.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
