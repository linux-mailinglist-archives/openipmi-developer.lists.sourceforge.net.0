Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4BF1A4B50
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Apr 2020 22:40:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jN0SE-0005DR-Ez; Fri, 10 Apr 2020 20:40:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1jN0SC-0005DJ-Tf
 for openipmi-developer@lists.sourceforge.net; Fri, 10 Apr 2020 20:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0qe67YhQehR09jJlZ7ej9Upbw2Kvj9UeuV9apdOxLG4=; b=XYUXWGrdurC1McTYS97TM5WGj5
 5k/TWeil7PrNCsdbbgyA1orA+8fnnUontLFLd5SzMsePrwg4KqwXCuwNN3h+dg0S9dh+HrtRkecFH
 aeqKTsyok0lg+kqQyUewGpKBtvGLUJK3FoD466y56SwBo/HYlYzwp29cNX3zug0JDUUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0qe67YhQehR09jJlZ7ej9Upbw2Kvj9UeuV9apdOxLG4=; b=fV7gYdkVnvLgm7h+CtksDvG61c
 agD0VIIpnrxrPfm2RrWrb0WCaR1QdkLEluU2ZBexOY0pHk7251sFtW9SItxXDsG+9vdf/4QWyyhjh
 D+xY0jDDbLzFyMpzXsNxdb8iRDbW+wskQ8OJEv/UudK+npsio4FOeFyxofRFKC1pn9rI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jN0SA-00EgMV-2x
 for openipmi-developer@lists.sourceforge.net; Fri, 10 Apr 2020 20:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586551230;
 bh=ewwpttksibnWt2lPjf6N6ZRQTUiPO4o7ICNlguMjiVw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=C9xXCRlVQJQN51ImMT+dbmi2cIU2AjMdNmg8AuCVBMZ9MbdSsJA5PGwbGuT/Rv5Is
 aIGDoQKQuakwj7Ni0uI8NZ36HzkiPZcxN0SVbAbHhc223Kfe4qp7OLWjpJ0P5ZqbDS
 Pf1VahCqHbERrSFF7BfPLeVVw5GzPqys6dcHV9PI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200410132856.GI6130@minyard.net>
References: <20200410132856.GI6130@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200410132856.GI6130@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.7-1
X-PR-Tracked-Commit-Id: e96387677c2a4a35a0c8b16cd517696a04050062
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6900433e0fbca146d8170bdf876271cdf3053021
Message-Id: <158655123088.24997.5213845863425323885.pr-tracker-bot@kernel.org>
Date: Fri, 10 Apr 2020 20:40:30 +0000
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
X-Headers-End: 1jN0SA-00EgMV-2x
Subject: Re: [Openipmi-developer] SUBJECT: [GIT PULL] IPMI bug fixes for 5.7
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

The pull request you sent on Fri, 10 Apr 2020 08:28:56 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.7-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6900433e0fbca146d8170bdf876271cdf3053021

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
