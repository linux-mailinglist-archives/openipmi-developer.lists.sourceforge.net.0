Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id amfOLQbXR2qXgAAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Jul 2026 17:36:38 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6606703EF5
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Jul 2026 17:36:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b="bN5f/Cz6";
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=bCPM0aZ2;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="V VE+Opo";
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b="Fem6/sK9";
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Mime-Version:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PVWQnT9bIq0GjT0sVgj4JVHZZJpy8B/Df8zWDO5blSU=; b=bN5f/Cz68/P6mFa78+OLjA+5st
	g2XwJHckmNEGpZdkLCumQgs26J8uYjT/oUhB9Th6gCmYNGFZsTTbfi4cINqHyzBv9ick3pZpbZT7h
	MKwPYY/Bp5eXI+RlPEWDUy4M8DG9L8TlETZ1xGQc+v4KncunSU7xcfw7XcH8DoTtVfbs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wffwJ-00088j-Ek;
	Fri, 03 Jul 2026 15:36:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3FdFHagoKADAYOXMbUZeWUSaaSXQ.OaY@flex--mclapinski.bounces.google.com>)
 id 1wffwH-00088V-Ab for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jul 2026 15:36:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 Mime-Version:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QtTN57AzzUJ6dugw/eqNCQrlE5alAfMnwqYEMx2fXnI=; b=bCPM0aZ26EeJIKpET8CAG7UQ7d
 pLXEztsU8oPKT0jY673Chqge4sNzP2M+yt+v8kQEwt5WV8p8sWfWR9s/xLCBKhMz5zU7bIeYj56Rb
 8MGcb5rGqjQpE+UIpV/wfrslA//TbPhkaAMY4wztwlaY34qsiqawsx9ffNH3o2hxztbs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:Mime-Version:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QtTN57AzzUJ6dugw/eqNCQrlE5alAfMnwqYEMx2fXnI=; b=V
 VE+OpopOgcSNU9qhhp0c39+xrMN2Usuy4JRZ2ZvTseE3p3NpEbI80LJVMk2AL76405cdJ7szuUpmk
 fexQnRp1t/OszV2UchTocyQVU/ANGXdCMoyzPaIyF9hRBfWV7XehvqUlptx5uGem7l+KqEFRh+aFs
 /nKHDl4Z2OGMBGrs=;
Received: from mail-wm1-f73.google.com ([209.85.128.73])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wffwF-0000BG-Q9 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jul 2026 15:36:25 +0000
Received: by mail-wm1-f73.google.com with SMTP id
 5b1f17b1804b1-492488f8583so9518915e9.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Jul 2026 08:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1783092973; x=1783697773;
 darn=lists.sourceforge.net; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=QtTN57AzzUJ6dugw/eqNCQrlE5alAfMnwqYEMx2fXnI=;
 b=Fem6/sK9uLQjDD7fgWpnDNxKnQJsULLeR+b23O//MbVKvwgwIxLU+eQNnIe2OjkGZI
 PSbk1PC5HmmY0X3SWn5ZQsyCIAdbo9ytHOj2juZY95dRjLrHxNzamrs5ZRekz4ufV8ta
 I+NV3nqt7UxnmctTP0RuJhc+GgOarLd2YOzHTo1LLkknq/I12tOsg7b3zknOd/0dXbzq
 UBEmlUa4wl8WfumBDCyiIzNeqe/0bf5Uw1FkB3aUvDLfac8wH0ASTM0hr02y98czVNsd
 KKAJMPDX4GsEJ0ZEv13SJq4zY5Tm9+/h+YlLwpAI3hmuFXgb2vPtrvY+uqlqLS5eeMd4
 dbBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783092973; x=1783697773;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=QtTN57AzzUJ6dugw/eqNCQrlE5alAfMnwqYEMx2fXnI=;
 b=kNxkCayGCF8eF9tzWcmoaoU7PgQBDMu4tBO++pNixRmmHkt5c4nTPyIzeh/N/Uqlyt
 uOPv+4spQhtrn2mUNcXzTdxAILsBqZ+kQrwMVFghRHg8vD+15zD4hRsZJJo3F4rB1d6Q
 8pA4x4KdEvk/7KcuahrAIyMTrTM6RPbgb5fAl02Km2QJ6qqNuwfx+cOnp0KX5KahNChc
 EpPzzo/a12sEBLjiP77d+Ftg6UhjrIehrX1cM4G34uWQwP6EK1N6N8rFBFYL8F51lPyu
 hhkaEWR/qq8IdUN69mJGaGxkKfxeEbRz3tLdT2AH4Xk7Gb1dBsHX4SHQWb627Sx3iqPK
 xyZA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/L4WPoJFnHAqk+ffxXQWU1S3Y/jjfst34TU8AoNr+kJyNuNpRhgvOpjmUinGqyDdhS9p64go+kw69qn5zGPeIgUMc=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YymRA2upVrbJVJU+I2uqwNI8k6W4Tr548G2YXcj0aQJuwVaR0h9
 STufUGrgzHkPUJ1MHYF2DG69Gq03DejoSw9AJVJcvu1CCwhMfDlfYjbfSlAqOwEO+aFyzPN3qck
 zohOjEYli5z5pn81Ao5Jeug==
