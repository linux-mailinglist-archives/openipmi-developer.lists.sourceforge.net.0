Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E64BA9B494
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znL-0004U2-Uz;
	Thu, 24 Apr 2025 16:51:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znH-0004Tj-6y
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wByEINYJd0q8686qKYCNqB/r8M3VXqTUYfl1z8pH8qc=; b=Zhf7Mo547Pc15sjdKyGpKVkKkL
 qGbkVWgWE8xwjfWW5XiO5H5MzwLdhACYlP1+kuwAVcLNN9E7BqNPGQdYmPDP2b/bnSrq33Lp6ZIAG
 FJvpYiZVhGT9qdE9qyGEEjkMi3jAMDVI7N/FzRsUF231B34QDvgDdYNy8HgsatBM1T3I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wByEINYJd0q8686qKYCNqB/r8M3VXqTUYfl1z8pH8qc=; b=cH6ziiJjm7YLHka+ONm4vEh1MG
 c9u7TVBzCNzUDicZUS8DR1kWmBxvlEANUU2yh6+9j77PZsP8Ar5itoR/iT2p7qKn9+Dh6ypuEgvYG
 5HaD8cg0/VWwUDVgVdpnZN0r8O4G/qC3tchlxJpBlaRY1RhkEaYavWYFg1JDm6OdEvBg=;
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zn1-0002iO-0a for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:22 +0000
Received: by mail-oi1-f178.google.com with SMTP id
 5614622812f47-400fa6eafa9so949040b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513456; x=1746118256;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wByEINYJd0q8686qKYCNqB/r8M3VXqTUYfl1z8pH8qc=;
 b=F3ca3dJNRwMU228KewA3ufaf5CF4GBhWrK1Q9wn16pbF6qot1WXciGms9EmA7Y3URT
 J4baI9j/foehIE9puJZZ+7c6k1LHv/zgsRgf0Z+KPctUkTu8pv3dV7cW1Le3WFzD13cf
 R3SS2/u8UX80eD/UlAwdLfuWcNkVfgWLHrIc+pM26if5pmDRkhPlTC8npBG7yj0Pz2d7
 cnZrzGqtYYHHYDnGjQY1JZ5dHdIHcxX6ZPzddkeu+8XP1rPZnvq9sHN/MwnNIE9iy9J0
 kVbKIA6iHKRQsIvir3GdK/Gw25ub7ZtJ9/Jj8P+zR6jVHvoym27Mjv8exJ0EiPfRWWPG
 F3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513456; x=1746118256;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wByEINYJd0q8686qKYCNqB/r8M3VXqTUYfl1z8pH8qc=;
 b=eWfPzJqJIh9uyPaf9Cbr0tIoHQiiAGH8/WrD1tOgJ43SKcM6Rr83PajuPh+6ReD49B
 HYYGxqw3umJlheri46vfAb4UyVjYoO+MVpHemGlLaH9tK1HQeWlgav/qn7XjEa+J/WWr
 zImCWVVLYdCMo/mQ1/LoV9RnjRUpQD8xN9y3wk1TiIo5ZzmrM8gw+YUZFDZtq7hetwxG
 v+ghaFAtNILm0yMvCoN3Zzzt5+rnj3qmJoSBP4AIyxXLVqHPuPF4B0+G65L1MMJOqZYJ
 qwJNaV/qTy6Um7CLXXK8VwiTw0mcwaETwsZ/LLUNOOmX1S1D1mo8WGv76uTA+waVY8Lb
 /fZQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVz6aZitehHh3oTtx4b5MlohdAtCS+iEgFPuVeuOflCvl7J3Os+Bqxmn74yT7zqdvl/LsuswUJCD3qsp5lQqKjAqOw=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyM13ZJ5qvzjxsZ42P9q8SEmoAmBvl0X0Hman/FNoi6T+GBFTWb
 pTA97zsEqWkbt0BQ+0+iu3ThefiAoIkyQjtVsgsVPV3ewk6jHhnNtVl62T+USB4=
X-Gm-Gg: ASbGncu1OAj8ykfgGWEIsbIYIlSbR2a/SsRcVRjBqHD/tXv7A0xROnJg7QjMnb0FF/L
 FFrMCxvedbKVaevUzGkT0vLDxr/cyqKkhSdj6NYYFR1Gmdc4TYe1BXGqcrY/PM8IFDTe3seQXqG
 FOQRmSuKnSd6GwCBt4TjCCyLGx0Z43SryZ5r6pDlfoy1paf7ljIWzCJCgtT8sGFgImVruIDW7mL
 /dj9UJQdQmbq3RVenSZ6sK0BKloQa3ed8oGaP3sC0aNnAgchrQB1gjKa9O4dhx12tz+asnbrgfE
 SoUCVJHmL8fTw0Xj5Laea9DBRApEimWDkQs=
X-Google-Smtp-Source: AGHT+IHOkaOe8SUFZce7EwkwL3Qq0QHY9K0s47gF8ITRNwmFE/6ljSaVw0y2q6bH3+tIlQTgvwm2aQ==
X-Received: by 2002:a05:6808:f8d:b0:3f3:d802:14f1 with SMTP id
 5614622812f47-401eb2979c8mr1843460b6e.12.1745513456357; 
 Thu, 24 Apr 2025 09:50:56 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 006d021491bc7-60646862ec5sm319870eaf.3.2025.04.24.09.50.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:54 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:53 -0500
Message-ID: <20250424165020.627193-17-corey@minyard.net>
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
 Content preview: This makes sure any outstanding messages are returned to the
 user before the interface is cleaned up. Signed-off-by: Corey Minyard
 <cminyard@mvista.com>
 --- drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++---- 1 file changed,
 7 insertions(+), 4 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.178 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.178 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.178 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1u7zn1-0002iO-0a
Subject: [Openipmi-developer] [PATCH 16/23] ipmi:msghandler: Shut down lower
 layer first at unregister
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

This makes sure any outstanding messages are returned to the user before
the interface is cleaned up.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 927556ca469d..56654a9c5cf7 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3738,7 +3738,13 @@ void ipmi_unregister_smi(struct ipmi_smi *intf)
 	list_del(&intf->link);
 	mutex_unlock(&ipmi_interfaces_mutex);
 
-	/* At this point no users can be added to the interface. */
+	/*
+	 * At this point no users can be added to the interface and no
+	 * new messages can be sent.
+	 */
+
+	if (intf->handlers->shutdown)
+		intf->handlers->shutdown(intf->send_info);
 
 	device_remove_file(intf->si_dev, &intf->nr_msgs_devattr);
 	device_remove_file(intf->si_dev, &intf->nr_users_devattr);
@@ -3761,9 +3767,6 @@ void ipmi_unregister_smi(struct ipmi_smi *intf)
 	}
 	mutex_unlock(&intf->users_mutex);
 
-	if (intf->handlers->shutdown)
-		intf->handlers->shutdown(intf->send_info);
-
 	cleanup_smi_msgs(intf);
 
 	ipmi_bmc_unregister(intf);
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
