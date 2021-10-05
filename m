Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBD4422C2A
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 17:16:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXmB7-0003Ln-CS; Tue, 05 Oct 2021 15:16:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <colin.king@canonical.com>) id 1mXmB4-0003LO-Pu
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 15:16:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QvIq1h9e/NhyWPRySEGTralffxgGmERWgEP2mQB01KM=; b=FxHMRH7Zo9CVMJg7f+RVbymIUE
 oxC9igR0NjPC08y1qBMEHo1nx5oDREEwavIZXjvX2UsWvs0cUaByt2982LAa+hSZISG6PanJF0Lr8
 TZKmLT+QMMYsSJJwJSTORNufZMzCBSbR1Yu8+LiHE/aqhCQxUCoDOym5BXo85ATX5qBU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QvIq1h9e/NhyWPRySEGTralffxgGmERWgEP2mQB01KM=; b=W
 eWhPOJvVBCeZ0GWTnPyeFjKcIlZ3l1q5RjIoi768xbAcAUYn/WJL/KvZFyVwwaDpXNGjmVd5lCDx5
 XQ/y9rm/Sm398KZwe0YpETyYXaSclE4KCdLUHPUdrsjxwTfGEp0MohArh6HMtL7QONy5jEb70uFbj
 vNdOS2ATav0r4IW8=;
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mXmB0-006rg2-5R
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 15:16:22 +0000
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 9C8753FFEA; 
 Tue,  5 Oct 2021 15:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1633446971;
 bh=QvIq1h9e/NhyWPRySEGTralffxgGmERWgEP2mQB01KM=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=WQCsf16xlonqTKrvB6VvrnLWy3lGEt1zYlmSjqrfimyiIJ602hd1J4b0ZKRgS6qDQ
 jkFEVgJNKJ4osEMI71osYYHSRCbXMHe4ZyVj9NLD4BElT5na+cUXSgjYoWO9PvkUMV
 k6BOgCCDtFFVAST9Ej25fe+EWj/enZOzM2h7SUFfSUHXQhcRFQATnl1O4WlIodQ2BO
 fG+J0BzxztbALuShndTtaY57SntV5nwZfEtgEJ3xV8XA6AbRSyfrQnHtMVwwl1/AAB
 APV2XlXHgWLMGSadJ9irMSldQbuGISY8qE5mLJHUT1tUBFU4tVdolduxurZi1sMkxs
 oKZKXcYg/6mgg==
From: Colin King <colin.king@canonical.com>
To: Corey Minyard <minyard@acm.org>, openipmi-developer@lists.sourceforge.net
Date: Tue,  5 Oct 2021 16:16:11 +0100
Message-Id: <20211005151611.305383-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Colin Ian King <colin.king@canonical.com> There is an
 off-by-one bounds check on the rcvlen causing a potential out of bounds write
 on iidev->rcvmsg. Fix this by using the >= operator on the bounds check rather
 than the > operator. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.121 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mXmB0-006rg2-5R
Subject: [Openipmi-developer] [PATCH][next] ipmi: ipmb: Fix off-by-one size
 check on rcvlen
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Colin Ian King <colin.king@canonical.com>

There is an off-by-one bounds check on the rcvlen causing a potential
out of bounds write on iidev->rcvmsg. Fix this by using the >= operator
on the bounds check rather than the > operator.

Addresses-Coverity: ("Out-of-bounds write")
Fixes: 0ba0c3c5d1c1 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/char/ipmi/ipmi_ipmb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
index b10a1fd9c563..77ebec4ed28e 100644
--- a/drivers/char/ipmi/ipmi_ipmb.c
+++ b/drivers/char/ipmi/ipmi_ipmb.c
@@ -192,7 +192,7 @@ static int ipmi_ipmb_slave_cb(struct i2c_client *client,
 		break;
 
 	case I2C_SLAVE_WRITE_RECEIVED:
-		if (iidev->rcvlen > sizeof(iidev->rcvmsg))
+		if (iidev->rcvlen >= sizeof(iidev->rcvmsg))
 			iidev->overrun = true;
 		else
 			iidev->rcvmsg[iidev->rcvlen++] = *val;
-- 
2.32.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
