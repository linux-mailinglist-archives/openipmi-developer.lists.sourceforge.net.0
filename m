Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46566BBF2BC
	for <lists+openipmi-developer@lfdr.de>; Mon, 06 Oct 2025 22:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IGNZqNRG5IQ6Jdg9zfXnEFm5YxUF7iMLW5pb2UuKJ5c=; b=nD/9XH83JNZGkrOnRwdaV7T27C
	wpANqxVyg8dP9ijio8vACWHPpg0QZcg7n3umilNhjhTkoS01/pdk9gDJg4yJ1dJHD+vbQuIfzd5Mr
	vlSV34VwZQS+QpSoB8bIsTTwF3wkAT/xvBgObOH0PSE8V8OG2sNxTr1zyDlF4Ok4Xsyc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v5rfo-00051g-J8;
	Mon, 06 Oct 2025 20:19:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1v5rfn-00051Y-78
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Oct 2025 20:19:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s7c6FuDc/WooqLby8dYSXXZ/60kGmD2CeerU/6YhiHQ=; b=DEPV6V0do7T3a+Cd+rVjaM1vYL
 0183NNYSoakbeuYffBYmrlCIv6nypbgP//rwYWSSaLx+b3BJrQg7KXwxPI9wrvGUPgwe/YqktnodE
 7RhMwSjcuBSiO9bXk915WPQhkmNjXf+rXBDiqg2owj+QSLW/ZdhHTlSm/Gi4OJpWA8Ug=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s7c6FuDc/WooqLby8dYSXXZ/60kGmD2CeerU/6YhiHQ=; b=d
 5r1CNSq5zLE+ZCVCC/oAAQSzGuQ+Rvjp2DuHKEqd/9+9V2vzwFWJPtIb3LB7s1hiTt0IZ9LxRbny0
 PZF4QCNc5VhDUw33IEFua3bPDEa95gHTawzA+phwqdG1jeNMnh24E+kWQLEV8O/GXt300W+39TxWk
 HW+RZgSEJxSL5PMo=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v5rfm-00017R-Nb for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Oct 2025 20:19:07 +0000
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-78a9793aa09so6370024b3a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 06 Oct 2025 13:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1759781941; x=1760386741; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=s7c6FuDc/WooqLby8dYSXXZ/60kGmD2CeerU/6YhiHQ=;
 b=BPdAcuvcoDjwiK+RFU44PE0elWgwTkhd0snKsikLxtxFbdwScPfJVTdplRmHlkScEE
 R+s1KXecTMF5gnbdKZjVncRlp5wOywpNUqZleCen/M9JTpU57kJyW6lQZOeSJtljiF2l
 INoiwinQLu/I7Dalw0IW+SoaIK/zeayVwrIKYc14M52NOvz2P/z1+BARObXqghkxiAia
 m3n9dbNtQUP6jBPfB5+xTz4GG1LjRoXNOO2jn+anXCWoqZbvhkziFrXUOh433ce647ut
 3RjxxPRi7hdfIFN1v7bKieGNyhst3T7jn6v8WHFV46mSimMlO4X6qPYze6Gq17YBNvHQ
 O2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759781941; x=1760386741;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s7c6FuDc/WooqLby8dYSXXZ/60kGmD2CeerU/6YhiHQ=;
 b=iKPDmvzmL9jK+1yTtrIHsWf8C4YzPy1ZQyjbMZnW+nbI+H1VNVqArYE/noyaJyqixK
 X+1qCYe6eLW4O/5JOMpJNGL8mrhei5iBqXyk8Ov3gk/SRL0woWt/LyNuJFDgYhHdvFNH
 rXXCwq7+GETbZqSllStEfFlbpF4HUbJSsD8IV3kzdHCDGGLJE1Mtgq5m7+jsiZMDRdeN
 N+yhzJZdaKuimwjRp34FaI7a9PqPPNBPdLPnciMQaGipDAr087dESVGilnwMuV0Ld9Sb
 tHVMhHcD45mTIMteH32wjNhfwHEphwUQq6eqcdiElQdwqN6nEXomIMthpC6h2GStHyLK
 BhTA==
