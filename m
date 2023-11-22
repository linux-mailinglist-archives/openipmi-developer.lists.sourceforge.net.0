Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AF07F51E2
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Nov 2023 21:50:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r5uAU-0003yi-U1;
	Wed, 22 Nov 2023 20:49:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <emiliopeju@gmail.com>) id 1r5tvt-0003tG-B5
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Nov 2023 20:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aT8OFhVl8TBs1abByDkd5WUKDE2+T4rWWdG/lRLax1U=; b=cxBwM7g42pLCyjNQRInTPBh1R1
 bDZZN02xLpBaLjHcKQezhB6A2xb2S3pGnamvSy6Hyzw9xyebupea71M1rF29JHxyaKosFO/Hhgk8m
 ZI+CDPWHsvM4Wvz3C+XZtto5VmpVg/7SRdjkPrfImHQumDFdw5yT64XRH9IhITOG/ssY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=aT8OFhVl8TBs1abByDkd5WUKDE2+T4rWWdG/lRLax1U=; b=C
 Ylbp7aaZMV/TmBNrPotcW+eGcHiFU6AZSP2NteV1MJHZV7K4xEn0ekZSttjtdmjoi/rISurt/9zfA
 k9dwGzCkL9OdmlCiiZzifsKjtox0jWNA3fi45yEVn/yhXkcsCjDW8YuUKKWsSbVSPkvxk1397JUx9
 fRmw/kNRVnmh5mhM=;
Received: from mail-lj1-f171.google.com ([209.85.208.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1r5tvr-00D389-8D for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Nov 2023 20:34:47 +0000
Received: by mail-lj1-f171.google.com with SMTP id
 38308e7fff4ca-2c8879a1570so2633601fa.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Nov 2023 12:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700685280; x=1701290080; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=aT8OFhVl8TBs1abByDkd5WUKDE2+T4rWWdG/lRLax1U=;
 b=ls6R36O76z2UiDgStjOMnZ2Qy1JgK7hvkKy1zb3mewZHEEwmQI/XGxFvXkq0xQyzAN
 2ZIXI5+WS2Aad1fcwP/oBS70l8PWKC+OA20IDyRoU0UcBTQ3AbYCPCxbjBJzw0KrWu0Z
 OGNoTTO+oPbvbGhrwTtW5xxo/mDu9l9CFyFgu8H8p2hcWURIVvrgYxVGfkFjgEZOoLAD
 AzW2F1x1c85a0WS5O5aHPP24GzXoXg07bHrb8dOvpDAj/ILz/qwbb7MX8TMbz31yZV79
 /tTM5FlpuFAOF7YDpBtcxTQ7AMthTwgSdv+/WAJUAS0xVigkW7Jpuf5K5qx4kUNQP/Ru
 C5xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700685280; x=1701290080;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=aT8OFhVl8TBs1abByDkd5WUKDE2+T4rWWdG/lRLax1U=;
 b=fAGmsoiUw9AFA8tRpbQCrsdP5eQ5NvsuJEGKworR1veDj+9SBZF2yxfjHLM5EK4TaT
 Nt6pB7sRY5MieVpV7kD61J9S68BomCgaxVfxldYPY8SfgE4uYb8KYB99TZS8Bhpfs7b8
 CL2O8yIcs5zwRaGtqc+uAd/cy2K9boGssESeG792neBThwU53bTlzwi3cEne2sFhhZLA
 dKaFTi6iQJmNDb8kAnB9ZYgMHSPy6okbjd6p61SFYi0iAXnEBgJU3a0X/LtMaTBTROpZ
 2VhpmFTUWqCnWuZBx7BWIeuuzXkN2BH8dI7DsSlz230CMl9eO0ylZ+/5OREwfMdN2b7d
 h6Ag==
X-Gm-Message-State: AOJu0Yx1CFrAb2urLuHGwFL/HOX5/1gmb1FEB2hYkJn6ijVK+BqgqYZw
 wrX+zMraheohWFJ5VyarSnE=
X-Google-Smtp-Source: AGHT+IHrD5wd/Ap01i51y/xgtpKzuV8wjlG/KxSC7uBROCzgFpU/bvDbAxjHpBuhx9ZgJAMoHZTTfg==
X-Received: by 2002:a2e:7214:0:b0:2c6:ef19:465c with SMTP id
 n20-20020a2e7214000000b002c6ef19465cmr2286494ljc.7.1700685280291; 
 Wed, 22 Nov 2023 12:34:40 -0800 (PST)
Received: from localhost.localdomain
 (cpc69390-oxfd28-2-0-cust941.4-3.cable.virginm.net. [82.17.191.174])
 by smtp.gmail.com with ESMTPSA id
 m3-20020a05600c3b0300b00405959469afsm452556wms.3.2023.11.22.12.34.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Nov 2023 12:34:39 -0800 (PST)
From: Emilio Perez <emiliopeju@gmail.com>
To: minyard@acm.org
Date: Wed, 22 Nov 2023 20:34:28 +0000
Message-ID: <20231122203433.443098-1-emiliopeju@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: regspacings parameter is currently ignored and the platform
 data uses a default value of 0, this has been fixed by setting the appropriate
 field in the platform data. Fixes: 3cd83bac481d ("ipmi: Consolidate the adding
 of platform devices") Signed-off-by: Emilio Perez ---
 drivers/char/ipmi/ipmi_si_hardcode.c
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emiliopeju[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.171 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.171 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r5tvr-00D389-8D
X-Mailman-Approved-At: Wed, 22 Nov 2023 20:49:53 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: Use regspacings passed as a
 module parameter
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
Cc: "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>,
 Emilio Perez <emiliopeju@gmail.com>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

regspacings parameter is currently ignored and the platform data uses a
default value of 0, this has been fixed by setting the appropriate field
in the platform data.

Fixes: 3cd83bac481d ("ipmi: Consolidate the adding of platform devices")
Signed-off-by: Emilio Perez <emiliopeju@gmail.com>
---
 drivers/char/ipmi/ipmi_si_hardcode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_si_hardcode.c b/drivers/char/ipmi/ipmi_si_hardcode.c
index ed5e91b1e040..0c92fa3eee88 100644
--- a/drivers/char/ipmi/ipmi_si_hardcode.c
+++ b/drivers/char/ipmi/ipmi_si_hardcode.c
@@ -80,10 +80,10 @@ static void __init ipmi_hardcode_init_one(const char *si_type_str,
 	}
 
 	p.regsize = regsizes[i];
+	p.regspacing = regspacings[i];
 	p.slave_addr = slave_addrs[i];
 	p.addr_source = SI_HARDCODED;
 	p.regshift = regshifts[i];
-	p.regsize = regsizes[i];
 	p.addr = addr;
 	p.space = addr_space;
 
-- 
2.39.3



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
