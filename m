Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF10A9B493
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znI-0007uu-3S;
	Thu, 24 Apr 2025 16:51:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znD-0007uY-OT
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qepDoEK7fQtEFFNDVuX8GV694aIjiKgLyArjf+63mRk=; b=ILm4tFupeRKZ3ko6IT21hZjgX0
 8pcv3WC6ZjOe5QX95/i4hsqIQ+BwpuOilS3y5mitMllKLVUgJZjO6N0AzelHmjuNrV6SV9X1fGiZU
 LaT4aYDcCtGsHeZbGS1Hm4PHvp8/JPmsKzKyD5WO+olzkX+iJB8nTBbl69Bv5jPfsMNs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qepDoEK7fQtEFFNDVuX8GV694aIjiKgLyArjf+63mRk=; b=bqc9Pqho5XFB/TWFDpY35xnbAY
 qs1TmSopSN6mv8pBTXhffpNFbTDJDTznWqAIdZtkkXYyz5jTOZqsIXNCdrJ3KZT9S2W+Y2zjgTZEm
 vKRBYrWfU/YbBmn63YNpenQcFf3Zab9kPFs+t5dV/9ymY8fqg9TjPYKxqCpKxDZE+OhM=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmy-0002i6-3U for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:19 +0000
Received: by mail-oi1-f182.google.com with SMTP id
 5614622812f47-3f94b7bd964so953441b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513458; x=1746118258;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qepDoEK7fQtEFFNDVuX8GV694aIjiKgLyArjf+63mRk=;
 b=2ONYX5YiETDdMy6/D9kptczqe8/sUESoOQdsXW3TchS8tssdB7MAuJtb3i9UsGUesA
 rtus8myVXclIIKGucZyIPZYa2OuTYhcXwP6ZByQaAUJa6P9uoY2xF8w5aG/JeCKJyb6h
 r2tnWWVmUQiYKuUrTQuaHuMD8K+7zAFuvUVqlBOQB7mXwcLs/A9uaswpPezTLDOaU8at
 Y2iHCRCe2kJYJ9Ohlhtqoi4rt98EiTGrvg0F2SFNN8oTQrHUsffAcJPSZd2oG56rd6wX
 zSTmr5O3fvL2Ge5Pn1e1PcKXps2uQ8+RISR+NRH52pvBYA6nY3hc+w6wCPUWB20X291o
 +/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513458; x=1746118258;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qepDoEK7fQtEFFNDVuX8GV694aIjiKgLyArjf+63mRk=;
 b=Ch7PBZzGk8ZlRc+8mQXq5g1LMUreNqsBwffKBnz3rJJOIouPOnOtUmlYGVO3v7KXns
 ZXV5brH+xt0x3RmU70PuzcP+Q1l9LFL29FUOmiv7/1eoWUlZR8EQEjNnDS2U4Ys+LOym
 6ZP799DPm71Azr6XDqqgK+Jb/IsMJBAiGO0aeDAZ6CMOKHiQdEV7nf+VYdgPR53+e5Au
 WpB68bZ/ouvtILJWP+mTLq8dOmLOvMiJQXbKTSfoLatojcPwnRmWq+ftFEA2vOEoMvLo
 tznUTl355iiherFAbklsd8P3raAZvp3jgcOSyQLmOH+eBvqO+TSmJZGSIX8icdGIOC+y
 9yQQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWU6XDAmcBkA5sQG8PLM5LTV07Utjc3SVyByENe+9BXt0cnQsE1G42hCutFRvriMZjZ15iRTPbXqvnbb6/QMJWO7o4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzldHZwGGdPd89f9L6xOAH0cqwD3vcIaxwE66HCdq/GQsFR1zt9
 657yC+1gSzVRqWWTXaDGMc/RQBzq5ltu5q8nJ/cMH4pkK69mU/3NO1+xVHxKvMw=
