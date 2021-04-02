Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B89352EA3
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:43:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSNpk-000132-4A; Fri, 02 Apr 2021 17:43:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSNpj-00012u-26
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pDtAeVAVMIeRTxZZBwzlpKE9mqkAf+3IEOYMDOG3AlU=; b=hAFFmyE35QZ/u5Tk9sEycdhrV4
 8RkMh/aVSOIeEDOSVCg6fc4za7HjDQbsMJO8FG38Iz4zv5mIrVhvIgwiRqJhd6WbKVxHRMdJTfwC9
 ar8XILDLS6iYEtkIZnvTL155j8RXXXmQK8fnkK/25xQxU9NzphN7Ng6/556RF/0oUjpM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pDtAeVAVMIeRTxZZBwzlpKE9mqkAf+3IEOYMDOG3AlU=; b=auzrkJR7N/MlX+H4neYT51gP1V
 8dHBZFkhmBuN+CYwQerZ3QgdkE4PQCgkKo1txFLUR5ZWV6OOrtA1GrCCti80LRDGfdThhjPuAMzr2
 ujZ3tjARocL+3rZ263b3CJI70o6qe8wmaSsuJ7fEPTH2Tw/IhCd7a0wVVhbTuvAMGEnw=;
Received: from mga09.intel.com ([134.134.136.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lSNpV-0005B8-PP
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:43:46 +0000
IronPort-SDR: aj5HxfLEhHNci75Bc3oA2Vp/UHnr/ziWqIha1oEyThE0FS6fOiBTGSRrdExLc4PgYngpHd1xT2
 Dc9CqH9ks3EA==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="192613593"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="192613593"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:28 -0700
IronPort-SDR: GPRwCoM4mGEYiCnGasQYzfOtjol4yoZQD7WWB/rC4BaXyzuK+sMagSnLTuuVrNWBswxp9MvQpz
 Ql6UREv+Gl6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="419749787"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga008.jf.intel.com with ESMTP; 02 Apr 2021 10:43:26 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id AE918368; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:30 +0300
Message-Id: <20210402174334.13466-7-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
References: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
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
X-Headers-End: 1lSNpV-0005B8-PP
Subject: [Openipmi-developer] [PATCH v2 06/10] ipmi_si: Reuse si_to_str[]
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

Instead of making the comparison one by one, reuse si_to_str[] array
in ipmi_hardcode_init_one() in conjunction with match_string() API.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si.h          |  6 +++++-
 drivers/char/ipmi/ipmi_si_hardcode.c | 23 +++++++++--------------
 drivers/char/ipmi/ipmi_si_intf.c     |  3 ++-
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
index bac0ff86e48e..9492c53eba86 100644
--- a/drivers/char/ipmi/ipmi_si.h
+++ b/drivers/char/ipmi/ipmi_si.h
@@ -18,10 +18,14 @@
 #define DEFAULT_REGSPACING	1
 #define DEFAULT_REGSIZE		1
 
+/* Numbers in this enumerator should be mapped to si_to_str[] */
 enum si_type {
-	SI_TYPE_INVALID, SI_KCS, SI_SMIC, SI_BT
+	SI_TYPE_INVALID, SI_KCS, SI_SMIC, SI_BT, SI_TYPE_MAX
 };
 
+/* Array is defined in the ipmi_si_intf.c */
+extern const char *const si_to_str[];
+
 enum ipmi_addr_space {
 	IPMI_IO_ADDR_SPACE, IPMI_MEM_ADDR_SPACE
 };
diff --git a/drivers/char/ipmi/ipmi_si_hardcode.c b/drivers/char/ipmi/ipmi_si_hardcode.c
index f6ece7569504..bbcf7483d569 100644
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
+		t = match_string(si_to_str, -1, si_type_str);
+		if (t < 0) {
+			pr_warn("Interface type specified for interface %d, was invalid: %s\n",
+				i, si_type_str);
+			return;
+		}
+		p.type = t;
 	}
 
 	p.regsize = regsizes[i];
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index be41a473e3c2..d6ecf88636c4 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -70,7 +70,8 @@ enum si_intf_state {
 #define IPMI_BT_INTMASK_CLEAR_IRQ_BIT	2
 #define IPMI_BT_INTMASK_ENABLE_IRQ_BIT	1
 
-static const char * const si_to_str[] = { "invalid", "kcs", "smic", "bt" };
+/* 'invalid' to allow a firmware-specified interface to be disabled */
+const char *const si_to_str[] = { "invalid", "kcs", "smic", "bt", NULL };
 
 static bool initialized;
 
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
