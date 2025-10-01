Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA95BB208B
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Oct 2025 01:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X2FU7YUq5d/yhYM1DW29UZrtaXGM5NUXL4wMkP2BkDM=; b=V+VgmpajH3vUHeUU7aMEf8kori
	9umWmYTwDujhxbLBgTwcUoU23aUtBVzvnG7EkQdr8Lrui0crpkF2SO6xmiBHahAaGXPc7irfsGLGg
	yXzV5xJ3MnGsA8u6Z5moltJXyY9Fc5s30ICBHm1wouiple59owYJtXG3Oy9M0q7lnmlM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v45op-00077s-7C;
	Wed, 01 Oct 2025 23:01:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1v45ok-00077R-0X
 for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Oct 2025 23:01:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L0m16YpoFNZ7oYknG+WXVrmVTjXkvi4ZQuaGL3M1fQ8=; b=Zs+a3pR4/H5tsZRKM8104T9qpE
 KJvp2Fl4X7BJS3/Vuql9l7BgBjIlLUyZceJziEf4ToAY3IEHYkSITRcMwvpyYiEhzAJ/eUqiuva//
 AZ5hAztroczclgUD3VB3zMREtjv0URMvfEh3x02mdYS1ITb8eagBb92EAvM6634lcb4w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L0m16YpoFNZ7oYknG+WXVrmVTjXkvi4ZQuaGL3M1fQ8=; b=buez44SKyfD5LCQKuFX858xkpc
 bAW25DvqFlolnDRs+d8mWRv6lxEQ6lpHRj3VYW/I4h+HvDi3iTzJhaEhiVKfaDmCVPphEZd4My8iO
 jPwCekoPCpZxn38n4cCVi1XmHMYkmPCf1CKQj5GjGAP1uTkYE2vxHKBkJmUpKh+kdV8o=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v45oe-0003Dk-7X for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Oct 2025 23:01:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 826416258D;
 Wed,  1 Oct 2025 23:00:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5167EC4CEF7;
 Wed,  1 Oct 2025 23:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1759359650;
 bh=GITcIdB8mC6bw50TT8d1xCWLIRpK8lV2iJSbaemLs2w=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=IUpHlbWZrugWzYb/hJFFGYpv9AqGemzYevsJtlhNUMyUj9S3/tsysDKVBlKv1KfNW
 kcMIBhjlGJyXUf7r8f3ayQX4jhx9bYzNbzIktUN0R1KlYYFt/1173bJwRVWfTapM00
 4tzr8wuY7vGyNPeGIdMO/LE8maB7/7SbFO5AOfSAdxR27bWFyDU8Mjq6HwTygRdOMR
 +ou8jXMB+ykycJUdz1m0VcYffMeSjwDYaDzxvfdSfQimkcUkV45/qmqBptAuqwZ9Px
 BXknzniLM0fxFYUBGzk2iFpow+1FBD6OUKH1rqAsRk1At0ouzVsEkYenpikOauoUC5
 bdNH04roaE3zg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAF5639EF947; Wed,  1 Oct 2025 23:00:43 +0000 (UTC)
In-Reply-To: <aNrKnJ5GNGkf-yqv@mail.minyard.net>
References: <aNrKnJ5GNGkf-yqv@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aNrKnJ5GNGkf-yqv@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.18-1
X-PR-Tracked-Commit-Id: d46651d4e3c0caab554c4c591c0b6c3b026b1e93
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 524c4a5daf92982cf16d9e6c8cdf8721abe35a11
Message-Id: <175935964263.2651312.15793300408336185459.pr-tracker-bot@kernel.org>
Date: Wed, 01 Oct 2025 23:00:42 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 29 Sep 2025 13:06:20 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.18-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/524c4a5daf92982cf16d9e6c8cdf8721abe35a11
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v45oe-0003Dk-7X
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.18
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
From: pr-tracker-bot--- via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: pr-tracker-bot@kernel.org
Cc: openipmi-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The pull request you sent on Mon, 29 Sep 2025 13:06:20 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.18-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/524c4a5daf92982cf16d9e6c8cdf8721abe35a11

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
