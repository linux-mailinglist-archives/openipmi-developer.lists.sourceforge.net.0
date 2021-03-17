Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D175342CC0
	for <lists+openipmi-developer@lfdr.de>; Sat, 20 Mar 2021 13:24:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Mime-Version:Message-Id:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XrL1Ksay+osgyHnzE4cwNTz/3OFoPMVHTGXqI8afZi4=; b=Vpp1PMRGyt2ETymm3jZOuivYbT
	svavfqXP09oVXuzZzUzmUkNLzPH2b0qV49OMw4UDerI/6RLP3T6CaW+2CiUIy4T5r/NxUJjren0DN
	LrDfP4K53D9vdRtJoqu+KGZ1kkUBs4I0wH7E64wjOceyLmiz5lsZ74mjKnTDvu2cu1Xo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lNaet-0003Xo-P0; Sat, 20 Mar 2021 12:24:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <3KklRYAoKAAs29lyzwpl29rzzrwp.nzx@flex--ryanoleary.bounces.google.com>)
 id 1lMLZ0-0007iu-Cg
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Mar 2021 02:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Mime-Version:
 Message-Id:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ICdrQPj3j/fsoTlcia/t0IEP5mlGt/tFAffDvI3wY5s=; b=CUL66qB36taw9Kt4ds89ul+5jx
 bwZHIqHEaa7fQZKB3GW2GAZ/kcBs7vaLmxw6K0pXFlQA8BIv8f1ZWLeXsrxmRx1LEGSOG+7wY8uX9
 dIOb/4TnfG1I/4X2Cliq0rlAOdEdr4e/ruj2dgTLIWYWH6eHm4NziDDuU5r1HcSHLxvQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Mime-Version:Message-Id:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ICdrQPj3j/fsoTlcia/t0IEP5mlGt/tFAffDvI3wY5s=; b=n
 RE8Ts2DCMZK9W1IyH7coUIxFqs+Il6b2ZCvVqSjWoMZpL1eW4EBRjHZsOUPkbUz7xXQBYahN8BEN6
 m3BFYni8rNnlwIldcFvJ4HSt4hRUQ2MFPYTCMVM8aG/FJC267aQ2QCZm5+CItVzq8c3G52ticroeK
 jRgd/Lc9bKehxub4=;
Received: from mail-yb1-f202.google.com ([209.85.219.202])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lMLYm-008cDt-1E
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Mar 2021 02:05:34 +0000
Received: by mail-yb1-f202.google.com with SMTP id j4so43347400ybt.23
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Mar 2021 19:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=ICdrQPj3j/fsoTlcia/t0IEP5mlGt/tFAffDvI3wY5s=;
 b=ZBwHO4IRmRZBNuefDfsO2XQgsHuvbKBzMGOv1/804ysqN1IJXNQwCcBdAygXME7XxZ
 c2aUbYJnMfO/BJSrtCZGWLALJgfcitStAFG0koBGfDr8Jj18xkc8HkXOdoXdjyPiq/61
 DO+QtxUbKbhPcmFpJlf9biCi1ITwSXgF0pwRo8/PTVZQ8D/JbmXSk10+qVVg8pkU9Z6q
 L9TLKFtpLJKG/4rOjUuU7U77GTzz9/bA9xYeDzVfNODVXkPdnyfUfQ5mzkV360M6MerE
 9XDrqRIcrv0FdN6rf/sZc1VdrfCacsgpXB6bjfehpT4mPc2BBK7YAbejSE4tYV7QDT6Z
 6KcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=ICdrQPj3j/fsoTlcia/t0IEP5mlGt/tFAffDvI3wY5s=;
 b=Cmb98uFtceEHr1mR1yh/dJGGUoUwVoxg8NUxWLFSxBpE8EE9jkAu1ebyOhyBjm4HIi
 BT+2qygtYzu9svjBZgrEz6cKv+Z95Ff6lSPxn16hwaYj/5g7ounyXgJTSmAK2sjx1Lix
 CtA90KB70OYUtJqbxZPEzvm32mgZxbFZOX/0x27Mck3FSSpUdZ2QLvuJKxOqnJ6KDA1G
 IjzN6cqNQ7ukBB1HcNM8yDabgYf0VZ/EXIKfgSKoeTnErcuaGr11dFWve02UbT2VvVcK
 IVcBX+FEU1gNEiOnxAZqZnoqWcUVs4nMehrYDZADGHx77/8kg/BMoUzIWwj0T5fbyPTw
 Gszg==
