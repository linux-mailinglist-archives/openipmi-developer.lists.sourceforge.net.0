Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A2445D11B
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Nov 2021 00:19:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mq1XV-0002wZ-TO; Wed, 24 Nov 2021 23:18:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kuba@kernel.org>) id 1mpzQi-0006Yw-Js
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Nov 2021 21:03:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3dR4IFmFlf53Pyx7cJvYU0AQw6G/sDs1Jd6k3ocZZnQ=; b=aikUWaxLORYAC6lewZlmQUvqxm
 3Zi82s7umjYflbw0huqUmtZjzU+wou7kjS1av6VtTWk0b6kzDE1QzwY5C/xgxfAUqf1dDvLMxw4+O
 bHsADJa3SxO2iAKA+Gz4gm3IcQDdQ2uTHZhZHI5uEDj2OH5gw2I+fRiWza6Tb1angtHY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3dR4IFmFlf53Pyx7cJvYU0AQw6G/sDs1Jd6k3ocZZnQ=; b=Q
 DKxgoTE2RWciV9JzhZ4GeDA16g78HAFd0c2+qcku9pflsgPCISgaxlSYtF3mD6CJeB2pX6CavFwRL
 v/zj/masCk82O93PtAJ35XWYiUFuMprGqXv06zDA3pAXuIOA1x/Tsg8i9kC2qFAQ9tbYkv3XlOAVu
 sLkFD1fgAMT8BvO8=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpzQh-000455-7I
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Nov 2021 21:03:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9564160FDA;
 Wed, 24 Nov 2021 21:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637787816;
 bh=UEkE1eFZxaD/UOhfXY/SI0jhBkgdLknjQn8B1SzEKXA=;
 h=From:To:Cc:Subject:Date:From;
 b=ssq6LIZn7pm9z3N8QoaewGNfg848JWT57zql3uCA/UDdMZcIKWGaj6T+JzHViEerm
 7WfONkFrX7pkiAh1aXssbwcPcg0tea7AE3RAHAkWSyJjrywCqucPafHxG7sRsWUrkG
 EVWrMGiFy6w/LSQa/8vFyO7VUWnXzghf0JL8aJMhfy3yqIiUvbAX6I4SpV5rTim8al
 ssglqIiF9YgqOzHLqJZqzINYMXol/6Ytl0oWuBU1cxxtn4piVg5XKFxBseq/mZVwvE
 /ahkvfIEGhEI3Uzc8Ill4yGv+V+g5AVQ0OMvc49X9wKEmup4pn0NkLvGks4ZT0ZrRS
 TVX1dt1sZJDqg==
From: Jakub Kicinski <kuba@kernel.org>
To: minyard@acm.org,
	andrew.manley@sealingtech.com
Date: Wed, 24 Nov 2021 13:03:23 -0800
Message-Id: <20211124210323.1950976-1-kuba@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We're hitting OOB accesses in handle_ipmb_direct_rcv_rsp()
 (memcpy of size -1) after user space generates a message. Looks like the
 message is incorrectly assumed to be of the new IPMB type, because t [...]
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mpzQh-000455-7I
X-Mailman-Approved-At: Wed, 24 Nov 2021 23:18:56 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: fix oob access due to uninit
 smi_msg type
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
Cc: Jakub Kicinski <kuba@kernel.org>, openipmi-developer@lists.sourceforge.net,
 kernel-team@fb.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

We're hitting OOB accesses in handle_ipmb_direct_rcv_rsp() (memcpy of
size -1) after user space generates a message. Looks like the message
is incorrectly assumed to be of the new IPMB type, because type is never
set and message is allocated with kmalloc() not kzalloc().

Fixes: 059747c245f0 ("ipmi: Add support for IPMB direct messages")
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
Would it be possible to get something like this to Linus ASAP?
It's flipping over all my test boxes.
---
 drivers/char/ipmi/ipmi_msghandler.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index deed355422f4..f0b18c25cbb1 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -5031,6 +5031,7 @@ struct ipmi_smi_msg *ipmi_alloc_smi_msg(void)
 	if (rv) {
 		rv->done = free_smi_msg;
 		rv->user_data = NULL;
+		rv->type = IPMI_SMI_MSG_TYPE_NORMAL;
 		atomic_inc(&smi_msg_inuse_count);
 	}
 	return rv;
-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
