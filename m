Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F922A9B497
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znO-0001c0-BJ;
	Thu, 24 Apr 2025 16:51:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znN-0001bl-G2
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VH64OM6I6nosuLY4RSxIBPH85WXV+oEeTJ6j2dq97QM=; b=l3A0eJ7cgA7SERRd+64VNi7hLu
 6S+HvLRbZF7VVrTlaG2BGbqKf5k3m74Q8RDxyTu1FrTNCoiGs6F7K4iSQDzdML1sYkxvm0GThEC3l
 0ZdW7185WyXREykYcuzEhFCDSKMMW9q/2fjOhkTHFB1tu2hOzjJvxV28vF0pYqXEgnUk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VH64OM6I6nosuLY4RSxIBPH85WXV+oEeTJ6j2dq97QM=; b=hIXm6h4t1BsU/zMjwk+L6m6fNz
 WpLuA9iTxH9hgtQNVvrkhuU5EA9ZMhuufq+lE9J8zhb7rSGoqbOo3cNxjUSODsl3FAM4GGHub3IVy
 7ZiF/d+kY6M+ibYIIPqwckp519b2XqEsbK5BYrvh32iMziPcTvxFPaizS7B/Nj986CnM=;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zn8-0002jI-MF for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:30 +0000
Received: by mail-oi1-f170.google.com with SMTP id
 5614622812f47-3f6dccdcadaso980484b6e.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513464; x=1746118264;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VH64OM6I6nosuLY4RSxIBPH85WXV+oEeTJ6j2dq97QM=;
 b=ORBLqSpcwTeTZMd0xS523hqM2eBY6RpXOZJAIfi74jnr885Rz2XBYsJfS/l5nqa82H
 ToixfYFhIB1RPm8A4H0wsh3V8KIhkAzUdd96Ph4yux4C8cNK7SpPFlO4g4ZpfdrQj78S
 3GYAZY4XIuzF/6sBuj4lOUqX1kuh1BgPT4+jGhwEXqggJK42eTbU7nC/GlffOQOZxs7r
 ZZKj8vm2gDpzXqnljWD0nh9QfNCGEs8CsTcf12g7nRfQMRL1NPQZJNSrU5aoXu6Av4e3
 ZwyRpgUkzgM6YTKqt7ElMR5sWraSyMYnLM49MVvzVkGg167nfptJ5aSShjtLrrD6ePiu
 n2fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513464; x=1746118264;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VH64OM6I6nosuLY4RSxIBPH85WXV+oEeTJ6j2dq97QM=;
 b=FOx4zgrvVGe+5MDpkWZctRMWUb4zL3eR8z50AVH1vLGEBuN6bdBO4C8Pz5l0n3z9W2
 Z+5UiRGIaKUXD1jgwFDc0z0lBrZsu8mUeI0pfreEKhdntJ8FZX0wHwsRjg7lRSkR8obp
 t5s1rwN6YKIhwkMqTeJ9TFmM9rT1sp/gl6t9KuKFJ34Vl5MQ805tBznQlaDRSqzWkmjl
 VOI9+691HOXYzUgXT97tR6MljrEUspsCzGQBZl5DKgDyXzyfEiH3VGDTASGQ/Rp8Afmw
 j6twAnOnwwYCev7Pd5wnusssMVZvotTTXZfc2yLPlUgtbv0pZIJDa1sFnjOzlXXoeRpT
 L1dA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7id0XejXU3Q5jaZkaMYGQVPWQ930N2o27mp4CqKJ+4gthkez8yQKaZ3Th4xuxBpJB0wdMUUCZ7zq15d1BSCxLB3g=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YypvUvNRmthzrP2sAV8Cy7O4Zs7dOUaQ/bUkI+13W5I10j8W7F0
 FcuvUsNqE4I1udcOMq+doojJ+dsh4ffknXcfN8nPQz6vzTlcU7Jz+VW4QlnNsnA=
X-Gm-Gg: ASbGncuIr8K6gvLzClifduG5u9hwTK0BVj3Md0LejTwvqvuHgVm3bu9Samx5dYcsaf2
 n5iDjCZsmj/Gy3pOfaOfBpy1Siq4ecKkyODx+npWJDxAcnTVu+OI7aRMF80f968wK5aDw+6F9TK
 uIQkv7lFLZb9kzQ4CSgE6Gaue9OAf8opZw9j8jS/hh8sm6htCfuydjk383MU1zBILdps7SP4VqS
 tIHq9smR/foxruMQiodFrjWpEynl1e0ieuWvqIrDFk4HaW9W2rtgl6cD0pRghbBM1YU7TamutRz
 5pWqNHc1/a/uJCcQpvSiXwKvUcDQHyW4Umo=
X-Google-Smtp-Source: AGHT+IHEXQA1OTb7rMWfEAZZ0DvXP5Khkqdlv7WV286ube6xvxznKifB3RDkqvSozgqpVp+14zNUjw==
X-Received: by 2002:a05:6808:6a89:b0:3f8:f8c6:5500 with SMTP id
 5614622812f47-401f1254c03mr56299b6e.34.1745513463964; 
 Thu, 24 Apr 2025 09:51:03 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8b0484sm306647b6e.4.2025.04.24.09.51.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:51:02 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:57 -0500
Message-ID: <20250424165020.627193-21-corey@minyard.net>
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
 Content preview: It was possible for the SSIF thread to stop and quit before
 the kthread_stop() call because ssif->stopping was set before the stop. So
 only exit the SSIF thread is kthread_should_stop() returns true. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.170 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.170 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.170 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.170 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1u7zn8-0002jI-MF
Subject: [Openipmi-developer] [PATCH 20/23] ipmi:ssif: Fix a shutdown race
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

It was possible for the SSIF thread to stop and quit before the
kthread_stop() call because ssif->stopping was set before the
stop.  So only exit the SSIF thread is kthread_should_stop()
returns true.

There is no need to wake the thread, as the wait will be interrupted
by kthread_stop().

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 506d9988721e..b016fabaac68 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -481,8 +481,6 @@ static int ipmi_ssif_thread(void *data)
 		/* Wait for something to do */
 		result = wait_for_completion_interruptible(
 						&ssif_info->wake_thread);
-		if (ssif_info->stopping)
-			break;
 		if (result == -ERESTARTSYS)
 			continue;
 		init_completion(&ssif_info->wake_thread);
@@ -1270,10 +1268,8 @@ static void shutdown_ssif(void *send_info)
 	ssif_info->stopping = true;
 	del_timer_sync(&ssif_info->watch_timer);
 	del_timer_sync(&ssif_info->retry_timer);
-	if (ssif_info->thread) {
-		complete(&ssif_info->wake_thread);
+	if (ssif_info->thread)
 		kthread_stop(ssif_info->thread);
-	}
 }
 
 static void ssif_remove(struct i2c_client *client)
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