X-Gm-Message-State: AOAM532YhfnIJ3RLWmtxE7LrPkswIOUiI/6zhtOuZg+ZG49FKywrGQGx
 3VLrETDZuqPI7i5VGYwCXzE9eV0Jr/SYTOUl
X-Google-Smtp-Source: ABdhPJzDuCdU2E6K4E1qDZk2y8cwsZYR6uLSlM11Vh7iSnxa9BoAywPB6zktEURbFLlaPo/lFwURMJyCcn2kYjs0
X-Received: from ryanoleary.svl.corp.google.com
 ([2620:15c:2c5:3:403c:58cd:b7e4:47af])
 (user=ryanoleary job=sendgmr) by 2002:a5b:e8e:: with SMTP id
 z14mr1761765ybr.352.1615939882798; Tue, 16 Mar 2021 17:11:22 -0700 (PDT)
Date: Tue, 16 Mar 2021 17:10:36 -0700
Message-Id: <20210317001036.1097763-1-ryanoleary@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.202 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.202 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1lMLYm-008cDt-1E
X-Mailman-Approved-At: Sat, 20 Mar 2021 12:24:46 +0000
Subject: [Openipmi-developer] [PATCH 1/1] ipmi/watchdog: Add
 WDIOC_GETTIMELEFT ioctl
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
From: Ryan O'Leary via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Ryan O'Leary <ryanoleary@google.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Ryan O'Leary <ryanoleary@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This is the same ioctl the rest of the watchdogs support. GETTIMELEFT
returns the number of seconds in the countdown -- useful for testing
whether the watchdog is functioning.

Signed-off-by: Ryan O'Leary <ryanoleary@google.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 75 +++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 32c334e34d55..f253c8667395 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -456,6 +456,71 @@ static int ipmi_set_timeout(int do_heartbeat)
 	return rv;
 }
 
+static unsigned int __ipmi_get_timeout(struct ipmi_smi_msg  *smi_msg,
+				       struct ipmi_recv_msg *recv_msg,
+				       int                  *countdown)
+{
+	struct kernel_ipmi_msg            msg;
+	int                               rv = 0;
+	struct ipmi_system_interface_addr addr;
+
+
+	addr.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
+	addr.channel = IPMI_BMC_CHANNEL;
+	addr.lun = 0;
+
+	msg.netfn = 0x06;
+	msg.cmd = IPMI_WDOG_GET_TIMER;
+	msg.data = NULL;
+	msg.data_len = 0;
+	rv = ipmi_request_supply_msgs(watchdog_user,
+				      (struct ipmi_addr *) &addr,
+				      0,
+				      &msg,
+				      NULL,
+				      smi_msg,
+				      recv_msg,
+				      1);
+	if (rv) {
+		pr_warn("get timeout error: %d\n", rv);
+		return rv;
+	}
+
+	wait_for_completion(&msg_wait);
+
+	if (recv_msg->msg.data_len < 9) {
+		pr_warn("get timeout response size: %d (expected 9)\n",
+			recv_msg->msg.data_len);
+		return -EIO;
+	}
+
+	if (recv_msg->msg.data[0] != 0)  {
+		pr_warn("get timeout completion code error: %d\n",
+			recv_msg->msg.data[0]);
+		return -EIO;
+	}
+
+	*countdown = WDOG_GET_TIMEOUT(recv_msg->msg.data[7], recv_msg->msg.data[8]);
+
+	return rv;
+}
+
+static int _ipmi_get_timeout(int *countdown)
+{
+	int rv;
+
+	if (!watchdog_user)
+		return -ENODEV;
+
+	atomic_set(&msg_tofree, 2);
+
+	rv = __ipmi_get_timeout(&smi_msg,
+				&recv_msg,
+				countdown);
+
+	return rv;
+}
+
 static atomic_t panic_done_count = ATOMIC_INIT(0);
 
 static void panic_smi_free(struct ipmi_smi_msg *msg)
@@ -729,6 +794,16 @@ static int ipmi_ioctl(struct file *file,
 			return -EFAULT;
 		return 0;
 
+	case WDIOC_GETTIMELEFT:
+		val = 0;
+		i = _ipmi_get_timeout(&val);
+		if (i)
+			return i;
+		i = copy_to_user(argp, &val, sizeof(val));
+		if (i)
+			return -EFAULT;
+		return 0;
+
 	default:
 		return -ENOIOCTLCMD;
 	}
-- 
2.31.0.rc2.261.g7f71774620-goog



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
