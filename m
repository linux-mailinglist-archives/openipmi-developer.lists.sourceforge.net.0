Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C63CA9B481
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zmr-0004R1-GA;
	Thu, 24 Apr 2025 16:50:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zmp-0004Qt-OG
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:50:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zwio3ISUto8LUTujsv8QXqK82cuXiEJf2BXkC619czg=; b=BErwsWXUz+LaCc2Xlh1Z+d6d71
 8Z912B1KS7DMRfAKgkBfn1I1zm8IOX8ZcQorhcZt8D3flZMMgpn/G8gF1P0nEoYPfN5BaEpGi5ypC
 R6mdpevjbh8PI6KJT0Mp1in3ugnPHuvkzkCPNZfkj5YIf4eharxQUWJ/UK/8WxiIETIY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zwio3ISUto8LUTujsv8QXqK82cuXiEJf2BXkC619czg=; b=jkbBC1aS4Fl1600zceDKpdod1D
 32ectA6Z9qUQKCEGXTKCZORDs5x3oP3x9zq4Wdiv2sA/3m/GefD36LJ/HfZtE1w9u8LrTpNWmNxs5
 o0IUjAqMZ4feGgpYyumd7SdWdnhEn6wRb796j2zQA9u1vyfbZagYSyR7m7KvDGEeqX7I=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmZ-0002gY-EP for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:50:55 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 46e09a7af769-7302a769534so956830a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513429; x=1746118229;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Zwio3ISUto8LUTujsv8QXqK82cuXiEJf2BXkC619czg=;
 b=XzLzqM1EKL/KoyKLaI8OFj1SjtF85gFS3pM+ECBU5ZKtu97qGemQE9Lx0gcQYMAWbj
 AyRcByj8QIt97g8iicBs8MAW+qb3lp9TEEXQxfUm5H6WEPjAzPjL+XEmQswjldcGSQXg
 G0ZDFURnNkzomXsJVj49qpncqaqZbf3erSPbtbcUZBhzuwCqcx59ZF1ntXXVcquSJZCr
 9/JGlbjj1m4HgPIDFqlFY5mWj5IN2PWy09ItTBcBhpuzlXD29SK3Dy7kvxV0SidYBECI
 IAn3GW0w2KsCrJ7E1VI/av0FUpa8hIiPG+CDr9SAytWW+685iYeTl2/2/tFtu5rAW9+q
 zjlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513429; x=1746118229;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Zwio3ISUto8LUTujsv8QXqK82cuXiEJf2BXkC619czg=;
 b=oPBtvlTA00a8sb0TB4FGnpPacFC5WCm0sK6SHdHNH/nX4DCZUPeoUDqqW8MtEiTUfW
 OoFqNoDoiiqbkXTIl9C5af5Pxpy1zWaGsWkj6fR23Wj09nD+npmqL0vuOpe7y1PlNlMT
 dqoKoXMD3OOiYQYbu2SzptqTGkvoxJh8rTiLViTs35QJmdx26v7oMP5xAN1nmY/gbT5g
 W0YhqU/ugvHaVuAikT1kSVdjdtItpypJMaqOVq40BoiJxAk1YmxY5XKmCekgJy+ENYjk
 fWn5VVPBiEqiYLihxhH4HAgDntrBflaOJRCVb9hTt3w9ulN27995oYpk0SGONjruOzFt
 3s1Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMF4ur0NsHj0kN3fNDTirrtgI7kNo5yYSq9W7+C/+3Kn7bT+WgK7Fd/ebzx6KQIXdq3mrexi21RC33clariqo2bSw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxf3Cgtf5q+2pQkCgcByEEzzyTrFJBmdNvtnEVeMvLRhmaAGVDj
 IykZeXUBiStZD0UPZqXnkkk26vSDvFlbJYtL1MDhGNr/yIkxWM4c+PVRT8khB+I=
