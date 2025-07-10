Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C23B002AF
	for <lists+openipmi-developer@lfdr.de>; Thu, 10 Jul 2025 14:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-Id:MIME-Version:Date:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w7K1YdSYX7MhthUGRRU2Tfoy+NZTojeVjus00A4JLkQ=; b=CiYYvHODpouFz3yeY5XHs6/tWx
	8lQ/tkRse/WajeA8QZ4FCBHT9V1lDOpgPfKuHohNOTQ28Asgqzl1yy4hTT0cLZ87XHesqgwv3C5PR
	a8Csa6MtnYCYl/o+tJs8WlyrsRapRgY6Hbo+RxnlPIAQYiFPDfJMly13MElKQQTi2suQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uZqqS-00041E-84;
	Thu, 10 Jul 2025 12:57:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <breno.debian@gmail.com>) id 1uZqqQ-000417-GD
 for openipmi-developer@lists.sourceforge.net;
 Thu, 10 Jul 2025 12:57:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6T1UqcynHtFUXc4FYXURNMvle/T+fvFMB6mekqNHT30=; b=Y/aH350h0nrO8GAixQFK1orlJ/
 rDNcbjL4J1GuZ5l/y2VvgXciCljbAlKgoujhRENod/H91NtPWZVKqtAJSEw0xV/kiKzAP+ldaWrK7
 9MiAGmWHCeajVIlCuKtic21B3EvqCu1PWrRiQ2t8o8cBZf2RHjghblYC8kBJmjsc7kAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6T1UqcynHtFUXc4FYXURNMvle/T+fvFMB6mekqNHT30=; b=m
 VkLk1f7AJ/o2Z3Tui9qOOVkZ+6KH7byx2BMXWOV466aeUK/HO5xM7chreVqS3U3hZ7ISRwJQj/OTH
 hkk3dSb5wijMJKG9eYKYOJrX0dGp+2JagL024dUVYtdM8753+irGY6dnKdTJa/XgVSSNTOCJnZj0F
 8Rlh0MuCro0k22oY=;
