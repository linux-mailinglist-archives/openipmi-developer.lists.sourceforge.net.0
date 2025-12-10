Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C95F0CB1D2F
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Dec 2025 04:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZdE2pk1eTIT/4csZ77mo1RSpuj3kNcHPyGMjrtODjI4=; b=j39jWv17QXWLVEA34ii0+cyFgV
	aHtoAHEIfvEKlUqNpYelgk96EqTNBSqSG1dVeHWe+blzf1QHkBaj4u31bRFA3FjnMxi+Uw6OPApF/
	6sGwNVFoaNTaP8guBHMueIr67Kdb04kxWpzhcpMNL+1xV+ATZCLBid4WFAQmjy5PxdI0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vTBD1-0004v2-9l;
	Wed, 10 Dec 2025 03:49:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1vTBCz-0004um-U9
 for openipmi-developer@lists.sourceforge.net;
 Wed, 10 Dec 2025 03:49:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y25TG8Ownc/DGLDjfwIrZ5EyA/Jr2nq11nSHTsRLQ1A=; b=eD7yYlxPpo9o1S/BrR1gk3Z/YT
 gIOBUl7S9LRe44J9n06mNAbntXNFSx2rGU6Z1B7k3Ikk9r/wvCjPqikQh0QRusVhQOuW9agjm1PsT
 g2BJGATzWZ1O++qa0cGVJ+FJVn/3PckIXXnhmCvqAQGnRnZ6evMqSkDTWGNIbkRNYbf4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y25TG8Ownc/DGLDjfwIrZ5EyA/Jr2nq11nSHTsRLQ1A=; b=bK/vWY7a/VLMcnIWbVyQqzLhIW
 7XX5Cr7zMj0IOEOI3dBKM+byBUDsVcqn7CT1SI0XMjX+h6/UGGKTj/RdIlV+jCXvEJUfl/y7tYa+b
 jN04hB4yQ1sZF0t/CKyLbAv86duD0GqeOc2OnLnXow3IaQPOJ+reMt03JufTFZ/kWatE=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vTBCz-0002lS-VC for openipmi-developer@lists.sourceforge.net;
 Wed, 10 Dec 2025 03:49:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 9552642B32;
 Wed, 10 Dec 2025 03:49:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D9C9C16AAE;
 Wed, 10 Dec 2025 03:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1765338580;
 bh=Alrl3JLu37A805PoxAA6JkIgTa1/iH8zV6XBFvcIWyI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CYo/ck9gav4BngyhivwEVGww50hmNF99oU25Xk9MKvwG3ftngM9mGh4auSW8bpXQz
 a6cY55Sj8PDQAXf1q/BzB8XMrRGTJYFqzfCBnuNn04cUbLLhGTWlYKKMghyHcMsc5o
 6fSibfJd8M3wDKEG+6i10XciPnHJsWx0kIfMVmQFVFssLsIVb+nday7azIR/yXxD8H
 c8RdVp9jHtnkYcU4VQ4Y33qYMMRLsHqOIRI0JkWUtHIlGJhcMDW4edEEyJ38PuflUa
 q40zNB9fmpzcemHPAGcAMeTgoHgsHoDNobXBQOfePBfHllisd/QjPKUWETejLJSq1x
 e6/jC2/It62Nw==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Tue,  9 Dec 2025 22:48:52 -0500
Message-ID: <20251210034915.2268617-11-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251210034915.2268617-1-sashal@kernel.org>
References: <20251210034915.2268617-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.18
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Jinhui Guo <guojinhui.liam@bytedance.com> [ Upstream
 commit 6bd30d8fc523fb880b4be548e8501bc0fe8f42d4 ] channel_handler() sets
 intf->channels_ready to true but never clears it, so __scan_channels() skips
 any rescan. When the BMC firmware changes a rescan is required. Allow it
 by clearing the flag before [...] 
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vTBCz-0002lS-VC
Subject: [Openipmi-developer] [PATCH AUTOSEL 6.18-5.10] ipmi: Fix
 __scan_channels() failing to rescan channels
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
 openipmi-developer@lists.sourceforge.net,
 Jinhui Guo <guojinhui.liam@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Jinhui Guo <guojinhui.liam@bytedance.com>

[ Upstream commit 6bd30d8fc523fb880b4be548e8501bc0fe8f42d4 ]

channel_handler() sets intf->channels_ready to true but never
clears it, so __scan_channels() skips any rescan. When the BMC
firmware changes a rescan is required. Allow it by clearing
the flag before starting a new scan.

Signed-off-by: Jinhui Guo <guojinhui.liam@bytedance.com>
Message-ID: <20250930074239.2353-3-guojinhui.liam@bytedance.com>
Signed-off-by: Corey Minyard <corey@minyard.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

## Analysis of IPMI Channel Rescan Fix

### 1. COMMIT MESSAGE ANALYSIS

**Subject:** "ipmi: Fix __scan_channels() failing to rescan channels" -
clear bug fix indication.

**Problem described:**
- `channel_handler()` sets `intf->channels_ready = true` but never
  clears it
- This causes `__scan_channels()` to skip rescans
- When BMC firmware changes, a rescan is required but doesn't happen

**Tags check:**
- No "Cc: stable@vger.kernel.org" tag
- No "Fixes:" tag
- Signed off by IPMI maintainer Corey Minyard

### 2. CODE CHANGE ANALYSIS

The fix adds a `bool rescan` parameter to `__scan_channels()`:

```c
static int __scan_channels(struct ipmi_smi *intf,
                           struct ipmi_device_id *id,
                           bool rescan)
{
    if (rescan) {
        /* Clear channels_ready to force channels rescan. */
        intf->channels_ready = false;
    }
    ...
}
```

