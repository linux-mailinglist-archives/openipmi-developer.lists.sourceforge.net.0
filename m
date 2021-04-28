Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2575A36E207
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 Apr 2021 01:13:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lbtMx-0004oL-Lo; Wed, 28 Apr 2021 23:13:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1lbtMw-0004oE-BR
 for openipmi-developer@lists.sourceforge.net; Wed, 28 Apr 2021 23:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kdKKogD4ZQ1cBbPwonXhmBluVhZf2JEQ9I7LJ3EdOQ8=; b=dUdgXwgzz36qFrugzshbFElrgZ
 UqsZ6+cMuBJpV8aF7+8EX6oB5lYzDc3fXMNtxrjyyxC8AzpumP/SjCZCvjvQeYG40wdpzHeKLR4kn
 SzG8UURUAqy4C6m7r5OGZ20bhJVy7de9vaZb1mGlqWD16iQYKN+trNsXMj0ZVeicdYhE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kdKKogD4ZQ1cBbPwonXhmBluVhZf2JEQ9I7LJ3EdOQ8=; b=L5Uy6iuQ2FMGH4XuB3o/yRfPIh
 U43pu9blZvI3qFsWMmIZcxVLPgSZteTlccJn55Aa1M6asIUUwh/70aOwZeAksQHKOh5myYlXE/vFb
 zMmC0gOJtEoitxvf4/wPT1JYzJQUkReagVm1sSZTK7gFW4T7dPEsQtST+2VpvDafnUUY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lbtMt-0066cK-2p
 for openipmi-developer@lists.sourceforge.net; Wed, 28 Apr 2021 23:13:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 8E4C761448;
 Wed, 28 Apr 2021 23:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619651587;
 bh=iloVwCxtKJYbSKTNwhqBQ3bJt6PLsO1aahUzJIzB980=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Ld/jQEekfpPrzbN3KvrogllgJLnVLS5vVtfUHvQh8K/I8F+nrlyP4/09dh7WChh+q
 WtgoBNnRn6/0i1WUMCVZMOsWlw3cEJwQrLEYpuHDDWioT7BTNYkolc/GqtglB5CV5A
 PRJaZbNJ4rd268gumQeroulAQMl0l0iDH/owxN9OgfbwlD9xFwFvgXolafiIl2pPGi
 02qXNAitoc2pmNZSpxg9nHnLihxc0axpyZR9XC28KLAvI52R7OlxeWziUCjKk/kSOz
 dT6HBJMBcIWkvFNBNLJe9mBHAuoyVsymdjNCkFH5QaWhGOX9Gj7rLrpL+bpmr64TFC
 xrwDOZMJzIJrw==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 88BBD60A23;
 Wed, 28 Apr 2021 23:13:07 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20210428001634.GB18645@minyard.net>
References: <20210428001634.GB18645@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20210428001634.GB18645@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.13-1
X-PR-Tracked-Commit-Id: 07cbd87b0416d7b6b8419b2a56bc63659de5d066
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6fa09d313921cd960ebb7f87132e49deb034b5f1
Message-Id: <161965158755.11634.10828743336992890831.pr-tracker-bot@kernel.org>
Date: Wed, 28 Apr 2021 23:13:07 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lbtMt-0066cK-2p
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.13
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

The pull request you sent on Tue, 27 Apr 2021 19:16:34 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.13-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6fa09d313921cd960ebb7f87132e49deb034b5f1

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
