Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c08vBOT3PWob9ggAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 05:54:12 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C93D6C9F88
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 05:54:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=USFel+Km;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=my4hfVui;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="h hauriS";
	dkim=fail ("body hash did not verify") header.d=google.com header.s=20251104 header.b=rojBMup+;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Mime-Version:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=baxo9OZ4esXC65SqWVZ/YOdYqeC/WtEJUVCagxjr0/Y=; b=USFel+KmNYC3/Nm0QN9zqcT7NR
	e+HQxNHSLrW+VSFj0pB32TcqEKyv+Ehg40d4J2rXl0cBjqyEFE62Xz4UKibXV4KYYkjqONhsLlv0A
	oQt9bwfCPxMqKbUqmxgXfVVtIS0EPqrgfP/ctwE8mqBiVKoy6L/5DbYdSNHdv6nH8y68=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcxdn-0003lE-47;
	Fri, 26 Jun 2026 03:54:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3hVA9agoKAHQeUdShafkcaYggYdW.Uge@flex--mclapinski.bounces.google.com>)
 id 1wcmzg-0007oT-6k for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Jun 2026 16:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:From:Subject:Message-ID:
 Mime-Version:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aeIBkMsWRS/DGQcr9sTXzFBrezzm1A4urK40dOoini8=; b=my4hfVuilWOqh300+3XtjQaF6s
 a5tGmV0WEXK5kqWXpM3N6ZVRkQ70AmGejX+DjoMbBJxDM//T2ksBuxDQXkAlw1cFIEqeBSEjvWZOQ
 d5x0FH4Mq8WkS8EE3H5jQ4B+X5YkcUyVor0Ejw4YojJ63IXrDGy6BM9NksLp8wDy/k/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:From:Subject:Message-ID:Mime-Version:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aeIBkMsWRS/DGQcr9sTXzFBrezzm1A4urK40dOoini8=; b=h
 hauriS10BIoOFN/vXjWCzBU1pyGrj+s62GADX3WyJVGGNlpOUc/TQSrNEMTTPSAB7luedNhSlHdd2
 i8x5qio2TkyT8S35AUQVDF9PWiHas1UzbWf1NKDXZCiMaw2d3TeKfSEtisKvVb6+/tNeSQ52LUmYn
 P2pYX2B1jgqKWMqk=;
Received: from mail-ed1-f73.google.com ([209.85.208.73])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wcmzf-0003Rn-2x for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Jun 2026 16:32:00 +0000
Received: by mail-ed1-f73.google.com with SMTP id
 4fb4d7f45d1cf-69681505eabso1629514a12.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Jun 2026 09:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1782405113; x=1783009913;
 darn=lists.sourceforge.net; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=aeIBkMsWRS/DGQcr9sTXzFBrezzm1A4urK40dOoini8=;
 b=rojBMup+ZghshEophJY+jqFYnxm3oUsddYxpovx1GksjMfqG8PTW+zfl9OxDMrFRfP
 yEx6g6asBgTe6z9oCIoM1uBN98Ed9ue0HYo/SU+yZ4SayATbYbs4JVias0iuuhDM0xi9
 +lCWRJfs4E06rLGUB0jJ1IGJGaBsdqmjmHMbLmF6y7bhuiVq8Br/yV+Fojj4RihTvrt9
 0QLjWkBQZJ/zv+L+Np1SK2z8O9U/Xkmr3woTlDnkbn1C/5JPKvYPIbKBa0ywKibEjYns
 IpL3esEVyMtReZeV80PQzO6pC3GcXELxGwErFkZ3d03cTaJ9O6YamzaA+0k1ZqGW9q3j
 LuqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782405113; x=1783009913;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=aeIBkMsWRS/DGQcr9sTXzFBrezzm1A4urK40dOoini8=;
 b=s9OdFPnLqs+MVuRCOqF1ZNK9FDTOH6gdbEUUo74qhIhRBR8LcDpeSgH/JOazEKMLAR
 WSzALDmME82VnMgQ+QCh15bWZork7M1YCc7C/+RbzWRglB8zimzzadk2JZ1MTw8jfvfb
 eSkp8FVv/ZAH+KgYK8TWethkcd17SyKRzEt2mV/rC8mEdqHBlW+uWutM2PcovLFoU2+c
 PZ01JiKAmSKg8YZSdDNvV1CMpmWi0O9nU6n8zVCfBVyMmASZqlAzr6iGaeyz25nPPd6T
 y5lPZyK69ydljtKWDPW/k3GvlU+6+2MEg9b0gnqRuRtcnvqY81Uc7P+XvhEMzJ9LizHK
 AQHQ==
