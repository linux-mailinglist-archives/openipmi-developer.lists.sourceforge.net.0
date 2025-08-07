Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C17CB1DFB7
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Aug 2025 01:07:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xHuD7ApqRLIXAbmiblxyfXSgewmIUVLcNtbUK1+s4Vc=; b=K/bsNjizykjQSP6uK0yndvU1R4
	D91mFikEV66mrLm0aMwHo6OUQVU3XCSrsntv6tXYHHlxmDdiG+RIF4UNOr7sMTTwnv9TwXW5+oRUc
	iYLDUmyFryw7NYu4xv2vzRiAd1Djn1OAn5XQ2F116M1RouPKG5UIqN4z2tAHwnMFaUa0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uk9hY-0000ke-Ji;
	Thu, 07 Aug 2025 23:07:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uk9hX-0000kX-1W
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aTujPee3e+IrMHsfbNa64QplGpBbUeVdtGMoE8o/AV4=; b=VGrrmKjaLtvAVOw8jL/CLAd2Sz
 3CklFCkf+vSeq7TNEltbVkZzHvMyBONX+DdoO+JOgeQZeO+i9/5EA14QJxREV3ZNw+fkAkaun7h/u
 5qXKxD4zFVQADZKoVASZSA+k8SXGqnOTj58dAatUfrETpsHYmS4q5mnDbDeWt8KYf6BY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aTujPee3e+IrMHsfbNa64QplGpBbUeVdtGMoE8o/AV4=; b=CG3VGc7x93HdxWNWV6rxN2+Hac
 +yb8Gz4H1PZ+zA5klB90mIDdlNQJ+dmsHwbvO9Qc1cRvU7BSlTnNWVPSgH/lGMLmkguf0p8NqIJVU
 v4gXP0MwlZv5BGWLuM0cWK/aOHMYKUU7CGH9J2C0twQD2VX1/mu+AcNkcIqiJtaIHwwM=;
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uk9hW-00030a-MP for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:07:10 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-30bb82abd36so865965fac.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Aug 2025 16:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754608020; x=1755212820;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aTujPee3e+IrMHsfbNa64QplGpBbUeVdtGMoE8o/AV4=;
 b=kcG3JL3iY+jG6ysAkMNq0ustmRK1yNYgD4NHVhv0wNdgn8eTt9CQomBzYcYEIDwWnp
 n1PoSBOm/zpKH6b8BXThtFRkfpAaJjLoKje9NE0PFmw1ROwyy01Hdr3pAf2On+H5XzII
 Cb+F78GNTt22KenF6Q00g18U25JRhySvhb1Mxf3YtzEMtvaGnGJMwnmyoJQEX2kCjBea
 W350nmgcOmvv8cMu4gD60UIob0IJx2jZQ/b6fbiwzHAqm3fvPMU+pSIfSSjLbmQQz8+p
 /Y/vH3D7FhC6d59eKRQPjYK4KoG3hMhkPjhrhuyY5ttlHLSNt3XcCp9M85/08yawzHBD
 Jvfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754608020; x=1755212820;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aTujPee3e+IrMHsfbNa64QplGpBbUeVdtGMoE8o/AV4=;
 b=ikKqTEcfzEHsKhEDoKoFfsyOGit0vlk9QlsFd90MnZgbXvRaGqvpR7CtM6IDCFJwUF
 L2KHgq6Zq0AD1qV7vaa4IhUa6ON7LRtuwzTCJdfItL4OxpMtYaRclZPuls9+/1DPmKkA
 mfe2AvIwXAuVLBtcgI/UiK/HzR4pXxl85RfVF1gm4WgbHLyY1kJhuC2e7R/wVkj0Jj/w
 mGdAmgxWcMatiBVKZejCAbrFxHjpG1hLovnS1D3CcxvDMsA8Lb5+3RlBYJG3BsRuK6cJ
 kqRYZX3gVnONSHN0ZqTbex4U0zANEpsYqHGCoYwORxDKD1Hte+29aQ4QaNWbmJlWY9Yi
 cz1g==
X-Gm-Message-State: AOJu0YxmfUZwf7BlZgBpZkzILN4u2T6DkUBFzi+bFDYbFzhgLZbMRxvF
 o665n2gr5QLOG0Zpq9Y/+cadpk9ARq1kVX3W6Zk66t8A6To/xZoZU40iXeAq4AYBm/4=
