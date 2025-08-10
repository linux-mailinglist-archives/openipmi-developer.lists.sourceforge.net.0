Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC02DB1F76D
	for <lists+openipmi-developer@lfdr.de>; Sun, 10 Aug 2025 02:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iJZeT6Z/GS+AXoR9RRkiPizuql9YPkfwTMDF/+zUYFI=; b=Knp9vP0ftjRptoUw+KLXPZvjQ4
	0EUfLw+anJLNiHsxPCDVixJn7nukZBA9Q049DMNEoJAoq4jndMeHIX+rVXoNi2XG7kVX57utYsU4X
	pJq5/DukBHPtd/0o65JMWxcQkLj10ruuohmGwXZaZFMDF4wnmTZVIEtt8W+UYumlfyyM=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uktoq-0003XB-Sm;
	Sun, 10 Aug 2025 00:21:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1uktop-0003X4-C0
 for openipmi-developer@lists.sourceforge.net;
 Sun, 10 Aug 2025 00:21:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fy7NLMPKVrZDXkSDiEf85Twj4zFsdyteViMvRMJgkbU=; b=GE8Bdx4FMars/5C7jbJPdZC4vE
 jVFMeTBKOvh5Nffku0qF/3qCO0BMUwCe2/P1eCLc7ZWgjgPO5d/naRf/OAK7RqgBk8Cd0qwMDHVkZ
 +MAj6axHi64kOakrFBuopiITVdg6qn3T/vG39FvyRM55I1kWXzsSQnyVV/Y1GjgtB1n4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fy7NLMPKVrZDXkSDiEf85Twj4zFsdyteViMvRMJgkbU=; b=Ne9XoLTdMlMDC7TqvRFxWwspB2
 mRd8SB0CNolzDDLX7qohN3CT4vFq9TXlLif6cyjx4BWB0jXedUN1I7pRafEvtdEnNOp08ATzab+lF
 F1HngycSP0dA8KJ96+IxfrFO2BKa7rva5y7E71vzIyx9ySLrlOz3LYUR2XNmoGxUF270=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uktoo-00006F-NT for openipmi-developer@lists.sourceforge.net;
 Sun, 10 Aug 2025 00:21:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5F2965C51AA;
 Sun, 10 Aug 2025 00:21:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03514C4CEE7;
 Sun, 10 Aug 2025 00:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754785296;
 bh=oxbFC8LpeOtA7fHqzIDtkJBaA/dia+1GofAqcvEpL8o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sSez/7yU8bXOeMwMYXDYpCPguSdYR+krOp0FUnPi2586/vJgTDx3BLsytNczSxfD/
 hDoRqN26JsKUVdves38CJi+i0SjdyeJ3KiCM6qn/SZUsYANl0H9bxiV56eN6Y5QjYh
 LoF72yLG6HpOrNAoQP0hbIBVoPHXCV1T921vaxtqTuARA0qsUMD9A+L3UpOjxA5loQ
 2lhBjGhQOpr1Pdxv47q5O5GNtSf14aEJ2smGESyo6P9UVNNCLzzNp6DgSNkyoH6vla
 fMsdh+T+zY2k5lOrvVK8toRTIwbo80nRmVZiLNuYW2JEBu2DijTcWZoWchMlgZiDrx
 8Tx1g9k8GIUDw==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Sat,  9 Aug 2025 20:21:02 -0400
