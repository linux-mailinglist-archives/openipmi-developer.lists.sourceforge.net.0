Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47319A9B485
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7zn4-0004Ru-12;
	Thu, 24 Apr 2025 16:51:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7zn0-0004Ri-Nm
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/GnhQTtfP1kbpsamg0T3MymU+hfTFmTPAkbgLQlgvws=; b=fgB4d05XMKGEE7y7uvYx2U5K9u
 QavRvepCR7cooszQbhlf8+MhMarTpnfDYjz1gVxmM40V58+VFI38vyibtB1VyIfg6no4/70tVhBFN
 obx9tlWc62TapCN+PDBz0kkqMMigb93XyMVHL9s3mdJKLVBoO19PPWP/kG1fMbpPCxMc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/GnhQTtfP1kbpsamg0T3MymU+hfTFmTPAkbgLQlgvws=; b=R6uoaTPCxIT8LirtbYORkjA/Ru
 sA5AJdTzIOCJGlQKKpDIbgDUsXREHGbT8o8OozVBdJ5tVDcaPN5yS8DrgpWRCXoG5xnFv+b0a6pSk
 1a3y4Ym7dRfe4QzqJ6VwzrbCpUiq1JxGe1vmdyoa2/aR5S/rNoa5UST1G9Oqz5wH6lcA=;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zmk-0002h5-GK for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:06 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 46e09a7af769-72bc3987a05so758697a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513440; x=1746118240;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/GnhQTtfP1kbpsamg0T3MymU+hfTFmTPAkbgLQlgvws=;
 b=nfXu1VautQFO86gainlUExCfQa4C79jamiArZuyVal/m4kgTyLgSa4gRky5ifYBlPt
 XeQ0wTz/LauNJEH3Uj2MilouazcrcJtPcptMXfWLQIWWWnWoe38+bsXdpe4lYeYvDYBF
 W1gDHEKZQqNrnuHAcMRZKeZzKCp0GWwaIkXVlPId73EdPip2pMzKq+C8l5EOkx8VYraF
 9LP+LcjhZM/+VxFxLfnrn15EP+O8q4SrZ4QYhxGSmI/E+KaKxxdgJJYkm8Wtg3mLcTqG
 RWHCVf3eKfEPl6ie+ugsLGLrdBzZgAhBSnqHQ4GQvDMKW/opyAcKFg6yNgB9d3Rxrtkd
 BAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513440; x=1746118240;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/GnhQTtfP1kbpsamg0T3MymU+hfTFmTPAkbgLQlgvws=;
 b=qgLJbUsrcmulz++nvQ6okkSiCWuC0y20JfRhdN16v08wtZlIEU3p9pW78Na7GXlVVr
 WAuCqQlF7MJNF33HXA04SS+HfSEU7if23xoWUEnjJqyWpkV4AHwVEprK3u5rBHhxs5zv
 RtX7zDE/eZ6ddRXb4IU2fNTXwiO0Gen3rmi8zNAVp+EvRnHznMgNHz4srBMxDnFLFvzm
 akWmFxKYCOcRXmfHfNMmvQHcmLWQA8pCXXhQfpVwBEXQp0FEwrgDSwFmu9Cq66y7eSCB
 1KCB8PxnnhGQl2KRO/5Uh2PAI0+VDnrtSHDztXdGz8dhhLfqMdmbftbaqLkOlggUDg0u
 zJcw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1xbWZa+kvGGizBGjGtcOpU23yBxLJfF331upTGUvKr6teS7X3yuWAcq5k8pUdOwDofslVmak5GA3i0MQC3W3t5+E=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxdr2AbuM1JXQzgZ2hji3QtYihrCLsb0wHAODgYy5Bl+H+7qhy7
 i98wSSZI5y7jPMmTLBwfpIVs3K/V608px7ceJcp/zg8XhakMEekzst68u6I1iwo=
X-Gm-Gg: ASbGnctjl0hzEMtYcfy8KQ3+WCjpqMqZAdQTSndDWMELAwPLKr1tbBBZav+fPTpo7Ce
 UbESvhEQAk7WBmYU5H9YHiecn0Cm/KYIVYWXOoBxe1dxy49ND6stx8yZK58/1cb7Za2PJ8ipHJ6
 Si8SiiYbiUpzkAoP2CS6hnb3Eu0J7DoiLSRETUBxd9ayDX/j7jvq1MMjvK33eVLUcrBgJ0/8Pxl
 yxyZc+du/GfcOnshm3GVk2/2307ISOuivFzaM4nbzQsWCK9fbEJnsGe/F+Gzq+fK9Z5vbtsrxTp
 7Sssa4nS+x7qP09wbM6/moA92+1fIKCh8Yo=
X-Google-Smtp-Source: AGHT+IEY44KBD1aFubYN6jTShqSmWRM3+Po/JZz2E+Ydlym6ZuKZazjnHqe3n1F3LmG4zH6CwubL5Q==
X-Received: by 2002:a9d:7093:0:b0:72e:c42a:1797 with SMTP id
 46e09a7af769-7304fb1402amr1617165a34.13.1745513439712; 
 Thu, 24 Apr 2025 09:50:39 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7304f1a1b8dsm301061a34.17.2025.04.24.09.50.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:39 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:43 -0500
Message-ID: <20250424165020.627193-7-corey@minyard.net>
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
 Content preview:  Everything can be run in thread context now, don't use the
 bh one. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 drivers/char/ipmi/ipmi_msghandler.c
 | 10 +++++----- 1 file changed, 5 insertions(+), 5 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.52 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.52 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u7zmk-0002h5-GK
Subject: [Openipmi-developer] [PATCH 06/23] ipmi:msghandler: Use the
 system_wq, not system_bh_wq
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

Everything can be run in thread context now, don't use the bh one.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 09e56e4141b7..c060be93562d 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -956,7 +956,7 @@ static int deliver_response(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 			list_add_tail(&msg->link, &intf->user_msgs);
 			mutex_unlock(&intf->user_msgs_mutex);
 			release_ipmi_user(user, index);
-			queue_work(system_bh_wq, &intf->smi_work);
+			queue_work(system_wq, &intf->smi_work);
 		} else {
 			/* User went away, give up. */
 			ipmi_free_recv_msg(msg);
@@ -4892,7 +4892,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
 	if (run_to_completion)
 		smi_work(&intf->smi_work);
 	else
-		queue_work(system_bh_wq, &intf->smi_work);
+		queue_work(system_wq, &intf->smi_work);
 }
 EXPORT_SYMBOL(ipmi_smi_msg_received);
 
@@ -4902,7 +4902,7 @@ void ipmi_smi_watchdog_pretimeout(struct ipmi_smi *intf)
 		return;
 
 	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 1);
-	queue_work(system_bh_wq, &intf->smi_work);
+	queue_work(system_wq, &intf->smi_work);
 }
 EXPORT_SYMBOL(ipmi_smi_watchdog_pretimeout);
 
@@ -5071,7 +5071,7 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 				       flags);
 	}
 
-	queue_work(system_bh_wq, &intf->smi_work);
+	queue_work(system_wq, &intf->smi_work);
 
 	return need_timer;
 }
@@ -5128,7 +5128,7 @@ static void ipmi_timeout(struct timer_list *unused)
 	if (atomic_read(&stop_operation))
 		return;
 
-	queue_work(system_bh_wq, &ipmi_timer_work);
+	queue_work(system_wq, &ipmi_timer_work);
 }
 
 static void need_waiter(struct ipmi_smi *intf)
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