X-Gm-Gg: ASbGncsWfGEGeSDZ/2+tfWmgEOkLyZson0LeVEIJklKV/sFDL7BZeqvMROmNUHoxSKF
 hTxQyY4uqSSsmCEo6Fyo/AZyymlUg/PFyEnKUcVF7UouuvBMKabbS0IbgoMu0ycPEXNt3tKqGIc
 jXjkTQ8l2O4hJenop/7e1nH3Ck2OHByqHcb9hJGR6OlhCR3vXY6LhNQFSK1cfpSQsmzYzVxH19Q
 ebf0Y+AJCsaKQYCn63HEsXlVQUh//NI9oq9oCcTs5tS/xVJSWr59ZERxe05TqfIIieP84hO2W87
 3+7tyKV7F3W5OvXL5q5PhnbuKoHZXHwhtTNjGbWtJIglg7TG+jvZuW0mYwzt0TqEcQ3e30KsuzC
 oqeECDJkfS0UB4Rn1
X-Google-Smtp-Source: AGHT+IGqT8rMNHXs7hE7uZROM2POhObfELF4WRYLa0cBDDDUBtGQiu/oyg2rVykvWsU1gzaiXy+CSg==
X-Received: by 2002:a05:6870:15c8:b0:30b:a81d:b56 with SMTP id
 586e51a60fabf-30c21397d31mr710798fac.38.1754608019939; 
 Thu, 07 Aug 2025 16:06:59 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:e698:accb:897b:ca29])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-74186d912e6sm4278144a34.29.2025.08.07.16.06.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Aug 2025 16:06:59 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Frederick Lawler <fred@cloudflare.com>
Date: Thu,  7 Aug 2025 18:02:35 -0500
Message-ID: <20250807230648.1112569-5-corey@minyard.net>
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
 Content preview:  Now that maintenance mode rejects all messages,
 there's nothing
 to run time timer. Make sure the timer is running in maintenance mode.
 Signed-off-by:
 Corey Minyard <corey@minyard.net> --- drivers/char/ipmi/ipmi_msghandler.c
 | 8 ++++++-- 1 file changed, 6 insertions(+), 2 deletions(-) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uk9hW-00030a-MP
Subject: [Openipmi-developer] [PATCH 4/4] ipmi: Set a timer for maintenance
 mode
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

Now that maintenance mode rejects all messages, there's nothing to
run time timer.  Make sure the timer is running in maintenance mode.

Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_msghandler.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 5ff35c473b50..786c71eb00f4 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -50,6 +50,8 @@ static void intf_free(struct kref *ref);
 static bool initialized;
 static bool drvregistered;
 
+static struct timer_list ipmi_timer;
+
 /* Numbers in this enumerator should be mapped to ipmi_panic_event_str */
 enum ipmi_panic_event_op {
 	IPMI_SEND_PANIC_EVENT_NONE,
@@ -1948,6 +1950,7 @@ static int i_ipmi_req_sysintf(struct ipmi_smi        *intf,
 				&& intf->maintenance_mode_state < newst) {
 			intf->maintenance_mode_state = newst;
 			maintenance_mode_update(intf);
+			mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
 		}
 		spin_unlock_irqrestore(&intf->maintenance_mode_lock,
 				       flags);
@@ -5136,6 +5139,7 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
 			    && (intf->auto_maintenance_timeout <= 0)) {
 				intf->maintenance_mode_state =
 					IPMI_MAINTENANCE_MODE_STATE_OFF;
+				intf->auto_maintenance_timeout = 0;
 				maintenance_mode_update(intf);
 			}
 		}
@@ -5158,8 +5162,6 @@ static void ipmi_request_event(struct ipmi_smi *intf)
 		intf->handlers->request_events(intf->send_info);
 }
 
-static struct timer_list ipmi_timer;
-
 static atomic_t stop_operation;
 
 static void ipmi_timeout_work(struct work_struct *work)
@@ -5183,6 +5185,8 @@ static void ipmi_timeout_work(struct work_struct *work)
 			}
 			need_timer = true;
 		}
+		if (intf->maintenance_mode_state)
+			need_timer = true;
 
 		need_timer |= ipmi_timeout_handler(intf, IPMI_TIMEOUT_TIME);
 	}
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
