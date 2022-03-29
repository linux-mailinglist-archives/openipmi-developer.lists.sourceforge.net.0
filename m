Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 076504EB1A2
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Mar 2022 18:14:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZETx-000439-5w; Tue, 29 Mar 2022 16:14:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nZETw-000430-Ba
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:14:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N4oazMyRxgfyyzwKDfheJCYvuPkBFIKFycEMpS8jt70=; b=aEnKYRQDLLkrEubfrt2S7SeAUE
 bPKzc7GkAc/IFRQJFe9dh8185c6ge9J7uycSTMeUerDeXxERCKbZIuGi8h4BmKPYmVvGaCZe0VwCC
 jGTarZxluUsW5BeHFhEimUhhQ6ZBWigj+cn5k0yGGvBLP2lg5Qn5m7yn/CQWhQNKe6A0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N4oazMyRxgfyyzwKDfheJCYvuPkBFIKFycEMpS8jt70=; b=G9L/t0ggY5eWJ0f/5ZX+5aHV7Q
 Mu3XYOlIRXLwbBeMounZbZfFHbprJTQOBqX+BRIq8euTE/Db2SH4Ym7yvj6BOY0hmSU63gYTFnt/3
 4PCjkYPoLVOxUI5kkT+bt1YWAvAUhpo1f7MwH/N1XfIMlz8KiMB/1+FoB1xBwPa8rjBM=;
Received: from out162-62-57-210.mail.qq.com ([162.62.57.210])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZETt-00Fy1r-KZ
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Mar 2022 16:14:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648570436;
 bh=N4oazMyRxgfyyzwKDfheJCYvuPkBFIKFycEMpS8jt70=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=YBLXkBGIXB40mM/qsxx70hXBT1ZC3eIHpInYM+E7GJRgTLaNtWXnWcqWBaIXkG3oX
 EDquHVGGJANVnTsJAXiiRMyccUqsbqN94QxWRcIll+iMJ8yu3hcxexrucC/JECXADP
 ubeJkpvOJfoP16c3U0ENAsaBsw8Y9x4YY24+8OfI=
Received: from localhost.localdomain ([120.245.132.52])
 by newxmesmtplogicsvrsza5.qq.com (NewEsmtp) with SMTP
 id 32C96631; Wed, 30 Mar 2022 00:12:44 +0800
X-QQ-mid: xmsmtpt1648570366truq3wpuv
Message-ID: <tencent_D9F2E3B84F62AA514CF2332F90E521A9CF05@qq.com>
X-QQ-XMAILINFO: NgiXOM0lDIKdlfD9qqmp/lF6r0XM2twCukjeb5ROVHoDHFtlu3Kb4ggKK8CBIQ
 5HjRKXhBED6dZCBmcENUiNu/kRziAGLaMS2qCfrbrS87AhTSjQoRKho8Xv/5aOjynnyZ9o44RCUW
 tW7SYHD/coCYm1p6Wgm490Qgw70iy4PDUHsEe2ayJcdi0TZGQh0FJQjekmBx3E7UOMYdOQExkDLK
 schjDCJIZoLHNzNr4XpekNkbxUjceYTXgkusTWK/IUmfsEsfEw9f5nZjm1bC0R/TvgvFxmKLRje6
 n4DmEg18b+3a78IFh0bQ2M6ENeaMEe+unonvCKjXRfDFGK4JaQUGumoNulN0YxVOeCGVnir6d4rA
 RejKUmeVz+4fUMidtxN+V5QAd1nYdsgFAcvZftCYOa4RwzoV5eBpvBtUxjJuEcqmceVskF/d8llO
 wpTTHYzhC/5Lq2TaucUuT9y9HZGms3L8+Yqw8V6cz8wmij3uRt0W7AXS1Qu99I8rRix13hru/TEk
 ARzXMCDm7iUFHfXlznXdccy6jVU+OjMoernyLDrKS5B48U3ui/aqf/Z3cDP/wxwUwcEJqNQstsWH
 0SVHDkPgmf8vcglF2WV7sWdNENRF8jDDCao2UeC5Yg2um3aY8sw2k37h7e162obIkyyIthmNPiv1
 Ri/FWnZKSpwySckvlNvDyXeusVnpUVSyMNkJnl9IiG/Ydkt3NcpfCGRxC+UJkHpxJufIHufWNZCf
 ndBKB8xwA6umhdD1l4+9z/XmcV7VRPojgGovPYJgCAHvSdpge+pZj3jbFrNSR4Ea5uY1XXLmNu3A
 +YeWLfoljPBAwcxDzJYE/BLBeoHNITCSr4xLrM5Xhfu7RkWa2fMBUe94W/DbjfaCmjsB+gfhkur2
 CMAXgU//UB94v87ILgY40lT51v7hC776DuUpGpHLiriq1cUf4+xn3IKo6b72S1+xOu0bxrYgfzHy
 RzWvWDCDUc85H31HU+sA==
