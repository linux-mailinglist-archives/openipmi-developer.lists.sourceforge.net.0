Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC971B45CA
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Apr 2020 15:04:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jRF2n-0002rd-Vt; Wed, 22 Apr 2020 13:04:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jRF2m-0002rF-GK
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Apr 2020 13:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yd6ZoaSa7+gKOf16+f+JdBYQSA5NQifh2BlQ+sB0L9g=; b=L9tOLmKK8m+S44K/KbU+luA+e1
 QiQk9n3OgnSP/dVLStSFcJifRGq5/To/EVCUgOxi5kiM7KdY25n3fLov6sKgWDWNJ9TjctJng0h6y
 WgIOWWFXzGDlj31TZ2IMyW2gnAScLisjVxu+jD/KFHWWAUA/lahfom/qLUYmtoSwWsOk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Yd6ZoaSa7+gKOf16+f+JdBYQSA5NQifh2BlQ+sB0L9g=; b=g
 0VvoKjP0luqFDn7STN4M7rfiDpzk+Ou6SawTFSuhR/VSmEghJAHFSc5BNLRg+k1tsjgB/956zarwj
 BdWQ73xHmD4mB9gzVh0+ZNglnZ0ox7PNMGVYhadfaAsw89dynXcqcC6imS6JC/HlqnmaWmTMXWHJ6
 r/gdv4h7qYInm1Sk=;
Received: from mga02.intel.com ([134.134.136.20])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jRF2i-006Ju8-M0
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Apr 2020 13:04:00 +0000
IronPort-SDR: DYx7puIlYHIUQWyJGY8P+rw+PPqCuUbML/SBs8DkFVL2IjEMocZ9Ly4GWlg+0sTuRBuBOZkTPZ
 Xdo+L0cMUlwQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 06:03:51 -0700
IronPort-SDR: ffzowPJDWuE317LHev9PlVVV7g1ZI+pQKXR9sCISOQAehPBanV2Ke0AfpwsI1lT7SCMLF8tBtu
 BwdnuNlUgXJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,414,1580803200"; d="scan'208";a="291936127"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga008.jf.intel.com with ESMTP; 22 Apr 2020 06:03:49 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id F1BC058F; Wed, 22 Apr 2020 16:03:48 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net
Date: Wed, 22 Apr 2020 16:03:48 +0300
Message-Id: <20200422130348.38749-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jRF2i-006Ju8-M0
Subject: [Openipmi-developer] [PATCH v1] ipmi: Replace guid_copy() with
 import_guid() where it makes sense
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

There is a specific API to treat raw data as GUID, i.e. import_guid().
Use it instead of guid_copy() with explicit casting.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 9afd220cd824e..e1b22fe0916cf 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3172,7 +3172,7 @@ static void guid_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 		goto out;
 	}
 
-	guid_copy(&bmc->fetch_guid, (guid_t *)(msg->msg.data + 1));
+	import_guid(&bmc->fetch_guid, msg->msg.data + 1);
 	/*
 	 * Make sure the guid data is available before setting
 	 * dyn_guid_set.
-- 
2.26.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
