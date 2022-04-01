Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9EE4EED72
	for <lists+openipmi-developer@lfdr.de>; Fri,  1 Apr 2022 14:49:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1naGhz-0007Hr-6C; Fri, 01 Apr 2022 12:48:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <baihaowen@meizu.com>) id 1na89g-0001PB-M4
 for openipmi-developer@lists.sourceforge.net; Fri, 01 Apr 2022 03:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bFvBLpqkqlRXwWDW59OkCT9VI4KYPrpQgJneiLCGO6g=; b=bHihdA7lXUKED1LG8DLTSgxlFb
 AbgOuJx4AGvGSCH6yhLAhBZW4b5bZ0KM6hGgbKMMsE+Ljah+xIYNOK8el6y1RwhCzUbNK5WQh+3Ma
 x2mVBMb4p+BNiuOsv0wEtXJ1OC56WchJWtTyoupsjVSyv2lkyrPGme0tMo81YJ/Oe458=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bFvBLpqkqlRXwWDW59OkCT9VI4KYPrpQgJneiLCGO6g=; b=n
 ORA9pfZwz0Wp3TK+2+RSiufLPSipmIhMPwSabKTxWKIVG23mKddKhGHD5q30hcCnOGP3bTCplTDv2
 uQx3YrLj+g8ExxLhodU9Gc84p00gIvVcSdAtYvVZ/CPp4p+OhVH+ceWcBJUr0VnQaKdMPb7z2ugPR
 hLda9HSVBY9Qy0Ak=;
Received: from edge05.meizu.com ([157.122.146.251] helo=mail.meizu.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLS1:ECDHE-RSA-AES256-SHA:256)
 (Exim 4.94.2) id 1na89d-0004yS-AR
 for openipmi-developer@lists.sourceforge.net; Fri, 01 Apr 2022 03:40:55 +0000
Received: from IT-EXMB-1-125.meizu.com (172.16.1.125) by mz-mail12.meizu.com
 (172.16.1.108) with Microsoft SMTP Server (TLS) id 14.3.487.0; Fri, 1 Apr
 2022 11:27:49 +0800
Received: from meizu.meizu.com (172.16.137.70) by IT-EXMB-1-125.meizu.com
 (172.16.1.125) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Fri, 1 Apr
 2022 11:27:46 +0800
From: Haowen Bai <baihaowen@meizu.com>
To: Corey Minyard <minyard@acm.org>
Date: Fri, 1 Apr 2022 11:27:45 +0800
Message-ID: <1648783665-19237-1-git-send-email-baihaowen@meizu.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.137.70]
X-ClientProxiedBy: IT-EXMB-1-124.meizu.com (172.16.1.124) To
 IT-EXMB-1-125.meizu.com (172.16.1.125)
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  msg could be null without checking null and return, but still
 dereference msg->rsp[2] and will lead to a null pointer trigger.
 Signed-off-by:
 Haowen Bai <baihaowen@meizu.com> --- drivers/char/ipmi/ipmi_ssif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1na89d-0004yS-AR
X-Mailman-Approved-At: Fri, 01 Apr 2022 12:48:54 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ssif: potential NULL dereference
 in msg_done_handler()
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
Cc: openipmi-developer@lists.sourceforge.net, Haowen Bai <baihaowen@meizu.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

msg could be null without checking null and return, but still dereference
msg->rsp[2] and will lead to a null pointer trigger.

Signed-off-by: Haowen Bai <baihaowen@meizu.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index f199cc1..9383de3 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -814,7 +814,7 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 		break;
 
 	case SSIF_GETTING_EVENTS:
-		if ((result < 0) || (len < 3) || (msg->rsp[2] != 0)) {
+		if ((result < 0) || (len < 3) || (msg && (msg->rsp[2] != 0))) {
 			/* Error getting event, probably done. */
 			msg->done(msg);
 
-- 
2.7.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
