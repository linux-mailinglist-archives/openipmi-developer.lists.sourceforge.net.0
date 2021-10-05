Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B00421B35
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Oct 2021 02:40:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mXYVX-000310-6r; Tue, 05 Oct 2021 00:40:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mXYVW-00030u-Bm
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rie+2DAf6VVtFPVz6Ysf5Ngf4vUTHVjtvqwUA9u6BU4=; b=a2rymYh6uZBaE0jpBf88e8u3kb
 /PEM/Whg9U1yHBNauVwRMTeXjDMEMc16J30rNrPLtmLF8fEGvyqPU60IxitNDO3mKba5bsmCo8U7Z
 tpeiW4oL23/TDlKazgn+DkCVZa238dpU373NO4Vaf1Thh5K31dcX7sVzVCAVJwgcWMvY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rie+2DAf6VVtFPVz6Ysf5Ngf4vUTHVjtvqwUA9u6BU4=; b=cGGJNfczjxvAKgC1PZ43KI3H8D
 1PT9H1Ewi2o3yVzMjml4Ura+joaAsB3tMqUQO23osMNv7/X7hEqz3UlWVgdEZ9rJ4fvAamoeed0Hr
 Rv+sDsFQY0cWC4C+2Yrcp8vdXfJu49jQrR+TMTqo4HSKsoxcexWnHRZmq8msBHZbMF9E=;
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mXYVV-005Yb8-ML
 for openipmi-developer@lists.sourceforge.net; Tue, 05 Oct 2021 00:40:34 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 h11-20020a4aa74b000000b002a933d156cbso5947072oom.4
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 04 Oct 2021 17:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rie+2DAf6VVtFPVz6Ysf5Ngf4vUTHVjtvqwUA9u6BU4=;
 b=bz1cDjLmB84TpNtf4LfAYOjorNexPPlF0cucsAEf4ajXmm/ZCbFdnhDQViB69S/kJH
 lo85VYBdj57JDwoLTO3wPmpQ1aUBrq0Qd8Hy1ORAy3Xh3LyoOuWkLWbQfuGzfbfhQUw2
 LCSIX1s+93jZR6z0I+4K+YvyjaSKeKP+y0rBFTSI6IA3QohpYPPRz1GfJ4jNxPGIuJOc
 be45Ep9xAmcNGiFr7ymBKaS/zf7w6guEIpAHStk/hO+fjQiTwmwRqxIxqx+AbAOKzmKk
 +kBlNhiwrG3qKbHkfF0WgvzT7JuObfVrAlSAvrk3SNJ/t+VYVZ3MEXjxk/jAKNvN3k7B
 pYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=Rie+2DAf6VVtFPVz6Ysf5Ngf4vUTHVjtvqwUA9u6BU4=;
 b=f8cudHv7YeOLb8BboJm28CtB+UqI1LHEXZKkdsxKFBSb+SxquF4sWNWm1Fwlwv/L7g
 nSHPXfkYLm4rjHESDT8H3TGg8CxJ7HEI7R6EDw48esIhIWNJGIFqhc4ky8BxYvftqMsh
 XSqYw7Ao9R2538aKB0D/+nCLEQTSlMvymdtvc5T+IY/vh1HGqgHALCQMbYuDCHJPWXzY
 6YSInKvljGs9hp2IPJMet6/R1iiwFPkABt6iyNo/AxhW05d3lzp+Pj3UqqyVw6paDDLj
 6HrwrCJVfqMkHm1m2/kXWkttOzJm+TxO0UTEvREuqeOqkFdZNatPZK0pmS90UkmB84JK
 5+3w==
X-Gm-Message-State: AOAM532jajMY4fMKcjZ5pxeTyMU70Y+VTY33QIYOtgqv7lfPVcEhY3ff
 0Ukw9/2lJAMT4rgfKRQz+w==
X-Google-Smtp-Source: ABdhPJwlUbmNi9sibDjTTqJi71gZQkpQxYfZBHcNdpgwEahNbmt2iwNWUUYDbQSipxOkMCpiIwAnXA==
X-Received: by 2002:a4a:e292:: with SMTP id k18mr11139972oot.80.1633394427977; 
 Mon, 04 Oct 2021 17:40:27 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id e16sm3006902oie.17.2021.10.04.17.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 17:40:26 -0700 (PDT)
Received: from t560.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1ce5:3fb4:8fe9:30d1])
 by serve.minyard.net (Postfix) with ESMTPA id 181271800F1;
 Tue,  5 Oct 2021 00:40:26 +0000 (UTC)
From: minyard@acm.org
To: openipmi-developer@lists.sourceforge.net
Date: Mon,  4 Oct 2021 19:40:15 -0500
Message-Id: <20211005004019.2670691-2-minyard@acm.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005004019.2670691-1-minyard@acm.org>
References: <20211005004019.2670691-1-minyard@acm.org>
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard <cminyard@mvista.com> It will be needed
 by the upcoming ipmb direct addressing. Signed-off-by: Corey Minyard
 <minyard@acm.org>
 Tested-by: Andrew Manley <andrew.manley@sealingtech.com> Reviewed-by: Andrew
 Manley <andrew.manley@sealingtech.com> --- drivers/char/ipmi/ipmi_msghandler
 [...] Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.51 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mXYVV-005Yb8-ML
Subject: [Openipmi-developer] [PATCH 1/5] ipmi: Export ipmb_checksum()
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
 Andrew Manley <andrew.manley@sealingtech.com>, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

It will be needed by the upcoming ipmb direct addressing.

Signed-off-by: Corey Minyard <minyard@acm.org>
Tested-by: Andrew Manley <andrew.manley@sealingtech.com>
Reviewed-by: Andrew Manley <andrew.manley@sealingtech.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 3 ++-
 include/linux/ipmi.h                | 3 +++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 13988f88f1b0..ad1a8fc379b9 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -1710,7 +1710,7 @@ int ipmi_unregister_for_cmd(struct ipmi_user *user,
 }
 EXPORT_SYMBOL(ipmi_unregister_for_cmd);
 
-static unsigned char
+unsigned char
 ipmb_checksum(unsigned char *data, int size)
 {
 	unsigned char csum = 0;
@@ -1720,6 +1720,7 @@ ipmb_checksum(unsigned char *data, int size)
 
 	return -csum;
 }
+EXPORT_SYMBOL(ipmb_checksum);
 
 static inline void format_ipmb_msg(struct ipmi_smi_msg   *smi_msg,
 				   struct kernel_ipmi_msg *msg,
diff --git a/include/linux/ipmi.h b/include/linux/ipmi.h
index 52850a02a3d0..163831a087ef 100644
--- a/include/linux/ipmi.h
+++ b/include/linux/ipmi.h
@@ -335,4 +335,7 @@ extern int ipmi_get_smi_info(int if_num, struct ipmi_smi_info *data);
 
 #define GET_DEVICE_ID_MAX_RETRY		5
 
+/* Helper function for computing the IPMB checksum of some data. */
+unsigned char ipmb_checksum(unsigned char *data, int size);
+
 #endif /* __LINUX_IPMI_H */
-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
