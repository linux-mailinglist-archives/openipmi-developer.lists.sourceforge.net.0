Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0A4322445
	for <lists+openipmi-developer@lfdr.de>; Tue, 23 Feb 2021 03:47:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lENjj-0003kH-2o; Tue, 23 Feb 2021 02:47:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1lENjh-0003k0-IM
 for openipmi-developer@lists.sourceforge.net; Tue, 23 Feb 2021 02:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m+H+7RjtYN08IJHLBGr827AQCq7kgZy3EmlocD6JnzE=; b=BUmWCAxrv9C6SkDw3z7So3uSIA
 y4NwRCtZZ/N2g4sv2M9HGuED8ezrequz/5BLrkLrOKC/+9FxYPGYqOY06wIrghtK9594rsqrESsOS
 avol7FL0y0oLwk7YMKqcDyaqH9c28Gsku0/dSy24QA4skiL9qW/ndIdLywluoyvdJ5WM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m+H+7RjtYN08IJHLBGr827AQCq7kgZy3EmlocD6JnzE=; b=XUc3PrWXVW48x7Mve5Vmh1spsn
 sBxUc6mqlfQkC475djFO/30iBqWU3FgLGxriuNIfXbh8Htd8PFVjKluHBaS5/MRLoa9K0S6yRbMlr
 VoIyBRgc4I7XcfPEtbSMY9YdiX6oZTTWvrisSyrktorT7I/d0gjO4QI/2KB1+AMfaDII=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lENjd-0001vu-7j
 for openipmi-developer@lists.sourceforge.net; Tue, 23 Feb 2021 02:47:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id E1E8E64E41;
 Tue, 23 Feb 2021 02:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614048446;
 bh=hqVAWJPCzbYsogLlP1zAVotA/UoQ/H0XxH2aHqtzXBM=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=s1SHtleOiyaCYa/RWdM6//jDfWBZRh1aPllE+KHv/9+uVUIT0bQ4WWtxYePmBqwrJ
 2COhf8zpXtr+fHCuzseAfWzjV/1JR54a+YNI9Q0k19VT6kRLs6gyCupA77i6GIg7Q0
 i8+LsfNL76SJMeA9WVxOOUOLlndJ6JEvUHDwg6wrqrWu7bV4iMXkKoAi7vzj8imRpy
 L/jX23EJxdHoa1J46POU7H2gzpHLdGZTT+bDrZHaiHP8Dok3wTci0jWKTFnn0Xn0TI
 eMNahOUoTRqUn23Bt6CfY5k8mlFdWmVOMQCQMTiM/LGwoDbUL68Ws0yQGo5C4n0Tzt
 R3WHC2dcgmQOw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id DC227609D1;
 Tue, 23 Feb 2021 02:47:26 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20210222180924.GE3859@minyard.net>
References: <20210222180924.GE3859@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20210222180924.GE3859@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.12-1
X-PR-Tracked-Commit-Id: fc26067c7417e7fafed7bcc97bda155d91988734
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f81f213850ca84b3d5e59e17d17acb2ecfc24076
Message-Id: <161404844689.27009.12939248074446924631.pr-tracker-bot@kernel.org>
Date: Tue, 23 Feb 2021 02:47:26 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lENjd-0001vu-7j
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.12
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

The pull request you sent on Mon, 22 Feb 2021 12:09:24 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.12-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f81f213850ca84b3d5e59e17d17acb2ecfc24076

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
