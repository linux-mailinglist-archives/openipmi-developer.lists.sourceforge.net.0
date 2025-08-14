Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDB3B2684E
	for <lists+openipmi-developer@lfdr.de>; Thu, 14 Aug 2025 16:00:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bbmfZeR18yUNuUMCwdr5symqnQ44Z3psgf1SVe73IxQ=; b=f/58k0hFp2XOeEvrMdUa92EjC3
	ymCRy5GMPCEw8Vzl7fRGn0/fCmsqzSCfy1pVNBqPxe3PODbta3xKCduKgjNUuH1xOq+XA8rH7avxf
	DD6TDVIQuVSXgmt243/G2lLepqjYnSOgcGWMvsATpswWUPsnxPNJBhvrrWaYjNn/Wvf8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1umYVE-00049w-Do;
	Thu, 14 Aug 2025 14:00:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1umYVD-00049k-CC
 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 14:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bez89QiTFdju+Ws+aOquikiynXfItHLwNP60QHz5yW0=; b=feF4TnnqwYbN+Lcg1OKo2w/Gwf
 JHAIiAiZMlQCHuAx7HP5FyBL6QlJ+J9wHS50pfzVaLaVkdUPfQygoUhadwhZNXeQsRGe9vc8QIwxB
 lmU1X1Nyi2i6FkchxQmVSvwIyZkShezObSg2QJRD526l7Y2FDcylkxQEeg1HvuIGeyrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bez89QiTFdju+Ws+aOquikiynXfItHLwNP60QHz5yW0=; b=J
 +wEVGOEY5/xnJMhQrTt1r2C8JPFgL5uKAgNvccb+a206LZAY92J0IM6rUGUONXzsctDhwurZX50GQ
 qd5Azi0/vClm250zucMgdQTv0ww6GS3llthvFw55YvJ+Rb+Rzyl3kQCLeiNZeb13YP+uRFtZhhnAr
 x2mN1Mo1wUq6oHS0=;
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1umYVD-0006GF-M3 for openipmi-developer@lists.sourceforge.net;
 Thu, 14 Aug 2025 14:00:24 +0000
Received: by mail-io1-f48.google.com with SMTP id
 ca18e2360f4ac-88432ccd787so56247039f.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 14 Aug 2025 07:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1755180013; x=1755784813;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bez89QiTFdju+Ws+aOquikiynXfItHLwNP60QHz5yW0=;
 b=i88hJ7s+sPxmDZ8ZTvzmcPrgge2cxBto+CVu6HnPbx+K5/GFeF7v+l/RxuOGIEH0kv
 TDaRyqlBkFpGm3ovmXbq5lxthMLU0iWP9m4LjmUz/wnjsoB1EP5o5ikAs5dHO2aU8cRO
 8+cfZtAMR4ML+oIyz7ZBYg0LDR8tBoB6vD8PqLpzJII5/TOMvAKL680yDFIVjB26LB1+
 60Dahoki+GKikST/8RVABdaTCnc6bopYsROcn0aM1vHaNSaLZEovpJ9PrbR6T/Pqr4Sg
 EBK+pAezbqwwS5aAv4prj2yWfDzZ/AnlK7Fu/U/7JOV49NYCmgDM2+dVYt0A82f8f7wk
 qVVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755180013; x=1755784813;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bez89QiTFdju+Ws+aOquikiynXfItHLwNP60QHz5yW0=;
 b=HNQi9xw9Ie0Y0awZAwVYVuoQA8ToydzhQyEqiwssHHgvCpeo69FbN9y5T3I4DxhaLv
 TI1kpTBYvpt28mAQmKBu65dsPVUOHuRent81Q3WnEr4tSmq3lPjrP1cVvKCONBauvJOG
 2lNJxDuctrlwDXKub2s6pdU3rGAFmqVtwx6O2+yGQr5wd3i49YgjQFadUMlyfqS/K/La
 d03Q+Z2p1EAtySsONb2WjOU38W6Y0VAv2PuveNDEq+DjIzsqrzKigbASqG+v8g8S6swN
 LuYAiCedngFt6eJuTR1HfqH4dfYl9LhKhafy+xiVYAvvWZi2kpt2Zdl3wBcZzE5PO3cD
 xYZA==
X-Gm-Message-State: AOJu0YyouLG7Mcqqo483R98NGMsh3PLZPGsuuaYFo8sBoVCwkOJsw4hb
 FDkWDY2gT5xOCtIYpdgP8x/CuSenFimR+McxaLiAdRJsgGpQflkvdPi0IccBGZyqcIEvwTriu/U
 4teOvTWg=
