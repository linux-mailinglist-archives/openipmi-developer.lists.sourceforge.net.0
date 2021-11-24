Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA1345D11C
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Nov 2021 00:19:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mq1XV-0002we-UR; Wed, 24 Nov 2021 23:18:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kuba@kernel.org>) id 1mpzRI-0006a1-7c
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Nov 2021 21:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3qHxZSOj1vBpN0K7Px/+6op4Q+iU5I6TvAeW8twJfHk=; b=ZWPXkSyTxnTymCuhaeMshtEbw9
 odmD98fwzzSukp+OyIv42eseVMGAmf+zvqE14WR4mLLge3n+SPMb2iU8hpYlun+gQ+baG25amLgej
 sevfh3rCKrShRimqkqiJ7nISWiUVkj40OZMUFBkZvqhAoRN/Zo+dwqnwDOGWR4v/mG7Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3qHxZSOj1vBpN0K7Px/+6op4Q+iU5I6TvAeW8twJfHk=; b=H
 yUlwH0/9sMzjeHzQ0UbvK/tFi1NfcP3e0fP8z7DKk/eYATGWcgCEHmYuDvPXAyvzpM4fZrrCZrXX/
 c8EuVXSdELsJrRuD97MB4uPhAfz2rZ61fDrMzcCn6WNP1CI3VGxNcHn56uVsznEC/dxUh7Y/mfSMi
 wd7azlcgVIhQBuJI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpzRI-000475-Q3
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Nov 2021 21:04:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3DE1560FDA;
 Wed, 24 Nov 2021 21:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637787859;
 bh=uN2TA2B5PSU3XKKm6x4q0VQbJOwPQCaggZN2EMev0CM=;
 h=From:To:Cc:Subject:Date:From;
 b=nmXHHyO63mCsQycvpalv5QD58zkh5D4Qe62gS7hnBmaZ/gbpzzG31gsYdN6bAIBha
 6+UYjsvBTuHj7C9Y4uhVJvAizWdAANuYdZiOAXoqRY4kafdAYnbc88HVu7S7ySdXx1
 /qAK1Hf0ldSvIhPKxvEmTk0+qqMNCK40WclirjGndEwBox9EUjtMkzzxp9o13sh9vN
 ZNgqu2iR6+vea+b5SWhVXEuNVfa/DJJExCNyEmD/zfVkVkbB/3aoEv7qq+rSGhrwRP
 urbjvtPdMdGJKx5D8RdhD1q4+76afeyCZBHZLgoJRu3kWzfcF7fR6g9GaYeRfvdTty
 yCmqbISNQ2JJQ==
From: Jakub Kicinski <kuba@kernel.org>
To: minyard@acm.org,
	andrew.manley@sealingtech.com
Date: Wed, 24 Nov 2021 13:04:13 -0800
Message-Id: <20211124210413.1951047-1-kuba@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We check if response is the right size but if it's not we
 jump to return_unspecified which creates a response of size 3. We need size
 4 to prevent OOB in handle_ipmb_direct_rcv_rsp(). Was this suppose [...] 
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
X-Headers-End: 1mpzRI-000475-Q3
X-Mailman-Approved-At: Wed, 24 Nov 2021 23:18:56 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: fix
 IPMI_SMI_MSG_TYPE_IPMB_DIRECT response length checking
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
Cc: Jakub Kicinski <kuba@kernel.org>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

We check if response is the right size but if it's not we jump
to return_unspecified which creates a response of size 3.
We need size 4 to prevent OOB in handle_ipmb_direct_rcv_rsp().
Was this supposed to override the message type, too?

Fixes: 059747c245f0 ("ipmi: Add support for IPMB direct messages")
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
Dunno if this is the right fix, but the bug is pretty clearly there.
---
 drivers/char/ipmi/ipmi_msghandler.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index f0b18c25cbb1..0011b04f43c9 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4453,6 +4453,7 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 		msg->rsp[0] = msg->data[0] | (1 << 2);
 		msg->rsp[1] = msg->data[1];
 		msg->rsp[2] = IPMI_ERR_UNSPECIFIED;
+		msg->type = IPMI_SMI_MSG_TYPE_NORMAL;
 		msg->rsp_size = 3;
 	} else if (msg->type == IPMI_SMI_MSG_TYPE_IPMB_DIRECT) {
 		/* commands must have at least 3 bytes, responses 4. */
-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
