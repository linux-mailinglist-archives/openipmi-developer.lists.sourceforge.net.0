Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D6BB1DFB3
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Aug 2025 01:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXLi6tTvjSZtslKYAkbhzrp5viVH8Lk4Icws3mlDH1E=; b=hVY6eIHZTVYdcrpbjJ6Md+vW4B
	84qBgeC7vVaHncP/AV0jupICGlfPXbkcL6xXa6qMx8LeJrZyUQjTOXZT/an8mhN3tOESH9neRFuxW
	sGzY8H1qK6z8g58Fj17GW8H9xtPyDzolhz4Sh4frn9D+RrdNGmRE/3CzMzkZhUQizjUg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uk9hT-0006oO-PW;
	Thu, 07 Aug 2025 23:07:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uk9hS-0006oH-Bm
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IdSyWAAmgtvWxwCCBM2UNaIrykEqdMEI7qno43QP/C0=; b=Yye+V8NotCQKycf5QBgIWvWxmD
 YZgHD5ci84Pltn+4XbLt+4KPdbWkUiLCpkjprwHqBQjkL/Hr4kI2SpoplY0K2MpVfmdkJOoU1dtpX
 bom/qE3PfN2Bd2Cl/osaYz16vAS+7bPVmQgRjLHxP/FEe8SpX3fNBhVw/FTbmOYqfwjI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IdSyWAAmgtvWxwCCBM2UNaIrykEqdMEI7qno43QP/C0=; b=HgUeTShnPWE7mkAg8vYAj8FxAm
 GwxTIfQpgyne5cQPIc4DMt+BAZWcHN7oUnnAKI4/KUUQcfJljkBVrFlRNlhzDNjYMcO1YHHiyKqsg
 jRNSEEQ1VHyhyb9gIiVDkDkeqOOVkoy358zKcfrhESuZRMH393XouzOrjIl1/9yShj5U=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uk9hR-00030C-Ss for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:07:06 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-742f96d9142so842822a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Aug 2025 16:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754608015; x=1755212815;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IdSyWAAmgtvWxwCCBM2UNaIrykEqdMEI7qno43QP/C0=;
 b=d1iqW8XjtELfh/ZjR9fcV8ynNDJHIgMeIvdieDh4m0EU8Znw8SVUTIxVNBHxi341Io
 EBPYJZnwjfH5cyfj1BXnaKBjZHd+uzOsrGJAooUCIHabaGPMcImlJkhRPJWzlZJvTuXB
 8yTRuNet5XJn6uNWsVTBoFIuVq2Daa6/dALbLDOIoDSJ8jIotWWrp6D5HTSUjrEE29Wk
 mOEdeR0lxR/PKx5SBOX6PjjfxICBSuhZsH2qNnMY26CHlrdx5g/Mp2JfWGAJJB84Qs/X
 9HdJFoOnnCcNUk7urfCCeQzyZf0Xpgs1LJuiDUO79/xZBd2PwG8WB9CNyD400i2KbRgr
 UtPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754608015; x=1755212815;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IdSyWAAmgtvWxwCCBM2UNaIrykEqdMEI7qno43QP/C0=;
 b=FpDjk++CBTrV+IfX0xLnqzV1kqdYYDuh37mTdNBNOtzOn3QRVcxdA0YnlJucP85lTA
 tNogAkeQ63z6UB65P3OhNtdqFMLEJzx2v0Qh9IHKfXTWQlOXjC8x6QjmObtTCcS3AIws
 280uoVf3Il/jS5baIPB/VD+uXAvWCAv/1N4nva7Sz0cXRlvSQzPSXwKYrZ0WJOlHFTSS
 e6tliLWNTHZBm4NZbNwAQanneFXkpna8JmJwZzjEdg9XBfdrXEMYiX+bUyefCh0faqIn
 PGHK2tc/b7HXo77xUNJQr0h4ICjvfy2cXX8MItE/GrCwSYcFrx49Q0yt+7hBoB2MxGk6
 8g+A==
X-Gm-Message-State: AOJu0YxSikOOL/mEHRYrU6K5WjMP2oiudpcaF4MsYc1ZVxr92KVKlhxi
 2OlhGhfJNfiP9hLCiKw5jmRUCSGsXK40OupNtAxgJeN3gdDitYNRldMQKPuFYa83/add9M/idMj
 jUA1m
X-Gm-Gg: ASbGncuRDvddXmqC1y3B96yLVeHYLe7+bWF5Dw/epp+Cz14eJRnz8cb9wxrjf2pNc7Q
 gebSRvj/1x/lOoovG3n5Ifrtnw/wAKdir65kYE7Sx4KJG5GOACD4ZVjNjbWSK8scvURQk3J5bBn
 wogR0tRvP2Co3zcFcHGQmjzSSZXmNggau0KJMUy41NEKYyhcUzrLzjoPG+YhAGqJr+/+JjPskn1
 WdtSHdoJZYBqrkvU+PeFS8aAy2R8xDcMXhblbFbGom5D7Bcq8TO+oCq+ARCK3+o6iUIt62BhGWF
 nWl+et5QVCBvFQ5Q07fwqvIPZe/JdE6fKMmogAtKYANZSd0lSEp/YpDH06q+VabwWUfLzylYRl1
 KUsRUSJi3idlqm30Z
