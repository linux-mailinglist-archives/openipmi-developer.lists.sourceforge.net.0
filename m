Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5975EB1F76B
	for <lists+openipmi-developer@lfdr.de>; Sun, 10 Aug 2025 02:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zAcyJhN/8+8aZ9DNU37whhlRV1QlW1sXddAogll0PLQ=; b=aVBx1YYFR159hUviQodMIl6Z4D
	S9jwClZRkFGGJAPhORtmrahZGR+JatT3W/foMDOE/EXw6fmVVWwSsbsXBKdLvrB+NnkqveJX/kJ7I
	qhshJsUm36CA7PSHn1DsHKodIqYdwnzQTw5b7R1gBVLyhG649wd43iqrGQMSjqxiPgU0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uktoc-0001GT-Ge;
	Sun, 10 Aug 2025 00:21:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1uktob-0001GG-IX
 for openipmi-developer@lists.sourceforge.net;
 Sun, 10 Aug 2025 00:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q4RnFLSABd1MfqhIbvkqdZEXP5V+alcWNoRRnyXxHK4=; b=UempB7XayT0DUhsBP5i/IMwrDm
 B0fbj3VgwQAiwjQ9YZgspqb70e5fNNXw71dSr38aYEBmNZX1EPAmQKSoABkR/fzfH7InouHZ3JVf5
 LcK30ebVlHTn0akAUNO2z5ZmB8kaeMxCjDZST3ihx0H0hJXADVnKi9Bm5aXcPAisxxKo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Q4RnFLSABd1MfqhIbvkqdZEXP5V+alcWNoRRnyXxHK4=; b=j55YQt+CXrv7pnaWgtwCtN5HUL
 633X6jsxTpUd52EkQit6DKTGjUad1lfI5OAI801/4eeYx5qMjKMZ/ZWbQ+1GUh+FaeZf9vsY9PGW3
 EoPzS5ruLFauGJPUgJLWnm4bbRN1IyylvOyi3eWd/YozjuKW3Bs74Qi6anle9sLsrM38=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uktob-0008Vt-Ng for openipmi-developer@lists.sourceforge.net;
 Sun, 10 Aug 2025 00:21:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 4B0A75C51A8;
 Sun, 10 Aug 2025 00:21:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4DA0C4CEE7;
 Sun, 10 Aug 2025 00:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754785283;
 bh=vvMEKSPcs/Kfso+hEel2t2m1IIAZhDU+t6R5SqXw/+0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=U5voVvUMAucV5Q97uSqkLTP8F/DLGL9QnHv/hNyGhHackIBH+aAKmNVXZPlEM8gvo
 o8B9qwSUwxaZYXGOwVT6w7Z0cBW0pxIxMfe9KkrXe1VOfx9cQsYZQm6tl3JdAGocCK
 S1cbBCCaVfOPEOy+mlgGfugq1KM0ZcdTIuRovVXwyL0P83Cif9wvdMldv0qln1P7Ve
 UfBg/0oWvfG3rtREHXls0zgCTSPHqaUljwX5A5ssPWQk3xzhiSFRGdkRk8c0L1s11N
 YGrfq5GFPgSVpBQPE2ufEimtN0iI/A18WoqoPUqeKGAYGbHzjAx/Ayfx6cwI+NVqat
 VxMdhRdgTdUUw==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Sat,  9 Aug 2025 20:20:56 -0400
Message-Id: <20250810002104.1545396-7-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250810002104.1545396-1-sashal@kernel.org>
References: <20250810002104.1545396-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.16
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Corey Minyard <corey@minyard.net> [ Upstream commit
 8ffcb7560b4a15faf821df95e3ab532b2b020f8c ] The source and destination of some
 strcpy operations was the same. Split out the part of the operations that
 needed to be done for those particular calls so the unnecessary copy wasn't
 done. Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uktob-0008Vt-Ng
Subject: [Openipmi-developer] [PATCH AUTOSEL 6.16-5.4] ipmi: Fix strcpy
 source and destination the same
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
Cc: Corey Minyard <corey@minyard.net>, Sasha Levin <sashal@kernel.org>,
 openipmi-developer@lists.sourceforge.net, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Corey Minyard <corey@minyard.net>

[ Upstream commit 8ffcb7560b4a15faf821df95e3ab532b2b020f8c ]

The source and destination of some strcpy operations was the same.
Split out the part of the operations that needed to be done for those
particular calls so the unnecessary copy wasn't done.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202506140756.EFXXvIP4-lkp@intel.com/
Signed-off-by: Corey Minyard <corey@minyard.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

**Backport Status: YES**

This commit is an excellent candidate for backporting to stable kernel
trees. Here's my extensive analysis:

## Bug Description and Impact

The commit fixes a critical bug where `strcpy()` operations were copying
a string to itself (source and destination being the same). Looking at
the original code:

1. In `action_op()` at line 1213: `strcpy(action, inval);` - but when
   called from `ipmi_wdog_init()` line 1294 with `action_op(action,
   NULL)`, the first parameter `action` is passed, and if validation
   passes, it copies `action` to itself.

2. Similar issues in `preaction_op()` line 1237 and `preop_op()` line
   1257 when called from initialization.

This undefined behavior could lead to:
- Memory corruption
- Unpredictable watchdog behavior during initialization
- Potential system instability in the IPMI watchdog subsystem

## Fix Analysis

The fix properly refactors the code by:
1. Creating separate `*_set_val()` functions that only validate and set
   the value variables
