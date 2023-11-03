Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D217DFDBB
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 02:26:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qyixE-0007tm-T7;
	Fri, 03 Nov 2023 01:26:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1qyixD-0007tg-V6
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 01:26:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZpY+aJJZ0T9dTrBHZ3OwwP0GkRB19pFnYbYXU0bRYdg=; b=MuOj6R4ERC9s2cwRcz5vphP52g
 3XoBxf9GRlkHiQ2TA9WLGvtHyV4LzZmRB9WtkUBKlkz+ObMvx5Ug1mORVrwNe+is9tPWcoslqRTMd
 ht7lmG+BK9i6nccRMO+nTU6LXTgpOprq5Yi8vqbbdWLTVGYfflXxbjH/V48CFKlBv3lA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZpY+aJJZ0T9dTrBHZ3OwwP0GkRB19pFnYbYXU0bRYdg=; b=WzJzNUPKbTR85LxyduZ8U5X4V/
 E49B+9U+Fr/nqYK7mz6ttAeSjxbKlPVg2E+aEllfiMMlhEP9Rmkb59FYW5rTi3MFiVU44Ac4WBrq5
 Sb0JRUjlKh/MTai/ivr0U909vxYxr5PzfzTzuPtP0uKjsXkcEGrn5yVXwoNb2sJ0JhaU=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyixB-001gKD-Sv for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 01:26:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7BB1461549;
 Fri,  3 Nov 2023 01:26:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 258EEC433C7;
 Fri,  3 Nov 2023 01:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698974784;
 bh=963yP9sUJKPWBoNq2HChh6G2nMCxgmzquhKhp1uS5rQ=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=QQ3NZdR9RhQouBCsrz40oYRK8PWoxWMniDYc09YFccB6kMqO8UQUaOs3XbMezYnTY
 u88J4VmpgNNtwmpw5fYhSGWGh6c4v6wwzz3ZRcFWsm7Zgh3m1A4FqP4KJZW2tTDfsf
 mMugKdVbk/L8Ezm1EKDuGRfL3Sbt2iy6+TnGeHqARCeZUkBpG4LTDxxOmalDXUy3cs
 9arVkJE4aienUahypVaZWkEkhl9XElUQP7WeqKHmtg/E332Rx2CEjpr21ceYxjYzCe
 ZhfT+lcdTipVV5X8d9BeqXAc6mKSr8HECEbV+7O97Dkqb0AZhLYYMuPpHFeyyeNK86
 wnpzENuOajwaQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 13121C43168; Fri,  3 Nov 2023 01:26:24 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZUKwhZT4CCwv3FOP@mail.minyard.net>
References: <ZUKwhZT4CCwv3FOP@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZUKwhZT4CCwv3FOP@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.7-1
X-PR-Tracked-Commit-Id: b00839ca4cca8aa9641c121c848a553d6220ce70
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: e5760335882bd91137873b8f2230b6c1f91da52b
Message-Id: <169897478407.31710.8210047982473497723.pr-tracker-bot@kernel.org>
Date: Fri, 03 Nov 2023 01:26:24 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 1 Nov 2023 15:09:41 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.7-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/e5760335882bd91137873b8f2230b6c1f91da52b
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qyixB-001gKD-Sv
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI fixes for 6.7
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
Cc: openipmi-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 1 Nov 2023 15:09:41 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.7-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/e5760335882bd91137873b8f2230b6c1f91da52b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
