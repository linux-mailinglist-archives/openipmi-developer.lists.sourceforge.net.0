Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE5BACD13A
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 Jun 2025 02:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kApo9PWhqGlrxVKp4GoynGZ6zP0wsZl9gc7OiySxwX8=; b=ABvn/YF7IDFj+BwC05r6HxeLv6
	tnDOirCk7uAIYKVchySJrx6v4ePQjSVmur/5EscuuMQgb+cpS1EH1yhlVZwLevuSKfp5s2TIsXdgR
	FTah59sR2TRkrDfaAmVqLLcf3CUojKW4IN+lpU8FCUpQAHTlklLwwSyfWOFUiRaaZdm4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uMcNo-0002hR-Di;
	Wed, 04 Jun 2025 00:53:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1uMcNk-0002hH-Mw
 for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Jun 2025 00:53:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KDfUgtHLHYLqBaDjMKqOyWO+jpDTNPz1POM8v16LGZM=; b=PQ69oh+RsJa8SOmEMcQU+M80uA
 mZY5i9G0ztDRkuFXeYrow6RtJqe28X0kUwXr0j8zIT6xxsCzdne/3ha/lKMM+jPMV0+mzX14IcZyj
 vqIhgLLJOELbUPY7bPS1mPdnPPiLJXdo9/C2y/d7YZbsf3cVLhk2NydarfXEIOBuwmI4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KDfUgtHLHYLqBaDjMKqOyWO+jpDTNPz1POM8v16LGZM=; b=CV4FoRCbM3FUQ60dqVw+XFXH4r
 8y/Oh132SCnRKDhCqPLo2naB81gg4qAN635IW3KEL8Ny8b3DcVeni4QU0NI94GYJiRYzNidh/wV1j
 1NXUjiNputOWOKJlDl7RY3I8rhaw+pmXJ3kdw6BFmpoGycFimVIsJ1uCLZoQdaArLr34=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uMcNj-0000iN-Ta for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Jun 2025 00:53:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9615549DD3;
 Wed,  4 Jun 2025 00:53:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4CC0C4CEEF;
 Wed,  4 Jun 2025 00:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748998397;
 bh=axkEuClrDEyDL+B3BjOzjzBjrVkp3Y8nU8mEnJirXmU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m+fl/g+OwSiSnp3HUOdQmPRFDVurc3lxZIu5yZIIuijqWWRJNdJaE7SJbuvMToNNO
 n5Xdst1dAwZv52ZoLkiYhHcxRGwrvbZDzgzg24E21hTEnO/qf2mP7nHrVvzqlNBjH5
 qfOg2pnCp6FubLzEZ6sgO84KL0jXwRNBqiGlLHVOUVpNrLObpClmpyREhSb6df7scQ
 3tN79Hd6bBP5PmLQecRMIPJLcGPvOTaR307V7dgnaPRVnBoL6J47JlLQ9SjIFbUvwu
 dGU7dunyAYTZT8g/1cmML/y+kv0vDOtmLWmwXQh6RnNxtxjwIPaAmnToqPP6vmylR9
 yqGy4PFExUuBA==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Tue,  3 Jun 2025 20:49:54 -0400
Message-Id: <20250604005049.4147522-63-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250604005049.4147522-1-sashal@kernel.org>
References: <20250604005049.4147522-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Corey Minyard <corey@minyard.net> [ Upstream commit
 6bd0eb6d759b9a22c5509ea04e19c2e8407ba418 ] It was possible for the SSIF thread
 to stop and quit before the kthread_stop() call because ssif->stopping was
 set before the stop. So only exit the SSIF thread is kthread_should_stop()
 returns true. 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.234.252.31 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.234.252.31 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uMcNj-0000iN-Ta
Subject: [Openipmi-developer] [PATCH AUTOSEL 6.15 063/118] ipmi:ssif: Fix a
 shutdown race
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
Cc: Corey Minyard <corey@minyard.net>, Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <corey@minyard.net>

[ Upstream commit 6bd0eb6d759b9a22c5509ea04e19c2e8407ba418 ]

It was possible for the SSIF thread to stop and quit before the
kthread_stop() call because ssif->stopping was set before the
stop.  So only exit the SSIF thread is kthread_should_stop()
returns true.

