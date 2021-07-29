Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B3B3DA415
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Jul 2021 15:28:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m964w-0001o6-GR; Thu, 29 Jul 2021 13:28:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <wenyang@linux.alibaba.com>) id 1m932I-00082l-EI
 for openipmi-developer@lists.sourceforge.net; Thu, 29 Jul 2021 10:13:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E5D55/3+axnn3PMCMZlserLloCf99VdWg3BvD/5IZE8=; b=F0+CITKKCIwEPKyda4ToP4tEoa
 5W0rB3+iZUxns0uXMwD1oVJnthZ0aoUcskswtnfOxV1v5E397pwdloczCDIq9Mpv+Li6W4ExGiqXX
 Yg+oAoIV4zIJnIyQr+Dd7MHCRJ1f5pfZKeF/OkoQi+FlaFh3G3g3tva6k7WdbUinT8CA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=E5D55/3+axnn3PMCMZlserLloCf99VdWg3BvD/5IZE8=; b=d
 F3EviSa1KtuDCxfK+jyrQ8jD5M8aPFdsdc49OFEZe46q++mim3edywqFKUZoIgCN42XoX6hz0Kzhe
 Qor1mVmkdyHrI9aYPKpb+hTBo4Ofjgm9mauudAW+B+G4wQCSW7VKVV+yiRtzfYXQFCEkhY6hV1Axf
 AXDATffnGfYA+myQ=;
Received: from out30-133.freemail.mail.aliyun.com ([115.124.30.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m932G-006No0-1C
 for openipmi-developer@lists.sourceforge.net; Thu, 29 Jul 2021 10:13:06 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R101e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426; MF=wenyang@linux.alibaba.com;
 NM=1; PH=DS; RN=5; SR=0; TI=SMTPD_---0UhKSVrp_1627551149; 
Received: from localhost(mailfrom:wenyang@linux.alibaba.com
 fp:SMTPD_---0UhKSVrp_1627551149) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 29 Jul 2021 17:32:34 +0800
From: Wen Yang <wenyang@linux.alibaba.com>
To: Corey Minyard <minyard@acm.org>
Date: Thu, 29 Jul 2021 17:32:28 +0800
Message-Id: <20210729093228.77098-1-wenyang@linux.alibaba.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.133 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1m932G-006No0-1C
X-Mailman-Approved-At: Thu, 29 Jul 2021 13:28:00 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: rate limit ipmi smi_event
 failure message
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
Cc: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Wen Yang <wenyang@linux.alibaba.com>, Baoyou Xie <baoyou.xie@alibaba-inc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Sometimes we can't get a valid si_sm_data, and we print an error
message accordingly. But the ipmi module seem to like retrying a lot,
in which case we flood the kernel log with a lot of messages, eg:

[46318019.164726] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318020.109700] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318021.158677] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318022.212598] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318023.258564] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318024.210455] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318025.260473] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318026.308445] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318027.356389] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318028.298288] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.
[46318029.363302] ipmi_si IPI0001:00: Could not set the global enables: 0xc1.

Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
Cc: Baoyou Xie <baoyou.xie@alibaba-inc.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Cc: linux-kernel@vger.kernel.org
---
 drivers/char/ipmi/ipmi_si_intf.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 62929a3..f64c3ac 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -591,7 +591,7 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		smi_info->handlers->get_result(smi_info->si_sm, msg, 3);
 		if (msg[2] != 0) {
 			/* Error clearing flags */
-			dev_warn(smi_info->io.dev,
+			dev_warn_ratelimited(smi_info->io.dev,
 				 "Error clearing flags: %2.2x\n", msg[2]);
 		}
 		smi_info->si_state = SI_NORMAL;
@@ -683,10 +683,11 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		/* We got the flags from the SMI, now handle them. */
 		smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
 		if (msg[2] != 0) {
-			dev_warn(smi_info->io.dev,
-				 "Couldn't get irq info: %x.\n", msg[2]);
-			dev_warn(smi_info->io.dev,
-				 "Maybe ok, but ipmi might run very slowly.\n");
+#define IPMI_WARN_CHECKING_ENABLES "Maybe ok, but ipmi might run very slowly."
+
+			dev_warn_ratelimited(smi_info->io.dev,
+				"Couldn't get irq info: %x, %s\n",
+				msg[2], IPMI_WARN_CHECKING_ENABLES);
 			smi_info->si_state = SI_NORMAL;
 			break;
 		}
@@ -721,7 +722,7 @@ static void handle_transaction_done(struct smi_info *smi_info)
 
 		smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
 		if (msg[2] != 0)
-			dev_warn(smi_info->io.dev,
+			dev_warn_ratelimited(smi_info->io.dev,
 				 "Could not set the global enables: 0x%x.\n",
 				 msg[2]);
 
@@ -1343,7 +1344,7 @@ static int try_get_dev_id(struct smi_info *smi_info)
 
 		if (cc != IPMI_CC_NO_ERROR &&
 		    ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
-			dev_warn(smi_info->io.dev,
+			dev_warn_ratelimited(smi_info->io.dev,
 			    "BMC returned 0x%2.2x, retry get bmc device id\n",
 			    cc);
 			goto retry;
-- 
1.8.3.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
