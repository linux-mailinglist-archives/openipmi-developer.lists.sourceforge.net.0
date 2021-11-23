Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCD0459DD8
	for <lists+openipmi-developer@lfdr.de>; Tue, 23 Nov 2021 09:23:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mpR5G-0000Hz-Rk; Tue, 23 Nov 2021 08:23:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <weiyongjun1@huawei.com>) id 1mpR5F-0000Ht-Ak
 for openipmi-developer@lists.sourceforge.net; Tue, 23 Nov 2021 08:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C3i30rnaenhE5hUKWFZanDDLL/jAeRx9OnhX4f/IDEo=; b=JtKmAp/RZyRR5KMOAVlLyHku5I
 FuyNcbIqdLrpEm4eGcf2289yYmYMJ7bcRkdyMk65t4eM+Rmxtlh99AZWXlw0pCLBRsqRl+IKXuvtz
 9i/eFS1at7gZrJb7cAJN0P5GNRQAsLQbalzmxoNS259vMyOG5QgQiTjQbI0FMC2Cp/Lg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=C3i30rnaenhE5hUKWFZanDDLL/jAeRx9OnhX4f/IDEo=; b=I
 5q7u2bTKDzQp44Aknw1cFOhn8F7rf7GddqYCL9YQz056HVSGMVFdSCeHzjlSoOlrkMRMJSMYMund+
 aA6XsuFrUV5H7eVpRFjk5mhPTnL0yrWzToLWfYl48Hz41h0rolANrGz5DuU/Pt62S9d6R+TxqC0EB
 mO0oSZcv/Ruzqm+4=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpR5E-0008VI-5d
 for openipmi-developer@lists.sourceforge.net; Tue, 23 Nov 2021 08:23:21 +0000
Received: from dggeml709-chm.china.huawei.com (unknown [172.30.72.57])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Hyxpp70wVzcb8k;
 Tue, 23 Nov 2021 16:18:10 +0800 (CST)
Received: from localhost.localdomain (10.175.102.38) by
 dggeml709-chm.china.huawei.com (10.3.17.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.20; Tue, 23 Nov 2021 16:23:10 +0800
To: <weiyongjun1@huawei.com>, Ioanna Alifieraki
 <ioanna-maria.alifieraki@canonical.com>, Corey Minyard <minyard@acm.org>
Date: Tue, 23 Nov 2021 08:36:18 +0000
Message-ID: <20211123083618.2366808-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.102.38]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggeml709-chm.china.huawei.com (10.3.17.139)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The sparse tool complains as follows:
 drivers/char/ipmi/ipmi_msghandler.c:194:25:
 warning: symbol 'remove_work_wq' was not declared. Should it be static? This
 symbol is not used outside of ipmi_msghandler.c, so marks it static. 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mpR5E-0008VI-5d
Subject: [Openipmi-developer] [PATCH -next] ipmi: msghandler: Make symbol
 'remove_work_wq' static
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
From: Wei Yongjun via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Wei Yongjun <weiyongjun1@huawei.com>
Cc: Hulk Robot <hulkci@huawei.com>, openipmi-developer@lists.sourceforge.net,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The sparse tool complains as follows:

drivers/char/ipmi/ipmi_msghandler.c:194:25: warning:
 symbol 'remove_work_wq' was not declared. Should it be static?

This symbol is not used outside of ipmi_msghandler.c, so
marks it static.

Fixes: 1d49eb91e86e ("ipmi: Move remove_work to dedicated workqueue")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 1ade72bfae0f..a2ec0171363a 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -191,7 +191,7 @@ struct ipmi_user {
 	struct work_struct remove_work;
 };
 
-struct workqueue_struct *remove_work_wq;
+static struct workqueue_struct *remove_work_wq;
 
 static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user, int *index)
 	__acquires(user->release_barrier)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
