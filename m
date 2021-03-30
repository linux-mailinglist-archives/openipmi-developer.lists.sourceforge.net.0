Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB3B34F0B5
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Mar 2021 20:17:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRIvY-0005Qs-I3; Tue, 30 Mar 2021 18:17:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lRIvJ-0005QH-Vu
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J+IdWEVykN+YWtflg4k9bQC657mLaVFUmAGdpDGB44o=; b=EoPtULcs2e5qUfrXK3xA1/cv29
 AhKJr+04t0aGNrr403Sn4C3Gcq6mK7c3I2jXkdOQ2/Lhj09xu5dEEjkm96TkneYlagVxeZGgRxA8e
 v3sCQFtxSQSh74va53A/JhW15P9Jgzp5GUpNhYfOdzfMgJZux2Gi2jFqxNyCg1iT0f2c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J+IdWEVykN+YWtflg4k9bQC657mLaVFUmAGdpDGB44o=; b=Kt1TJ2e5dE+qtJ10odPnAjOKmk
 ePCBnfqSvxpN6DJOQB3dmK6p+SB2VFoS15PLkK19wmPXoGzbSJSePRDU68grkL9UzNAN4XBnaYgFf
 pxLS6yNz0iN44jfGy8C1cw4ihDwYfUigteu/FBjoav9rFV7Ry3ZgS44gIcqeCOQfbQiY=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lRIvE-0003ho-Uy
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 18:17:05 +0000
IronPort-SDR: 5lD4qcvs/Fh5yLkvVSgnXvPjiKV/VPwk6bsrrNxwzgPjjxY0jypIJz/kAoWQ4/Ec1o3aWeCs8t
 G2mshWy/HCNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="191931366"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="191931366"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 11:16:55 -0700
IronPort-SDR: CeoMWCfVGSdJmINyPHaR8iO6bTpC7TD/MRXBvK/yAPJl73TEqWaQ7PsF53mSp5ZT+OTDPJcqSr
 nLXWdqpaaGVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="527434455"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga004.jf.intel.com with ESMTP; 30 Mar 2021 11:16:53 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 5151A2BF; Tue, 30 Mar 2021 21:17:06 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Tue, 30 Mar 2021 21:16:45 +0300
Message-Id: <20210330181649.66496-6-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lRIvE-0003ho-Uy
Subject: [Openipmi-developer] [PATCH v1 06/10] ipmi_si: Reuse si_to_str
 array in ipmi_hardcode_init_one()
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
Cc: Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Instead of making the comparison one by one, reuse si_to_str array
in ipmi_hardcode_init_one() in conjunction with match_string() API.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si.h          |  3 +++
 drivers/char/ipmi/ipmi_si_hardcode.c | 23 +++++++++--------------
 drivers/char/ipmi/ipmi_si_intf.c     |  2 --
 3 files changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
index bac0ff86e48e..fd3167d1e1e9 100644
--- a/drivers/char/ipmi/ipmi_si.h
+++ b/drivers/char/ipmi/ipmi_si.h
@@ -22,6 +22,9 @@ enum si_type {
 	SI_TYPE_INVALID, SI_KCS, SI_SMIC, SI_BT
 };
 
+/* 'invalid' to allow a firmware-specified interface to be disabled */
+static __maybe_unused const char *const si_to_str[] = { "invalid", "kcs", "smic", "bt" };
+
 enum ipmi_addr_space {
 	IPMI_IO_ADDR_SPACE, IPMI_MEM_ADDR_SPACE
 };
diff --git a/drivers/char/ipmi/ipmi_si_hardcode.c b/drivers/char/ipmi/ipmi_si_hardcode.c
index f6ece7569504..cf3797523469 100644
--- a/drivers/char/ipmi/ipmi_si_hardcode.c
+++ b/drivers/char/ipmi/ipmi_si_hardcode.c
@@ -80,26 +80,21 @@ static void __init ipmi_hardcode_init_one(const char *si_type_str,
 					  enum ipmi_addr_space addr_space)
 {
 	struct ipmi_plat_data p;
+	int t;
 
 	memset(&p, 0, sizeof(p));
 
 	p.iftype = IPMI_PLAT_IF_SI;
-	if (!si_type_str || !*si_type_str || strcmp(si_type_str, "kcs") == 0) {
+	if (!si_type_str || !*si_type_str) {
 		p.type = SI_KCS;
-	} else if (strcmp(si_type_str, "smic") == 0) {
-		p.type = SI_SMIC;
-	} else if (strcmp(si_type_str, "bt") == 0) {
-		p.type = SI_BT;
-	} else if (strcmp(si_type_str, "invalid") == 0) {
-		/*
-		 * Allow a firmware-specified interface to be
-		 * disabled.
-		 */
-		p.type = SI_TYPE_INVALID;
 	} else {
-		pr_warn("Interface type specified for interface %d, was invalid: %s\n",
-			i, si_type_str);
-		return;
+		t = match_string(si_to_str, ARRAY_SIZE(si_to_str), si_type_str);
+		if (t < 0) {
+			pr_warn("Interface type specified for interface %d, was invalid: %s\n",
+				i, si_type_str);
+			return;
+		}
+		p.type = t;
 	}
 
 	p.regsize = regsizes[i];
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index be41a473e3c2..ff448098f185 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -70,8 +70,6 @@ enum si_intf_state {
 #define IPMI_BT_INTMASK_CLEAR_IRQ_BIT	2
 #define IPMI_BT_INTMASK_ENABLE_IRQ_BIT	1
 
-static const char * const si_to_str[] = { "invalid", "kcs", "smic", "bt" };
-
 static bool initialized;
 
 /*
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
