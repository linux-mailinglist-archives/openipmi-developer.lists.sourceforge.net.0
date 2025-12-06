Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C085CAA190
	for <lists+openipmi-developer@lfdr.de>; Sat, 06 Dec 2025 06:46:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MAJHDZvXlAGUTY1iL1XrEZW1op9lAeQpiGHs7nfQH5M=; b=hjfcKrlZj/qP7zh0TUozlqxXah
	VChQbFWe8keAeuxNOVvThSrOlGYD/BWdaIFa85J9NB1Ae3QHsp4yu0pWmCb4pVR1e+OuLRm1GPz4x
	vaIhM5tHRyFCIranhfQxPiUX88jUOG8TRYee5hbKm4ehsV03ZAOwzuNUn1DmnvlvO+2E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vRl6w-0006M7-AS;
	Sat, 06 Dec 2025 05:45:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1vRl6u-0006Lz-IK
 for openipmi-developer@lists.sourceforge.net;
 Sat, 06 Dec 2025 05:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RPmgbWfRu89rdbGr4MHuePiNBd1H5MzxP/wKgSe68kI=; b=mCoKvIzsapbNWESuqT76Dtvpko
 O5D1p4n8sLH8inLFF4VReO5nGusXoCDa/1jIpX8x5tueWBwFev5grLvd/nDvLcZrlKC1ZZXujvnV2
 1pJbWML+Pyj0wIxUZZzFJYj2cMOQ+cZGqzPpDT/bPUyJjGNVheazCzJiwDCNgcnwzYXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RPmgbWfRu89rdbGr4MHuePiNBd1H5MzxP/wKgSe68kI=; b=T/VAYvXffSQETwmePoGuXcH3qy
 Ab9RjyNuPdHn2JVDvf2OwegPQ445Kwb3XFIBDaPXuQO1XP0Agz73tYFaNjQmdKj79CbVtbg0EdNQL
 6SY7S78SaJCNouf6giH/cVFDlTfSw9BOTUZLuaK8cEQy8LZ8dJWpbDGXXlSw46dRtm4g=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vRl6u-0002OZ-1p for openipmi-developer@lists.sourceforge.net;
 Sat, 06 Dec 2025 05:45:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 54B9741B70;
 Sat,  6 Dec 2025 05:45:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3429AC113D0;
 Sat,  6 Dec 2025 05:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1764999925;
 bh=8778O/ojaIBwOgtWCz3uT9nwv3QIv4ev1UWKsLDxSD8=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=pcQMbhdkKJSDRW47NIGY9qkVZfjKwcQ9fcBIrsmp5eHFvLZhgqd9iAp1TbIRbM4bx
 S0Y+kE9T2DstbU7bggsZv5qcW+qCZOGLwgaR9v2dzeJc+vMoLp04iNyyhiEeHDdHu+
 ZoE/4cvvEMkaNq6X4VHN7hU0KptD11kwlW9emFiOdX+eyb9D1bPZfu6fU5pHHYc2Pu
 qI1GhHy9sTUfuiCt/0zYefFhmMbnceeKUz1d9KKO5N0RUXOEQnwi1Az8gfqvIEYDmC
 h532v+oJRtsVRv21EYt1sGlF/8UsVYoE72bfodVrI7Wm989k4gLls7b4XsKKRSH5yB
 X/DBEPXDwNbnA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 B5B453808200; Sat,  6 Dec 2025 05:42:23 +0000 (UTC)
In-Reply-To: <aTLYdRkTJ7ZCyP79@mail.minyard.net>
References: <aTLYdRkTJ7ZCyP79@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aTLYdRkTJ7ZCyP79@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.19-1
X-PR-Tracked-Commit-Id: 35bcedc1a7938da808f54510d8bc7d90cebb6278
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b1ae17cd0f0a2ffe1e9da007587c8eebb1bf8c69
Message-Id: <176499974226.1995407.6156029968973920018.pr-tracker-bot@kernel.org>
Date: Sat, 06 Dec 2025 05:42:22 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Fri, 5 Dec 2025 07:04:53 -0600:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.19-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/b1ae17cd0f0a2ffe1e9da007587c8eebb1bf8c69
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vRl6u-0002OZ-1p
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.19
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

The pull request you sent on Fri, 5 Dec 2025 07:04:53 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.19-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b1ae17cd0f0a2ffe1e9da007587c8eebb1bf8c69

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
