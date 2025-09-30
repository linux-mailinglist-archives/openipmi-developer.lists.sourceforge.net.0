Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D1BBACF8C
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Sep 2025 15:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:Message-Id:Date:To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5BB25kZBvNDcahf1b60hFuvJXDrpfQCvEDlFPvPkDU4=; b=mPgd11ObPgM4ub6YPQcCLobHEE
	OWICnf1SMY628ocefXRbJMRCTubcff9jhZhSCaf4Sp5moDKOa2wHhW8kyWrEiPzCPQk6ngd1aahSR
	Y5UNeA1TvDNwALDei93pcZ1GOdkmg1eMPr3iHfw25LYUuwD9MYnEWfW+5qOCT8b/pKVI=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v3a3F-0002UG-3f;
	Tue, 30 Sep 2025 13:05:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <guojinhui.liam@bytedance.com>) id 1v3V1n-0000bm-VV
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 07:44:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hgG+aaQgnT9ZPHFiK/eFUVeZgtIS+EmmmaaEftFkXN0=; b=ddkpxnHKdUjF4s4yvbl3qSYhsu
 NyGxgfBTnHLONsESeG6/0PXuRRNABp/fvamuvqd/H4fdF4FbGjfeP3Cc779dvHSHRKIz+q0NEvhkr
 3nMf+CwZaSuUzCUkpDOHR9H1aFboCtXfD7bY/m4aiu/NzW5sRh4tcnOFoEfz336pdd8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hgG+aaQgnT9ZPHFiK/eFUVeZgtIS+EmmmaaEftFkXN0=; b=Sl18X4plO96BXZgca+2oBkgOwc
 5PSVB8HmuvGQspxJbPT91H4bgQbuxPNzQfKCcbSZUAa6SPX6+oy2oOARkA+GdOtIu3bV9phgl6wnc
 uvxgnd1C9O+bV9fyHx6bxXBVg/7IilE9lSVstyPNz4nXTFBk5BXHUXHu+TXaqWeeEAgk=;
