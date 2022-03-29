Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F504EB195
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 18:13:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZEL1-0003Qu-8I; Tue, 29 Mar 2022 16:13:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nZEKz-0003Qd-J5
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:13:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ny/ikeyxBUfsIzyeDkKi3cUIlXQE54bwP/fw/f6RqAo=; b=P8eTzxPnTWdWfT9MpoMPbC9gvr
 96xqQAIzY4ipDg1YMxsztptrQy0krLyT9Nhc471zI8//1a0JYFdlni8Ld6fTY4jx8DodfHWFxnmlz
 CQW+LCt3TdWHk88qYXMMnhvZYJ2OKkiPgDf3KUs+69s59U5gB3r3c43yarV2ZEZhSwq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ny/ikeyxBUfsIzyeDkKi3cUIlXQE54bwP/fw/f6RqAo=; b=S/+/NJwbsOGq5Ut3O6oXYJvN76
 RaYdP7GVfwTR18FX/KcSUnnuOvDjnzFo+cnXMFrQFA40brVsidqEa/HDRnppAvjEXCjR1ji04ZwJX
 lnXmpfibIUQF7pR8mXMRtK0g3XF2b8g/ULeCdoCHNBiKnZ1hGKAkCf4WrjNqKzDBOEdM=;
Received: from out162-62-57-137.mail.qq.com ([162.62.57.137])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZESt-0002Tb-Bt
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:13:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648570371;
 bh=ny/ikeyxBUfsIzyeDkKi3cUIlXQE54bwP/fw/f6RqAo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RMmTa6BQCASFEOagBCwoBfEgBPJDZC41El/iyFw5wcdx/83p8WL6RHF9/1UMvXztD
 cLDiO4enpgBBrtpYYcFl/gTpntR8ZKuvIDK35kEkkLGFJOOuPKi7RZ5NVuSo2b2WgU
 nYd4WlTg5lFg7Yqys2at9EZPfxUi2+ygax4M128Q=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrsza5.qq.com (NewEsmtp) with SMTP
 id 32C96631; Wed, 30 Mar 2022 00:12:44 +0800
X-QQ-mid: xmsmtpt1648570370tr8pifo23
Message-ID: <tencent_8B7CCCF6F54DCD886D7D1A047A3E68F4210A@qq.com>
X-QQ-XMAILINFO: Md/xSstEnVzNeE4zLi4aHYVzMuLdRhVwAbdqDv/ByC3XpwlBge4e9PW6YoWHPw
 5LjaXQTrGL2sOry7hNTHXQnSowdBqxWIQy85U1NI31ceyUa1ajPgtWA9X4Gh1EmhkrfdmjuuUOZJ
 kAz/hwWAQs6Zqu9bhCsMd8L46mraweMXr/aKyxMyPpePQZUOFwJIaU2pd6PoUJqmGWSqGsxDBoNH
 PH+knG08QPQed1/egaEBkZNqu4BlZD7vK1TReuz9/zsyT2Xvjx/8rBVb6VqRtpH8CCoWZTxv+npA
 nm8he7ifmhSjNkwy7OAF/HmAJteprALgvab1Pbd0IgNChSpP0EB1EGk2fmwn9ilHOhrUXBkMbmAg
 7PHIDQO94KbfBPU7QTInqzyT9wBpPuOX/VpRqtVjEdE8b/tmLMfKkj2N5p9F4XWG8bVGMoGJo1GK
 YC9QUH0CgX2AU5PtizTtiiExAndVTq5JcXOYHISXJn0+BgZm3HpDtf0cEyyYs18NhUiCMBpRRjeq
 3YJ1KnrKSWHI7RZxIsLqc2Q5oampoCahRDOJ5RhYcEcZXRvlCYjLJZyL1Wc3RVM9F6mFpBjeHXCh
 rzG7Aw4CNtNQJWa34anICyRFXaEG11ZIXtZ8Ae3MMHPTXUWWqw5lIIxQkGvq8kPakvpp26PrS9er
 qUB7BhECEaBRL4TL64FzgkVx14bBxio5YUc/glFAKEgl6oiSFthKEMAPocMa8/movTWTrBv9eftf
 oDc8J2qQBHcnaNSLF2TPoLQ2P4jD4HCU1cS+iH4mA4IxyRBC9l+hvHGPaOwZ7WpW25/7CDILpysL
 fb34Iq/cpLq29CIjoqqbCQBCjaKP0ksSIWrMipBcvYzUhDQnRQkPkmvU619HdpUZmxh3Hjq+TbCQ
 JrKHxGsCvh6VwpkCE9OFXe+SLEajkwHZMMFR5EOkn+YNo8L/ioibejtBzjxPVkZ3kYJfOhtCxt3N
 w4BoqFaS4=
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Wed, 30 Mar 2022 00:12:42 +0800
X-OQ-MSGID: <20220329161242.76457-5-chen.chenchacha@foxmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329161242.76457-1-chen.chenchacha@foxmail.com>
References: <20220329161242.76457-1-chen.chenchacha@foxmail.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The further approach, add a cleanup interface in sysfs. The
 administrator write '1' to clean_msg, and ipmi clear the entire message queue.
 Signed-off-by: Chen Guanqiao --- drivers/char/ipmi/ipmi_msghandler.c | 81
 +++++++++++++++++++++++++++++ 1 file changed, 81 insertions(+) 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.137 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [162.62.57.137 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1nZESt-0002Tb-Bt
Subject: [Openipmi-developer] [PATCH v2 4/4] ipmi: msghandler: Add a
 interface to clean message queue in sysfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The further approach, add a cleanup interface in sysfs. The administrator write
'1' to clean_msg, and ipmi clear the entire message queue.

Signed-off-by: Chen Guanqiao <chen.chenchacha@foxmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 81 +++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index a188dc7e7135..58f3e17ee6b2 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -46,6 +46,9 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf);
 static void need_waiter(struct ipmi_smi *intf);
 static int handle_one_recv_msg(struct ipmi_smi *intf,
 			       struct ipmi_smi_msg *msg);
