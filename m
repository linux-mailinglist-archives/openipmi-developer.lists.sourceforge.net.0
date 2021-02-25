Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7C33249CA
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Feb 2021 05:37:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lF8PR-0001tI-3x; Thu, 25 Feb 2021 04:37:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1lF8PN-0001t5-QT
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Feb 2021 04:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LX09vqBowNjFNzslfsEO/PgW7Qo8me9A1jPMNYB2OIk=; b=jnk1+BOcJ79c3CfbkLWSW7nhDi
 AHBYqillsuOia5yh2HoYhoRYrg5GhWwOjE0yr9C2Z4hrHl6LVsheXzgzm/WpnE29jwZFaUVOpj93c
 Nqi7tMeG6ezc4sjxgfWZmmBs2fh7szVMVD2otJ2NqStuKX3Y4sb0949WsRBEX7jHfIDc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LX09vqBowNjFNzslfsEO/PgW7Qo8me9A1jPMNYB2OIk=; b=T8/90FvxqnmNCvXa+GiB68yrMt
 g6EPt/58MEnyWjki4ruzm8mV0eAFScX9HNxTySSYxuI6dbYXmTlKnQsFR+caPfTp9Jrb2b5IQ7SgR
 igmq6rZJUk2cDvM4FSeTTCJmw9zKjPKdehz8sXNuVH1yTB0iH7CzJ/xuGkr3rKSo6yrA=;
Received: from mga06.intel.com ([134.134.136.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lF8PG-0007kz-9T
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Feb 2021 04:37:49 +0000
IronPort-SDR: AcW0BKrs/sB4b+eKiz6KSMVKFIdKkWJnJzdnBtWEwzMeSdf7hBQ7mLA/81tDZipqZ2iu6A8in4
 cljJ7Txfax0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9905"; a="246815697"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="246815697"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 20:37:36 -0800
IronPort-SDR: TxRerTNbknCJcucnqVXuhmnTzZBhW4GFgMtGZK/x7CT4xfx8E7E6MdkBF1gd4M/KpuAapVCSx+
 32wadGjTeLYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="593918390"
Received: from maru.jf.intel.com ([10.54.51.77])
 by fmsmga006.fm.intel.com with ESMTP; 24 Feb 2021 20:37:35 -0800
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
To: Corey Minyard <minyard@acm.org>, Xianting Tian <tian.xianting@h3c.com>,
 Terry Duncan <terry.s.duncan@intel.com>
Date: Wed, 24 Feb 2021 20:50:27 -0800
Message-Id: <20210225045027.9344-1-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
X-Headers-End: 1lF8PG-0007kz-9T
Subject: [Openipmi-developer] [PATCH v2] ipmi: Refine retry conditions for
 getting device id
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
Cc: openipmi-developer@lists.sourceforge.net,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Terry Duncan <terry.s.duncan@intel.com>

Rarely but still failures are observed while getting BMC device ID
so this commit changes the condition to retry to get device id
when cc is not IPMI_CC_NO_ERROR.

Signed-off-by: Terry Duncan <terry.s.duncan@intel.com>
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
Changes since v1:
 - Changed the condition to make it retry when cc isn't IPMI_CC_NO_ERROR.

 drivers/char/ipmi/ipmi_msghandler.c | 6 ++----
 drivers/char/ipmi/ipmi_si_intf.c    | 6 ++----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c44ad18464f1..f19f0f967e28 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2447,10 +2447,8 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
 	wait_event(intf->waitq, bmc->dyn_id_set != 2);
 
 	if (!bmc->dyn_id_set) {
-		if ((bmc->cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
-		     || bmc->cc ==  IPMI_DEVICE_IN_INIT_ERR
-		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR)
-		     && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
+		if (bmc->cc != IPMI_CC_NO_ERROR &&
+		    ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
 			msleep(500);
 			dev_warn(intf->si_dev,
 			    "BMC returned 0x%2.2x, retry get bmc device id\n",
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 5eac94cf4ff8..be41a473e3c2 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1346,10 +1346,8 @@ static int try_get_dev_id(struct smi_info *smi_info)
 		/* record completion code */
 		unsigned char cc = *(resp + 2);
 
-		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
-		    || cc == IPMI_DEVICE_IN_INIT_ERR
-		    || cc == IPMI_NOT_IN_MY_STATE_ERR)
-		    && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
+		if (cc != IPMI_CC_NO_ERROR &&
+		    ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
 			dev_warn(smi_info->io.dev,
 			    "BMC returned 0x%2.2x, retry get bmc device id\n",
 			    cc);
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
