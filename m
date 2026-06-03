Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dKIbJoq2IGpD7AAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:19:38 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF19263BD61
	for <lists+openipmi-developer@lfdr.de>; Thu, 04 Jun 2026 01:19:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=RmS0mEVe;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=jYevmkt9;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="h f49Rx2";
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=U5cTMazY;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UBaaHWb0hT8jImn7gJzQg3iLV/yWUQEpNfk6eqYfHVk=; b=RmS0mEVeiV3WPmrcaD6Bbn2keX
	LnhL382ZFZiuMxHz7hFeHUy239Rj3czqF5XQEnpC9VTU8t4cqv3Bx61LZo88PEN5+snOFV/qe1gBb
	khs4XFbtO8NfvvEOVmCOSjfI2XrUEAaCZbBy5d+NbUTFBseq4IZoiJeU8UTfKZIcnHVA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wUury-0003f9-Us;
	Wed, 03 Jun 2026 23:19:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rosenp@gmail.com>) id 1wUrDg-0002n6-0V
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 19:25:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S8Mjpzk9H2oxEM83qWG365w5UKFAZXDzfcT5t+IJeCM=; b=jYevmkt9xyW1EivmUIa7PqCFDC
 V2sqP2rv5p3+iTUJ79Q8oTKG1l6BLLV/qKrOSXNEOd5U8QssaeJswPGKX1uDSHbwBOPdcrTwohXrg
 ggP8EZ5eAAqO+Zj9oFqLa3K5/vkDKWAH8h5pvHBsBW0F3idL5HZ8ved6w0JlNvUcKLJg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=S8Mjpzk9H2oxEM83qWG365w5UKFAZXDzfcT5t+IJeCM=; b=h
 f49Rx2r8EW7/4PUgwuXfIb+ww8hy1wnvdLjfO8dWThiPi5qu5esa8HldNa0+b1zhD181/wf6WImes
 qtc76RrDQNZ177D/e2KTANcDC0XexpxBEwYlKT+aVriPCxm/VDJ0GU9nDUdmvelYLv6OaSy9SngMI
 A/V+MHHXIpgnQjrs=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wUrDf-0006aG-Gz for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 19:25:40 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-2c0c3315c5dso43097365ad.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Jun 2026 12:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780514729; x=1781119529; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=S8Mjpzk9H2oxEM83qWG365w5UKFAZXDzfcT5t+IJeCM=;
 b=U5cTMazYDS87gpF2xUVpKjggokOEOTM6xLtwJhuXaqYhsJGfD8+B/SIIpSIWDoIOPj
 82Au+hsIQzhTLs8L52kpmuri3ziebbghholy0euyicjsADpPfxh30WFgtSOEQqYR6JFM
 JjJglM+FxYQKRvxiHyur1DMhicjFTRqicRasJ26MsGhaeO6sloAYzD2ej7HKLsJ2+QRD
 VpxUPVNOdKc2QiSrMCJWS+oNQbJa04rpddoPBtUOlFLqUkscqp9EWNz+1zWoWh1xZkxF
 RrVB2I8x7MbWzLCNBuySthDb5v3XhwNYU0M945KtmPsBl6Aqw2pq1mxlChsQpNe2RNsm
 FORQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780514729; x=1781119529;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S8Mjpzk9H2oxEM83qWG365w5UKFAZXDzfcT5t+IJeCM=;
 b=AFVoIgCSA/6RFwIV2U2FGY8WvbwpaSZvZXmi7jZj4Okr623o0dRCU72hwrHhG6RlRv
 Wpg4R2V31Bc+4hjgrfO8Pl36w5DipwRAWN7Uf3cYzrqurix1ktixOk66mt4bxt/MOI2q
 ufelZvSPb5fMT/7ZZz+uKpCvY3wxqLxmWIONy2RjYpDxw6x0gkDNYCWcLbPrSJmcree2
 81aYsOSKS07OdgYBE7o625yWhmNDdyPOK1rCSFsDUbIIRITS6T9IUgq+MC0DSCjk+oet
 WoC5wJp7MB3HG2y9q5rYOBeux2Z/pqt3vYoj84kOmixGT2vUlAaGADW38gCnNdg/xzii
 oySg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/zuQzBxowEXh+7077C+bkVoVVMTEOBlJSRzgYJAEb4dcpe7X5uwRyPCx5/pz0z/7ol0WnpSUeidTRuljGrTZZKn/4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyQNCRy1j1SaAIrmxkglUAdCATVkZJ9fgoeTJTzkwTbspkAZQXt
 MyO5z0x+H6sQUWaHhGOwDTY0U3+Lv6yWCxJ3N3Xr5NgkPWgvfeV0AIx9Y6a3q07b
