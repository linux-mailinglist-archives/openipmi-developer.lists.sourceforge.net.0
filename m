Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKaNBLXS1Gl/xwcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 11:47:33 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A789C3AC474
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 11:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Mime-Version:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=51g/poKw82AJWqzRULwr+uT3SnwGlGi8st0xZFHzWjY=; b=ck5kIPEsGzDVto8huiiOuRTpxl
	t1rdeniqBIxThItnQTRJAgA4j1bTrW8S9M4l+MOi/kMXnSAwkcZOJOwZr44WGYVgv5HVBiQmkshaO
	yQLOPYZ1C8BTUcI9Pt2fq6D6/mhGWu9dT3zhLBFEzxn/AJO0+g08qrykRKFhcsQAqDZk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wA31g-00071N-Tf;
	Tue, 07 Apr 2026 09:47:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1wA31f-000718-9L
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 09:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Message-Id:Content-Type:
 Subject:Cc:Mime-Version:From:Date:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8bFpmaG7lJnw18BjOwccjxkS9SoiaQf/ljbvLfaI2ZE=; b=GPZ4T3o4Qul1X7+Gi9hp+M+Xfp
 8KtjYQTS/x3bqMlFSRu6syKteMNO2eQ0A4BXN1+rM3KQnASYdbvW6KzllH1+Jka3q6QogWwdJqHEQ
 E0But7XzESx97neWJYDe1FsHobIwfHrQJKdcAZRpQEIvRplBTs9NVidU6dlbFqUGd8SQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Message-Id:Content-Type:Subject:Cc:Mime-Version
 :From:Date:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=8bFpmaG7lJnw18BjOwccjxkS9SoiaQf/ljbvLfaI2ZE=; b=h
 AWD4d2na1iagfQlLm1G4+AhmtWlU6a3WwYzKiVekKm/A2xAbmX7CNTEPRwDZqu8qystsVx8zLep5o
 8oB0w543LW5DeEmhQSMwwZf67AXvZSh2tEY4K8v9r46qUzIcWQDUoYN6SDwHZpl6FTXqsD0bM/T6E
 q2FeXo13xswBSn9w=;
Received: from va-1-112.ptr.blmpb.com ([209.127.230.112])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wA31f-0002WC-7W for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 09:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1775555219; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=8bFpmaG7lJnw18BjOwccjxkS9SoiaQf/ljbvLfaI2ZE=;
 b=Wkj1tTLDDs497pJRdAI0p49IEM86OVfxMdJjzUJm10bVIlE7/7a/O15whx1fvNuixGFgn5
 2Tw7aHm0aOVcohE3mGtUuMtUNztW6EdZ56/t5MZeo1UTNyIgv3b7D8Te2RMMe036nC6IDK
 nzEYCGUAYYOzXHlGKknHjV3K6vh/j+ayl3/m9p5drNy1JbBVk/Wv34Zt9a040KbZQ1itO6
 k3nycZ4eKlrjWR32aoWkScwlQV23kk1FRgfKYaFnxdyywsCJlfTo0+Q3D+GDzzSkMCO0rY
 vxAiehN1GiVTpLoGvHibSGUNvXbQZJYO+j0gRXBxoIoY+9A1F6l+GQ1e+5ZBkQ==
X-Mailer: git-send-email 2.20.1
To: "Corey Minyard" <corey@minyard.net>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Date: Tue,  7 Apr 2026 17:46:47 +0800
Mime-Version: 1.0
X-Lms-Return-Path: <lba+269d4d291+781937+lists.sourceforge.net+zhangjian.3032@bytedance.com>
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
Message-Id: <20260407094647.356661-1-zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Building with CONFIG_KUNIT=m and
 CONFIG_SSIF_IPMI_BMC_KUNIT_TEST=y
 results in link errors such as: undefined reference to
 `kunit_binary_assert_format'
 undefined reference to `__kunit_do_failed_assertion' 
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
X-Headers-End: 1wA31f-0002WC-7W
Subject: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Fix KUnit test link
 failure when KUNIT=m
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
Cc: kernel test robot <lkp@intel.com>
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
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:lkp@intel.com,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,bytedance.com:email,bytedance.com:replyto,bytedance.com:mid,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: A789C3AC474
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Building with CONFIG_KUNIT=m and CONFIG_SSIF_IPMI_BMC_KUNIT_TEST=y
results in link errors such as:

  undefined reference to `kunit_binary_assert_format'
  undefined reference to `__kunit_do_failed_assertion'

This happens because the test code is built-in while the KUnit core
is built as a module, so the required KUnit symbols are not available
at link time.

Fix this by requiring KUNIT to be built-in when enabling
SSIF_IPMI_BMC_KUNIT_TEST.

Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202604071448.zUBjPYPu-lkp@intel.com/
---
 drivers/char/ipmi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 72559f6050eb..669f76000197 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -189,7 +189,7 @@ config SSIF_IPMI_BMC
 
 config SSIF_IPMI_BMC_KUNIT_TEST
 	bool "KUnit tests for SSIF IPMI BMC driver" if !KUNIT_ALL_TESTS
-	depends on KUNIT
+	depends on KUNIT=y
 	depends on SSIF_IPMI_BMC
 	default KUNIT_ALL_TESTS
 	help
-- 
2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
