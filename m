Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 610EEA9B491
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znF-0003px-In;
	Thu, 24 Apr 2025 16:51:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znD-0003po-Vx
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=grEWQ0hJBXjtKLv/1JIW7cg4Vz29ZCwIkUkVu1A6LjU=; b=M+Aiy9s6UZNNILT7K2BMMymVJw
 tHQr7VyLs0UXqsYvzYfESefc+aHzjXi2JWtvBy7HUHCYgjNH4Ko6rAtPEplLOZGyh32rxmJDEfU+e
 YEmVXl6etNOvFj8qK5+G62JoLGf+K87B6GDV0FH2ODN5u8+31eR/ODthYpqsl4kxe/Hk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=grEWQ0hJBXjtKLv/1JIW7cg4Vz29ZCwIkUkVu1A6LjU=; b=maY42Zx/VQNr7bxHrXqMq+wGcK
 WzjaauDNb8zirFxwH9Y0kV5dBu0JY8vCRs0KjiEsqHwKRyrCWs6GZy4H489Fyoal5qbt95sGnpNHf
 tG8ld2k9YuqJthfmZ6IXcK257hJ1puYiLWseONpTZ/YlkPRWOYsA5tG2AXjShirbpskA=;
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmy-0002iB-T7 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:20 +0000
Received: by mail-oi1-f178.google.com with SMTP id
 5614622812f47-3f8df49e75fso340514b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513454; x=1746118254;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=grEWQ0hJBXjtKLv/1JIW7cg4Vz29ZCwIkUkVu1A6LjU=;
 b=MBlrHiSwmoLMVY8WquyiYtPLS9Kmc0SNox56N+npmJub1eiFaXsJUYxG+rFmY56YQW
 t+fVvCdTagNzBcTC/j4QpOrizZxDoGoCgTL62wtuy7tiAmHSDwY/Q7oBXvDJTjKGsLOT
 uBgtATrl51S9vNce/DHOEzAAQHAF0IQm66/UeqbaZzbTZ592lWOxH1HeBlPm/rHVOUPk
 EHSIyynIU/27m1cfr4UTwnSnBWg9MhtSUsYVtjV+pzhzOIBHm/azebdhlMYX18RLbGDz
 KGh0vTUQe+VQBtdI+EtSZ7GfUezOtLNceW88dFU+kAmM1ZZk/3QkTE4PapQRD/8586pr
 ad4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513454; x=1746118254;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=grEWQ0hJBXjtKLv/1JIW7cg4Vz29ZCwIkUkVu1A6LjU=;
 b=BpRFVeqy5cpl2rSnmFN3gIHXzA139G7HiBIXDajcnejRKfEIG/o/Nl82nkIePLy2Qc
 rnfgqvQLUdQmO4eyXh0H7P/iophInI5DZARDfd/Uj4KBmiXEU7Hfg5X48POUiRoNDX9k
 ZixHtbKNQY87ljWCzv2mDbhiqV4PG8Oz0Md0FBObGe1bVvAPf7nK4vsDslXHmvd6fP32
 y4nOSbyFxbIbjOXTaIOjPVr7/2i13Dyem47YPEIjDuD6x15okOw50yCLBMV6X1mdhF5Y
 5TOY5UuWK0kuUJ6t4iYsBZSpe7jYYnIiXVpzOiicdAS/mLxBQUnVClqHtlJQrD7NsIy2
 Jlsw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUyaTfEZV8VRS0jlNyhFBB9NnltqOgW6xxHPXQkap3ufg1/g2JfP8BdUvFJtrh8vGiXdK2r9MHUCbrO20Weq+EtCvE=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyRYpLfs8rThOIZ25GbFD9q11378gz7aIoGMBmZSm3jY05e0juQ
 ZBDKv6e3r2MAnh4CqcXv3bpguCASm/aclzz5qiETG+i0cuHX1PQP2Kpfp+BhlNg=
X-Gm-Gg: ASbGnctbeFeCcmhCCTuWOqJKLFrDiD2I02REkCsI8NKz5ndlQAKdn3Map8QtXAxbXHM
 JYYaGdMuQd9M1gM9ErwfKTLduOu4w68DhK3G/ZsaZ7Hh3agb58DnsVPhZGG2+25toE+fGF3GXMP
 RqlZHlXmlzywxt7OdyOLCgZ8qWy9yQOX8NFu0jzizPkheqpi3HN9fPeT/S4iLRYx53kzuDGwdRM
 1vHWn142GR+PBbtLxR+demBieCDnGAIMYvEqqQKyjelbH2PCjKKk5rFjiPL55dY46uNl/qUPHD/
 DeGzDEmdpNfHsSClIphgAszi9gJS9YHF9Go=
X-Google-Smtp-Source: AGHT+IEtMCTOpalPZ8d+/hnZwM3bREEt7UQ4vwzckHylq5ddbr/kBcL7ygtUXXdcd71qJvRQglwpBA==
X-Received: by 2002:a05:6808:188:b0:3f6:ab66:f4a1 with SMTP id
 5614622812f47-401f1244a60mr57537b6e.39.1745513454141; 
 Thu, 24 Apr 2025 09:50:54 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8b08c5sm314413b6e.7.2025.04.24.09.50.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:53 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:52 -0500
Message-ID: <20250424165020.627193-16-corey@minyard.net>
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
 Content preview: It's no longer used. Signed-off-by: Corey Minyard
 <cminyard@mvista.com>
 --- drivers/char/ipmi/ipmi_msghandler.c | 1 - 1 file changed, 1 deletion(-)
 diff --git a/drivers/char/ipmi/ipmi_msghandler.c
 b/drivers/char/ipmi/ipmi_msghandler.c
 index 74a84eeeed9c..927556ca469d 100644 ---
 a/drivers/char/ipmi/ipmi_msghandler.c
 +++ b/drivers/char/ipmi/ipmi_ms [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.178 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.178 listed in sa-trusted.bondedsender.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.178 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.178 listed in wl.mailspike.net]
X-Headers-End: 1u7zmy-0002iB-T7
Subject: [Openipmi-developer] [PATCH 15/23] ipmi:msghandler: Remove proc_fs.h
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

It's no longer used.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 74a84eeeed9c..927556ca469d 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -27,7 +27,6 @@
 #include <linux/ipmi_smi.h>
 #include <linux/notifier.h>
 #include <linux/init.h>
-#include <linux/proc_fs.h>
 #include <linux/rcupdate.h>
 #include <linux/interrupt.h>
 #include <linux/moduleparam.h>
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
