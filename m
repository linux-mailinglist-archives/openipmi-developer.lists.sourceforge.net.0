Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1166DA9B495
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Apr 2025 18:51:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1u7znM-0007vY-LK;
	Thu, 24 Apr 2025 16:51:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1u7znK-0007vG-2S
 for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UcndkTp5legK2dTJBdv4J/lSCNqmghjWhrBEL4ikoYE=; b=To4TtaZuK5ntxFzWeS/0V8RT6U
 LbUQoEYmJRLwgHu/i/XVPIBc3j/uWQRxzj3SNhy0s92qjZEjip726a2G0qzXSSBEq09036WDDz/de
 FvzI0Vz1xmxU/fXsgR9YGBeMhxMTtDNK3i5/vVa0Yvfi1K80dsObH7oMtJiQMpluh7SQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UcndkTp5legK2dTJBdv4J/lSCNqmghjWhrBEL4ikoYE=; b=fmSsy9ORIU1JzYlOZ2e/gJBAaG
 F+jf0/bwgUB3TVJAmiT7VNi9JrqT5pdNrBQunoBq+F2/UmCaJAucHTvIUc85nISwzGrlYXaJXBxju
 c+HlWfu3uXSU1bMusBlh/BWnkHhhPRY7TUhDfIR2Ea1sTYwPUDgB6fOZGmCykftNbToo=;
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7zn4-0002ik-DE for openipmi-developer@lists.sourceforge.net;
 Thu, 24 Apr 2025 16:51:26 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-2cc57330163so847055fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Apr 2025 09:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1745513460; x=1746118260;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UcndkTp5legK2dTJBdv4J/lSCNqmghjWhrBEL4ikoYE=;
 b=ayuLPpklUz8xkWk+o/5xvv8QQ9G2Lxbs2n7fy+6xbM/sI9yxdREZi81tZkmzoS5vl/
 V7X7texVi0LbkF20MbDpkPSuvZxyUkKHf3AtQuDgpF1rzRMoQxvHUGmadvQXGIf+2lSm
 VHTXa7v6o2Qd+T0xSJK+NeHHKWUus0rTxWwsAgwC/85X+o6SH9/Vkv5gZOhxg5CJWRL5
 uzZILqkMlXwv2CP4fwiigdwB5qd2Vp2O51aAB8SEgFmLy6V8Dk9LfvsGVqw8ADhTJsTH
 I1qm6wLokNmvI+6UlIYTiMPHoHdvg3B7jO7XoSugSpAT4S2YEkUkvn7PqbwPWzlf1ohK
 hSHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745513460; x=1746118260;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UcndkTp5legK2dTJBdv4J/lSCNqmghjWhrBEL4ikoYE=;
 b=hYpCqKxRjE8tCiAxtPqoyitHYowoNfnvJ1jyFMWyxiKPc5SubSRS0MtaBDSvLL86FM
 mk0Dz/XXhCn9fN7hghlF1tiMM8TflyzGqCtEIT3+wtX4Ss6r9l9ma1h5QTvhxYmZz1hP
 VsU59qnL1RqtY8XOd2Us7XsTP2mShZd0p6N5NalvkG0GBwqvuA/U+6aiXDtKGdwsw3vZ
 WFdVdFmp7Fo8nXwt1iiXESEKLyL0n+sV6U4FKOSgHPCH1TnygDH41CRJe3iO5GZGHJEa
 mzyeLJq0tkAF44T4DDQMkPZnM/EGN0XSPpRgw1KFnaIvSH2LZPcV3hUExbQ7EOzUg/x8
 a24g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWm8RqA62ee49JKZQXZzeDYcdlcmwGTa39Nkgvxu9brjtFYsAIpJLGDUbSDNpNv21yFtmo5JesGInQOlrPwXBUtcqs=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YycrTLyb490AtBG6A42r+FnQoTUXxiIuKEohhkA2AcfhUiMTlXX
 9T0eVyVfVcrqtsC9I0qFa25NuxD1US2k/2vYMxKuLBJSrDU+M9mIzgc6Ezlvu5A=
X-Gm-Gg: ASbGnctQWJJP9X2tHEOL+cebw3A100olC+M+1466GJW8VQSky1edZXicEjrEZnN9hmE
 eDGUBGcpFAaG8F6piZ5rLZqUBgVuXJMBy4D/xFCXXNwxYUHNgCdEXJuvjbvhXM9bf9aiEGVb9JJ
 fddnjMeWusn5lsJ8h28fAh/nF/JGo1si7DfizxcPBwDMVqjkjhPX5cGgxwgolIJ9esqMrFgt2bm
 SBk21LZSLO6BpzwpplJu28EDM5yVPsegi23f1pxJAFkO0pmOaEsJiLnT7uQuaCvqAqtOfEMtUky
 Ed6PgFL1Lacm+Y4mrml9y9TIjQmbIzkOGu4=
