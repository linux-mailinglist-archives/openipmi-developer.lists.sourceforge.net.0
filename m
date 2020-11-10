Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0063E2AE04A
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 Nov 2020 20:55:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kcZjG-00016m-8t; Tue, 10 Nov 2020 19:54:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kcZjD-00016Y-Gz
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Nov 2020 19:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tTh8wJz4qmx3CYWsrkecuCGXFUxr3+6Ltanw9weKYx4=; b=k1CcI5QvDrXphunrzhl7GAoBEk
 mjdpMmElhQWXWrUDAJBiGfJaARM5iyCjQP6ifqS8PBV8e0sgBi9SvvyI2Vl8RdL07WUr3C4fNce7i
 na7lnV8tiUHLW/T4e139cTCeQ5Rs/+rJmisOzx3YVXUz2gg2bPnFmu93tRlRZTObc6bg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tTh8wJz4qmx3CYWsrkecuCGXFUxr3+6Ltanw9weKYx4=; b=NWSOXD3iqYY1wjv82cCmwCy9GT
 VEy3EJkJZhYxvxnVdMFLKCKSkHLrj4HIqG/wEz6xHkJuw6IhjHvOPt/L9kgpWKP8bsabi5E+24o7w
 nLyECQhdEPvT5PJ6BUUiiBx/zK9YiuZj07b2sxj1K0z9FmOSPzMtk+fbTyTAhe84AWgg=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kcZj3-00FuTb-Qm
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Nov 2020 19:54:55 +0000
Received: by mail-io1-f67.google.com with SMTP id r12so15598207iot.4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 10 Nov 2020 11:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tTh8wJz4qmx3CYWsrkecuCGXFUxr3+6Ltanw9weKYx4=;
 b=Uf1RujPLXXPVFLp5wjwLg1WsL++/OzJMdj3PLvk8+XchtewL/soIC/HUA+f8hedI/7
 45+te7QQ58VHov/x+NknT9Bbwb2CWiJqvMZ4olXEFH5FqPpvv0OXGPgwA/OspTJdRlcu
 ipfoLJiypyFlMt815A7OsVrc12fUOe2vp1Jog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tTh8wJz4qmx3CYWsrkecuCGXFUxr3+6Ltanw9weKYx4=;
 b=FQt2uIZE7qBJFS+XFBOVl6ag6rdNJJgDZH/UmtZdQxShA6QUCe6LggwHnOd8ZeA5Lv
 pVM+snP32jtlGJ3LhtVdqwnx7BX+/tlzBCEiWrHIUx/3opa+kcpXUqqfDq8BmdVz7wyh
 SYtsl/PzZpOzFqUiJF/roC9Sqy/TyQy5iNGUITJy6fTcal7/CSgEPOOIpErqDwtQwOex
 d/oguGR2ZiWlYphXpLt4Awb/MNLk1/IBd99NiyfQXQfEQ0KH0y9uC5ct3MUZfzuLaRf2
 8tdii1xU0nT1NGD8+PPp8IHsO9J1odQHy/W9Meem0/bCxOgUEFAytl3yrPTq/tuwEHix
 T75w==
X-Gm-Message-State: AOAM530Ay3MPvs7h6tSaFM3PhOSpdzjAgylqxALmkUHb3ql9KvAq4COh
 u156xfEaMa/oMzxLftfzP6HOv28qcCeYBQ==
X-Google-Smtp-Source: ABdhPJwuhFy0zz6nJFugRrggDyBt4Yjp6uHFMgJd5Ho5vS6eDVq0OrbTu+MvHqiM1PWDFbsk9dHxQQ==
X-Received: by 2002:a05:6638:618:: with SMTP id
 g24mr17102192jar.53.1605038080314; 
 Tue, 10 Nov 2020 11:54:40 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id o14sm123971ilg.71.2020.11.10.11.54.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Nov 2020 11:54:39 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: minyard@acm.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 keescook@chromium.org, peterz@infradead.org
