Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NUFI/h652mZ9QEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Apr 2026 15:26:16 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A344043B4F6
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Apr 2026 15:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f9pkak7ZEJgla231YWMj54iKzZnfmwl6JCKUrE0qg6Y=; b=MpPKPY6Fq7FKIeZXtr5/i2LPH3
	2L2T7H/vFzMp+aIbvtNFF/gRokvJE50MkCdXm3NgG01XoMM/5k+NY9EfCoDIqZmtPQG2OGvhcJSaz
	A9so4FeNKzvxCW4T4a09Hh5SXChKLpiaYngJFXtW0rs9vM0be2USlg41sgC9R/Op2apA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wFB79-00059b-2K;
	Tue, 21 Apr 2026 13:26:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wFB77-00059V-Jb
 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 13:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dn8v2QAFkXlBjIgtscUI2wvGE8UVKuLcXTXCNPkIjzQ=; b=fb2F3KcmFwsfTYgcEhXPEjFpE0
 Ap/0vdu85PFe3/bSRZOHCVRxp1Q3iae4M6pb/ddQcjP3lxLv4pnAmxL/yXwOGdu7bkXn3Bw4oqNU/
 w4L0eByu846vbzKF9Thxgx4pFkXkds+xzUKFHcGdrG9koQldIWRMquEHVfRwD1JfWnH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Dn8v2QAFkXlBjIgtscUI2wvGE8UVKuLcXTXCNPkIjzQ=; b=fI15Cs9FB1NDZ6Xk3Qs64xh4jR
 /pHB2BtghXayAGB+fDnmNydSwdX86cHOnuU2/HftkkdghsjNhB0ZsN65K8W0q2aVyNzAmSQRsQnl/
 XO4K7jnGs6IIwf6J5UI7urS6vI1298u9rTfFNYkgBLzvdE8ksANPZ/AjrSQLn27vIk7M=;
Received: from mail-oa1-f47.google.com ([209.85.160.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wFB74-0005pf-HE for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 13:26:03 +0000
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-40f0e14b9f9so2475362fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 21 Apr 2026 06:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1776777952; x=1777382752; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Dn8v2QAFkXlBjIgtscUI2wvGE8UVKuLcXTXCNPkIjzQ=;
 b=k+TrCYw1A6lwkasY3waySYjPlR0iTKvgxYv/ImdO94zJsmdLyMeD6V5ChmvNCjp0B3
 CgrCjop4hDm4dcjVspOcxz7hPz8q+xeAJ6oB3L8Sn5iGdgek4sMcoGn9Ax0Lr26IByv7
 nNP92cgjFLrPBPuPxlg/xY+tH7SWESiRI13VWCxL1HMNxQZhCYclt4M/C4x9fpo1FFfw
 Xw2treyIbBoHfHvj5GvYBZ8wgA6ZEweGTMjkbCFS49taSXt0HiuAhDKtt3D/MASAH2x8
 9o3cCzD0nANoCAY3gu4AhUrAsgju6nYaLmOQl/ojkgJhLQmYInSuKFeHnjHLePRuIgwp
 4COw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776777952; x=1777382752;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Dn8v2QAFkXlBjIgtscUI2wvGE8UVKuLcXTXCNPkIjzQ=;
 b=EbN6Yql0j9ZS0eGckQHdrU2Nr4cNaxLCWZzRoq9heARS8jwFBPcpoZv6P5bCWUXd/K
 YhHMgUIzNBCzTpJ0bn+xLCbFS4CVpYdG//7LGLFvPoW53Wkv51DB7+33oz5bdZzz6beU
 GyNrp1YuVyakjG1WokWgMEeCkSMk3JoKjpuiHSMdGtTRsyBT9VDZVbFxkDYkooj5K5Cw
 ltBBJbteXtaTvO5yKuHEKkdnC9UfYqY/euqhXARL9uMjijcPPYvAzBXQTWj3aTINs3FK
 IXKWBedIIE9uIytruWbTrUyg8c7UCWOK+OArplC7a9wcAN/nP+iMEeRYqI5QxKj2Zi3m
 4emw==
X-Gm-Message-State: AOJu0YzQDvY0oSJOE8qLivkj13QDQvMJ8nbZ6YSSAQzIMfPgiaCYB+P6
 cPBteNEDtrGIvNjOpNKAlIrrLejNMjYFI2XTWn2/kFZVuYsDrYxwPKjKsINdXMT1b8g=
X-Gm-Gg: AeBDiesQZbRqVm3hu33PW8Ygt2jrro5GdneWKwtOFF4QW21A5H0bFc6kZCOLVqNcpUc
 qgb6IixolEIPEGpoV9sjTi/6LjVLgjwoRZ60YTmxJaW/uhtJydQQHQUDjYlwCyaXhcLNfI9h2Mr
 fcmMVZ6vvYrtOWPCByCNwmA9qmufZgNCn4Fn5KUwsOsVF4NGVsLYJbc2FUINGmfQD32Nu3ZaInh
 gQzlK4sqFMoFgPdva4D+PU0TRrt0bUuab5kRoWx14bL1KNjno+H5ZyyihREHZPRWEZ1MB3SbTCc
 3Ps7rp27rKiwubl9Xk0yPL9z1Gl3LQSyVXtYk7eai0s6VbPbtec182AV9XCfgCGYUvrd19VDM2C
 9rdr0D11AQJmAiQtXtr1ys0MwEyaBbTbOxS4/v65qar3IM0v38Ob7eqySVErcFIdkGf/qO2EBwJ
 8aDYn1/f5LV83XoZ/m6Pf1+63UeqiRYmxwc/bVLl57ShN3GTcDIjtqfaVlGLqik1AsLTobr3Vha
 tjsUIZtI9G2ph+4
X-Received: by 2002:a05:6870:2c91:b0:409:9a0b:b733 with SMTP id
 586e51a60fabf-42abf29cc2fmr10719696fac.10.1776777951714; 
 Tue, 21 Apr 2026 06:25:51 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:376f:c507:59cb:4749])
 by smtp.gmail.com with UTF8SMTPSA id
 586e51a60fabf-42fae7ee3a5sm952278fac.7.2026.04.21.06.25.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2026 06:25:51 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <mfleming@cloudflare.com>
