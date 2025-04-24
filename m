Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5587A9B488
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zn6-0001Y6-Oq;
	Thu, 24 Apr 2025 16:51:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zn5-0001Xk-7x
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/fgUCgCcd6UdxLBiMyVEIH1ieA5nsUGYJTkW0ajZaXU=; b=ZAhG4jIZwNwTfjrqTD9WDX8KYt
 psF9ektvIlI9oamtsgs+NDPN4VVbneA8z+7mQnMF2aZE5zFcx2JVj3VcYqeJgGRlt7BY2Bhq/Jlfs
 OR//4K8xUMQYh0wJtolFVeA+9FBL1aae2V0mDwdPt5gCzAmO67dVjAfYx37RYDM7Dodw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/fgUCgCcd6UdxLBiMyVEIH1ieA5nsUGYJTkW0ajZaXU=; b=a13TKeBuEzotU++UHISKQ6v48H
 p5iUsaJTc3p2tkm5wZUih+pHxPLSCdBN74AQSltr3ePyRylv5Qr2sIeVZsE7TnucKFehzoA5RxNtx
 GXCd+pV0mY6XvsnI5JZ8Y6jOfoeRMhVUfzhXeGEYSL2/1fhdOK4HQQyf33nMl7W7T3wE=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmq-0002hW-Bg for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:11 +0000
Received: by mail-oi1-f174.google.com with SMTP id
 5614622812f47-401f0e4c851so55916b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513445; x=1746118245;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/fgUCgCcd6UdxLBiMyVEIH1ieA5nsUGYJTkW0ajZaXU=;
 b=0aJS4cV5yYBNStkYrxpmfExHBKAZeBz+6Y93kEoZBqVkDvc+tjRooaUZmX5lKs2i6s
 Dbu914A4qc2nQ8kFdxhwjQNwiSEvdqdxMg3khy+aD+sY0ZP9LBkfgzyXaM7mq6n1oNOu
 OtQVOumVwmQcFf8C96IybkqgVMF9iDP9b2F+o89e7TSuLjUOti5vwqBRORLGg5WwPD49
 VHwCaQD8AP5poTfFiyOYeWvUkGcpkOrDQXNf2Zux//mWMzD6fGMIOaPISYZ3QzXU9ke3
 VUyiCB8canolet/7gB/BXW1S4buA9xsf1T9IRuz0imB/i24GxxQCmYaN0V8XsHFhYfLs
 crkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513445; x=1746118245;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/fgUCgCcd6UdxLBiMyVEIH1ieA5nsUGYJTkW0ajZaXU=;
 b=CbwUjjdp9cQIX7bua8nQjFVwM3EZoMaF8tHfz5orwuUfKarBUPX24LdfKupd86GCeV
 j+xa6COfhwjJxmrwptMy9sMx0RUMFJ7xPWNiMTAdyX3jo4a6uCj6Hy0UIhfkpUBK+kPc
 L9m+To/tMAgJbEXhW98Pmrb8Awl9D1DddOlAwrK+FKZ+EV6ktuHr9E+lbffLL2IFBAS8
 fdFWi46IYd8IkYnmE6ty5pW7XI4F8uxkjS057ztBvbnPrYvlNpZoaOahN/KfwUaH5aIM
 IOvOIYlKXyRZxDGfEvHoL9gnp5zm7tZHyLrXVUXA35vSMVPnN2YlRzBYilFRgIE3ykMK
 IWTQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYGA9NRg9pU85gJ4z4cBdFb4YoeiMiQwgZdeSiBq7BGDVRDIfCarodGVgohp2wPHgddHe0952mbZWAn+yaxuifPhI=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwhG39e/EA+ekghc1SX5W21VFN7wyWHhYqqCGaox/ebCfYNBbWg
 LJQ328ePc0c/YD4eD/HKcmuPsB3E0XkAe/Vas1/9cYSz9yGqRNgcp4fDDIhQliA9wvHtRwT9ABr
 Y
X-Gm-Gg: ASbGncs1D9QZIw5zewh8EmXCl0ZdT2RFCgtw7pBxjxcilENem3S6tUPcvhwO0WODQaC
 9zwMF9enNWzOiDY1mipzRGUVIZcBXmjUfvFehUQR1GtGodAy3bxvapn+RvOldiJuWRzmayYBjVP
 kwcpayHQa5Nj3rcp4quAAM5SDdh0tVVjzS0RxrzGTlelxadQyKIpQOB0H2kkvaqHK1ZXm77vRHo
 NPyVCXF7W8xPeFEE9kGIN9AqVL/UvAO25DAliDEAq4oMqDJXuSFRQWxFTB2PbNHWDmmInAmQ1RD
 UDVbyM1KpHRzmZJB7IWAwY/zwpLdmBERG6E=
