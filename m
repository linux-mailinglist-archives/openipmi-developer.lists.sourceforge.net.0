Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NPdKyuDz2mwwwYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 11:06:51 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5F7392918
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 11:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:References:To:Mime-Version:Message-Id:Date:
	In-Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ubKs2FVlkBQGcjLJ9kXlI+NubD4WezfiiudodazIwcg=; b=NaulgpGvaSyOjxzpCE6m2IEr/M
	v7GA+oKPuzYmNF7DHbx7NS8qsmLC8T3bsEOXTIpFfqEPOsNudbVaPY7IuJ1ZCvoEssqHcPwvsZ4Z2
	NECL7Jkj0Bp7YBWPZuJks9eo5OS3mKWfX4x8nEgA8Ts7/tJ0/Q/EVV5sUnjZ3eLS6AxE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8aUF-0004II-Fv;
	Fri, 03 Apr 2026 09:06:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8aUE-0004I6-FY
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 09:06:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:References:
 Subject:From:To:Mime-Version:Message-Id:Date:In-Reply-To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4VM4dwSA0FGgabnp9jO1ZFd4RtQKTXt4Pmlo3Gzm+NQ=; b=Erdw1XXSN7H755NJEX9tA5/3z+
 ascJ5X23dEE7Hff69LZOKL61oD6sd2V+nsMThZ6V3JEiyfsv03Phy+9R35OtgY7Bz40yjVW6Auvi/
 yBFclD9jT6Y3+BQD213BzZtBXnj4hMdEv4rsGI2y1E11dy05FlOWiT70OEl4IWc3Rmws=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:References:Subject:From:To:
 Mime-Version:Message-Id:Date:In-Reply-To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4VM4dwSA0FGgabnp9jO1ZFd4RtQKTXt4Pmlo3Gzm+NQ=; b=NPqQOavzmX6tThglg07BoNPDte
 Z+MY2WqSe2t9uUMA3ndB5QRu1CQpaq4L2YUtsG+K2kZfyD6K5JWx1VsI+PtU6VS7iwAZR5QvrDkX6
 I+gJZQbKXObSa2feLjl+0DlvJLqxEmBgmcP1EB75oocREaDy4AdWvXJoFH/IYNUnp9Is=;
Received: from va-1-114.ptr.blmpb.com ([209.127.230.114])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8aUE-0003Lj-PM for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 09:06:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775207188; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=4VM4dwSA0FGgabnp9jO1ZFd4RtQKTXt4Pmlo3Gzm+NQ=;
 b=N8unWjsMqBtNfk+H70iyQoEErCWgddn+OjZc1p8eLntAJByXGUKTVwmr7E7eNkpd6XS4sw
 WZ6Ddy4JuMJgrUO/FPP0V953fUKtu02o5/wlOJqhVGdwlbCh8VzUeL4Hq8VTlOQbaiRmBK
 GfJIWHSyW3Cnz22bt7Z9B8wqXwDpjybgbDj08PY9cm6QiuzNTrcrn5LhExW+apSTEHjWRC
 Uy7yEUCqC8C+BqdZdkI13c+D2G9tr9SbbN/9uGBlF/cZtp5lIL21YbyICByygqSxq0e3Wu
 PteW/UMtuioxiGgIkZ/muWZBePZoV9exLbqcFLR37o+mqukOqZ2KnbENGKDX1g==
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
Date: Fri,  3 Apr 2026 17:05:59 +0800
Message-Id: <20260403090603.3988423-2-zhangjian.3032@bytedance.com>
Mime-Version: 1.0
To: "Corey Minyard" <corey@minyard.net>, 
 "Quan Nguyen" <quan@os.amperecomputing.com>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
References: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
X-Lms-Return-Path: <lba+269cf8312+2115e0+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1w8aUE-0003Lj-PM
Subject: [Openipmi-developer] [PATCH v2 2/5] ipmi: ssif_bmc: fix missing
 check for copy_to_user() partial failure
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: AA5F7392918
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
index dc1d5bb4a460..fbc7d2cfd535 100644
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
