Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D9E4E8901
	for <lists+openipmi-developer@lfdr.de>; Sun, 27 Mar 2022 18:51:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nYVz4-0004wJ-7u; Sun, 27 Mar 2022 16:51:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nYVz2-0004wD-VC
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Mar 2022 16:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1GEBiGQAyrtXMxo13rUvg78furDdVDIl83iCaIGMI1M=; b=Twe8wGFfj1bnd71+jwKnt26jz+
 bmUW+iifIb5rTfGGPxmOGsnpepwNQRjTgz8E6GwpAdXX9NwT/AvBCeszUXNUkch5vjZuOYustKUUD
 Dr3hK+lyNbHQnZB6qvIVYPaA24KVyYzjN3gn3wY4PB0m9RF15X3ROKNMfPxuEEiSGa9Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1GEBiGQAyrtXMxo13rUvg78furDdVDIl83iCaIGMI1M=; b=PaU8VK7/BKP78vCpBhvXugBBRQ
 gde4NciUsStx5GuxQ5+6NxVb/D6r+PrZUYc66sc1ECSPe/dj+5HqKoDvXHZrDW2aGPJcUUVIaxOVf
 udJna34VapVrdWyOsfp3I/dwHxazeScGHcA/RmoR6Y0LspwrcPemc+LWhSsITPrEBRYg=;
Received: from out162-62-57-64.mail.qq.com ([162.62.57.64])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYW6u-00DnkE-93
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Mar 2022 16:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648399874;
 bh=1GEBiGQAyrtXMxo13rUvg78furDdVDIl83iCaIGMI1M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=UxfiQr0mz9T1HuyYbX+n46ZXUODxUBabu4jToUPTZ0SkYfbB31CW0OLr6r5birh7w
 odsPk0cMxJZDmdr7VmK5kCjhcsPASW92GMo/5B5U3gHdBNEO9KyYE5C0gAoaWqiyIK
 3Nm9gbHGRKz/k5s/JGugjZPzZ7/zzrb3fPQnLdM8=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrszc10.qq.com (NewEsmtp) with SMTP
 id BEF2A844; Mon, 28 Mar 2022 00:47:47 +0800
