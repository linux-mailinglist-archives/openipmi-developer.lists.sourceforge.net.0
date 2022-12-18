Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F12F6500D1
	for <lists+openipmi-developer@lfdr.de>; Sun, 18 Dec 2022 17:19:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1p6wNn-0002et-QN;
	Sun, 18 Dec 2022 16:19:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1p6wNZ-0002eO-Ih
 for openipmi-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:19:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ei48j9mbEB+vS77GYPF71V+UtQzNMdGNJxBQnnJdWsg=; b=SgRmZ73y7nferxnpcm/u+SAEaq
 Fn3pnXO2hCiesEhVouwj2PR0mcEtQ6xfXA1BaTCdv48/j3RHo9kgFdOuijfbMjosHW9BFZSzSyMC2
 wRhqE/mzK+vRwxWHFIsJl6l+uaHytktkCf6/agiIKPyx50FJM005uO5BEJSpLPL8qsPs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ei48j9mbEB+vS77GYPF71V+UtQzNMdGNJxBQnnJdWsg=; b=drxfxc9E1BjltTywHpX+Y5krKv
 8d7evMqfsrqy9HcqKOkQVEsnaNeN1NKBemE/HaTg6vYHgf/y6Z+D08nzOHY+QEedHAnucv87EPea9
 nZC1NazPZBjEh4D+xo7mvKny3kY/H7nNNzz/5fMNR8hKhj/62PjGtI2NVJJ+fgHyNKMo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6wNQ-003TgQ-HR for openipmi-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:19:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2918660D3D;
 Sun, 18 Dec 2022 16:18:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2543C433F0;
 Sun, 18 Dec 2022 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1671380334;
 bh=u9WqrnPVJ9jQElT9xcrWeDMun1mCi1qBsOZz8BvriCg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LohxOkLNQ6y+usW1XG5wzYA4qJ5EM3eEEUsFuc/ObLRaSHuzhke7V9XJYEqtIIIGc
 Q4Ypcs6YPhic3e+pX8sMO2PG9+rbBWm+a+w95W3jGqY//TxdCzocpZhguEWpCZxKYI
 KYrZN14p6Ywy/FW/L2fyPP1ACRYiU+5N4Vxl6SF4CC+pBOm/73WjcZRZmbAxjJjKFF
 Ho2V4FKO3nFsI/oREipYqtb65SIlVzWX49kW7aTOQSBrc4GxvsZm7zaDnt0I+1QL4a
 BkyIbiKck21bLLQZFBrNFmIHKfo/NuDaXao3+DAMWRA+ccysWRsXAq1yFaxd6DMFBL
 LhTfsN37s2Ovw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 18 Dec 2022 11:18:11 -0500
Message-Id: <20221218161836.933697-6-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221218161836.933697-1-sashal@kernel.org>
References: <20221218161836.933697-1-sashal@kernel.org>
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
 Content preview: From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com> [ Upstream
 commit 36992eb6b9b83f7f9cdc8e74fb5799d7b52e83e9 ] After the IPMI disconnect
 problem, the memory kept rising and we tried to unload the driver to free
 the memory. However, only part of the free memory is recovered after the
 driver is uninstalled. Usin [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p6wNQ-003TgQ-HR
Subject: [Openipmi-developer] [PATCH AUTOSEL 5.4 06/30] ipmi: fix memleak
 when unload ipmi driver
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
 openipmi-developer@lists.sourceforge.net,
 Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>

[ Upstream commit 36992eb6b9b83f7f9cdc8e74fb5799d7b52e83e9 ]

After the IPMI disconnect problem, the memory kept rising and we tried
to unload the driver to free the memory. However, only part of the
free memory is recovered after the driver is uninstalled. Using
ebpf to hook free functions, we find that neither ipmi_user nor
ipmi_smi_msg is free, only ipmi_recv_msg is free.

We find that the deliver_smi_err_response call in clean_smi_msgs does
the destroy processing on each message from the xmit_msg queue without
checking the return value and free ipmi_smi_msg.

deliver_smi_err_response is called only at this location. Adding the
free handling has no effect.

To verify, try using ebpf to trace the free function.

  $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc rcv
      %p\n",retval);} kprobe:free_recv_msg {printf("free recv %p\n",
      arg0)} kretprobe:ipmi_alloc_smi_msg {printf("alloc smi %p\n",
        retval);} kprobe:free_smi_msg {printf("free smi  %p\n",arg0)}'

Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Message-Id: <20221007092617.87597-4-zhangyuchen.lcr@bytedance.com>
[Fixed the comment above handle_one_recv_msg().]
Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/ipmi/ipmi_msghandler.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 736970312bbc..55f38058c0b4 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -3535,12 +3535,16 @@ static void deliver_smi_err_response(struct ipmi_smi *intf,
 				     struct ipmi_smi_msg *msg,
 				     unsigned char err)
 {
+	int rv;
 	msg->rsp[0] = msg->data[0] | 4;
 	msg->rsp[1] = msg->data[1];
 	msg->rsp[2] = err;
 	msg->rsp_size = 3;
-	/* It's an error, so it will never requeue, no need to check return. */
-	handle_one_recv_msg(intf, msg);
+
+	/* This will never requeue, but it may ask us to free the message. */
+	rv = handle_one_recv_msg(intf, msg);
+	if (rv == 0)
+		ipmi_free_smi_msg(msg);
 }
 
 static void cleanup_smi_msgs(struct ipmi_smi *intf)
-- 
2.35.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
