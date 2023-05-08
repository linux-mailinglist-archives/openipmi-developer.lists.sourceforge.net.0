Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F42226FAE13
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 May 2023 13:40:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pvzEU-0003B1-3x;
	Mon, 08 May 2023 11:40:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1pvzET-0003Ao-34
 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 May 2023 11:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6EabBptRAHZSd1yGsfC2L85P7eqfT9K0gsBXa587fa0=; b=gquMJqwZLMhEgWcI8hkCsgrJSE
 OXfOfRPIlJxeQX3fb31X47XSb6YODyafnJe4Sxx00MxgqRblzOyug95QHzwAR8dL6OzNF5ebwLs3k
 bDI6zXbi1D6OrjzgcUEaJyrQwlv53ufFN1IRukevZCsBAdd4vboTEffhZDEGra7XvpMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6EabBptRAHZSd1yGsfC2L85P7eqfT9K0gsBXa587fa0=; b=XKPxE12ajFcqGcj4yLYVKhOfuB
 0aljISV7q2SAXgu5MQiG7Y2q1KX5AOrAtDv2h8mlBASx0pBeX8bJYiicW1HSEtHei5AYKjvyGVJPz
 9+M8h4Qa4l85oYcIH2XXhPCHtQD5UGGAZ3JD8HSb9a0hFfuCD/bGk267tW45vHicPr8c=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pvzEP-001ynu-Uk for openipmi-developer@lists.sourceforge.net;
 Mon, 08 May 2023 11:40:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 87C936357B;
 Mon,  8 May 2023 11:40:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01208C433EF;
 Mon,  8 May 2023 11:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1683546036;
 bh=vfW6pT1Rr2ndNJlZba75W+pJ5FSenrKhaK+UucgNa2Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qsTsUne4cLppjpfqVn0HnfURXLatfzJJNbwST3BxGB/QprBKrhMYjyow4dnwGI77Y
 tEVSlGio3psdniJI7tLvs7yjcDwDxG36+f01S3PxdalhzXk8oWSgkLKNKIAYIHpoFi
 zrFcffZWm1rpm8KywwML/F7D2X1xHij0rPtY0phE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Mon,  8 May 2023 11:47:17 +0200
Message-Id: <20230508094821.435205068@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230508094811.912279944@linuxfoundation.org>
References: <20230508094811.912279944@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Randy Dunlap <rdunlap@infradead.org> [ Upstream commit
 2a587b9ad052e7e92e508aea90c1e2ae433c1908 ] REGMAP is a hidden (not user
 visible)
 symbol. Users cannot set it directly thru "make *config", so drivers should
 select it instead of depending on it if they need it. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pvzEP-001ynu-Uk
Subject: [Openipmi-developer] [PATCH 5.15 236/371] ipmi: ASPEED_BT_IPMI_BMC:
 select REGMAP_MMIO instead of depending on it
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
 Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, patches@lists.linux.dev,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Randy Dunlap <rdunlap@infradead.org>

[ Upstream commit 2a587b9ad052e7e92e508aea90c1e2ae433c1908 ]

REGMAP is a hidden (not user visible) symbol. Users cannot set it
directly thru "make *config", so drivers should select it instead of
depending on it if they need it.

Consistently using "select" or "depends on" can also help reduce
Kconfig circular dependency issues.

Therefore, change the use of "depends on REGMAP_MMIO" to
"select REGMAP_MMIO", which will also set REGMAP.

Fixes: eb994594bc22 ("ipmi: bt-bmc: Use a regmap for register access")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-Id: <20230226053953.4681-2-rdunlap@infradead.org>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 249b31197eeae..8298a4dd0de68 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -153,7 +153,8 @@ config IPMI_KCS_BMC_SERIO
 
 config ASPEED_BT_IPMI_BMC
 	depends on ARCH_ASPEED || COMPILE_TEST
-	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
+	depends on MFD_SYSCON
+	select REGMAP_MMIO
 	tristate "BT IPMI bmc driver"
 	help
 	  Provides a driver for the BT (Block Transfer) IPMI interface
-- 
2.39.2





_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