X-Gm-Gg: ASbGnct0sidIpvbo6nz9PS+g25ABybVhZHOqIaYXxjpQTD1f5al9myB2JomfLbjQ6ug
 um6Pey4MLrMg9HLT0pazHzrLLPfOozMRHYuz2BRr33sggfuDK5Y4cjMsGHKA0DpbpEBa/X6Vdaa
 kM5AQgNxkB8CxBTJY8d3+Tkd+3e4wlKuOBMkC/NM1CQqeVQSS6ssnPQC5lHSFovZmYZPGOSRyeR
 KtKfn081wlt7XNrrYNf+qCq/uF31qco0ExrxO15+tfLr6jTr8kqAn2FtkWfP83LWX+oydb0ExpV
 PpUH1+2APYbUnXGdrJtvMvHMZckMvk9yGl6GM5UPAM82DYKrqGVrTP3eyd/8FF9UGkY5But1hwo
 cNYKrqL72YD1YXiln
X-Google-Smtp-Source: AGHT+IEO1JHwg9zGYjKtzwEZBUOLPmDQBiQRRtpqzK6t3RSfFt+Y6rp6Ipfo55znen5x4wOmrmaLPw==
X-Received: by 2002:a05:6808:244c:b0:434:d9f:f8f8 with SMTP id
 5614622812f47-435e0523115mr1793714b6e.37.1755179663273; 
 Thu, 14 Aug 2025 06:54:23 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:5997:2a79:b452:b907])
 by smtp.gmail.com with UTF8SMTPSA id
 5614622812f47-435ce856832sm1121268b6e.23.2025.08.14.06.54.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Aug 2025 06:54:22 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Mark Bannister <mbannister@janestreet.com>
Date: Thu, 14 Aug 2025 08:51:37 -0500
Message-ID: <20250814135419.616256-1-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If the BMC is in a state where it is partially responding
 but not really there, the driver could go into an infinite loop trying error
 recovery over and over. The device should eventually come back, but we don't
 want to be continually retrying. Add a delay between retries. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.48 listed in wl.mailspike.net]
X-Headers-End: 1umYVD-0006GF-M3
Subject: [Openipmi-developer] [TEST PATCH] ipmi:si: Delay when an error is
 discovered in error recovery
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
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

If the BMC is in a state where it is partially responding but not really
there, the driver could go into an infinite loop trying error recovery
over and over.

The device should eventually come back, but we don't want to be
continually retrying.  Add a delay between retries.

Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_kcs_sm.c  | 4 ++--
 drivers/char/ipmi/ipmi_si_intf.c | 9 +++++++--
 2 files changed, 9 insertions(+), 4 deletions(-)

Thanks for the bug report and debugging info.  I think I know what is
going on, I've attached a patch that should hopefully fix it.
Basically, it looks like the BMC is alive enough that it sort of
responds to the host, but not alive enough to actually complete a
transaction.  The driver needs to not immediately retry in that case, it
needs to delay a bit.

It passes all my tests, but the situation you are in would be hard to
manufacture for me.

Can you try this patch?

-corey


diff --git a/drivers/char/ipmi/ipmi_kcs_sm.c b/drivers/char/ipmi/ipmi_kcs_sm.c
index ecfcb50302f6..20f3611c5444 100644
--- a/drivers/char/ipmi/ipmi_kcs_sm.c
+++ b/drivers/char/ipmi/ipmi_kcs_sm.c
@@ -467,7 +467,7 @@ static enum si_sm_result kcs_event(struct si_sm_data *kcs, long time)
 		if (state != KCS_READ_STATE) {
 			start_error_recovery(kcs,
 					     "Not in read state for error2");
-			break;
+			return SI_SM_CALL_WITH_TICK_DELAY;
 		}
 		if (!check_obf(kcs, status, time))
 			return SI_SM_CALL_WITH_DELAY;
@@ -481,7 +481,7 @@ static enum si_sm_result kcs_event(struct si_sm_data *kcs, long time)
 		if (state != KCS_IDLE_STATE) {
 			start_error_recovery(kcs,
 					     "Not in idle state for error3");
-			break;
+			return SI_SM_CALL_WITH_TICK_DELAY;
 		}
 
 		if (!check_obf(kcs, status, time))
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 8b5524069c15..3f4747ae5ddb 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -790,7 +790,10 @@ static enum si_sm_result smi_event_handler(struct smi_info *smi_info,
 			 */
 			return_hosed_msg(smi_info, IPMI_ERR_UNSPECIFIED);
 		}
-		goto restart;
+		/*
+		 * If the device isn't working, we want a delay before
+		 * trying again.
+		 */
 	}
 
 	/*
@@ -888,15 +891,17 @@ static void flush_messages(void *send_info)
 {
 	struct smi_info *smi_info = send_info;
 	enum si_sm_result result;
+	int loops_left = 10000; /* Don't try forever. */
 
 	/*
 	 * Currently, this function is called only in run-to-completion
 	 * mode.  This means we are single-threaded, no need for locks.
 	 */
 	result = smi_event_handler(smi_info, 0);
-	while (result != SI_SM_IDLE) {
+	while (result != SI_SM_IDLE && loops_left > 0) {
 		udelay(SI_SHORT_TIMEOUT_USEC);
 		result = smi_event_handler(smi_info, SI_SHORT_TIMEOUT_USEC);
+		loops_left--;
 	}
 }
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
