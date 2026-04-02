Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GG+iCHBNzmmjmgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:05:20 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BABED388117
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Apr 2026 13:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:Mime-Version:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FtZWooUj40la+O8m9PKjCEMyV5k0i+IpGIGD67Rt5mw=; b=nO77uBtNtY17aAEsCuo6lFDzO7
	i3ZqYYuhRi8rEZmKSNLRn1ctxh/ijFar9hql6k1y/0dBdqMu56Tl8kLDOw0v3+VFaR1FVxo7eqDOa
	B7uVvamFTvltEpFbUY/tRCwOJlkcOygbfVi7bhXrwu+hB5/XGbmWm2rk8Z7+hXGSTVJg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8FrE-0002u8-Jj;
	Thu, 02 Apr 2026 11:05:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1w8FrD-0002tz-6W
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-Id:Date:From:Subject:
 Content-Transfer-Encoding:To:Mime-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yoJPKDvg9yRg8jFcKEatOG4LwclN3LZAksmzLmiQqRs=; b=hOr3pU++UAbiWuoa4fce0gTs+q
 GTBqbYyXMiE9ljP3j6s0WZnEkzQuzVnBs5NcfnjdW3+4o3AWhKpGWIDRZWRboA6Fs2WYFXz24uveX
 cAD9TKkl4Pa1Ap9/Ctsta79FMdMEnHAMgGrljKQ6goebS0poq30AeSt//SKv4J/ZjYv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-Id:Date:From:Subject:Content-Transfer-Encoding:To:
 Mime-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yoJPKDvg9yRg8jFcKEatOG4LwclN3LZAksmzLmiQqRs=; b=M
 zo9MNT8qxuNMSrAo1JbAZg5rDvnRXWvV9GD1Ax4GAFnnuOV54fkOqBEqIXldb/PCVG0KmjDpMmN0N
 UVxkSEYCAsvTL7rbyyLs7llwSw5LeZI8D2v4kOfiI1YR3d9aLqHnnogY5+kjpLmCOf4uy+o+nAy7m
 H9gJmIOKtc9m12y8=;
Received: from va-1-112.ptr.blmpb.com ([209.127.230.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8FrC-0001oq-EM for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Apr 2026 11:05:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775127887; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=yoJPKDvg9yRg8jFcKEatOG4LwclN3LZAksmzLmiQqRs=;
 b=W6MKS8cHrO1IsIQ8GGHo1iOT39epmMxuWLzgq04q2gqh69HTrNmFjJb6d4np7Mu5D1SIVd
 4eVTVGwAg/GU4kAzu4r5xx7G4rPAECJzLLlX/OqCtCKpvK1nn39hMGKeDVFIbRvSa7D1A0
 MNZyofwhwQcJ9V8xMcLv8vdboNNfthlRuRi18LsO04cOs50MV7+1ZSDEEW91eBi72QX0re
 uf8aGaMdLWT6xBHOonJsR7g8vC7W86rgzC9tDn3RN7v+7uFXoX8xUmlu2PzB7dwFlaUNTH
 Jiznyq10UL64KKYClLpIaCrH8l6GNRi0JsB0ugOxaDH0xuXUravzfKz+5/cghw==
Mime-Version: 1.0
To: "Corey Minyard" <corey@minyard.net>, 
 "Quan Nguyen" <quan@os.amperecomputing.com>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
X-Lms-Return-Path: <lba+269ce4d4d+f1d3e0+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
Date: Thu,  2 Apr 2026 19:04:31 +0800
Message-Id: <20260402110435.3589408-1-zhangjian.3032@bytedance.com>
X-Mailer: git-send-email 2.20.1
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The response timer can stay armed across device teardown.
 If it fires after remove, the callback dereferences the SSIF context and the
 i2c client after teardown has started. Cancel the timer in remove so the
 callback cannot run after the device is unregistered. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1w8FrC-0001oq-EM
Subject: [Openipmi-developer] [PATCH 1/5] ipmi: ssif_bmc: cancel response
 timer on remove
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
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:quan@os.amperecomputing.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,bytedance.com:email,bytedance.com:replyto,bytedance.com:mid]
X-Rspamd-Queue-Id: BABED388117
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The response timer can stay armed across device teardown. If it fires after
remove, the callback dereferences the SSIF context and the i2c client after
teardown has started.

Cancel the timer in remove so the callback cannot run after the device is
unregistered.

Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
---
 drivers/char/ipmi/ssif_bmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index 7a52e3ea49ed..348e29490945 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -843,6 +843,7 @@ static void ssif_bmc_remove(struct i2c_client *client)
 {
 	struct ssif_bmc_ctx *ssif_bmc = i2c_get_clientdata(client);
 
+	del_timer_sync(&ssif_bmc->response_timer);
 	i2c_slave_unregister(client);
 	misc_deregister(&ssif_bmc->miscdev);
 }
-- 
2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
