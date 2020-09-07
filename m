Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BCC260001
	for <lists+openipmi-developer@lfdr.de>; Mon,  7 Sep 2020 18:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:Message-Id:Date:To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nDT5LsfqiC7ikgLD/8sdf8Ah/CqeTk7AJ8lHEBuqRZ0=; b=IE8WlSLisKO6cJQ7BfR53O2HrL
	vzzReS96EHpy8Tc43oVly5Mr7j8NuEWLTqLCeQwh1cetXsiKtRZ4187yw8GvcAimJQlK9WAGdP3O5
	k83pLb2IVB41ARKdyFaJCPwweSF1LSRfidgyuHCsGQ5OQL3x1X+nzisc1ww91jG3QPvo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kFKE6-00026h-BB; Mon, 07 Sep 2020 16:42:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=51253d80b=markubo@amazon.com>)
 id 1kFKE5-00026b-Qt
 for openipmi-developer@lists.sourceforge.net; Mon, 07 Sep 2020 16:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gaoG8GkE3nCA4mq3eby4DI5ttGvtMXjTHUELrf0upLM=; b=lFVVdGUSx2dQxWstyTbsAG0Uhz
 HZI5I1Nl+pO1ujc49Q9ih6MI5w2ETj0dL2fWq79P+wUpt85mBLWQXt/8dkjrSm3gq62zdRpcIea6K
 dl+Q3ZMlMbGNe5O++T8wO942QBAsIVXCsReq2KwRSybu3gh+b2jhNrJUrKym5e2B2NNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gaoG8GkE3nCA4mq3eby4DI5ttGvtMXjTHUELrf0upLM=; b=ApX05nZbHw8PYlNedjer8yVrpZ
 yt85IYboMsVrSLLkj1YzixEqunjiQwr0j+SvrYHuMV0sjus3/Nb337/pg7t9+iAO3z04fx5p7sBEU
 jzrKNZbHw1bzUzbbUezAmgu53/pAyr4SpttLm/wms/aXmM3FKqCad/c+Q/6h5t6oMCek=;
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFKE1-00FyeP-GI
 for openipmi-developer@lists.sourceforge.net; Mon, 07 Sep 2020 16:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1599496958; x=1631032958;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=gaoG8GkE3nCA4mq3eby4DI5ttGvtMXjTHUELrf0upLM=;
 b=NydwRpgN9JITvS/1QyhsH2J6E27VJOe8TGCnChY0sLs9KhWixdzVV4Ju
 pAVOhEQ1q8OQcoHG0oYP5Y/pYV6PHrMQwAaZDo1koqRFbSYDCRZg1f/gi
 mo0EQwZ+DTgs7j85qPNHBeGrNi+xCOQg3IfHs1pb3KaT3uUPrjXU/njYE 0=;
X-IronPort-AV: E=Sophos;i="5.76,402,1592870400"; d="scan'208";a="73024410"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-97fdccfd.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 07 Sep 2020 16:27:00 +0000
Received: from uc85b769cb7f9591afac0.ant.amazon.com
 (iad7-ws-svc-lb50-vlan2.amazon.com [10.0.93.210])
 by email-inbound-relay-1e-97fdccfd.us-east-1.amazon.com (Postfix) with ESMTPS
 id BC317A2086; Mon,  7 Sep 2020 16:26:57 +0000 (UTC)
Received: from uc85b769cb7f9591afac0.ant.amazon.com (uc85b769cb7f9591afac0
 [127.0.0.1])
 by uc85b769cb7f9591afac0.ant.amazon.com (8.15.2/8.15.2/Debian-3) with ESMTP id
 087GQr5S011096; Mon, 7 Sep 2020 18:26:53 +0200
Received: (from markubo@localhost)
 by uc85b769cb7f9591afac0.ant.amazon.com (8.15.2/8.15.2/Submit) id
 087GQqSn011091; Mon, 7 Sep 2020 18:26:52 +0200
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net
Date: Mon,  7 Sep 2020 18:25:37 +0200
Message-Id: <1599495937-10654-3-git-send-email-markubo@amazon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1599495937-10654-1-git-send-email-markubo@amazon.com>
References: <1599495937-10654-1-git-send-email-markubo@amazon.com>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.171.190.10 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kFKE1-00FyeP-GI
Subject: [Openipmi-developer] [PATCH 3/3] ipmi: Add timeout waiting for
 channel information
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
From: Markus Boehme via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Markus Boehme <markubo@amazon.com>
Cc: Stefan Nuernberger <snu@amazon.com>, SeongJae Park <sjpark@amazon.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Amit Shah <aams@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

