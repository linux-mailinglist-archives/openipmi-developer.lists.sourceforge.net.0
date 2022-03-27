Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F304E88FB
	for <lists+openipmi-developer@lfdr.de>; Sun, 27 Mar 2022 18:49:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nYVwx-0004sq-13; Sun, 27 Mar 2022 16:49:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nYVwv-0004sj-Ps
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Mar 2022 16:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aGbCOIhVGSt1Fp65mIowxPwh1FP/AAKeZhhFmidug4Q=; b=V5qyqnfI6wHr4CalyFkwabXJv1
 Kmvpl2aNX2Pe/HyNZeKYwnpuAZO1jPqaJd8XvWifahTu0mygRdDiqfZcdxthYSY8SkULLrda5vnKh
 u3Sc2voGcAxLRVo3IAepRY789k6VHkq/g4Vs/fd1WJSSPTYH+WM4lIj74LTqLuHWL+cU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aGbCOIhVGSt1Fp65mIowxPwh1FP/AAKeZhhFmidug4Q=; b=gcNjirj+C/AIj2si8XHE5M+bM0
 L5n/9Ue9KrPotGwV97W8wafWGvVe25Jreo5XIIwG5vWPB1N+bWM9Bp00q1LNGH9fWpiNWimxcPHDm
 P0YfIeyvqeji5q9zD5ndEsG4THsSgLMMcX0WTzJqGG/mqkPe2x9dmoFVVbd4wUaiPQrg=;
Received: from out162-62-57-252.mail.qq.com ([162.62.57.252])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nYW4p-0001TM-V0
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Mar 2022 16:49:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648399746;
 bh=aGbCOIhVGSt1Fp65mIowxPwh1FP/AAKeZhhFmidug4Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=bBH8emZnLiFKOolAPQrTcxwpgG+vDBGwTOtxYahPF+5F7a4jVp02/hSyUtl3cwSPq
 hiE9ZqCKTQUSFSBfdspMe5eFIA9Sd52Y9azIzCuJ9+FBDHGPuJmxQQJVp1xdF3rLQ5
 SNSXlskkV9AN/ft8F2Ke4MGw62kpeF70mIbFB6e8=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrszc10.qq.com (NewEsmtp) with SMTP
 id BEF2A844; Mon, 28 Mar 2022 00:47:47 +0800
