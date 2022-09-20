Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D965BDA15
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Sep 2022 04:23:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oaSv6-0005wt-JK;
	Tue, 20 Sep 2022 02:23:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chiawei_wang@aspeedtech.com>) id 1oaSv4-0005wi-5Q
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Sep 2022 02:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D7ycuOQVW8Q9yTDRfZo8iWPpsNNaYFC/+pHr+qHftSY=; b=EWgcEL7WTMe+QKaxp9m9TK7Oxv
 e+7b0Y6NLzvh7dsdfarcbALWvlvDrHbdR2jsNhoU/lEqZ9ik/AaR5oInCiEb5hGOcVuIm//TAZsnf
 JUflRvXyR+d+6jIs7b/bfA0TQCoPgUGW9cQyfNwHJnqXAWyVysHgiEVZ9fLfs0j/b4RU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=D7ycuOQVW8Q9yTDRfZo8iWPpsNNaYFC/+pHr+qHftSY=; b=J
 m0RaBgX9ZHNkMJP2XfqXuyeI9IqC23X0eqf9Kv3YugW1+NdSmiShFp1FD0OpTpyrQsXX5QnMQPw6f
 04TjIJ8gIDli5U03DdHuCQAvS8W4RKwpaWeGIUbbhOliIjdemi8emcGZge0m+AhhwOM5/2aDijRhT
 RlZFO05k3idXOb+U=;
Received: from twspam01.aspeedtech.com ([211.20.114.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oaSvD-00DyKH-OT for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Sep 2022 02:23:42 +0000
Received: from twspam01.aspeedtech.com (localhost [127.0.0.2] (may be forged))
 by twspam01.aspeedtech.com with ESMTP id 28K1ho9e087893
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 20 Sep 2022 09:43:50 +0800 (GMT-8)
 (envelope-from chiawei_wang@aspeedtech.com)
Received: from mail.aspeedtech.com ([192.168.0.24])
 by twspam01.aspeedtech.com with ESMTP id 28K1gpFj087853;
 Tue, 20 Sep 2022 09:42:51 +0800 (GMT-8)
 (envelope-from chiawei_wang@aspeedtech.com)
Received: from Chiawei-PC03.aspeed.com (192.168.2.66) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 20 Sep
 2022 10:03:36 +0800
From: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
To: <minyard@acm.org>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <openipmi-developer@lists.sourceforge.net>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>,
 <openbmc@lists.ozlabs.org>
Date: Tue, 20 Sep 2022 10:03:33 +0800
Message-ID: <20220920020333.601-1-chiawei_wang@aspeedtech.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [192.168.2.66]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 28K1gpFj087853
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Remove AST_usrGuide_KCS.pdf as it is no longer maintained.
 Add more descriptions as the driver now supports the I/O address
 configurations
 for both the KCS Data and Cmd/Status interface registers. Signed-off-by:
 Chia-Wei Wang <chiawei_wang@aspeedtech.com> ---
 drivers/char/ipmi/kcs_bmc_aspeed.c
 | 29 ++++++++++++++++++ 1 file changed, 18 insertions(+), 11 deletions(-)
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oaSvD-00DyKH-OT
Subject: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Update port address
 comments
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Remove AST_usrGuide_KCS.pdf as it is no longer maintained.

Add more descriptions as the driver now supports the I/O
address configurations for both the KCS Data and Cmd/Status
interface registers.

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index cdc88cde1e9a..19c32bf50e0e 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -207,17 +207,24 @@ static void aspeed_kcs_updateb(struct kcs_bmc_device *kcs_bmc, u32 reg, u8 mask,
 }
 
 /*
- * AST_usrGuide_KCS.pdf
- * 2. Background:
- *   we note D for Data, and C for Cmd/Status, default rules are
- *     A. KCS1 / KCS2 ( D / C:X / X+4 )
- *        D / C : CA0h / CA4h
- *        D / C : CA8h / CACh
- *     B. KCS3 ( D / C:XX2h / XX3h )
- *        D / C : CA2h / CA3h
- *        D / C : CB2h / CB3h
- *     C. KCS4
- *        D / C : CA4h / CA5h
+ * We note D for Data, and C for Cmd/Status, default rules are
+ *
+ * 1. Only the D address is given:
+ *   A. KCS1/KCS2 (D/C: X/X+4)
+ *      D/C: CA0h/CA4h
+ *      D/C: CA8h/CACh
+ *   B. KCS3 (D/C: XX2/XX3h)
+ *      D/C: CA2h/CA3h
+ *   C. KCS4 (D/C: X/X+1)
+ *      D/C: CA4h/CA5h
+ *
+ * 2. Both the D/C addresses are given:
+ *   A. KCS1/KCS2/KCS4 (D/C: X/Y)
+ *      D/C: CA0h/CA1h
+ *      D/C: CA8h/CA9h
+ *      D/C: CA4h/CA5h
+ *   B. KCS3 (D/C: XX2/XX3h)
+ *      D/C: CA2h/CA3h
  */
 static int aspeed_kcs_set_address(struct kcs_bmc_device *kcs_bmc, u32 addrs[2], int nr_addrs)
 {
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