X-Google-Smtp-Source: AGHT+IH7Y8AzaYShbuhS5vqbSZHUaQieOK8Cs1pHFVec6IaNCbe50DEYijiU0MeA9Ur94GZnE/WR2w==
X-Received: by 2002:a05:6830:60db:20b0:73e:9fea:f2bd with SMTP id
 46e09a7af769-7432c92fcfcmr399306a34.26.1754608015042; 
 Thu, 07 Aug 2025 16:06:55 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:e698:accb:897b:ca29])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-74186ca9887sm4248915a34.4.2025.08.07.16.06.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Aug 2025 16:06:54 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Frederick Lawler <fred@cloudflare.com>
Date: Thu,  7 Aug 2025 18:02:32 -0500
Message-ID: <20250807230648.1112569-2-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250807230648.1112569-1-corey@minyard.net>
References: <20250807230648.1112569-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This allows later changes to have different behaviour during
 a reset verses a firmware update. Signed-off-by: Corey Minyard
 <corey@minyard.net>
 --- drivers/char/ipmi/ipmi_msghandler.c | 42 ++++++++++++++++++++---------
 1 file changed, 30 insertions(+), 12 deletions(-) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uk9hR-00030C-Ss
Subject: [Openipmi-developer] [PATCH 1/4] ipmi: Differentiate between reset
 and firmware update in maintenance
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
Cc: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This allows later changes to have different behaviour during a reset
verses a firmware update.

Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_msghandler.c | 42 ++++++++++++++++++++---------
 1 file changed, 30 insertions(+), 12 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 8e9050f99e9e..f124c0b33db8 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -539,7 +539,11 @@ struct ipmi_smi {
 
 	/* For handling of maintenance mode. */
 	int maintenance_mode;
-	bool maintenance_mode_enable;
+
+#define IPMI_MAINTENANCE_MODE_STATE_OFF		0
+#define IPMI_MAINTENANCE_MODE_STATE_FIRMWARE	1
+#define IPMI_MAINTENANCE_MODE_STATE_RESET	2
+	int maintenance_mode_state;
 	int auto_maintenance_timeout;
 	spinlock_t maintenance_mode_lock; /* Used in a timer... */
 
@@ -1534,8 +1538,15 @@ EXPORT_SYMBOL(ipmi_get_maintenance_mode);
 static void maintenance_mode_update(struct ipmi_smi *intf)
 {
 	if (intf->handlers->set_maintenance_mode)
+		/*
+		 * Lower level drivers only care about firmware mode
+		 * as it affects their timing.  They don't care about
+		 * reset, which disables all commands for a while.
+		 */
 		intf->handlers->set_maintenance_mode(
-			intf->send_info, intf->maintenance_mode_enable);
+			intf->send_info,
+			(intf->maintenance_mode_state ==
+			 IPMI_MAINTENANCE_MODE_STATE_FIRMWARE));
 }
 
 int ipmi_set_maintenance_mode(struct ipmi_user *user, int mode)
@@ -1552,16 +1563,17 @@ int ipmi_set_maintenance_mode(struct ipmi_user *user, int mode)
 	if (intf->maintenance_mode != mode) {
 		switch (mode) {
 		case IPMI_MAINTENANCE_MODE_AUTO:
-			intf->maintenance_mode_enable
-				= (intf->auto_maintenance_timeout > 0);
+			/* Just leave it alone. */
 			break;
 
 		case IPMI_MAINTENANCE_MODE_OFF:
-			intf->maintenance_mode_enable = false;
+			intf->maintenance_mode_state =
+				IPMI_MAINTENANCE_MODE_STATE_OFF;
 			break;
 
 		case IPMI_MAINTENANCE_MODE_ON:
-			intf->maintenance_mode_enable = true;
+			intf->maintenance_mode_state =
+				IPMI_MAINTENANCE_MODE_STATE_FIRMWARE;
 			break;
 
 		default:
@@ -1922,13 +1934,18 @@ static int i_ipmi_req_sysintf(struct ipmi_smi        *intf,
 
 	if (is_maintenance_mode_cmd(msg)) {
 		unsigned long flags;
+		int newst;
+
+		if (msg->netfn == IPMI_NETFN_FIRMWARE_REQUEST)
+			newst = IPMI_MAINTENANCE_MODE_STATE_FIRMWARE;
+		else
+			newst = IPMI_MAINTENANCE_MODE_STATE_RESET;
 
 		spin_lock_irqsave(&intf->maintenance_mode_lock, flags);
-		intf->auto_maintenance_timeout
-			= maintenance_mode_timeout_ms;
+		intf->auto_maintenance_timeout = maintenance_mode_timeout_ms;
 		if (!intf->maintenance_mode
-		    && !intf->maintenance_mode_enable) {
-			intf->maintenance_mode_enable = true;
+				&& intf->maintenance_mode_state < newst) {
+			intf->maintenance_mode_state = newst;
 			maintenance_mode_update(intf);
 		}
 		spin_unlock_irqrestore(&intf->maintenance_mode_lock,
@@ -5083,7 +5100,8 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 				-= timeout_period;
 			if (!intf->maintenance_mode
 			    && (intf->auto_maintenance_timeout <= 0)) {
-				intf->maintenance_mode_enable = false;
+				intf->maintenance_mode_state =
+					IPMI_MAINTENANCE_MODE_STATE_OFF;
 				maintenance_mode_update(intf);
 			}
 		}
@@ -5099,7 +5117,7 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 static void ipmi_request_event(struct ipmi_smi *intf)
 {
 	/* No event requests when in maintenance mode. */
-	if (intf->maintenance_mode_enable)
+	if (intf->maintenance_mode_state)
 		return;
 
 	if (!intf->in_shutdown)
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
