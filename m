Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC6D421B3C
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 02:40:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXYVd-00020f-Q4; Tue, 05 Oct 2021 00:40:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mXYVb-00020O-BG
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h9g+l/mDLh9NLHLlkSv4yNv/wHKrQGIGYei9J8s/yAc=; b=I2Q1No6u4S8lLoxUBKz/isPlDy
 ewocF93/cXPje4uS8V+KeEBK2r4+qYMXtHU8ONSvYTuJgup6p+ZCa79o7u85mORh7gH0vMEVEkeA5
 GB4FvxTmpBcglIPK3urZCAU9IgEP51n3cl66TXC1yZSyihOv8OhPn2ud6LZx3Ij+g/j8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h9g+l/mDLh9NLHLlkSv4yNv/wHKrQGIGYei9J8s/yAc=; b=YZUXwqhbk1Osb1Gru4HQx3K3TG
 lq9CyAGWsjuekQ/pDik/xM6os5o4qKiP0NKe42qmptdOotTkvzjWIVhk20icnOIvPkthpJyAgI4e4
 eu4kGvCBCa0BTVt6MkADL1hFXVnvzeQRp5xg9Edh9S4fyIQV/WClV1Q9yTw0OTkfaoOQ=;
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXYVX-005YbD-4a
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:39 +0000
Received: by mail-oi1-f176.google.com with SMTP id 24so24001672oix.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 Oct 2021 17:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h9g+l/mDLh9NLHLlkSv4yNv/wHKrQGIGYei9J8s/yAc=;
 b=lUz749sVXaJvp7pzBZwoBOQk0P3C2Ii9F9vBQ1SCrSyf+jaSvgXAz3ymTYDD4pYBAR
 Bkc5iKk664eSa9jVrRHupSNiPQozuVte5bzYirhXFa2hUcy26AELnUZmfZc97Az5tlp8
 fugNjNZ4Mmzh4l2nHm62MEuxgqvt7dlWZhGTHpdAmB+Kt0sV9jo4uMl5AATyWakNwk0M
 ywNZtzozUb8zPyTSfK1S0HYV2c91ATFbl2vTlGdOvO72FRfVWCkqSpHo524mLQn9yNPC
 3PDDbMK90qOiVZtuOAgTU7Kxk/4Gv2Gm9yMVWTGsr8/+F0MAPntyPupv7fhT2ZmAZw6D
 y7Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=h9g+l/mDLh9NLHLlkSv4yNv/wHKrQGIGYei9J8s/yAc=;
 b=7YBom5dQVFHXSLtjPw9aLApmgYmASl2F+9RvvK7RLtQo9lh2xv/Q9xBR0D+csBDBVY
 kEyQlwn4Ph/qOapqnqnJ8vaQvN4FvW3yGKp4sIyxCsSK8Zz8qT2qWWgxcTv4rlktiyJL
 05qC0d5ZMHt4AjXE/OLzqRZq2jtuUR9CquxKr16lQEGLoqGxBdHCt2HwZDZuMiuu1W6F
 9Q0MxEMyBSSc88YK5U1K3TOTkydLkGdUL8OGJWPBrxTSutgp7CZOYEDLP84tde1wSCCP
 p0L/3AOoPjDhGrq/Oc02xMPaHH4sMw/MgWcIHP00DaeNoTiAahV4+XlMrfoIDNMxUU+X
 4gNQ==
X-Gm-Message-State: AOAM530/+/XDjjKIOCTgfz0iYZWrdizcb37nGJ0U/JoE8YBJPQXQ/4xu
 CcvJQFLEGTLZsjFcTvz84WRGwl2v0Q==
X-Google-Smtp-Source: ABdhPJzmAHRT8shIhx3+9yqfeGXUtHqENvDIVD4CJ1tRIlYvhpWnr2iOWgdK+0TT++UiPwA2/U+6FQ==
X-Received: by 2002:aca:6108:: with SMTP id v8mr125078oib.139.1633394429297;
 Mon, 04 Oct 2021 17:40:29 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id g23sm3320911otn.40.2021.10.04.17.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 17:40:27 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1ce5:3fb4:8fe9:30d1])
 by serve.minyard.net (Postfix) with ESMTPA id 4C3011800F7;
 Tue,  5 Oct 2021 00:40:26 +0000 (UTC)