There is no need to wake the thread, as the wait will be interrupted
by kthread_stop().

Signed-off-by: Corey Minyard <cminyard@mvista.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

Based on my analysis of the commit and the current kernel code, here's
my assessment: **YES** This commit should be backported to stable kernel
trees. ## Detailed Analysis: ### Nature of the Bug Fix: The commit fixes
a **race condition during shutdown** in the IPMI SSIF driver. This is a
critical synchronization bug that can lead to system instability during
driver cleanup. ### Specific Race Condition: Looking at the code
changes, the race occurs between: 1. **Thread termination logic**: In
`ipmi_ssif_thread()` at line 484, there was a check for
`ssif_info->stopping` that would break out of the thread loop 2.
**Shutdown sequence**: In `shutdown_ssif()` at line 1270,
`ssif_info->stopping` is set to `true`, followed by
`complete(&ssif_info->wake_thread)` and then `kthread_stop()` ### The
Race Window: The problematic sequence was: 1. `shutdown_ssif()` sets
`ssif_info->stopping = true` (line 1270) 2. `shutdown_ssif()` calls
`complete(&ssif_info->wake_thread)` (line 1274) 3. The thread wakes up,
sees `stopping = true`, and exits the loop (line 484-485) 4. The thread
function returns and the thread terminates 5. `shutdown_ssif()` calls
`kthread_stop()` (line 1275) on an already-dead thread ### The Fix: The
commit removes the `ssif_info->stopping` check from the thread loop
(lines 484-485 removed) and the unnecessary
`complete(&ssif_info->wake_thread)` call from shutdown (line 1274
removed). Now: 1. The thread **only** exits when `kthread_should_stop()`
returns true (line 478) 2. `kthread_stop()` will properly signal the
thread to stop and wait for it 3. The
`wait_for_completion_interruptible()` call will be interrupted by
`kthread_stop()` ### Why This Should Be Backported: 1. **Critical Bug**:
Race conditions during shutdown can lead to kernel crashes, memory
corruption, or system hangs during reboot/module unload 2. **Minimal
Risk**: The changes are very small and surgical: - Removes 2 lines from
thread logic - Removes 1 line from shutdown logic - No new functionality
introduced - No architectural changes 3. **Follows Stable Tree
Criteria**: - Important bugfix (race condition) - Small, contained
change - Low regression risk - Affects critical kernel subsystem (IPMI)
4. **Similar Pattern**: Looking at the historical commits, commit #4
("Remove rtc_us_timer") and commit #5 ("Rename idle state and check")
both had `Cc: stable@vger.kernel.org` tags and were marked as
backportable, showing this maintainer's pattern of marking important
SSIF fixes for stable backporting 5. **Production Impact**: IPMI is
commonly used in server environments where system stability during
shutdown/reboot is critical 6. **Clean Fix**: The fix aligns with proper
kernel thread management practices - relying on the standard
`kthread_should_stop()` mechanism rather than custom stopping flags The
commit addresses a real concurrency bug with a clean, minimal fix that
follows kernel best practices for thread management. The risk of
regression is extremely low while the benefit of preventing shutdown
races is significant.

 drivers/char/ipmi/ipmi_ssif.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 0b45b07dec22c..5bf038e620c75 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -481,8 +481,6 @@ static int ipmi_ssif_thread(void *data)
 		/* Wait for something to do */
 		result = wait_for_completion_interruptible(
 						&ssif_info->wake_thread);
-		if (ssif_info->stopping)
-			break;
 		if (result == -ERESTARTSYS)
 			continue;
 		init_completion(&ssif_info->wake_thread);
@@ -1270,10 +1268,8 @@ static void shutdown_ssif(void *send_info)
 	ssif_info->stopping = true;
 	timer_delete_sync(&ssif_info->watch_timer);
 	timer_delete_sync(&ssif_info->retry_timer);
-	if (ssif_info->thread) {
-		complete(&ssif_info->wake_thread);
+	if (ssif_info->thread)
 		kthread_stop(ssif_info->thread);
-	}
 }
 
 static void ssif_remove(struct i2c_client *client)
-- 
2.39.5



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
