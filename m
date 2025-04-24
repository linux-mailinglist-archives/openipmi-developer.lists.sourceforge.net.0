Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B897DA9B496
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znM-0003qn-SR;
	Thu, 24 Apr 2025 16:51:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znM-0003qf-25
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jEgmX4f34QPktqncOkt/LqJb044C3ijlTJNnknUvSOY=; b=A/o1EMeZu3AFN0FgHQj6B3Wj8n
 br1nPHhXUrYId8ylYS+USeFZYZJ/dskFAGnSuYMTCNRWf8h6YbvlUvOuhabLNuvKuNhxN/4jIEX6b
 wtU8Sa8/z7RYZhJ+acZPYQ8r79d8I7zkLsZDSlPS/MfiGDNErUOo7IoOPJZLPbm0KdYE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jEgmX4f34QPktqncOkt/LqJb044C3ijlTJNnknUvSOY=; b=Hm+GNuIIGAyiZhdiGI0MguN6fy
 qXXvOaPnNVnHxG0zPUPBPNJuzyAoLo9AKx7M/HG5DWq51vUNNrDnXD2k0iuOy1rocqkKQJQIVFaH/
 WlHroezs0ySNLpKFeMayIJTokvrxe71LvS+6hqtdTpkeuKHENSqnHWJCBFmigVQHZZcA=;
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zn6-0002jA-UF for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:28 +0000
Received: by mail-oi1-f176.google.com with SMTP id
 5614622812f47-3fbaa18b810so398983b6e.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513467; x=1746118267;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jEgmX4f34QPktqncOkt/LqJb044C3ijlTJNnknUvSOY=;
 b=IENRLMLjgdQHNnYJt8Tf2FCkZTLicGTZcrKUhj9ZtmUcU/ryHTDNZ6XHHUVLBQ5cxI
 gb1Zxs8SbJtQ7UaHcmpnMRb9aHjEIjUKV2WOxYZ8kX80jkr9E/9OnTDFKtOU865uePZn
 093C6mXPWE/JYJXuDB4mNBkCpR07RB4QcUqb5Lkh0XKumPG9u9KKHrDWu7mRoD1XRqql
 Rxwo/YYpQ/r5XztTNza9fNSjmPI1x0HIU9t3psk3OiQdxo7GavggviELfiQJCB4jqwW8
 ZsgGxmesPyGoFkTxRp2DSWTRwKT5C8qaBJYO0Su4YOVmmUHKrmrFUa+smvkBAEwWBVUH
 Bi2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513467; x=1746118267;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jEgmX4f34QPktqncOkt/LqJb044C3ijlTJNnknUvSOY=;
 b=faGK1cOKi/eYEH89YhasaM5IlCePjJW555Dn49cSNV7plTOtWuB+VW6s/3UUfSGZaE
 RTZ7BZhWAz0APG72qCL9axGzv33PhF8sQ0tqxewneZ9m7NqAwq5Fl/nHxKIOhQALoIXm
 ytVaYZVMlWGuViNJrtwA/m7/zQ8OA+hL25hvIiNJKSujvezOa0d/omhSHhIgG6Nuvcxv
 HVmPy3BL4z3jcNcNfwHUoWvHmq3SsPKlEHxzLHAqdAOzGfUjRRcdI6uANTwwk5qDy1Cj
 jgmG40xbO+WZ+u67IG9q3kfyXS/cMLDGrXiR1aNDG0aKBuELeiEXiMMKabVKF+8FVUg7
 Awkg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGyZ4BQY8J9spP1qKcL/1YdbL5XQpw52fgadk2jlSRSpykj5WWIRWuDpASqC78cGgT60n6OmpnxzoT66VJkYv3k5E=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz8nTtrRJKQvtSCe8MKZ5Z/12gHogeSNIZRJPx82sH1X29MRrEY
 03IBGdwSqg5cdsJH1W1FNaYaKtQ5F+cM/PGPAnH1JZ7fJ7IqfFIrpNzzFhuFIlQ=
X-Gm-Gg: ASbGncuRr6PiJf4saIgW0/3snkK3mEofqVmRLWkNhd7qIfPNGn7J9loCn4B7AIHqTn9
 IdgDKy1S6Ha+bhyEfjUiemgwsAd+oKgtvRoFInQcSzv5LLl1b+rHMbwuUYaVYJK2FG3PL7RSCKg
 T3AmmSfg8M90wN3Gr1AMFLOWZUHFqdQg/yjcGlixH6wdB2XYZIELrda5y6GvLqo8Qgea9Y6FZ3B
 t1qqnT5ry0mYJOHKTAsvyUqxKOnR4SKJU+bSMpCkkvy1Qannfl2P5RUx/bKY66B3jmifrBlyH/Z
 9+6zeNvm+2E7HJLsBPWUvQMkHoszkv166HQ=
X-Google-Smtp-Source: AGHT+IFA+1xug8uO+8nNHepTDHInLcjGUEuwr/mAK1O/1ugsuMGJlyeEY1wGHZCMW93FOccptNFEqw==
X-Received: by 2002:a05:6808:164a:b0:3f6:a476:f7d3 with SMTP id
 5614622812f47-401f117f330mr93378b6e.9.1745513467172; 
 Thu, 24 Apr 2025 09:51:07 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-401ec8c9dd3sm308500b6e.11.2025.04.24.09.51.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:51:05 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:58 -0500
Message-ID: <20250424165020.627193-22-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424165020.627193-1-corey@minyard.net>
References: <20250424165020.627193-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Callbacks no longer run at interrupt level or bh, so remove
 those comments. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 Documentation/driver-api/ipmi.rst
 | 9 +++------ 1 file changed, 3 insertions(+), 6 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.176 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.176 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.176 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1u7zn6-0002jA-UF
Subject: [Openipmi-developer] [PATCH 21/23] Documentation:ipmi: Remove
 comments about interrupt level
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

Callbacks no longer run at interrupt level or bh, so remove those
comments.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 Documentation/driver-api/ipmi.rst | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
index dfa021eacd63..3a533cd2ef60 100644
--- a/Documentation/driver-api/ipmi.rst
+++ b/Documentation/driver-api/ipmi.rst
@@ -280,10 +280,8 @@ Creating the User
 To use the message handler, you must first create a user using
 ipmi_create_user.  The interface number specifies which SMI you want
 to connect to, and you must supply callback functions to be called
-when data comes in.  The callback function can run at interrupt level,
-so be careful using the callbacks.  This also allows to you pass in a
-piece of data, the handler_data, that will be passed back to you on
-all calls.
+when data comes in.  This also allows to you pass in a piece of data,
+the handler_data, that will be passed back to you on all calls.
 
 Once you are done, call ipmi_destroy_user() to get rid of the user.
 
@@ -303,8 +301,7 @@ use it for anything you like.
 
 Responses come back in the function pointed to by the ipmi_recv_hndl
 field of the "handler" that you passed in to ipmi_create_user().
-Remember again, these may be running at interrupt level.  Remember to
-look at the receive type, too.
+Remember to look at the receive type, too.
 
 From userland, you fill out an ipmi_req_t structure and use the
 IPMICTL_SEND_COMMAND ioctl.  For incoming stuff, you can use select()
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
