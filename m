Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jmCCFHPZT2qZpAIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:07 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7B4733CF2
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=d7KX0xZl;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=YlPEoxk9;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=ZHBX5caO;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b=cy89Y128;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9yoc4VlhCpN00If3yFtPdqzlKub9CoR4CoEggO4P1Ds=; b=d7KX0xZlyp6ft3k2CyMajihwCV
	BnZvShwfONdwggoFGTI9Am82rbMTVxHPqlV8U2U/l3Msc8xcdrwqYhqO12ktWLaa8cQ7GcWwzFlLu
	duwA11yimGXkRNLwit1jeqFlwQMZum4Hv7XK6EkfYl7+5VHZ3txWNyN2NqcUNGGGSnxs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whsUg-0006D0-AM;
	Thu, 09 Jul 2026 17:24:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+shankerwangmiao.gmail.com@kernel.org>)
 id 1whsUe-0006Cp-Bx for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xy4zuNi9l/vTSw6gcFwKaCyfymURRz4z0azYHAVfzFA=; b=YlPEoxk9QP3NPdObrh83P8lCs/
 CEIRAhjsZP1C3Te+/6VphsJm5YBOyRtR0QFMDi/JaU3RiRhBkI0YbAu8MvcSkxBVAeTHz4DwF0qXF
 tdRxhs1WOEvVf4+tfF38NNJc8QyJfqjQAaWjPygW7BxTX7zG8zMjfhJMAU7Wi0qFuqMo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xy4zuNi9l/vTSw6gcFwKaCyfymURRz4z0azYHAVfzFA=; b=ZHBX5caOrms6UJCtdDw6nvXbF2
 4Ng7vEkf7hdtroYJY2OP28OhQ7jxhoJTKz8kzmaS3szI6qxH7jYyM9d4HVINIsJlsJGZGM9g4U2FL
 +PstDNBZYLZADAixudSzkFIfigYcyrd9CvpdhZXlcvwT4TA/Yk9qxS38GRRabRPqZ9f8=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1whsUa-0006s4-Aj for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9D03944021;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 51ED0C2BCFF;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1783617885;
 bh=vZac1ji0I2lbNpDkmzQP3TJvCTOj42vg2oAMlAK30yA=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=cy89Y1288Ev1qqON71vph0CAijo5j7F1wrkgryWDzPGYNHYdT0Ah2NXv5gG64LfP2
 2tAruV/MuuSdZmvdtXZ4pMss+fvQ3NZUyqGFhMg2k1DpUeLQnV+QJgqcYVhe86K/0E
 qu+FiWae2FOtpFvZxu/6R9cfA4YoAtFwIWpGbATg795qSBsitPNZt2Xqj3UzujxrJV
 s0Rl1I6k+NOchR3Ox+1jcUN0+pKgg6fzvR7piEcXstWBr1kNaVBPdZsuJwI1PMIiZU
 7eAvkybpB/G+Pi/6w5D4RJYjhJcl/wXEn+k3dPnkR3l/AwMmo/mUdn05/bZfGFHrM6
 TVJVvh9aZ0bgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 3F277C43458;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Date: Fri, 10 Jul 2026 01:24:22 +0800
MIME-Version: 1.0
Message-Id: <20260710-ls2kbmc-mod-v3-6-ef718636e78e@gmail.com>
References: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
In-Reply-To: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>, 
 Chong Qiao <qiaochong@loongson.cn>, Lee Jones <lee@kernel.org>, 
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <corey@minyard.net>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=726;
 i=shankerwangmiao@gmail.com; s=20250715; h=from:subject:message-id;
 bh=4cYoUAWfr6lC2eTeoh29c5JZOLqOi/IiHDJf/iiky6g=;
 b=owEBbQKS/ZANAwAKAbAx48p7/tluAcsmYgBqT9la4CJbrSXeiOdx6rKWijSotf1UR0bj6PC4l
 uz6ToNr+TSJAjMEAAEKAB0WIQREqPWPgPJBxluezBOwMePKe/7ZbgUCak/ZWgAKCRCwMePKe/7Z
 bmhwD/47GGXrGDaz5O7vrcrXTU+qDXUIultuqzdjvPV4LcSfNxHp21AC1XneWDecbOOyHoVvsdy
 a1cVf7Rmkh2Rq5h8wXCby7bDYGb2R9cY2/Ao9jaO0zBHhWX6dGxYw3mc50vGeg7IGowBlZ4OtL9
 iU+aLjfy6NpJP8AqWefP+/8H2iQuWOKgnPne2DfcuQcVG4ToavmRDGM0CseukvIwWIsgFCoIMWV
 l0xEpBLtqe+J1qgqNLHEmJVRdolvh6MMDcO9vXY+mJGbZ0+xy7D0X+GNPNX5W0KgwUW38ALawBC
 bi0gcZb2eAwbCTQldWdQkrQdGZjRoGLgUPUOd83TkBgj/xK2SgTg98h5GPw9h5+9goA7A+Fg7Fc
 9SmdTLaZYSDOE5WZKaS3QSWqxvT9znYRJplS4jBkTMt6BKD3CuBuVORlkg+z4zEEalDqKiIE/+Y
 gxY4K6xAQ4q9PjhgsAf6nzjBsK27/nHAk5ASI3b515lvi08E13J8Xi4iGW6WRETBMaSAFviZ0L6
 4wt32DLNKJY7W83oNovZOmC6Yxl4djFpssD7adyS/t8YGntYCYmdV5i9bv9oSoR+ebvqhTjFoLt
 FrW2atkd41bUfd1ki75n8z1Jeu+f328UwnZISNvOcPEDHhimb4Lu5DFGhgA7WDAa3QuJNVzhWl1
 NCdZrAe4tRJ04ww==
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
 Content preview: From: Miao Wang Make ls2kmc able to be compiled as a module
 Signed-off-by: Miao Wang --- drivers/mfd/Kconfig | 2 +- 1 file changed, 1
 insertion(+), 1 deletion(-) 
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
X-Headers-End: 1whsUa-0006s4-Aj
Subject: [Openipmi-developer] [PATCH RFC v3 6/7] mfd: ls2kbmc: Able to be
 compiled as a module
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
X-Rspamd-Queue-Id: DC7B4733CF2

From: Miao Wang <shankerwangmiao@gmail.com>

Make ls2kmc able to be compiled as a module

Signed-off-by: Miao Wang <shankerwangmiao@gmail.com>
---
 drivers/mfd/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 763ce6a34782bdd5d2b1a4d840c75b040092d83e..a7a9f97af248c88489dc1203a1ba05f2ce4827df 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2494,7 +2494,7 @@ config MFD_LOONGSON_SE
 	  which will forward them to the corresponding engine.
 
 config MFD_LS2K_BMC_CORE
-	bool "Loongson-2K Board Management Controller Support"
+	tristate "Loongson-2K Board Management Controller Support"
 	depends on PCI && ACPI_GENERIC_GSI
 	select MFD_CORE
 	help

-- 
2.49.0




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
