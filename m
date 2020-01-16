Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CC313E53D
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Jan 2020 18:13:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1is8iJ-0003Pc-GA; Thu, 16 Jan 2020 17:13:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1is8iI-0003PU-AC
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jan 2020 17:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0XO4zHp41coVxQTuBwyzwMf4F8P8dW1c6r9sQi9L9dw=; b=Bj+aFQ8bpcPr0R5S+dGpt5ALpc
 /pi2AeGpv4Ip8OlSQhQcVLZ0239xPTEVWvB5r0D9ie2fHMW9MfhuFMnPvCjMolTYcU/5OZB3yjFHo
 Zihnnh5LfWCUbSU12BzuV7FSdQPzetEhjDBViRez4ig0cXahhENL4vBXXJU5I5kbsp9s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0XO4zHp41coVxQTuBwyzwMf4F8P8dW1c6r9sQi9L9dw=; b=kZRPenUDpgh+u5IwXFd2xCNb6V
 EZxDMf/COwcu3/KO4b4uMlDIaS9Q7hWyRsdM9vH//9fC7+1jo3THaHLR1AW0asiN8dpS6yt4E3zX/
 DmDFZzcxcbY2lkiFj43HW6+cq3cRsaZnkei1nAERVVBAzFM3M1xA+1rFsFLtBwEvLShk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1is8iG-009Yay-Jw
 for openipmi-developer@lists.sourceforge.net; Thu, 16 Jan 2020 17:13:46 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A039246AC;
 Thu, 16 Jan 2020 17:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194819;
 bh=/+tlWGtQQlVArvWt2Onf8esOdt9YBNdy8vZHN0T9pU8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KJFiEYIiEc/m6QAQvVSn6FJV7kaYoxpy9rcoU+e0+RqLjsEUSJB69Qib2YKnLy+D8
 shMBWHLiWQqmSo0rQdTA/F4biG48WXDalwQEdKZ+KKIAnaFj4nNPzT90zvG7DKpKHB
 Ilr0Yyy0tvamoVAW9zYmkHqprtUd+GgLy85F0atc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu, 16 Jan 2020 12:04:22 -0500
Message-Id: <20200116170509.12787-361-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pdev.id]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1is8iG-009Yay-Jw
Subject: [Openipmi-developer] [PATCH AUTOSEL 4.19 624/671] ipmi: Fix memory
 leak in __ipmi_bmc_register
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
Cc: Sasha Levin <sashal@kernel.org>, Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net,
 Navid Emamdoost <navid.emamdoost@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Navid Emamdoost <navid.emamdoost@gmail.com>

[ Upstream commit 4aa7afb0ee20a97fbf0c5bab3df028d5fb85fdab ]

In the impelementation of __ipmi_bmc_register() the allocated memory for
bmc should be released in case ida_simple_get() fails.

Fixes: 68e7e50f195f ("ipmi: Don't use BMC product/dev ids in the BMC name")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
Message-Id: <20191021200649.1511-1-navid.emamdoost@gmail.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 91f2d9219489..980eb7c60952 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2965,8 +2965,11 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
 		bmc->pdev.name = "ipmi_bmc";
 
 		rv = ida_simple_get(&ipmi_bmc_ida, 0, 0, GFP_KERNEL);
-		if (rv < 0)
+		if (rv < 0) {
+			kfree(bmc);
 			goto out;
+		}
+
 		bmc->pdev.dev.driver = &ipmidriver.driver;
 		bmc->pdev.id = rv;
 		bmc->pdev.dev.release = release_bmc_device;
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
