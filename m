Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CEF286724
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEBx-0007yV-HQ; Wed, 07 Oct 2020 18:29:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tian.xianting@h3c.com>) id 1kI5Ln-0002vi-OQ
 for openipmi-developer@lists.sourceforge.net; Tue, 15 Sep 2020 07:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TcKMaEpF6s0KQ8aITnf2y1Tary3WHewPQNgFxIS19jA=; b=DJPqkyWd7m27fgb2fW3D1wLmG3
 3xARl5Oi7OPX5LvSQHC4E/y+WUVnFh+3vcdKXR6HDfNdeTzJWdb8d1Gj7o4cnFVUjKJPWFjYTLTXU
 IBWFC/M3Eoqda0kRfQElZ/6v/0gQRvJ75LgBXUJM4zhZ0jnhwagG5mEENcq+nrBzvmHE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TcKMaEpF6s0KQ8aITnf2y1Tary3WHewPQNgFxIS19jA=; b=m
 UhYk5Az12ma96WTnZY1iJpoVAWglNjgFGnQKHdQ8HQVvE2laBvGdOIdBaM1jEfrjOebLvpWmsdXp4
 4XJ1Z/tnG+dT8KPG+sKfs9cUEnyk4XZxSs/fPJdMokMp9dvw8V5YjNKmC1UTh3G8yicnfta4h41dd
 5NUGRa3OJ+1utvyQ=;
