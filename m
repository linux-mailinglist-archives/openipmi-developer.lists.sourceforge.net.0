Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF4228673D
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC3-00086y-Mg; Wed, 07 Oct 2020 18:29:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Julia.Lawall@inria.fr>) id 1kMclX-0004zJ-LS
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Sep 2020 19:55:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ks50AFK85o6QCZQhiOEKgFvqcqGNAkPz6BXAq3uJ7JU=; b=TKb2ge4G6sIC4qcRKKfmOmEEmn
 A0MEmtajhnSIpfEFG8JZAdpfgKS9bHnxjMR54v+NfIYmRZ+XwoubVa2DxXCW7E1/OMBRZkcKUs3aX
 MtBLNigsU7j41rcVbFwvDhKpO4LNnrjn6gUcfC2BQ6jaa39DNykS0xGZc+H925SdkPQg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ks50AFK85o6QCZQhiOEKgFvqcqGNAkPz6BXAq3uJ7JU=; b=F5sTpMKIcJlIg8q4yjLxV7n16t
 e45CB8CkDoXxc0DKWKwIIr4UAOqjq0sUrT7kUxFWmIN9zii1giZD4kv2rVRSNg2vYVh9O8dqGqzPv
 B3TZUuPKhgGgNNqoHErZolS0YhvHPypb4HLa+ubuIFHUmQAKbb3ACl6+1C8cK4mzG8v0=;
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kMclS-0080sG-Ts
 for openipmi-developer@lists.sourceforge.net; Sun, 27 Sep 2020 19:55:23 +0000
X-IronPort-AV: E=Sophos;i="5.77,311,1596492000"; d="scan'208";a="360169488"
Received: from palace.rsr.lip6.fr (HELO palace.lip6.fr) ([132.227.105.202])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/AES256-SHA256;
 27 Sep 2020 21:55:11 +0200
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Corey Minyard <minyard@acm.org>
Date: Sun, 27 Sep 2020 21:12:12 +0200
Message-Id: <1601233948-11629-3-git-send-email-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lip6.fr]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.134.164.104 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kMclS-0080sG-Ts
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:29 +0000
Subject: [Openipmi-developer] [PATCH 02/18] ipmi:bt-bmc: use semicolons
 rather than commas to separate statements
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
Cc: =?UTF-8?q?Valdis=20Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, Thomas Gleixner <tglx@linutronix.de>,
 openipmi-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Replace commas with semicolons.  What is done is essentially described by
the following Coccinelle semantic patch (http://coccinelle.lip6.fr/):

// <smpl>
@@ expression e1,e2; @@
e1
-,
+;
e2
... when any
// </smpl>

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/char/ipmi/bt-bmc.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index a395e2e70dc5..6e3d247b55d1 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -462,9 +462,9 @@ static int bt_bmc_probe(struct platform_device *pdev)
 	mutex_init(&bt_bmc->mutex);
 	init_waitqueue_head(&bt_bmc->queue);
 
-	bt_bmc->miscdev.minor	= MISC_DYNAMIC_MINOR,
-	bt_bmc->miscdev.name	= DEVICE_NAME,
-	bt_bmc->miscdev.fops	= &bt_bmc_fops,
+	bt_bmc->miscdev.minor	= MISC_DYNAMIC_MINOR;
+	bt_bmc->miscdev.name	= DEVICE_NAME;
+	bt_bmc->miscdev.fops	= &bt_bmc_fops;
 	bt_bmc->miscdev.parent = dev;
 	rc = misc_register(&bt_bmc->miscdev);
 	if (rc) {



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