X-Gm-Gg: ASbGncsZGpwnrX64ziKrOyp2hD4wn8r8ZtcjsbKiSpYFmjxJ+TJQF0KqibMMaPius/f
 VQsrXKDoInnER3lEJ9tQxq4/lQV0w5XHrvQqdNgbxMQbSNsvFFocNrDGLiOzfnlwUOJb/uBzb2z
 dsNFiAAscdIwVAuf6xeRoW0nbyNazW/nHkC4sPnGvxXtsD8wisyXrpo8z5TlJor57hLtPYQ7Fth
 0jjHsyxoYnFmGubL2VqUVe4tD5KNHJrDSpbHYqEaOZ41MlVMaefcIqUhFvpYIvW6t+9F8zME9Pm
 VddDSUGyCcgOR0aQx7kZiKIWUgh8AU1ZZnQ=
X-Google-Smtp-Source: AGHT+IGy7CZalF5Miu4rlUrqy24erWiGVBihUFSHTQCWfAbTX6kMHsZPYJdkMwwydQR7vrtwIl+ZPQ==
X-Received: by 2002:a05:6830:3c08:b0:72b:a175:2f1d with SMTP id
 46e09a7af769-7304dbd8709mr2441810a34.23.1745513428769; 
 Thu, 24 Apr 2025 09:50:28 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7304f188d01sm296180a34.14.2025.04.24.09.50.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:27 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:38 -0500
Message-ID: <20250424165020.627193-2-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424165020.627193-1-corey@minyard.net>
References: <20250424165020.627193-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It needs to be read only once because it's used in
 lock/unlock
 scenarios. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 17 ++++++++--------- 1 file changed, 8 insertions(+), 9 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.50 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.50 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u7zmZ-0002gY-EP
Subject: [Openipmi-developer] [PATCH 01/23] ipmi:msghandler: Use READ_ONCE
 on run_to_completion
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
Cc: Breno Leitao <leitao@debian.org>, Corey Minyard <corey@minyard.net>,
 "Paul E . McKenney" <paulmck@kernel.org>, Corey Minyard <cminyard@mvista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It needs to be read only once because it's used in lock/unlock
scenarios.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 1e5313748f8b..77f0f41f2e3d 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1882,13 +1882,12 @@ static void smi_send(struct ipmi_smi *intf,
 		     const struct ipmi_smi_handlers *handlers,
 		     struct ipmi_smi_msg *smi_msg, int priority)
 {
-	int run_to_completion = intf->run_to_completion;
+	int run_to_completion = READ_ONCE(intf->run_to_completion);
 	unsigned long flags = 0;
 
 	if (!run_to_completion)
 		spin_lock_irqsave(&intf->xmit_msgs_lock, flags);
 	smi_msg = smi_add_send_msg(intf, smi_msg, priority);
-
 	if (!run_to_completion)
 		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
 
@@ -4753,10 +4752,10 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
  */
 static void handle_new_recv_msgs(struct ipmi_smi *intf)
 {
-	struct ipmi_smi_msg  *smi_msg;
-	unsigned long        flags = 0;
-	int                  rv;
-	int                  run_to_completion = intf->run_to_completion;
+	struct ipmi_smi_msg *smi_msg;
+	unsigned long flags = 0;
+	int rv;
+	int run_to_completion = READ_ONCE(intf->run_to_completion);
 
 	/* See if any waiting messages need to be processed. */
 	if (!run_to_completion)
@@ -4813,7 +4812,7 @@ static void smi_recv_work(struct work_struct *t)
 {
 	unsigned long flags = 0; /* keep us warning-free. */
 	struct ipmi_smi *intf = from_work(intf, t, recv_work);
-	int run_to_completion = intf->run_to_completion;
+	int run_to_completion = READ_ONCE(intf->run_to_completion);
 	struct ipmi_smi_msg *newmsg = NULL;
 
 	/*
@@ -4843,9 +4842,9 @@ static void smi_recv_work(struct work_struct *t)
 			intf->curr_msg = newmsg;
 		}
 	}
-
 	if (!run_to_completion)
 		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
+
 	if (newmsg)
 		intf->handlers->sender(intf->send_info, newmsg);
 
@@ -4859,7 +4858,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 			   struct ipmi_smi_msg *msg)
 {
 	unsigned long flags = 0; /* keep us warning-free. */
-	int run_to_completion = intf->run_to_completion;
+	int run_to_completion = READ_ONCE(intf->run_to_completion);
 
 	/*
 	 * To preserve message order, we keep a queue and deliver from
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
