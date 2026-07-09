Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nt/yE3LZT2qYpAIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:06 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B2D733CEB
	for <lists+openipmi-developer@lfdr.de>; Thu, 09 Jul 2026 19:25:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=Y29wFvjm;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=WppDfMja;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=Qn28xisI;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20201202 header.b=figBezG3;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:MIME-Version:Message-Id:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tty97RSrVipyQvoUrdwnENqQ3xwE9SvObKLZ6vaYSEY=; b=Y29wFvjm7wpYXhRmmqVvRV1Mrk
	S0keRKyAw0+wSi4aAj2QtTsMNcdIA+82pGecYQtPv6U+77OoCDn3/htJkaLMGGVgGXtGD0Iz9xpDo
	cmkfVr6VZ04+x5+jj0k9kc+MWoxSV62ptFQdN6DhiLCVjHFDppnUpuDSuG+WCujR17DI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1whsUc-00079L-Ib;
	Thu, 09 Jul 2026 17:24:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+shankerwangmiao.gmail.com@kernel.org>)
 id 1whsUa-000792-4i for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LdF3zVW3hfsdlr8Qqfo6Kvcvi0MlO8xoyQwBiKJvCwY=; b=WppDfMjaMJhRqpETkMQwSAxvOM
 qPRRdzvCu+YHLz2zup6jEY+eEvU7pLyOeBiV5OT0W8gDlJGQN/jYRSZAoAE/LRSwEtO5lttoB9FJr
 sBjPVBvX6rqOHmIPHaOob6pu6KjiRpi5PmjmLdsUe3E43sdXajPRoVCNspPMvWbPP2/Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Reply-To:Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Message-Id:Date:Subject:From:Sender:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LdF3zVW3hfsdlr8Qqfo6Kvcvi0MlO8xoyQwBiKJvCwY=; b=Qn28xisIBQpoo9HuD+0ezhFTw6
 X/zpkNMXgB2yKvt6KP9su8NUo7ZyK5Nobl4d0m/ROS046ofmuDty0rcOuyIshPa6AOzjijXdKqk9t
 zLbQcHSsSbGqpcz/uH6Y1BOOzSUYNBFlpUTrAMQP+juF2iHGAt10jzKqEfy2mxMjR/VQ=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1whsUa-0006rz-3R for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Jul 2026 17:24:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 733BB61386;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 162D9C2BCB7;
 Thu,  9 Jul 2026 17:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1783617885;
 bh=sukWlxC8McdyMqbXOPPFAxKItWB1p7RLYeJjYFSvLwg=;
 h=From:Subject:Date:To:Cc:Reply-To:From;
 b=figBezG3wTtQim8kE3xdouyCCbLtWVze1YMIW4FmvLhHUTG8N0UnLHD+fN/UrYlqc
 gRjgClNiDjeB7Y9ZqcM/mvpwGF5XuGBQMdbziag2oBCf8fM/yL6i4/8hcWL1oUOGt/
 roIFmKL6dPEyUK+i9amP/S3X+rOlaE3xehoICqcU5mQ/oL1OAwwMaiC7oDrCA3RtdD
 klrEEerttAe6vdoer9fEHeXFyLTdCgMrxvfIEted9WOK1WvwN+1rGj9cjv7VV/PR2M
 JR4po7ZRnsJfi1z7Qg7L24uh+tPP0F+WsdhFkrcneV6NGjRE4Xzqa/3m3gi7GYrxLl
 XYozHlJsfyGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id E3AA7C43458;
 Thu,  9 Jul 2026 17:24:44 +0000 (UTC)
Date: Fri, 10 Jul 2026 01:24:16 +0800
Message-Id: <20260710-ls2kbmc-mod-v3-0-ef718636e78e@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEDZT2oC/32NywrCMBREf0Xu2khy06bWlSD4AW7FRZpHG2waS
 aQopf9uyEo3LmeGc2aBZKIzCQ6bBaKZXXJhyoFvN6AGOfWGOJ0zIEVBBQoyJrx3XhEfNKmRtqz
 llLYdQiYe0Vj3KrYrXM4nuOVycOkZ4rs8zKxMRdbQ/Y9sZoQSxauqs7U2VvJj76Ubdyr44pnxD
 4uZRWm1Zk3FGiG+2XVdPzlMtBnnAAAA