We have observed hosts with misbehaving BMCs that receive a Get Channel
Info command but don't respond. This leads to an indefinite wait in the
ipmi_msghandler's __scan_channels function, showing up as hung task
messages for modprobe.

Add a timeout waiting for the channel scan to complete. If the scan
fails to complete within that time, treat that like IPMI 1.0 and only
assume the presence of the primary IPMB channel at channel number 0.

Signed-off-by: Stefan Nuernberger <snu@amazon.com>
Signed-off-by: Markus Boehme <markubo@amazon.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 72 ++++++++++++++++++++-----------------
 1 file changed, 39 insertions(+), 33 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 2a2e8b2..9de9ba6 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3315,46 +3315,52 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
  */
 static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
 {
-	int rv;
+	long rv;
+	unsigned int set;
 
-	if (ipmi_version_major(id) > 1
-			|| (ipmi_version_major(id) == 1
-			    && ipmi_version_minor(id) >= 5)) {
-		unsigned int set;
+	if (ipmi_version_major(id) == 1 && ipmi_version_minor(id) < 5) {
+		set = intf->curr_working_cset;
+		goto single_ipmb_channel;
+	}
 
-		/*
-		 * Start scanning the channels to see what is
-		 * available.
-		 */
-		set = !intf->curr_working_cset;
-		intf->curr_working_cset = set;
-		memset(&intf->wchannels[set], 0,
-		       sizeof(struct ipmi_channel_set));
-
-		intf->null_user_handler = channel_handler;
-		intf->curr_channel = 0;
-		rv = send_channel_info_cmd(intf, 0);
-		if (rv) {
-			dev_warn(intf->si_dev,
-				 "Error sending channel information for channel 0, %d\n",
-				 rv);
-			intf->null_user_handler = NULL;
-			return -EIO;
-		}
+	/*
+	 * Start scanning the channels to see what is
+	 * available.
+	 */
+	set = !intf->curr_working_cset;
+	intf->curr_working_cset = set;
+	memset(&intf->wchannels[set], 0, sizeof(struct ipmi_channel_set));
 
-		/* Wait for the channel info to be read. */
-		wait_event(intf->waitq, intf->channels_ready);
+	intf->null_user_handler = channel_handler;
+	intf->curr_channel = 0;
+	rv = send_channel_info_cmd(intf, 0);
+	if (rv) {
+		dev_warn(intf->si_dev,
+			 "Error sending channel information for channel 0, %ld\n",
+			 rv);
 		intf->null_user_handler = NULL;
-	} else {
-		unsigned int set = intf->curr_working_cset;
+		return -EIO;
+	}
 
-		/* Assume a single IPMB channel at zero. */
-		intf->wchannels[set].c[0].medium = IPMI_CHANNEL_MEDIUM_IPMB;
-		intf->wchannels[set].c[0].protocol = IPMI_CHANNEL_PROTOCOL_IPMB;
-		intf->channel_list = intf->wchannels + set;
-		intf->channels_ready = true;
+	/* Wait for the channel info to be read. */
+	rv = wait_event_timeout(intf->waitq, intf->channels_ready, 5 * HZ);
+	if (rv == 0) {
+		dev_warn(intf->si_dev,
+			 "Timed out waiting for channel information. Assuming a single IPMB channel at 0.\n");
+		goto single_ipmb_channel;
 	}
 
+	goto out;
+
+single_ipmb_channel:
+	/* Assume a single IPMB channel at zero. */
+	intf->wchannels[set].c[0].medium = IPMI_CHANNEL_MEDIUM_IPMB;
+	intf->wchannels[set].c[0].protocol = IPMI_CHANNEL_PROTOCOL_IPMB;
+	intf->channel_list = intf->wchannels + set;
+	intf->channels_ready = true;
+
+out:
+	intf->null_user_handler = NULL;
 	return 0;
 }
 
-- 
2.7.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
