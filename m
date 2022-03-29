Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C124EB1A3
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 18:16:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZEW4-0004BP-Kw; Tue, 29 Mar 2022 16:16:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nZEW3-0004BA-Kn
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aAXDyKsO8jXDtyhMPTwAZKjc892ePbm35jRlP4haFc4=; b=C08PPD5OQgqG5nVqag8PVrOBMc
 VegON6FJ7UAwpbzRbykpopOQP6VHDaOhK5RrNUYtm5HXJXVmJ9/acbWRpbxxvuWxuehpGlPnwHL09
 3koAyLErRcMEfrFG30ndMVjGobncQpDNI5GTrn1KdYW9RNZLlY2mW0ZulXnDzWvJqPsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aAXDyKsO8jXDtyhMPTwAZKjc892ePbm35jRlP4haFc4=; b=eSfX6eO9DdY2gWn0BJaXbjYPr0
 kbYBPaBHj6HFEQHO/IMuGwYJN2Ec8SzbxISuFOLEz220xlxTTYBwwa7pglCePJ0ZWzS0ukmgi6gqN
 0c9CPdXSG7Og2L3c/PLiBNCxeOJyleD87WDjjGKY52uibP9QqXllY5SPJXh1eY3ivYkM=;
Received: from out162-62-57-49.mail.qq.com ([162.62.57.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZEVy-0002du-3a
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648570564;
 bh=aAXDyKsO8jXDtyhMPTwAZKjc892ePbm35jRlP4haFc4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=aZbZcFndY77Vqevyx+TzM6NAXUSAs5YtCZSWriUSn42D+HQbRmeCNSyZ0mzGSDsIl
 rU6kdzCAnaHNQf/MCq9xw6epW1pGTXdXzg74oqTwa7krnH+KTQw0O1rTvNOEf+V5gM
 f8nU5THcYcFWPtkbI4Wd8pEIG3FWODVEPwgL7TTk=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrsza5.qq.com (NewEsmtp) with SMTP
 id 32C96631; Wed, 30 Mar 2022 00:12:44 +0800
X-QQ-mid: xmsmtpt1648570368tseiwrc1y
Message-ID: <tencent_18DFCE075E9FCD148D18C7676CE0C4836306@qq.com>
X-QQ-XMAILINFO: NfHsM/dq2nWI4ewsMg299y37wdAjrnGr9L5yG7fIszAh32UC9XJ0qYNLPJ/kB6
 jTaz4bb7/au7PNKRl1saTGtxN6w+fR7g7TVvxOIvunBMqV2wEbHvfuwZuTVKGq2S8Vprf7yY+8Uy
 3N+CUISeOqYC6rTu9q2qV+aIWjGO2fzFaNNGkVox8m+LQOQBvQbOcEKUGnSGLr30VJdH4P4z3hpc
 4GzAY0LodAyTb8KGT8Bxu80TS4B2LJXxJh4gkfpv/Gg1eRtlxxzVrJel7cBHQ4qS896zEV7yNpW5
 TyNQrZ22XRD+2LcwNLFNIOPO/QvtN8vo+s51yBlTpqEbh+xBuX7ItA8bkBuBR3B2rrSmuo8xEEDu
 EXPcO1B+3XVM2JVwddS6h5VMujAi9A8S2FChhUG1vAevVjL2i8eI0khttOcvmdc9UPAUmN1Lutti
 Xx6ry/+pZH5BCJIakupvTNLLgUwwvhCPqjYkBRWYChjWFbdYu3ZzUtNGl+jg+XNeSMHgHC8Mrlw8
 77PjYaOuy9i6hZk1F/0FfgMhVVjjAdku6ipVEmN17ya987oYYIuQtTyx8QhIItTHNpE+vgV8M06N
 q4XBI9ftvRGg50IsLvJhr6cBjl7O/c2I+luNuaHhqfGINj3ckX5IO5P4NSy/zHyG0hNm7U7FkNXw
 jjZTeXoS8z9D4L7iYF1aVJVmg/zEkEr22DD3D/0Oi79FirE/Hfrgyt52F1KYuqWHMjhgHen3pxLO
 Wf+LsjFk4m8TtnhNl4lQOufJkHsgm3yqHnlEN9bmi+CIiwPXRYCugsJ+kB+KrhqKNZsi7fqBZwoo
 ZFBzmQiPy59XAbac4NrRoQ2ETG3U0KfpETCNGvmfPdgat1ePmHz5NoQjRN1jT/BLy0UPGWmhjvB5
 LkZsSn2Mz+R7aj6F/b6BId433MiY4GiKkAImRnvEsAGTXBzNNq8AR//2EO71pP76PDgdmZJfPEdY
 6mBCBq/Lx2afIFd7uXew==
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Wed, 30 Mar 2022 00:12:41 +0800
X-OQ-MSGID: <20220329161242.76457-4-chen.chenchacha@foxmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220329161242.76457-1-chen.chenchacha@foxmail.com>
References: <20220329161242.76457-1-chen.chenchacha@foxmail.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The administrator reads the user_count and msg_count file
 corresponding the ipmi device, ipmi traverse all intf, and count the number
 of users and messages. Signed-off-by: Chen Guanqiao ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 71 +++++++++++++++++++++++++++++ 1 file changed, 71 insertions(+) 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.49 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [162.62.57.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1nZEVy-0002du-3a
Subject: [Openipmi-developer] [PATCH v2 3/4] ipmi: msghandler: Get the
 number of users and messages through sysfs
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

The administrator reads the user_count and msg_count file
corresponding the ipmi device, ipmi traverse all intf, and count
the number of users and messages.

Signed-off-by: Chen Guanqiao <chen.chenchacha@foxmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 71 +++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 80ab88702c5f..a188dc7e7135 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -922,6 +922,19 @@ unsigned int ipmi_addr_length(int addr_type)
 }
 EXPORT_SYMBOL(ipmi_addr_length);

+static unsigned int intf_user_count(struct ipmi_smi *intf)
+{
+	struct ipmi_user *user;
+	int index, count = 0;
+
+	index = srcu_read_lock(&intf->users_srcu);
+	list_for_each_entry_rcu(user, &intf->users, link)
+		count++;
+	srcu_read_unlock(&intf->users_srcu, index);
+
+	return count;
+}
+
 static void intf_msg_count(struct ipmi_smi *intf,
 			   unsigned int *hp_count, unsigned int *count)
 {
@@ -2760,6 +2773,42 @@ static int bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
 	return __bmc_get_device_id(intf, bmc, id, guid_set, guid, -1);
 }

+static unsigned int get_user_count(void)
+{
+	struct ipmi_smi *intf;
+	int index;
+	unsigned int count = 0;
+
+	index = srcu_read_lock(&ipmi_interfaces_srcu);
+	list_for_each_entry_rcu(intf, &ipmi_interfaces, link)
+		count += intf_user_count(intf);
+	srcu_read_unlock(&ipmi_interfaces_srcu, index);
+
+	return count;
+}
+
+static void get_msg_count(unsigned int *hp_count, unsigned int *count)
+{
+	struct ipmi_smi *intf;
+	int index;
+
+	*hp_count = 0;
+	*count = 0;
+
+	index = srcu_read_lock(&ipmi_interfaces_srcu);
+	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
+		int hp_msg_count = 0, msg_count = 0;
+
+		rcu_read_lock();
+		intf_msg_count(intf, &hp_msg_count, &msg_count);
+		rcu_read_unlock();
+
+		*hp_count += hp_msg_count;
+		*count += msg_count;
+	}
+	srcu_read_unlock(&ipmi_interfaces_srcu, index);
+}
+
 static ssize_t device_id_show(struct device *dev,
 			      struct device_attribute *attr,
 			      char *buf)
@@ -2929,6 +2978,26 @@ static ssize_t guid_show(struct device *dev, struct device_attribute *attr,
 }
 static DEVICE_ATTR_RO(guid);

+static ssize_t user_count_show(struct device *dev, struct device_attribute *attr,
+			       char *buf)
+{
+	unsigned int user_count = get_user_count();
+
+	return snprintf(buf, 20, "%u\n", user_count);
+}
+static DEVICE_ATTR_ADMIN_RO(user_count);
+
+static ssize_t msg_count_show(struct device *dev, struct device_attribute *attr,
+			      char *buf)
+{
+	unsigned int hp_count, count;
+
+	get_msg_count(&hp_count, &count);
+
+	return snprintf(buf, 40, "hp msg:%u, msg:%u\n", hp_count, count);
+}
+static DEVICE_ATTR_ADMIN_RO(msg_count);
+
 static struct attribute *bmc_dev_attrs[] = {
 	&dev_attr_device_id.attr,
 	&dev_attr_provides_device_sdrs.attr,
@@ -2940,6 +3009,8 @@ static struct attribute *bmc_dev_attrs[] = {
 	&dev_attr_product_id.attr,
 	&dev_attr_aux_firmware_revision.attr,
 	&dev_attr_guid.attr,
+	&dev_attr_user_count.attr,
+	&dev_attr_msg_count.attr,
 	NULL
 };

--
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
