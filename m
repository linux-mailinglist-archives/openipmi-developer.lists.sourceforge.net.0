Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C522747D764
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Dec 2021 20:02:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n06t2-0003LN-2E; Wed, 22 Dec 2021 19:02:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1n06t0-0003LD-8O
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 19:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6pySH47ZADmIXf2SvRttDiV/xGsd/yj1JZ3f8pmB9Zw=; b=KLlM+9aHfe8kEm31tOksQHo2vN
 zdCOeK7RvEGpgg6ZWG0dnxUBIBzjZpGIOnLtzsj8k88kE9VAE5vHqDx3abwfe5LtnNQCqpgMdiP+c
 RjHiV5la+bVoeNN/JbnLi+X7J3Fzl2wPXUSrRDXa7WVcuk2Srr2abmCQUAx1cRXQ6Bk0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6pySH47ZADmIXf2SvRttDiV/xGsd/yj1JZ3f8pmB9Zw=; b=PhBiTTFiB8zNVFhTIhwVYLFaZ5
 08+plG23yl5lEKPD5cqWBbDXagzATi27L9Czd8TOgO8+bdbGmp8iKCxgrQyFIH7li0aJunAte/IJT
 OggfSV0Gt2tk/+HaMywNtTct0LKZCafIN27rSe9JbKIZSoZz6okOdnk8n6JJTp1kFkE4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n06sv-0004lX-M1
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 19:02:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9D99061C47;
 Wed, 22 Dec 2021 19:02:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12767C36AE5;
 Wed, 22 Dec 2021 19:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640199754;
 bh=c+3YcWU9gZOcVpCpOIgqSvbqYh9sSyfiIrh6ZAog+Iw=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=jc336peulH3vwrXVoEeIk9l+N3OyaAzm26DTX6DczA3N/tjsXkBRaLTINoGagpJom
 /mB4ZSJkFouRo2gfIcIvUDKOKuXuPVxEmLcFnZJ07RuEGj+Kcwk4JqoacenXTeU6IS
 nTEuvYEv+NEcAU9GB8KrPF3/0PzkIXJE6eZG5GVn0r38sSASMTqhjdZ1JAp1WOjaSk
 HcsB5xI+nShEIHA+ZjhVD37y8UuY1FM6PbPwr8IY1AshSCWsPyDA2u2GCshtO+5BMt
 4Z9Xy4O13NM9ZLl1Hg219a1DcNncfBAc22J5jBC1Ea741yXII6lYUUiTY95uNhbdHO
 tbGr0n/liQkPw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 F13681198C7E; Wed, 22 Dec 2021 19:02:33 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20211222141155.GV14936@minyard.net>
References: <20211222141155.GV14936@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20211222141155.GV14936@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.16-3
X-PR-Tracked-Commit-Id: ffb76a86f8096a8206be03b14adda6092e18e275
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 074004058094a07f784c8162153fa44c1e05596b
Message-Id: <164019975398.26306.13698765416675113107.pr-tracker-bot@kernel.org>
Date: Wed, 22 Dec 2021 19:02:33 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 22 Dec 2021 08:11:55 -0600:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-3 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/074004058094a07f784c8162153fa44c1e05596b
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n06sv-0004lX-M1
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.16 (3)
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

The pull request you sent on Wed, 22 Dec 2021 08:11:55 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/074004058094a07f784c8162153fa44c1e05596b

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
