Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vHhkL3PZT2qapAIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:07 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F5E733CF3
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=AAzsKcxJ;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=VqK+h+nN;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=RfZMhi3D;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b="IzLJ3BF/";
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X92BCpJ8DZSKFjQK2to+D1pvInv+cWe2rRTasM6k0X4=; b=AAzsKcxJJxoXebQTrnPbLAOuop
	8yKdOh7LUkUHaGzOFRLOV/qyrJhGKNHPx6s5px9bXNmks0PZKC/Nk3NspYIog4qAejT06BIbg+iw3
	ymatsAWhMyw1ssG/9EQL/WN4m+jhhApM4Ioawoaeir5cCCzshuuecQvvEJ8LWa+j9qzw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whsUe-00076p-DV;
	Thu, 09 Jul 2026 17:25:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+shankerwangmiao.gmail.com@kernel.org>)
 id 1whsUb-00076f-Sv for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Is3b978M+zwWHMMGzvfK5Y0bsWbGPpczWfDDmHSHMSQ=; b=VqK+h+nNThO1lYr9HUmDe5b0oe
 oPfqcJIEbcSyvKfIwVc+KRpStfBiWUWo9zj85ew1Std3czRx5Tdv6s85Dkz5JkiGSE2hf1I2i6FEp
 TgNLPvIKeo1rMnclpVbY/V1Lx7JmTyZkQaTkChWwcMq+3+tQApcmmd4OGf8P0Xyx1xvE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Is3b978M+zwWHMMGzvfK5Y0bsWbGPpczWfDDmHSHMSQ=; b=RfZMhi3D7T/4DnTmVyynYMujon
 zISGM1fQHmCR+VySZI2hK/h6GwqOm5mKBpDGQYk1300aT6Tc9kDFH7x1erV56zsOkQnnQNNd5eVfV
 jmlh3oRt07aadcx4ml/SqawccAWhiSKBKMORPNc/IIzstcQlujFRm0sLrBGucAve2qOY=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1whsUa-0006s2-5W for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 924104401A;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 341EBC2BCF5;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1783617885;
 bh=hWrvd5fvZPyhEvtDoJ9K7KER8KzSL+2EJ6VgJ5EVToI=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=IzLJ3BF/vPqrbOxMHKWa3E1pTnN7N4VfurajJbTPKl7IakuO264JP0XOns8REdS7w
 5V5kVKxNB5h0CymarEUOpzOgNO/qhb7tStVwl55r+SZnPpRlfngPPsDDJt2ZiPWO3w
 1OLFiNSVb96Y47IaCb8sLNk4swYCUCMTCt50mchnoohNfNcEUzvBSIka0iU8i+aSOB
 U9c+Fz068oupw5mWk8EZ4OGlQYPBIIVCwE5D7O+s60xx4KGbvOzq0QZ8V4pEgJsFZK
 IU0BcztoXAJ5TYZSoYQUHPW2YRKApQE2G3Cz7Hpdy4wKjI7NtIb9+oZYZAhk+7l41a
 IznGVQbxMZI/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 18262C44506;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Date: Fri, 10 Jul 2026 01:24:19 +0800
