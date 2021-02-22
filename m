Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B767F322F9F
	for <lists+openipmi-developer@lfdr.de>; Tue, 23 Feb 2021 18:29:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lEbVJ-0008MH-7A; Tue, 23 Feb 2021 17:29:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jae.hyun.yoo@linux.intel.com>) id 1lEE5P-0000PM-Oh
 for openipmi-developer@lists.sourceforge.net; Mon, 22 Feb 2021 16:29:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0265BdGoNu+U7NYpkH3oIK2n+gh+RXkglLif33edsCE=; b=ipjo6NeWEkLIru3WL5BlgLAmpW
 0ZLcBsNBgmAehbrUkUESXMXKTKyDuLasSdhi4D25u14w8rdasU87qNDbuoI5y18beXUg62xjaWYJo
 FjEYGSAWi7LwGJlQ3CRTV2JNjLDdUPZwaw4As84odGNJbgrtocT3v+SmGHOVxE9HVRyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0265BdGoNu+U7NYpkH3oIK2n+gh+RXkglLif33edsCE=; b=cj5NL4G6Mr73HWCqenNqP0mOta
 1+QVsolqjt4Y5wka6ZiND0JUkVX9+VKwEBrBulSg10x5mZO/2X86RoPWc/NjAleAVyboI5H4KcJGj
 cRHJ64z+dkn5rcOw+FQE5ge1U+X14QmZoDapc9gToTOYKSqdWFd2OfjMBL3gIMFM06wA=;
Received: from mga12.intel.com ([192.55.52.136])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lEE5K-001QAb-K5
 for openipmi-developer@lists.sourceforge.net; Mon, 22 Feb 2021 16:29:27 +0000
IronPort-SDR: TDN6ckYD7pz6b7Vmdd2/6rATQIHm1A2DSjD5ffwiDvId8nw+2ps8eklG6zUgrrjRBaSVOKucJt
 yqsQ84nweTVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="163716768"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="163716768"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 08:29:17 -0800
IronPort-SDR: nV52LKGHr2K5rsicSKE7vD2dAVE3vw3A+Wn6Rwzg0RVRiVrPhw/MOKOYRRANW/a1gjoWBJoxRB
 qd7Ay4R3+oIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="402671576"
Received: from maru.jf.intel.com ([10.54.51.77])
 by orsmga008.jf.intel.com with ESMTP; 22 Feb 2021 08:29:16 -0800
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
To: Corey Minyard <minyard@acm.org>, Xianting Tian <tian.xianting@h3c.com>,
 Terry Duncan <terry.s.duncan@intel.com>
Date: Mon, 22 Feb 2021 08:41:58 -0800
Message-Id: <20210222164158.899-1-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [192.55.52.136 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
X-Headers-End: 1lEE5K-001QAb-K5
X-Mailman-Approved-At: Tue, 23 Feb 2021 17:29:44 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Add additional conditions for
 retrying get device id
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
so this commit adds more conditions to retry to get device id.

Signed-off-by: Terry Duncan <terry.s.duncan@intel.com>
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
 drivers/char/ipmi/ipmi_si_intf.c    | 5 ++++-
 include/uapi/linux/ipmi_msgdefs.h   | 1 +
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index c44ad18464f1..decd33535ff7 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2449,7 +2449,10 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
 	if (!bmc->dyn_id_set) {
 		if ((bmc->cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
 		     || bmc->cc ==  IPMI_DEVICE_IN_INIT_ERR
-		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR)
+		     || bmc->cc ==  IPMI_NOT_IN_MY_STATE_ERR
+		     || bmc->cc ==  IPMI_TIMEOUT_ERR
+		     || bmc->cc ==  IPMI_RESPONSE_UNAVAILABLE
+		     || bmc->cc ==  IPMI_NODE_BUSY_ERR)
 		     && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
 			msleep(500);
 			dev_warn(intf->si_dev,
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 5eac94cf4ff8..c315f3fb0fc2 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1348,7 +1348,10 @@ static int try_get_dev_id(struct smi_info *smi_info)
 
 		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
 		    || cc == IPMI_DEVICE_IN_INIT_ERR
-		    || cc == IPMI_NOT_IN_MY_STATE_ERR)
+		    || cc == IPMI_NOT_IN_MY_STATE_ERR
+		    || cc == IPMI_TIMEOUT_ERR
+		    || cc == IPMI_RESPONSE_UNAVAILABLE
+		    || cc == IPMI_NODE_BUSY_ERR)
 		    && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
 			dev_warn(smi_info->io.dev,
 			    "BMC returned 0x%2.2x, retry get bmc device id\n",
diff --git a/include/uapi/linux/ipmi_msgdefs.h b/include/uapi/linux/ipmi_msgdefs.h
index 0934af3b8037..dbadbad71930 100644
--- a/include/uapi/linux/ipmi_msgdefs.h
+++ b/include/uapi/linux/ipmi_msgdefs.h
@@ -69,6 +69,7 @@
 #define IPMI_ERR_MSG_TRUNCATED		0xc6
 #define IPMI_REQ_LEN_INVALID_ERR	0xc7
 #define IPMI_REQ_LEN_EXCEEDED_ERR	0xc8
+#define IPMI_RESPONSE_UNAVAILABLE	0xce
 #define IPMI_DEVICE_IN_FW_UPDATE_ERR	0xd1
 #define IPMI_DEVICE_IN_INIT_ERR		0xd2
 #define IPMI_NOT_IN_MY_STATE_ERR	0xd5	/* IPMI 2.0 */
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
