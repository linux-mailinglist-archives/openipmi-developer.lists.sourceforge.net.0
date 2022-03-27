Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5A14E8900
	for <lists+openipmi-developer@lfdr.de>; Sun, 27 Mar 2022 18:51:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nYW6w-0004oz-A2; Sun, 27 Mar 2022 16:51:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nYW6u-0004os-V2
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Mar 2022 16:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DvwSii+5xmJOQpLDDgt+t39uWXr7culJhCY3W1SQzmY=; b=Y/nsyC2vYLuX9MCg8oCv1InWoy
 BvajQFc7dAtIw3I+HZoxKUWjO9sjNLgh878PRwaC/Wy3xTexTFoWM4euIctbR+hmAYMEGEQ/p7N2k
 9HYa88Qf9Qoblj48sFZTTSEcGfNXy/wL06nPyhQ/9//xQYsKeTwTKQ38VuCVKpkuoLms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DvwSii+5xmJOQpLDDgt+t39uWXr7culJhCY3W1SQzmY=; b=O9ONrSBhReVq8VtXP6RqygkhD7
 KZvx2RbTLlOBRJGSOcnziOuIGE4e5A7TZ9CRCKZtlyYBTAuVl5b+v1Qn4MM0o0LImbE8R0uQk15Fl
 Pi+UHoeaQGGt0buON3hPIXU8vlqzgaFsAEi+0MljEODtkGuCgRx2leS2w6ushl+/gMKo=;
Received: from out162-62-57-137.mail.qq.com ([162.62.57.137])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYW6p-00Dnk6-95
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Mar 2022 16:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648399870;
 bh=DvwSii+5xmJOQpLDDgt+t39uWXr7culJhCY3W1SQzmY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Wov2+HLQWBfKUX4ERx2qSePCPVJv0LQFfqmd7m0oDfRttPur616T9w/oXYH0z105y
 UBqMheSu5xwZ/j8maIBY+UlH2Uk02BGfSt0UCWwWBjTAS1GJHyCRw/5Gse9LeVEraE
 URgrMglv7ic/0jMqQ1S6Bdr2574/yPD98OHS1wCY=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrszc10.qq.com (NewEsmtp) with SMTP
 id BEF2A844; Mon, 28 Mar 2022 00:47:47 +0800
X-QQ-mid: xmsmtpt1648399671t033mo6ba
Message-ID: <tencent_4BC3A56F75CA5B8CE8D32E90FC61A78FFF05@qq.com>
X-QQ-XMAILINFO: NMGzQWUSIfvTAI8iMz2DU92qQIfxOBcGpkpB3mZLyf36XSYXaJrSP90aPsTyUY
 Dn3Oeym1u2Nj8/3a8yFMFbFrHMohGhn6JpCZ+65rBVOClj9EPZaXQ4pGXY8+RBhRJ3qnpQYgppZO
 xgSW24H2gqwl11DriM2cc7uE9d0h+be2183AJs6Tg4XNBQAUqPNct8rd6gWVQQKItRf9EekT0Qcu
 LskRRlnPZZeOdRItXzSnrZZb9uyoLlL3Xylq5QLnLBP5gaA2TppC//erlIC5Qo3SKUBHwblP5x4W
 fRAAa6TyE/Uz+rYrlXOAM31lD2LZ65IwQfNkcYWoXb+ktlE4ODHhhkG62Uj2cFoXvRreY7xnIAAp
 bWC0c77mc3kRM6L67exKOFA2tczMW315bIMrdANqAsPW7r9CEGq5E8m4gkb4fdJGMisGOLy3Lqx4
 9FdtPJR5aE5v2InDV8mtV/jVhq1HmcTAJ49VSk+YIFEs7xghpfQEAnMzZa6rlKxdHxw8vayRug0w
 dNP2Lyq13BYm8zq8EC+mwQR2AEC+xzm5r/4p0rtZ4E433HIN2qZwAmMDSzceU74DOmebjP8CTrX0
 0Sb4ihj9mvbCOOIvxc+cOErlGSoQhyQjUdTDXoMoAmykxw+/bCaihZZBP/MfM9V+YMpP5W7BOq+u
 ieneQEkKrMY87zwhRXBk+1SATbWAnd06rTrAo1j7Cv33uAcFe6Pt30uOg0RTebzcGYwvtjvsXY5f
 U0AMMK6KMXGbPUnCkNazed7+8G27nvejIwPUq96taZlR6HdWBCqE4o0MufpRCVbgrzeLJ7vgBsbq
 gLlhjaIabFQGhvnUXOob1XOXHzY0f8AV5qPm8O4A+ZBp65Avq4BncWjYzYKgSA+nPKZuCpAWd78m
 OLM0rnYvBntOn1mwrV6M93LiFEZZgfbbxmPO81ibPXgjGbeXW0nW6yBZdLILWUY/jVn9a2OHxRIB
 4HzJts0RucX/dxt60/ra0TOG5BNHmtiRYiBc18ZgEjNu4xR2tdpTyCdteYcsJPhQH8OD0W32YhbE
 laaBSOymhG0LppOthj
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Mon, 28 Mar 2022 00:47:44 +0800
X-OQ-MSGID: <9268e77879ce2c970f23d44522a6cc8526e13227.1648397283.git.chen.chenchacha@foxmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1648397283.git.chen.chenchacha@foxmail.com>
References: <cover.1648397283.git.chen.chenchacha@foxmail.com>
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
 Signed-off-by: Chen Guanqiao --- drivers/char/ipmi/ipmi_msghandler.c | 82
 +++++++++++++++++++++++++++++ 1 file changed, 82 insertions(+) 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [162.62.57.137 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.137 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1nYW6p-00Dnk6-95
Subject: [Openipmi-developer] [PATCH 3/3] ipmi: msghandler: add a interface
 to clean message queue in sysfs
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
 drivers/char/ipmi/ipmi_msghandler.c | 82 +++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 0238be81c435..29d6779a569f 100644
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
@@ -2761,6 +2764,71 @@ static void get_msg_count(unsigned int *hp_count, unsigned int *count)
 	*count = hp_msg_count;
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
+
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
@@ -2950,6 +3018,19 @@ static ssize_t msg_count_show(struct device *dev, struct device_attribute *attr,
 }
 static DEVICE_ATTR_ADMIN_RO(msg_count);
 
+static ssize_t clean_msgs_store(struct device *dev,
+				struct device_attribute *attr, const char *buf,
+				size_t count)
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
@@ -2963,6 +3044,7 @@ static struct attribute *bmc_dev_attrs[] = {
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
