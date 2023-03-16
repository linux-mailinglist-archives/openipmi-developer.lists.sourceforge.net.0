Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C76C6BCEE3
	for <lists+openipmi-developer@lfdr.de>; Thu, 16 Mar 2023 13:03:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pcmKf-0001O7-Kg;
	Thu, 16 Mar 2023 12:03:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangzipeng0@foxmail.com>) id 1pchPx-00080S-1W
 for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Mar 2023 06:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject
 :Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tcw+Uaz4jmYJYTEGQ3g1Ymn8QjyG70IsgsaexHt8djA=; b=Yk6Gsa+Gz6aFwvRuJgsbsGjMNI
 WF0T9VkoLjlC35QKlP04woITHlIMLgsKp9H2dW7/SFW+CmHgcUGC057Fpwtzlim1JypnZ1lBo4bAR
 D0kKqAh0Ykb4KEML3Paf5Pc3OIxqg2v14h4DKMPKxNtKwiOt01n+8XkllIz1pTGBjkrs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Date:Subject:Cc:To:From:Message-ID
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Tcw+Uaz4jmYJYTEGQ3g1Ymn8QjyG70IsgsaexHt8djA=; b=J
 cXgMld4rCTKpj11p5klwxQFRxocNOp4bRDfZ2dX03K8fLposjq0NLYLfrFWFCAeL4yfFJjK7Hpj3l
 ixaaF9WYDwQ/HycQnB6QKpGwaL+6nEXKcqREG0bWtB4nGbYooUFdbAasETR68A3EaGUTRn3k861RF
 YrBKHU/hTIIDLEes=;
Received: from out203-205-221-233.mail.qq.com ([203.205.221.233])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pchPs-00040J-3g for openipmi-developer@lists.sourceforge.net;
 Thu, 16 Mar 2023 06:48:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1678949315;
 bh=Tcw+Uaz4jmYJYTEGQ3g1Ymn8QjyG70IsgsaexHt8djA=;
 h=From:To:Cc:Subject:Date;
 b=hSRTDIQ3OAzbqEoConUtUxRnh7h+S0v2sVG6HjYX1V3XmeAyAzycZFsBPB3r9kmfZ
 QsT8QnP6i9P3glcFlUFECTEBray4jm372NOaRgzNtk+7Za84IYVXggu3s5VaSXvZL/
 eJE5EmWrcszZ+uPcKEZzya6BUFqg2gP7SbBA17qE=
Received: from localhost.localdomain.localdomain ([219.238.10.2])
 by newxmesmtplogicsvrszc5-0.qq.com (NewEsmtp) with SMTP
 id A008F881; Thu, 16 Mar 2023 14:40:00 +0800
X-QQ-mid: xmsmtpt1678948800tuc59ps8v
Message-ID: <tencent_F0BFF85BC7C1FC84E440A7B7D364D2ED4209@qq.com>
X-QQ-XMAILINFO: NItgtg8VQuv+u93fN1PFS96KirnG7gsW9RKrBuGi7M3ehQ4WN+tRGW+PSflOWt
 MrGn2M9QbJkqFp3H/LOKf10W03KOWv8Dmdp4CimTMGvIFL5I2tDtFfm9kMmNKV1498fhaiehz/0r
 kcukkKpDxaL4PiIr91DWWGvVBn5VAuPRIfBuYReg0NmOTR6/1GKvHC7r7jYQiIfqlwxlikSpztcY
 x/Ah3aM31gp7YYC4BTArvlTvhOT+UX1pDAJMc6rnyKEo/UVOELz8RrkhyPatBqgzR5FwVxx7s8Cv
 Y4xkCIuG49SxGQjTjL5X1FpGDekwuqgeKZP2EYvJ5SSE76E03Ozggai0ZwitEscQkdajv1YYDnMN
 9AHU6+YxoFARJ2e4VKDO3xekeyG9B60y2NjqAAb8EPZXZxymj1yBkDfr5bCFjHxo5+dG4LEH1ViO
 BEWyLBan7/PGGwlGa45Blq/5h5nAZTCKjeetzyAzYqP3GvUdY4JTgJQpSVXOdivgs6G1JAFoZ7xS
 bPfTIdKZn7CSEk+CRbF1e/B45dA5juGvjvontZ/y6qFuCVtylJaJ4JU3oTJYoxWEtgtBJDOeNQUl
 CPqdxABibnlh64Hq81MvQF7JbRXDRS9JNCOcnpzzyqdC685vVQkMWXe6o1ixHybPe3iIhuac/iK/
 U4Q0+wvXBqWTPkpBHh21wFTxvAhjUK/D3D5rh2ZzOcw2DnWY/Q/hmSQj8RFIV2kcMxG25kTnSCjm
 WMOnOHuTW+w97DcGZ/EHzPJPH1FaX6qmNX+QjG6Ril/YRRxMTHsQg+jxRUokrCXiKXcPejcR2PRk
 H5mglI3IqgiDiV9UkbOenBeoFNlTDxuyxwxR+IYCUBgG3BFpBehE8yyq+QAMxN9zzVoTOPBGsi2Y
 Z0VnjvufM7wr3bB7xHUQSi6uRzi4nkb1ePL6dp5gb0RrfgFXVn0QKBTFrK9gD5B2ze1MAgQcVHnL
 j9AcDroFdg3lMU5rK81RFiBZX+03K+
From: zipeng zhang <zhangzipeng0@foxmail.com>
To: minyard@acm.org
Date: Thu, 16 Mar 2023 14:39:58 +0800
X-OQ-MSGID: <20230316063958.30417-1-zhangzipeng0@foxmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: 3.7 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is a spelling mistake in the comment information. Fix
 it. Signed-off-by: zipeng zhang --- drivers/char/ipmi/ipmi_ssif.c | 2 +-
 1 file changed, 1 insertion(+),
 1 deletion(-) diff --git a/drivers/char/ipmi/ipmi_ssif.c
 b/drivers/char/ipmi/ipmi_ssif.c index a5ddebb1edea..1a85b400e929 100644 ---
 a/drivers/char/ipmi/ipmi_ssif.c +++ b/drivers/char/ipmi/ipmi_ssif.c @@ -1283, 7
 +1 [...] Content analysis details:   (3.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.233 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhangzipeng0[at]foxmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhangzipeng0[at]foxmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1pchPs-00040J-3g
X-Mailman-Approved-At: Thu, 16 Mar 2023 12:03:45 +0000
Subject: [Openipmi-developer] [PATCH] char:ipmi:Fix spelling mistake
 "asychronously" -> "asynchronously"
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
 zipeng zhang <zhangzipeng0@foxmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

There is a spelling mistake in the comment information. Fix it.

Signed-off-by: zipeng zhang <zhangzipeng0@foxmail.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index a5ddebb1edea..1a85b400e929 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1283,7 +1283,7 @@ static void ssif_remove(struct i2c_client *client)
 		return;
 
 	/*
-	 * After this point, we won't deliver anything asychronously
+	 * After this point, we won't deliver anything asynchronously
 	 * to the message handler.  We can unregister ourself.
 	 */
 	ipmi_unregister_smi(ssif_info->intf);
-- 
2.39.2




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
