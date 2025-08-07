Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC758B1DFB6
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Aug 2025 01:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZWW6YUklYhQtnBMf82P0T74gsR1vOBQiJZljgekVmI4=; b=gIa2+Op5q8O2WumBswck5RkGQq
	WATD3VN1JcIvF5AAc6wgkc5upnxfcgJqmjdq1hzhsvmNzgRC0F/Ul44SlZPsc/Leurqy+oeINzIId
	zdcn4imb/JQ/pWpYhVS0rEEr8+6WuoESxfrlEPXXTrpBlPyc84XH24f0HI72tGht4IEo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uk9hV-0007T6-EV;
	Thu, 07 Aug 2025 23:07:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uk9hT-0007Sx-DL
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JVQQCNkJrwdiyjASsKZtUkOBNZNo3VxgfrQtjAg6B8o=; b=F4WANrSQjU7ZswUbddWiMEX+m8
 nbj501d5/j72ASGQwUc2U847eT5cCOzIVwFb+YsFVFeSFJBUUdqILF1fnEAoBnbO/1wwNJRR/xbnn
 uvM//Iok/UcEhVcWanty+Y79hHlNyWuYVVgADbXQnZwBr+FW9sP80c1F7NWrJqqwqseg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JVQQCNkJrwdiyjASsKZtUkOBNZNo3VxgfrQtjAg6B8o=; b=aEIIBeSmvdowygmtphVpDDNgrQ
 4nFaHSn+wdBgGM+r23CEzFYGKwxwb+5YwJ0K/y0NCIOFDUJ5ZECpyOpKgWOjGQ7iQTp3AsaNv/Uqs
 bsspg5bh9hRRdy+4xwDWX/BNsEVrKhEGjeD2SWKrQ/S2N4RH4j0cbKxOohKAyRgBknm0=;
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uk9hT-00030F-2d for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:07:07 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 46e09a7af769-742f96d9120so935871a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Aug 2025 16:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754608016; x=1755212816;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JVQQCNkJrwdiyjASsKZtUkOBNZNo3VxgfrQtjAg6B8o=;
 b=BDWvinp60q+EvKdp59jDUdvX5lkOHwRtpVNqVpmPiow3ULpjEpp9VNUywT5yRlEvQ1
 gNzEPSRoiueXlo6PR4bV3DjPGC+L8nfh0LGs3opaF4GWvY2BEzT48fcecTc0FbhothZC
 DSU9CND5rASGgxEbZLbzMPBAfkGddjBt9ZqC3bWVmPb+rZFWtLkWuzx1TdFaIW3fnnRt
 WmqFIdtr3i8kT7dO7tgjEZ47z/4tztOKOtMhBtNpaTRUK2W7Z8eSph9KZ6VK6+g2Sj90
 aPwUE+h97Ngh3ygE2WABeViZc0HQIZknyFXO6YxZxKzOzyNqMjEFdTgrhZYXjkexI5vy
 qPaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754608016; x=1755212816;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JVQQCNkJrwdiyjASsKZtUkOBNZNo3VxgfrQtjAg6B8o=;
 b=CLrd92Hp+xaJBjD1lqt+hdM3mS5Q4B9nutjwDaelyisrKo6HYya6HMzcKROQoN+Qad
 8dSBWho/NKUCGK7DOWa6y1+boUKNB8b2lu5LBI6CMr9ZeSVSk07yzX5c16lbYicgySOK
 Enx7AZ4oVrXMePlI5Kg+9egwxXFQPFtghSO2wnOdAsUYUNSuVM/Uomax+dDJfw5W9h2y
 1ah+i93w0izQ7iHnMQd+8gQrum94XvAoMvrTDgxKDmXUs5w5JPklKbkdp5CmsNzoEEBx
 tv4wnlNuNoITOBcmwJqscBQ0ZnLIT7DSzHm3zj8yh1UDn8konuWik1mavcpJJ0X3JSW8
 9+8Q==
X-Gm-Message-State: AOJu0YwTmHQWBCagQz05mS4NVEDvGRzEf6WCGm/FLWPHAYscWWJtlhl3
 lMbM2Z/4lxZe2GaJ+8VqglSplYabwzWprWahdvM35RN+MvCDRvp4QQ7JOIJ5YhSNKac=
X-Gm-Gg: ASbGncv7g2LSDzJ8v9DxfP6XS1J0upCsa3kZYgrBzEV7vROuFDogZvie7/jhFbWNMd9
 pJ596xvnQ3hgyAT/guu1D28txzkvkdnzbEvrQXqgCT9zICGSoaJXHFLpz1dVI8I90+0L/M1JDge
 YegSNhO38ecWLegpNDmloxya56vk9KvG9xSe1l+QNXuQntWV6WDmSzBvWGwwPRCYeq4oifGxyNY
 GLCQLjato9FCGOV55EpQXgnrestK2s4dBzcRls+qH50MvhgQz5uJZMgbbomCBVQcA9f3+56aidZ
 fIs98+kiqImuIHrtatDiWKDJmBGvFvIAeVzFUH/GqDMAuKEo+EOF+UWpubeuFaih03L8RjdjcJd
 dxux0eRGK+gA4XP42
X-Google-Smtp-Source: AGHT+IEuQZJXqTEndB22xbDSCJVb2dZ1VjZOrq9cs/j01hyqUAng/aQxtGnCN+AeoAudDB6/BBpFbA==
X-Received: by 2002:a05:6830:2b27:b0:73e:9ee1:3d7d with SMTP id
 46e09a7af769-7432c9879a2mr685880a34.28.1754608016344; 
 Thu, 07 Aug 2025 16:06:56 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:e698:accb:897b:ca29])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-742f57d5d05sm2099930a34.31.2025.08.07.16.06.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Aug 2025 16:06:55 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Frederick Lawler <fred@cloudflare.com>
Date: Thu,  7 Aug 2025 18:02:33 -0500
Message-ID: <20250807230648.1112569-3-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250807230648.1112569-1-corey@minyard.net>
References: <20250807230648.1112569-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If the driver goes into any maintenance mode, disable sysfs
 access until it is done. If the driver goes into reset maintenance mode,
 disable all messages until it is done. Signed-off-by: Corey Minyard
 <corey@minyard.net>
 --- drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++++++ 1 file changed,
 11 insertions(+) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uk9hT-00030F-2d
Subject: [Openipmi-developer] [PATCH 2/4] ipmi: Disable sysfs access and
 requests in maintenance mode
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
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

If the driver goes into any maintenance mode, disable sysfs access until
it is done.

If the driver goes into reset maintenance mode, disable all messages
until it is done.

Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index f124c0b33db8..72f5f4a0c056 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2338,6 +2338,11 @@ static int i_ipmi_request(struct ipmi_user     *user,
 
 	if (!run_to_completion)
 		mutex_lock(&intf->users_mutex);
+	if (intf->maintenance_mode_state == IPMI_MAINTENANCE_MODE_STATE_RESET) {
+		/* No messages while the BMC is in reset. */
+		rv = -EBUSY;
+		goto out_err;
+	}
 	if (intf->in_shutdown) {
 		rv = -ENODEV;
 		goto out_err;
@@ -2639,6 +2644,12 @@ static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
 	    (bmc->dyn_id_set && time_is_after_jiffies(bmc->dyn_id_expiry)))
 		goto out_noprocessing;
 
+	/* Don't allow sysfs access when in maintenance mode. */
+	if (intf->maintenance_mode_state) {
+		rv = -EBUSY;
+		goto out_noprocessing;
+	}
+
 	prev_guid_set = bmc->dyn_guid_set;
 	__get_guid(intf);
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
