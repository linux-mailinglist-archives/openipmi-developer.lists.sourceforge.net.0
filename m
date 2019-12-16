Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB1B1205E6
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 Dec 2019 13:37:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1igpdJ-00089c-Dy; Mon, 16 Dec 2019 12:37:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vdolezal@redhat.com>) id 1igpdH-00089U-Dh
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 12:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Spwr+WGQRbnHVP0bPnf8e2b+nrfyOjqiT6aPFAODs+Q=; b=ibm0arvUz9K3KoRfokB4Fzciu7
 BxPungoAKb51TxIgH0wZaUJ4bXjKbsW6AUS1/lXL56QbswaVln0J64vXhsOhe/fN2/A7FJBAycvlP
 1Uhv+Pq53KrFydFMj1w3/7EaYffsxH2/3GLpvtugnzhQPxX998QJMXiWJDtxcy4q8ejI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:To:
 Subject:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Spwr+WGQRbnHVP0bPnf8e2b+nrfyOjqiT6aPFAODs+Q=; b=T
 DJyMzmgxAWDfYWhfTLooloT6z1gLlltBKSqqQn98BM9vNnkSqZn1FTIgK++m51DMa8wdm1G4gjvc/
 zrZUMZAlCQadGAiLa5ibqLlMZRfe66XCX+LQNpX99Ifl9KcorE8Z94W9u3CDFD4FtbUDi32VxVdL2
 rjrgoHi60wL9kRcs=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1igpdF-006dyN-Mv
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 12:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576499863;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Spwr+WGQRbnHVP0bPnf8e2b+nrfyOjqiT6aPFAODs+Q=;
 b=TATgXVlj/zTr0gOCdq/p+6O+pDQmS1IrEte7MC5s094FNJbsSwX8Zk9r9tX1RRPyxscD2c
 JydsQKtzCG1gCVt0fJKG4MiRfWfHOGQS/VOsUr74IKTPdIFKukNEe5DjJHmJ7l1RnRVrnb
 xgyKZD3iDEQeNBjB9ySpa/iSu9KLBQk=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-gYC1xW1iMA6Vn4dxK5fNyA-1; Mon, 16 Dec 2019 07:37:42 -0500
Received: by mail-wm1-f70.google.com with SMTP id z2so978513wmf.5
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 16 Dec 2019 04:37:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=Spwr+WGQRbnHVP0bPnf8e2b+nrfyOjqiT6aPFAODs+Q=;
 b=R6UQbl3tmVIEhQyi4bSiJTx17wNurPirQ3S7ty7wGdb3gBXYFNaa5hz80Mse76kAr6
 XOHooFDadvs0IAc1qi8DC57pUZrkO+KcHBpEIkS2H9W28EIYhmTccb6Rfc8z98Y9JHfp
 KEAo9SLxxCtVybS+wLedI1hw+dOQdAP88T1nuKWj/eAZE9RQdSxbX06TPGND43qvbecx
 enVeciLgSYv0S0TtRgdoqf93L+MNm7aXiyvLRMDBZGeyYLoo0GXvBaSSYiK1KkQCZJdP
 Bw7KctJeeTHIq+7So6Piw+Bi5+vME3iEbdgLW6xS/aeXhm7jLb1/64naC6QMQEXzzDzt
 7BAw==
X-Gm-Message-State: APjAAAWU813hLbuaKEl3JAt9Kb9L28jka+TXFyp3ksoPbMLkj0p75ZCA
 J4/JmBYWfO6z7O5ck4AaPlfZqVBZC74A7hMTEItnkdmSkIhoW+zOPsIYowdmdn5i6KjA/teFfFi
 HOqGncJXQlChyXxbbE0yKPwYNac/gsRntImgpNNbM
X-Received: by 2002:a1c:2504:: with SMTP id l4mr27408696wml.134.1576499860770; 
 Mon, 16 Dec 2019 04:37:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqy5L/XoeZrqqy9Oi0Y/rDde+W8XQUZh/sxTk4MlSebisoJIDqJPRu/Du78h2aN4qUCpvTBCew==
X-Received: by 2002:a1c:2504:: with SMTP id l4mr27408679wml.134.1576499860595; 
 Mon, 16 Dec 2019 04:37:40 -0800 (PST)
Received: from [10.43.2.25] (nat-pool-brq-t.redhat.com. [213.175.37.10])
 by smtp.gmail.com with ESMTPSA id g17sm20156435wmc.37.2019.12.16.04.37.39
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 04:37:40 -0800 (PST)
From: =?UTF-8?Q?V=c3=a1clav_Dole=c5=beal?= <vdolezal@redhat.com>
To: openipmi-developer@lists.sourceforge.net
Message-ID: <97d27e93-c670-6365-89dc-d14e4c8243f2@redhat.com>
Date: Mon, 16 Dec 2019 13:37:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-MC-Unique: gYC1xW1iMA6Vn4dxK5fNyA-1
X-Mimecast-Spam-Score: 0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1igpdF-006dyN-Mv
Subject: [Openipmi-developer] [PATCH] Include readline history headers where
 needed
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Signed-off-by: Vaclav Dolezal <vdolezal@redhat.com>
---
 cmdlang/ipmish.c             | 1 +
 sample/ipmi_serial_bmc_emu.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/cmdlang/ipmish.c b/cmdlang/ipmish.c
index 139da67b..a4b8f0ba 100644
--- a/cmdlang/ipmish.c
+++ b/cmdlang/ipmish.c
@@ -51,6 +51,7 @@
 #include <OpenIPMI/ipmi_cmdlang.h>
 #include <OpenIPMI/ipmi_debug.h>
 #include <readline/readline.h>
+#include <readline/history.h>
 
 #ifdef HAVE_GLIB
 #include <glib.h>
diff --git a/sample/ipmi_serial_bmc_emu.c b/sample/ipmi_serial_bmc_emu.c
index 1b8bb9ac..184745ef 100644
--- a/sample/ipmi_serial_bmc_emu.c
+++ b/sample/ipmi_serial_bmc_emu.c
@@ -43,6 +43,7 @@
 #include <stdlib.h>
 #include <sys/select.h>
 #include <readline/readline.h>
+#include <readline/history.h>
 
 #define _GNU_SOURCE
 #include <getopt.h>
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
