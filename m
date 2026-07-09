Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NaIvF3DZT2qVpAIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:04 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ED4733CE2
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=KLDugkrW;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=QSTgq9Ik;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=egd8urW2;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b="EAVZohe/";
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iPaX1Lrn6kw7/+7VzlF0T4HmtEoF9QrWGxAow5eMnfA=; b=KLDugkrWLmULowdNOkKKcV+/lY
	KgEyyYzWinVpUtB4KFLTIGoPpD3PoKowbAsAD9S1euGE5rnLqxzt0hVAwU2+kp4U7B+aQhGo+MDp+
	nwIokbCgCyghogAwotii9S3aoOTIxSreAumu8WAkJhme8G/ykVzUKLiuP1brIwrLRTr8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whsUZ-00076H-2l;
	Thu, 09 Jul 2026 17:24:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+shankerwangmiao.gmail.com@kernel.org>)
 id 1whsUX-00076B-TU for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PKl+QGSD241MCl1PhfKuI07lj+p6lPKhpnJf1TtwKRE=; b=QSTgq9IkcEjaKjodUQ3XYyRNdH
 +uaEb00f0b9qiTss7/bGBFZzqXx77fIhTbxT0QyThyXxpiCEUYOPfa0rSGW9Pbv0Yz7wGGjLpuqUn
 kNVvqZ8oF3NbBQujpM8KhQjCHd1fWH4//czlPKnlPm9jf+5afTpGcNCpyKqcxUVl/Pas=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PKl+QGSD241MCl1PhfKuI07lj+p6lPKhpnJf1TtwKRE=; b=egd8urW2IMuqV1AUKCVP2KoUSp
 uEkOQ3c3TnW1VAzpVedFg6Q8vDHODu0dVunZYF/CoKsOW7klgYtQtpG0GznKbbyc8RLtvuXf258j4
 2rfLLAfB5CrY2RWaipICE6kI51XZteSbRgwPgZ10XmWfQnBOKtYW5IoUh6iFRjL58DOs=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1whsUU-0006rg-Vv for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8C45944016;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 45705C4AF09;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1783617885;
 bh=OjHpqlAg5MF1Iiyza2/YLamBBIPis/Er/709OxC7A+o=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=EAVZohe/q7B37qw8Kz/eY2wuRfWu+pCXjvNAob6ymrSyZ+e/Qy1GCWohaEQW9fadY
 LuQlYT9TiMCnzjzDimT7usLKK4h40iYWP5q8j/t8m27uVhbeWIFRTezCwNlb9xen2H
 SgjybY3Sgq4Jl/5XtFpeho7ko+ChhlFFMMesG8iV5EdHfOVM29kiblGckFriZlskER
 ZqmkGu8P7bxM+g/x3BoKWW4WrQtAoptRI0EOYezhKivsrGk6JVHQ+M5nSkt6A0eZlO
 wt5b7WJt8LaV9FO738q3k43k2Ut3BAkgPtKpHNBgADLq0KJjBnkM2Bv2ir9DqmPqTq
 1riehh1uAsBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 32B6FC44508;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Date: Fri, 10 Jul 2026 01:24:21 +0800
MIME-Version: 1.0
Message-Id: <20260710-ls2kbmc-mod-v3-5-ef718636e78e@gmail.com>
References: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
In-Reply-To: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, 
 Chong Qiao <qiaochong@loongson.cn>, Lee Jones <lee@kernel.org>, 
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <corey@minyard.net>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1266;
 i=shankerwangmiao@gmail.com; s=20250715; h=from:subject:message-id;
 bh=DqOdU6W3FkZ9wJNJOs/NgLGl94jX8Hgep53VmIhV2nQ=;
 b=owEBbQKS/ZANAwAKAbAx48p7/tluAcsmYgBqT9laVpLfK6V/x0Vbe6h8iLQEGWKb5mPZ/H2oM
 2hM1IPKnzeJAjMEAAEKAB0WIQREqPWPgPJBxluezBOwMePKe/7ZbgUCak/ZWgAKCRCwMePKe/7Z
 bjX6D/92DGwclTpn8JEIqWvvqivT/xsqa59lGjX8RgaQtQgAieCsMOp+NDj1uaGbrtKeEG7XJv4
 u7AVCPaNIaBRUHu8XwmgLKQbJ5qVaoU96lS2XgQJPY/wlZfjkZDJwoWGz4e7lUtcwK454PlvIXp
 VW2D+TApygU86FNUU4ov6hhuSsz1tr/BSw4hX5PGRNFcBzZUP7eCFeYlyUuwIKQvVpYqKcx8ACc
 QIvfpJdh2lzDjtDeT38UlK4cBlUGU6hKAYDeoyWCQrkNZOUhFIS6CVPCD2stTCGAmKMi2lwT5Wa
 CpyU6cBm3SMR0CpMXvkdWPMwLqwup9CPVRHKizQJcO5yxT0vLZaaGGVl9QxnItxZvAIQmkGbRZd
 InvGttxmzRAx+Nx9XIdVQ79gKAcucKnXqVrXagEZ0P/ZsLpOt4wDhAg+ogSN/aA+keh1dGWdFOX
 HqTFhQILIiMvYCcMQoFKpOnWBbsjbHf0yQ8HGE2FCFuL6kAU5XSSQa1wQo/N+qJ4aIvSoRl99iX
 QAP2ULVzMuhzIiDJcoKpUJ5h2JomZ/H696tXwZjGwf0s/HEFJZrM01DbsVl7Mbv89vGbW4oKesy
 Sy5p9OeFKfEnHTRxbQLB9dk0b5uk3Tg5httLDmhN9EAqHOvoHqZ1DSyaakCNiIJqK5N5xEe+TF8
 kI9rrTkwPVTBv3A==
