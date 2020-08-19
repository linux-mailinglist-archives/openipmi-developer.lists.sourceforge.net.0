Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0610249A08
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 12:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8L7R-0007MW-Ld; Wed, 19 Aug 2020 10:14:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1k8L7Q-0007MI-IV
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 10:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZKcUB2eHlm+7+jl5wfm0mxa8S1Cl90oxFJdCdxvsAE0=; b=iXUjU7hzNNwUWuWKcxd3hN/NYL
 jltVKz+3r2RmsejSIpPeYxmBXkYAB/4e90UfBC8FolG5sQw41LF12rGCZl/hjJPbAAeqrvpHgZn5d
 kiSzJCGxTGad5CPeyk6oMhCq4NFXM55yhhQZEKXLeLCWow2b3Tq03eBive40GbJWHZk8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZKcUB2eHlm+7+jl5wfm0mxa8S1Cl90oxFJdCdxvsAE0=; b=G
 TTNc32JZPWoMw3twKL6iZuBhnkfuC+A9qiGxrBw1qJdjcL8LivaIubQy3ACz27PGIjHWNb/QavAk4
 CvrHL+L3as5Pnlb3XVbAQtlhempPd5I85SR0EtbXgCybfc5ySqAOgI69RC1o0Sk6j3FmX46wZ+loi
 5Z6FXiDXpWZqr1RU=;
Received: from mga14.intel.com ([192.55.52.115])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k8L7O-00CH4b-Tw
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 10:14:56 +0000
IronPort-SDR: r/n7ESDPA3cCbX/6WzC+taWbbkRsYigjKj/HSX3vwGC3wwh3MS21WOifqnCWtjcWQ2WdtOvM6H
 u1rKf0zUC6VQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="154346009"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="154346009"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 03:14:42 -0700
IronPort-SDR: hML8HqRKneUVidGNUl1LWyYMCgDKXg2P2W0t3DdQCl/pvSLGfVjvMGiGMMgzt7KcJGq8pyWzTO
 IgF66lkJirfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="278293075"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmsmga007.fm.intel.com with ESMTP; 19 Aug 2020 03:14:40 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 1890C1FD; Wed, 19 Aug 2020 13:14:40 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 19 Aug 2020 13:14:39 +0300
Message-Id: <20200819101439.74566-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8L7O-00CH4b-Tw
Subject: [Openipmi-developer] [PATCH v1] ipmi: convert tasklets to use new
 tasklet_setup() API
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

In preparation for unconditionally passing the struct tasklet_struct
pointer to all tasklet callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 737c0b6b24ea..20821194292b 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3430,9 +3430,7 @@ int ipmi_add_smi(struct module         *owner,
 	intf->curr_seq = 0;
 	spin_lock_init(&intf->waiting_rcv_msgs_lock);
 	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
-	tasklet_init(&intf->recv_tasklet,
-		     smi_recv_tasklet,
-		     (unsigned long) intf);
+	tasklet_setup(&intf->recv_tasklet, smi_recv_tasklet);
 	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
 	spin_lock_init(&intf->xmit_msgs_lock);
 	INIT_LIST_HEAD(&intf->xmit_msgs);
@@ -4467,10 +4465,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
 	}
 }
 
-static void smi_recv_tasklet(unsigned long val)
+static void smi_recv_tasklet(struct tasklet_struct *t)
 {
+	struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
 	unsigned long flags = 0; /* keep us warning-free. */
-	struct ipmi_smi *intf = (struct ipmi_smi *) val;
 	int run_to_completion = intf->run_to_completion;
 	struct ipmi_smi_msg *newmsg = NULL;
 
-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
