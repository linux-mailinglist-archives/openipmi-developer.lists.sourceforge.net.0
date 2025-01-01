Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0D39FF9EB
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Jan 2025 14:46:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tTLWl-0000Yh-85;
	Thu, 02 Jan 2025 13:46:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <chou.cosmo@gmail.com>) id 1tT1ze-0003h1-5z
 for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Jan 2025 16:54:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MoFjR/MKzzzRhLqHo8T1r3BXq+t5l3KwBD2b5YYL7u0=; b=PDI3jaVMNOyeLJkh7JAf+oRHbX
 XHE1Y8hu1iK2M4R4CK7Lsr5Tjre8ylYo9lmSxn1BqOGjEntkJy3p66jHpkbWHWwaOaimzBzb8D1a3
 lzPYdilaPNYGpnlXHCjEbHyy6a1bx9dBNYPI80/W/LwCQPcJ9MJufbsLylSWRsAGj3xo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MoFjR/MKzzzRhLqHo8T1r3BXq+t5l3KwBD2b5YYL7u0=; b=E
 qUipIQI+0Jyx/9eX4mfjumA59LU/zBqgXE4THYMxnUxVLHIMw2ytjo0MFwTnz94EFVJQHoR7zxzpH
 h2DZ5w/Z+MLts/RHjs/+YYdPPxAwp1iSgZs9O3ou+KpoEc+4XFvUldzZ/Nk/fCUMqowONLwft2DyK
 x8nHTGowOm6+qOr8=;