X-Google-Smtp-Source: AGHT+IHPcvdv7FB3AhQqLV3hsOXNc3tJB6fClCSl8rmnmdZAKemsfjxh48tjLULNh3+o5YbNVEjOoA==
X-Received: by 2002:a05:6808:3a0f:b0:401:e611:67c7 with SMTP id
 5614622812f47-401f123168cmr66506b6e.27.1745513445631; 
 Thu, 24 Apr 2025 09:50:45 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec978295sm306930b6e.47.2025.04.24.09.50.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:45 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:46 -0500
Message-ID: <20250424165020.627193-10-corey@minyard.net>
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
 Content preview:  Now that the msghandler does all callbacks in user threads, 
 there is no need to have a lock any more,
 a mutex will work fine. Signed-off-by:
 Corey Minyard <cminyard@mvista.com> --- drivers/char/ipmi/ipmi_watchdog.c
 | 20 +++++++++ 1 file changed, 9 insertions(+), 11 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.174 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.174 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.174 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u7zmq-0002hW-Bg
Subject: [Openipmi-developer] [PATCH 09/23] ipmi:watchdog: Change lock to
 mutex
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

Now that the msghandler does all callbacks in user threads, there is
no need to have a lock any more, a mutex will work fine.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index f1875b2bebbc..01c10bd5f099 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -150,7 +150,7 @@ static char preaction[16] = "pre_none";
 static unsigned char preop_val = WDOG_PREOP_NONE;
 
 static char preop[16] = "preop_none";
-static DEFINE_SPINLOCK(ipmi_read_lock);
+static DEFINE_MUTEX(ipmi_read_mutex);
 static char data_to_read;
 static DECLARE_WAIT_QUEUE_HEAD(read_q);
 static struct fasync_struct *fasync_q;
@@ -793,7 +793,7 @@ static ssize_t ipmi_read(struct file *file,
 	 * Reading returns if the pretimeout has gone off, and it only does
 	 * it once per pretimeout.
 	 */
-	spin_lock_irq(&ipmi_read_lock);
+	mutex_lock(&ipmi_read_mutex);
 	if (!data_to_read) {
 		if (file->f_flags & O_NONBLOCK) {
 			rv = -EAGAIN;
@@ -804,9 +804,9 @@ static ssize_t ipmi_read(struct file *file,
 		add_wait_queue(&read_q, &wait);
 		while (!data_to_read && !signal_pending(current)) {
 			set_current_state(TASK_INTERRUPTIBLE);
-			spin_unlock_irq(&ipmi_read_lock);
+			mutex_unlock(&ipmi_read_mutex);
 			schedule();
-			spin_lock_irq(&ipmi_read_lock);
+			mutex_lock(&ipmi_read_mutex);
 		}
 		remove_wait_queue(&read_q, &wait);
 
@@ -818,7 +818,7 @@ static ssize_t ipmi_read(struct file *file,
 	data_to_read = 0;
 
  out:
-	spin_unlock_irq(&ipmi_read_lock);
+	mutex_unlock(&ipmi_read_mutex);
 
 	if (rv == 0) {
 		if (copy_to_user(buf, &data_to_read, 1))
@@ -856,10 +856,10 @@ static __poll_t ipmi_poll(struct file *file, poll_table *wait)
 
 	poll_wait(file, &read_q, wait);
 
-	spin_lock_irq(&ipmi_read_lock);
+	mutex_lock(&ipmi_read_mutex);
 	if (data_to_read)
 		mask |= (EPOLLIN | EPOLLRDNORM);
-	spin_unlock_irq(&ipmi_read_lock);
+	mutex_unlock(&ipmi_read_mutex);
 
 	return mask;
 }
@@ -932,13 +932,11 @@ static void ipmi_wdog_pretimeout_handler(void *handler_data)
 			if (atomic_inc_and_test(&preop_panic_excl))
 				panic("Watchdog pre-timeout");
 		} else if (preop_val == WDOG_PREOP_GIVE_DATA) {
-			unsigned long flags;
-
-			spin_lock_irqsave(&ipmi_read_lock, flags);
+			mutex_lock(&ipmi_read_mutex);
 			data_to_read = 1;
 			wake_up_interruptible(&read_q);
 			kill_fasync(&fasync_q, SIGIO, POLL_IN);
-			spin_unlock_irqrestore(&ipmi_read_lock, flags);
+			mutex_unlock(&ipmi_read_mutex);
 		}
 	}
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
