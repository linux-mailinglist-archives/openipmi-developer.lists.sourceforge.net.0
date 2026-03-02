Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MZuE/+YqWm7AgEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Mar 2026 15:53:51 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F37F9213E73
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Mar 2026 15:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Mime-Version:To:Date:Message-Id:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0xLk+4FEEkDJWxQ6wg/dTaeOflTCLoDf7yhX82LT8dA=; b=Qtsr9yDdAdY/tuCyzpgkPFK65y
	5+FmmxnrcHGaxWEZlLKwJK0Jq7/XYnJe+UcDHS5ZHNlVqZrxgtlRRU3DNhnkuq6cNrF87id/3unlH
	Xt6McyyjLoSwbMbN2fNMhllG1D63d70Xz/6mvbDRPWlhmFjOW3oM8+f1E3nAr7P1yynk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vyA56-0005fE-5d;
	Thu, 05 Mar 2026 14:53:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangjian.3032@bytedance.com>) id 1vwwrF-0001Bb-Pa
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Mar 2026 06:34:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Mime-Version:To:Content-Type:
 Content-Transfer-Encoding:Date:Subject:From:Message-Id:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9dg5GQNUSNXJ5dswg9F2BRKfvGZtOl1PVgPaWT+8PTo=; b=Cd+yWYypymQzJ6uzVeexEb91dv
 D/o1kayaafTinEcdX6C4Mw2bpeI3GGQ3PAfHFc44SekR25qmzu2nOO2YccMvxxotvcPFC+bcamXOm
 GzmOx+yKUNzTXhCQL9s1lo1QpoV/uN1/xqwIQmEubTfF0ODBzJF2c+MgEGICLI/R2q7E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Mime-Version:To:Content-Type:Content-Transfer-Encoding:Date:Subject:From:
 Message-Id:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9dg5GQNUSNXJ5dswg9F2BRKfvGZtOl1PVgPaWT+8PTo=; b=i
 JcZhEfwgO0XIqmlvZSPPkXzRJvayAEKgudFZYvTcquabdC6C9A8zGZh3kRj8zUcf0M8hI8WGaG5aY
 aERJK9gQYXQ2qzn4zAjjVAhJ/hA0+Rx5Ev5ju0sQFrgDaWIKLAbdzTW7t4IwaEzpT2q8L3stP0pce
 rOXR8U47OoNoslog=;
Received: from sg-1-102.ptr.blmpb.com ([118.26.132.102])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vwwrE-0000sR-OC for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Mar 2026 06:34:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1772432278; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=9dg5GQNUSNXJ5dswg9F2BRKfvGZtOl1PVgPaWT+8PTo=;
 b=EkfFFQk3S9cKn3gToNrYgrERLb+HcC/f0eSam+K1zoipp2lpP7SXAPW1WWaogRGJFZgTI9
 Gb8P8HKMDcsDhynuLdSP3CnbsDFg9V0h0dr2nBIEU4lov+3bkGEnXXqPZYgiAlMHVhi05D
 Dm4kF19JQ7VblR+y2ppglms7XZABUjgT3+yrgQT33wz/HqOCEmZJZazkbHOHpET1BPi3DJ
 k2Je61oQe+3C1J0nInsQJNa7HQV/Nc3OQyELZPIfOn9lqSa6r84sQpjKWoefTSsZtpHYrP
 +MwUMAUZSYygn1HWsT19a2fiDphyNdMfPJtYFkzoqfVZ/VkaXL9ilIsLGPw6kg==
Message-Id: <20260302061746.1579192-1-zhangjian.3032@bytedance.com>
X-Lms-Return-Path: <lba+269a52b94+fb01a0+lists.sourceforge.net+zhangjian.3032@bytedance.com>
Date: Mon,  2 Mar 2026 14:17:46 +0800
X-Mailer: git-send-email 2.20.1
To: "Corey Minyard" <corey@minyard.net>, 
 <openipmi-developer@lists.sourceforge.net>, <linux-kernel@vger.kernel.org>
Mime-Version: 1.0
X-Original-From: Jian Zhang <zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: A valid IPMI over SSIF response must contain at least three
 bytes (NetFn/LUN, Command and Completion Code). Some DMA-only I2C controllers
 may return short reads instead of a proper NACK when the response is not
 ready. Treat such short reads as incomplete and retry until a full response
 is received. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vwwrE-0000sR-OC
X-Mailman-Approved-At: Thu, 05 Mar 2026 14:53:39 +0000
Subject: [Openipmi-developer] [RFC] ipmi: ipmi_ssif: require minimum
 response length
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
From: Jian Zhang via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jian Zhang <zhangjian.3032@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: F37F9213E73
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DATE_IN_PAST(1.00)[80];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[3];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[zhangjian.3032@bytedance.com];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:replyto,bytedance.com:email,bytedance.com:mid,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

A valid IPMI over SSIF response must contain at least three bytes
(NetFn/LUN, Command and Completion Code).

Some DMA-only I2C controllers may return short reads instead of a
proper NACK when the response is not ready. Treat such short reads
as incomplete and retry until a full response is received.

Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 37a5cb5c53f1..64ee939a7a4b 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1300,7 +1300,7 @@ static int read_response(struct i2c_client *client, unsigned char *resp)
 	while (retry_cnt > 0) {
 		ret = i2c_smbus_read_block_data(client, SSIF_IPMI_RESPONSE,
 						resp);
-		if (ret > 0)
+		if (ret >= 3)
 			break;
 		msleep(SSIF_MSG_MSEC);
 		retry_cnt--;
-- 
2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