Message-Id: <20250810002104.1545396-13-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250810002104.1545396-1-sashal@kernel.org>
References: <20250810002104.1545396-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.16
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Breno Leitao <leitao@debian.org> [ Upstream commit
 ec50ec378e3fd83bde9b3d622ceac3509a60b6b5
 ] During BMC firmware upgrades on live systems, the ipmi_msghandler generates
 excessive "BMC returned incorrect response" warnings while the BMC is
 temporarily offline. This can flood system logs in lar [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uktoo-00006F-NT
Subject: [Openipmi-developer] [PATCH AUTOSEL 6.16-5.4] ipmi: Use
 dev_warn_ratelimited() for incorrect message warnings
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
From: Sasha Levin via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Breno Leitao <leitao@debian.org>, Corey Minyard <corey@minyard.net>,
 openipmi-developer@lists.sourceforge.net, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Breno Leitao <leitao@debian.org>

[ Upstream commit ec50ec378e3fd83bde9b3d622ceac3509a60b6b5 ]

During BMC firmware upgrades on live systems, the ipmi_msghandler
generates excessive "BMC returned incorrect response" warnings
while the BMC is temporarily offline. This can flood system logs
in large deployments.

Replace dev_warn() with dev_warn_ratelimited() to throttle these
warnings and prevent log spam during BMC maintenance operations.

Signed-off-by: Breno Leitao <leitao@debian.org>
Message-ID: <20250710-ipmi_ratelimit-v1-1-6d417015ebe9@debian.org>
Signed-off-by: Corey Minyard <corey@minyard.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

**Backport Status: YES**

This commit is an excellent candidate for backporting to stable kernel
trees for the following reasons:

1. **Fixes a Real User-Impacting Bug**: The commit addresses log
   flooding during BMC firmware upgrades or when BMC is temporarily
   offline. This is a practical operational issue that affects
   production systems, especially in large deployments where BMC
   maintenance is routine.

2. **Minimal and Safe Change**: The change is trivial - simply replacing
   `dev_warn()` with `dev_warn_ratelimited()`. This is:
   - A single-line change
   - Uses well-established kernel infrastructure (ratelimited logging)
   - Has no functional impact on the IPMI driver's operation
   - Cannot introduce regressions in driver functionality

3. **Clear Problem Statement**: The commit message clearly describes a
   specific scenario (BMC firmware upgrades) where excessive "BMC
   returned incorrect response" warnings flood system logs. This is a
   documented, reproducible issue.

4. **Follows Established Pattern**: The kernel already has precedent for
   this type of fix. Commit ca8c1c53b03b ("ipmi: rate limit ipmi
   smi_event failure message") from kernel v5.15 made similar changes to
   address log flooding in the same subsystem, and that was successfully
   integrated into stable trees.

5. **Low Risk**: The change only affects logging behavior, not the
   actual handling of IPMI messages. The error path (goto
   return_unspecified) remains unchanged, maintaining the same error
   handling logic.

6. **Addresses Operational Concerns**: In production environments with
   many servers, BMC maintenance is common. Without rate limiting, logs
   can grow excessively, potentially:
   - Filling up disk space
   - Making real issues harder to spot
   - Degrading system performance due to excessive logging I/O

7. **Code Context Shows Repeated Condition**: Looking at the code path
   (lines 4604-4615), this warning triggers when the BMC response
   doesn't match the expected NetFN and Command. During BMC firmware
   updates or reboots, this mismatch can occur repeatedly until the BMC
   comes back online, making rate limiting essential.

The change meets all criteria for stable backporting: it fixes a bug
affecting users, is small and contained, has minimal risk of regression,
and addresses a clear operational problem without introducing new
features or architectural changes.

 drivers/char/ipmi/ipmi_msghandler.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 064944ae9fdc..8e9050f99e9e 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4607,10 +4607,10 @@ static int handle_one_recv_msg(struct ipmi_smi *intf,
 		 * The NetFN and Command in the response is not even
 		 * marginally correct.
 		 */
-		dev_warn(intf->si_dev,
-			 "BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
-			 (msg->data[0] >> 2) | 1, msg->data[1],
-			 msg->rsp[0] >> 2, msg->rsp[1]);
+		dev_warn_ratelimited(intf->si_dev,
+				     "BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
+				     (msg->data[0] >> 2) | 1, msg->data[1],
+				     msg->rsp[0] >> 2, msg->rsp[1]);
 
 		goto return_unspecified;
 	}
-- 
2.39.5



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
