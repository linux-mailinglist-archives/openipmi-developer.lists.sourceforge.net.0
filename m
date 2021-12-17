Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 344174792C7
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Dec 2021 18:25:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1myGyY-0005Q2-Nm; Fri, 17 Dec 2021 17:24:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cascardo@canonical.com>) id 1myFPW-0004XN-7c
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Dec 2021 15:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K4KepFetoeRSfUTPalIOPzR+mpPdGckMTE+MuEeJBEg=; b=lR9fI+yVwMvx4hBkbNrhPC5iqx
 fNcpTCNtAUCoYCwqgfPRelno9t8xU1A1qpmql+bfXOngyZOI7HQCsRIK2goM5xqK+45YIIY9+u2P9
 A5Ug9BARNWWt3uw/dW+rsO9BAvAVMwkE6EqP7gAe4NG8v5IhrlipNlrbvCRIK6Uhli6E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K4KepFetoeRSfUTPalIOPzR+mpPdGckMTE+MuEeJBEg=; b=bXgsmxS3GDaelQ09jcEFckAIof
 i/+xUae9vtU8MK1jyqg/k6kz57pAwwWZJuOBuHolmHb0MSw9p0jumK3/iVMOiQRP5wu0MhsSFm1JL
 zN+6UOvWvLRC/Y7EIlZ+BAA/Z6KRa8IwBEfL1U0zsWxlqFbUl5w+irLgzv+TghjRIF9Q=;
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1myFPV-0013Rx-FI
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Dec 2021 15:44:42 +0000
Received: from mussarela.. (unknown [179.93.189.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id CBCBA41846; 
 Fri, 17 Dec 2021 15:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1639755874;
 bh=K4KepFetoeRSfUTPalIOPzR+mpPdGckMTE+MuEeJBEg=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=QeXiqAqUaxwoXwEDY3haRWNFv6f06HivPJz5bC3eCpqdUTV7XXgBMyR+ctTHZfych
 QkD/pP2A6sAk5oReAGvNE8wd5jAE4AdaKZmh0nbKUnA2bhBCW4H+Q68QbTwBRi4Cxr
 1nBo1tMtHdtDHucC3HaMC4ZFCP5YN8qZXHCPCtdricG84JHXbzeQBhVU/l4THiXqLA
 8hVF2qSNUYyVEDoM0rA9XCgcoV2Bq4ezBNU0TXJzNdFmnCu/u8+NjaNtGCBEcex9M+
 bccKLPbjEHRx/xc2us3k+cuadym0eQSboeoCuqWYyFe1UKSNgwv+q0/yt/oM56p0Zm
 DklJl5wfytF/g==
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: openipmi-developer@lists.sourceforge.net
Date: Fri, 17 Dec 2021 12:44:10 -0300
Message-Id: <20211217154410.1228673-2-cascardo@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217154410.1228673-1-cascardo@canonical.com>
References: <20211217154410.1228673-1-cascardo@canonical.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If the workqueue allocation fails, the driver is marked as
 not initialized, and timer and panic_notifier will be left registered. Instead
 of removing those when workqueue allocation fails,
 do the workqueue initialization
 before doing it, and cleanup srcu_struct if it fails. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1myFPV-0013Rx-FI
X-Mailman-Approved-At: Fri, 17 Dec 2021 17:24:57 +0000
Subject: [Openipmi-developer] [PATCH 2/2] ipmi: fix initialization when
 workqueue allocation fails
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
Cc: stable@vger.kernel.org, ioanna-maria.alifieraki@canonical.com,
 linux-kernel@vger.kernel.org, minyard@acm.org, minyard@mvista.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

If the workqueue allocation fails, the driver is marked as not initialized,
and timer and panic_notifier will be left registered.

Instead of removing those when workqueue allocation fails, do the workqueue
initialization before doing it, and cleanup srcu_struct if it fails.

Fixes: 1d49eb91e86e ("ipmi: Move remove_work to dedicated workqueue")
Signed-off-by: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
Cc: Corey Minyard <cminyard@mvista.com>
Cc: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
Cc: stable@vger.kernel.org
---
 drivers/char/ipmi/ipmi_msghandler.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 84975b21fff2..266c7bc58dda 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -5396,20 +5396,23 @@ static int ipmi_init_msghandler(void)
 	if (rv)
 		goto out;
 
-	timer_setup(&ipmi_timer, ipmi_timeout, 0);
-	mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
-
-	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
-
 	remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
 	if (!remove_work_wq) {
 		pr_err("unable to create ipmi-msghandler-remove-wq workqueue");
 		rv = -ENOMEM;
-		goto out;
+		goto out_wq;
 	}
 
+	timer_setup(&ipmi_timer, ipmi_timeout, 0);
+	mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
+
+	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
+
 	initialized = true;
 
+out_wq:
+	if (rv)
+		cleanup_srcu_struct(&ipmi_interfaces_srcu);
 out:
 	mutex_unlock(&ipmi_interfaces_mutex);
 	return rv;
-- 
2.32.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
