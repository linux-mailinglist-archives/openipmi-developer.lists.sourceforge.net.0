Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DC2915D68
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Jun 2024 05:41:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sLx3S-0000RP-S9;
	Tue, 25 Jun 2024 03:41:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <thorsten.blum@toblux.com>) id 1sLrdH-00079q-Ot
 for openipmi-developer@lists.sourceforge.net;
 Mon, 24 Jun 2024 21:53:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5sXZy8fFmjl+2dWQsh2VTHEx+TqeWltCaGxMF+BW67w=; b=EyvMCwJEEr3WW5jWwc+2oQm8xm
 z6lEwBk0T+HBhJWABgyb975BL+ZOQUG/6lXRjJCxiDtMNdvqhCvdO4OMIYURZAWNy4chy8wKCBt9+
 T9eKR7l3ePuUsDFGMDSe2HcVYxnUwjhxFktNA2GGoDZ66erIfrNC5vZZGsSw/yMn3UqE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5sXZy8fFmjl+2dWQsh2VTHEx+TqeWltCaGxMF+BW67w=; b=V
 JXLO0aNcVpX8FUq6Vc2rb/qMNlRL/SFq0Gwt0YiA4pH06YZ0/tnZgFFEW1xmvcpdnVGey52+XI6ey
 kyjgdSwTlLZ6ZnNfLeRiT2jINYIqo6mu0wNvh1sVIkJZ/HsJMOolElRux03Y9RPXtP6eKXMkhfR/C
 zmXou8stXQih3wPI=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sLrdI-00062C-Vx for openipmi-developer@lists.sourceforge.net;
 Mon, 24 Jun 2024 21:53:52 +0000
Received: by mail-pg1-f178.google.com with SMTP id
 41be03b00d2f7-710437d0affso3639048a12.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 24 Jun 2024 14:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toblux-com.20230601.gappssmtp.com; s=20230601; t=1719266021; x=1719870821;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5sXZy8fFmjl+2dWQsh2VTHEx+TqeWltCaGxMF+BW67w=;
 b=a7ESyfYELBwBSmo6D2dAJqkU3Z/lKruKNCUuLiwlfkcr3yygfhxRWekltkfKyQKKSb
 2kkXQKDTyXtrc71yOBfrBiDk+X035iweiatgFfBmQEjG2bRY+PHB0HHfWSCgRgrUN169
 hX4/pk7sy0wUkeewtF+Gt14KKLp5TGDmC6P/dFjCF2a93InCb7dvGK4pXCe/Yk6eyhHY
 VwZlETp8YGjov7R7f30pOh9FB1TCdkuGdQVObJjBfItFW/aQzi50GOrihM+6qMLjw+Q2
 ecgkI/jTxJYuglu0qs74BRuS3TA9BZ6qYNs2hFQGONo3HRef3SgJ4H41J5onW3RBFcXB
 hiCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719266021; x=1719870821;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5sXZy8fFmjl+2dWQsh2VTHEx+TqeWltCaGxMF+BW67w=;
 b=Q15N3Zx4w7KNnYiUYBKpJl+sNxrIcBxSr+V5G4IMBR4K5fQ60yugYdjnLcywJd4XCl
 PenNfGFDuxxacEb5EIG1o7KUI/9OmVKSCawHIiJj87UvPw6PPfmd9zjLV/zvEsUt3YxP
 UWvzJ4L86bgB8i5nMSToxJQXix9VnWssDtmenD5VBh6+g4mmNa1mvxXW2/unzTurR5GT
 fHLc3wPKyPy75YYqWNyM3my5yyOl69Kf1rbXH2hbWrPea1H/J76YL63t6DgKV01kzf/Z
 OOg6cnjMyBkR1QjNQYWQKvRV9zUMBKs4F92ioxHKyu0flv9Q7rb7e0zp5+LBvBHXuRWg
 wTQA==
X-Gm-Message-State: AOJu0YwwV44vu7oV33suKwAvnjihEaBKtYTnCZSNFiWobxFwza7BTz8H
 gXqGUn9ScKa2+ythmpu85y46An8+O0PLzGsdoZXaVQcAffpUX/wEbY/hoOdF82AenfjsqWLO35q
 80VU=
X-Google-Smtp-Source: AGHT+IHROLAyORIu1MU6nTmKWMCgC/Gr83UJCjyNIbBhQcG3wsI2rQbFWey/4R362QhS8vyXdD8Zlw==
X-Received: by 2002:a05:6a00:bd6:b0:706:742a:1c3b with SMTP id
 d2e1a72fcca58-706745bbed5mr4059913b3a.8.1719262115681; 
 Mon, 24 Jun 2024 13:48:35 -0700 (PDT)
Received: from fedora.vc.shawcable.net (S0106c09435b54ab9.vc.shawcable.net.
 [24.85.107.15]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-706512900a0sm6869753b3a.149.2024.06.24.13.48.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jun 2024 13:48:35 -0700 (PDT)
From: Thorsten Blum <thorsten.blum@toblux.com>
To: minyard@acm.org
Date: Mon, 24 Jun 2024 22:46:55 +0200
Message-ID: <20240624204654.250258-2-thorsten.blum@toblux.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Check for run_to_completion only once. Signed-off-by:
 Thorsten
 Blum <thorsten.blum@toblux.com> --- drivers/char/ipmi/ipmi_msghandler.c |
 6 +++--- 1 file changed, 3 insertions(+),
 3 deletions(-) diff --git a/drivers/char/ipmi/ipmi_msghandler.c
 b/drivers/char/ipmi/ipmi_msghandler.c index e12b531f5c2f..b7d8eb0a3432 100644
 --- a/drivers/char/ipmi/ipmi_msghandler.c +++ b/drivers/char/ipmi/ipmi_ms
 [...] Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.215.178 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.215.178 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sLrdI-00062C-Vx
X-Mailman-Approved-At: Tue, 25 Jun 2024 03:41:10 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Combine identical if checks
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
 Thorsten Blum <thorsten.blum@toblux.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Check for run_to_completion only once.

Signed-off-by: Thorsten Blum <thorsten.blum@toblux.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index e12b531f5c2f..b7d8eb0a3432 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4870,12 +4870,12 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 	if (!run_to_completion)
 		spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
 	list_add_tail(&msg->link, &intf->waiting_rcv_msgs);
-	if (!run_to_completion)
+	if (!run_to_completion) {
 		spin_unlock_irqrestore(&intf->waiting_rcv_msgs_lock,
 				       flags);
-
-	if (!run_to_completion)
 		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
+	}
+
 	/*
 	 * We can get an asynchronous event or receive message in addition
 	 * to commands we send.
-- 
2.45.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
