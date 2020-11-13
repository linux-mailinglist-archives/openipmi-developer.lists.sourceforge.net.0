Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6228A2B247D
	for <lists+openipmi-developer@lfdr.de>; Fri, 13 Nov 2020 20:28:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kdejy-0000z4-CU; Fri, 13 Nov 2020 19:28:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kdd9v-0003YP-PF
 for openipmi-developer@lists.sourceforge.net; Fri, 13 Nov 2020 17:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ps/6H7hrK1ATADSAJ/P7uDiDCoe2QlP6mffaF3J5A5c=; b=dcTG/QLlhRWwvgg21ZMy970wqb
 W4GE2WlWbccuSp3QlCU9FdNMdxGVJPO9iXIb4kJmMW3tUJYv55YSJjLAKRe1KdnZpv1yi6Oo/QZJ3
 L1nnK6/UWltvV+K4qLAhDwGEbZMejlaWIhoh0hT/ocmj/8jXb+9PpfVuX2TqFlPrYuGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ps/6H7hrK1ATADSAJ/P7uDiDCoe2QlP6mffaF3J5A5c=; b=MrLEOiw4j0j0ps9OoZktLULKls
 QHPmrI2VQlnT+vFThQiXAkjPemnkdqI6ubLaW6XpJrRsEq3AktxknHJA6JXVz5oDUIJckIReHPYeV
 vumXTtKrMOHHneabpj4+T3BEZwTYj7wiYj7n5AWzMM9qhfmf2nCIm5p7g/tSPGuIfn+0=;