Date: Tue, 10 Nov 2020 12:53:32 -0700
Message-Id: <e383f5e0b72ecd524e65b5d4931f85db2b374ea0.1605027593.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1605027593.git.skhan@linuxfoundation.org>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kcZj3-00FuTb-Qm
Subject: [Openipmi-developer] [PATCH 06/13] drivers/char/ipmi: convert stats
 to use seqnum_ops
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

seqnum_ops api is introduced to be used when a variable is used as
a sequence/stat counter and doesn't guard object lifetimes. This
clearly differentiates atomic_t usages that guard object lifetimes.

seqnum32 variables wrap around to INT_MIN when it overflows and
should not be used to guard resource lifetimes, device usage and
open counts that control state changes, and pm states.

atomic_t variables used for stats are atomic counters. Overflow will
wrap around and reset the stats and no change with the conversion.

Convert them to use seqnum_ops.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 9 +++++----
 drivers/char/ipmi/ipmi_si_intf.c    | 9 +++++----
 drivers/char/ipmi/ipmi_ssif.c       | 9 +++++----
 3 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 8774a3b8ff95..a8f03b4dade9 100644
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
+	seqnum32_inc(&(intf)->stats[IPMI_STAT_ ## stat])
 #define ipmi_get_stat(intf, stat) \
-	((unsigned int) atomic_read(&(intf)->stats[IPMI_STAT_ ## stat]))
+	((unsigned int) seqnum32_read(&(intf)->stats[IPMI_STAT_ ## stat]))
 
 static const char * const addr_src_to_str[] = {
 	"invalid", "hotmod", "hardcoded", "SPMI", "ACPI", "SMBIOS", "PCI",
@@ -3468,7 +3469,7 @@ int ipmi_add_smi(struct module         *owner,
 	INIT_LIST_HEAD(&intf->cmd_rcvrs);
 	init_waitqueue_head(&intf->waitq);
 	for (i = 0; i < IPMI_NUM_STATS; i++)
-		atomic_set(&intf->stats[i], 0);
+		seqnum32_set(&intf->stats[i], 0);
 
 	mutex_lock(&ipmi_interfaces_mutex);
 	/* Look for a hole in the numbers. */
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 5eac94cf4ff8..e1354076a58a 100644
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
+	seqnum32_inc(&(smi)->stats[SI_STAT_ ## stat])
 #define smi_get_stat(smi, stat) \
-	((unsigned int) atomic_read(&(smi)->stats[SI_STAT_ ## stat]))
+	((unsigned int) seqnum32_read(&(smi)->stats[SI_STAT_ ## stat]))
 
 #define IPMI_MAX_INTFS 4
 static int force_kipmid[IPMI_MAX_INTFS];
@@ -2030,7 +2031,7 @@ static int try_smi_init(struct smi_info *new_smi)
 	atomic_set(&new_smi->req_events, 0);
 	new_smi->run_to_completion = false;
 	for (i = 0; i < SI_NUM_STATS; i++)
-		atomic_set(&new_smi->stats[i], 0);
+		seqnum32_set(&new_smi->stats[i], 0);
 
 	new_smi->interrupt_disabled = true;
 	atomic_set(&new_smi->need_watch, 0);
diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 0416b9c9d410..0e61e072b213 100644
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
+	seqnum32_inc(&(ssif)->stats[SSIF_STAT_ ## stat])
 #define ssif_get_stat(ssif, stat) \
-	((unsigned int) atomic_read(&(ssif)->stats[SSIF_STAT_ ## stat]))
+	((unsigned int) seqnum32_read(&(ssif)->stats[SSIF_STAT_ ## stat]))
 
 static bool initialized;
 static bool platform_registered;
@@ -1864,7 +1865,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	timer_setup(&ssif_info->watch_timer, watch_timeout, 0);
 
 	for (i = 0; i < SSIF_NUM_STATS; i++)
-		atomic_set(&ssif_info->stats[i], 0);
+		seqnum32_set(&ssif_info->stats[i], 0);
 
 	if (ssif_info->supports_pec)
 		ssif_info->client->flags |= I2C_CLIENT_PEC;
-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