X-Developer-Key: i=shankerwangmiao@gmail.com; a=openpgp;
 fpr=6FAEFF06B7D212A774C60BFDFA0D166D6632EF4A
X-Endpoint-Received: by B4 Relay for shankerwangmiao@gmail.com/20250715
 with auth_id=462
X-Original-From: Miao Wang <shankerwangmiao@gmail.com>
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Miao Wang There is no strong dependency between the
 IPMI driver and its mfd driver. Although the IPMI driver will not work without
 the mfd driver, it is not a hard dependency. The IPMI driver can actually
 be co [...] 
 Content analysis details:   (2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1whsUU-0006rg-Vv
Subject: [Openipmi-developer] [PATCH RFC v3 5/7] ipmi: ls2k: Relax the
 dependency to its mfd driver
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
From: Miao Wang via B4 Relay via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: shankerwangmiao@gmail.com
Cc: Miao Wang via B4 Relay <devnull+shankerwangmiao.gmail.com@kernel.org>,
 Yinbo Zhu <zhuyinbo@loongson.cn>, mfd@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 linux-gpio@vger.kernel.org, Xi Ruoyao <xry111@xry111.site>,
 WANG Xuerui <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Miao Wang <shankerwangmiao@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhoubinbin@loongson.cn,m:qiaochong@loongson.cn,m:lee@kernel.org,m:chenhuacai@kernel.org,m:corey@minyard.net,m:linusw@kernel.org,m:brgl@kernel.org,m:devnull+shankerwangmiao.gmail.com@kernel.org,m:zhuyinbo@loongson.cn,m:mfd@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:jiaxun.yang@flygoat.com,m:linux-gpio@vger.kernel.org,m:xry111@xry111.site,m:kernel@xen0n.name,m:openipmi-developer@lists.sourceforge.net,m:shankerwangmiao@gmail.com,m:devnull@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,loongson.cn,lists.linux.dev,vger.kernel.org,flygoat.com,xry111.site,xen0n.name,lists.sourceforge.net,gmail.com];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[shankerwangmiao@gmail.com];
	TAGGED_RCPT(0.00)[openipmi-developer,shankerwangmiao.gmail.com];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E2ED4733CE2

From: Miao Wang <shankerwangmiao@gmail.com>

There is no strong dependency between the IPMI driver and its mfd
driver. Although the IPMI driver will not work without the mfd driver,
it is not a hard dependency. The IPMI driver can actually be compiled
without the mfd driver, and it will just fail to probe. When the mfd
driver is loaded, the IPMI driver will probe successfully. Therefore,
the dependency of the IPMI driver on its mfd driver should be relaxed
to "imply" from "select". This will allow the mfd driver to be compiled
as a module and the IPMI driver to be compiled as a part of the ipmi_si
module.

Fixes: d46651d4e3c0 ("ipmi: Add Loongson-2K BMC support")
Signed-off-by: Miao Wang <shankerwangmiao@gmail.com>
---
 drivers/char/ipmi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
index 669f7600019747bcd2b37563477cf336f19a0407..f456e3e89416932f0d21bb742153a503aeb24267 100644
--- a/drivers/char/ipmi/Kconfig
+++ b/drivers/char/ipmi/Kconfig
@@ -87,7 +87,7 @@ config IPMI_IPMB
 config IPMI_LS2K
 	bool 'Loongson-2K IPMI interface'
 	depends on LOONGARCH
-	select MFD_LS2K_BMC_CORE
+	imply MFD_LS2K_BMC_CORE
 	help
 	  Provides a driver for Loongson-2K IPMI interfaces.
 

-- 
2.49.0




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
