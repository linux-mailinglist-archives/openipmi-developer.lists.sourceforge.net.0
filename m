Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJ8YNDS5rmlIIQIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 13:12:36 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E002388E7
	for <lists+openipmi-developer@lfdr.de>; Mon, 09 Mar 2026 13:12:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-Id:MIME-Version:Date:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/7WIbjC/ntszMaLY+F50+dBdv3y5pT9VYwbPvTYXfYc=; b=b4h1bb7Ys9a1IHCBp4axCj0nKe
	h/FkhHJZvpS8IJBG5ZzDU8sWOREiPlMcx0rAcOVD2YtlUa0jNKkWQrdXF1jYwjZqU0m21LnbGCowi
	AUmNUC3DEQWik94oDAkSvh1QYvt9H5Uuh+yhoU2BrdeTT3QeoTWuU7GRjOGyGFfKxhhA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vzZTG-00017I-4K;
	Mon, 09 Mar 2026 12:12:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <leitao@debian.org>) id 1vzZTF-00017C-Bg
 for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 12:12:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s94M7DGxzITAy84g2XAueMSi4reqo0hpF/UuKtKwq1w=; b=HToqtEq9Kenf4NNVE24sx3iP8+
 es5573K4z477CHCWNONNEmnI1GOtGEbLQhji/l0QvfZLKOtltKzSK/qQiQhTYRSVsVfmj6bWHUocJ
 wwH9cyk5BuspexQWZlOYY2iCCIS+L3XNz6b5i9f5qTc3MeNLBttGrkQlwRuT+XrgjFsI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s94M7DGxzITAy84g2XAueMSi4reqo0hpF/UuKtKwq1w=; b=Q
 NtG8hu4GMxqu6asbxCUgbuLsjnEFSrz4BfDMRWJeqhD5qCjFCDpZBXNJaTbp4MGzD9OxXEs7VZBvW
 W30SegK1b943VNJgx12OZB9Wu3q+Xj8qDATP8Ml8y5USNK+7HIlI35zNFqwr7F/p7ilwGNOcsA4ZD
 2v1f/k/01rb6PnII=;
Received: from stravinsky.debian.org ([82.195.75.108])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vzZTE-00055M-Oj for openipmi-developer@lists.sourceforge.net;
 Mon, 09 Mar 2026 12:12:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org; 
 s=smtpauto.stravinsky; h=X-Debian-User:Cc:To:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
 Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=s94M7DGxzITAy84g2XAueMSi4reqo0hpF/UuKtKwq1w=; b=eX/JzwT9z67PHmcOFYRxcMRFLC
 nDohndzWLquFpLTgVSW5a4Wnw/ju+GcCebMiqec1fVxW3Jr49dxIHyGeLFtMeBsE/eM8dBMspLNt1
 adB+ez4gazxsQIlFkw1BBcRHHOBgyBhNF+6COKjw3XF7ek/9Auil/kYghoBPq7YJMiZ4edDTGCUow
 aFpqO5O0IscvK0l/a15MS2p1kG8Y9ZeYWXzMTICtzT9UtyVgUFEKOxSRtpcVmiCtjoZHRuW1vuZd3
 Z6RQl2GGBRhpk2K1QLCPsQcbh9kdzg31FmvirnZg4SbYcPFL2e/NcF47LSV1QxfolxJbX3CQHSr97
 I3hVJguQ==;
Received: from authenticated user by stravinsky.debian.org with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <leitao@debian.org>)
 id 1vzZT1-002D0O-Sk; Mon, 09 Mar 2026 12:12:12 +0000
From: Breno Leitao <leitao@debian.org>
Date: Mon, 09 Mar 2026 05:11:34 -0700
MIME-Version: 1.0
Message-Id: <20260309-ipmi_stable-v2-1-9ed91630be53@debian.org>
X-B4-Tracking: v=1; b=H4sIAPa4rmkC/22NQQ6CMBBFr9LMmpIWQgVW3sMQw8AAYxRIi42G9
 O6GsnX9339vB0eWyUEtdrDk2fEyQy2yREA3tfNIknuoBWQqMypXleT1xXe3tfgkiT1pxKEoi9x
 AImC1NPAn2m5wMsKbVJfQnKt744O67RAe/MRuW+w3xr2Or78dr6WWSKrqKlMac9HXnpDbOV3sC
 E0I4QeU6XxVxwAAAA==