Received: from mail-il1-f180.google.com ([209.85.166.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kdd9p-002GF4-AW
 for openipmi-developer@lists.sourceforge.net; Fri, 13 Nov 2020 17:46:51 +0000
Received: by mail-il1-f180.google.com with SMTP id p10so9223476ile.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 13 Nov 2020 09:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ps/6H7hrK1ATADSAJ/P7uDiDCoe2QlP6mffaF3J5A5c=;
 b=a5dvCRcRRODlvMdlID+NlFVInONNQLGPdNimDwKArKb3vTyMagpLWi7+VrtAPN1dIJ
 7cxgpDFkMwgusrzXnSqokNwl8F4l/eQ7HYWMxpUKbVwqw0mGFWjRkZQpaar480/JHExv
 ZTFYPYKN9PWpNTzRf6Nxeb+fw6FX80B9mKtus=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ps/6H7hrK1ATADSAJ/P7uDiDCoe2QlP6mffaF3J5A5c=;
 b=sfpApquOiE9dJgCXk464u7oFs9g6a20jYGuDmxlDyWJj2SLka6P6wup2GimMxDndLn
 e852L52DZw6dU49pY9Rgik07ER8wSzirjHdkfNgvYH8HRFoQbwWIiNOaQST+Kjk6goYW
 TaLNQvNPOf5oMleW4tnY3TMdP1+mHzfDGNiVV4zoqA9P/s7dCCRBTw0eFDncxgxy7VQ6
 jOOSyLfInDvf/ZboV9duXzxqDfTJGr2Vmaor7KAjw1UmIGOTby292RVsLtnUcZ3J19k4
 qw2WPve1eA22lA6XQwwQdjvRdVeKnawFdNbZY3jVcQg7sk/97X1BZ7WDgrMDGb8obXlf
 oicw==
X-Gm-Message-State: AOAM5338z/U8HWwcG4msm9rKMpABs2mYSawjblyeWP2xO3jpjhJc+RDV
 7Yue4ylYz4LnxRkSh6VzNGNIiQmbjWi9AQ==
X-Google-Smtp-Source: ABdhPJy34jNE7u5FOVq2FNyrhEkY4l6HDPO6T6pMZc40jCWj39E58N9YgjT7bqu+ZrtLZuFjMEOMZg==
X-Received: by 2002:a92:9641:: with SMTP id g62mr785072ilh.166.1605289599323; 
 Fri, 13 Nov 2020 09:46:39 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id y14sm4772585ilb.66.2020.11.13.09.46.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 09:46:38 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: minyard@acm.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 keescook@chromium.org, peterz@infradead.org
Date: Fri, 13 Nov 2020 10:46:08 -0700
Message-Id: <dc6bc91f50d3fe5c06b1157810e98b780bd0c737.1605287778.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1605287778.git.skhan@linuxfoundation.org>
References: <cover.1605287778.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.180 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kdd9p-002GF4-AW
Subject: [Openipmi-developer] [PATCH v2 06/13] drivers/char/ipmi: convert
 stats to use seqnum_ops
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
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath.

Convert stats to use seqnum_ops.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 9 +++++----
 drivers/char/ipmi/ipmi_si_intf.c    | 9 +++++----
 drivers/char/ipmi/ipmi_ssif.c       | 9 +++++----
 3 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 8774a3b8ff95..a21c8e6f391b 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -35,6 +35,7 @@
 #include <linux/nospec.h>
 #include <linux/vmalloc.h>
 #include <linux/delay.h>
+#include <linux/seqnum_ops.h>
 
 #define IPMI_DRIVER_VERSION "39.2"
 
@@ -587,7 +588,7 @@ struct ipmi_smi {
 	struct ipmi_my_addrinfo addrinfo[IPMI_MAX_CHANNELS];
 	bool channels_ready;
 
-	atomic_t stats[IPMI_NUM_STATS];
+	struct seqnum32 stats[IPMI_NUM_STATS];
 
 	/*
 	 * run_to_completion duplicate of smb_info, smi_info
@@ -633,9 +634,9 @@ static LIST_HEAD(smi_watchers);
 static DEFINE_MUTEX(smi_watchers_mutex);
 
 #define ipmi_inc_stat(intf, stat) \
-	atomic_inc(&(intf)->stats[IPMI_STAT_ ## stat])
+	seqnum32_inc_return(&(intf)->stats[IPMI_STAT_ ## stat])
 #define ipmi_get_stat(intf, stat) \
-	((unsigned int) atomic_read(&(intf)->stats[IPMI_STAT_ ## stat]))
+	(seqnum32_fetch(&(intf)->stats[IPMI_STAT_ ## stat]))
 
 static const char * const addr_src_to_str[] = {
 	"invalid", "hotmod", "hardcoded", "SPMI", "ACPI", "SMBIOS", "PCI",
@@ -3468,7 +3469,7 @@ int ipmi_add_smi(struct module         *owner,
 	INIT_LIST_HEAD(&intf->cmd_rcvrs);
 	init_waitqueue_head(&intf->waitq);
 	for (i = 0; i < IPMI_NUM_STATS; i++)
-		atomic_set(&intf->stats[i], 0);
+		seqnum32_init(&intf->stats[i]);
 
 	mutex_lock(&ipmi_interfaces_mutex);
 	/* Look for a hole in the numbers. */
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 5eac94cf4ff8..584742b51c22 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -43,6 +43,7 @@
 #include "ipmi_si_sm.h"
 #include <linux/string.h>
 #include <linux/ctype.h>
+#include <linux/seqnum_ops.h>
 
 /* Measure times between events in the driver. */
 #undef DEBUG_TIMING
@@ -237,7 +238,7 @@ struct smi_info {
 	bool dev_group_added;
 
 	/* Counters and things for the proc filesystem. */
-	atomic_t stats[SI_NUM_STATS];
+	struct seqnum32 stats[SI_NUM_STATS];
 
 	struct task_struct *thread;
 
@@ -245,9 +246,9 @@ struct smi_info {
 };
 
 #define smi_inc_stat(smi, stat) \
-	atomic_inc(&(smi)->stats[SI_STAT_ ## stat])
+	seqnum32_inc_return(&(smi)->stats[SI_STAT_ ## stat])
 #define smi_get_stat(smi, stat) \
-	((unsigned int) atomic_read(&(smi)->stats[SI_STAT_ ## stat]))
+	(seqnum32_fetch(&(smi)->stats[SI_STAT_ ## stat]))
 
 #define IPMI_MAX_INTFS 4
 static int force_kipmid[IPMI_MAX_INTFS];
@@ -2030,7 +2031,7 @@ static int try_smi_init(struct smi_info *new_smi)
 	atomic_set(&new_smi->req_events, 0);
 	new_smi->run_to_completion = false;
 	for (i = 0; i < SI_NUM_STATS; i++)
-		atomic_set(&new_smi->stats[i], 0);
+		seqnum32_init(&new_smi->stats[i]);
 
 	new_smi->interrupt_disabled = true;
 	atomic_set(&new_smi->need_watch, 0);
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 0416b9c9d410..d793286a635f 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -47,6 +47,7 @@
 #include <linux/acpi.h>
 #include <linux/ctype.h>
 #include <linux/time64.h>
+#include <linux/seqnum_ops.h>
 #include "ipmi_dmi.h"
 
 #define DEVICE_NAME "ipmi_ssif"
@@ -286,13 +287,13 @@ struct ssif_info {
 	unsigned int  multi_len;
 	unsigned int  multi_pos;
 
-	atomic_t stats[SSIF_NUM_STATS];
+	struct seqnum32 stats[SSIF_NUM_STATS];
 };
 
 #define ssif_inc_stat(ssif, stat) \
-	atomic_inc(&(ssif)->stats[SSIF_STAT_ ## stat])
+	seqnum32_inc_return(&(ssif)->stats[SSIF_STAT_ ## stat])
 #define ssif_get_stat(ssif, stat) \
-	((unsigned int) atomic_read(&(ssif)->stats[SSIF_STAT_ ## stat]))
+	(seqnum32_fetch(&(ssif)->stats[SSIF_STAT_ ## stat]))
 
 static bool initialized;
 static bool platform_registered;
@@ -1864,7 +1865,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	timer_setup(&ssif_info->watch_timer, watch_timeout, 0);
 
 	for (i = 0; i < SSIF_NUM_STATS; i++)
-		atomic_set(&ssif_info->stats[i], 0);
+		seqnum32_init(&ssif_info->stats[i]);
 
 	if (ssif_info->supports_pec)
 		ssif_info->client->flags |= I2C_CLIENT_PEC;
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