From: minyard@acm.org
To: openipmi-developer@lists.sourceforge.net
Date: Mon,  4 Oct 2021 19:40:17 -0500
Message-Id: <20211005004019.2670691-4-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005004019.2670691-1-minyard@acm.org>
References: <20211005004019.2670691-1-minyard@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard <cminyard@mvista.com> This provides
 access
 to the management controllers on an IPMB bus to a device sitting on the IPMB
 bus. It also provides slave capability to respond to received messages on
 the bus. Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.176 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.176 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXYVX-005YbD-4a
Subject: [Openipmi-developer] [PATCH 3/5] ipmi:ipmb: Add initial support for
 IPMI over IPMB
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

This provides access to the management controllers on an IPMB bus to a
device sitting on the IPMB bus.  It also provides slave capability to
respond to received messages on the bus.

Signed-off-by: Corey Minyard <minyard@acm.org>
Tested-by: Andrew Manley <andrew.manley@sealingtech.com>
Reviewed-by: Andrew Manley <andrew.manley@sealingtech.com>
---
 drivers/char/ipmi/Kconfig     |   9 +
 drivers/char/ipmi/Makefile    |   1 +
 drivers/char/ipmi/ipmi_ipmb.c | 510 ++++++++++++++++++++++++++++++++++
 3 files changed, 520 insertions(+)
 create mode 100644 drivers/char/ipmi/ipmi_ipmb.c

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 249b31197eea..1c92209f023b 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -75,6 +75,15 @@ config IPMI_SSIF
 	  have a driver that must be accessed over an I2C bus instead of a
 	  standard interface.  This module requires I2C support.
 
+config IPMI_IPMB
+       tristate 'IPMI IPMB interface'
+       select I2C
+       help
+	 Provides a driver for a system running right on the IPMB bus.
+	 It supports normal system interface messages to a BMC on the IPMB
+	 bus, and it also supports direct messaging on the bus using
+	 IPMB direct messages.  This module requires I2C support.
+
 config IPMI_POWERNV
 	depends on PPC_POWERNV
 	tristate 'POWERNV (OPAL firmware) IPMI interface'
diff --git a/drivers/char/ipmi/Makefile b/drivers/char/ipmi/Makefile
index 84f47d18007f..7ce790efad92 100644
--- a/drivers/char/ipmi/Makefile
+++ b/drivers/char/ipmi/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_IPMI_SI) += ipmi_si.o
 obj-$(CONFIG_IPMI_DMI_DECODE) += ipmi_dmi.o
 obj-$(CONFIG_IPMI_PLAT_DATA) += ipmi_plat_data.o
 obj-$(CONFIG_IPMI_SSIF) += ipmi_ssif.o
+obj-$(CONFIG_IPMI_IPMB) += ipmi_ipmb.o
 obj-$(CONFIG_IPMI_POWERNV) += ipmi_powernv.o
 obj-$(CONFIG_IPMI_WATCHDOG) += ipmi_watchdog.o
 obj-$(CONFIG_IPMI_POWEROFF) += ipmi_poweroff.o
diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
new file mode 100644
index 000000000000..b10a1fd9c563
--- /dev/null
+++ b/drivers/char/ipmi/ipmi_ipmb.c
@@ -0,0 +1,510 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Driver to talk to a remote management controller on IPMB.
+ */
+
+#include <linux/acpi.h>
+#include <linux/errno.h>
+#include <linux/i2c.h>
+#include <linux/miscdevice.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/poll.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <linux/semaphore.h>
+#include <linux/kthread.h>
+#include <linux/wait.h>
+#include <linux/ipmi_msgdefs.h>
+#include <linux/ipmi_smi.h>
+
+#define DEVICE_NAME "ipmi-ipmb"
+
+static int bmcaddr = 0x20;
+module_param(bmcaddr, int, 0644);
+MODULE_PARM_DESC(bmcaddr, "Address to use for BMC.");
+
+static unsigned int retry_time_ms = 250;
+module_param(retry_time_ms, uint, 0644);
+MODULE_PARM_DESC(max_retries, "Timeout time between retries, in milliseconds.");
+
+static unsigned int max_retries = 1;
+module_param(max_retries, uint, 0644);
+MODULE_PARM_DESC(max_retries, "Max resends of a command before timing out.");
+
+/* Add room for the two slave addresses, two checksums, and rqSeq. */
+#define IPMB_MAX_MSG_LEN (IPMI_MAX_MSG_LENGTH + 5)
+
+struct ipmi_ipmb_dev {
+	struct ipmi_smi *intf;
+	struct i2c_client *client;
+
+	struct ipmi_smi_handlers handlers;
+
+	bool ready;
+
+	u8 bmcaddr;
+
+	u8 curr_seq;
+
+	struct ipmi_smi_msg *next_msg;
+	struct ipmi_smi_msg *working_msg;
+
+	/* Transmit thread. */
+	struct task_struct *thread;
+	struct semaphore wake_thread;
+	struct semaphore got_rsp;
+	spinlock_t lock;
+	bool stopping;
+
+	u8 xmitmsg[IPMB_MAX_MSG_LEN];
+	unsigned int xmitlen;
+
+	u8 rcvmsg[IPMB_MAX_MSG_LEN];
+	unsigned int rcvlen;
+	bool overrun;
+};
+
+static bool valid_ipmb(struct ipmi_ipmb_dev *iidev)
+{
+	u8 *msg = iidev->rcvmsg;
+	u8 netfn;
+
+	if (iidev->overrun)
+		return false;
+
+	/* Minimum message size. */
+	if (iidev->rcvlen < 7)
+		return false;
+
+	/* Is it a response? */
+	netfn = msg[1] >> 2;
+	if (netfn & 1) {
+		/* Response messages have an added completion code. */
+		if (iidev->rcvlen < 8)
+			return false;
+	}
+
+	if (ipmb_checksum(msg, 3) != 0)
+		return false;
+	if (ipmb_checksum(msg + 3, iidev->rcvlen - 3) != 0)
+		return false;
+
+	return true;
+}
+
+static void ipmi_ipmb_check_msg_done(struct ipmi_ipmb_dev *iidev)
+{
+	struct ipmi_smi_msg *imsg = NULL;
+	u8 *msg = iidev->rcvmsg;
+	bool is_cmd;
+	unsigned long flags;
+
+	if (iidev->rcvlen == 0)
+		return;
+	if (!valid_ipmb(iidev))
+		goto done;
+
+	is_cmd = ((msg[1] >> 2) & 1) == 0;
+
+	if (is_cmd) {
+		/* Ignore commands until we are up. */
+		if (!iidev->ready)
+			goto done;
+
+		/* It's a command, allocate a message for it. */
+		imsg = ipmi_alloc_smi_msg();
+		if (!imsg)
+			goto done;
+		imsg->type = IPMI_SMI_MSG_TYPE_IPMB_DIRECT;
+		imsg->data_size = 0;
+	} else {
+		spin_lock_irqsave(&iidev->lock, flags);
+		if (iidev->working_msg) {
+			u8 seq = msg[4] >> 2;
+			bool xmit_rsp = (iidev->working_msg->data[0] >> 2) & 1;
+
+			/*
+			 * Responses should carry the sequence we sent
+			 * them with.  If it's a transmitted response,
+			 * ignore it.  And if the message hasn't been
+			 * transmitted, ignore it.
+			 */
+			if (!xmit_rsp && seq == iidev->curr_seq) {
+				iidev->curr_seq = (iidev->curr_seq + 1) & 0x3f;
+
+				imsg = iidev->working_msg;
+				iidev->working_msg = NULL;
+			}
+		}
+		spin_unlock_irqrestore(&iidev->lock, flags);
+	}
+
+	if (!imsg)
+		goto done;
+
+	if (imsg->type == IPMI_SMI_MSG_TYPE_IPMB_DIRECT) {
+		imsg->rsp[0] = msg[1]; /* NetFn/LUN */
+		/*
+		 * Keep the source address, rqSeq.  Drop the trailing
+		 * checksum.
+		 */
+		memcpy(imsg->rsp + 1, msg + 3, iidev->rcvlen - 4);
+		imsg->rsp_size = iidev->rcvlen - 3;
+	} else {
+		imsg->rsp[0] = msg[1]; /* NetFn/LUN */
+		/*
+		 * Skip the source address, rqSeq.  Drop the trailing
+		 * checksum.
+		 */
+		memcpy(imsg->rsp + 1, msg + 5, iidev->rcvlen - 6);
+		imsg->rsp_size = iidev->rcvlen - 5;
+	}
+	ipmi_smi_msg_received(iidev->intf, imsg);
+	if (!is_cmd)
+		up(&iidev->got_rsp);
+
+done:
+	iidev->overrun = false;
+	iidev->rcvlen = 0;
+}
+
+/*
+ * The IPMB protocol only supports i2c writes so there is no need to
+ * support I2C_SLAVE_READ* events, except to know if the other end has
+ * issued a read without going to stop mode.
+ */
+static int ipmi_ipmb_slave_cb(struct i2c_client *client,
+			      enum i2c_slave_event event, u8 *val)
+{
+	struct ipmi_ipmb_dev *iidev = i2c_get_clientdata(client);
+
+	switch (event) {
+	case I2C_SLAVE_WRITE_REQUESTED:
+		ipmi_ipmb_check_msg_done(iidev);
+		/*
+		 * First byte is the slave address, to ease the checksum
+		 * calculation.
+		 */
+		iidev->rcvmsg[0] = client->addr << 1;
+		iidev->rcvlen = 1;
+		break;
+
+	case I2C_SLAVE_WRITE_RECEIVED:
+		if (iidev->rcvlen > sizeof(iidev->rcvmsg))
+			iidev->overrun = true;
+		else
+			iidev->rcvmsg[iidev->rcvlen++] = *val;
+		break;
+
+	case I2C_SLAVE_READ_REQUESTED:
+	case I2C_SLAVE_STOP:
+		ipmi_ipmb_check_msg_done(iidev);
+		break;
+
+	case I2C_SLAVE_READ_PROCESSED:
+		break;
+	}
+
+	return 0;
+}
+
+static void ipmi_ipmb_send_response(struct ipmi_ipmb_dev *iidev,
+				    struct ipmi_smi_msg *msg, u8 cc)
+{
+	if ((msg->data[0] >> 2) & 1) {
+		/*
+		 * It's a response being sent, we needto return a
+		 * response response.  Fake a send msg command
+		 * response with channel 0.  This will always be ipmb
+		 * direct.
+		 */
+		msg->data[0] = (IPMI_NETFN_APP_REQUEST | 1) << 2;
+		msg->data[3] = IPMI_SEND_MSG_CMD;
+		msg->data[4] = cc;
+		msg->data_size = 5;
+	}
+	msg->rsp[0] = msg->data[0] | (1 << 2);
+	if (msg->type == IPMI_SMI_MSG_TYPE_IPMB_DIRECT) {
+		msg->rsp[1] = msg->data[1];
+		msg->rsp[2] = msg->data[2];
+		msg->rsp[3] = msg->data[3];
+		msg->rsp[4] = cc;
+		msg->rsp_size = 5;
+	} else {
+		msg->rsp[1] = msg->data[1];
+		msg->rsp[2] = cc;
+		msg->rsp_size = 3;
+	}
+	ipmi_smi_msg_received(iidev->intf, msg);
+}
+
+static void ipmi_ipmb_format_for_xmit(struct ipmi_ipmb_dev *iidev,
+				      struct ipmi_smi_msg *msg)
+{
+	if (msg->type == IPMI_SMI_MSG_TYPE_IPMB_DIRECT) {
+		iidev->xmitmsg[0] = msg->data[1];
+		iidev->xmitmsg[1] = msg->data[0];
+		memcpy(iidev->xmitmsg + 4, msg->data + 2, msg->data_size - 2);
+		iidev->xmitlen = msg->data_size + 2;
+	} else {
+		iidev->xmitmsg[0] = iidev->bmcaddr;
+		iidev->xmitmsg[1] = msg->data[0];
+		iidev->xmitmsg[4] = 0;
+		memcpy(iidev->xmitmsg + 5, msg->data + 1, msg->data_size - 1);
+		iidev->xmitlen = msg->data_size + 4;
+	}
+	iidev->xmitmsg[3] = iidev->client->addr << 1;
+	if (((msg->data[0] >> 2) & 1) == 0)
+		/* If it's a command, put in our own sequence number. */
+		iidev->xmitmsg[4] = ((iidev->xmitmsg[4] & 0x03) |
+				     (iidev->curr_seq << 2));
+
+	/* Now add on the final checksums. */
+	iidev->xmitmsg[2] = ipmb_checksum(iidev->xmitmsg, 2);
+	iidev->xmitmsg[iidev->xmitlen] =
+		ipmb_checksum(iidev->xmitmsg + 3, iidev->xmitlen - 3);
+	iidev->xmitlen++;
+}
+
+static int ipmi_ipmb_thread(void *data)
+{
+	struct ipmi_ipmb_dev *iidev = data;
+
+	while (!kthread_should_stop()) {
+		long ret;
+		struct i2c_msg i2c_msg;
+		struct ipmi_smi_msg *msg = NULL;
+		unsigned long flags;
+		unsigned int retries = 0;
+
+		/* Wait for a message to send */
+		ret = down_interruptible(&iidev->wake_thread);
+		if (iidev->stopping)
+			break;
+		if (ret)
+			continue;
+
+		spin_lock_irqsave(&iidev->lock, flags);
+		if (iidev->next_msg) {
+			msg = iidev->next_msg;
+			iidev->next_msg = NULL;
+		}
+		spin_unlock_irqrestore(&iidev->lock, flags);
+		if (!msg)
+			continue;
+
+		ipmi_ipmb_format_for_xmit(iidev, msg);
+
+retry:
+		i2c_msg.len = iidev->xmitlen - 1;
+		if (i2c_msg.len > 32) {
+			ipmi_ipmb_send_response(iidev, msg,
+						IPMI_REQ_LEN_EXCEEDED_ERR);
+			continue;
+		}
+
+		i2c_msg.addr = iidev->xmitmsg[0] >> 1;
+		i2c_msg.flags = 0;
+		i2c_msg.buf = iidev->xmitmsg + 1;
+
+		/* Rely on i2c_transfer for a barrier. */
+		iidev->working_msg = msg;
+
+		ret = i2c_transfer(iidev->client->adapter, &i2c_msg, 1);
+
+		if ((msg->data[0] >> 2) & 1) {
+			/*
+			 * It's a response, nothing will be returned
+			 * by the other end.
+			 */
+
+			iidev->working_msg = NULL;
+			ipmi_ipmb_send_response(iidev, msg,
+						ret < 0 ? IPMI_BUS_ERR : 0);
+			continue;
+		}
+		if (ret < 0) {
+			iidev->working_msg = NULL;
+			ipmi_ipmb_send_response(iidev, msg, IPMI_BUS_ERR);
+			continue;
+		}
+
+		/* A command was sent, wait for its response. */
+		ret = down_timeout(&iidev->got_rsp,
+				   msecs_to_jiffies(retry_time_ms));
+
+		/*
+		 * Grab the message if we can.  If the handler hasn't
+		 * already handled it, the message will still be there.
+		 */
+		spin_lock_irqsave(&iidev->lock, flags);
+		msg = iidev->working_msg;
+		iidev->working_msg = NULL;
+		spin_unlock_irqrestore(&iidev->lock, flags);
+
+		if (!msg && ret) {
+			/*
+			 * If working_msg is not set and we timed out,
+			 * that means the message grabbed by
+			 * check_msg_done before we could grab it
+			 * here.  Wait again for check_msg_done to up
+			 * the semaphore.
+			 */
+			down(&iidev->got_rsp);
+		} else if (msg && ++retries <= max_retries) {
+			spin_lock_irqsave(&iidev->lock, flags);
+			iidev->working_msg = msg;
+			spin_unlock_irqrestore(&iidev->lock, flags);
+			goto retry;
+		}
+
+		if (msg)
+			ipmi_ipmb_send_response(iidev, msg, IPMI_TIMEOUT_ERR);
+	}
+
+	if (iidev->next_msg)
+		/* Return an unspecified error. */
+		ipmi_ipmb_send_response(iidev, iidev->next_msg, 0xff);
+
+	return 0;
+}
+
+static int ipmi_ipmb_start_processing(void            *send_info,
+				      struct ipmi_smi *new_intf)
+{
+	struct ipmi_ipmb_dev *iidev = send_info;
+
+	iidev->intf = new_intf;
+	iidev->ready = true;
+	return 0;
+}
+
+static void ipmi_ipmb_stop_thread(struct ipmi_ipmb_dev *iidev)
+{
+	if (iidev->thread) {
+		struct task_struct *t = iidev->thread;
+
+		iidev->thread = NULL;
+		iidev->stopping = true;
+		up(&iidev->wake_thread);
+		up(&iidev->got_rsp);
+		kthread_stop(t);
+	}
+}
+
+static void ipmi_ipmb_shutdown(void *send_info)
+{
+	struct ipmi_ipmb_dev *iidev = send_info;
+
+	ipmi_ipmb_stop_thread(iidev);
+}
+
+static void ipmi_ipmb_sender(void                *send_info,
+			     struct ipmi_smi_msg *msg)
+{
+	struct ipmi_ipmb_dev *iidev = send_info;
+	unsigned long flags;
+
+	spin_lock_irqsave(&iidev->lock, flags);
+	BUG_ON(iidev->next_msg);
+
+	iidev->next_msg = msg;
+	spin_unlock_irqrestore(&iidev->lock, flags);
+
+	up(&iidev->wake_thread);
+}
+
+static void ipmi_ipmb_request_events(void *send_info)
+{
+	/* We don't fetch events here. */
+}
+
+static int ipmi_ipmb_remove(struct i2c_client *client)
+{
+	struct ipmi_ipmb_dev *iidev = i2c_get_clientdata(client);
+
+	if (iidev->client) {
+		iidev->client = NULL;
+		i2c_slave_unregister(client);
+	}
+	ipmi_ipmb_stop_thread(iidev);
+
+	return 0;
+}
+
+static int ipmi_ipmb_probe(struct i2c_client *client,
+			   const struct i2c_device_id *id)
+{
+	struct ipmi_ipmb_dev *iidev;
+	int rv;
+
+	iidev = devm_kzalloc(&client->dev, sizeof(*iidev), GFP_KERNEL);
+	if (!iidev)
+		return -ENOMEM;
+
+	iidev->bmcaddr = bmcaddr;
+
+	i2c_set_clientdata(client, iidev);
+	client->flags |= I2C_CLIENT_SLAVE;
+
+	rv = i2c_slave_register(client, ipmi_ipmb_slave_cb);
+	if (rv)
+		return rv;
+
+	iidev->client = client;
+
+	iidev->handlers.flags = IPMI_SMI_CAN_HANDLE_IPMB_DIRECT;
+	iidev->handlers.start_processing = ipmi_ipmb_start_processing;
+	iidev->handlers.shutdown = ipmi_ipmb_shutdown;
+	iidev->handlers.sender = ipmi_ipmb_sender;
+	iidev->handlers.request_events = ipmi_ipmb_request_events;
+
+	spin_lock_init(&iidev->lock);
+	sema_init(&iidev->wake_thread, 0);
+	sema_init(&iidev->got_rsp, 0);
+
+	iidev->thread = kthread_run(ipmi_ipmb_thread, iidev,
+				    "kipmb%4.4x", client->addr);
+	if (IS_ERR(iidev->thread)) {
+		rv = PTR_ERR(iidev->thread);
+		dev_notice(&client->dev,
+			   "Could not start kernel thread: error %d\n", rv);
+		goto out_err;
+	}
+
+	rv = ipmi_register_smi(&iidev->handlers,
+			       iidev,
+			       &client->dev,
+			       iidev->bmcaddr);
+	if (rv)
+		goto out_err;
+
+	return 0;
+
+out_err:
+	ipmi_ipmb_remove(client);
+	return rv;
+}
+
+static const struct i2c_device_id ipmi_ipmb_id[] = {
+	{ DEVICE_NAME, 0 },
+	{},
+};
+MODULE_DEVICE_TABLE(i2c, ipmi_ipmb_id);
+
+static struct i2c_driver ipmi_ipmb_driver = {
+	.class		= I2C_CLASS_HWMON,
+	.driver = {
+		.name = DEVICE_NAME,
+	},
+	.probe		= ipmi_ipmb_probe,
+	.remove		= ipmi_ipmb_remove,
+	.id_table	= ipmi_ipmb_id,
+};
+module_i2c_driver(ipmi_ipmb_driver);
+
+MODULE_AUTHOR("Corey Minyard");
+MODULE_DESCRIPTION("IPMI IPMB driver");
+MODULE_LICENSE("GPL v2");
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
