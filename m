Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0P9qH3JNzmmjmgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:05:22 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74661388127
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:Message-Id:Date:
	Mime-Version:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pBe4sZS3RZTlu2kQG7QiOiC/U8mk04S6u/4ThY0oxik=; b=XzfTLz6aGthHBUK6NLDoOTcV2m
	6NEwlEjKbSFN1QyxXjOjsHZOj0SgdR+zSZW8yMnq65lQoXPIitxBRo+LHJBCDvIYns8sgraMM4AiR
	7zkWlNeNGynuZNa7jYDl52AAFpWSdGHKT62p68XeLpUTybgcbMXXz29FV4pdWkpe4duQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8FrO-0004MK-I8;
	Thu, 02 Apr 2026 11:05:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8FrM-0004MB-Ri
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:Content-Transfer-Encoding:
 References:Message-Id:Content-Type:Date:Mime-Version:Subject:To:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MT+o5v1n5VaA4ymNAUTYX8XqsxQFWlrmF/Iy8VZj56Y=; b=F6NiWWBcFhpEltgOs30PPYK8IZ
 e/zyI+iWhXViyd9c9USFWzTyK5A7vrQLnt0SAJSwIiOqDUuh7oiHdqZUwBxRv2FnNhSs9+0dpGkh3
 duZwxqASe76+CnClU+2Kki/FJIkzA7nhKppct5r9kQO24+XtYMS8lIFp3ZYoB51tjr9M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:Content-Transfer-Encoding:References:Message-Id:
 Content-Type:Date:Mime-Version:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MT+o5v1n5VaA4ymNAUTYX8XqsxQFWlrmF/Iy8VZj56Y=; b=hX/5ytxJqDCV354UeJ5v7XUbsV
 EpCatifnAlECtQGwP7g8LFmpSR13kZpaWehX7XFfy3VIpdbxwsQBSykjrVMGDUuAGoy614xaXuM81
 hSR6aYUnG0NbOD2mFUSqbMaUAvi/nGKNc0OYHjjl0heY9GZ+KDYqICj93qI1q6UB9xjo=;
Received: from va-1-111.ptr.blmpb.com ([209.127.230.111])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8FrM-0001pm-16 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775127902; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=MT+o5v1n5VaA4ymNAUTYX8XqsxQFWlrmF/Iy8VZj56Y=;
 b=NrLdyhk8Rot98fP1rCNWSmm94UJiCtQ7C69Q/04/Xuz6F8gm1gMm6QZt8sWtdtS8sevirn
 ri87E/6Xk7GQ9le8hfn9y9V4y8e/x0u6xXBmhMYrXEi2NgcXXmSaU6kLBtoJJmjMu8zJ4p
 IvbVsm/nPhLbEiZbTF2aM/d37BYXxVEfoBKpnzzO9wDconMCSOcZ54Jdkh7bOXMdENxPgK
 N6/QSBUnVNnd1/y8WeRZcfEBuJ381t4uzOvvmi1i1DNoAw2lNeMbMw/ISgXQWp9FmyM33G
 Wk1LHEeRKIBhShETG1VfzT8IAIAom2uWjkR2dpl+FeWpVdukylK3D/+iclxrJQ==
To: "Corey Minyard" <corey@minyard.net>, 
 "Quan Nguyen" <quan@os.amperecomputing.com>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Mime-Version: 1.0
Date: Thu,  2 Apr 2026 19:04:32 +0800
X-Lms-Return-Path: <lba+269ce4d5c+c06221+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
Message-Id: <20260402110435.3589408-2-zhangjian.3032@bytedance.com>
References: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  copy_to_user() returns the number of bytes that could not
 be copied, with a non-zero value indicating a partial or complete failure.
 The current code only checks for negative return values and treats [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1w8FrM-0001pm-16
Subject: [Openipmi-developer] [PATCH 2/5] ipmi: ssif_bmc: fix missing check
 for copy_to_user() partial failure
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
From: Jian Zhang via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jian Zhang <zhangjian.3032@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:quan@os.amperecomputing.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[zhangjian.3032@bytedance.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,bytedance.com:email,bytedance.com:replyto,bytedance.com:mid]
X-Rspamd-Queue-Id: 74661388127
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

copy_to_user() returns the number of bytes that could not be copied,
with a non-zero value indicating a partial or complete failure. The
current code only checks for negative return values and treats all
non-negative results as success.

Treating any positive return value from copy_to_user() as
an error and returning -EFAULT.

Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
---
 drivers/char/ipmi/ssif_bmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index 348e29490945..4037615ace12 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -163,6 +163,8 @@ static ssize_t ssif_bmc_read(struct file *file, char __user *buf, size_t count,
 		spin_unlock_irqrestore(&ssif_bmc->lock, flags);
 
 		ret = copy_to_user(buf, &msg, count);
+		if (ret > 0)
+			ret = -EFAULT;
 	}
 
 	return (ret < 0) ? ret : count;
-- 
2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