X-Gm-Message-State: AOJu0YyAbdj8gYUclPhNuWbqxANp1qa0oGJMup2qqEpRNOksp9dypgs4
 G069/L5FxD4m8N225tj7XHl6ZQwUbbTs2oKQaAgr269V/tptqcTn5k9a
X-Gm-Gg: ASbGncuiu+YqM3VeJPTdx+9uGg2WkKUOSZOhFcjq1/zLu18eDjymT5VaN8gK2ZNf7gl
 GBWD6UkuVRn5/bHX4g/Os6ojO+cZ5TfFF/sM8Qup8y0pzN4v2GQfOFCcptsqCS9nKR2sjDtA7WS
 GPno76GX22jk45BsXYRFKsGAb5RchnYPiHFA8WA76OLSc9/Uk5/QkAecjWfBdCJLelzBt0uLxPx
 8TskIg+qFH5WesqZU6c+yGqlmgQY1sV/HRh26Vu81+8jOO1jPvdKVR5qEbCYOcZw2UBDEM3TBVz
 8sJ0PXnUFnGcEt0YZjbPkKD8wFGDaL1z00ufeM6ggXy8gD8aEK9bgAPiu/NoWOnv/zlIelJdx6I
 y7tL9wXFD758AaCJlKqrMDXlYtMLw/chbtrVQtKqY4nHaMf1vUJoFY21WQEg=
X-Google-Smtp-Source: AGHT+IFFMC0XNc9aOxuuCWzW1QQR1mD2fC24W1q6bD/FpKoR+B7obAfk4abxLPewsoUXOgZOsL2/aA==
X-Received: by 2002:a05:6a21:e083:b0:253:1e04:4e8 with SMTP id
 adf61e73a8af0-32b62107fcdmr18496026637.56.1759781940891; 
 Mon, 06 Oct 2025 13:19:00 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b62e121e0afsm9801971a12.25.2025.10.06.13.19.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Oct 2025 13:19:00 -0700 (PDT)
From: Guenter Roeck <linux@roeck-us.net>
To: Corey Minyard <corey@minyard.net>
Date: Mon,  6 Oct 2025 13:18:57 -0700
Message-ID: <20251006201857.3433837-1-linux@roeck-us.net>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Prior to commit b52da4054ee0 ("ipmi: Rework user message
 limit
 handling"), i_ipmi_request() used to increase the user reference counter
 if the receive message is provided by the caller of IPMI API fun [...] 
 Content analysis details:   (0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [groeck7(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [groeck7(at)gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1v5rfm-00017R-Nb
Subject: [Openipmi-developer] [PATCH] ipmi: Fix handling of messages with
 provided receive message pointer
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
Cc: Eric Dumazet <edumazet@google.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, Greg Thelen <gthelen@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Prior to commit b52da4054ee0 ("ipmi: Rework user message limit handling"),
i_ipmi_request() used to increase the user reference counter if the receive
message is provided by the caller of IPMI API functions. This is no longer
the case. However, ipmi_free_recv_msg() is still called and decreases the
reference counter. This results in the reference counter reaching zero,
the user data pointer is released, and all kinds of interesting crashes are
seen.

Fix the problem by increasing user reference counter if the receive message
has been provided by the caller.

Fixes: b52da4054ee0 ("ipmi: Rework user message limit handling")
Reported-by: Eric Dumazet <edumazet@google.com>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Greg Thelen <gthelen@google.com>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
 drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index a0b67a35a5f0..3700ab4eba3e 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -2301,8 +2301,11 @@ static int i_ipmi_request(struct ipmi_user     *user,
 	if (supplied_recv) {
 		recv_msg = supplied_recv;
 		recv_msg->user = user;
-		if (user)
+		if (user) {
 			atomic_inc(&user->nr_msgs);
+			/* The put happens when the message is freed. */
+			kref_get(&user->refcount);
+		}
 	} else {
 		recv_msg = ipmi_alloc_recv_msg(user);
 		if (IS_ERR(recv_msg))
-- 
2.45.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
