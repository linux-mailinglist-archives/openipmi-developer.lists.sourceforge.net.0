Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA8064285E
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 Dec 2022 13:25:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1p2AWx-0003tO-Np;
	Mon, 05 Dec 2022 12:25:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yang.yang29@zte.com.cn>) id 1p2A6G-00061v-Jd
 for openipmi-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 11:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Mime-Version:
 Message-ID:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8dFgwBsb+ifD3pil3VCawClQZBj9cS0sp8KDUJ4nCDE=; b=kHDbAgJViP5HK5ZZrqVy3zblhd
 kcIJh+uO7tvfJGsFfOMVwPAtZGJXC5st/hfuZDPJVv16fJoS4rkaepYRulUadJsDxGwHSySGbfniC
 j0nR6OQz3Sreur3UWpnWDbuVhaypn1FzRthggxJIsoTnaWVTY31+QfSNn3TrpgebGeLg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Mime-Version:Message-ID:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8dFgwBsb+ifD3pil3VCawClQZBj9cS0sp8KDUJ4nCDE=; b=A
 dtMCbWo6drQ1eeMmqmy29bC0AZfBI52WLSckAPzYCtG79qMUGkF43DWID1AjODksnZ2Jz8HFiZF0e
 7sONJ9B9W0DOW7dw34UHxXzLkkQeZ6XFk+X3Ornq6f+NZRpcW6lt0uvKDm4YfFGlyGltVxlQ9WQBI
 sAIT7pEu/b1tivB4=;
Received: from mxct.zte.com.cn ([58.251.27.85])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p2A6E-006mrJ-KS for openipmi-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 11:57:32 +0000
Received: from mxde.zte.com.cn (unknown [10.35.20.121])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mxct.zte.com.cn (FangMail) with ESMTPS id 4NQhNx4NWcz1Fh3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon,  5 Dec 2022 19:37:37 +0800 (CST)
Received: from mxus.zte.com.cn (unknown [10.207.168.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mxde.zte.com.cn (FangMail) with ESMTPS id 4NQhNZ1lnpz9vXG3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon,  5 Dec 2022 19:37:18 +0800 (CST)
Received: from mxhk.zte.com.cn (unknown [192.168.250.138])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mxus.zte.com.cn (FangMail) with ESMTPS id 4NQhNN00lszdmX8k
 for <openipmi-developer@lists.sourceforge.net>;
 Mon,  5 Dec 2022 19:37:08 +0800 (CST)
Received: from mxct.zte.com.cn (unknown [192.168.251.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mxhk.zte.com.cn (FangMail) with ESMTPS id 4NQhN33SPCz4xVnd
 for <openipmi-developer@lists.sourceforge.net>;
 Mon,  5 Dec 2022 19:36:51 +0800 (CST)
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mxct.zte.com.cn (FangMail) with ESMTPS id 4NQhMv42LCz4xpy7;
 Mon,  5 Dec 2022 19:36:43 +0800 (CST)
Received: from szxlzmapp03.zte.com.cn ([10.5.231.207])
 by mse-fl1.zte.com.cn with SMTP id 2B5BaaYY051373;
 Mon, 5 Dec 2022 19:36:36 +0800 (+08)
 (envelope-from yang.yang29@zte.com.cn)
Received: from mapi (szxlzmapp02[null]) by mapi (Zmail) with MAPI id mid14;
 Mon, 5 Dec 2022 19:36:40 +0800 (CST)
Date: Mon, 5 Dec 2022 19:36:40 +0800 (CST)
X-Zmail-TransId: 2b04638dd7c8ffffffffa569f048
X-Mailer: Zmail v1.0
Message-ID: <202212051936400309332@zte.com.cn>
Mime-Version: 1.0
From: <yang.yang29@zte.com.cn>
To: <minyard@acm.org>
X-MAIL: mse-fl1.zte.com.cn 2B5BaaYY051373
X-Fangmail-Gw-Spam-Type: 0
X-FangMail-Miltered: at cgslv5.04-192.168.251.14.novalocal with ID
 638DD800.000 by FangMail milter!
X-FangMail-Envelope: 1670240257/4NQhNx4NWcz1Fh3/638DD800.000/10.35.20.121/[10.35.20.121]/mxde.zte.com.cn/<yang.yang29@zte.com.cn>
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 638DD800.000/4NQhNx4NWcz1Fh3
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Xu Panda <xu.panda@zte.com.cn> The implementation of
 strscpy()
 is more robust and safer. That's now the recommended way to copy NUL
 terminated
 strings. Signed-off-by: Xu Panda <xu.panda@zte.com.cn> Signed-off-by: Yang
 Yang <yang.yang29@zte.com> --- drivers/char/ipmi/ipmi_watchdog.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p2A6E-006mrJ-KS
X-Mailman-Approved-At: Mon, 05 Dec 2022 12:25:05 +0000
Subject: [Openipmi-developer] =?utf-8?q?=5BPATCH_linux-next=5D_ipmi/watchd?=
 =?utf-8?q?og=3A_use_strscpy=28=29_to_instead_of_strncpy=28=29?=
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
Cc: yang.yang29@zte.com.cn, xu.panda@zte.com.cn,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Xu Panda <xu.panda@zte.com.cn>

The implementation of strscpy() is more robust and safer.
That's now the recommended way to copy NUL terminated strings.

Signed-off-by: Xu Panda <xu.panda@zte.com.cn>
Signed-off-by: Yang Yang <yang.yang29@zte.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 47365150e431..0d4a8dcacfd4 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -213,8 +213,7 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
 	char       valcp[16];
 	char       *s;

-	strncpy(valcp, val, 15);
-	valcp[15] = '\0';
+	strscpy(valcp, val, 16);

 	s = strstrip(valcp);

-- 
2.15.2


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