X-QQ-mid: xmsmtpt1648399670teidx7g3p
Message-ID: <tencent_15F1836A9FD7475D1FCED49818CC6778A006@qq.com>
X-QQ-XMAILINFO: ORuEwgb9eurkdC4wUAENY3XBZ0pJZrPkJK/n3IRMG8QGa9y5M0AJB0dASrm3EE
 yQv57yPFwn+ycpb8Xh0EeDr/MjZ/Ghdn3/4yFLtJ8QcKyNMmoAij00DZeMuOlek0cSTU0BfYDtuo
 J+vdnck1v96RwgKcm5Gpa9eDSMtUyicbSZqQ9B5zEerU7O3V17T2wDTgLqFnm+OVlwt5jwwO0VzH
 Ko6Do5Y7IOtm84rHhC4b3ODGNkL4oQ7/MR8r7z8hHmKx3wWtuGDs0nDWfL3EAr9ydkB/0DXlp7g9
 DUb9xRsVfLiXRn+FYt0WLGVs2c6dn2zIBaueI3pkTclkBu5vhYfFQzredwkchzJMoJcT1+DQ26Sc
 3uI5TpDFGjHKX2tMA4bCJkR8bdRUHcf/5hbRvuw5RAiqfTMdCdLitDXFtoboMrtgFn1pIJSV7NvI
 S/5kl3qC5jnoE1wFnkN7nGp6nOhAJ5sjdK/3ouFyCYssDx/Y+PVpa6bIfw6TKOCsnVXf7ha7Pwt5
 aYqd3d1bseK80iH3DKeEomFdeD1b/VwHLlhif8m33eg7/nMg600I6EfZevY3LQ6CeEWGk3lrlJxc
 fZhhheZlsVTQ7pEwKedd3LgNQ15CveSrpiLV0xu24tZjyOsHr3Pt3zNg8n4Q+hEx7tNhiSEdLTGA
 sCekX8p5YwTf0S747wgZtPDc7tV2skwWnlH75/y5zzuOJtRh7N5pd42KPvQm4EY0biSj9KBZ9gqW
 dUJbvKm1rMeZ9fT5EFtOA2i7nmLrFvTyrfjrMelK0pOk841Cdh6+NKt2AAgwj97VflhIjC7CCPXZ
 Vmoc6lws9lk3rJV+F92KL0OAXuF9NE9Zt7ZBvd3AG4IgYdthHEnNlGQxoyjeOotBQ9kKSluso2Wi
 BKvns0YMxV9RKco0V/VYjKy7o0fhTK+pbrD+4voD12R7Hm0wUceLZJW2+yGU5+xJaWetFYyjiNNZ
 gJDYQCQbhubA8MRRBkO+64lLUd484eaXYS1nkoRw8JlzcErLeFSsDCXqUfzZHnpKB8k3Fftn8=
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Mon, 28 Mar 2022 00:47:43 +0800
X-OQ-MSGID: <e1875e3eba4f8d6a4f861a6b43613b6f778bd095.1648397283.git.chen.chenchacha@foxmail.com>
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
 Content preview:  Reads the message_count file corresponding the ipmi device, 
 ipmi traverse all intf, and count the number of message and high priority
 message. Signed-off-by: Chen Guanqiao --- drivers/char/ipmi/ipmi_msghandler.c
 | 44 +++++++++++++++++++++++++++++ 1 file changed, 44 insertions(+) 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [162.62.57.252 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.252 listed in list.dnswl.org]
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
X-Headers-End: 1nYW4p-0001TM-V0
Subject: [Openipmi-developer] [PATCH 2/3] ipmi: msghandler: Get the number
 of message through sysfs
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

Reads the message_count file corresponding the ipmi device, ipmi traverse all
intf, and count the number of message and high priority message.

Signed-off-by: Chen Guanqiao <chen.chenchacha@foxmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 44 +++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e14beb51cae4..0238be81c435 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2729,6 +2729,38 @@ static unsigned int get_user_count(void)
 	return total_count;
 }
 
+static void get_msg_count(unsigned int *hp_count, unsigned int *count)
+{
+	struct ipmi_smi *intf;
+	int index;
+	int hp_msg_count = 0, msg_count = 0;
+
+	index = srcu_read_lock(&ipmi_interfaces_srcu);
+	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
+		struct ipmi_smi_msg *msg;
+		unsigned long flags;
+		int run_to_completion = intf->run_to_completion;
+
+		rcu_read_lock();
+		if (!run_to_completion)
+			spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
+		if (!intf->in_shutdown) {
+			list_for_each_entry(msg, &intf->hp_xmit_msgs, link)
+				hp_msg_count++;
+
+			list_for_each_entry(msg, &intf->xmit_msgs, link)
+				msg_count++;
+		}
+		if (!run_to_completion)
+			spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
+		rcu_read_unlock();
+	}
+	srcu_read_unlock(&ipmi_interfaces_srcu, index);
+
+	*hp_count = msg_count;
+	*count = hp_msg_count;
+}
+
 static ssize_t device_id_show(struct device *dev,
 			      struct device_attribute *attr,
 			      char *buf)
@@ -2907,6 +2939,17 @@ static ssize_t user_count_show(struct device *dev,
 }
 static DEVICE_ATTR_ADMIN_RO(user_count);
 
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
@@ -2919,6 +2962,7 @@ static struct attribute *bmc_dev_attrs[] = {
 	&dev_attr_aux_firmware_revision.attr,
 	&dev_attr_guid.attr,
 	&dev_attr_user_count.attr,
+	&dev_attr_msg_count.attr,
 	NULL
 };
 
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
