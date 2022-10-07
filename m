Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 182465F7DCA
	for <lists+openipmi-developer@lfdr.de>; Fri,  7 Oct 2022 21:17:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogsqa-0007T6-Cv;
	Fri, 07 Oct 2022 19:17:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ogjyl-0007qu-5J
 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 09:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kKFjny/9mWuO/iG0Kxc5VvaxquxrAamtdUptPDp0d74=; b=UrV90YSCQhu8gbcC8uiNElKdpP
 lyo6Zte8jeO/uvRBCNdMevN0hI/4KjP6ytpXQaZaGIZsxI7dQ6inBb+24jjFYz671alsfwmrD+D7R
 1UNzQaLHegcETLz84eQ9amSwGqf7pzlV/4dweAiHQxFW0VLyDpurS67iIm1wP5F89o9Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kKFjny/9mWuO/iG0Kxc5VvaxquxrAamtdUptPDp0d74=; b=doS10WjEF/GTXHXNwiR3GrepVN
 wmSNn9tnQq160Nr4yVo+9H88dw6lOPW/WwVoMHUDMXCOc5jMU1nMi5lZz795bEhn0YfFy0sFqGmcd
 x/VTYJCV81fU00NBgrxDdwdJ/O8yqoiNz7FgX0Eon6nUTNE9VFN+X0w7qsHiCwxebjso=;
Received: from mail-oa1-f46.google.com ([209.85.160.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogjye-00Fdxz-HU for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 09:49:15 +0000
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-131ea99262dso5022923fac.9
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 07 Oct 2022 02:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kKFjny/9mWuO/iG0Kxc5VvaxquxrAamtdUptPDp0d74=;
 b=AngNmDbhqF7oOIzvRt23cm/VbXB5qly7NvGLYKWLcaYacG7ceVkIDVFCaTy+5Hw4N6
 pkEKIsR+JnE7FQ2tKD6aIHN/lA3nSFzPpAfNkCXQpm3OV+MyvvfndWtGOSa6a1am65fY
 KAiPUjqJaqGmEM/cSmeU9guNI+hJxrxZ2hxb2Yoa9ZQTagAmfBHMVyjej00P9Sw1IRZ5
 eH6/tgp28QATHvBUZ3ot8D5Auh1SR72Nw+rvbSuJMu9JUocNqeT75M4qsCBV7xsHLQ0B
 fHRwWAxh/9XMG9rKEwHTMsVvnMRa7uzIyzjaeQVGtjUlrMgntL3F+ORSdR/RQVIM1uGf
 4+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kKFjny/9mWuO/iG0Kxc5VvaxquxrAamtdUptPDp0d74=;
 b=sJZTnUXTPG9QQtzaPIhDZ5Rp8fIg4YD+71rCH57jVtwOTohLI5mNI30qHgNm7lfEYN
 YmoYvHpjRiWM8NBO3AopDDENTfxvtJ8I+1qii8pmnNI9RxEL4rRA1qVs+072Zoolo+HI
 uoBBig1KovgFTOPD8nfEaGYNawVYt4RvkiYUQYS4B6dz8ARciC6K9PnWWfvQcHhw3XyA
 gpUZ5E2PyVndN+8O9UP3mwLn6ix0HWEKRWKpy7hv8lI/zXmaroY1pbMmVyd17iyePgxy
 +u3ptIrtMhEHWiUq4zDur0dUWjH7Svatni8IvcQ8xsUIMnWLqrVE6cHchpNhgeXHndrq
 oQLQ==
X-Gm-Message-State: ACrzQf1O56XkJgLbi4j3PIe/eK3o73iopaX1BS8q3DSK72xGetmNx+dX
 FNWfZQuAkBwlo30KWd9LYBXzVqlIgEHb6g==
X-Google-Smtp-Source: AMsMyM4c5tdR5HoZonQcRDYA/eocBG1QDHyMCRm/da7cesjqViV750YP7uXXDUViKsc3DUfX8XnGhg==
X-Received: by 2002:a17:90a:6503:b0:207:cd0e:bf1f with SMTP id
 i3-20020a17090a650300b00207cd0ebf1fmr4438832pjj.25.1665134793930; 
 Fri, 07 Oct 2022 02:26:33 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.246])
 by smtp.gmail.com with ESMTPSA id
 p7-20020a170902e74700b0016ef87334aesm1069394plf.162.2022.10.07.02.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Oct 2022 02:26:33 -0700 (PDT)
