Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5165F8A5C
	for <lists+openipmi-developer@lfdr.de>; Sun,  9 Oct 2022 11:25:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ohSZF-00035V-JM;
	Sun, 09 Oct 2022 09:25:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ohSYy-00035E-Op
 for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 09:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kKFjny/9mWuO/iG0Kxc5VvaxquxrAamtdUptPDp0d74=; b=I+XyiFlp3yBgC/wxFbo1ij5AUT
 YaPzFbPQkwYVWudMMVsmOyN99wu6dQ3P+IYfPARYGBAaemEMQSkyPciea5QS9cQovqBRCQcdnsqwJ
 FhqM7jd6k8gvKayHBGg+vKiwpfwGoO2y8FxtYJh2Hy1+VmtIZ71ZFA8aPS8StGbrwXcA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kKFjny/9mWuO/iG0Kxc5VvaxquxrAamtdUptPDp0d74=; b=GPGV4aVkmPf2l+gTqApK2alyiW
 Yaf2LaD+5Hz4d/9eojbnPMK+CszEmwFY5YJSdVlk4wc38dVNyug/m7UfjnbPw5j0KgOgNY2LzAYgW
 N1jyx45bPmifylKB4YCXsISQ+0CkpOpyCTUl+wizz4szpoIqH6uUWAjSCmZt8zTxNIiw=;
Received: from mail-il1-f180.google.com ([209.85.166.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohSYy-0004qI-0V for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 09:25:36 +0000
Received: by mail-il1-f180.google.com with SMTP id y17so4436189ilq.8
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 09 Oct 2022 02:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kKFjny/9mWuO/iG0Kxc5VvaxquxrAamtdUptPDp0d74=;
 b=ojQqKCdE1xWnmbi41ppc32d+eOC7AWp0Z8fAmyiBCoOubBhyz21Z9rC7wh21wSzkWr
 Blh98iWF76sGUhTbkD20/++kK597nR3eZKk9Q8+XUaTP7xZWD+znQoJva6NviowPO09E
 rEpoKXUyqJ3MHO0Zmx9VAIwUuW0LiY/5kEQeOzzmcCSEUys8Csa4jrUuW+b0vbCDKoTd
 B7A6LKNJo6lZbsYaWcq92O+uPUk7yXDvOYXzCeNlYNSkM0ozVwAc+oBtCrGpyQcsKa3S
 yIIVa5FTtlLaIPL6tZhecGJu8mYNLn+v+46/m1iBsAely7nOeCqkxF6hZPFePoY1G1wm
 bw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kKFjny/9mWuO/iG0Kxc5VvaxquxrAamtdUptPDp0d74=;
 b=xABJN8AGwueKYcKLlli6aPs3jSg4GDPromm9hiiv/WOK7uKSZH2sbV7U6rJZbVv7qa
 a9/mrPCQCirUpt6r317lAyXOeC9MmERSqIogJY+SXy17W3tMeNfZnxVF0V5aseP92djk
 E80tc+wIRTw1SA8BqXZljlnA0zvnhIFZt4dnDUHG3UwLfW5vPhGZiWLhHH+KfUhVn9J2
 Rj4on+FBbCFXJvcIBfjjKkUND9GXOiaRbshqU3tbxh0Via2uyicoRQ8BxodJo/hn8CM8
 SWN3h4XWjx5HvWhE0BQqbREMcOMF3a83UV33j/tBOp59FDBfBOwB9TdbYNJmqKsr5OPE
 E2hg==
X-Gm-Message-State: ACrzQf0MeVTbmnzAgwmpWX/FIS8+7h9nl9dv6qFM935/6KP3koi8/qhJ
 LJCU3I1TvrVPLX1zKIoQkIireT+mIOkd+uc+
X-Google-Smtp-Source: AMsMyM4tSxYbXYtzOq11CTZtT49IL2PjNyOj9GZtNR3Z8wRpNJP4JMMrmFnExO9hOFCydmTujtOhIA==
X-Received: by 2002:a63:ff1b:0:b0:43c:e4ee:e5e0 with SMTP id
 k27-20020a63ff1b000000b0043ce4eee5e0mr11382651pgi.540.1665307107095; 
 Sun, 09 Oct 2022 02:18:27 -0700 (PDT)
Received: from localhost.localdomain ([139.177.225.234])
 by smtp.gmail.com with ESMTPSA id
 f38-20020a635566000000b004405c6eb962sm4328711pgm.4.2022.10.09.02.18.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Oct 2022 02:18:26 -0700 (PDT)
From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
To: minyard@acm.org
Date: Sun,  9 Oct 2022 17:18:10 +0800
Message-Id: <20221009091811.40240-3-zhangyuchen.lcr@bytedance.com>
X-Mailer: git-send-email 2.37.0 (Apple Git-136)
In-Reply-To: <20221009091811.40240-1-zhangyuchen.lcr@bytedance.com>
References: <20221009091811.40240-1-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.180 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ohSYy-0004qI-0V
Subject: [Openipmi-developer] [PATCH v2 2/3] ipmi: fix long wait in unload
 when IPMI disconnect
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