Received: from mail-pg1-f181.google.com ([209.85.215.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v3V1o-0000oZ-A6 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Sep 2025 07:44:04 +0000
Received: by mail-pg1-f181.google.com with SMTP id
 41be03b00d2f7-b5a631b9c82so1622500a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Sep 2025 00:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1759218233; x=1759823033;
 darn=lists.sourceforge.net; 
 h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=hgG+aaQgnT9ZPHFiK/eFUVeZgtIS+EmmmaaEftFkXN0=;
 b=ENbtszx5tYTVw/nii/RFVvkMHvfcA5jSSU1yw7mq1ujPlGSHuAnTA8ROXWxdC5b+nY
 D6XU/LOYPgYxwVfLzuqSey26yhaK6R6JXB6tv6xls/XRnl4gB9xZ/C7vLmOiWQAOGc/+
 HVNcb6QEaW7P7QzqoWc1zh516px7ICGvjy27HEj+i8XyZ1lYfqnQ9bS8WSchmHpXr21t
 EByFJiYHkP45T2h4WBh5i+2lpaiTO6rWEj/jDrkZEIVO6PzuineLwdqds6CkTvdtrFCq
 AgGAkZ6PkILzEzmw3z8+gCZx7PppYcAXEPZhR+Zvap1rI2Bo3I8BPDAg6AK8GgBP8Mpr
 AOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759218233; x=1759823033;
 h=references:in-reply-to:message-id:date:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hgG+aaQgnT9ZPHFiK/eFUVeZgtIS+EmmmaaEftFkXN0=;
 b=A6a8J5/F4442lLJWzLoRYgJA2TEpNotJnIzTSYES7CK7jW8y35hn+kpUDgNi1+6Upg
 FCRtqFBy3CvCy3iBL8hvTD3N7Sb4GrFl1Ufse1ffu+G9vViBP+GP1MvCqcQ7MfZvernZ
 /dZUDBp7nv8EUo7MkfBFC1k5iP/PGs6AfZX/1fw44kN1+y74i9WNiqZfrzVZNM2TD690
 2nAU7w/KPEt0VhT73/qbFV7RjBEFec1vZ6MSGqonb1NuO5WB/2Pkv08qSoyuTqHjzqN+
 NBgN+TsqGp+xQElZ+myptRf2nQ4dKaGoJDk9tlbbh6UCDVh92yyjWqZOKDcmuOl5lQ1e
 0eJA==
X-Gm-Message-State: AOJu0Yx/DIciES89ZWh843xiLGDhFC+wsl1whAmjvRuSDTtI/RGJpIka
 e4Ufg6aeaznMRDV8e/gW6V0CcZAcO9UWXXS+fgs48r/Vgmw+aZPNSyRaA0hsUP3CmPo=
X-Gm-Gg: ASbGncsXIMl5KzR72s0xn8D+WK71FneLGrYzDkfSLFiLGK02mk6OJxIFe+MScY9NlhN
 vM/tNLCcEFvA+KQtUD8BJBmnrAzm9iTi7NJCvfJ0unr/9LntTRR/QUBTqKAB99hnlzjnZjlzarn
 sOmC8/Nkql8M5zKcOFpUCicrP6LaE2ZFqM/k0clxqY3hqupFMFSwoIekrO+Fd/FfE0BSKrrAtdD
 uOr4XM4uDUBT3/c7zLvrmz2i9yn6PXXzAKDJuJgMPrfPZbKVaOoVL5GeVFKXz3wSRoatsyJq0yo
 IR1JFGICJhywox5ZZGKF/J0PXgNxCjSK58J0zbyQuPw+K/jrJSEAxt+Hx/+P3WcFBXXNmRM5VRg
 KdETdaVDg9kea3YxlH/fz8ldVWLISktpYn82A1iGxhcLcSEI+74fGDKQDHBZG7Xo3tz3Z7B/ONh
 kyGEoffKyDcc88YZsbhM/fHmlSicq0CDEa/w==
X-Google-Smtp-Source: AGHT+IHusydmYb+60/mYolM5grNKdUqMD996medk1CNvk9KNDDE8cc9bcWqn/LVsyVs8k2//Dwhssg==
X-Received: by 2002:a17:902:f611:b0:271:fead:9930 with SMTP id
 d9443c01a7336-27ed4a78d72mr215723505ad.59.1759218233180; 
 Tue, 30 Sep 2025 00:43:53 -0700 (PDT)
Received: from 5CG3510V44-KVS.bytedance.net ([139.177.225.243])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-338386f577bsm3535374a91.2.2025.09.30.00.43.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Sep 2025 00:43:52 -0700 (PDT)
To: corey@minyard.net
Date: Tue, 30 Sep 2025 15:42:38 +0800
Message-Id: <20250930074239.2353-3-guojinhui.liam@bytedance.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
References: <20250930074239.2353-1-guojinhui.liam@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: channel_handler() sets intf->channels_ready to true but never
 clears it, so __scan_channels() skips any rescan. When the BMC firmware changes
 a rescan is required. Allow it by clearing the flag before [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.181 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v3V1o-0000oZ-A6
X-Mailman-Approved-At: Tue, 30 Sep 2025 13:05:51 +0000
Subject: [Openipmi-developer] [PATCH v2 2/3] ipmi: Fix __scan_channels()
 failing to rescan channels
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
From: Jinhui Guo via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jinhui Guo <guojinhui.liam@bytedance.com>
Cc: openipmi-developer@lists.sourceforge.net, guojinhui.liam@bytedance.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

channel_handler() sets intf->channels_ready to true but never
clears it, so __scan_channels() skips any rescan. When the BMC
firmware changes a rescan is required. Allow it by clearing
the flag before starting a new scan.

Signed-off-by: Jinhui Guo <guojinhui.liam@bytedance.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index a6e2e8246ab1..536484b8e52d 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -590,7 +590,8 @@ static void __ipmi_bmc_unregister(struct ipmi_smi *intf);
 static int __ipmi_bmc_register(struct ipmi_smi *intf,
 			       struct ipmi_device_id *id,
 			       bool guid_set, guid_t *guid, int intf_num);
-static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id);
+static int __scan_channels(struct ipmi_smi *intf,
+				struct ipmi_device_id *id, bool rescan);
 
 static void free_ipmi_user(struct kref *ref)
 {
@@ -2657,7 +2658,7 @@ static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
 		if (__ipmi_bmc_register(intf, &id, guid_set, &guid, intf_num))
 			need_waiter(intf); /* Retry later on an error. */
 		else
-			__scan_channels(intf, &id);
+			__scan_channels(intf, &id, false);
 
 
 		if (!intf_set) {
@@ -2677,7 +2678,7 @@ static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
 		goto out_noprocessing;
 	} else if (memcmp(&bmc->fetch_id, &bmc->id, sizeof(bmc->id)))
 		/* Version info changes, scan the channels again. */
-		__scan_channels(intf, &bmc->fetch_id);
+		__scan_channels(intf, &bmc->fetch_id, true);
 
 	bmc->dyn_id_expiry = jiffies + IPMI_DYN_DEV_ID_EXPIRY;
 
@@ -3427,10 +3428,17 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 /*
  * Must be holding intf->bmc_reg_mutex to call this.
  */
-static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
+static int __scan_channels(struct ipmi_smi *intf,
+				struct ipmi_device_id *id,
+				bool rescan)
 {
 	int rv;
 
+	if (rescan) {
+		/* Clear channels_ready to force channels rescan. */
+		intf->channels_ready = false;
+	}
+
 	if (ipmi_version_major(id) > 1
 			|| (ipmi_version_major(id) == 1
 			    && ipmi_version_minor(id) >= 5)) {
@@ -3632,7 +3640,7 @@ int ipmi_add_smi(struct module         *owner,
 	}
 
 	mutex_lock(&intf->bmc_reg_mutex);
-	rv = __scan_channels(intf, &id);
+	rv = __scan_channels(intf, &id, false);
 	mutex_unlock(&intf->bmc_reg_mutex);
 	if (rv)
 		goto out_err_bmc_reg;
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
