Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8B07401EF
	for <lists+openipmi-developer@lfdr.de>; Tue, 27 Jun 2023 19:14:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qECGo-0005VJ-3x;
	Tue, 27 Jun 2023 17:14:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg573847474@gmail.com>) id 1qEAZ6-0002AE-5J
 for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jun 2023 15:25:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A04KwW6ieNfH8wPX+bT+AUz62umM36e5LmdKIB4p2KU=; b=c0lG8p49jtpD0GrK+TBaJU+8os
 M3dQlS3PaiuC6SZkfQvDwm7ModPGzwssR/EAkOk8WElikG2wEx5dji8StY83t0iebLhJr2Ti942N1
 rAzkkY27XSx1MrQ4J+1o8QSPbL7nI9qKGvKlhf7C8Rno48FXtyYXW+oZNE094E1vuOpQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A04KwW6ieNfH8wPX+bT+AUz62umM36e5LmdKIB4p2KU=; b=WMIcyJzH3dgteysfYhLp8AdRHm
 8Bnk1JquxOFcLZRcpISTVBwsZYJvKZHV1TudDbpVilniXsuosMdxRHNLWCr84c5XugJCp1vERkNOI
 aZin+kGGZZpDPMBdfcddLBT/WCGalef5EaXmai0dXZUeChQUyqhseryCYrGC5/sOiA+U=;
Received: from mail-pf1-f175.google.com ([209.85.210.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qEAZ2-0001zA-0O for openipmi-developer@lists.sourceforge.net;
 Tue, 27 Jun 2023 15:25:11 +0000
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-6687096c6ddso2431038b3a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Jun 2023 08:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687879502; x=1690471502;
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=A04KwW6ieNfH8wPX+bT+AUz62umM36e5LmdKIB4p2KU=;
 b=gFsc45xjzR8Am3ZaCp58fSbQaJdocsOnbrpJ9Xgff/S7Oh/Dsiiv/F6un7RbkBfP3G
 qO3kOZQm2EYfOUgT+GnFMVM2bSiaq9CWjDsBm3onyx+3WT4nuQPnwvWoJvjYQ6GA6mZJ
 FCH/KE+WrBEbe9VhxarFTgxX+JLXLYScOUKkZ4QeWeRCdp3MG9gqehCS2gsBblJEvcuE
 k7aNB6wGaF090K3gveDr8JI+2Z7R9W90v4bigF3WWFwaKIoQRO5R1C8sIwSO5pj9SEIL
 crfl0IxOLeJLp6p+0lGbbh6Uw1Si3K/FhHORHSgsQEsbiz51wohC4VNlcDUj84oBQ6jv
 1F4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687879502; x=1690471502;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=A04KwW6ieNfH8wPX+bT+AUz62umM36e5LmdKIB4p2KU=;
 b=ekjGorqB0x8GWXB0ngDgar4fBvxD6ismPBWr1M1iWtfXKGwsHtFcSvuNDxvO5RRXNC
 IoQWYrPV9iXwlz8AVJahvZ+yrx96l1KBcVgiuU9UCSEFvOX2qW5OHChuiYaVosJVp5pz
 ZAhAoGIbT0HeVBLCRGzfR1Y7Fil9lb2sPiuEjH1V6kjYpwaAVggchUSlFAFmsdZVm2f4
 4UQQyPNVeOeTK/MePxkt7UzHi4In4AwEkZZrcwvdgADuXpn7Iu8e+WP7rvUo/0e/WmIB
 dBiIVp9NDygyAKvaYPrTJPGmCtciki6lEvy6g6VhmqAwv5kDWPtNNJVJ2gKn/rdz7P2d
 bexw==
X-Gm-Message-State: AC+VfDxjZpGn7KJlY1HwLmz8uqmz01VJ8/ndk01Jb/WZCezWg42Cr/wu
 qd95m+iOaiAoreaAkkPxH2oItT6x26t3ww==
X-Google-Smtp-Source: ACHHUZ4b7RXNKqghsTi/f+R3YVRZ/ld3bJiRzs7zvbbv0rU/xTija4QR1IMms5rxrd4qW/Rhub2g+w==
X-Received: by 2002:a17:902:8d88:b0:1b0:3742:e718 with SMTP id
 v8-20020a1709028d8800b001b03742e718mr5595430plo.25.1687879502173; 
 Tue, 27 Jun 2023 08:25:02 -0700 (PDT)
Received: from 377044c6c369.cse.ust.hk (191host097.mobilenet.cse.ust.hk.
 [143.89.191.97]) by smtp.gmail.com with ESMTPSA id
 w18-20020a170902e89200b001a5fccab02dsm5294252plg.177.2023.06.27.08.25.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jun 2023 08:25:01 -0700 (PDT)
From: Chengfeng Ye <dg573847474@gmail.com>
To: minyard@acm.org
Date: Tue, 27 Jun 2023 15:24:49 +0000
Message-Id: <20230627152449.36093-1-dg573847474@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  As kcs_bmc_handle_event() is executed inside both a timer
 and a hardirq, it should disable irq before lock acquisition otherwise deadlock
 could happen if the timmer is preemtped by the irq. Possible deadlock
 scenario:
 aspeed_kcs_check_obe() (timer) -> kcs_bmc_handle_event() ->
 spin_lock(&kcs_bmc->lock)
 <irq interruption> -> aspeed_kcs_irq() -> kcs_bmc_handle_event() ->
 spin_lock(&kcs_bmc [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [dg573847474[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dg573847474[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.175 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qEAZ2-0001zA-0O
X-Mailman-Approved-At: Tue, 27 Jun 2023 17:14:17 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: fix potential deadlock on
 &kcs_bmc->lock
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
Cc: Chengfeng Ye <dg573847474@gmail.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

As kcs_bmc_handle_event() is executed inside both a timer and a hardirq,
it should disable irq before lock acquisition otherwise deadlock could
happen if the timmer is preemtped by the irq.

Possible deadlock scenario:
aspeed_kcs_check_obe() (timer)
    -> kcs_bmc_handle_event()
    -> spin_lock(&kcs_bmc->lock)
        <irq interruption>
        -> aspeed_kcs_irq()
        -> kcs_bmc_handle_event()
        -> spin_lock(&kcs_bmc->lock) (deadlock here)

This flaw was found using an experimental static analysis tool we are
developing for irq-related deadlock.

The tentative patch fix the potential deadlock by spin_lock_irqsave()

Signed-off-by: Chengfeng Ye <dg573847474@gmail.com>
---
 drivers/char/ipmi/kcs_bmc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
index 03d02a848f3a..8b1161d5194a 100644
--- a/drivers/char/ipmi/kcs_bmc.c
+++ b/drivers/char/ipmi/kcs_bmc.c
@@ -56,12 +56,13 @@ irqreturn_t kcs_bmc_handle_event(struct kcs_bmc_device *kcs_bmc)
 {
 	struct kcs_bmc_client *client;
 	irqreturn_t rc = IRQ_NONE;
+	unsigned long flags;
 
-	spin_lock(&kcs_bmc->lock);
+	spin_lock_irqsave(&kcs_bmc->lock, flags);
 	client = kcs_bmc->client;
 	if (client)
 		rc = client->ops->event(client);
-	spin_unlock(&kcs_bmc->lock);
+	spin_unlock_irqrestore(&kcs_bmc->lock, flags);
 
 	return rc;
 }
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
