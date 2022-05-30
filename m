Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AAE537D41
	for <lists+openipmi-developer@lfdr.de>; Mon, 30 May 2022 15:42:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nvfev-0005bR-Qk; Mon, 30 May 2022 13:42:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <sashal@kernel.org>) id 1nvfeu-0005bD-HJ
 for openipmi-developer@lists.sourceforge.net; Mon, 30 May 2022 13:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tepoi4y1eG110s/x7PMEbmDOXgB5K5fvQchN1E3Eio8=; b=Zdauvxs+xTPWumZ7j3qzdbemUi
 bDvuqTW6tAEaMqY3/UHJYRQzVBvqhN4tBpX0Z7C4eN2BVAmoarPf3bIyqowuzDX4MM4Kw1ftTaow/
 Rr7YEPPLlqCwHhBAPuB+I9LBps/Jyd2HhAXvHWvw8oaYHiXRTEMpjZMr6ZC+rCcy9rgY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tepoi4y1eG110s/x7PMEbmDOXgB5K5fvQchN1E3Eio8=; b=a1fI4gDoscQAxP2dFnPQre1Pki
 Kiwc8SH/TqI7+6SD5f+mO8MM/O2zc05DOa74/a8P/NiYcbH+a43N1O2wLXXz59CUW+8ZgPFx2PVKf
 Qo+X26NROcOWj9hmBPfsBlw0v5ZeGC60/Qc7yX/BA4CudM168MKhixCymI4Ppq538UPA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nvfeu-002tAw-52
 for openipmi-developer@lists.sourceforge.net; Mon, 30 May 2022 13:42:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C681960F2A;
 Mon, 30 May 2022 13:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 204A9C3411A;
 Mon, 30 May 2022 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653918125;
 bh=91YafTY4rpyJMzqIXxTsoWBBfWiA6zSqMttXHOP6uKo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uvuXn8E7Tz7ykH116+HzfWWOg2vAUyb3zFnUQu+jY0h35fsxcfVWoUTZKa5gMF1ef
 VLeaADMQUxzOoDUF2CxXsrkID7CPtOMbUl/EMjso5cR9oBBB6zhP8BTuxMtACP6w7J
 QNynQsgUJtciFAmshKkPZigpd/hxPalfur2xMQjoc5UEiRfCQ1XfEqlwR1BfCRSIY/
 3KfUmzLrNZyA9BuFpre7cfSZAU2SCIBQDgzPm2W1Q2b6DUeNEyyFb6foNB4JBrCFKG
 qBkr1v8nMiRk2I2Nb5rbzIOkN/QB/6fuyDPz02/bTcJ1bIuFz/o7l3aMkV1bfYcyP7
 DF4410cF9sEvg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 30 May 2022 09:37:48 -0400
Message-Id: <20220530133825.1933431-72-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220530133825.1933431-1-sashal@kernel.org>
References: <20220530133825.1933431-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Corey Minyard <cminyard@mvista.com> [ Upstream commit
 2ebaf18a0b7fb764bba6c806af99fe868cee93de ] The was it was wouldn't work in
 some situations, simplify it. What was there was unnecessary complexity. 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nvfeu-002tAw-52
Subject: [Openipmi-developer] [PATCH AUTOSEL 5.15 072/109] ipmi: Fix pr_fmt
 to avoid compilation issues
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
Cc: Sasha Levin <sashal@kernel.org>, Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <cminyard@mvista.com>

[ Upstream commit 2ebaf18a0b7fb764bba6c806af99fe868cee93de ]

The was it was wouldn't work in some situations, simplify it.  What was
there was unnecessary complexity.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index fe91090e04a4..2badf36d4816 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -11,8 +11,8 @@
  * Copyright 2002 MontaVista Software Inc.
  */
 
-#define pr_fmt(fmt) "%s" fmt, "IPMI message handler: "
-#define dev_fmt pr_fmt
+#define pr_fmt(fmt) "IPMI message handler: " fmt
+#define dev_fmt(fmt) pr_fmt(fmt)
 
 #include <linux/module.h>
 #include <linux/errno.h>
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
