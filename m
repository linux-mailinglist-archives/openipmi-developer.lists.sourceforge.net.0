Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 247023B8884
	for <lists+openipmi-developer@lfdr.de>; Wed, 30 Jun 2021 20:35:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lyf3F-00004s-0x; Wed, 30 Jun 2021 18:35:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1lyf3C-0008WP-W7
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Jun 2021 18:35:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ox6AiuZeeT8FuMXCVeNOTMsjAd9jUbIJkauDcePCfMo=; b=Clk0eU/pgAxCKZAwVph+kh8PvA
 5Pl1rARjRDImsqUUmJkjlekdMyoyVq/H7Qd7kVR+Hrdl7nUKgoljyUSfuBL230ciCKKextWrunehv
 cvWXU0SHO/YaZARsp3h6Kzldc9/fB+gXBymrA+ZCL1WguEv2K3oHgKX71YHgmjZYBGlI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ox6AiuZeeT8FuMXCVeNOTMsjAd9jUbIJkauDcePCfMo=; b=X3ylEtaWVHXypTkj6hZEg63++Z
 J/haD9GV5IAgKK3TYHrYUrK29OjzObOjILkH9Qdc8HYZDB7LRiNA4ouOmFFBwqJH16Czws++Z0DZw
 17gM3FWMuYSFpH5INmxRJRXPcmxzUWuLnP0Feng5II/C84mU+zUQzMEsNwojvh5KG+eg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lyf3A-0005qf-OO
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Jun 2021 18:35:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 655C86141A;
 Wed, 30 Jun 2021 18:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625078098;
 bh=PtQiYbm/vqGL/C64zMS9yiz/jF06hzfUFjOVC/XJfdQ=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=oHThgqFUIrvv0UfuLikAuIA2uicnVQC4hSb3Rtty3OQoKbE4rY/a1rLMIUddEEvys
 6EJFFZSNHbT07QKXzScTN71VF4J7U2cQsXHpz0arwzbdaY7cQ+849bymW86L/fruOw
 Mf2y0byP216le/7+DXOQyBeoGB+GdYh5q3yofWs0RKBtIP0ZssiPiO4tj5tMYuXUBv
 fdNSLdjbKrCEAKXZkg+X8Q8OUiHYkWqil7qBxHJc+kxXOhlcFe9Cf0xMK6g9lr6B6B
 WvHxdd6nUEoO+b/dTtxOmOLYi3arIZNmPaskBISBybY/UYS5y+UTYeVW/tu0f7k6x4
 jgfQJXD0VegfA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 5F22260A38;
 Wed, 30 Jun 2021 18:34:58 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20210628233629.GP2921206@minyard.net>
References: <20210628233629.GP2921206@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20210628233629.GP2921206@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.14-1
X-PR-Tracked-Commit-Id: 5b32dd281ee0a269f39ecf6b48f0cd3f37264842
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c0c6d209b66096b22a59a01bce48e4867704338e
Message-Id: <162507809838.10377.4327957505294746184.pr-tracker-bot@kernel.org>
Date: Wed, 30 Jun 2021 18:34:58 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lyf3A-0005qf-OO
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.14
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

The pull request you sent on Mon, 28 Jun 2021 18:36:29 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.14-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c0c6d209b66096b22a59a01bce48e4867704338e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
