Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB1797C578
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 Sep 2024 10:00:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1srC5a-0004tK-0e;
	Thu, 19 Sep 2024 08:00:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1srC5Y-0004tB-8s
 for openipmi-developer@lists.sourceforge.net;
 Thu, 19 Sep 2024 08:00:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c9c2Z3y8ei0F5h6kkK+ZI96RtLVVW0YPlOT2HFQPltQ=; b=dFGtqu+8WDXlcXFwwhCT9sSM4P
 1yqQNn1Vnq8d06PdbOG+VuClsukwTpNxdn7UyZ/21p1xEAyLFbl+zEN9pE6zXb4hN+wRP6xpX3ghr
 vj0/qAXLPv5gUlzFshwDz/Waf6mqqhuBZstKqKbIh4QlKDp8MLzWLy0NaPlKiKDHmUdk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c9c2Z3y8ei0F5h6kkK+ZI96RtLVVW0YPlOT2HFQPltQ=; b=RkoAL1v/WG3dwH6AaUBq07Uj8W
 gaFb1xEfiR+4voQGcu3xRs1bYiaDOlU/X4PFCTSke2lJlVHWe5VXBdQ9X//s5/fTi85R6ln67sFB5
 ECHeobMX8j3NyWv37MX8uKWj2acc5eRqVbMahlJo3UJxYw/dmqyyE6EuzTYhtQwXHAHA=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1srC5X-0006DU-Ko for openipmi-developer@lists.sourceforge.net;
 Thu, 19 Sep 2024 08:00:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0A8B7A43B3A;
 Thu, 19 Sep 2024 08:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAEF5C4CECF;
 Thu, 19 Sep 2024 08:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726732820;
 bh=U2CFB8trHcXhiTfdE/8wRrzfnudCb/jRXfbvyMPvogc=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=UPF2SV6TZjQRRbZ9aKvzMeNysGlNtcVjhJq2mlXpO/MVyt7lINa3ebkInhvsH5Nu5
 fNYKIvuiqpxrKIoiWbhYS9lCP0SQtu+Riic121rpdtjA2qmPt/Wts2ofab7qp7ppbI
 9oCv4SJ/SJwtr0qup99RHzfMnm1da1TuiSn5IQ7Aj1KgbhSvaTPM+JdDywpDjgERT5
 OFBiU7h1ZN3rNkHVm4zCj2jfOLAxhrFR+11F5th/UisbqjpL81MNl34l8YzqbR2LMH
 H4klyJuSGjTcvlw9bB8mQy0m+h6ny+RUqRxuVruAcb+3+pca9GYE/Y/XMp/Xy1Sk1f
 eviGEW8sFZTdA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 D25173809A81; Thu, 19 Sep 2024 08:00:23 +0000 (UTC)
In-Reply-To: <ZutIwdh3ij-tx5kg@mail.minyard.net>
References: <ZutIwdh3ij-tx5kg@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZutIwdh3ij-tx5kg@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.12-1
X-PR-Tracked-Commit-Id: 64dce81f8c373c681e62d5ffe0397c45a35d48a2
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 18aa0ddd4ca60571516ba7e41157c3f746e2036a
Message-Id: <172673282265.1388805.11045544112775825376.pr-tracker-bot@kernel.org>
Date: Thu, 19 Sep 2024 08:00:22 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 18 Sep 2024 16:40:17 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.12-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/18aa0ddd4ca60571516ba7e41157c3f746e2036a
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1srC5X-0006DU-Ko
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.12
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
From: pr-tracker-bot--- via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: pr-tracker-bot@kernel.org
Cc: openipmi-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 18 Sep 2024 16:40:17 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.12-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/18aa0ddd4ca60571516ba7e41157c3f746e2036a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
