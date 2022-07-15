Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C09D57840F
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 Jul 2022 15:44:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oDR2z-000240-1R; Mon, 18 Jul 2022 13:44:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wangborong@cdjrlc.com>) id 1oDR2x-00023t-2F
 for openipmi-developer@lists.sourceforge.net; Mon, 18 Jul 2022 13:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n/pWdADK8RaVe7tG1Z12jLOJr0Jra5AIoxSfat+2dQg=; b=OpZeA1RWtOgKoIhv6tCPdIk8hx
 7jK8pJmnyQDi3E/fHAW5vP1lR1AGSRw4orlgSLjbwXYVII6UJj0I9rPf8uDmSk/y0JT8QdzX7Cmrv
 xoZO8apgKBRvIjHClV2jFmWhpkogybiCAuFX1M2HJe66b6N41CpVWA1ugVZ7PXNTq/hE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=n/pWdADK8RaVe7tG1Z12jLOJr0Jra5AIoxSfat+2dQg=; b=O
 Nb2lzjfjsCnmiimaX4rN6VJRv0RuIhsqaVofs5T8dAu5hw1Gtcz4glrXccC3cjBB6EDMEtbtdIC90
 E6MxqRkgTqdkB4bj8M+X7e6bZHM0r9lK0VtEJuJxDE4Rlh/JAKRl64QsFmj2MtmKyYaPLMwbwrqIN
 TgEOFDjgiRVJalfs=;
Received: from [43.155.65.254] (helo=smtpbg.qq.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oDR2t-0030t2-PJ
 for openipmi-developer@lists.sourceforge.net; Mon, 18 Jul 2022 13:44:27 +0000
X-QQ-mid: bizesmtp78t1658151835tnq0bkhj
Received: from localhost.localdomain ( [171.223.96.21])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Mon, 18 Jul 2022 21:43:53 +0800 (CST)
X-QQ-SSF: 01000000002000E0U000C00A0000020
X-QQ-FEAT: r/cTxDoDoiF3HCrEHCv9biv9VXFbohB0C5Cp9KHCi5ERz3Du3npci8/OyTrwA
 8udCmJBCfOtws/rtSqyzme0eeE2NXce5nY7vFTECU2kxNFrls05Xu7XqEYZ5y4WAlMwUj+G
 2YNj6NhITif9Y6PzZMvfhieqwh1TqzdVerXUMJlv9W0KFjejYmfndRXDlMALfTO2SkxQlVA
 Jd3auJd+AEUdGX5fE1xbMAfBfYQVf2UqJT5woE/Hr8cKtP7lPv6UamuvwLzd3kihC3Z4G7J
 tlGZndqXb9WUcSWqrvXzuZzmurLOsEGjDeQu2iDjJsOEWuYmqMHYi7O/cbOzE2Qm35latC+
 xuOS6HJwIJP/ozcI5J/WkhM/hmbean6/4/S8TOPIkZ8VIhMzH+OwKXsYw6IqjGMsCGxCzsp
 Ot1V1QRF7FqhFOc0T0Y3sw==
X-QQ-GoodBg: 0
From: Jason Wang <wangborong@cdjrlc.com>
To: openipmi-developer@lists.sourceforge.net
Date: Fri, 15 Jul 2022 13:41:56 +0800
Message-Id: <20220715054156.6342-1-wangborong@cdjrlc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The double `the' is duplicated in line 4360,
 remove one. Signed-off-by:
 Jason Wang <wangborong@cdjrlc.com> --- drivers/char/ipmi/ipmi_msghandler.c
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [43.155.65.254 listed in dnsbl-1.uceprotect.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1oDR2t-0030t2-PJ
Subject: [Openipmi-developer] [PATCH] ipmi: Fix comment typo
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
Cc: Jason Wang <wangborong@cdjrlc.com>, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The double `the' is duplicated in line 4360, remove one.

Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 703433493c85..c8a3b208f923 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4357,7 +4357,7 @@ static int handle_oem_get_msg_cmd(struct ipmi_smi *intf,
 
 			/*
 			 * The message starts at byte 4 which follows the
-			 * the Channel Byte in the "GET MESSAGE" command
+			 * Channel Byte in the "GET MESSAGE" command
 			 */
 			recv_msg->msg.data_len = msg->rsp_size - 4;
 			memcpy(recv_msg->msg_data, &msg->rsp[4],
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
