Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EDB51ACB9
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 May 2022 20:25:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nmJgJ-0005t0-U3; Wed, 04 May 2022 18:24:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1nmJgH-0005st-T6
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 18:24:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KrzjNOfy2PNkm7caefRvIYpXEaTKFkFHU1dDbaqHXg8=; b=PrzSSk/yc3qwPCtNqPauZk+qqH
 uYG4JPr6+TDQ2EMRAlvPGyFkfEwzhUY+kNMDglgBAidqsaXsHqp2Wddheg7xQgsO7qFL0LSMsHaUW
 a2i4Oh2FacHYlhNhGIQBoJPWVD7VGqtmZ3UuDwlxQhlbGFetLK2AnBbMCv2OYsDu1TxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KrzjNOfy2PNkm7caefRvIYpXEaTKFkFHU1dDbaqHXg8=; b=UvwjAI0n88/SwteVoSE73f5Vok
 ABJLJHNppVkPMsN2pixpw58EiQvhjazQ/W2QtEo3/i429UiYhrRKGYbjOC2xLI+TXsGS+vzOX4qXE
 jdh1bqRbKW4pg8qBg/uAKuYbWFYZ8Qba0TUB3ZPxpPUc0L3wUQsOyp9hfhPxYI6k28MQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nmJgF-0007eP-PV
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 18:24:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6B63061749;
 Wed,  4 May 2022 18:24:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF906C385A5;
 Wed,  4 May 2022 18:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651688689;
 bh=89ev1D1u5hd7kOhk2ciwm5FY2lRj1JKcWOWaEZ/VWlk=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=sA8Rcgp+6wWn2k/2hZ/tgyxLNdzgvBTgb8ybb8uc3tkjLqpGqaA94UqLu5hfszK+I
 4NgfGJeORoJs7HnUsSPeBj+wM8NQo3XQsfIULEqcv5GTL7eSo66l/rlEpEw2Cum6Xz
 iMt3FgLWFnLM5rNHUP/Eo8/V9NVz4mBq1kB8CfgALFGBJJ3G7eJoSl/llDKMtetABq
 hBUU3gHzrQ7RLsEU0EVUuTPG8sznZGtRSuTli64qe9FXyWVOaHK54toy22bt7xG1jL
 RT+M6O5Dr7/RKy//ec4c2rampYNY9xd56aGu/Iw7oEQ672FlzL9dhTgHJiURQ5+dX8
 5qbKuMV7ebozg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 BC527E8DD77; Wed,  4 May 2022 18:24:49 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20220504115047.GC3767252@minyard.net>
References: <20220504115047.GC3767252@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20220504115047.GC3767252@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.17-2
X-PR-Tracked-Commit-Id: 9cc3aac42566a0021e0ab7c4e9b31667ad75b1e3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3118d7ab3f01e309d38b4e719370bdd5361aec6d
Message-Id: <165168868976.19526.7851757229912228701.pr-tracker-bot@kernel.org>
Date: Wed, 04 May 2022 18:24:49 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.8 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 4 May 2022 06:50:47 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.17-2 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/3118d7ab3f01e309d38b4e719370bdd5361aec6d
 Content analysis details:   (-5.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nmJgF-0007eP-PV
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.17 (second
 set)
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

The pull request you sent on Wed, 4 May 2022 06:50:47 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.17-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3118d7ab3f01e309d38b4e719370bdd5361aec6d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
