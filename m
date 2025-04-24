Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDF2A9B490
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znE-0004TI-LA;
	Thu, 24 Apr 2025 16:51:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znC-0004T5-TX
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=34wiUQ0AMJfn+ReOObF+ZTxikTeHpyAO2TM1tGanBH4=; b=YdGr31tuZaw2zPuw0sM/yKksWP
 gA5RGvHSklwjpTTCq7eMfswDv1pe26OCNZ5C3vccSLeT6WjEkWK5rXf1Q9EypM5G8qCXA7IYTEc79
 d4VxIbrr3Tjm/qWjuOtBwyOZdF4Cm0BhV/xUvLE/e0NZ+w8W2gWVRQ8KY63Fm575UrZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=34wiUQ0AMJfn+ReOObF+ZTxikTeHpyAO2TM1tGanBH4=; b=UlK8zHP/AQFDPO8hRmdlqdfAtZ
 Ifbxn6WwmFN+sTKJJazRAmkX4WeYbfuLAR46EkEeXgOS9DvADbZ5oKzI7WkR1abY3M/s/E6MJLGOD
 75xxcwIruprKKsV8YTCvJSHAEzXb9UhF0oh5kGIs/8QFAAqQJ52e2jKXeEN6j8MW0seU=;
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmw-0002i1-Kx for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:18 +0000
Received: by mail-oi1-f179.google.com with SMTP id
 5614622812f47-3fe83c8cbdbso432980b6e.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513452; x=1746118252;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=34wiUQ0AMJfn+ReOObF+ZTxikTeHpyAO2TM1tGanBH4=;
 b=3QgQ/QLut5c/JWcLWNlS876Aas+mn7JvEItQvnCjeMU4hhW+qabTxcvK5MFfhmEFCG
 tqM0jxy8YXBowrSLEJMMiQ93hlTJBkjJdpEi2Q7Zo6/XyCmTlF40fFAZc7FCRT5lIxpo
 0wKs/xQa75e6IhnNx1FWLprZxlVzoEmkJuX4LlB1hZPBzNQLJYFf58vxgz6uCHKuQf39
 W40OILpZOCaJ57nc7V53GJII8sjkcQETfpjTINdBZrprPVXaoVFA86gSetCAssf+Uehj
 f+RtxFkc+EXYM7g1BGkzJzcNcY/Z0I7aBDcpCtuto9+Gl6zx+adbTnckEr6/7/+vVmO4
 eIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513452; x=1746118252;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=34wiUQ0AMJfn+ReOObF+ZTxikTeHpyAO2TM1tGanBH4=;
 b=VyDuC/TOVpftb3sGIBZlRNTQzIhWkRJQR6Y6IweFTir0qydoHFV7ARv1noVeSRZPZG
 hNl4op1ldAAVUMr4W/pH3JpsjLQbaj2xP7MS0WifBzbWVasciBidHJ2Pnnv9g1eyXwNH
 6xo6yTS4mw7qd5pdKhb29PVwwUNP4T66E5qXd8J6pF4xAfGaoCudAxZ0C/SSet6y41x+
 Y7oR5FcLLRknqvmNkyBGrX2tePE6GT25q377Jqey+A5EoDoRmHXtRDM7OGAUhnviCWj3
 jQLUj8SSJ/EghXFJLnGIhtkfUjdKFWKsYSc5LAAAWSk6WjgRFWrmg8NQiHOZheNCLHkl
 JQ6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgEKvTOm04hMdsUTd32tG6NAoUdELDP2Xjr+P1zseEcCqMJkTCdrfs7Wm8yCaZXZDjG8OSvzKsCjvxySVLS8PtWsc=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzdDoe3O6E2r336uDnicm9pzvspTR/QkSJh25c1e2o2qy3xi334
 ezrOcnOWEYLYcH5vBonD5z7Ra80JC4bMcx8p4a1BpfksI/oTshxkerKGSDpZJqc=
