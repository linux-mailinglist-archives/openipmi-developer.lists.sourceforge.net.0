Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AB2460BA8
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Nov 2021 01:29:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mrUXT-0000Mg-L2; Mon, 29 Nov 2021 00:28:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rikard.falkeborn@gmail.com>) id 1mrSFP-0007Jj-68
 for openipmi-developer@lists.sourceforge.net; Sun, 28 Nov 2021 22:02:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l+0z1JT9bKKctcsBbD+srLOTYQSXdtRRpNVoh1cwlsM=; b=RkgYPuKmfySTAz4Hyr6cnzeQs3
 tlnD4ujIT0mixsbDpWZJGqqljFFzPJZXhOVvUkX76qKyyGG7sZWWvDuwAlZOhVduXSFRjd+9BxAFS
 s1B41k7Msb1rZGxYevp78DggPz95w2KhJoefhrJ5z7QRgvKGM0Tih+MuRTrsOMd6X/wQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=l+0z1JT9bKKctcsBbD+srLOTYQSXdtRRpNVoh1cwlsM=; b=T
 LKgxRBAzyCnYntbQ079H/Vzx9L2oOuhgYUeoygtg+QdjD73F6AW1Ja6HY9KU2OecvCji8iNE3OPtf
 RmZV/wmv+O5LIm8fS1bmgqV4Yt156mTYRvjtqTkjgLN7aPjmO2pDxGOpioMtxLZgkxnypMIdXLJ5M
 J+a5q06pTFbG5KcI=;
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mrSFK-000619-Ug
 for openipmi-developer@lists.sourceforge.net; Sun, 28 Nov 2021 22:02:11 +0000
Received: by mail-lj1-f177.google.com with SMTP id i63so30763111lji.3
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 28 Nov 2021 14:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l+0z1JT9bKKctcsBbD+srLOTYQSXdtRRpNVoh1cwlsM=;
 b=NdIdxuvj0KpKsNTFvKDZndbsQkZ9gSmbJJap9cgvr+zd/AnKGdQj/iSLeLb+AJWAjn
 s6kIp2kitjpx9Zeeaohz3+PZOt2KLleQ0DutQRjkVnjw9UAYd0KGU+FA6s51fyH0USxV
 YtMslR6OpdxomoN7uQ5GMtxzwMx+CJpLtrPz2b3r7O6/gtJK6z0jQplqDWiZR8eWBd/+
 vJiUOS3yUTfC/UIqY8BU5yLUBxsKUon/GAcXwCQTqj9PQqvsmev9RDNan9la5UwZoqvc
 mnc4ksR+cA9OM9+8fNsI3RmrjkC5MMwKWzoOxckyYtEEG1h47tTLDpWDLns1QfFfiZNj
 QlIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l+0z1JT9bKKctcsBbD+srLOTYQSXdtRRpNVoh1cwlsM=;
 b=HIXLV9QoBog0BXlJgeiDxXRUVSjm8kNPwPKqqm3YLHQJGp/uBhSGSxt7vKI58QX7x/
 cSs3fVEb3Y1RJXZTEcONqg07N43XUpX+hH5TGvyzYOKXZV76ICZqBLEOKkUoUXjv22bh
 5IDAvTE2mlZ1TYZT/20vIdJc7AN6LMujs2FFiNmOEYn0d7591gaW2tVxkM7Uxt8kHssl
 kfbnc+rSeanalizZmEfrzrCFxxP8ttlLIMMgheRoR56MSGJwBAPTRttkTZse32do8HCM
 ZNif+RY3bxe6jab+gW2nqnEDosyQUTigRaKbmPBLbiiErwrFumIA7qTTrxhxDKOoA4rK
 ObpQ==
X-Gm-Message-State: AOAM532wbnhdoh/Mq+lqiotE85R2WH6g78shDicEmpITTGTbZVXDEmwI
 ol6VpQiBZElnJHkMSkQEKqwiTJAKqOuDIA==
X-Google-Smtp-Source: ABdhPJy7K9xBRKsvusQ7WYLH310djPG2l2WFr9GIeEfRJAKkzNtjQjw6FL0mnie0K1E/8FWzH8A6hA==
X-Received: by 2002:a2e:740b:: with SMTP id p11mr46101046ljc.215.1638136920412; 
 Sun, 28 Nov 2021 14:02:00 -0800 (PST)
Received: from localhost.localdomain (h-155-4-221-129.NA.cust.bahnhof.se.
 [155.4.221.129])
 by smtp.gmail.com with ESMTPSA id t8sm1114785lfk.159.2021.11.28.14.01.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Nov 2021 14:01:59 -0800 (PST)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Corey Minyard <minyard@acm.org>
Date: Sun, 28 Nov 2021 23:01:54 +0100
Message-Id: <20211128220154.32927-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: ident is not modified and can be made const to allow the
 compiler
 to put it in read-only memory. Signed-off-by: Rikard Falkeborn ---
 drivers/char/ipmi/ipmi_watchdog.c
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rikard.falkeborn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.177 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.177 listed in wl.mailspike.net]
X-Headers-End: 1mrSFK-000619-Ug
X-Mailman-Approved-At: Mon, 29 Nov 2021 00:28:58 +0000
Subject: [Openipmi-developer] [PATCH] ipmi/watchdog: Constify ident
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

ident is not modified and can be made const to allow the compiler to put
it in read-only memory.

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/char/ipmi/ipmi_watchdog.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index 883b4a341012..0604abdd249a 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -668,7 +668,7 @@ static int ipmi_heartbeat(void)
 	return rv;
 }
 
-static struct watchdog_info ident = {
+static const struct watchdog_info ident = {
 	.options	= 0,	/* WDIOF_SETTIMEOUT, */
 	.firmware_version = 1,
 	.identity	= "IPMI"
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