X-Change-ID: 20260626-ls2kbmc-mod-5209193009b2
To: Binbin Zhou <zhoubinbin@loongson.cn>, 
 Chong Qiao <qiaochong@loongson.cn>, Lee Jones <lee@kernel.org>, 
 Huacai Chen <chenhuacai@kernel.org>, Corey Minyard <corey@minyard.net>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3331;
 i=shankerwangmiao@gmail.com; s=20250715; h=from:subject:message-id;
 bh=sukWlxC8McdyMqbXOPPFAxKItWB1p7RLYeJjYFSvLwg=;
 b=owEBbQKS/ZANAwAKAbAx48p7/tluAcsmYgBqT9lKe2UhEAclLxvizAebe3Mw+jE5JzpCIBFl1
 do84oJt6RmJAjMEAAEKAB0WIQREqPWPgPJBxluezBOwMePKe/7ZbgUCak/ZSgAKCRCwMePKe/7Z
 boFoD/4zNd1tNOwcPbcH8RsMUhxL3Z/D3tQHNXN8Vh/sMxjtT8QVk1W9incgMg0CxrFUW9q09XQ
 lzHakKOaZQ0vKGFcfiU3zKYl1WBTNkSTvKiyrpIa0bFUYAx5T2QcngzDxvLUR0pbMCw0SIdcPEp
 dy4ws/UYwgiFLca3LsybyE8wOcEDPARul3qPQrwWZEGapgw+FQbsU2o6tXN9lb9+9egv+6KMjxO
 2RnOp7av1CLIyONHVBEs7cxxw5DzO/suYSZ5Uu0adPiIRsNA7t5pH9A4EvniLC7+VMzMMdS8bcX
 96wSMZOdZIInmBop0j4sV8SVW27Q0vfpULsBiB5NTVG2ROiG8AjdV9aIcS5kiVJVD3OynUpigTe
 dixWQU8RaCwd43mqkjvqILJpMTkp8UwJoaERKiWcPcmt4OeNj8Om1yb/7Sr+AC4Bvomz8rvMhzh
 XLuTmtCmmLPzxxITNU4hDKaBCWbgmUd06rQovgmqq5PrgeeA8vaGd//4c2kUhyj2WZtHEHSQt2s
 0UZaCIwTduI0cWKXH+wJ5m0vCqVMaPQFR9taDkLW9lqkFehFOytNLqSCKTIvo9yevBpy7UBJSkz
 /5/AxUOebWjB2ab8LGq3LabHltqwwa/mRVHbHeXBLUonpdd/G86EBFWBk5isoi1rciOOf6EdfOB
 aIHX8caxYgUcSbA==
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
 Content preview:  Previously, the driver has been introduced to support the
 Loongson 2K BMC running on the Loongson Servers, which is essential to prevent
 the system from hanging when the BMC is being reset and the def [...] 
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
X-Headers-End: 1whsUa-0006rz-3R
Subject: [Openipmi-developer] [PATCH RFC v3 0/7] mfd: ls2kbmc: multiple
 fixes for this driver
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
X-Rspamd-Queue-Id: C2B2D733CEB

Previously, the driver has been introduced to support the Loongson 2K
BMC running on the Loongson Servers, which is essential to prevent
the system from hanging when the BMC is being reset and the default
efi-framebuffer is being used. However, there are some drawbacks in the
driver.

Firstly, the driver tries to read and write to the connected PCI-E host
controller registers, assuming that the BMC is connected to LS7A PCI-E
host controller. This assumption should be true for real products, but
to prevent from accidentally reading and writing to the wrong PCI-E host
controller, this driver should be modified to check this before
accessing the registers.

Secondly, the driver uses non-exported functions to tell the vt
subsystem to redraw the screen, preventing the driver from being
compiling as a module. This can be fixed by using the exported
functions instead.

Thirdly, the driver directly accesses the GPIO controller registers
using hard-coded addresses, which might conflict with the loaded GPIO
controller driver for the same GPIO controller. This is fixed in this
series by using the GPIO subsystem APIs instead. However, legacy GPIO
APIs have to be used in this fixed to correctly request a GPIO
descriptor from the GPIO subsystem, which might be further discussed
to find a better solution.

Finally, there is a minor issue in the driver where it changes the
mode string describing the screen resolution during probing, which
prevents the device from being probed again if -EPROBE_DEFER is
returned by the probe function.

I have tested the changes in this series on a single-socket Loongson
3C6000 server with a Loongson 2K BMC, and the driver works as expected
when the corresponding GPIO driver is additionally loaded.

Signed-off-by: Miao Wang <shankerwangmiao@gmail.com>
---
Changes in v3:
- Check the return value of devm_add_action_or_reset when registering
  the cleanup hook of the work queue
- Use swnode to create the link between the device to the GPIO chip,
  and prevent borrowing the legacy GPIO APIs
- Link to v2: https://lore.kernel.org/r/20260708-ls2kbmc-mod-v2-0-2afdd1741766@gmail.com

Changes in v2:
- Several fixes suggested by the Sashiko AI review bot
- Add a cleanup function for the wq on removal of the device
- Relax the reverse dependency from CONFIG_IPMI_LS2K to
  CONFIG_MFD_LS2K_BMC_CORE to allow the driver to be built as a module
- Link to v1: https://lore.kernel.org/r/20260708-ls2kbmc-mod-v1-0-c344bf5defa3@gmail.com

---
Miao Wang (7):
      mfd: ls2kbmc: Make a copy when parsing mode string
      mfd: ls2kbmc: Sanity check for the connected pci port
      mfd: ls2kbmc: Redraw using exported functions
      mfd: ls2kbmc: Cancel the work queue on removal
      ipmi: ls2k: Relax the dependency to its mfd driver
      mfd: ls2kbmc: Able to be compiled as a module
      mfd: ls2kbmc: Capture the reset event of BMC through GPIO

 drivers/char/ipmi/Kconfig   |   2 +-
 drivers/mfd/Kconfig         |   2 +-
 drivers/mfd/ls2k-bmc-core.c | 235 ++++++++++++++++++++++++++++++++++----------
 3 files changed, 184 insertions(+), 55 deletions(-)
---
base-commit: 0e35b9b6ec0ffcc5e23cbdec09f5c622ad532b53
change-id: 20260626-ls2kbmc-mod-5209193009b2

Best regards,
-- 
Miao Wang <shankerwangmiao@gmail.com>




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
