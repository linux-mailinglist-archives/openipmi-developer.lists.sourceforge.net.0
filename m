Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A555EDBF1
	for <lists+openipmi-developer@lfdr.de>; Wed, 28 Sep 2022 13:41:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1odVRF-0004P7-6T;
	Wed, 28 Sep 2022 11:41:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yuancan@huawei.com>) id 1odApf-0004W4-S7
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 13:41:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3O2vyTOxtKopLzyecnQP18EviPZ+T6ooU2fdEvkizeQ=; b=Kmu4Tx6dN9Io75UHTMHBXwNR1s
 IlVjksfKZDRCjMl+oeqojGszfVs3Mm19Bsxf8vnIbZ55D74+UOkmZOFpyftku6B/p8CKnWCJMtaGY
 DiRp3syTRl9U6AU7aF4VBTCJVhU19y0nuylFSQ/BThYcox4cFyfzS6FZlkUbiYn6F/r0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3O2vyTOxtKopLzyecnQP18EviPZ+T6ooU2fdEvkizeQ=; b=U
 xZhLH7uS7TwsqYyV7sNF6ZoynxKlhII7HxvoTqIeZbindi2cPSmF4ex2hujCQxeDXZhkP+t+rDIal
 /RaJsOoYLDxHicia/q8FtKQ2ZyDcV+MVe2dhMnRYOzq1zAxQJE2cEHoEHUZQ1RG3GAuvK1Mle11nx
 sQKV7gWndlOXyFBA=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1odApb-004Ydd-4l for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Sep 2022 13:41:07 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.57])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4McLLN0wCczHqM1;
 Tue, 27 Sep 2022 21:38:36 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 27 Sep
 2022 21:40:51 +0800
To: <minyard@acm.org>, <openipmi-developer@lists.sourceforge.net>
Date: Tue, 27 Sep 2022 13:38:14 +0000
Message-ID: <20220927133814.98929-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: After commit e86ee2d44b44("ipmi: Rework locking and shutdown
 for hot remove"), no one use struct watcher_entry, so remove it. Signed-off-by:
 Yuan Can <yuancan@huawei.com> --- drivers/char/ipmi/ipmi_msghandler.c | 6
 ------ 1 file changed, 6 deletions(-) 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1odApb-004Ydd-4l
X-Mailman-Approved-At: Wed, 28 Sep 2022 11:41:28 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Remove unused struct
 watcher_entry
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
From: Yuan Can via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Yuan Can <yuancan@huawei.com>
Cc: yuancan@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

After commit e86ee2d44b44("ipmi: Rework locking and shutdown for hot remove"),
no one use struct watcher_entry, so remove it.

Signed-off-by: Yuan Can <yuancan@huawei.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c8a3b208f923..49a1707693c9 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -736,12 +736,6 @@ static void intf_free(struct kref *ref)
 	kfree(intf);
 }
 
-struct watcher_entry {
-	int              intf_num;
-	struct ipmi_smi  *intf;
-	struct list_head link;
-};
-
 int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher)
 {
 	struct ipmi_smi *intf;
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
