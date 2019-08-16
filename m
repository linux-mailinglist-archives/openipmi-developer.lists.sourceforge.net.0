Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B3C8FCA6
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 Aug 2019 09:44:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hyWuJ-00053O-NP; Fri, 16 Aug 2019 07:44:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baruch@tkos.co.il>) id 1hyWuH-00053H-UG
 for openipmi-developer@lists.sourceforge.net; Fri, 16 Aug 2019 07:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nan8vrKKYGrcfQyNUEsL6avOi9sMWksRrOoGwqkAs5Q=; b=BK5yYxL14Tg3hh3HJoUjr0DoEP
 tfdq9iv2IS1yrsqyfHOeyZDMJbKZR7qmchdUtwtztAnXYav2kqK0YrNG9uXoLkPA/IKdvHBs4UP5D
 G0PKFaAszeW2I0sAmED/4Ym1Cw+3QpNzC8OEHoczf2fWaM8SDtQnES7liJQ2HgSsGd/o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Nan8vrKKYGrcfQyNUEsL6avOi9sMWksRrOoGwqkAs5Q=; b=O
 veLAfGfr452U/AbfkUL1mwzFI0sED1vXiywyZeSHJoINqGhXVMZccCpXr6qMcY43zmed6a2wqRDRa
 kMlj4uup9YjCu5lYoseK9z6M0rzQuVFQs4a4Gjml4/C7nbILihQoj3FylZYN8MydX/V1hXZ0eGWMm
 3QGxhLVuo7cqQ83E=;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hyWuB-005bZV-Eq
 for openipmi-developer@lists.sourceforge.net; Fri, 16 Aug 2019 07:44:17 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id C28294400C6;
 Fri, 16 Aug 2019 09:55:05 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Corey Minyard <minyard@acm.org>
Date: Fri, 16 Aug 2019 09:54:57 +0300
Message-Id: <6a051666b50ae1df24b24312a7a56a03e343c15d.1565938497.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tkos.co.il]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hyWuB-005bZV-Eq
Subject: [Openipmi-developer] [PATCH] sample: fix readline include in
 ipmi_serial_bmc_emu.c
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
Cc: openipmi-developer@lists.sourceforge.net, Baruch Siach <baruch@tkos.co.il>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Bundled editline has been removed. Use the readline headers instead. Fix
the build when editline is not installed on host.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 sample/ipmi_serial_bmc_emu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sample/ipmi_serial_bmc_emu.c b/sample/ipmi_serial_bmc_emu.c
index e0ae0197688b..1b8bb9ac201f 100644
--- a/sample/ipmi_serial_bmc_emu.c
+++ b/sample/ipmi_serial_bmc_emu.c
@@ -42,7 +42,7 @@
 #include <unistd.h>
 #include <stdlib.h>
 #include <sys/select.h>
-#include <editline/readline.h>
+#include <readline/readline.h>
 
 #define _GNU_SOURCE
 #include <getopt.h>
-- 
2.23.0.rc1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
