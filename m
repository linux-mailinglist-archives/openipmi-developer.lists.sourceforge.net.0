Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7069E1D6E2F
	for <lists+openipmi-developer@lfdr.de>; Mon, 18 May 2020 02:00:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jaTCw-0003K6-1h; Mon, 18 May 2020 00:00:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1jaTCj-0003In-0D
 for openipmi-developer@lists.sourceforge.net; Mon, 18 May 2020 00:00:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DzHI1DkmcNG93JT3pP5KK06735sCTwm+fIt1LQejfaw=; b=LwcVt2fcopUuW3pi+eEBqL5Vys
 7pLkkPuIdJGzdYcMTwQUdyuAXlce/JEYlNBl9TaY1vnyHdUf74DH78PnJvCKWKcmo2Ejsq4Sw3wx3
 CXG0HJRFG9uJXtzVp14dLJ1WrnW4pkEXfyTaf6CU2QteW6CtN+RvNx1Ul+rJ4cRKuF1M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DzHI1DkmcNG93JT3pP5KK06735sCTwm+fIt1LQejfaw=; b=O4KQq146DblErPdBobLTn8T4iU
 qrr4bb0ZWKy5/mF+qNydULXrep97auNcGCCWVgnVoe+PT3CtGUsFYCttLVUOzWG0xXOm46ee4jrw/
 ua6lc1V201IvdgjMUV3TLogz+XHjCmKh8gQH922k5b3KmvzGA1h4n+OKQusKaqg71F74=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jaTCh-00Cvqf-6c
 for openipmi-developer@lists.sourceforge.net; Mon, 18 May 2020 00:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589759703;
 bh=oOvTehcYV4E+OT3swfDEHIa/Lg7C0PeBlGEfx3+p8So=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=rArrBEmxzUDzWIQTDYpPuCnHCI/t2IqUiZDF7sDKvIprvABQnEL3Eym8PebmmfUjS
 U1AGwIKa56gX4wN6elfFpH+tlOcHjeLIXy4TFa3Mgq9NJpwVlEbzvXnHqtLAlHhv6l
 3hDiYAOBZ9RiezigVXGIaRmn7TVgVTIrwMEARzaA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200517194251.GD30085@minyard.net>
References: <20200517194251.GD30085@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200517194251.GD30085@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.7-2
X-PR-Tracked-Commit-Id: 653d374771601a345296dd2904a10e6e479ad866
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8feea6233d2bf8e43ea99e78d8637ed0745d2732
Message-Id: <158975970364.15102.3209553325560370718.pr-tracker-bot@kernel.org>
Date: Sun, 17 May 2020 23:55:03 +0000
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jaTCh-00Cvqf-6c
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI second update for 5.7
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The pull request you sent on Sun, 17 May 2020 14:42:51 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.7-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8feea6233d2bf8e43ea99e78d8637ed0745d2732

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