+static void deliver_smi_err_response(struct ipmi_smi *intf,
+				     struct ipmi_smi_msg *msg,
+				     unsigned char err);

 static bool initialized;
 static bool drvregistered;
@@ -2809,6 +2812,70 @@ static void get_msg_count(unsigned int *hp_count, unsigned int *count)
 	srcu_read_unlock(&ipmi_interfaces_srcu, index);
 }

+static void __cleanup_msgs_queue(struct ipmi_smi *intf)
+{
+	int i;
+	unsigned long flags;
+	int run_to_completion = intf->run_to_completion;
+
+	rcu_read_lock();
+	if (!run_to_completion)
+		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
+	if (!intf->in_shutdown) {
+		struct ipmi_smi_msg *msg;
+		struct list_head *entry = NULL;
+
+		while (!list_empty(&intf->xmit_msgs)) {
+			if (!list_empty(&intf->hp_xmit_msgs))
+				entry = intf->hp_xmit_msgs.next;
+			else if (!list_empty(&intf->xmit_msgs))
+				entry = intf->xmit_msgs.next;
+
+			if (!entry)
+				continue;
+
+			list_del(entry);
+			msg = list_entry(entry, struct ipmi_smi_msg, link);
+			deliver_smi_err_response(intf, msg,
+						 IPMI_ERR_UNSPECIFIED);
+		}
+	}
+	if (!run_to_completion)
+		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
+	rcu_read_unlock();
+
+	spin_lock_irqsave(&intf->seq_lock, flags);
+	for (i = 0; i < IPMI_IPMB_NUM_SEQ; i++) {
+		struct seq_table *ent = &intf->seq_table[i];
+		if (!ent->inuse)
+			continue;
+		deliver_err_response(intf, ent->recv_msg, IPMI_ERR_UNSPECIFIED);
+	}
+	spin_unlock_irqrestore(&intf->seq_lock, flags);
+}
+
+static void cleanup_msgs_queue(void)
+{
+	struct ipmi_smi *intf;
+	int index;
+
+	index = srcu_read_lock(&ipmi_interfaces_srcu);
+	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
+		struct bmc_device *bmc = intf->bmc;
+
+		kref_get(&intf->refcount);
+		mutex_lock(&intf->bmc_reg_mutex);
+		mutex_lock(&bmc->dyn_mutex);
+
+		__cleanup_msgs_queue(intf);
+
+		mutex_unlock(&bmc->dyn_mutex);
+		mutex_unlock(&intf->bmc_reg_mutex);
+		kref_put(&intf->refcount, intf_free);
+	}
+	srcu_read_unlock(&ipmi_interfaces_srcu, index);
+}
+
 static ssize_t device_id_show(struct device *dev,
 			      struct device_attribute *attr,
 			      char *buf)
@@ -2998,6 +3065,19 @@ static ssize_t msg_count_show(struct device *dev, struct device_attribute *attr,
 }
 static DEVICE_ATTR_ADMIN_RO(msg_count);

+static ssize_t clean_msgs_store(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf, size_t count)
+{
+	if (!sysfs_streq(buf, "1"))
+		return -EINVAL;
+
+	cleanup_msgs_queue();
+
+	return count;
+}
+static DEVICE_ATTR_WO(clean_msgs);
+
 static struct attribute *bmc_dev_attrs[] = {
 	&dev_attr_device_id.attr,
 	&dev_attr_provides_device_sdrs.attr,
@@ -3011,6 +3091,7 @@ static struct attribute *bmc_dev_attrs[] = {
 	&dev_attr_guid.attr,
 	&dev_attr_user_count.attr,
 	&dev_attr_msg_count.attr,
+	&dev_attr_clean_msgs.attr,
 	NULL
 };

--
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