Received: from mail-ej1-f54.google.com ([209.85.218.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uZqqQ-0004GD-3g for openipmi-developer@lists.sourceforge.net;
 Thu, 10 Jul 2025 12:57:46 +0000
Received: by mail-ej1-f54.google.com with SMTP id
 a640c23a62f3a-ae3a604b43bso159116666b.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 10 Jul 2025 05:57:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752152254; x=1752757054;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6T1UqcynHtFUXc4FYXURNMvle/T+fvFMB6mekqNHT30=;
 b=Wey4+0P7Mq5TNnxIqt8shXagdcEPbN5Wj4p4c4pinI3XIhguDxn0OyU9rV6hkh+Mkx
 5mWXXmzVzLEqR9NHA+yFLsz5jJe+TyOapoEosSiBRGf7+8seII3k8kd/Udh5ssGPtB2o
 MRbQ/7QQlrzGMtiANDvYTS/NFeCn+55EWAfVmGd2LIyFpBp12kl8IaTh9ezaeMgO2CQi
 1z/WVQ+vjob+11BYdWLBMIWONQgys9pdQTeA9mj9d4C5hmBtCXf5nIkXhQP3wE9fS34t
 HPswXeRby42ZWvfFObwZ2+lNl4xNi8PkDIbX+KRKF4K+rmW8cDdLDjbcNWumGxquxShQ
 kclg==
X-Gm-Message-State: AOJu0Yw6eXweFOduS7L6yqOS1oz227wkbsRduoJbi6lUq0Xgvoph8Pc0
 +5/mR0IgK5UM9F8ZN5a0b+hByI3FBaU4JhPauOBjV3x+v/kY5RWh7YXN
X-Gm-Gg: ASbGncsavPQmG856/y2K1c1GefI5MF5LEX4HItfyyYy0gsWr2jn4XumOpnpoly7yWJn
 w07wwIv2HtZdHE5pzNJaXFSuGVvhnScFGd8nvpBRk7q/Ao6qe4nZgwsv6vhBERlh5SxWSHvJ5VO
 6CHG7lAiODAykVM20aE76ex2/T8gjjsXix0lJpsWf/yGAu686wZpj8tu0VOHWlhnnRYnS8tYJ5d
 4pZeW0NqeynmIC56UPXTAZeztLtykfc6KvcowzTG4RcGYGmNTPAj0fQJj0zoExvX2TtUflPH3g5
 giGs2HMESaRmiFbGXLSL8o8UBImFg+/NY8Uuy0kzqNkTcdqeyofv
X-Google-Smtp-Source: AGHT+IFx2GBiW2dFdLmLTmCtIWGb9kwIB+roe209Q1FBkVTtAkwn+/3L/ntAoRMiPZr2z+G5ZNq1jA==
X-Received: by 2002:a17:906:d7d0:b0:ad5:27f5:7183 with SMTP id
 a640c23a62f3a-ae6e124f672mr396710566b.39.1752152254217; 
 Thu, 10 Jul 2025 05:57:34 -0700 (PDT)
Received: from localhost ([2a03:2880:30ff:3::])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae6e82e3a8csm127271066b.154.2025.07.10.05.57.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jul 2025 05:57:33 -0700 (PDT)
From: Breno Leitao <leitao@debian.org>
Date: Thu, 10 Jul 2025 05:57:26 -0700
MIME-Version: 1.0
Message-Id: <20250710-ipmi_ratelimit-v1-1-6d417015ebe9@debian.org>
X-B4-Tracking: v=1; b=H4sIALW4b2gC/x3M7QaAMBQG4Fs53t+NLWbsVpJMneqlL1sS6d6j5
 wKeB0UztSDKg6wXC/cNUVwl6Oe0TWo4IApqW3sbnDU8VnY5nbpw5WmCujR6F2zvAyrBkXXk/Yd
 N+74fRYaHumAAAAA=
X-Change-ID: 20250710-ipmi_ratelimit-7e1af5170c57
To: Corey Minyard <corey@minyard.net>
X-Mailer: b4 0.15-dev-dd21f
X-Developer-Signature: v=1; a=openpgp-sha256; l=1533; i=leitao@debian.org;
 h=from:subject:message-id; bh=aZXwepTMm1SjtaRRE6w1PAlyV06drJpdNhaXFbURQAQ=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBob7i8mMcbWKBbQRzsMwGo3MdO4dyywHAJpylNN
 o7BmZJCsXCJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaG+4vAAKCRA1o5Of/Hh3
 baijD/9DqFY5fctNGRrjrpvXXBZid/tDZ7qSnF2Ch6x8EnVgi+6AS65tjNJ41F3PiH1NH0fGbuC
 9RtEg2V0x69CYd9hw9/NsmlHfOB3Z2NNdrARms0xTfUfQ4eQDolJgda+XXsOQAIIfIAKPSZwJQG
 BkpuNptNnd3MegSZ9hTaNekVen5JPJcPtPUERqqhDboHV/jSELNfeAaA48zg5mZnpRpWpqJMTJY
 oomoL51qQPZno/tdr3WEDvasDviSTx8v3TiVB5P2hJPRllrFiiPXHC285HqX4sKWR7FsmWnukV6
 /HBlv4qV2mtjFPyXG22sBhseCsbVXNSRUNjOVU3iqSp1nDvoyXdq10goeDoxll/n2zfBdsowiJG
 x2r5FRX6GZjjGgeMJZGnU+ywbi7XVJz4m7liP5mnPhQtoTUsG1kYuaBgWT8UErh+XmnBFd8SEXh
 8HiSTKqIxpOuTdnISflyMBkdjQ/2CZ4Zm7GPalB7TJ7PKaTFpnC2g47XX8Vf1vahtErr41p4LUp
 h/4Xe5RopIfIXg3WzdQu31Fwie1ObbGhEQF7SeepB/zvRl7GohkZmtvLd8V7uZLolCnGI0rMscl
 o+Vr3OckFLU1iHJ5dY+GxXcGEBBYgDCCa0oWo8ifjG+HNCZOrU5sEofU/PmlK7wgbbRaEojBJQK
 54Tf5EmHX+rSj5A==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  During BMC firmware upgrades on live systems,
 the ipmi_msghandler
 generates excessive "BMC returned incorrect response" warnings while the
 BMC is temporarily offline. This can flood system logs in lar [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [breno.debian(at)gmail.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1uZqqQ-0004GD-3g
Subject: [Openipmi-developer] [PATCH] ipmi: Use dev_warn_ratelimited() for
 incorrect message warnings
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
Cc: Breno Leitao <leitao@debian.org>, openipmi-developer@lists.sourceforge.net,
 kernel-team@meta.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

During BMC firmware upgrades on live systems, the ipmi_msghandler
generates excessive "BMC returned incorrect response" warnings
while the BMC is temporarily offline. This can flood system logs
in large deployments.

Replace dev_warn() with dev_warn_ratelimited() to throttle these
warnings and prevent log spam during BMC maintenance operations.

Signed-off-by: Breno Leitao <leitao@debian.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 064944ae9fdc3..8e9050f99e9ef 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4607,10 +4607,10 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 		 * The NetFN and Command in the response is not even
 		 * marginally correct.
 		 */
-		dev_warn(intf->si_dev,
-			 "BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
-			 (msg->data[0] >> 2) | 1, msg->data[1],
-			 msg->rsp[0] >> 2, msg->rsp[1]);
+		dev_warn_ratelimited(intf->si_dev,
+				     "BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
+				     (msg->data[0] >> 2) | 1, msg->data[1],
+				     msg->rsp[0] >> 2, msg->rsp[1]);
 
 		goto return_unspecified;
 	}

---
base-commit: d7b8f8e20813f0179d8ef519541a3527e7661d3a
change-id: 20250710-ipmi_ratelimit-7e1af5170c57

Best regards,
--  
Breno Leitao <leitao@debian.org>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
