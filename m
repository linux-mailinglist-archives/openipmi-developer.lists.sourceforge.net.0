Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F98E47D324
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Dec 2021 14:46:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n01wJ-0000BE-2m; Wed, 22 Dec 2021 13:45:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wangborong@cdjrlc.com>) id 1mzsXH-0001xE-9o
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 03:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U0pWNckqvsGE4QJ1pLN7j9FJi/ofBMnpMSIB+CPERjg=; b=hx2O3SJ/N0FMzK4CY2lIAq2hQ5
 GpTqZKYyL8id0QWwwnzbuNwyi9zDLEwAehOsL4SevhZXihkuDMEbODzd2dc40rArbjC1GJKWt5NRX
 DW5fjGDX4M+e+MAKfky+vWSQF6KM+Q64U/ChuoXWuIjPNMp+CZWgJZTYnjEnwJvZqYbs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=U0pWNckqvsGE4QJ1pLN7j9FJi/ofBMnpMSIB+CPERjg=; b=U
 vNaFoyc1town2TzdprY9kIuGhdJ+HGUtUJwU7S8XNxi++552H8ZeCFhNlAexpszLPNcH72bqJ1+Sv
 RXOmXV+1gPvGUdnLCNjUIA4jabKzCUFmR7EhSFVzl5rqkv2EzOsn/L1Ygsr1Y1YXqUCyJRBdGvuKC
 BFZCmDllzKkcc99o=;
Received: from smtpbg127.qq.com ([109.244.180.96] helo=smtpbg.qq.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mzsXB-0004yJ-Ue
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 03:43:27 +0000
X-QQ-mid: bizesmtp50t1640143633tc58mi2c
Received: from localhost.localdomain (unknown [118.121.66.4])
 by esmtp6.qq.com (ESMTP) with 
 id ; Wed, 22 Dec 2021 11:27:12 +0800 (CST)
X-QQ-SSF: 01000000008000D0K000B00A0000000
X-QQ-FEAT: ZHWZeLXy+8e770YOXNoRcis8idCOUq04m9DzcfbEYSd7OLEwyBwlodVcSnAPy
 syAhQqjIQpB5CngmdBtkfgCdEg4nhzagz2/BIOHAUvYpbHeBPkVZS3FuDuj6DRNsBcw3dnV
 4Mq2HCasd81NKOz5U+wRW4mihp03dAjWeVXwPA08uh9laQeiWARdRhldPJjH9fwEs7Njymp
 EibdJFB/W8uouKUaaB+qx1I9O2JO+fHnbybRA5DVZ/Llqk+POsDW/pMiCAxwbHZQtK4aQZ8
 uklZ6rU9uu7rPecHeuh+1dPshTYGQAw2w1YIzaP9QAatqObnZIMMABmIlS02S0usn2oGmEW
 twJdAKX
X-QQ-GoodBg: 0
From: Jason Wang <wangborong@cdjrlc.com>
To: minyard@acm.org
Date: Wed, 22 Dec 2021 11:27:07 +0800
Message-Id: <20211222032707.1912186-1-wangborong@cdjrlc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam1
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The strlcpy should not be used because it doesn't limit the
 source length. So that it will lead some potential bugs. But the strscpy
 doesn't require reading memory from the src string beyond the specified
 "count"
 bytes, and since the return value is easier to error-check than strlcpy()'s.
 In addition, the implementa [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [109.244.180.96 listed in dnsbl-1.uceprotect.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.244.180.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mzsXB-0004yJ-Ue
X-Mailman-Approved-At: Wed, 22 Dec 2021 13:45:55 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ssif: replace strlcpy with
 strscpy
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Jason Wang <wangborong@cdjrlc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The strlcpy should not be used because it doesn't limit the source
length. So that it will lead some potential bugs.

But the strscpy doesn't require reading memory from the src string
beyond the specified "count" bytes, and since the return value is
easier to error-check than strlcpy()'s. In addition, the implementation
is robust to the string changing out from underneath it, unlike the
current strlcpy() implementation.

Thus, replace strlcpy with strscpy.

Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 48aab77abebf..ba779f1abb5b 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1354,7 +1354,7 @@ static int ssif_detect(struct i2c_client *client, struct i2c_board_info *info)
 	if (rv)
 		rv = -ENODEV;
 	else
-		strlcpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
+		strscpy(info->type, DEVICE_NAME, I2C_NAME_SIZE);
 	kfree(resp);
 	return rv;
 }
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
