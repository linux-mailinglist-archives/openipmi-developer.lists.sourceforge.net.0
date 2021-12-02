Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3F2466A84
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Dec 2021 20:34:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1msrqP-0002c2-Hs; Thu, 02 Dec 2021 19:34:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1msrqO-0002bw-Aq
 for openipmi-developer@lists.sourceforge.net; Thu, 02 Dec 2021 19:34:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=siUs/nhyHjGLKg4LrvHm5LN1dyU4mogoZyWmU/SfdYk=; b=hIYL9jd4gV+8Ue4pHUZZ4msnPh
 2PcFum9s6/1K+0XE3vU3lcIcTP6dpHz6Kxf+834GUYwhT63Xs7j0C3txblPdCpi9Qt/1j3Bi5sqyx
 g1dbCJNuDxVee0DIwERvIHbKy1hmVGbSFJCqPar4tiwBotF4CMOWgg4rdqfLenHOCj/U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=siUs/nhyHjGLKg4LrvHm5LN1dyU4mogoZyWmU/SfdYk=; b=gNBQlu+bES+AT4n/IcNXAQV2/V
 3o524xvTTvP2ZoiePD1o4PRgRy3qG/Lh5EMXT/0gpRfR1FvFme0XPCdlptz1CzRdzGuYndx17QDym
 2tfieYulxo8oIppoZKDP1JH74TfDMAaWPfFgXTQo4wyRDLYR2mDJy7DJv3RH4JvaEVTA=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1msrqN-00035K-MU
 for openipmi-developer@lists.sourceforge.net; Thu, 02 Dec 2021 19:34:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2825EB82447;
 Thu,  2 Dec 2021 19:34:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28C8C53FCD;
 Thu,  2 Dec 2021 19:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638473640;
 bh=30TV6WFLaZr+QA/9PsPa9BR5JwvtJ8sy3anwDsKA9fw=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=ipHFkx4/YACCTUKpKUYC/yk/e/MJmkIKDsq6eKjNQ0NTeBtOCWCg0pq06aKACpFJJ
 J/48f/bJLMISuOhPbHcpUf8urMgJu4FXg09kh70Gxn0LN0wY/HOexxi3AKWyFDCaLQ
 7BVSW3e2CVuNP9mCQfHfIY4gEsDfks54DYdGwbWiyQbPMGdWXKKgF3Fd8yqudjhPkp
 Sk3/B9FJQE6qVzHn4hwq0opp9EZOzDWfws+vZWTVHDsDAFUI2BXKzusABFtX7BlfYE
 IWMF9MSrZBCrektmyBwBPmBX2/F4Cdm6vTepY9WTj39rbfCLrDoFSvTCaLEEQ9tZcZ
 Ly2gI0gwoD3/w==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id BC53B609E7;
 Thu,  2 Dec 2021 19:34:00 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20211201195720.GJ15676@minyard.net>
References: <20211201195720.GJ15676@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20211201195720.GJ15676@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.16-2
X-PR-Tracked-Commit-Id: c03a487a83fddbca1ef6cb5b97a69cd3e390e233
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: df365887f83dda9386a02ea1aa48b3b566473c64
Message-Id: <163847364076.31731.6301273735423555760.pr-tracker-bot@kernel.org>
Date: Thu, 02 Dec 2021 19:34:00 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 1 Dec 2021 13:57:20 -0600:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-2 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/df365887f83dda9386a02ea1aa48b3b566473c64
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
X-Headers-End: 1msrqN-00035K-MU
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.16
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

The pull request you sent on Wed, 1 Dec 2021 13:57:20 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/df365887f83dda9386a02ea1aa48b3b566473c64

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
