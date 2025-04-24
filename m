Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1049A9B489
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zn9-0004SY-B0;
	Thu, 24 Apr 2025 16:51:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zn7-0004SO-Of
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kUz7DXMA39otnLyfDSP3DMy4MLC8l/U84/KlxK55hqA=; b=UMefSMI7tnGSfW8KqHCA0Gemsh
 mEstEvtWK70LpE/Cxf83tYGAwcqhqodeoXVSG/0cUkjbUS4f9hdPm/etH2uddghZybEjqXmm9BAXH
 0tYtCL4OnYI72uhMFKc5feh6OlB0aczvojiBYsgbBdCy8j3WVl92EAOSu3WhCN4brOx8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kUz7DXMA39otnLyfDSP3DMy4MLC8l/U84/KlxK55hqA=; b=hVasR59mvrkfzb/NeVzxBeK+TF
 8N5vA5WmZrTqUQHJOrVocZmIMhDoiVy5QW0r77tJXe2o7SrB2zjKo+YrtfUq35flei1YaSLLn3/Mn
 vJv0JNMmeamzWMjPk52RHhkWjQKRLjfjceV0hijIQBHg/66so0rAQ5dG+Km8w6ZqJqgM=;
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmr-0002hd-JP for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:13 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 46e09a7af769-72bb9725de1so325602a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513447; x=1746118247;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kUz7DXMA39otnLyfDSP3DMy4MLC8l/U84/KlxK55hqA=;
 b=FJFvpbUZQvpXEBWVapkqwTJ6PK/9TuKXLy/ao2njOkm39JINL8vEKapbQhzYMwTlD+
 PRvynHxHQhst0I2+JtRt5pJg7vR8mP1wDVsQgWMdq3AWX/9D9fwKtRqOAZXNKnFBKP4/
 YCjYe++7WliSMSZRIo5qgd+500OrWR4Mw8lZDK1Jmtz58m6D5f1czKBvod1EJPMyyRu2
 bPGrufqZcxTkcAQRVBmPy8joNAByYIwD3nimmpnUHqV5oCXBLpsQl0jaKW7vhBUhFpWx
 KBbwhoZNbG1FJtDDCXvvZ8wHPyjlFDuqwZGbfhM1ewR8EHg5ikPbPwfv6FjX2oiCGUot
 yNWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513447; x=1746118247;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kUz7DXMA39otnLyfDSP3DMy4MLC8l/U84/KlxK55hqA=;
 b=OF1wX+pIeiEFR3iHLNSZXi8LStrNRVrWQTe+siuG5Pxs2rbmJpRCY4+xeaFUOiNfRf
 eBjMAyxLL3O/tcjoarxfItJmqj9T75j8orGRsdOzAks7Q9Gx3J5Xy2TshsGD0LEtCvmQ
 ewN6xEcvbLBtsleYA41gho5TnOQRq74o8W7+OAh7SPnDpIMqQlfQMDxDhn/wmzVu2Qfr
 YwQ9hZTDquxVIczdGNkosEo5oFPygYVr9j+AedtKPC2JoRcyiy+fXjJdJf2uQ1kgpvbS
 9lXcGjb4u2BLqDFNDNglXJAqcZku9rCO74dV8a06uPGYa4iDoS/OXR9Eq0xYXK06YT0o
 k7Ww==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDF4hl68cAhIuHvEPZjlYch1LgjAA/tOeqdEvdCkjT6TPZuWWGdI3acmxGyrdmuLFZ49UmttkwaBAjiGc+/XMJ75M=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy4KShhi3z1k8oYUnaOjH0jgghI24kw3rT/f4SGSXtitsA0vp3Z
 lKFkjOkHScmVH12Le8U62c1RrgiwxMNJlEEBqYy4300yATyWGtnD+bgmUfgjKGg=
X-Gm-Gg: ASbGncvPP488xB4OjiRhOQgEaUK6VDVX0z+QuC8cAtu+helULYJ2xmZqGKq+LEzHaCU
 z5G/cMwQE5/eJsIpvxQLgPCiPOtoACCJ3gqiE/h/tz0+ZsdkMHsiHNwTMSFosmZ7HEnuT5brv53
 M9t/C8qgzXq9P13MLoTPYjej/vyJrILxy5NKmcDy5YG7FT65av5ME9T1zfEKBjYdHjeMtq//o8S
 jM0ewapdZYVTtTBxe71P/EPlfPsaqOIdQpe/VKXIHIU62iBbOTOxL/9k/NiyZgxNt68TWWMkqGs
 nW5TlIT8W0Y7STedZvRWm/UfdWHMCfeho+o=
X-Google-Smtp-Source: AGHT+IEFBkV7UHEn58Xszvm0tfXkA82Ab6TrMIvEXYPdUN5UB+Wy6GEu8BwlPZj7yfPnj9aDzbXcQQ==
X-Received: by 2002:a05:6870:1592:b0:2d5:230f:b34a with SMTP id
 586e51a60fabf-2d99420d1b8mr332806fac.9.1745513446880; 
 Thu, 24 Apr 2025 09:50:46 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 586e51a60fabf-2d973650836sm361584fac.9.2025.04.24.09.50.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:46 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:47 -0500
Message-ID: <20250424165020.627193-11-corey@minyard.net>
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
 Content preview:  You can't do IPMI calls from the callback, it's called with
 locks held. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 include/linux/ipmi.h
 | 3 ++- 1 file changed, 2 insertions(+), 1 deletion(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.54 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.54 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.54 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u7zmr-0002hd-JP
Subject: [Openipmi-developer] [PATCH 10/23] ipmi: Add a note about the
 pretimeout callback
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

You can't do IPMI calls from the callback, it's called with locks
held.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 include/linux/ipmi.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/ipmi.h b/include/linux/ipmi.h
index 2f74dd90c271..27cd5980bb27 100644
--- a/include/linux/ipmi.h
+++ b/include/linux/ipmi.h
@@ -93,7 +93,8 @@ struct ipmi_user_hndl {
 
 	/*
 	 * Called when the interface detects a watchdog pre-timeout.  If
-	 * this is NULL, it will be ignored for the user.
+	 * this is NULL, it will be ignored for the user.  Note that you
+	 * can't do any IPMI calls from here, it's called with locks held.
 	 */
 	void (*ipmi_watchdog_pretimeout)(void *handler_data);
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
