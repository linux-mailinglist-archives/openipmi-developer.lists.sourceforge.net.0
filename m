Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23053A9B482
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zmv-0007sg-PS;
	Thu, 24 Apr 2025 16:51:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zmu-0007sQ-Ft
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OcNpKj2ULrV1lWDMQw0DBFTmPSr8bbwLxdvwy2alDVU=; b=WnL2vuhvk+PYSxIoFUgUv2vbUU
 GBfwmFIKDlAX2qmbs2hchgXu/vRzkIzuTSD9Mkh4Kx2YhIyjYUlzQsHVAYpnBJZMKjFT/+6w0y6XL
 pUnhXprKDiDnyJJSGPzztvPOLtfovJ0gRO5DroBkFyUkoIgmvZ9KDX7sKWmXqtolqank=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OcNpKj2ULrV1lWDMQw0DBFTmPSr8bbwLxdvwy2alDVU=; b=OxBWMkX/o8ZJPTBSPtsg6m2LTz
 TF6EZ5wKyLijjVfxfWecN1C0djFasSTKze2QA78//UUdRGAL6Ag275wfLRw6fiktK1jqAWmBG3zwE
 F5vfxfP71pqSO+9xEnq1brd+rrAniv+/03Kbw9U5tPzLKr6CcN+ySGm4SGveCChQVL1s=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zme-0002gp-Qx for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:00 +0000
Received: by mail-oi1-f174.google.com with SMTP id
 5614622812f47-400b64ac5fcso804949b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513434; x=1746118234;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OcNpKj2ULrV1lWDMQw0DBFTmPSr8bbwLxdvwy2alDVU=;
 b=05XgL/LkIeAKDOK6PzbNMFNHxzZUO7LAUGnZWqX3e60zJOMvHVZ/iFzBs1eKjyzY83
 ylrh5HOK3pvZ0Z/odbHPthtInVxhXCjEq54aLO0nS1wIoLJEHxmWeGPPISzmEpkZw53b
 iJVj8aAZsBcu01ovnyVXMrfQ5FRDnEUCbCRlVHMiTyEcEF8C5LhJ5BOF6eiv0FFQU1ak
 f1Cq5UfF5KDxaizN45ldmobeEdJW54bHi/oD+bHoTSQgc4D/2op5HEK5CkjxI5Bx6mTI
 69sYekRS7sUbG6sD4jPTtF9ejHYiBI+0PFR1Jw8fcVhomKV7xDK16lNoTP0Y3I+qi2r8
 rsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513434; x=1746118234;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OcNpKj2ULrV1lWDMQw0DBFTmPSr8bbwLxdvwy2alDVU=;
 b=S862L8y/0QkzuYZg5rkMve73xDhwp/w9Ex96vbH+Bfy7dGxyoOuQQQGj/5h3ELB/fb
 8eyHIGUY9V1URlTWTV2Pt+fg0YwSZsrejK0dYnp3g43BgBsUVa7USDpgchGaYJeRROZm
 780cgLsUT6ZEjytImOhFd0s+yxPda+gMxqtP/jYvr/AAclgfwwtWzkLm+6ZkMbYBtVqn
 q2wX/o6rM7Zhj523qdjHduwmG07492f8yZE8gsw75tHPBg5QYjsXgCDbDE82zZWqnPGs
 Z6oaD7gXCU8t0zy7yBvav4TkEXLGt3qN7M7QNb65JC7hvrRX1ktMVqIZRTO3Kg+w+2Sk
 /PJg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUrzLIDGsQoZ9t8Qql/5JFHTcPCRt6Ac9Htd7a6FkcxMZ3xg6D5vScyIAn8TdAvKzFY1DCFM4g+wnq6rxffTzmmfqM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzWz4umbuj/cnyG2BbQe9kmj8qLSxc+esG9St3ZSyl8AvTIrDdP
 qeDLDuc0myA4A7J0/yiAPqmC26JSaQn3F9fJsPtYqQHrY7s8bwrEQpSZ6hqxlbbNRz92Stb4wra
 p
X-Gm-Gg: ASbGncvStOmYjHws9M0GShVebSt1IlX+BvSi11UL4EY1NPBQ9ZGONYiWwpdRFI4y0OK
 ojPZe1tNs+OF33dbRqdVuALVkNNVWX+0sNsbNQAn7TB5CFv4J7yJywJQUq/ZOz2t+R60UZbwDSQ
 +5EWvFCBfiVyYRywSJTZ4YyVZxj/K0T61p59c99Ar0tJAyRluTKhp+t9b57Ozk6ASoNxj42nv3O
 M3XQp5a/mInU9EdbDLDeXeRvydSGgfR4J4Q2z4+Dxcv9M6y8Fco9wYaUz5KQMF5Rm3GqwAwialO
 nNVprPPb7U2Io6bOTCbnGN4ocGTBB9RWh4Gie7XRSBtfcQ==
X-Google-Smtp-Source: AGHT+IELql/wRvoa8BM3ex/dBaoFvABrW93Nk4W9CtFRx3vZMu1Go4RmhcXkY4KkH82YYqlFrrynyw==
X-Received: by 2002:a05:6808:3198:b0:3f6:6d32:bdb4 with SMTP id
 5614622812f47-401eb35f74bmr1991846b6e.24.1745513434105; 
 Thu, 24 Apr 2025 09:50:34 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 006d021491bc7-60646862ec5sm319763eaf.3.2025.04.24.09.50.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:32 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:40 -0500
Message-ID: <20250424165020.627193-4-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424165020.627193-1-corey@minyard.net>
References: <20250424165020.627193-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Get all operations that manipulate the interface list into
 thread context. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 16 +++++++++++++++- 1 file changed, 15 insertions(+), 1 deletion(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.174 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.174 listed in sa-trusted.bondedsender.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.174 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u7zme-0002gp-Qx
Subject: [Openipmi-developer] [PATCH 03/23] ipmi:msghandler: Move timer
 handling into a work queue
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

Get all operations that manipulate the interface list into thread
context.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 22813b1598b0..e08ec9918a32 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -5083,8 +5083,11 @@ static struct timer_list ipmi_timer;
 
 static atomic_t stop_operation;
 
-static void ipmi_timeout(struct timer_list *unused)
+static void ipmi_timeout_work(struct work_struct *work)
 {
+	if (atomic_read(&stop_operation))
+		return;
+
 	struct ipmi_smi *intf;
 	bool need_timer = false;
 	int index;
@@ -5111,6 +5114,16 @@ static void ipmi_timeout(struct timer_list *unused)
 		mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
 }
 
+static DECLARE_WORK(ipmi_timer_work, ipmi_timeout_work);
+
+static void ipmi_timeout(struct timer_list *unused)
+{
+	if (atomic_read(&stop_operation))
+		return;
+
+	queue_work(system_bh_wq, &ipmi_timer_work);
+}
+
 static void need_waiter(struct ipmi_smi *intf)
 {
 	/* Racy, but worst case we start the timer twice. */
@@ -5538,6 +5551,7 @@ static void __exit cleanup_ipmi(void)
 		 */
 		atomic_set(&stop_operation, 1);
 		del_timer_sync(&ipmi_timer);
+		cancel_work_sync(&ipmi_timer_work);
 
 		initialized = false;
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