X-Gm-Gg: ASbGncv+0OPa/y9UUaKBS4Y+OGxUWYFbWmg08KhQFYI/hxaULiRIdqxavY6ZRGUGFLn
 sA9N8df84BN5pcV2D8tyxXRAML91uchL7LMm1F8+8Tq1YCMujnkMqhJzmOxbzrSviYg+ki+Fm70
 frJhGAiM40dV9YQLrjZ/fRGLMk7bNRZAzbjW9OXHRbWPfsPCdXMsmjoH1dXw3Co1rUbf/tk/lqX
 jb9SSJVUIG9UavCcCMXGXIp0/rD1L0Hr5RZ7GpkDWMCoGFVtKN/nvMh/WfZVMUDrclbi+KviQQW
 2cedws4HTpnsmtBn77EQy/svzIZzaz5T6Wk=
X-Google-Smtp-Source: AGHT+IEHlDIf7ClF9R8piHibOkiklRbxXeeireMCw2PHSCOxkSCPjQvlyS1JVQbFyT1Sumg6jwuxWw==
X-Received: by 2002:a05:6808:3308:b0:400:a250:9819 with SMTP id
 5614622812f47-401f1180586mr101396b6e.12.1745513451973; 
 Thu, 24 Apr 2025 09:50:51 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8e2808sm312067b6e.21.2025.04.24.09.50.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:51 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:51 -0500
Message-ID: <20250424165020.627193-15-corey@minyard.net>
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
 Content preview:  The lower level interface shouldn't attempt to unregister
 if it has a callback in the pending queue. Signed-off-by: Corey Minyard
 <cminyard@mvista.com>
 --- drivers/char/ipmi/ipmi_msghandler.c | 34 ++++++++++ 1 file changed, 12
 insertions(+), 22 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.179 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.179 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u7zmw-0002i1-Kx
Subject: [Openipmi-developer] [PATCH 14/23] ipmi:msghandler: Don't check for
 shutdown when returning responses
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

The lower level interface shouldn't attempt to unregister if it has a
callback in the pending queue.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 34 ++++++++++-------------------
 1 file changed, 12 insertions(+), 22 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index edc53c22ca84..74a84eeeed9c 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3893,17 +3893,12 @@ static int handle_ipmb_get_msg_cmd(struct ipmi_smi *intf,
 		dev_dbg(intf->si_dev, "Invalid command: %*ph\n",
 			msg->data_size, msg->data);
 
-		mutex_lock(&ipmi_interfaces_mutex);
-		if (!intf->in_shutdown) {
-			smi_send(intf, intf->handlers, msg, 0);
-			/*
-			 * We used the message, so return the value
-			 * that causes it to not be freed or
-			 * queued.
-			 */
-			rv = -1;
-		}
-		mutex_unlock(&ipmi_interfaces_mutex);
+		smi_send(intf, intf->handlers, msg, 0);
+		/*
+		 * We used the message, so return the value that
+		 * causes it to not be freed or queued.
+		 */
+		rv = -1;
 	} else {
 		recv_msg = ipmi_alloc_recv_msg();
 		if (!recv_msg) {
@@ -3984,17 +3979,12 @@ static int handle_ipmb_direct_rcv_cmd(struct ipmi_smi *intf,
 		msg->data[4] = IPMI_INVALID_CMD_COMPLETION_CODE;
 		msg->data_size = 5;
 
-		mutex_lock(&ipmi_interfaces_mutex);
-		if (!intf->in_shutdown) {
-			smi_send(intf, intf->handlers, msg, 0);
-			/*
-			 * We used the message, so return the value
-			 * that causes it to not be freed or
-			 * queued.
-			 */
-			rv = -1;
-		}
-		mutex_unlock(&ipmi_interfaces_mutex);
+		smi_send(intf, intf->handlers, msg, 0);
+		/*
+		 * We used the message, so return the value that
+		 * causes it to not be freed or queued.
+		 */
+		rv = -1;
 	} else {
 		recv_msg = ipmi_alloc_recv_msg();
 		if (!recv_msg) {
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
