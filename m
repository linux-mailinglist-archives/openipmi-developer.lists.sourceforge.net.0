Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABE222374
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 May 2019 14:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hRy9n-0004ER-4B; Sat, 18 May 2019 12:09:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wangkefeng.wang@huawei.com>) id 1hRZii-0008WA-UA
 for openipmi-developer@lists.sourceforge.net; Fri, 17 May 2019 10:04:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hUAPk3GB9upcbSmfR9Fs1AVMCJ1JJQOH88kMM9pgZl0=; b=VYkP8Dl4ND9R3fyNpP2xP0WvaK
 +bPF5G8CeFrfUFz+ttPdkh5l9UDION3+4FZ97O6vcEcRD0IPjRnnODxBAOSsmBJ3wHD7qC9DHjYzS
 SCaOrVclKobu1AuAYWdE8TTeB2t3MrnxSsVm3NuQ4tc7FGmCgpS4uFnK0ac7ULdkiygY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hUAPk3GB9upcbSmfR9Fs1AVMCJ1JJQOH88kMM9pgZl0=; b=gPHzWmmtb6JJw25wBEjC5FKqIz
 5ZVDwq3jScFg2EptU6Ji7kerzoN0bUycIXOujQD9A4uDdQ4QaLQKMwvFP1GlJuatYLHPCtUqCjtAq
 cMbaa5+kCIaAVwaZjz2WXfEcg86VHdjpwSeUYNXf3I96uk/ZPrhKv1TcYBVzAbq+Kdts=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hRZig-002EyE-VI
 for openipmi-developer@lists.sourceforge.net; Fri, 17 May 2019 10:04:08 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A0876D550BCA3411A7D9;
 Fri, 17 May 2019 18:03:59 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Fri, 17 May 2019 18:03:49 +0800
From: Kefeng Wang <wangkefeng.wang@huawei.com>
To: Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>,
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Date: Fri, 17 May 2019 18:12:45 +0800
Message-ID: <20190517101245.4341-2-wangkefeng.wang@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517101245.4341-1-wangkefeng.wang@huawei.com>
References: <20190517101245.4341-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hRZig-002EyE-VI
X-Mailman-Approved-At: Sat, 18 May 2019 12:09:42 +0000
Subject: [Openipmi-developer] [PATCH] ipmi_si: use bool type for initialized
 variable
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
Cc: Kefeng Wang <wangkefeng.wang@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Cover 'int' to 'bool' type for initialized variable.

Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index f124a2d2bb9f..da5b6723329a 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -71,7 +71,7 @@ enum si_intf_state {
 
 static const char * const si_to_str[] = { "invalid", "kcs", "smic", "bt" };
 
-static int initialized;
+static bool initialized;
 
 /*
  * Indexes into stats[] in smi_info below.
@@ -2124,7 +2124,7 @@ static int __init init_ipmi_si(void)
 	}
 
 skip_fallback_noirq:
-	initialized = 1;
+	initialized = true;
 	mutex_unlock(&smi_infos_lock);
 
 	if (type)
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
