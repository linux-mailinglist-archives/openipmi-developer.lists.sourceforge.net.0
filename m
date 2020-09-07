Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEC725FFF9
	for <lists+openipmi-developer@lfdr.de>; Mon,  7 Sep 2020 18:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9Z3V8WWH9teHTb1GKEOjYIFhltShQOzpBaEhcQM9Jk8=; b=IQVifwWCJMu749cUAN91plGFNF
	c6bI1MDN+zhtPLyxy1r8TR8SThFov8SDOOi90bs2btT9Y9whEy6gGfxxX1sE6w9SU6gaY2EXg13wI
	iIT34kRpADt5yf8fta5lk0PcILwF0hk8s/gj3g2X/aFWxU/dZoGVPNL80cTVmb18h+tE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kFKDe-0000LQ-5u; Mon, 07 Sep 2020 16:42:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=51253d80b=markubo@amazon.com>)
 id 1kFKDc-0000L1-M0
 for openipmi-developer@lists.sourceforge.net; Mon, 07 Sep 2020 16:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VnpGX/rq2G60jYuw3svogFQniQh9VvXUtLdT7zfMxQA=; b=iW1ZHdnzWMz55rC3OA+tP38Pgg
 FrE07LH/k2Jtvsmd0zmuJvi7mQT3BvDkJp3NjgHFmqqHpm2w9bXi9HcsK7qggw2npWs8rGohrWDTM
 jiUFfIJAVHeP7AWla1sXfkqQPVgUSxS4tTgPo76xmjmTGPbRUBRiiKO0Qat94yoDghvc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VnpGX/rq2G60jYuw3svogFQniQh9VvXUtLdT7zfMxQA=; b=RrqSj0NdqBt1yo2FVzCnunAXEC
 xbyXK3gIHBW7E7Fv8FRNYOi1zrUmPcS9dsHrQlRTY7Y0fsF0xF86uzS1XehPfDroaQpB32vLo8YKB
 l34eFi6+wJ5qcpR+NVshzqZ3LDScEoOWuyBMJF67DHQhMnK5nUx4DqGady21Aqm3pyZo=;
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFKDY-00FydB-HE
 for openipmi-developer@lists.sourceforge.net; Mon, 07 Sep 2020 16:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1599496929; x=1631032929;
 h=from:to:cc:subject:date:message-id;
 bh=VnpGX/rq2G60jYuw3svogFQniQh9VvXUtLdT7zfMxQA=;
 b=NVdwQbK02ROQiZuD38A/ADnG4X4L1pV8Jb2r00VRx1flniBRfGGgiPUo
 1L9/w2gi7aEd5hEXAcA4Ki+bGQfBiuq57vYwKvf013enoD3UwSmxNcZ3G
 WwEWxk8AWVeISCmxU/Ll/CV12CDtNmMOFqx3oQOibk5CKTmTHZ+hV1++Y Y=;
X-IronPort-AV: E=Sophos;i="5.76,402,1592870400"; d="scan'208";a="52586337"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1d-5dd976cd.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 07 Sep 2020 16:26:24 +0000
Received: from uc85b769cb7f9591afac0.ant.amazon.com
 (iad7-ws-svc-lb50-vlan2.amazon.com [10.0.93.210])
 by email-inbound-relay-1d-5dd976cd.us-east-1.amazon.com (Postfix) with ESMTPS
 id 06CFDA252B; Mon,  7 Sep 2020 16:26:22 +0000 (UTC)
Received: from uc85b769cb7f9591afac0.ant.amazon.com (uc85b769cb7f9591afac0
 [127.0.0.1])
 by uc85b769cb7f9591afac0.ant.amazon.com (8.15.2/8.15.2/Debian-3) with ESMTP id
 087GQIbD010913; Mon, 7 Sep 2020 18:26:18 +0200
Received: (from markubo@localhost)
 by uc85b769cb7f9591afac0.ant.amazon.com (8.15.2/8.15.2/Submit) id
 087GQHcc010906; Mon, 7 Sep 2020 18:26:17 +0200
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net
Date: Mon,  7 Sep 2020 18:25:35 +0200
Message-Id: <1599495937-10654-1-git-send-email-markubo@amazon.com>
X-Mailer: git-send-email 2.7.4
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF white-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [72.21.198.25 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kFKDY-00FydB-HE
Subject: [Openipmi-developer] [PATCH 1/3] ipmi: Reset response handler when
 failing to send the command
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

When failing to send a command we don't expect a response. Clear the
`null_user_handler` like is done in the success path.

Signed-off-by: Markus Boehme <markubo@amazon.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 737c0b6..2b213c9 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2433,7 +2433,7 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
 
 	rv = send_get_device_id_cmd(intf);
 	if (rv)
-		return rv;
+		goto out_reset_handler;
 
 	wait_event(intf->waitq, bmc->dyn_id_set != 2);
 
@@ -2443,6 +2443,7 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
 	/* dyn_id_set makes the id data available. */
 	smp_rmb();
 
+out_reset_handler:
 	intf->null_user_handler = NULL;
 
 	return rv;
@@ -3329,6 +3330,7 @@ static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
 			dev_warn(intf->si_dev,
 				 "Error sending channel information for channel 0, %d\n",
 				 rv);
+			intf->null_user_handler = NULL;
 			return -EIO;
 		}
 
-- 
2.7.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
