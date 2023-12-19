Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 680EA8180C5
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Dec 2023 06:01:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rFSE5-0003EP-03;
	Tue, 19 Dec 2023 05:01:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1rFSE2-0003EA-6r
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Dec 2023 05:01:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XY0QlJMcPU7Xxpry3VlrLRsMZ3Hy51PgSnqRo3LknqY=; b=QPdrcUsI70ABYyyNqC/umt7lMN
 VVy/o1+G5QnvbrAauh7EsMbcmrqobnWhvpKArTArGPQOrqLq4SrHkqzO4hu6SVZ8ZUKnY8aDeEeip
 GEeVWHRqTWLkAaZGTLwwwDDWqszWayya8t7BBzuCFUvBRRlX0QnhGN/vDVVWvuXA6dxw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XY0QlJMcPU7Xxpry3VlrLRsMZ3Hy51PgSnqRo3LknqY=; b=C
 h85wO42SK4BAnfiKzWmeV9zlDwKWEmgG/F6iLVKH1A/Y1rPr7YnyRdhtXU2ACfCYy0adUWIUs3os0
 5NqrVJmD+0sXPXPChHOPcV6i//X/NIwNCwcsTSH9EgOaZkuIbESw9D/dxr8a6Lf/IhRbcQ1vZQ5jo
 JvPBK1ozVUNFyRA4=;
Received: from smtp-18.smtpout.orange.fr ([80.12.242.18]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rFSDy-0004SN-2O for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Dec 2023 05:01:02 +0000
Received: from pop-os.home ([92.140.202.140]) by smtp.orange.fr with ESMTPA
 id FSDkr12EOmDWRFSDkrW92Z; Tue, 19 Dec 2023 06:00:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1702962045;
 bh=XY0QlJMcPU7Xxpry3VlrLRsMZ3Hy51PgSnqRo3LknqY=;
 h=From:To:Cc:Subject:Date;
 b=G7InHEltsCFWlwRYeoWU8Ff7ExYyW/l90sclEYv0imJcncXNRAKqkM7DQ5oEBfUce
 NdyaglGIpq/C7lIh5Zn+7FXlIhg4Qk4EBg9SGfVUam2g4un8GBWxyA5UDwDk/vrZMi
 0P+t6BwpU1PVJdzolgvRLWvzIxx/gYoGzNZ+VjvSciEXSpJR0w8XbetGballZ1uLH/
 /ZLlq0VeQ8csvlCmxSzs9qSUfsC3maMuguhcGi5wqR1WzrwjC5XmqhLSzcyiRSF9i7
 8kp6o8a6Dgz+htBqpJkj/DewdYEiKccOikJbtmmfHlglDqi22UQj9pTTfJGO3mKtxE
 6edoP3SOTVG4g==
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 19 Dec 2023 06:00:45 +0100
X-ME-IP: 92.140.202.140
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Corey Minyard <minyard@acm.org>
Date: Tue, 19 Dec 2023 06:00:39 +0100
Message-Id: <b1a7a75263400742e5fda6bd7ba426772dc8ef11.1702961986.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: ida_alloc() and ida_free() should be preferred to the
 deprecated
 ida_simple_get() and ida_simple_remove(). This is less verbose. Signed-off-by:
 Christophe JAILLET <christophe.jaillet@wanadoo.fr> ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 4 ++-- 1 file changed, 2 insertions(+), 2 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.18 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [80.12.242.18 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFSDy-0004SN-2O
Subject: [Openipmi-developer] [PATCH] ipmi: Remove usage of the deprecated
 ida_simple_xx() API
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

ida_alloc() and ida_free() should be preferred to the deprecated
ida_simple_get() and ida_simple_remove().

This is less verbose.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index d6f14279684d..b0eedc4595b3 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3053,7 +3053,7 @@ static void cleanup_bmc_work(struct work_struct *work)
 	int id = bmc->pdev.id; /* Unregister overwrites id */
 
 	platform_device_unregister(&bmc->pdev);
-	ida_simple_remove(&ipmi_bmc_ida, id);
+	ida_free(&ipmi_bmc_ida, id);
 }
 
 static void
@@ -3169,7 +3169,7 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
 
 		bmc->pdev.name = "ipmi_bmc";
 
-		rv = ida_simple_get(&ipmi_bmc_ida, 0, 0, GFP_KERNEL);
+		rv = ida_alloc(&ipmi_bmc_ida, GFP_KERNEL);
 		if (rv < 0) {
 			kfree(bmc);
 			goto out;
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
