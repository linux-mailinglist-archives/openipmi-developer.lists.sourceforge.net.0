Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4383F3EB473
	for <lists+openipmi-developer@lfdr.de>; Fri, 13 Aug 2021 13:13:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mEV7n-0005o3-Vx; Fri, 13 Aug 2021 11:13:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <wenyang@linux.alibaba.com>) id 1mEV7m-0005nv-W8
 for openipmi-developer@lists.sourceforge.net; Fri, 13 Aug 2021 11:13:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fwNO0sqDeau4vr3g0HsDzb6QgEsSVW1KXxTAuJQL78g=; b=Yqp0ExZs6VDdxxpRxU0bjNg+Zq
 9EplgMH5ls5Psu8KT4+hvN4gURPM2+GFC+xmXqxZSfJxbfLzUyKsJXoaZVV4MdNapuyWzZBGE1t2R
 h9cqQbc0BSXn9oD6HTjckHSt+WXOr6YGxse2Y7uK869MFOi2IvTyYAv9taUG1E1LDyYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fwNO0sqDeau4vr3g0HsDzb6QgEsSVW1KXxTAuJQL78g=; b=U
 AT/298e+M/p8+TqBQTROc++oyX9+S/s+gnh1F2bObRHkcoDewLwhpGOiwfdgkhKUpC3iPVf+r0t2i
 HOGmmcVaAnFLNlsjdL4TDOP1UqWp1FdxOqT2Ux2+45k07SYqeC8CO6WmBMZ8cZH7KklNv5A8BCjE1
 Xn0otk93M+xRgeoA=;
Received: from out30-44.freemail.mail.aliyun.com ([115.124.30.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mEV7g-0057j0-99
 for openipmi-developer@lists.sourceforge.net; Fri, 13 Aug 2021 11:13:18 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R781e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01424; MF=wenyang@linux.alibaba.com;
 NM=1; PH=DS; RN=4; SR=0; TI=SMTPD_---0Uit-q8A_1628853178; 
Received: from localhost(mailfrom:wenyang@linux.alibaba.com
 fp:SMTPD_---0Uit-q8A_1628853178) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 13 Aug 2021 19:13:03 +0800
From: Wen Yang <wenyang@linux.alibaba.com>
To: Corey Minyard <minyard@acm.org>
Date: Fri, 13 Aug 2021 19:12:57 +0800
Message-Id: <20210813111257.78405-1-wenyang@linux.alibaba.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Score: -8.0 (--------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [115.124.30.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL Match
X-Headers-End: 1mEV7g-0057j0-99
Subject: [Openipmi-developer] [PATCH] ipmi: fix compilation warnings
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
Cc: openipmi-developer@lists.sourceforge.net,
 Wen Yang <wenyang@linux.alibaba.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

fix the following compilation warnings:

>> drivers/char/ipmi/ipmi_si_intf.c:689:5: error: expected ')'
                                   msg[2]);
                                   ^
drivers/char/ipmi/ipmi_si_intf.c:686:4: note: to match this '('
                           dev_warn_ratelimited(smi_info->io.dev,

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Wen Yang <wenyang@linux.alibaba.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
---
 drivers/char/ipmi/ipmi_si_intf.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 5bf9271..6ccaa01 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -592,7 +592,7 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		if (msg[2] != 0) {
 			/* Error clearing flags */
 			dev_warn_ratelimited(smi_info->io.dev,
-				 "Error clearing flags: %2.2x\n", msg[2]);
+					     "Error clearing flags: %2.2x\n", msg[2]);
 		}
 		smi_info->si_state = SI_NORMAL;
 		break;
@@ -684,9 +684,8 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
 		if (msg[2] != 0) {
 			dev_warn_ratelimited(smi_info->io.dev,
-				"Couldn't get irq info: %x,\n"
-				"Maybe ok, but ipmi might run very slowly.\n",
-				msg[2]);
+					     "Couldn't get irq info: %x. Maybe ok, but ipmi might run very slowly.\n",
+					     msg[2]);
 			smi_info->si_state = SI_NORMAL;
 			break;
 		}
@@ -722,8 +721,8 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		smi_info->handlers->get_result(smi_info->si_sm, msg, 4);
 		if (msg[2] != 0)
 			dev_warn_ratelimited(smi_info->io.dev,
-				 "Could not set the global enables: 0x%x.\n",
-				 msg[2]);
+					     "Could not set the global enables: 0x%x.\n",
+					     msg[2]);
 
 		if (smi_info->supports_event_msg_buff) {
 			smi_info->curr_msg = ipmi_alloc_smi_msg();
@@ -1344,8 +1343,8 @@ static int try_get_dev_id(struct smi_info *smi_info)
 		if (cc != IPMI_CC_NO_ERROR &&
 		    ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
 			dev_warn_ratelimited(smi_info->io.dev,
-			    "BMC returned 0x%2.2x, retry get bmc device id\n",
-			    cc);
+					     "BMC returned 0x%2.2x, retry get bmc device id\n",
+					     cc);
 			goto retry;
 		}
 	}
-- 
1.8.3.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
