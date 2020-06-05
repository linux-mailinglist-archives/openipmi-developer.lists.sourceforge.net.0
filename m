Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D421F0163
	for <lists+openipmi-developer@lfdr.de>; Fri,  5 Jun 2020 23:15:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jhJgT-00088T-EC; Fri, 05 Jun 2020 21:15:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1jhJgR-000880-GW
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Jun 2020 21:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3CJKcMsBrEfPWSQZ8xa9bHYd/K4TxDik6LhJPci7UsQ=; b=R3WZf28EVZ+XakpXwnswl4Epk8
 XWEWAW/cp+C2bWMSUw3OWZHxIc04Im/1aM0QuNJRZImIo/seDr9hr6aYsQSKTq319RhXZRTeuTxDo
 NDVLi4Jt3R5HhSVaaWE7UgjkSUB6KgOuXp19l5HDtSmjT8duP6gIwd7fMyhWt6FsYxYs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3CJKcMsBrEfPWSQZ8xa9bHYd/K4TxDik6LhJPci7UsQ=; b=kkeShNQ3KDn3BzN8BHAF/fSoUu
 4I85x9m+9twMbsTfNzuHuN/zqB49tMto+Arj4Tyn0rN7hXk/mHMgZmdMDc0/TcCG5KZB/Oas1I1W0
 sp46IhQ8RVYMeuDJAavCsUZwUwvhKww73rRoiEZicgmXxNFfLo2J2yEBeES7AI+Uh2Lc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jhJgQ-007Xif-5j
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Jun 2020 21:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591391715;
 bh=F0A2kCUpX7T/mvy4o2aR9Y2WyTBiQbiKJXIXhc9vnVY=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=VzQzKiFLkyFcf6JJcjVXVaPMVLZx6HaEYXBdiXjtO8GXerVHTwgyFg9wmJO8gWGMa
 dZYDte/qwz+0j1Y7yMyUlRxDG9WAmg0JcljVOlASsGukMo3Mkk1qfXYaH60m+VE7yT
 kCNZOYBajKZI+AfpFMyievLryRftRnH7uec1u6d0=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200604185912.GA19831@minyard.net>
References: <20200604185912.GA19831@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200604185912.GA19831@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.8-1
X-PR-Tracked-Commit-Id: 2a556ce779e39b15cbb74e896ca640e86baeb1a1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1f2dc7f5b6c1fffdb24e776b9d3529bd9414aa2c
Message-Id: <159139171508.26946.12108791057437684297.pr-tracker-bot@kernel.org>
Date: Fri, 05 Jun 2020 21:15:15 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jhJgQ-007Xif-5j
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.8
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

The pull request you sent on Thu, 4 Jun 2020 13:59:12 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.8-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1f2dc7f5b6c1fffdb24e776b9d3529bd9414aa2c

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
