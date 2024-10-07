Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 658FC992FAE
	for <lists+openipmi-developer@lfdr.de>; Mon,  7 Oct 2024 16:43:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sxoxd-0008Da-CC;
	Mon, 07 Oct 2024 14:43:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jiawei.ye@foxmail.com>) id 1sxdqM-0002ov-NI
 for openipmi-developer@lists.sourceforge.net;
 Mon, 07 Oct 2024 02:51:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject
 :Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4HNlod/GQAKS0TpjmtDwCN2HAMVVUR6BW+VdZTEeWBU=; b=PkEC/HCCMulfAnDBhDZKWd5bzv
 w22oCAav61GC8MPuspxiedfqVCzAw7ZlB8OlFGQAOmppzSymP3+baamADznwjnx0Klqgc3ok5A88A
 HUAtvUVVNYpZI63lZewhvXepW+mWtSTpg/biLHbcTdmBJ/tWg5AotI+ag39nn7azBa3o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Date:Subject:Cc:To:From:Message-ID
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4HNlod/GQAKS0TpjmtDwCN2HAMVVUR6BW+VdZTEeWBU=; b=V
 vHyJwj15tDLSC4pWgg8507dj+z3ie/uiiJQ1HdJajYVqYknHQdiCJBY81ihSD2jY6l8tqDiKuTQvX
 IOSevqi1u6O0fxm4N6OQbeMW3EhoY1NtAPwH5uLygNgChlu7ZdkJK1FxggiuNUkgGVVIoFEsMWJId
 gV0ypj54SzRdFtW8=;
Received: from xmbghk7.mail.qq.com ([43.163.128.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sxdq5-0002tT-DU for openipmi-developer@lists.sourceforge.net;
 Mon, 07 Oct 2024 02:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1728269457;
 bh=4HNlod/GQAKS0TpjmtDwCN2HAMVVUR6BW+VdZTEeWBU=;
 h=From:To:Cc:Subject:Date;
 b=owCKMb5fYOdOA7lsUeDG6UFGJmbudLK1xC7KVk6evr2pu0Uh81N0zMjhepG8VE1PC
 pJSD0F6X98kRkb5KBMr+JrbdseOm8+2cUq2/529T8DYhGLhfwSgHmo9yAwWZrp/OVC
 S3wPDS2WqwUi4mEBvORVO11WzBeTiCRRbrzrjJzE=
Received: from localhost.localdomain ([114.246.200.160])
 by newxmesmtplogicsvrszb16-1.qq.com (NewEsmtp) with SMTP
 id 51E23C76; Mon, 07 Oct 2024 10:20:30 +0800
X-QQ-mid: xmsmtpt1728267630thsxldi9h
Message-ID: <tencent_4B24C93D2D36F13D40BFA8A5D22919CE3E0A@qq.com>
X-QQ-XMAILINFO: NsqkKhjtZjetOnCa2PejkiGuLYOSTB97ZBazDYG9WFrGYlMEZAHjyp9itfI0Vw
 9hYovwyn1HVe8CJsSkrKxP1ZKJv3U4DEoXjkzm2Z+Y1KeZCLS0OzJfEEX3CQwooHr8UypXutNv/F
 lvZmew6WEoGQHGDxuuvXfowOtlxvNthFWTgefFHr/Ug9oCx3pHyvB5gJoVDDnTkAHZjj3JvTKguv
 dqla0nlfk2CrUEqQhl/qrpQGjAiyz84emV3EuI2HH72QOEamX3jekEepc1eMfPJYXUkjNzttTyNM
 iMtk6ejnbYz73qle3+Ew/r9AC6ZctYeP46GXBTBF6n8HFRonutj5juyqJmPzLx7JPxeNYOGYMrJd
 rbsrs5M6IT/sOQLazAipHa7rQnEh/HeFCa44OxXn4j93JcJHAHIoOq+rpSqrXNICxdbWLiiHjyQI
 rb27G+qs5KVqDj0/thmtYLu4QcyAMvMbaAEXom3EJzEAUYo6ErlAE+AuvX+vfmylu9B0ULGHPwBh
 sfD4nMKjhfw1BgN8kQjdSDPDhnlg9/wx3TCYZAqspr25UAyEY1K+fT7pUAmg5dowQxomBeinjv3O
 yiWYqq0xaEag34a9MDq9b9JDBcjv/DonLnSnCOHx+dVoIPrYxCDXQq/xC/65LWLzXyT/TBtG+QX5
 ZqpLD06K34yrLLQvjoILDZixjlwISlPbZCrDPLGlse2BiMkBHLlH/LeAYb+gzh8TWHpT706Gz1+9
 g2ini5CyzzaKLrt7JWQ5iIuv4lLzfFE4t5XtkgYNoQJ6MOqMjKbXgmmmFtyJp2fgvE4pn1hxYIEj
 hIlHM1t0EEU+Yg+lTlvEqQxrO+N/bqe8Vj+mFqGhgLvWHJcZdft3fELJ+cztgynsZI39Kuw1cFOT
 lcTrXxVV5FbmV1qiPl3gjq4f4rOrPcVJDQ2iASUy+Y5acY0BJPjE4QCANV6TtPKiDTJrudnOIbU0
 4Q1esHHWn5mw0bqsxOfI44Xqe3l8M30IPbPvAPqfuCJHQHHOGAgyo85fcRDuqlqbQ8wP2mthsxMq
 TLfAmED72eGiMN8kLlXPqwLQUSO9j/G/bE73iGog==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
From: Jiawei Ye <jiawei.ye@foxmail.com>
To: minyard@acm.org
Date: Mon,  7 Oct 2024 02:20:30 +0000
X-OQ-MSGID: <20241007022030.368955-1-jiawei.ye@foxmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the handle_read_event_rsp() function, after switching from
 RCU to SRCU for accessing intf->users, the call to rcu_read_unlock() in the
 error handling path was overlooked and not updated. According [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jiawei.ye[at]foxmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1sxdq5-0002tT-DU
X-Mailman-Approved-At: Mon, 07 Oct 2024 14:43:44 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Fix incorrect unlock in error
 path when using SRCU
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In the handle_read_event_rsp() function, after switching from RCU to SRCU
for accessing intf->users, the call to rcu_read_unlock() in the error
handling path was overlooked and not updated. According to SRCU usage
rules, srcu_read_unlock() should be used with the index returned by
srcu_read_lock(). Using rcu_read_unlock() instead is incorrect and can
lead to unpredictable behavior, such as data races or synchronization
issues.

This possible bug was identified using a static analysis tool developed
by myself, specifically designed to detect RCU-related issues.

To address this, srcu_read_unlock(&intf->users_srcu, index) is now called
in the error path, ensuring that the SRCU lock is correctly released
using the proper function and index. This prevents potential
synchronization issues and adheres to correct SRCU usage.

Fixes: e86ee2d44b44 ("ipmi: Rework locking and shutdown for hot remove")
Signed-off-by: Jiawei Ye <jiawei.ye@foxmail.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e12b531f5c2f..3ef46df78cdf 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4426,7 +4426,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
 
 		recv_msg = ipmi_alloc_recv_msg();
 		if (!recv_msg) {
-			rcu_read_unlock();
+			srcu_read_unlock(&intf->users_srcu, index);
 			list_for_each_entry_safe(recv_msg, recv_msg2, &msgs,
 						 link) {
 				list_del(&recv_msg->link);
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
