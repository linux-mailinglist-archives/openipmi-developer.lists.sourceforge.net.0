Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6E4288D6C
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Oct 2020 17:56:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQukz-00015l-CW; Fri, 09 Oct 2020 15:56:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kQukx-00015Q-Um
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 15:56:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EQZSqb+q2NIMLD8HKWAS71e0EoHQnHuxUDwKhD+3v64=; b=Wx4RI/QL5b1QZBzGEfB57Puzi6
 90yJDHstOlfUDQIDODEgtKRE4nCbw2zu3F64pSYUxge6BX1VOHq6s6ute9yVbk3M54zu1Gh+LkCjJ
 8JvXw/G1PbFphn2BtqDFConGBXrYqBfO3lSDnojvWyCvu4Czx7gyyDmwfWDKPbvzdRd0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EQZSqb+q2NIMLD8HKWAS71e0EoHQnHuxUDwKhD+3v64=; b=FcryXvATg7tL8zQeIJm5pN9BJB
 +pKsBjiBW/BGjx+FzqPhklPP/YLb6rJC0gNeGfK06A15suWaDpPraToHy5EhZbyffG1vsca2lEe5V
 +mGHi/xclqr2p+gCMCi9LS45Pl5EI0sCYUz6etxDnIexc1BMJj3a7WfmDDeESTPhMUCk=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQuks-004NBB-Fg
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 15:56:31 +0000
Received: by mail-ot1-f68.google.com with SMTP id i12so9440825ota.5
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Oct 2020 08:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EQZSqb+q2NIMLD8HKWAS71e0EoHQnHuxUDwKhD+3v64=;
 b=KYQVrIuVamkCl4wmRZvWUGOCYyQ0o7QP/CzWDiMOBfTmLuQChs0A3x+sR//ZHKaZV5
 caJDNWB6bvqkG05NEScd8WUxHJ1Jc1ftT73rSMAPLlHDGHnGPrD1pTJJY0wyvjqTcv21
 phMFi1lph9tct5FPyx+ElvhnhVpxrmKHGC/ZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EQZSqb+q2NIMLD8HKWAS71e0EoHQnHuxUDwKhD+3v64=;
 b=B7PX0kQz+d91i5Ex5L1JHC4HsUVvGBa423cNMRtycJDgFOp51Nyol/GjT5cyH4aYTz
 eQiZX3aJcrgQt5AT+XJeevOnsHrOI9Jw1rYUL2ycjbFHzX7eqgnaiu4xl6lXSTqN97jz
 mxncdSZYg+jgaKYtL2Tb1cCqS/89Z+D2Nh2pKhv/0Nkl//1HYVfTR/f/55vphuU8Y1b+
 2Yk7uh5+l8hztQW4lb2StNTTE42Dw+F8sUSBMo19AwHnIpr+7m9aGhzSSlsOu94N+Lcj
 /8QtMs9LgZEcE43sS50+4bxknSGXNYY5AKkMWI2UqvTCTSL0CdMyOzCc043gkgNZ3hK1
 xeuA==
X-Gm-Message-State: AOAM5304PNerEC2nMLBreiDgr0pHiYtmRHMQ5ciL3Jdot7MdTp6hcqDD
 N2+Jb8OKNV1BMm2rFBAKhmF9LA==
X-Google-Smtp-Source: ABdhPJwJHib5yWqv1BXp+Zzi/VaS24/4Hs+ciZ9vsYRmbFyqT/hLeXP30QrNxqcYTRTfk4/ylankuQ==
X-Received: by 2002:a9d:3f06:: with SMTP id m6mr8540816otc.173.1602258980809; 
 Fri, 09 Oct 2020 08:56:20 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id e7sm7347246oia.9.2020.10.09.08.56.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:56:20 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: minyard@acm.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 keescook@chromium.org
Date: Fri,  9 Oct 2020 09:56:04 -0600
Message-Id: <cb3ca935447ab3e4269cc63d655b1fa5f6c89588.1602209970.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1602209970.git.skhan@linuxfoundation.org>
References: <cover.1602209970.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kQuks-004NBB-Fg
Subject: [Openipmi-developer] [PATCH v3 09/11] drivers/char/ipmi: convert
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

counter_atomic* variables wrap around to INT_MIN when it overflows and
should not be used to guard resource lifetimes, device usage and open
counts that control state changes, and pm states.

atomic_t variables used for stats are atomic counters. Overflow will
wrap around and reset the stats and no change with the conversion.

Convert them to use counter_atomic32.

Reviewed-by: Corey Minyard <cminyard@mvista.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
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