Received: from smtp.h3c.com ([60.191.123.56] helo=h3cspam01-ex.h3c.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kI5Le-009afc-3E
 for openipmi-developer@lists.sourceforge.net; Tue, 15 Sep 2020 07:26:03 +0000
Received: from DAG2EX03-BASE.srv.huawei-3com.com ([10.8.0.66])
 by h3cspam01-ex.h3c.com with ESMTPS id 08F7P7VZ060077
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 15 Sep 2020 15:25:07 +0800 (GMT-8)
 (envelope-from tian.xianting@h3c.com)
Received: from localhost.localdomain (10.99.212.201) by
 DAG2EX03-BASE.srv.huawei-3com.com (10.8.0.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Sep 2020 15:25:10 +0800
From: Xianting Tian <tian.xianting@h3c.com>
To: <minyard@acm.org>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>
Date: Tue, 15 Sep 2020 15:18:17 +0800
Message-ID: <20200915071817.4484-1-tian.xianting@h3c.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.99.212.201]
X-ClientProxiedBy: BJSMTP02-EX.srv.huawei-3com.com (10.63.20.133) To
 DAG2EX03-BASE.srv.huawei-3com.com (10.8.0.66)
X-DNSRBL: 
X-MAIL: h3cspam01-ex.h3c.com 08F7P7VZ060077
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kI5Le-009afc-3E
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:26 +0000
Subject: [Openipmi-developer] [PATCH] [v3] ipmi: retry to get device id when
 error
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
Cc: Xianting Tian <tian.xianting@h3c.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

We can't get bmc's device id with low probability when loading ipmi driver,
it caused bmc device register failed. When this issue happened, we got
below kernel prints:
	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: IPMI message handler: device id demangle failed: -22
	[Wed Sep  9 19:52:03 2020] IPMI BT: using default values
	[Wed Sep  9 19:52:03 2020] IPMI BT: req2rsp=5 secs retries=2
	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: Unable to get the device id: -5
	[Wed Sep  9 19:52:04 2020] ipmi_si IPI0001:00: Unable to register device: error -5

When this issue happened, we want to manually unload the driver and try to
load it again, but it can't be unloaded by 'rmmod' as it is already 'in use'.

We add below 'printk' in handle_one_recv_msg(), when this issue happened,
the msg we received is "Recv: 1c 01 d5", which means the data_len is 1,
data[0] is 0xd5(completion code), which means "bmc cannot execute command.
Command, or request parameter(s), not supported in present state".
	Debug code:
	static int handle_one_recv_msg(struct ipmi_smi *intf,
                               struct ipmi_smi_msg *msg) {
        	printk("Recv: %*ph\n", msg->rsp_size, msg->rsp);
		... ...
	}
Then in ipmi_demangle_device_id(), it returned '-EINVAL' as 'data_len < 7'
and 'data[0] != 0'.

We used this patch to retry to get device id when error happen, we
reproduced this issue again and the retry succeed on the first retry, we
finally got the correct msg and then all is ok:
Recv: 1c 01 00 01 81 05 84 02 af db 07 00 01 00 b9 00 10 00

So use retry machanism in this patch to give bmc more opportunity to
correctly response kernel when we received specific completion codes.

Signed-off-by: Xianting Tian <tian.xianting@h3c.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 29 +++++++++++++++++++++++++----
 include/uapi/linux/ipmi_msgdefs.h   |  2 ++
 2 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 737c0b6b2..b9685093e 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -34,6 +34,7 @@
 #include <linux/uuid.h>
 #include <linux/nospec.h>
 #include <linux/vmalloc.h>
+#include <linux/delay.h>
 
 #define IPMI_DRIVER_VERSION "39.2"
 
@@ -60,6 +61,9 @@ enum ipmi_panic_event_op {
 #else
 #define IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_NONE
 #endif
+
+#define GET_DEVICE_ID_MAX_RETRY	5
+
 static enum ipmi_panic_event_op ipmi_send_panic_event = IPMI_PANIC_DEFAULT;
 
 static int panic_op_write_handler(const char *val,
@@ -317,6 +321,7 @@ struct bmc_device {
 	int                    dyn_guid_set;
 	struct kref	       usecount;
 	struct work_struct     remove_work;
+	char		       cc; /* completion code */
 };
 #define to_bmc_device(x) container_of((x), struct bmc_device, pdev.dev)
 
@@ -2381,6 +2386,8 @@ static void bmc_device_id_handler(struct ipmi_smi *intf,
 			msg->msg.data, msg->msg.data_len, &intf->bmc->fetch_id);
 	if (rv) {
 		dev_warn(intf->si_dev, "device id demangle failed: %d\n", rv);
+		/* record completion code when error */
+		intf->bmc->cc = msg->msg.data[0];
 		intf->bmc->dyn_id_set = 0;
 	} else {
 		/*
@@ -2426,19 +2433,34 @@ send_get_device_id_cmd(struct ipmi_smi *intf)
 static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
 {
 	int rv;
-
-	bmc->dyn_id_set = 2;
+	unsigned int retry_count = 0;
 
 	intf->null_user_handler = bmc_device_id_handler;
 
+retry:
+	bmc->cc = 0;
+	bmc->dyn_id_set = 2;
+
 	rv = send_get_device_id_cmd(intf);
 	if (rv)
 		return rv;
 
 	wait_event(intf->waitq, bmc->dyn_id_set != 2);
 
-	if (!bmc->dyn_id_set)
+	if (!bmc->dyn_id_set) {
+		if ((bmc->cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
+		     || bmc->cc ==  IPMI_DEVICE_IN_INIT_ERR
+		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR)
+		     && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
+			msleep(500);
+			dev_warn(intf->si_dev,
+				"retry to get bmc device id as completion code 0x%x\n",
+				bmc->cc);
+			goto retry;
+		}
+
 		rv = -EIO; /* Something went wrong in the fetch. */
+	}
 
 	/* dyn_id_set makes the id data available. */
 	smp_rmb();
@@ -3245,7 +3267,6 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 		/* It's the one we want */
 		if (msg->msg.data[0] != 0) {
 			/* Got an error from the channel, just go on. */
-
 			if (msg->msg.data[0] == IPMI_INVALID_COMMAND_ERR) {
 				/*
 				 * If the MC does not support this
diff --git a/include/uapi/linux/ipmi_msgdefs.h b/include/uapi/linux/ipmi_msgdefs.h
index c2b23a9fd..0934af3b8 100644
--- a/include/uapi/linux/ipmi_msgdefs.h
+++ b/include/uapi/linux/ipmi_msgdefs.h
@@ -69,6 +69,8 @@
 #define IPMI_ERR_MSG_TRUNCATED		0xc6
 #define IPMI_REQ_LEN_INVALID_ERR	0xc7
 #define IPMI_REQ_LEN_EXCEEDED_ERR	0xc8
+#define IPMI_DEVICE_IN_FW_UPDATE_ERR	0xd1
+#define IPMI_DEVICE_IN_INIT_ERR		0xd2
 #define IPMI_NOT_IN_MY_STATE_ERR	0xd5	/* IPMI 2.0 */
 #define IPMI_LOST_ARBITRATION_ERR	0x81
 #define IPMI_BUS_ERR			0x82
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
