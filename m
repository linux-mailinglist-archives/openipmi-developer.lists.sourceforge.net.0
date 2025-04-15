Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4300DA89727
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Apr 2025 10:53:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u4c1y-00013C-K7;
	Tue, 15 Apr 2025 08:52:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1u4c1x-000133-3N for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 08:52:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BeToUYRerlMERxu6AkjteOA0ZNPz4Tu5Zq3BxW0L8t0=; b=RdAOA77YNPRZ3AdNDmpdc8JnO/
 oSasbp96S7VTO0XWV60p5OLw3l9rcMrhVqxE/6kdwZyQsPHg/o9hgYCXx2gg91B73cv5BjFcxU3RF
 ox3yWthzBDcaUd24IzkohdAeUA1AXxWm0fLB6+j5pZNjOam0BgPIOyKNYDwTXmFtYuV4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=BeToUYRerlMERxu6AkjteOA0ZNPz4Tu5Zq3BxW0L8t0=; b=X
 m4fb+mT8UDV7KchGJIuQLEx5iBddgq02IU8OZn7RfHSGCZeLkhVled70bRy2OIsi0DTpkBkGnoK9y
 kW0hv30O0Q2jVT9zxec2tfFWS3lmXkitWFFJHg2rN1iEhm06WfTQjnvlDNbgUBb+sLroxk/dtFQ/9
 iP0tMNNS4yjauJmk=;
Received: from mgamail.intel.com ([192.198.163.8])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u4c1h-0001bE-A1 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Apr 2025 08:52:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744707137; x=1776243137;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BeQA07rWAq2VXgsT6pVbTPlGkpKB8k/93dQmrF4ZzOw=;
 b=aedUTY7rubs6Xd18fwCG6UppteMWwsMQ5cnkjpMw4Liigl0PjCC7uTJt
 3W1X+qbB2Hg3RH8rQa0oM7RmTprl5uoxaP7Iaf0y6JzMRRbv8chpib++N
 7ptuq1helBSjHGooVedxpk4IWPRVlWcSweamMuaAn2+pQ8knOaLgLSXqm
 KvgooLx3jnKXJO448I+KD8ADdTzDjYWBnuRo7Qa0lcpSbT/MQVQo7t8Zj
 IankX5ebzufeAS6gnItepSfp9vKFSyYIY7lsEJJU3OrDYHbGuiax2GZQR
 rqIQr3Unc7pcr4XZ+ixfwAfhM1lSwL9RckSUWzV/inFtfPwcBWCP6yHA8 g==;
X-CSE-ConnectionGUID: 1PauvbWGQnyiEA358BJ60Q==
X-CSE-MsgGUID: pUUxpsaATjqrRdMdlA2whA==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="63745977"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="63745977"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 01:52:07 -0700
X-CSE-ConnectionGUID: FyNUypTFSeiyoq4rfHLfSw==
X-CSE-MsgGUID: ALl81ON2TbKPQjQo4yJMSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="134855335"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2025 01:52:05 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 849DB17B; Tue, 15 Apr 2025 11:52:03 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev
Date: Tue, 15 Apr 2025 11:51:56 +0300
Message-ID: <20250415085156.446430-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Debian clang version 19.1.7 is not happy when compiled with
 `make W=1` (note, CONFIG_WERROR=y is the default): ipmi_si_platform.c:268:15:
 error: cast to smaller integer type 'enum si_type' from 'const void *'
 [-Werror, -Wvoid-pointer-to-enum-cast]
 268 | io.si_type = (enum si_type)device_get_match_data(&pdev->de [...] 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.8 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [192.198.163.8 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.198.163.8 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u4c1h-0001bE-A1
Subject: [Openipmi-developer] [PATCH v1 1/1] ipmi: si: Cast to smaller
 integer type without warning
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
Cc: Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Corey Minyard <corey@minyard.net>, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Debian clang version 19.1.7 is not happy when compiled with
`make W=1` (note, CONFIG_WERROR=y is the default):

ipmi_si_platform.c:268:15: error: cast to smaller integer type 'enum si_type' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
  268 |         io.si_type      = (enum si_type)device_get_match_data(&pdev->dev);

Fix this by intermediate cast to the uintptr_t, that makes compiler happy.

Fixes: 5be50eb5ae99 ("ipmi: si: Use device_get_match_data()")
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index 550cabd43ae6..47d3cbeb3fa0 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -265,7 +265,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
 	}
 
 	memset(&io, 0, sizeof(io));
-	io.si_type	= (enum si_type)device_get_match_data(&pdev->dev);
+	io.si_type	= (enum si_type)(uintptr_t)device_get_match_data(&pdev->dev);
 	io.addr_source	= SI_DEVICETREE;
 	io.irq_setup	= ipmi_std_irq_setup;
 
-- 
2.47.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