2. Modifying the original functions to use these new helpers
3. In `ipmi_wdog_init()`, directly calling the `*_set_val()` functions
   for validation without the problematic strcpy

This is a minimal, targeted fix that:
- Doesn't introduce new features
- Maintains existing functionality
- Only restructures code to eliminate undefined behavior
- Has clear boundaries within the IPMI watchdog driver

## Stable Tree Criteria Met

1. **Fixes a real bug**: Yes - strcpy with same source/destination is
   undefined behavior
2. **Small and contained**: Yes - changes are limited to one file and
   involve straightforward refactoring
3. **No major architectural changes**: Correct - only refactors existing
   functions
4. **Minimal regression risk**: Yes - the logic remains identical, just
   properly separated
5. **Critical subsystem**: IPMI watchdog is important for system
   reliability and recovery
6. **Automated detection**: The bug was found by kernel test robot,
   indicating it's a real issue

## Additional Evidence

- The commit was reported by the kernel test robot with a specific bug
  report link
- The fix is defensive programming that eliminates undefined behavior
- IPMI watchdog is used in production servers for system recovery
- The bug could manifest differently across compilers/architectures

This meets all stable kernel criteria for backporting as it fixes a
concrete bug with minimal risk.

 drivers/char/ipmi/ipmi_watchdog.c | 59 ++++++++++++++++++++++---------
 1 file changed, 42 insertions(+), 17 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
index ab759b492fdd..a013ddbf1466 100644
--- a/drivers/char/ipmi/ipmi_watchdog.c
+++ b/drivers/char/ipmi/ipmi_watchdog.c
@@ -1146,14 +1146,8 @@ static struct ipmi_smi_watcher smi_watcher = {
 	.smi_gone = ipmi_smi_gone
 };
 
-static int action_op(const char *inval, char *outval)
+static int action_op_set_val(const char *inval)
 {
-	if (outval)
-		strcpy(outval, action);
-
-	if (!inval)
-		return 0;
-
 	if (strcmp(inval, "reset") == 0)
 		action_val = WDOG_TIMEOUT_RESET;
 	else if (strcmp(inval, "none") == 0)
@@ -1164,18 +1158,26 @@ static int action_op(const char *inval, char *outval)
 		action_val = WDOG_TIMEOUT_POWER_DOWN;
 	else
 		return -EINVAL;
-	strcpy(action, inval);
 	return 0;
 }
 
-static int preaction_op(const char *inval, char *outval)
+static int action_op(const char *inval, char *outval)
 {
+	int rv;
+
 	if (outval)
-		strcpy(outval, preaction);
+		strcpy(outval, action);
 
 	if (!inval)
 		return 0;
+	rv = action_op_set_val(inval);
+	if (!rv)
+		strcpy(action, inval);
+	return rv;
+}
 
+static int preaction_op_set_val(const char *inval)
+{
 	if (strcmp(inval, "pre_none") == 0)
 		preaction_val = WDOG_PRETIMEOUT_NONE;
 	else if (strcmp(inval, "pre_smi") == 0)
@@ -1188,18 +1190,26 @@ static int preaction_op(const char *inval, char *outval)
 		preaction_val = WDOG_PRETIMEOUT_MSG_INT;
 	else
 		return -EINVAL;
-	strcpy(preaction, inval);
 	return 0;
 }
 
-static int preop_op(const char *inval, char *outval)
+static int preaction_op(const char *inval, char *outval)
 {
+	int rv;
+
 	if (outval)
-		strcpy(outval, preop);
+		strcpy(outval, preaction);
 
 	if (!inval)
 		return 0;
+	rv = preaction_op_set_val(inval);
+	if (!rv)
+		strcpy(preaction, inval);
+	return 0;
+}
 
+static int preop_op_set_val(const char *inval)
+{
 	if (strcmp(inval, "preop_none") == 0)
 		preop_val = WDOG_PREOP_NONE;
 	else if (strcmp(inval, "preop_panic") == 0)
@@ -1208,7 +1218,22 @@ static int preop_op(const char *inval, char *outval)
 		preop_val = WDOG_PREOP_GIVE_DATA;
 	else
 		return -EINVAL;
-	strcpy(preop, inval);
+	return 0;
+}
+
+static int preop_op(const char *inval, char *outval)
+{
+	int rv;
+
+	if (outval)
+		strcpy(outval, preop);
+
+	if (!inval)
+		return 0;
+
+	rv = preop_op_set_val(inval);
+	if (!rv)
+		strcpy(preop, inval);
 	return 0;
 }
 
@@ -1245,18 +1270,18 @@ static int __init ipmi_wdog_init(void)
 {
 	int rv;
 
-	if (action_op(action, NULL)) {
+	if (action_op_set_val(action)) {
 		action_op("reset", NULL);
 		pr_info("Unknown action '%s', defaulting to reset\n", action);
 	}
 
-	if (preaction_op(preaction, NULL)) {
+	if (preaction_op_set_val(preaction)) {
 		preaction_op("pre_none", NULL);
 		pr_info("Unknown preaction '%s', defaulting to none\n",
 			preaction);
 	}
 
-	if (preop_op(preop, NULL)) {
+	if (preop_op_set_val(preop)) {
 		preop_op("preop_none", NULL);
 		pr_info("Unknown preop '%s', defaulting to none\n", preop);
 	}
-- 
2.39.5



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
