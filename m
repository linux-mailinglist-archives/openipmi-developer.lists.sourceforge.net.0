Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BB028675D
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC7-0008Lf-SW; Wed, 07 Oct 2020 18:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kPtqk-0001kD-B1
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Oct 2020 20:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RHZTRJT51Q1gCe/RuqWMReg34aOwoIWVUt687pWI7oU=; b=DQkOImKUqOZQ0h1PrgIt9+idHN
 nfTUaQvrLjcidARZAcVjapLfRKMjd7FPcmkIDMd5bdzb3AaDZibsODf29v9RCbzIZCKDrZ98MvkvG
 zZryuHUmKnYIAs8JIsKfVIpItiKJgXRQCg0rQHUHi58yrxyNtSzNdO07xAKqz76gLqpI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RHZTRJT51Q1gCe/RuqWMReg34aOwoIWVUt687pWI7oU=; b=grLKO48vteCvTlBtO6OG5pUf6W
 dBR0Bb7U4xmtXO7X4WOW7FGPMvwvJfAV7l0yMEi3jWxFRnYaaH4VBBxP4HsZ0WY+OlEyVfGCNyLvz
 ampxxOqUblFiViQiHXmrRYEhCDYhRa8+S0AfzCREMpKpRiwHCmwfj+dzWZR29DnhOVS8=;
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPtqf-005DsQ-3q
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Oct 2020 20:46:18 +0000
Received: by mail-io1-f67.google.com with SMTP id k25so14544700ioh.7
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Oct 2020 13:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RHZTRJT51Q1gCe/RuqWMReg34aOwoIWVUt687pWI7oU=;
 b=Bq75TiatYOqp+eUjMSpBFAops8oYp6Wx1FPXdjbZ1kSTfPCofy70mVRb+qZW9JT0OK
 Sv/V6Jx8ibgkAkn1H9zkKY6Jfnik6IxsqPhc9++vRcHRdO0T515jrKK+tWs23+xyV9kl
 nqNtFbkyKXu0YXGLJWXsE/pIv7Q4T1opgjUaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RHZTRJT51Q1gCe/RuqWMReg34aOwoIWVUt687pWI7oU=;
 b=Yqz+7dDpSNV1A8DtF6xrDZfUQeKmVBrIStkgyPKmtdvNgDX8JFXLuGZlhpTAE6lPyP
 NhD0LzMv9/wXN0Or06pgaGRWwVEvrnzFapxLv6584WvD/c2u/TTajL6JTo/MjUEmNxqL
 yY7uXv1rQPD5uxOwhuU3fi3JVZXBmOVB4SWLqINXxhFRboQ6vqFAox4QayPg3pvBgIge
 iRPOdFsW89euH/96vUA7r3sIGG55coAZmIVkHPBAtHoIV5ff7AG8sHnirkw5DJ8eT5HC
 XU63XQ9ZtcHWaZHkjS6cOvcgAA2Kjt7JuAaaE07cW+693M+wCuK8rYrMtnmfut44c9k2
 2NjA==
X-Gm-Message-State: AOAM531sdyVhSkoUd6ZWzS3IIo5vniGa+C8RBo0Cql48OwZ1PlliNJ7g
 AZ9h91KQKktneLcCAXwVjY0MdA==
X-Google-Smtp-Source: ABdhPJzA8T0sZcnPN0HFhL0Ym1eN9j+jbzpy/r8A6eJhVkklsuejvF5Y1hur2HAvO2Kw9wr9e9cJ8A==
X-Received: by 2002:a02:7350:: with SMTP id a16mr12862jae.53.1602017160442;
 Tue, 06 Oct 2020 13:46:00 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id s69sm1665627ili.54.2020.10.06.13.45.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Oct 2020 13:45:59 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: minyard@acm.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 keescook@chromium.org
Date: Tue,  6 Oct 2020 14:44:40 -0600
Message-Id: <46fcf1d28532868abd1c2dedaab221be56736db9.1602011710.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1602011710.git.skhan@linuxfoundation.org>
References: <cover.1602011710.git.skhan@linuxfoundation.org>
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kPtqf-005DsQ-3q
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:25 +0000
Subject: [Openipmi-developer] [PATCH v2 09/11] drivers/char/ipmi: convert
 stats to use counter_atomic32
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