X-Forwarded-Encrypted: i=1;
 AHgh+RqRxkYXHhlQjxZiLvRIC/LhZP6lqJYjM7K1SSZKs1owqT/uZWMCiep7OeBniiKnPkNbtwxQ55FpSoSQpDg+qB7WdoA=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxmUG19xrOKBpOzeooeOCueUP+7gZQWJ6KfUuWec87VNXkO3EaP
 VLGedlGGmqVJOQvpgp5UWIBhTkVOdHO5neG2RnziLqZ0woTLOHTqkPtAeAkHVyBq+reahUlc46d
 JI1yAKmvt+6ZJRNhtratGgA==
X-Received: from ejzk21.prod.google.com ([2002:a17:906:a395:b0:bf8:57f5:a9d2])
 (user=mclapinski job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:907:5ce:b0:be1:d908:ce23 with SMTP id
 a640c23a62f3a-c1205db4d26mr269610766b.21.1782403205261; 
 Thu, 25 Jun 2026 09:00:05 -0700 (PDT)
Date: Thu, 25 Jun 2026 17:59:54 +0200
Mime-Version: 1.0
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
Message-ID: <20260625155954.1948908-1-mclapinski@google.com>
To: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Added a new config option to allow offloading slow part of
 init_ipmi_si. Saves 100ms on my system. Signed-off-by: Michal Clapinski
 <mclapinski@google.com>
 --- drivers/char/ipmi/Kconfig | 8 ++++++ drivers/char/ipmi/ipmi_si_intf.c
 | 48 +++++++++++++++++++++ 2 files changed, 40 insertions(+ [...] 
 Content analysis details:   (-7.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.208.73 listed in list.dnswl.org]
X-Headers-End: 1wcmzf-0003Rn-2x
X-Mailman-Approved-At: Fri, 26 Jun 2026 03:54:03 +0000
Subject: [Openipmi-developer] [PATCH] ipmi:si: Add async init to ipmi_si
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
Cc: linux-kernel@vger.kernel.org, Michal Clapinski <mclapinski@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:mclapinski@google.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,google.com:-];
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
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime,lists.sourceforge.net:dkim,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C93D6C9F88

Added a new config option to allow offloading slow part of
init_ipmi_si. Saves 100ms on my system.

Signed-off-by: Michal Clapinski <mclapinski@google.com>
---
 drivers/char/ipmi/Kconfig        |  8 ++++++
 drivers/char/ipmi/ipmi_si_intf.c | 48 +++++++++++++++++++++-----------
 2 files changed, 40 insertions(+), 16 deletions(-)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 669f76000197..8419409dc3b9 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -67,6 +67,14 @@ config IPMI_SI
 	  Currently, only KCS and SMIC are supported.  If
 	  you are using IPMI, you should probably say "y" here.
 
+config IPMI_SI_ASYNC_INIT
+	bool 'Asynchronous initialization of IPMI System Interface'
+	depends on IPMI_SI
+	default n
+	help
+	  Enables asynchronous init of the IPMI System Interface.
+	  It speeds up the boot time.
+
 config IPMI_SSIF
 	tristate 'IPMI SMBus handler (SSIF)'
 	depends on I2C
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 9a9d12be9bf7..3e422c7df60a 100644
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
@@ -2174,25 +2175,10 @@ static bool __init ipmi_smi_info_same(struct smi_info *e1, struct smi_info *e2)
 		e1->io.addr_data == e2->io.addr_data);
 }
 
-static int __init init_ipmi_si(void)
+static int __init smi_init_scan(void)
 {
 	struct smi_info *e, *e2;
 
-	if (initialized)
-		return 0;
-
-	ipmi_hardcode_init();
-
-	pr_info("IPMI System Interface driver\n");
-
-	ipmi_si_platform_init();
-
-	ipmi_si_pci_init();
-
-	ipmi_si_ls2k_init();
-
-	ipmi_si_parisc_init();
-
 	mutex_lock(&smi_infos_lock);
 
 	/*
@@ -2271,6 +2257,36 @@ static int __init init_ipmi_si(void)
 		return 0;
 	}
 }
+
+static void __init async_smi_init(void *data, async_cookie_t cookie)
+{
+	smi_init_scan();
+}
+
+static int __init init_ipmi_si(void)
+{
+	if (initialized)
+		return 0;
+
+	ipmi_hardcode_init();
+
+	pr_info("IPMI System Interface driver\n");
+
+	ipmi_si_platform_init();
+
+	ipmi_si_pci_init();
+
+	ipmi_si_ls2k_init();
+
+	ipmi_si_parisc_init();
+
+	if (IS_ENABLED(CONFIG_IPMI_SI_ASYNC_INIT)) {
+		async_schedule(async_smi_init, NULL);
+		return 0;
+	}
+
+	return smi_init_scan();
+}
 module_init(init_ipmi_si);
 
 static void wait_msg_processed(struct smi_info *smi_info)
-- 
2.55.0.rc0.799.gd6f94ed593-goog



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
