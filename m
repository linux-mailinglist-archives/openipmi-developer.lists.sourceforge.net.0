Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E070B2C4064
	for <lists+openipmi-developer@lfdr.de>; Wed, 25 Nov 2020 13:41:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1khu71-0003xH-VJ; Wed, 25 Nov 2020 12:41:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yejune.deng@gmail.com>) id 1keYyN-000298-5u
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Nov 2020 07:30:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qE47fPw7Ssv/KFjA0L5dv63syn8BReivonGm+SniB8A=; b=UdiJd7V2TleTOVpj2r+gkYFBNO
 Xz7GrfUlwXoz9x+F7vK8yPyO5bc5FrwUdS+Cycrk6fOXTOxXUyw07KPFOG3yUFqmiVAZtYzSWmB5g
 CbshhzKvd7mqzNPKE+6X5zFM6nVJfHEqZXps7kK0GcY0UqVaWnWsmyGCrsNpkXVbcTms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qE47fPw7Ssv/KFjA0L5dv63syn8BReivonGm+SniB8A=; b=lf0OqCgbf5f35DYZ4tqht+onNj
 LNcn4hpQAYKfVqiKwFzLZ8z7aurcZOhECWF1NTRYlBsQVWfryvyTTdwRQp4yt+Z7Uke0H23jA9XMi
 3bTI46ovxJ8fnjmLmkD2lmq0BYsxv+rBZOGhdSBklUb5vkKrFKfC2C2GAKQIfcqjGd9Q=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1keYyE-00EDuB-Og
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Nov 2020 07:30:47 +0000
Received: by mail-pg1-f193.google.com with SMTP id e21so12431736pgr.11
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 15 Nov 2020 23:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qE47fPw7Ssv/KFjA0L5dv63syn8BReivonGm+SniB8A=;
 b=h0+wlUkSs9l9wFOvTLSFGjlgYJP5CDxqYNejm8bqCkE2tXtTPtFB9VJLpwahg1lHsy
 MWV5oMMV4dMpCwFYwaUQbbK/EvTvQpSusTjnxqw83xeASmZRmAL9ySQS/zbyzkHWqDSa
 njlAIZCLDwUDHFqIMwtbYzAqCKGNoJhePKLlhoTsrrMAGCGhuOXNiQ/qGUxzcYzkuLtR
 OpcuwICWAsh1RP152nM5f11LmDzOTcnaBTm3B6y09lb9vLR+cswu36oSq3QbYL6jstbm
 +iGddyAG0tzzhVukqc2WIxK6N9zUni6s5a2LDxRYAsoB0WJqOjIYYpCqFkJwitMq4bg8
 pecA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qE47fPw7Ssv/KFjA0L5dv63syn8BReivonGm+SniB8A=;
 b=R7Cp3O48e33vaYaHcQIEQ+XU83SGuNoSApYQtpurYs4kuHD4VBHZkQQ6K7iPot4fHK
 wGkqQPrNWhTVUOu4VsMIxTTQjmzA8ktSewwpFwT7IdtqRv2u7ZcvMnzrEO6zJIKTAuaq
 fzthaTUT+oqBD/RuY1uqxAQ5zWFxgxD5r8ztl05q8pjgYeRuBMuxbCY7P16Dgc0xKIjv
 NDckhmSJtlbsVHZHursZkOFHLecsfFRwOCadW5pQutMuy/P4N+RN2FkqO95/TmlZQmuY
 fnTs2KhlNAoFq67jY0Jjgso8jRiD30MHbssrnW1OzS8UF24I2oH20reDQt2KeFGIU978
 SFEQ==
X-Gm-Message-State: AOAM531I3nX5ajqgjVq4z426B0iM4+KYkMTa+VDHczs3gZ3uGuzdw2hQ
 wCcUkp+ljQaeV+8B9/e+qZA=
X-Google-Smtp-Source: ABdhPJy9PjU7zc8oaoWL2URVsHZHrRT7EKvuD+h19fqF9heouoBF+iWw6QumYlZ9VQk3N935DYvang==
X-Received: by 2002:a17:90a:34c5:: with SMTP id
 m5mr14482406pjf.184.1605511826091; 
 Sun, 15 Nov 2020 23:30:26 -0800 (PST)
Received: from localhost.localdomain ([8.210.202.142])
 by smtp.gmail.com with ESMTPSA id w196sm16746235pfd.177.2020.11.15.23.30.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Nov 2020 23:30:25 -0800 (PST)
From: Yejune Deng <yejune.deng@gmail.com>
To: minyard@acm.org
Date: Mon, 16 Nov 2020 15:30:07 +0800
Message-Id: <1605511807-7135-1-git-send-email-yejune.deng@gmail.com>
X-Mailer: git-send-email 1.9.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yejune.deng[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1keYyE-00EDuB-Og
X-Mailman-Approved-At: Wed, 25 Nov 2020 12:41:30 +0000
Subject: [Openipmi-developer] [PATCH] ipmi/watchdog: replace atomic_add()
 and atomic_sub()
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
 yejune.deng@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

atomic_inc() and atomic_dec() looks better

Signed-off-by: Yejune Deng <yejune.deng@gmail.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index f78156d..32c334e 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -495,7 +495,7 @@ static void panic_halt_ipmi_heartbeat(void)
 	msg.cmd = IPMI_WDOG_RESET_TIMER;
 	msg.data = NULL;
 	msg.data_len = 0;
-	atomic_add(1, &panic_done_count);
+	atomic_inc(&panic_done_count);
 	rv = ipmi_request_supply_msgs(watchdog_user,
 				      (struct ipmi_addr *) &addr,
 				      0,
@@ -505,7 +505,7 @@ static void panic_halt_ipmi_heartbeat(void)
 				      &panic_halt_heartbeat_recv_msg,
 				      1);
 	if (rv)
-		atomic_sub(1, &panic_done_count);
+		atomic_dec(&panic_done_count);
 }
 
 static struct ipmi_smi_msg panic_halt_smi_msg = {
@@ -529,12 +529,12 @@ static void panic_halt_ipmi_set_timeout(void)
 	/* Wait for the messages to be free. */
 	while (atomic_read(&panic_done_count) != 0)
 		ipmi_poll_interface(watchdog_user);
-	atomic_add(1, &panic_done_count);
+	atomic_inc(&panic_done_count);
 	rv = __ipmi_set_timeout(&panic_halt_smi_msg,
 				&panic_halt_recv_msg,
 				&send_heartbeat_now);
 	if (rv) {
-		atomic_sub(1, &panic_done_count);
+		atomic_dec(&panic_done_count);
 		pr_warn("Unable to extend the watchdog timeout\n");
 	} else {
 		if (send_heartbeat_now)
-- 
1.9.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
