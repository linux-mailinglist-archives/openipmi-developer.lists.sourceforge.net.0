Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 501534792C8
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Dec 2021 18:25:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1myGyY-0005Px-LZ; Fri, 17 Dec 2021 17:24:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cascardo@canonical.com>) id 1myFPR-0000pn-04
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Dec 2021 15:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JXQGwMMmUW1nBCI4kpGuICxFe0oVRCxJl7LFrpgK+VU=; b=c7MxpngWk8+x5gZl5bjF9fsvog
 iS9wj9H4A9h7pIUVvZEy47vzqDrOYSo5WvdQ5DPy/qg/RuEMJ7CjFkqhGpLDURRUrgifgYu+z8d3n
 pIwyWlugzaGFdg2Z34OWrUci/74LTU5acmR9ineRTeoRy9w512Q3CrT5Jsx0xZFzKS2A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JXQGwMMmUW1nBCI4kpGuICxFe0oVRCxJl7LFrpgK+VU=; b=J
 3UqoO2iLXvy7oJzWhe6n69sC7nSeVwa3pnM4Matsb2ymat20wezNb2pFZes5kL3Vda2+zCdOaFtDd
 WTHmwLSM482Ek2DSe5DCY3sUXH6n5D8XrCD2GyUEmVsIfMcVGIusMZRn5FI3aOKcW9mkPxxnEQi7z
 o8AlKbt1A0wORIEg=;
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1myFPR-00076K-1x
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Dec 2021 15:44:38 +0000
Received: from mussarela.. (unknown [179.93.189.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 25AF540037; 
 Fri, 17 Dec 2021 15:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1639755866;
 bh=JXQGwMMmUW1nBCI4kpGuICxFe0oVRCxJl7LFrpgK+VU=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=uWqBCX2tvlb2lvqEm+eOp8NgBPJacuUGBjusaWrc78j5+VDYQ+6Cgg0NDS3Wb5EAL
 dMNTR2qN/0+Qf9bNjf1R82KG5pyL8pqu3L1z1SzkGY1e+im0Wx1X7tRdXJhSATb3Bh
 u6GoeYCA1UQDr8vYT+b+My3g0tlUn4OEBV/YkGfPdcl7ISCVzlNtgSAMjTd9f7DyzK
 nZ7SXZ5ZZgUvXwuzGPcRlVkh6R1DYB0ZiwrD40YoWlhsulS5tbNSMvq/NGentd+JT6
 p84u25SMmn7VizckeUDDx53G3AUzsVce/IvX0Ks0la39J4i3oORo+sODn2/9kYOCSB
 anxHmDRdFhnAg==
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: openipmi-developer@lists.sourceforge.net
Date: Fri, 17 Dec 2021 12:44:09 -0300
Message-Id: <20211217154410.1228673-1-cascardo@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In case, init_srcu_struct fails (because of memory allocation
 failure), we might proceed with the driver initialization despite srcu_struct
 not being entirely initialized. Fixes: 913a89f009d9 ("ipmi: Don't initialize
 anything in the core until something uses it") Signed-off-by: Thadeu Lima
 de Souza Cascardo <cascardo@canonical.com> Cc: Corey Minyard
 <cminyard@mvista.com [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1myFPR-00076K-1x
X-Mailman-Approved-At: Fri, 17 Dec 2021 17:24:57 +0000
Subject: [Openipmi-developer] [PATCH 1/2] ipmi: bail out if init_srcu_struct
 fails
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
Cc: stable@vger.kernel.org, ioanna-maria.alifieraki@canonical.com,
 linux-kernel@vger.kernel.org, minyard@acm.org, minyard@mvista.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In case, init_srcu_struct fails (because of memory allocation failure), we
might proceed with the driver initialization despite srcu_struct not being
entirely initialized.

Fixes: 913a89f009d9 ("ipmi: Don't initialize anything in the core until something uses it")
Signed-off-by: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
Cc: Corey Minyard <cminyard@mvista.com>
Cc: stable@vger.kernel.org
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c837d5416e0e..84975b21fff2 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -5392,7 +5392,9 @@ static int ipmi_init_msghandler(void)
 	if (initialized)
 		goto out;
 
-	init_srcu_struct(&ipmi_interfaces_srcu);
+	rv = init_srcu_struct(&ipmi_interfaces_srcu);
+	if (rv)
+		goto out;
 
 	timer_setup(&ipmi_timer, ipmi_timeout, 0);
 	mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
-- 
2.32.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
