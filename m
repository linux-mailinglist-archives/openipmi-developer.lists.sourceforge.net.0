Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B38768AF35
	for <lists+openipmi-developer@lfdr.de>; Sun,  5 Feb 2023 11:04:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pObss-0004lG-CH;
	Sun, 05 Feb 2023 10:04:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1pObso-0004l6-VD
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Feb 2023 10:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=STAu2INHRi4gW9AfEc5kwn4hVrtnzMkJAYgZu/bW5vU=; b=P1QGOSTIU4mAj9YhTsRd4/SyT0
 egKnTQ43pmnU0ILPbqMpXSq7fIgVFQQkIlY+bi8Um2yRYZZ2AVUCeBO67Bfrvz+v0h/PxrwnuQtwP
 j3/rmOG7s4nw+JA0enM5gftt4zj34gZvpufz1xtLoQAQlvjutRwkznf3VgXMCZNMpCms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=STAu2INHRi4gW9AfEc5kwn4hVrtnzMkJAYgZu/bW5vU=; b=D
 0J5aBrawj/NEZSffU4aO1LhT7ceGhLHTh5ruAJyK0M0tZ+QINPnOplaFkh/Uulak4VjmiZzpU3gq2
 1b3zsvcQ5zQH98mnc3CVMUhZfm3AwYBz3jGAWWnmHAeIe9WSEZKJCokjAfjg+bxnoLRfTfCkhI3dr
 49Q77yhiSOrPtRvo=;
Received: from [80.12.242.18] (helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pObsm-00BiJt-FM for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Feb 2023 10:04:26 +0000
Received: from pop-os.home ([86.243.2.178]) by smtp.orange.fr with ESMTPA
 id ObsVpkXzo36GqObsVp8NGM; Sun, 05 Feb 2023 11:04:07 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 05 Feb 2023 11:04:07 +0100
X-ME-IP: 86.243.2.178
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Corey Minyard <minyard@acm.org>,
 Andrew Manley <andrew.manley@sealingtech.com>
Date: Sun,  5 Feb 2023 11:04:01 +0100
Message-Id: <0d8670cff2c656e99a832a249e77dc90578f67de.1675591429.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 1.3 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  'This should be 'retry_time_ms' instead of 'max_retries'.
 Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
 Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr> ---
 drivers/char/ipmi/ipmi_ipmb.c | 2 +- 1 file changed, 1 i [...] 
 Content analysis details:   (1.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.18 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [80.12.242.18 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1pObsm-00BiJt-FM
Subject: [Openipmi-developer] [PATCH] ipmi: ipmb: Fix the MODULE_PARM_DESC
 associated to 'retry_time_ms'
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

'This should be 'retry_time_ms' instead of 'max_retries'.

Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/char/ipmi/ipmi_ipmb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
index 7c1aee5e11b7..3f1c9f1573e7 100644
--- a/drivers/char/ipmi/ipmi_ipmb.c
+++ b/drivers/char/ipmi/ipmi_ipmb.c
@@ -27,7 +27,7 @@ MODULE_PARM_DESC(bmcaddr, "Address to use for BMC.");
 
 static unsigned int retry_time_ms = 250;
 module_param(retry_time_ms, uint, 0644);
-MODULE_PARM_DESC(max_retries, "Timeout time between retries, in milliseconds.");
+MODULE_PARM_DESC(retry_time_ms, "Timeout time between retries, in milliseconds.");
 
 static unsigned int max_retries = 1;
 module_param(max_retries, uint, 0644);
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