X-Received: from wrmf17.prod.google.com ([2002:adf:e911:0:b0:474:4c49:fdb5])
 (user=mclapinski job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:3e06:b0:493:b783:ad59 with SMTP id
 5b1f17b1804b1-493d0f3a7dbmr3246685e9.14.1783091477362; 
 Fri, 03 Jul 2026 08:11:17 -0700 (PDT)
Date: Fri,  3 Jul 2026 17:09:55 +0200
Mime-Version: 1.0
X-Mailer: git-send-email 2.55.0.795.g602f6c329a-goog
Message-ID: <20260703150955.3943082-1-mclapinski@google.com>
To: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Added a new config option to allow offloading individual
 calls
 to try_smi_init(). Saves 100ms on my system. Signed-off-by: Michal Clapinski
 <mclapinski@google.com> --- v2: - instead of offloading the whole init
 function, offload just the individual calls to try_smi_init() 
 Content analysis details:   (-7.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.73 listed in wl.mailspike.net]
X-Headers-End: 1wffwF-0000BG-Q9
Subject: [Openipmi-developer] [PATCH v2] ipmi:si: Add async init to ipmi_si
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
From: Michal Clapinski via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Michal Clapinski <mclapinski@google.com>
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,google.com:s=20251104];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[mclapinski@google.com];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,google.com:-];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6606703EF5

Added a new config option to allow offloading individual calls to
try_smi_init(). Saves 100ms on my system.

Signed-off-by: Michal Clapinski <mclapinski@google.com>
---
v2:
- instead of offloading the whole init function, offload just the
  individual calls to try_smi_init()

I didn't implement the periodic retry feature that was talked about
under v1 due to my lack of expertise. LMK if this is a deal-breaker.
---
 drivers/char/ipmi/Kconfig        |  9 +++++++++
 drivers/char/ipmi/ipmi_si_intf.c | 32 ++++++++++++++++++++++++++++----
 2 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 669f76000197..c8fa445c1c17 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -67,6 +67,15 @@ config IPMI_SI
 	  Currently, only KCS and SMIC are supported.  If
 	  you are using IPMI, you should probably say "y" here.
 
+config IPMI_SI_ASYNC_INIT
+	bool 'Asynchronous initialization of IPMI System Interface'
+	depends on IPMI_SI
+	default n
+	help
+	  Offloads invidual SMI inits. It speeds up the boot time.
+	  It also introduces a very small risk that something else might fail
+	  if it depends on synchronous IPMI init.
+
 config IPMI_SSIF
 	tristate 'IPMI SMBus handler (SSIF)'
 	depends on I2C
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 9a9d12be9bf7..504d5b8636ba 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -39,6 +39,7 @@
 #include <linux/rcupdate.h>
 #include <linux/ipmi.h>
 #include <linux/ipmi_smi.h>
+#include <linux/async.h>
 #include "ipmi_si.h"
 #include "ipmi_si_sm.h"
 #include <linux/string.h>
@@ -2174,6 +2175,17 @@ static bool __init ipmi_smi_info_same(struct smi_info *e1, struct smi_info *e2)
 		e1->io.addr_data == e2->io.addr_data);
 }
 
+static ASYNC_DOMAIN_EXCLUSIVE(ipmi_si_async_domain);
+
+static void __init async_try_smi_init(void *data, async_cookie_t cookie)
+{
+	struct smi_info *smi = data;
+
+	mutex_lock(&smi_infos_lock);
+	try_smi_init(smi);
+	mutex_unlock(&smi_infos_lock);
+}
+
 static int __init init_ipmi_si(void)
 {
 	struct smi_info *e, *e2;
@@ -2219,8 +2231,13 @@ static int __init init_ipmi_si(void)
 				break;
 			}
 		}
-		if (!dup)
-			try_smi_init(e);
+		if (!dup) {
+			if (IS_ENABLED(CONFIG_IPMI_SI_ASYNC_INIT))
+				async_schedule_domain(async_try_smi_init, e,
+						      &ipmi_si_async_domain);
+			else
+				try_smi_init(e);
+		}
 	}
 
 	/*
@@ -2253,8 +2270,13 @@ static int __init init_ipmi_si(void)
 				break;
 			}
 		}
-		if (!dup)
-			try_smi_init(e);
+		if (!dup) {
+			if (IS_ENABLED(CONFIG_IPMI_SI_ASYNC_INIT))
+				async_schedule_domain(async_try_smi_init, e,
+						      &ipmi_si_async_domain);
+			else
+				try_smi_init(e);
+		}
 	}
 
 	initialized = true;
@@ -2401,6 +2423,8 @@ static void cleanup_ipmi_si(void)
 	if (!initialized)
 		return;
 
+	async_synchronize_full_domain(&ipmi_si_async_domain);
+
 	ipmi_si_pci_shutdown();
 
 	ipmi_si_ls2k_shutdown();
-- 
2.55.0.795.g602f6c329a-goog



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
