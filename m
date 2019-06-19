Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D171D4B946
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jun 2019 15:04:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hdaG5-0007e3-Mp; Wed, 19 Jun 2019 13:04:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1hdaG4-0007du-2d
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jun 2019 13:04:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jQtqbHsz06BdyG3pmSEUTFE4dIWIKozuQMr1ictgMvk=; b=cnz1oGmz7jdjmYtg87H2UeS7Vf
 S96xfZ8XkHd0RT1nBuL2E0RSQv8HdIZCk4UifSje6OZCe8+V6guq16j9R3ZUJC7grD+nIH44Xrm2O
 Dw1ZxAxSrCs+ORzzd6S+r1ZaVsE9YwZQZFEfEXJKIIfHv2YHj7BI8fxjYPGUF5xWfGa4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jQtqbHsz06BdyG3pmSEUTFE4dIWIKozuQMr1ictgMvk=; b=P
 upYnc4ezzOqOzkN4Z2QNqfeSz+DJGVJUfdsoMy3Yo9mBERPpkk3iGxPmXKmpRPe7KAOhpM7KrFgaA
 Z+m2JCxOD0tZJab5QfjaBQFNqhHpdpFbsWsft5dxtBWr24jkp+nwDln6wNcYNdFi/WNYnNNepE+p3
 WxfnkwAK/fjHKUKY=;
Received: from mout.kundenserver.de ([212.227.126.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hdaG1-0057px-Th
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jun 2019 13:04:12 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mnq0I-1iNKvN22aA-00pLEE; Wed, 19 Jun 2019 14:50:47 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 19 Jun 2019 14:50:34 +0200
Message-Id: <20190619125045.918700-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:U/wB7UGi/dDxj5A2YvCRhhrBeJdf03T+zz3oLyZzEkzwOOPJNyr
 0v/6xQZAkHibPImBjjuHoTDeZpFulHUsqJiQgOL4MNe8qSODthws2+ofq7rB+lm8sDB0PfS
 4R5YdlujOpraLS4FBTREtZXKDs4DK03DJzQbiJXVz5Ufvxby2SJinlA7bdY7NGSvS2MSxmZ
 5fnZOHbf/m9HrscTRLiHA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9tF1bk3P54A=:BHuK8dxX9Xj4AX9CeCrv/R
 uUvgAN+sxDd5wQqw79hIwlW6QbAOHCTMCYCfhKdOTrRW9ET4+EDpEvHQNqyO75pYIft8eH8tZ
 r3OYEBPNj6u5njMw8lnZbzfA0p0ieNN+E3MaoHTWRss1O1iqSgjt+vMoYNcriYvJZ2w1S81y0
 umoI3Lwp9XeRJtgKkX3B7nrFM8a5X8t6HVVpoFO+afT608Qd/PbcWlJ9FtSHH73sLRjDRW4/r
 8TgYK1GU+eI6tCL3Jr8HBjkNj7WSD8HORv7d8Rnhnr/vWM0i85lWQP6fMQnw4HQ0E9k6thxOb
 aRajU8dkaHbLdKQTwfH+5L1T7zUAz85H2ioDiPqQttPobIUOKPk0TY6v7hFriFv5PVmcYBIX+
 MRMTZ35oaRfyZNbOWfH6yFIwTU4Xwg4etet6leXHE2U/FKmbBYBfxKNJ4MzS6otJfG1+ZRTka
 DM3Wc3hGxdW91U8SpPh2Qbhkfyms4C81HAKyY7fKpMetvgkLhnylAfLHH4laTQW8/fahvxWWg
 FPfJ83ogJdv6heuMmMJcq0oKIM5jPgVqpSp/C/Vc77lhNkv5gUpFr/TrRLzlaEWbzcwrO6EnK
 WgArs5e3joArooGZVbpQmOM5EN1CLskFYW3SITvOY7BY4BtfsH5J9A3MdYlQGdGXtJKF2q7BM
 4J3wlF5SHWmrFP6QGD2pNxyhnxiS/c7rDUaec5vl9cpO+zxeBSlkZBdh5SUnsxLTAdjAj7Fv8
 vrxo9GTb8tjRvijZE7tmlgWoYLe3ymG4E4hI0A==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.134 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hdaG1-0057px-Th
Subject: [Openipmi-developer] [PATCH] ipmi: ipmb: don't allocate i2c_client
 on stack
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
Cc: Corey Minyard <cminyard@mvista.com>, Arnd Bergmann <arnd@arndb.de>,
 vadimp@mellanox.com, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The i2c_client structure can be fairly large, which leads to
a warning about possible kernel stack overflow in some
configurations:

drivers/char/ipmi/ipmb_dev_int.c:115:16: error: stack frame size of 1032 bytes in function 'ipmb_write' [-Werror,-Wframe-larger-than=]

There is no real reason to even declare an i2c_client, as we can simply
call i2c_smbus_xfer() directly instead of the i2c_smbus_write_block_data()
wrapper.

Convert the ipmb_write() to use an open-coded i2c_smbus_write_block_data()
here, without changing the behavior.

It seems that there is another problem with this implementation;
when user space passes a length of more than I2C_SMBUS_BLOCK_MAX
bytes, all the rest is silently ignored. This should probably be
addressed in a separate patch, but I don't know what the intended
behavior is here.

Fixes: 51bd6f291583 ("Add support for IPMB driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/char/ipmi/ipmb_dev_int.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 2895abf72e61..c9724f6cf32d 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -117,7 +117,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 {
 	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
 	u8 rq_sa, netf_rq_lun, msg_len;
-	struct i2c_client rq_client;
+	union i2c_smbus_data data;
 	u8 msg[MAX_MSG_LEN];
 	ssize_t ret;
 
@@ -138,17 +138,17 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 
 	/*
 	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
-	 * i2c_smbus_write_block_data_local
+	 * i2c_smbus_xfer
 	 */
 	msg_len = msg[IPMB_MSG_LEN_IDX] - SMBUS_MSG_HEADER_LENGTH;
-
-	strcpy(rq_client.name, "ipmb_requester");
-	rq_client.adapter = ipmb_dev->client->adapter;
-	rq_client.flags = ipmb_dev->client->flags;
-	rq_client.addr = rq_sa;
-
-	ret = i2c_smbus_write_block_data(&rq_client, netf_rq_lun, msg_len,
-					msg + SMBUS_MSG_IDX_OFFSET);
+	if (msg_len > I2C_SMBUS_BLOCK_MAX)
+		msg_len = I2C_SMBUS_BLOCK_MAX;
+
+	data.block[0] = msg_len;
+	memcpy(&data.block[1], msg + SMBUS_MSG_IDX_OFFSET, msg_len);
+	ret = i2c_smbus_xfer(ipmb_dev->client->adapter, rq_sa, ipmb_dev->client->flags,
+			     I2C_SMBUS_WRITE, netf_rq_lun,
+			     I2C_SMBUS_BLOCK_DATA, &data);
 
 	return ret ? : count;
 }
-- 
2.20.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