X-Gm-Gg: ASbGncsaGa+zq+toyi46MkEXQeXC7KrTN1vdWeh66bDf9zlMs+ZvE+V9WOIi2f+fPyv
 u0xBw4BrC4yawZRNHUKVLxWOrQNJMd5VV2J4PvllZ/NtbJAV0BE6zJYdnIKQvtaTBrdQ79qSyhV
 5VP2fuG6f6D9o3Uj2B9ysfxhlz79uPbnZlcSXY/5vIalO/C3RtW6JbMLYmvFrjuKHwLB7xvugQ9
 WIvPxlal4Zvb6kJFToO0YnccyA9CwUvfeX8TqlY0kET8hXhzDu4QQ8LNPt3j/EXsKNhgXhmBxaA
 feFEC/0SCulFIhPd3ssdGWWT8Eskd2WJgfsMTqTKqYLnFg==
X-Google-Smtp-Source: AGHT+IEfVULpCholq3S/L81RHTmf54TB5BR0x2l2mjKQ8FChlydz7ZqUdy/hNLvgRVxIzVFkC8/dEw==
X-Received: by 2002:a05:6870:30e:b0:296:bbc8:4a82 with SMTP id
 586e51a60fabf-2d9944a6db9mr284312fac.27.1745513458491; 
 Thu, 24 Apr 2025 09:50:58 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 586e51a60fabf-2d973c18da5sm365930fac.47.2025.04.24.09.50.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:58 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:54 -0500
Message-ID: <20250424165020.627193-18-corey@minyard.net>
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
 Content preview:  If we get a command from a LAN channel,
 return an error instead
 of just throwing it away. Signed-off-by: Corey Minyard <cminyard@mvista.com>
 --- drivers/char/ipmi/ipmi_msghandler.c | 27 +++++++++++++++++++++++----
 1 file changed, 23 insertions(+), 4 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.182 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.182 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1u7zmy-0002i6-3U
Subject: [Openipmi-developer] [PATCH 17/23] ipmi:msghandler: Add a error
 return from unhandle LAN cmds
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

If we get a command from a LAN channel, return an error instead of just
throwing it away.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 27 +++++++++++++++++++++++----
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 56654a9c5cf7..c72ff523216c 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4165,14 +4165,33 @@ static int handle_lan_get_msg_cmd(struct ipmi_smi *intf,
 	rcu_read_unlock();
 
 	if (user == NULL) {
-		/* We didn't find a user, just give up. */
+		/* We didn't find a user, just give up and return an error. */
 		ipmi_inc_stat(intf, unhandled_commands);
 
+		msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
+		msg->data[1] = IPMI_SEND_MSG_CMD;
+		msg->data[2] = chan;
+		msg->data[3] = msg->rsp[4]; /* handle */
+		msg->data[4] = msg->rsp[8]; /* rsSWID */
+		msg->data[5] = ((netfn + 1) << 2) | (msg->rsp[9] & 0x3);
+		msg->data[6] = ipmb_checksum(&msg->data[3], 3);
+		msg->data[7] = msg->rsp[5]; /* rqSWID */
+		/* rqseq/lun */
+		msg->data[8] = (msg->rsp[9] & 0xfc) | (msg->rsp[6] & 0x3);
+		msg->data[9] = cmd;
+		msg->data[10] = IPMI_INVALID_CMD_COMPLETION_CODE;
+		msg->data[11] = ipmb_checksum(&msg->data[7], 4);
+		msg->data_size = 12;
+
+		dev_dbg(intf->si_dev, "Invalid command: %*ph\n",
+			msg->data_size, msg->data);
+
+		smi_send(intf, intf->handlers, msg, 0);
 		/*
-		 * Don't do anything with these messages, just allow
-		 * them to be freed.
+		 * We used the message, so return the value that
+		 * causes it to not be freed or queued.
 		 */
-		rv = 0;
+		rv = -1;
 	} else {
 		recv_msg = ipmi_alloc_recv_msg();
 		if (!recv_msg) {
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