counter_atomic* is introduced to be used when a variable is used as
a simple counter and doesn't guard object lifetimes. This clearly
differentiates atomic_t usages that guard object lifetimes.

counter_atomic* variables will wrap around to 0 when it overflows and
should not be used to guard resource lifetimes, device usage and
open counts that control state changes, and pm states.

atomic_t variables used for stats are atomic counters. Overflow will
wrap around and reset the stats and no change with the conversion.

Convert them to use counter_atomic32.

Reviewed-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 9 +++++----
 drivers/char/ipmi/ipmi_si_intf.c    | 9 +++++----
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 737c0b6b24ea..36c0b1be22fb 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -34,6 +34,7 @@
 #include <linux/uuid.h>
 #include <linux/nospec.h>
 #include <linux/vmalloc.h>
+#include <linux/counters.h>
 
 #define IPMI_DRIVER_VERSION "39.2"
 
@@ -584,7 +585,7 @@ struct ipmi_smi {
 	struct ipmi_my_addrinfo addrinfo[IPMI_MAX_CHANNELS];
 	bool channels_ready;
 
-	atomic_t stats[IPMI_NUM_STATS];
+	struct counter_atomic32 stats[IPMI_NUM_STATS];
 
 	/*
 	 * run_to_completion duplicate of smb_info, smi_info
@@ -630,9 +631,9 @@ static LIST_HEAD(smi_watchers);
 static DEFINE_MUTEX(smi_watchers_mutex);
 
 #define ipmi_inc_stat(intf, stat) \
-	atomic_inc(&(intf)->stats[IPMI_STAT_ ## stat])
+	counter_atomic32_inc(&(intf)->stats[IPMI_STAT_ ## stat])
 #define ipmi_get_stat(intf, stat) \
-	((unsigned int) atomic_read(&(intf)->stats[IPMI_STAT_ ## stat]))
+	((unsigned int) counter_atomic32_read(&(intf)->stats[IPMI_STAT_ ## stat]))
 
 static const char * const addr_src_to_str[] = {
 	"invalid", "hotmod", "hardcoded", "SPMI", "ACPI", "SMBIOS", "PCI",
@@ -3448,7 +3449,7 @@ int ipmi_add_smi(struct module         *owner,
 	INIT_LIST_HEAD(&intf->cmd_rcvrs);
 	init_waitqueue_head(&intf->waitq);
 	for (i = 0; i < IPMI_NUM_STATS; i++)
-		atomic_set(&intf->stats[i], 0);
+		counter_atomic32_set(&intf->stats[i], 0);
 
 	mutex_lock(&ipmi_interfaces_mutex);
 	/* Look for a hole in the numbers. */
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 77b8d551ae7f..0909a3461f05 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -43,6 +43,7 @@
 #include "ipmi_si_sm.h"
 #include <linux/string.h>
 #include <linux/ctype.h>
+#include <linux/counters.h>
 
 /* Measure times between events in the driver. */
 #undef DEBUG_TIMING
@@ -237,7 +238,7 @@ struct smi_info {
 	bool dev_group_added;
 
 	/* Counters and things for the proc filesystem. */
-	atomic_t stats[SI_NUM_STATS];
+	struct counter_atomic32 stats[SI_NUM_STATS];
 
 	struct task_struct *thread;
 
@@ -245,9 +246,9 @@ struct smi_info {
 };
 
 #define smi_inc_stat(smi, stat) \
-	atomic_inc(&(smi)->stats[SI_STAT_ ## stat])
+	counter_atomic32_inc(&(smi)->stats[SI_STAT_ ## stat])
 #define smi_get_stat(smi, stat) \
-	((unsigned int) atomic_read(&(smi)->stats[SI_STAT_ ## stat]))
+	((unsigned int) counter_atomic32_read(&(smi)->stats[SI_STAT_ ## stat]))
 
 #define IPMI_MAX_INTFS 4
 static int force_kipmid[IPMI_MAX_INTFS];
@@ -2013,7 +2014,7 @@ static int try_smi_init(struct smi_info *new_smi)
 	atomic_set(&new_smi->req_events, 0);
 	new_smi->run_to_completion = false;
 	for (i = 0; i < SI_NUM_STATS; i++)
-		atomic_set(&new_smi->stats[i], 0);
+		counter_atomic32_set(&new_smi->stats[i], 0);
 
 	new_smi->interrupt_disabled = true;
 	atomic_set(&new_smi->need_watch, 0);
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