Received: from mail-pl1-f181.google.com ([209.85.214.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tT1ze-0006C6-AA for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Jan 2025 16:54:50 +0000
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-2163dc5155fso141635505ad.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 01 Jan 2025 08:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1735750479; x=1736355279; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MoFjR/MKzzzRhLqHo8T1r3BXq+t5l3KwBD2b5YYL7u0=;
 b=DiTK1laWHRXEAhKcmUJ3ndCsWUPZOCl5sNb3SYO2lRbLag7aKKPkgWxDUwHOY1liue
 jA9hKZpPYZRR1VCKI3vRLBbVPynSY3cVNaD6ZoA8NM0nlMXnXlDZGMddJJys4zsfGo8G
 Ugabe76kic9OkGu+GMf+kqmyg4O29tCn1bYmQGoJ4KhmwVhLHUWPoXit6SVXTDbhq7wS
 WKtYVVUt0k4oUlZv6irBOTNavOmXOwy7DlXOi6P1whzrVqzawpp+74OpJeYaDZFiiQ8/
 sMBz05LSkdIK6/G7jLJGmpsP30QUHv+QbwrqB4RrUnaBr1YkYSvxIUfDp7fldyIcyHEm
 AxVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735750480; x=1736355280;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MoFjR/MKzzzRhLqHo8T1r3BXq+t5l3KwBD2b5YYL7u0=;
 b=h8uAFs2zOqNyus4NESMMIQgIsV9381NtFX0ltesFRXbXVYaR2sZ2btWffqb9G3dTnM
 ZWoqlLoAKiqrunxWybycnml2goZGgJuUgyhKAWTcjUrRkTefQif0cLShcxrKKewf/eEc
 gE7+Y4FuueEiJRZVrNOJ58DmCRGz9MHnU97y8j2FLSelY+6Gmd5MSVwwgmCSDaIhEhW0
 swrJ4J7Jf6pB6desSjtE1KKZyqRmCDgBtN2I+hx3aL0XA0nibV7PFdwwBxeYMm83N3oZ
 GLdKq+dbDWEM55vPpbQid2SiE8hvdyZM95MCpB0FE6fAuOxGDphLMyRMckaBRgGhaRxn
 NkTA==
X-Gm-Message-State: AOJu0YzNPVnelIiqJZMRgbHpFDVWOQWK6wRg0IIupraqQ9WSDxc6Y1d4
 vvxD3mswF1bFaFONXNDvFWh8g/6cR5jpIYFtU4IYynMvD9zEI7HVsXzdbQ==
X-Gm-Gg: ASbGncsxtKp4PEFyl7eL67gGPGX+7iHgYl/23/hubM7uLc4bMgtv+cJvDhSBjdBOl4X
 eDJh45McEmkiPgAx+keLaEm2aYMKecZDxyaH+UabBHX0eJ+Q8Ywd2wj7TkkyUJDJ3vMeZNYIWE7
 8Z8yYm1huzEOaFKia0UVRhM1dS+uYQxuNWCR8A+yKLfF64yaD+RFnHXULJm8qwCjcfA3aU680rs
 o9MneBu7mc+7S5DhEMRskcmCiyVIgZnt/lJ/rBYFtLvCc0mtTzhU+GH+rNabFJJdePaKnitniwB
 OhE7o0igXqg5bVJK1Q/3LKpi+Ibz+weVsERabF1wwvjhybUxH7MnD2gNMg==
X-Google-Smtp-Source: AGHT+IHMUq9m7Pa+p28xL7Y4yTQxRpQMDNRKgKdqdN2X2tl1kuw5gYpAg+6O87gcnn76mRH+kM1IWg==
X-Received: by 2002:a05:6a21:6da4:b0:1e0:ce11:b0ce with SMTP id
 adf61e73a8af0-1e5e080289emr76657066637.35.1735750479599; 
 Wed, 01 Jan 2025 08:54:39 -0800 (PST)
Received: from cosmo-ubuntu-2204.dhcpserver.bu9bmc.local
 (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-842aba72f39sm17456536a12.5.2025.01.01.08.54.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2025 08:54:38 -0800 (PST)
From: Cosmo Chou <chou.cosmo@gmail.com>
To: minyard@acm.org,
	quan@os.amperecomputing.com
Date: Thu,  2 Jan 2025 00:54:31 +0800
Message-Id: <20250101165431.2113407-1-chou.cosmo@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Move smbus_cmd assignment to the end of process_smbus_cmd()
 to ensure the new command is not lost when complete_response() is triggered.
 Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver") Signed-off-by:
 Cosmo Chou --- drivers/char/ipmi/ssif_bmc.c | 2 +- 1 file changed,
 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.181 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.181 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.181 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chou.cosmo[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tT1ze-0006C6-AA
X-Mailman-Approved-At: Thu, 02 Jan 2025 13:46:18 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Move smbus_cmd
 assignment after cleanup
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
Cc: chou.cosmo@gmail.com, openipmi-developer@lists.sourceforge.net,
 cosmo.chou@quantatw.com, linux-kernel@vger.kernel.org, potin.lai@quantatw.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Move smbus_cmd assignment to the end of process_smbus_cmd() to ensure
the new command is not lost when complete_response() is triggered.

Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
Signed-off-by: Cosmo Chou <chou.cosmo@gmail.com>
---
 drivers/char/ipmi/ssif_bmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
index a14fafc583d4..7a4f52987a7d 100644
--- a/drivers/char/ipmi/ssif_bmc.c
+++ b/drivers/char/ipmi/ssif_bmc.c
@@ -579,7 +579,6 @@ static void process_request_part(struct ssif_bmc_ctx *ssif_bmc)
 static void process_smbus_cmd(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 {
 	/* SMBUS command can vary (single or multi-part) */
-	ssif_bmc->part_buf.smbus_cmd = *val;
 	ssif_bmc->msg_idx = 1;
 	memset(&ssif_bmc->part_buf.payload[0], 0, MAX_PAYLOAD_PER_TRANSACTION);
 
@@ -596,6 +595,7 @@ static void process_smbus_cmd(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
 		if (ssif_bmc->aborting)
 			ssif_bmc->aborting = false;
 	}
+	ssif_bmc->part_buf.smbus_cmd = *val;
 }
 
 static void on_read_requested_event(struct ssif_bmc_ctx *ssif_bmc, u8 *val)
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