X-QQ-mid: xmsmtpt1648399669tvx86oryx
Message-ID: <tencent_FF9ED8FF677BA0DB0345DFDFC7705FE3D406@qq.com>
X-QQ-XMAILINFO: MKeP4aHkmE0NsWw2kkSuc8SEXlOwFqqZScH84Frk/w/Q56/+U7kvZr6nwmorvX
 X+cjKN/3mmuAJ0yzoS8FmEG+NxRIc10Tu40re70XoaDn1SAc/VcPIihg6QZB9EP7BPAfrNIMveJx
 bpVJz0HkxJWgUEF7QoJO0efZoldENGRUk1hdm6LkmYD8Oh2rqQJH3oC6Zi28lpYfWM45XoM91TN+
 CQuwN47MNrnRnv4N9gANxSFz8XVG/J/3BkHQ4zK5vjcblHTiaNxatgcjaHoPpV9FPIuzjqXWRQZE
 vy3M1yfkg+e8bKKhx3Dix6dNUOc/pBMERy0kLUjdsnYMHm+TWJIb9HkD6I+YDh2Ga9uMIvYGPjLP
 yNmec/pfXI3BMs6id2CbJnMzog+X39q0PIRyAx2loShKTbLRHJQV2xEYRBTKTbMKDmIdTUNIQQkn
 GGVTLb5T7W3AoHV481Dj/AbiPHzdxRF3EuTGRfofrz8XZ4zeHuyliclx/Q0ieMTBAN/9lYfsBO/4
 ahApK9IJ960MpSAkkw4Kxw8kzEEiesitoJfvtoTWYX8/TnplOg48Ax6h+C84IpeVYw5DPePRCjsS
 ktLaIJd7nZ3SotrO3bcP7kB1i0PaFPSdRUmvGGWkABrE7zxduh9nWNOuLZeaLK9hd0gWVFid74bR
 dGZMKghMWfWhn9k5iiu7OmaXOqxJaeCNQd0X/4N5OI7SDPgjLkWA2D5hwZWYSfiC6kHG7HGNtkwG
 CT0wnLH5eVdd51pYxwmSyfyw2qIbl801lyctwv4/1kyyKLhJ5UsaLludmIok8XW4kN9UCnnR15r+
 AEsiBd6+ztzje+hP5/A9ppLySj3ZaItKrDCAyvL+1MzY2IVeX2IYlli7l5g6A+z9q+TdAtn1qr7e
 UrxPCfEdECqFLJQmPSHVMlZymlAXFCGkLlI37XEl99VtUW6H01uzo2tde4m9Wgn5l9xkMUFQJfez
 8HdmzZ860M8NIcpQou7tLY0Uuy2jqiu2hXI5N+zQyVDUsE5ZQhjg==
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Mon, 28 Mar 2022 00:47:42 +0800
X-OQ-MSGID: <8cf886947890bb6d4d2c8b61a96676e404423c36.1648397283.git.chen.chenchacha@foxmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1648397283.git.chen.chenchacha@foxmail.com>
References: <cover.1648397283.git.chen.chenchacha@foxmail.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The administrator reads the user_count file corresponding
 the ipmi device, ipmi traverse all intf,
 and count the number of user. Signed-off-by:
 Chen Guanqiao --- drivers/char/ipmi/ipmi_msghandler.c | 33
 +++++++++++++++++++++++++++++ 1 file changed, 33 insertions(+) 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.64 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [162.62.57.64 listed in wl.mailspike.net]
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
X-Headers-End: 1nYW6u-00DnkE-93
Subject: [Openipmi-developer] [PATCH 1/3] ipmi: msghandler: Get the number
 of user through sysfs
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

The administrator reads the user_count file corresponding the ipmi device, ipmi
traverse all intf, and count the number of user.

Signed-off-by: Chen Guanqiao <chen.chenchacha@foxmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 33 +++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c59265146e9c..e14beb51cae4 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2706,6 +2706,29 @@ static int bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
 	return __bmc_get_device_id(intf, bmc, id, guid_set, guid, -1);
 }
 
+static unsigned int get_user_count(void)
+{
+	struct ipmi_smi *intf;
+	int index;
+	unsigned int total_count = 0;
+
+	index = srcu_read_lock(&ipmi_interfaces_srcu);
+	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
+		struct ipmi_user *user;
+		int intf_index, count = 0;
+
+		intf_index = srcu_read_lock(&intf->users_srcu);
+		list_for_each_entry_rcu(user, &intf->users, link)
+			count++;
+		srcu_read_unlock(&intf->users_srcu, intf_index);
+
+		total_count += count;
+	}
+	srcu_read_unlock(&ipmi_interfaces_srcu, index);
+
+	return total_count;
+}
+
 static ssize_t device_id_show(struct device *dev,
 			      struct device_attribute *attr,
 			      char *buf)
@@ -2875,6 +2898,15 @@ static ssize_t guid_show(struct device *dev, struct device_attribute *attr,
 }
 static DEVICE_ATTR_RO(guid);
 
+static ssize_t user_count_show(struct device *dev,
+			       struct device_attribute *attr, char *buf)
+{
+	unsigned int user_count = get_user_count();
+
+	return snprintf(buf, 20, "%u\n", user_count);
+}
+static DEVICE_ATTR_ADMIN_RO(user_count);
+
 static struct attribute *bmc_dev_attrs[] = {
 	&dev_attr_device_id.attr,
 	&dev_attr_provides_device_sdrs.attr,
@@ -2886,6 +2918,7 @@ static struct attribute *bmc_dev_attrs[] = {
 	&dev_attr_product_id.attr,
 	&dev_attr_aux_firmware_revision.attr,
 	&dev_attr_guid.attr,
+	&dev_attr_user_count.attr,
 	NULL
 };
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
