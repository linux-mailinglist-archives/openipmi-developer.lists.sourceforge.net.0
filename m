Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDF8A5EAAA
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Mar 2025 05:38:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tsaKP-0003dR-2X;
	Thu, 13 Mar 2025 04:37:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <riel@shelob.surriel.com>) id 1tsQ48-0006VC-Pe
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Mar 2025 17:40:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IK5IGfoVwDDQEOvsTdHTpikHhojHuWPDC1TVEKm0v3A=; b=g+go78Jpj80kbR3JDHDRswvsUX
 iKxeFd0HisUT8WSJR6rizEi/VAr6ltoQtz+hI7/ktlpvK6Vw1lKlkdHv/2INx/TRhbT5QoX9hj/sx
 Bu9iObNhaV/l0LAXisXc1qwq8f+UzARvpp+00WDVAOuoEALLUpiEsA5lLZJU5MQL3Exg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IK5IGfoVwDDQEOvsTdHTpikHhojHuWPDC1TVEKm0v3A=; b=O
 KTvjnzL2HbSlJ5DBIRj6Q44hk/T2C0N2E6rHSKry2YEEa7e8nnvwW8oRGaJMCfStbjV504XN63PCy
 4btsWr1ucToQ8rP2gzUy74Wn0wppvMwaJgWVmpM0ASrb+DnYokfTLNI+8RNEYSuMpxlPIzEtomGxr
 bbIxe11MUN4SBqg4=;
Received: from shelob.surriel.com ([96.67.55.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tsQ48-0007GC-3z for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Mar 2025 17:40:24 +0000
Received: from [2601:18c:8180:83cc:5a47:caff:fe78:8708] (helo=fangorn)
 by shelob.surriel.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <riel@shelob.surriel.com>) id 1tsPk0-000000006zq-1rZn;
 Wed, 12 Mar 2025 13:19:36 -0400
Date: Wed, 12 Mar 2025 13:19:32 -0400
From: Rik van Riel <riel@surriel.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <20250312131932.44d901f7@fangorn>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: On recent kernels this warning fires:
 drivers/char/ipmi/ipmi_msghandler.c:1238
 RCU-list traversed in non-reader section!! This looks like a fairly simple
 lockdep trigger, where list_for_each_entry_rcu and list_for_each_entry_srcu
 are functionally identical, but the lockdep annotation in the former has
 an extra check. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [96.67.55.147 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [96.67.55.147 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [96.67.55.147 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-Headers-End: 1tsQ48-0007GC-3z
X-Mailman-Approved-At: Thu, 13 Mar 2025 04:37:52 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: fix suspicious RCU usage warning
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@meta.com,
 linux-kernel@vger.kernel.org, "Paul E. McKenney" <paulmck@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On recent kernels this warning fires:

drivers/char/ipmi/ipmi_msghandler.c:1238 RCU-list traversed in non-reader section!!

This looks like a fairly simple lockdep trigger, where
list_for_each_entry_rcu and list_for_each_entry_srcu are
functionally identical, but the lockdep annotation in
the former has an extra check.

That extra check is whether the RCU read lock is held,
which is not true when the code uses srcu_read_lock.

Get rid of the warning by using the properly annotated
list traversal macro.

Signed-off-by: Rik van Riel <riel@surriel.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 1e5313748f8b..a2823763fd37 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1235,7 +1235,7 @@ int ipmi_create_user(unsigned int          if_num,
 		return -ENOMEM;
 
 	index = srcu_read_lock(&ipmi_interfaces_srcu);
-	list_for_each_entry_rcu(intf, &ipmi_interfaces, link) {
+	list_for_each_entry_srcu(intf, &ipmi_interfaces, link) {
 		if (intf->intf_num == if_num)
 			goto found;
 	}
-- 
2.48.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