MIME-Version: 1.0
Message-Id: <20260710-ls2kbmc-mod-v3-3-ef718636e78e@gmail.com>
References: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
In-Reply-To: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, 
 Chong Qiao <qiaochong@loongson.cn>, Lee Jones <lee@kernel.org>, 
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <corey@minyard.net>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1128;
 i=shankerwangmiao@gmail.com; s=20250715; h=from:subject:message-id;
 bh=OujIxIWqUrslWQYj9yXk01UV8a8eZbDNcLz7yiDWTA0=;
 b=owEBbQKS/ZANAwAKAbAx48p7/tluAcsmYgBqT9laS7rZjrVGRXVB+fmOUzlKL6aydQdsIqg97
 Jv/CvpO2WCJAjMEAAEKAB0WIQREqPWPgPJBxluezBOwMePKe/7ZbgUCak/ZWgAKCRCwMePKe/7Z
 bokXEACZIyWVsNdxahozVJUXJON3N1imfdQ393IkB2/oJIWEFzMscSRCzDAYMg4CFKKl/2PjbHY
 veUOuOVVSjJNaqVM4j3vFr1lYzFjZS2rugCOfrBH2fW07XjjKoMmc3bRrk5Dix/0s3n1OAf2lUo
 sNTOnhfKLxCbLmju6hzjd0NolojyqMGYiNbazRDpy8NinszZCBgyumqqFsfiz6ThHpWw3iOyKTs
 ugAt2A0PKUhQQqbSU+fxMe/tCpaEJlETzV3S6ocX593qD0Ubwyb171boQ9AnyUJX4QHA05eCorw
 VAyBizWmlrM/aUjVTbcPrvwt5n5gQsLixKZI/kaJwlRHfKnKtDjfYJDuZtSovo83EP89PEvYLsG
 nQzz3TP6i0dE8+6hKteH3D52h4kwb2uo7gDlOW0+gx9CPfW4H+gmMSpLGRm0MC0a2z9L/6LDuWJ
 lk8YuwfzSamc1ioJJY5IFz1G+6JCw5BTTH8O+RmJ/OVmafFCL5e23Hf1xMG6CzpW/5jLV2MqTZ9
 yiOvgJfkWMuUqiaBGWOCudrYoJlGO4vcqSj4TU0BIE8VYc74tTgdYvLh0EkkdJ+vgF25TKU/yI8
 M+AH9Fw51STcBsKgjYS8MZ+2tiYikjkwX2zasP86sOGJqRf0Z6SuYtqpeSv29kvAgInoxaSDj6M
 WKOSBOToZRaqnDA==
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
 Content preview:  From: Miao Wang Use update_screen, i.e. redraw_screen() to
 trigger the redraw of the current vt. Fixes: d952bba3fbb5 ("mfd: ls2kbmc:
 Add Loongson-2K BMC reset function support") Signed-off-by: Miao Wang ---
 drivers/mfd/ls2k-bmc-core.c | 5 ++++- 1 file changed, 4 insertions(+), 1
 deletion(-) 
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
X-Headers-End: 1whsUa-0006s2-5W
Subject: [Openipmi-developer] [PATCH RFC v3 3/7] mfd: ls2kbmc: Redraw using
 exported functions
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
X-Rspamd-Queue-Id: 50F5E733CF3

From: Miao Wang <shankerwangmiao@gmail.com>

Use update_screen, i.e. redraw_screen() to trigger the redraw of the
current vt.

Fixes: d952bba3fbb5 ("mfd: ls2kbmc: Add Loongson-2K BMC reset function support")
Signed-off-by: Miao Wang <shankerwangmiao@gmail.com>
---
 drivers/mfd/ls2k-bmc-core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/ls2k-bmc-core.c b/drivers/mfd/ls2k-bmc-core.c
index b02e4955e9b04f517892a18b2ef103b5e481a238..a5465c42a77b8b7b81e3ad787d6036679c6ba6df 100644
--- a/drivers/mfd/ls2k-bmc-core.c
+++ b/drivers/mfd/ls2k-bmc-core.c
@@ -25,6 +25,7 @@
 #include <linux/platform_device.h>
 #include <linux/stop_machine.h>
 #include <linux/vt_kern.h>
+#include <linux/console.h>
 
 /* LS2K BMC resources */
 #define LS2K_DISPLAY_RES_START		(SZ_16M + SZ_2M)
@@ -310,7 +311,9 @@ static void ls2k_bmc_events_fn(struct work_struct *work)
 
 	if (IS_ENABLED(CONFIG_VT)) {
 		/* Re-push the display due to previous PCI-E loss. */
-		set_console(vt_move_to_console(MAX_NR_CONSOLES - 1, 1));
+		console_lock();
+		update_screen(vc_cons[fg_console].d);
+		console_unlock();
 	}
 }
 

-- 
2.49.0




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
