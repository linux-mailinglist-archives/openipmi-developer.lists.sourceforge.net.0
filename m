Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D66447E18
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 11:37:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk21j-0001bH-Qp; Mon, 08 Nov 2021 10:37:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bp@alien8.de>) id 1mk21i-0001ax-6V
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 10:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ND2LAp5V1cntcC8R5Alkyf27iXFfBHan47izc4wnMQM=; b=aomctyn0qyNMa1vMIZLYcP73si
 nEVEsCKCk2gXfDk0hKpBFruAIHTPFkeeFKxO23oRMw8ej0I9t8ov2zVgN3k6e2kSdjDJmoLK/TtRH
 6zWCXjZFK+XgDJbEd8uMkQ+Th+49Q2T458B0ETA0wxaXzP96pvzJbIdCEsZEg6gpVIYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ND2LAp5V1cntcC8R5Alkyf27iXFfBHan47izc4wnMQM=; b=BF97k2OyTRsGI+z0trDVUqBJco
 JnOgZOxwnM3pewdlhh27gMbYo/u5+r4o5QHeIV8/RvsZpvMjH+VsDYAXNPQYg7BJesJe8q5GRHDFJ
 FxWlFHmyGQO77FveAqTT0f/XLU46e2C21zVmyrlvb8nC6ocujDNHTucqEvsvVVoW7xSA=;
Received: from mail.skyhub.de ([5.9.137.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk21b-0005Kf-Ap
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 10:37:22 +0000
Received: from zn.tnic (p200300ec2f33110088892b77bd117736.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f33:1100:8889:2b77:bd11:7736])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 8FBB91EC04E4;
 Mon,  8 Nov 2021 11:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1636366330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ND2LAp5V1cntcC8R5Alkyf27iXFfBHan47izc4wnMQM=;
 b=EGQc7Yry2RAR5SapNiYcK4fsmLV9Cz0AL6DHe24vwqSfXZCKqw9uPBeZlXRkPYKfLdQO2v
 ThnmTWk7RtlmeoysorTcja4Mz2N1X72PXPumoiSYch+ZRPoFZSQ9/+ytocg1QFAppS1ocO
 BoPQnK6zsahj2qibw4f7T6ZH5klZvQc=
From: Borislav Petkov <bp@alien8.de>
To: LKML <linux-kernel@vger.kernel.org>
Date: Mon,  8 Nov 2021 11:11:18 +0100
Message-Id: <20211108101157.15189-4-bp@alien8.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20211108101157.15189-1-bp@alien8.de>
References: <20211108101157.15189-1-bp@alien8.de>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Borislav Petkov <bp@suse.de> Avoid homegrown notifier
 registration checks. No functional changes. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mk21b-0005Kf-Ap
Subject: [Openipmi-developer] [PATCH v0 03/42] impi: Check notifier
 registration return value
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Borislav Petkov <bp@suse.de>

Avoid homegrown notifier registration checks.

No functional changes.

Signed-off-by: Borislav Petkov <bp@suse.de>
Cc: openipmi-developer@lists.sourceforge.net
---
 drivers/char/ipmi/ipmi_msghandler.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index deed355422f4..9df360b53a90 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -5381,7 +5381,8 @@ static int ipmi_init_msghandler(void)
 	timer_setup(&ipmi_timer, ipmi_timeout, 0);
 	mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
 
-	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
+	if (atomic_notifier_chain_register(&panic_notifier_list, &panic_block))
+		pr_warn("IPMI panic notifier already registered\n");
 
 	initialized = true;
 
-- 
2.29.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