From: Chen Guanqiao <chen.chenchacha@foxmail.com>
To: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Wed, 30 Mar 2022 00:12:39 +0800
X-OQ-MSGID: <20220329161242.76457-2-chen.chenchacha@foxmail.com>
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
 Content preview: The administrator sets the limit for the number of users by
 modifying /sys/module/ipmi_msghandler/parameters/default_max_users.
 Signed-off-by:
 Chen Guanqiao --- drivers/char/ipmi/ipmi_msghandler.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+) 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [162.62.57.210 listed in wl.mailspike.net]
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
X-Headers-End: 1nZETt-00Fy1r-KZ
Subject: [Openipmi-developer] [PATCH v2 1/4] ipmi: msghandler: Add a limit
 for the number of users
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

The administrator sets the limit for the number of users by modifying
/sys/module/ipmi_msghandler/parameters/default_max_users.

Signed-off-by: Chen Guanqiao <chen.chenchacha@foxmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c59265146e9c..7886c8337368 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -145,6 +145,12 @@ module_param(default_max_retries, uint, 0644);
 MODULE_PARM_DESC(default_max_retries,
 		 "The time (milliseconds) between retry sends in maintenance mode");

+/* The default maximum number of users per intf */
+static unsigned int default_max_users = 50;
+module_param(default_max_users, uint, 0644);
+MODULE_PARM_DESC(default_max_users,
+		 "The maximum number of users per interface");
+
 /* Call every ~1000 ms. */
 #define IPMI_TIMEOUT_TIME	1000

@@ -579,6 +585,9 @@ struct ipmi_smi {

 	atomic_t stats[IPMI_NUM_STATS];

+	/* The number of user in this interface */
+	atomic_t user_count;
+
 	/*
 	 * run_to_completion duplicate of smb_info, smi_info
 	 * and ipmi_serial_info structures. Used to decrease numbers of
@@ -1182,9 +1191,11 @@ static void free_user_work(struct work_struct *work)
 {
 	struct ipmi_user *user = container_of(work, struct ipmi_user,
 					      remove_work);
+	struct ipmi_smi *intf = user->intf;

 	cleanup_srcu_struct(&user->release_barrier);
 	vfree(user);
+	atomic_dec(&intf->user_count);
 }

 int ipmi_create_user(unsigned int          if_num,
@@ -1230,6 +1241,12 @@ int ipmi_create_user(unsigned int          if_num,
 	goto out_kfree;

  found:
+	if (atomic_inc_return(&intf->user_count) > default_max_users) {
+		atomic_dec(&intf->user_count);
+		rv = -EBUSY;
+		goto out_kfree;
+	}
+
 	INIT_WORK(&new_user->remove_work, free_user_work);

 	rv = init_srcu_struct(&new_user->release_barrier);
@@ -3548,6 +3565,7 @@ int ipmi_add_smi(struct module         *owner,
 	spin_lock_init(&intf->events_lock);
 	spin_lock_init(&intf->watch_lock);
 	atomic_set(&intf->event_waiters, 0);
+	atomic_set(&intf->user_count, 0);
 	intf->ticks_to_req_ev = IPMI_REQUEST_EV_TIME;
 	INIT_LIST_HEAD(&intf->waiting_events);
 	intf->waiting_events_count = 0;
--
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