X-Gm-Gg: Acq92OGHyKu/onrfHw2v32kVz+8plFs7fZOS/cX/oaKv63hHOKNxkd4+knplkgSV1un
 jin7Wu2xorCABK8dobfKDFEWDwifMR7UxEKQ/DFAP9XfaodUTfd6z4T8m7wi0rOh8QHOrczBMJA
 makXlc7wGGqDPPmQ236C5+FHIAghsj5G+O3UW7vADPNX/tQDyZ2XBrgkW7bG0JHCCRs6S8b96Vs
 hM/yup6aqMg+/tKw4/eBhuu68ErBzMWRNaH6BaCTZliqVeE1vNA8eEExW0nRuur4r2vUw7lk8FZ
 s+nUgIySCemueYyRwBuTUm0H4ToGoyhNcJii78pAuNy9NgApbJhdew3meIZlkXC5a7+fiaFstxQ
 Ns+Bz/XS1HY5fMf+P+3v0e/vAPmZwU5JRCnIHjnRuVjJw3ukwPCiqNNpYn+pE+703RpiR6VsAQ/
 9lrMyI5lxK0Dg2S704PnlGXEUSuEp3tDQSeTaX+1+QbcN9Mu7PDi7QNl4zpkRW4joALnz+EArM6
 3sjITDSGldTc8KhlTcPUIRtcXeXgQqaB62XWp7QLkncyA==
X-Received: by 2002:a17:903:1ae4:b0:2bc:b141:8551 with SMTP id
 d9443c01a7336-2c163fa3b69mr56096015ad.19.1780514729365; 
 Wed, 03 Jun 2026 12:25:29 -0700 (PDT)
Received: from ryzen ([2601:644:8000:5b5d:7285:c2ff:fe45:8a32])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2c164f6d389sm34377565ad.16.2026.06.03.12.25.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2026 12:25:28 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-kernel@vger.kernel.org
Date: Wed,  3 Jun 2026 12:25:11 -0700
Message-ID: <20260603192511.6869-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use platform_get_irq() to retrieve the interrupt resource
 instead of directly parsing and mapping the OF node via
 irq_of_parse_and_map().
 This is the standard pattern for platform devices. irq_of_pars [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [rosenp(at)gmail.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.214.176 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
X-Headers-End: 1wUrDf-0006aG-Gz
X-Mailman-Approved-At: Wed, 03 Jun 2026 23:19:30 +0000
Subject: [Openipmi-developer] [PATCH] ipmi: si: Use platform_get_irq() to
 retrieve interrupt
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
Cc: Corey Minyard <corey@minyard.net>,
 "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER(0.00)[rosenp@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20251104];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF19263BD61

Use platform_get_irq() to retrieve the interrupt resource instead of
directly parsing and mapping the OF node via irq_of_parse_and_map().
This is the standard pattern for platform devices.
irq_of_parse_and_map() requires ire_dispose_mapping(), which is missing.

Assisted-by: Antigravity:Gemini-3.5-Flash
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index fb6e359ae494..e10b5d8af092 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -276,7 +276,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
 	io.regspacing	= regspacing ? be32_to_cpup(regspacing) : DEFAULT_REGSPACING;
 	io.regshift	= regshift ? be32_to_cpup(regshift) : 0;
 
-	io.irq		= irq_of_parse_and_map(pdev->dev.of_node, 0);
+	io.irq		= platform_get_irq(pdev, 0);
 	io.dev		= &pdev->dev;
 
 	dev_dbg(&pdev->dev, "addr 0x%lx regsize %d spacing %d irq %d\n",
-- 
2.54.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