X-Google-Smtp-Source: AGHT+IHvH5g1pUsqssiBfm6bR7wtFuGkcmkXmOuTpra93Is/ODb7u30DjUeZOPANFp/MMlEBeADP7A==
X-Received: by 2002:a05:6870:70aa:b0:2c1:aed2:abd2 with SMTP id
 586e51a60fabf-2d96e2ead17mr1943389fac.16.1745513459716; 
 Thu, 24 Apr 2025 09:50:59 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:af2e:7abf:8abe:2726])
 by smtp.gmail.com with UTF8SMTPSA id
 586e51a60fabf-2d973b7889esm368087fac.31.2025.04.24.09.50.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Apr 2025 09:50:59 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Rik van Riel <riel@surriel.com>
Date: Thu, 24 Apr 2025 11:49:55 -0500
Message-ID: <20250424165020.627193-19-corey@minyard.net>
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
 Content preview:  It is possible in some situations that IPMI devices won't
 get started up properly. This change makes it so all non-duplicate devices
 will get started up. Signed-off-by: Corey Minyard <cminyard@mvista.com> ---
 drivers/char/ipmi/ipmi_si_intf.c | 82 ++++++++++++++++++++++++-------- 1
 file changed, 62 insertions(+), 20 deletions(-) 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.53 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.53 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.53 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.53 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u7zn4-0002ik-DE
Subject: [Openipmi-developer] [PATCH 18/23] ipmi:si: Rework startup of IPMI
 devices
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

It is possible in some situations that IPMI devices won't get started up
properly.  This change makes it so all non-duplicate devices will get
started up.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 82 ++++++++++++++++++++++++--------
 1 file changed, 62 insertions(+), 20 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 062f92cace24..8837f85f2d77 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -2095,9 +2095,18 @@ static int try_smi_init(struct smi_info *new_smi)
 	return rv;
 }
 
+/*
+ * Devices in the same address space at the same address are the same.
+ */
+static bool __init ipmi_smi_info_same(struct smi_info *e1, struct smi_info *e2)
+{
+	return (e1->io.addr_space == e2->io.addr_space &&
+		e1->io.addr_data == e2->io.addr_data);
+}
+
 static int __init init_ipmi_si(void)
 {
-	struct smi_info *e;
+	struct smi_info *e, *e2;
 	enum ipmi_addr_src type = SI_INVALID;
 
 	if (initialized)
@@ -2113,37 +2122,70 @@ static int __init init_ipmi_si(void)
 
 	ipmi_si_parisc_init();
 
-	/* We prefer devices with interrupts, but in the case of a machine
-	   with multiple BMCs we assume that there will be several instances
-	   of a given type so if we succeed in registering a type then also
-	   try to register everything else of the same type */
 	mutex_lock(&smi_infos_lock);
+
+	/*
+	 * Scan through all the devices.  We prefer devices with
+	 * interrupts, so go through those first in case there are any
+	 * duplicates that don't have the interrupt set.
+	 */
 	list_for_each_entry(e, &smi_infos, link) {
-		/* Try to register a device if it has an IRQ and we either
-		   haven't successfully registered a device yet or this
-		   device has the same type as one we successfully registered */
-		if (e->io.irq && (!type || e->io.addr_source == type)) {
-			if (!try_smi_init(e)) {
-				type = e->io.addr_source;
+		bool dup = false;
+
+		/* Register ones with interrupts first. */
+		if (!e->io.irq)
+			continue;
+
+		/*
+		 * Go through the ones we have already seen to see if this
+		 * is a dup.
+		 */
+		list_for_each_entry(e2, &smi_infos, link) {
+			if (e2 == e)
+				break;
+			if (e2->io.irq && ipmi_smi_info_same(e, e2)) {
+				dup = true;
+				break;
 			}
 		}
+		if (!dup)
+			try_smi_init(e);
 	}
 
-	/* type will only have been set if we successfully registered an si */
-	if (type)
-		goto skip_fallback_noirq;
+	/*
+	 * Now try devices without interrupts.
+	 */
+	list_for_each_entry(e, &smi_infos, link) {
+		bool dup = false;
 
-	/* Fall back to the preferred device */
+		if (e->io.irq)
+			continue;
 
-	list_for_each_entry(e, &smi_infos, link) {
-		if (!e->io.irq && (!type || e->io.addr_source == type)) {
-			if (!try_smi_init(e)) {
-				type = e->io.addr_source;
+		/*
+		 * Go through the ones we have already seen to see if
+		 * this is a dup.  We have already looked at the ones
+		 * with interrupts.
+		 */
+		list_for_each_entry(e2, &smi_infos, link) {
+			if (!e2->io.irq)
+				continue;
+			if (ipmi_smi_info_same(e, e2)) {
+				dup = true;
+				break;
+			}
+		}
+		list_for_each_entry(e2, &smi_infos, link) {
+			if (e2 == e)
+				break;
+			if (ipmi_smi_info_same(e, e2)) {
+				dup = true;
+				break;
 			}
 		}
+		if (!dup)
+			try_smi_init(e);
 	}
 
-skip_fallback_noirq:
 	initialized = true;
 	mutex_unlock(&smi_infos_lock);
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