Date: Tue, 21 Apr 2026 07:42:43 -0500
Message-ID: <20260421132544.2666174-2-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260421132544.2666174-1-corey@minyard.net>
References: <20260421132544.2666174-1-corey@minyard.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The event message buffer response data size got checked later
 when processing, but check it right after the response comes back. It appears
 some BMCs may return an empty message instead of an error wh [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.47 listed in wl.mailspike.net]
X-Headers-End: 1wFB74-0005pf-HE
Subject: [Openipmi-developer] [PATCH 1/2] ipmi: Check event message buffer
 response for bad data
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
Cc: kernel-team@cloudflare.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Tony Camuso <tcamuso@redhat.com>,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:tcamuso@redhat.com,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,minyard.net:mid,minyard.net:email]
X-Rspamd-Queue-Id: A344043B4F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The event message buffer response data size got checked later when
processing, but check it right after the response comes back.  It
appears some BMCs may return an empty message instead of an error
when fetching events.

There are apparently some new BMCs that make this error, so we need to
compensate.

Reported-by: Matt Fleming <mfleming@cloudflare.com>
Closes: https://lore.kernel.org/lkml/20260415115930.3428942-1-matt@readmodwrite.com/
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Cc: <stable@vger.kernel.org>
Signed-off-by: Corey Minyard <corey@minyard.net>
---
 drivers/char/ipmi/ipmi_si_intf.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 4a9e9de4d684..08c208cc64c5 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -630,7 +630,13 @@ static void handle_transaction_done(struct smi_info *smi_info)
 		 */
 		msg = smi_info->curr_msg;
 		smi_info->curr_msg = NULL;
-		if (msg->rsp[2] != 0) {
+		/*
+		 * It appears some BMCs, with no event data, return no
+		 * data in the message and not a 0x80 error as the
+		 * spec says they should.  Shut down processing if
+		 * the data is not the right length.
+		 */
+		if (msg->rsp[2] != 0 || msg->rsp_size != 19) {
 			/* Error getting event, probably done. */
 			msg->done(msg);
 
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
