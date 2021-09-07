Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4F4403023
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Sep 2021 23:13:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mNiOo-0006wL-VW; Tue, 07 Sep 2021 21:12:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1mNiIq-00086W-H6
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Sep 2021 21:06:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GqEHhJRKRrjmSQp/tX4WE88UumNlkwn8aiFuElJ/+cQ=; b=XTSSw+W0KJlMTfm8ccVbrIxUBC
 dbNwldeZjrm4hAK23ZIwjH4a7Az18BgBWFJUa2ltG9CB1p8bc6BJowFUdzPjcPipy+c0u/abT7Ufz
 00azAYL40RGm9zYErq++AbjBm28s3/xqvhVqEzAKUNVWJ9CyANg+t1vuDcoRsHfUzMJk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GqEHhJRKRrjmSQp/tX4WE88UumNlkwn8aiFuElJ/+cQ=; b=h
 /vhWEcP+PFkDNnASUtpO4PfDrb5uhR9KFsF6uhimo9wZPLdacDbMt/XFQs+4hy+9La/hy9jvnCEy1
 FtccLWg8/1RFL2sEpinL6XouIQtIttbRxWgmzcSF+A1sgCr/Qjm3XQ8onx5LkdGwr9q8zg1BNzgkg
 XVYF1O2lVrh/BbOI=;
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.3) id 1mNiIk-0000sX-Sc
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Sep 2021 21:06:45 +0000
Received: from pop-os.home ([90.126.253.178]) by mwinf5d16 with ME
 id r96Z250053riaq20396ZGW; Tue, 07 Sep 2021 23:06:35 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 07 Sep 2021 23:06:35 +0200
X-ME-IP: 90.126.253.178
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: minyard@acm.org,
	zweiss@equinix.com,
	andrew@aj.id.au
Date: Tue,  7 Sep 2021 23:06:32 +0200
Message-Id: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.130 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mNiIk-0000sX-Sc
X-Mailman-Approved-At: Tue, 07 Sep 2021 21:12:56 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: kcs_bmc: Fix a memory leak in
 the error handling path of 'kcs_bmc_serio_add_device()'
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

In the unlikely event where 'devm_kzalloc()' fails and 'kzalloc()'
succeeds, 'port' would be leaking.

Test each allocation separately to avoid the leak.

Fixes: 3a3d2f6a4c64 ("ipmi: kcs_bmc: Add serio adaptor")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/char/ipmi/kcs_bmc_serio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
index 7948cabde50b..7e2067628a6c 100644
--- a/drivers/char/ipmi/kcs_bmc_serio.c
+++ b/drivers/char/ipmi/kcs_bmc_serio.c
@@ -73,10 +73,12 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
 	struct serio *port;
 
 	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
 
 	/* Use kzalloc() as the allocation is cleaned up with kfree() via serio_unregister_port() */
 	port = kzalloc(sizeof(*port), GFP_KERNEL);
-	if (!(priv && port))
+	if (!port)
 		return -ENOMEM;
 
 	port->id.type = SERIO_8042;
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