X-Change-ID: 20260309-ipmi_stable-bde1bbf58536
To: stable@kernel.org, Sasha Levin <sashal@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailer: b4 0.15-dev-363b9
X-Developer-Signature: v=1; a=openpgp-sha256; l=2834; i=leitao@debian.org;
 h=from:subject:message-id; bh=LCf/XcokkkpR9itGzPknY6ElDr4XJx3/5SjeXj4Rm98=;
 b=owEBbQKS/ZANAwAIATWjk5/8eHdtAcsmYgBprrkXaLG/Z5SwHsovF3D3zFP209m/BnTNQIUJB
 BbiZ5WZKxqJAjMEAAEIAB0WIQSshTmm6PRnAspKQ5s1o5Of/Hh3bQUCaa65FwAKCRA1o5Of/Hh3
 bXFPD/9Rtxb/GrN5noow262DV05XgWKkhYBljIG8jET1aVtbGpt31l5GW+Sl+ikdOS/q4Px9zof
 WlVTeP7ShP97mENhkT3i2RciUKV/9EAtIi0hCZcUt7bhul5fVjJjKrgqdi2OAxCU1HvBaYcJKAX
 i5IRu4OnASS7zrqeohdjb05L1OJH5bIj0AfipbrDB5v277xNeJK+qHg0H1SLEVu5+/Mkqfb6iN3
 UkdLHTC9n5tJd4TNHSzGQCs4v7J0MAG1nV96PhFUh4qIKAXBXSLD8VSrxZ1xSsFnkae38698PZE
 H4drnyBJSA5NJqu5SWHy8K8blibFjTRa9+Qa8d/SaE246e6+jVo4a+atcuL0NUj7CcCHJvt+U2a
 Q49pCnmneO+BWcrP1OacockYpNgi0ezfFAfq+SuyThBju+aZM4ntpPwwsr9ACmaS7rf/nXZSQgX
 UYlGKYkDCA1OTQClpgeKNeY+VIkBA/njt8UzGnp3GldVmOJs5iGSCJXJbNl5xLJJ4A1SOyQU0Ee
 zObvtFc2XHyZA3Ix+pGjwd1QkCVH1wwBudc+FLHwoThlf4c8z0RuEjPRhXoB6oRhH/FYEg37p4f
 gMabEEqESUUunuQSx2IGbyQjk2zIDGdWgZ9IMl26n6KVJZlH6HtyZpnkIP3U9pHcgWUrdDRR0Fa
 /sfx/E2Lf1CfCvw==
X-Developer-Key: i=leitao@debian.org; a=openpgp;
 fpr=AC8539A6E8F46702CA4A439B35A3939FFC78776D
X-Debian-User: leitao
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Corey Minyard <corey@minyard.net> [ Upstream commit
 594c11d0e1d445f580898a2b8c850f2e3f099368 ] The analysis from Breno: 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vzZTE-00055M-Oj
Subject: [Openipmi-developer] [PATCH stable v6.18 v2] ipmi: Fix
 use-after-free and list corruption on sender error
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
Cc: Vlad Poenaru <thevlad@meta.com>, kernel-team@meta.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, Breno Leitao <leitao@debian.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: E8E002388E7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.11 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stable@kernel.org,m:sashal@kernel.org,m:gregkh@linuxfoundation.org,m:thevlad@meta.com,m:kernel-team@meta.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:corey@minyard.net,m:leitao@debian.org,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,debian.org:s=smtpauto.stravinsky];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,debian.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.953];
	FROM_NEQ_ENVFROM(0.00)[leitao@debian.org,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,minyard.net:email]
X-Rspamd-Action: no action

From: Corey Minyard <corey@minyard.net>

[ Upstream commit 594c11d0e1d445f580898a2b8c850f2e3f099368 ]

The analysis from Breno:

When the SMI sender returns an error, smi_work() delivers an error
response but then jumps back to restart without cleaning up properly:

1. intf->curr_msg is not cleared, so no new message is pulled
2. newmsg still points to the message, causing sender() to be called
   again with the same message
3. If sender() fails again, deliver_err_response() is called with
   the same recv_msg that was already queued for delivery

This causes list_add corruption ("list_add double add") because the
recv_msg is added to the user_msgs list twice. Subsequently, the
corrupted list leads to use-after-free when the memory is freed and
reused, and eventually a NULL pointer dereference when accessing
recv_msg->done.

The buggy sequence:

  sender() fails
    -> deliver_err_response(recv_msg)  // recv_msg queued for delivery
    -> goto restart                    // curr_msg not cleared!
  sender() fails again (same message!)
    -> deliver_err_response(recv_msg)  // tries to queue same recv_msg
    -> LIST CORRUPTION

Fix this by freeing the message and setting it to NULL on a send error.
Also, always free the newmsg on a send error, otherwise it will leak.

Reported-by: Breno Leitao <leitao@debian.org>
Closes: https://lore.kernel.org/lkml/20260127-ipmi-v1-0-ba5cc90f516f@debian.org/
Fixes: 9cf93a8fa9513 ("ipmi: Allow an SMI sender to return an error")
Cc: stable@vger.kernel.org # 4.18
Reviewed-by: Breno Leitao <leitao@debian.org>
Signed-off-by: Corey Minyard <corey@minyard.net>
Signed-off-by: Breno Leitao <leitao@debian.org>
---
Changes in v2:
- Fix the commit id and add the proper branch (gregkh)
- Link to v1: https://patch.msgid.link/20260309-ipmi_stable-v1-1-be09c9686671@debian.org
---
 drivers/char/ipmi/ipmi_msghandler.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 0a886399f9daf..5ed8e95589fb7 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -4848,8 +4848,15 @@ static void smi_work(struct work_struct *t)
 			if (newmsg->recv_msg)
 				deliver_err_response(intf,
 						     newmsg->recv_msg, cc);
-			else
-				ipmi_free_smi_msg(newmsg);
+			if (!run_to_completion)
+				spin_lock_irqsave(&intf->xmit_msgs_lock,
+						  flags);
+			intf->curr_msg = NULL;
+			if (!run_to_completion)
+				spin_unlock_irqrestore(&intf->xmit_msgs_lock,
+						       flags);
+			ipmi_free_smi_msg(newmsg);
+			newmsg = NULL;
 			goto restart;
 		}
 	}

---
base-commit: 6258e292d7463f96d0f06dff2a39093a54c9d16f
change-id: 20260309-ipmi_stable-bde1bbf58536

Best regards,
--  
Breno Leitao <leitao@debian.org>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
