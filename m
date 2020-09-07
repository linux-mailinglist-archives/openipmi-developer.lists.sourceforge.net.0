Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAEA260008
	for <lists+openipmi-developer@lfdr.de>; Mon,  7 Sep 2020 18:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:Message-Id:Date:To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9aCbyA420yrO/2Vyk1Z2KEvdHxbl27l5WSiD2QwAplg=; b=NQSVvcH5wqImhWdqzll9dIEKuV
	/ARPmh8YDw+4d9iluOXFiy14rzB9sqISSE0xhMVlLaMovJTMln4WhU2sRUBBhbfzF/QkcDIDscgls
	2JvZzblXfhns2X0WpI3otiqhui/foQ2PCE3VbAKVVmyrOgJ+4N5DpWYnqsLrUioHtqd4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kFKEQ-0001b6-6A; Mon, 07 Sep 2020 16:43:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=51253d80b=markubo@amazon.com>)
 id 1kFKEO-0001ap-8E
 for openipmi-developer@lists.sourceforge.net; Mon, 07 Sep 2020 16:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4O0QSxUDD3xeMWzO7pM0jb9DlbqpoAGCZgcqvEe0STI=; b=LVhx88geR7WdpeokepCe37D4kX
 cA1nb2HbcX8PoMnFLOF28shuLTVDWhko9YM1KKEFo6VJczTFAQQIVdW89xVbLL1kbG809eM6T70iY
 KFUfudpU7kUCQfYRjdxvI+9s6JP9wzEkhzcbY/dfweCvt1UVoIRb46kf6ntFgBlotmME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4O0QSxUDD3xeMWzO7pM0jb9DlbqpoAGCZgcqvEe0STI=; b=TfsYlRKwmAXOfQfukOsQFPh2ZM
 DJouUr84RTkv3cCX0b9Viqkc06SyUBzwQrfBmy9aCMTn0DJbyhXIV1wTy9nEXHsMzCmOWcee6atZn
 /iWz9Ig3HBwdG5HPUMCDvizpKFtmdxa2CJL8QdOLckMQ/tmZMv0cWp8O9xsAPsREwSOQ=;
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFKEK-00FyfP-0Q
 for openipmi-developer@lists.sourceforge.net; Mon, 07 Sep 2020 16:43:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1599496976; x=1631032976;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=4O0QSxUDD3xeMWzO7pM0jb9DlbqpoAGCZgcqvEe0STI=;
 b=If83HV7Z3RSpxQ7U6CwyqBEke5lyd4STd1cWKDc9mKwIIuiQ41ZlYrIK
 rMC6ldYewQjoXPndDU6VMVvilpGT0QiyPdizRmFiKk1QpHRMbEGjhPMzR
 3/E+/PMG49K/+CqM7U/4XI2HXly6+w5fcdSjDiHQKLS5J4gGy0qhhfI8U s=;
X-IronPort-AV: E=Sophos;i="5.76,402,1592870400"; d="scan'208";a="74236825"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2b-81e76b79.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 07 Sep 2020 16:26:46 +0000
Received: from uc85b769cb7f9591afac0.ant.amazon.com
 (pdx2-ws-svc-lb17-vlan2.amazon.com [10.247.140.66])
 by email-inbound-relay-2b-81e76b79.us-west-2.amazon.com (Postfix) with ESMTPS
 id E3162A045E; Mon,  7 Sep 2020 16:26:44 +0000 (UTC)
Received: from uc85b769cb7f9591afac0.ant.amazon.com (uc85b769cb7f9591afac0
 [127.0.0.1])
 by uc85b769cb7f9591afac0.ant.amazon.com (8.15.2/8.15.2/Debian-3) with ESMTP id
 087GQfm3011020; Mon, 7 Sep 2020 18:26:41 +0200
Received: (from markubo@localhost)
 by uc85b769cb7f9591afac0.ant.amazon.com (8.15.2/8.15.2/Submit) id
 087GQeTL011013; Mon, 7 Sep 2020 18:26:40 +0200
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net
Date: Mon,  7 Sep 2020 18:25:36 +0200
Message-Id: <1599495937-10654-2-git-send-email-markubo@amazon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1599495937-10654-1-git-send-email-markubo@amazon.com>
References: <1599495937-10654-1-git-send-email-markubo@amazon.com>
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.171.184.29 listed in wl.mailspike.net]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kFKEK-00FyfP-0Q
Subject: [Openipmi-developer] [PATCH 2/3] ipmi: Add timeout waiting for
 device GUID
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

We have observed hosts with misbehaving BMCs that receive a Get Device
GUID command but don't respond. This leads to an indefinite wait in the
ipmi_msghandler's __get_guid function, showing up as hung task messages
for modprobe.

According to IPMI 2.0 specification chapter 20, the implementation of
the Get Device GUID command is optional. Therefore, add a timeout to
waiting for its response and treat the lack of one the same as missing a
device GUID.

Signed-off-by: Stefan Nuernberger <snu@amazon.com>
Signed-off-by: Markus Boehme <markubo@amazon.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 2b213c9..2a2e8b2 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3184,18 +3184,26 @@ static void guid_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 
 static void __get_guid(struct ipmi_smi *intf)
 {
-	int rv;
+	long rv;
 	struct bmc_device *bmc = intf->bmc;
 
 	bmc->dyn_guid_set = 2;
 	intf->null_user_handler = guid_handler;
 	rv = send_guid_cmd(intf, 0);
-	if (rv)
+	if (rv) {
 		/* Send failed, no GUID available. */
 		bmc->dyn_guid_set = 0;
-	else
-		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
+		goto out;
+	}
 
+	rv = wait_event_timeout(intf->waitq, bmc->dyn_guid_set != 2, 5 * HZ);
+	if (rv == 0) {
+		dev_warn_once(intf->si_dev,
+			      "Timed out waiting for GUID. Assuming GUID is not available.\n");
+		bmc->dyn_guid_set = 0;
+	}
+
+out:
 	/* dyn_guid_set makes the guid data available. */
 	smp_rmb();
 
-- 
2.7.4



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