**Call site updates:**
- `ipmi_add_smi()`: `__scan_channels(intf, &id, false)` - initial scan
- `__bmc_get_device_id()` after BMC re-registration:
  `__scan_channels(intf, &id, false)` - fresh state
- `__bmc_get_device_id()` when version info changes:
  `__scan_channels(intf, &bmc->fetch_id, true)` - rescan needed

**Bug mechanism:** When BMC firmware changes and `__bmc_get_device_id()`
detects version info differences, it calls `__scan_channels()` to update
channel information. However, since `channels_ready` was already set
`true` from the initial scan, the rescan logic is skipped, leaving stale
channel information.

### 3. CLASSIFICATION

- **Type:** Bug fix (not a feature)
- **Category:** Functional bug in existing driver logic
- **Security:** No security implications

### 4. SCOPE AND RISK ASSESSMENT

**Scope:**
- 1 file changed: `drivers/char/ipmi/ipmi_msghandler.c`
- ~15 lines of actual changes (mostly parameter additions)
- Localized to the `__scan_channels()` function and its callers

**Risk:** LOW
- The logic is simple and obvious: clear a boolean flag before
  rescanning
- No complex interactions or side effects
- The differentiation between initial scan (`false`) and rescan (`true`)
  is well-reasoned

### 5. USER IMPACT

**Affected users:**
- Servers with IPMI/BMC interfaces (common in enterprise/datacenter
  environments)
- Users who update BMC firmware while the system is running

**Impact without fix:**
- After BMC firmware updates, IPMI channel information becomes stale
- System management through IPMI may malfunction
- Users must reboot to get correct channel information

**Severity:** Medium - affects functionality, not crashes or data
corruption

### 6. STABILITY INDICATORS

- Signed off by IPMI subsystem maintainer
- The fix logic is straightforward and verifiable by inspection
- No complex algorithmic changes

### 7. DEPENDENCY CHECK

- Self-contained fix with no dependencies on other commits
- `ipmi_msghandler.c` exists in all stable trees (mature driver)
- The affected functions (`__scan_channels`, `channel_handler`) exist in
  stable kernels

### Risk vs Benefit Assessment

**Benefits:**
- Fixes real-world bug: BMC firmware updates are common maintenance
  operations
- Small, surgical fix with minimal code changes
- IPMI is critical for server management in enterprise environments

**Risks:**
- Very low - the change is obviously correct
- Adding a parameter and clearing a flag is straightforward
- No behavioral changes to working code paths (initial scan unchanged)

### Concerns

1. **No Fixes: tag** - Cannot determine when bug was introduced, making
   it harder to know which stable versions need it
2. **No explicit Cc: stable** - Author didn't request backport
3. **Specific scenario** - Only affects systems where BMC firmware
   changes at runtime

### Conclusion

This commit fixes a legitimate functional bug where IPMI channel
rescanning fails after BMC firmware changes. The fix is:
- **Obviously correct**: Clear a "ready" flag before rescanning
- **Small and contained**: ~15 lines in one file
- **Fixes a real bug**: Users who update BMC firmware encounter this
- **Low risk**: Simple boolean flag manipulation

While it lacks explicit stable tags, the fix is valuable for enterprise
users who rely on IPMI for server management. The change is minimal, the
logic is clear, and it restores expected functionality without
introducing new features.

**YES**

 drivers/char/ipmi/ipmi_msghandler.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index d3f84deee4513..0a886399f9daf 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -599,7 +599,8 @@ static void __ipmi_bmc_unregister(struct ipmi_smi *intf);
 static int __ipmi_bmc_register(struct ipmi_smi *intf,
 			       struct ipmi_device_id *id,
 			       bool guid_set, guid_t *guid, int intf_num);
-static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id);
+static int __scan_channels(struct ipmi_smi *intf,
+				struct ipmi_device_id *id, bool rescan);
 
 static void free_ipmi_user(struct kref *ref)
 {
@@ -2668,7 +2669,7 @@ static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
 		if (__ipmi_bmc_register(intf, &id, guid_set, &guid, intf_num))
 			need_waiter(intf); /* Retry later on an error. */
 		else
-			__scan_channels(intf, &id);
+			__scan_channels(intf, &id, false);
 
 
 		if (!intf_set) {
@@ -2688,7 +2689,7 @@ static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
 		goto out_noprocessing;
 	} else if (memcmp(&bmc->fetch_id, &bmc->id, sizeof(bmc->id)))
 		/* Version info changes, scan the channels again. */
-		__scan_channels(intf, &bmc->fetch_id);
+		__scan_channels(intf, &bmc->fetch_id, true);
 
 	bmc->dyn_id_expiry = jiffies + IPMI_DYN_DEV_ID_EXPIRY;
 
@@ -3438,10 +3439,17 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
 /*
  * Must be holding intf->bmc_reg_mutex to call this.
  */
-static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
+static int __scan_channels(struct ipmi_smi *intf,
+				struct ipmi_device_id *id,
+				bool rescan)
 {
 	int rv;
 
+	if (rescan) {
+		/* Clear channels_ready to force channels rescan. */
+		intf->channels_ready = false;
+	}
+
 	if (ipmi_version_major(id) > 1
 			|| (ipmi_version_major(id) == 1
 			    && ipmi_version_minor(id) >= 5)) {
@@ -3656,7 +3664,7 @@ int ipmi_add_smi(struct module         *owner,
 	}
 
 	mutex_lock(&intf->bmc_reg_mutex);
-	rv = __scan_channels(intf, &id);
+	rv = __scan_channels(intf, &id, false);
 	mutex_unlock(&intf->bmc_reg_mutex);
 	if (rv)
 		goto out_err_bmc_reg;
-- 
2.51.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
