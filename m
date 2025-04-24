Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17401A9B48D
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znA-0007u6-PK;
	Thu, 24 Apr 2025 16:51:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zn8-0007tq-Jd
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bo8OORB/CMRTqZ+jmfB+YUkyYwA6MdIiB5QaJmUO56E=; b=hm/g0YB33LV7G+7yQ4CEiSsiij
 ulgQL1WuDY731Cf8NVjM+k9+pzoVR4ainzt3262fMe5YnxeiSvfNlNhhcccAhRNfZXegO+6MiBIo4
 LCqTbTCa1Xwl/TFuvy/2HFSr1HsKFSsgid46ux0ENHf5iRcf0l/ZvPfPJUAv24k9sezw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Bo8OORB/CMRTqZ+jmfB+YUkyYwA6MdIiB5QaJmUO56E=; b=gMOAmiU4unKenLlwMYxMPbJHYm
 cSVCOCiXGyO78c6vjNPx62cQ/VCAaCUxZm+QCK+wgPp3EuqvRNxM0lSe03ZvzgO+3Z8JmdBAaFYWp
 BwMuo7fP6AGxxIJ1bItitAoeYAg3k/ahgMOD8LD3LTUWZ4/K4QBI2qsBHAnulmwchIZk=;
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmt-0002hk-1R for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:14 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 46e09a7af769-72c1425fbfcso1067516a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513448; x=1746118248;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Bo8OORB/CMRTqZ+jmfB+YUkyYwA6MdIiB5QaJmUO56E=;
 b=QvVot5ackiKsUnnP97UxIffy2lG/hS/hs2xYtL5RH/WxoUeJD8KUVfhRHCFnErl8VI
 W6rwSkot+oRnurBrTRxWi/PPcBtMF4m8vtDueejEnfdxEoz+1gHRn4TY9evXyKiQloGs
 zI7dcQhn8MQowrJDUzINIfr5fNB6xlEfQB006BFXyN3mrd1prBI/ZMu+sTyVKd0j/eYb
 6hDSnHvjUZimpu7qLPDLM2TwLiewBawKEYjYW3nvjpIzmV2hl/CdFpcdR54ogWRtIM/r
 6QwNYr+/S6/pR6VN4L7b1JB2eKIfGrCr7ywhcFNY8RcQzjw7Rhm3+Qu/6WCERmW4H7rJ
 IRnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513448; x=1746118248;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Bo8OORB/CMRTqZ+jmfB+YUkyYwA6MdIiB5QaJmUO56E=;
 b=L3n9YX9vOtW/3E8ZVJeX5VzsVZ8RNLJzFbYmiHIs20mRCjpX8jAKHHHnjtqf49yjGk
 5vGh5OGBuiINj4gc44bOqB9fAp6wBPjqRRDIfW3AjnJm2QhyJY5Bc3h7Oe5jdeULOcuL
 wwgDaI/jy2Ntc1dOKJSxT7KKpfuvCC7UMSNJpE3XzwvYl8F87BlgIP0HNUPxI08RzK6F
 FKUW4qmFp7xUdZYMfco0D/wgfcoyiOwYuzWBrhoiC92DtL5j18DqEqeM2pwBCvaraykM
 t8SV5pO0jUTBPDnPTnEkGM6L8iV9wx6LqiX7o/RzhhniG/sLVj7pRKGg36+HQeHpf+Gy
 xRww==
X-Forwarded-Encrypted: i=1;
 AJvYcCXaPw4oUVz5HTrnAQLmcy1XVJM3bup5jUw4Hod/lJL0PXpJF+0Oq3FRQ7TTE/fh96lG/nYfGCjTz5RLVU9UQaS0gCo=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyUM7WHu9ygN6BgEynDhFz2okCh4iPljsvDpbNIRxcqeFt7o+xS
 u/9l3SsYgbgqCfFqL3J+3/q4vhlBsYfrz3p2vkCnMUrWFC4mqli3tc7m0z2ggo0=
X-Gm-Gg: ASbGncvW2xgikl0zeyETuht4MEDHsDRMTyiFoBkFJ1oNJ4jKRN3CB27pMEJXwMisyK5
 NIHs3rHuW9+DKh+D0qXCYoz+bshcV0iqWakBo0V/Lf1N2Ds/bSjIuHKJwW9LvwZ5/NT4aB8HI21
 PsVY6km5ypUsclt8BUu5omWrTwVfnmnACEGgLUnVD+LtFV6g4mHRlIec0ym+IOAN7RgmY0UvgIl
 VBkb1OjwgKRtyW9k56MT6AS+0lKrnUZVx7F4hYfGx91fwm0TJZJ59NNHkFLzzBSnr08w91dzIB0
 4im7xu3Aw0TC4P6NRJkOSEp1GYTOlF1G17k=
X-Google-Smtp-Source: AGHT+IGActbYLMI+4Dv1DxR+pkcu73M2Hm6w/m4/WWnj+zX8JKJ9d7TyKjUutOCfa+lPaH6GRQXn7w==
X-Received: by 2002:a05:6830:3741:b0:72b:8000:d487 with SMTP id
 46e09a7af769-73059bc8b48mr414897a34.3.1745513448417; 
 Thu, 24 Apr 2025 09:50:48 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7304f187fa9sm292307a34.11.2025.04.24.09.50.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:47 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:48 -0500
Message-ID: <20250424165020.627193-12-corey@minyard.net>
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
 Content preview:  When run to completion is set, don't call things that will
 claim mutexes or call user callbacks. Signed-off-by: Corey Minyard
 <cminyard@mvista.com>
 --- drivers/char/ipmi/ipmi_msghandler.c | 4 ++++ 1 file changed,
 4 insertions(+)
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.42 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.42 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.42 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u7zmt-0002hk-1R
Subject: [Openipmi-developer] [PATCH 11/23] ipmi:msghandler: Remove some
 user level processing in panic mode
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

When run to completion is set, don't call things that will claim
mutexes or call user callbacks.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 3e88ac6831d8..e7bed764b4bb 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4808,6 +4808,10 @@ static void smi_work(struct work_struct *t)
 
 	handle_new_recv_msgs(intf);
 
+	/* Nothing below applies during panic time. */
+	if (run_to_completion)
+		return;
+
 	/*
 	 * If the pretimout count is non-zero, decrement one from it and
 	 * deliver pretimeouts to all the users.
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