From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
To: minyard@acm.org
Date: Fri,  7 Oct 2022 17:26:16 +0800
Message-Id: <20221007092617.87597-3-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.37.0 (Apple Git-136)
In-Reply-To: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
References: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When fixing the problem mentioned in PATCH1, we also found
 the following problem: If the IPMI is disconnected and in the sending process, 
 the uninstallation driver will be stuck for a long time. The main problem
 is that uninstalling the driver waits for curr_msg to be sent or HOSED. After
 stopping tasklet, the only place to trigger the timeout mechanism is the
 circular poll in shutdown_smi. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ogjye-00Fdxz-HU
X-Mailman-Approved-At: Fri, 07 Oct 2022 19:17:21 +0000
Subject: [Openipmi-developer] [PATCH 2/3] ipmi: fix long wait in unload when
 IPMI disconnect
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
 Zhang Yuchen <zhangyuchen.lcr@bytedance.com>, qi.zheng@linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

When fixing the problem mentioned in PATCH1, we also found
the following problem:

If the IPMI is disconnected and in the sending process, the
uninstallation driver will be stuck for a long time.

The main problem is that uninstalling the driver waits for curr_msg to
be sent or HOSED. After stopping tasklet, the only place to trigger the
timeout mechanism is the circular poll in shutdown_smi.

The poll function delays 10us and calls smi_event_handler(smi_info,10).
Smi_event_handler deducts 10us from kcs->ibf_timeout.

But the poll func is followed by schedule_timeout_uninterruptible(1).
The time consumed here is not counted in kcs->ibf_timeout.

So when 10us is deducted from kcs->ibf_timeout, at least 1 jiffies has
actually passed. The waiting time has increased by more than a
hundredfold.

Now instead of calling poll(). call smi_event_handler() directly and
calculate the elapsed time.

For verification, you can directly use ebpf to check the kcs->
ibf_timeout for each call to kcs_event() when IPMI is disconnected.
Decrement at normal rate before unloading. The decrement rate becomes
very slow after unloading.

  $ bpftrace -e 'kprobe:kcs_event {printf("kcs->ibftimeout : %d\n",
      *(arg0+584));}'

Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 6e357ad76f2e..abddd7e43a9a 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -2153,6 +2153,20 @@ static int __init init_ipmi_si(void)
 }
 module_init(init_ipmi_si);
 
+static void wait_msg_processed(struct smi_info *smi_info)
+{
+	unsigned long jiffies_now;
+	long time_diff;
+
+	while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
+		jiffies_now = jiffies;
+		time_diff = (((long)jiffies_now - (long)smi_info->last_timeout_jiffies)
+		     * SI_USEC_PER_JIFFY);
+		smi_event_handler(smi_info, time_diff);
+		schedule_timeout_uninterruptible(1);
+	}
+}
+
 static void shutdown_smi(void *send_info)
 {
 	struct smi_info *smi_info = send_info;
@@ -2187,16 +2201,13 @@ static void shutdown_smi(void *send_info)
 	 * in the BMC.  Note that timers and CPU interrupts are off,
 	 * so no need for locks.
 	 */
-	while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
-		poll(smi_info);
-		schedule_timeout_uninterruptible(1);
-	}
+	wait_msg_processed(smi_info);
+
 	if (smi_info->handlers)
 		disable_si_irq(smi_info);
-	while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
-		poll(smi_info);
-		schedule_timeout_uninterruptible(1);
-	}
+
+	wait_msg_processed(smi_info);
+
 	if (smi_info->handlers)
 		smi_info->handlers->cleanup(smi_info->si_sm);
 
-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
