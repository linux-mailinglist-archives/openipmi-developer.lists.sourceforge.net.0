Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 801006E930F
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 Apr 2023 13:40:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ppSdt-0005vt-92;
	Thu, 20 Apr 2023 11:40:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <govove@lnxdevrm02.bk.prodrive.nl>)
 id 1pp9Xc-0003iq-ME for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Apr 2023 15:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rsGNXDTpdCb6UkSGlFBVQYfdF508DA2NrpuhyKOLOz8=; b=Vn0Z6/31H5DwQ7qq0bcaq04iMj
 23HZW0lndLFH6K3pHjvwHAEWsZujO4Ou1fGuAGx53fZSbNfepCKbd23QlMAxCLqxYdP0ZJ5KnLX52
 nddVVFKoFAm39wOc41UuCwf+MO89T8paJN8H/bIcxqE9AUupdIKONrQ77v7jS3HdjbrQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rsGNXDTpdCb6UkSGlFBVQYfdF508DA2NrpuhyKOLOz8=; b=a
 70Hu2qMmKhXXPAepcZhEgnhqHVCmJYTuHsJ4KqzKtZaFTgZcyA1j9EvKqK3YcawMP/fyAki2DxGWl
 BEW/8NCeZ5jrP/8s9B1MMpK4NYzGXL4ebZ2DcmdH5JOyYkOOOrUY6JtayuwyaeV9tze0kK+i+4sZp
 HM9cAVPOKn2SsoZU=;
Received: from [212.61.153.67] (helo=mail.prodrive-technologies.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.95) id 1pp9Xb-0005Bc-1O
 for openipmi-developer@lists.sourceforge.net;
 Wed, 19 Apr 2023 15:16:16 +0000
Received: from EXC03.bk.prodrive.nl (10.1.1.212) by EXC03.bk.prodrive.nl
 (10.1.1.212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Wed, 19
 Apr 2023 17:00:41 +0200
Received: from lnxdevrm02.bk.prodrive.nl (10.1.1.121) by EXC03.bk.prodrive.nl
 (10.1.1.212) with Microsoft SMTP Server id 15.1.2507.16 via Frontend
 Transport; Wed, 19 Apr 2023 17:00:41 +0200
Received: from govove by lnxdevrm02.bk.prodrive.nl with local (Exim 4.94.2)
 (envelope-from <govove@lnxdevrm02.bk.prodrive.nl>)
 id 1pp9IX-00Eet6-A6; Wed, 19 Apr 2023 17:00:41 +0200
To: 
Date: Wed, 19 Apr 2023 17:00:32 +0200
Message-ID: <20230419150032.3483229-1-govert.overgaauw@prodrive-technologies.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: While the KCS driver is not in KCS_PHASE_WAIT_READ state it
 returns -EINVAL to userspace on a write call. change this to -EAGAIN to
 indicate
 that the error is related to the state and not the argument [...] 
 Content analysis details:   (1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1pp9Xb-0005Bc-1O
X-Mailman-Approved-At: Thu, 20 Apr 2023 11:39:59 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ipmi-bmc: Improve errno returned
 to userspace
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
From: Govert Overgaauw via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Govert Overgaauw <govert.overgaauw@prodrive-technologies.com>
Cc: openipmi-developer@lists.sourceforge.net,
 govert.overgaauw@prodrive-technologies.com, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

While the KCS driver is not in KCS_PHASE_WAIT_READ state it returns
-EINVAL to userspace on a write call. change this to -EAGAIN to indicate
that the error is related to the state and not the argument.

Signed-off-by: Govert Overgaauw <govert.overgaauw@prodrive-technologies.com>
---
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
index cf670e891966..4c7400faf333 100644
--- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
+++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
@@ -405,7 +405,7 @@ static ssize_t kcs_bmc_ipmi_write(struct file *filp, const char __user *buf,
 		kcs_bmc_write_data(priv->client.dev, priv->data_out[0]);
 		ret = count;
 	} else {
-		ret = -EINVAL;
+		ret = -EAGAIN;
 	}
 	spin_unlock_irq(&priv->lock);
 
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
