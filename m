Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C102B4EFE6D
	for <lists+openipmi-developer@lfdr.de>; Sat,  2 Apr 2022 06:14:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1naVA0-00012h-RJ; Sat, 02 Apr 2022 04:14:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <baihaowen@meizu.com>) id 1naV9z-00012a-7Q
 for openipmi-developer@lists.sourceforge.net; Sat, 02 Apr 2022 04:14:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IQCkNqEqIc9p/hOc+OTjfRTlXgshoQX9F57QzApA3Mc=; b=QkaWLaNnW8AYDmgHN25NxWIqTi
 +hjbX0/6jj92hv0NgfcqxwCKoZ64bGtmXm5pZWi8OLGhG+i7urrgm/S5+jGukyYKOQCIpZLNxtCJW
 0s2dGh9H/aelALtAujE7kJCl1LL1ay27ydEePCjsXfh73KSh49xwuJVGKpGDS8EzC3tk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IQCkNqEqIc9p/hOc+OTjfRTlXgshoQX9F57QzApA3Mc=; b=DJodVx2v6DUcUDcfZB5M5qTIC4
 aRMzZN9lAHEfJf3C1FnufYlQGoHDigAzsSZubCnw/aHJrrwtDIJhnovH1XnrO2td6rkjcyjI9yE4u
 VVBXF1Y7rVjCguv+VmNjBTKPCsluWrzLM7/ZiOZOmzYAs16f2VEchsuiyrTznVBJwtI0=;
Received: from edge07.meizu.com ([112.91.151.210] helo=mail.meizu.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLS1:ECDHE-RSA-AES256-SHA:256)
 (Exim 4.94.2) id 1naV9w-0000Cy-Ov
 for openipmi-developer@lists.sourceforge.net; Sat, 02 Apr 2022 04:14:45 +0000
Received: from IT-EXMB-1-125.meizu.com (172.16.1.125) by mz-mail11.meizu.com
 (172.16.1.15) with Microsoft SMTP Server (TLS) id 14.3.487.0; Sat, 2 Apr 2022
 20:11:54 +0800
Received: from meizu.meizu.com (172.16.137.70) by IT-EXMB-1-125.meizu.com
 (172.16.1.125) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Sat, 2 Apr
 2022 12:01:26 +0800
From: Haowen Bai <baihaowen@meizu.com>
To: Corey Minyard <minyard@acm.org>
Date: Sat, 2 Apr 2022 12:01:20 +0800
Message-ID: <1648872080-9605-1-git-send-email-baihaowen@meizu.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <94f5e266-4412-cf45-9ac3-bbe78477f0c4@meizu.com>
References: <94f5e266-4412-cf45-9ac3-bbe78477f0c4@meizu.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.137.70]
X-ClientProxiedBy: IT-EXMB-1-123.meizu.com (172.16.1.123) To
 IT-EXMB-1-125.meizu.com (172.16.1.125)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  msg could be null without checking null and return, but still
 dereference msg->rsp[2] and will lead to a null pointer trigger.
 Signed-off-by:
 Haowen Bai <baihaowen@meizu.com> --- V1->V2: check msg both cases that also
 uses msg; add logs; 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1naV9w-0000Cy-Ov
Subject: [Openipmi-developer] [PATCH V2] ipmi: ssif: potential NULL
 dereference in msg_done_handler()
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
V1->V2: check msg both cases that also uses msg; add logs;

 drivers/char/ipmi/ipmi_ssif.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index f199cc194844..eb6bdd44b69e 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -758,8 +758,11 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 	switch (ssif_info->ssif_state) {
 	case SSIF_NORMAL:
 		ipmi_ssif_unlock_cond(ssif_info, flags);
-		if (!msg)
+		if (!msg) {
+			dev_dbg(&ssif_info->client->dev,
+				"msg was null, case SSIF_NORMAL\n");
 			break;
+		}
 
 		if (result < 0)
 			return_hosed_msg(ssif_info, msg);
@@ -814,6 +817,13 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 		break;
 
 	case SSIF_GETTING_EVENTS:
+		if (!msg) {
+			ipmi_ssif_unlock_cond(ssif_info, flags);
+			dev_dbg(&ssif_info->client->dev,
+				"msg was null, case SSIF_GETTING_EVENTS\n");
+			break;
+		}
+
 		if ((result < 0) || (len < 3) || (msg->rsp[2] != 0)) {
 			/* Error getting event, probably done. */
 			msg->done(msg);
@@ -838,6 +848,13 @@ static void msg_done_handler(struct ssif_info *ssif_info, int result,
 		break;
 
 	case SSIF_GETTING_MESSAGES:
+		if (!msg) {
+			ipmi_ssif_unlock_cond(ssif_info, flags);
+			dev_dbg(&ssif_info->client->dev,
+				"msg was null, case SSIF_GETTING_MESSAGES\n");
+			break;
+		}
+
 		if ((result < 0) || (len < 3) || (msg->rsp[2] != 0)) {
 			/* Error getting event, probably done. */
 			msg->done(msg);
-- 
2.7.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
