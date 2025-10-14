Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A60CBDA9E6
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Oct 2025 18:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UMaHc+5A1fDyUEqQ18ADrpTgiFXBSWkad0UlHuW9ncE=; b=ZRxxSNB84Cm7kAoBVrNzxJTDiX
	n32sqenO3h5ZctxIKI/r1Erbx4CkOIBLfO92LL8bl7bNdv7T9r2ptRyY6tA+oKEQC0betNaANFWUg
	2A1EEEsENNaJ71PvjnvrOQ798sBapNTo1Bg4NFCTtJy2bsNWlOAK5tUeCF1v/i7bjaYc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8hwC-0006gp-MM;
	Tue, 14 Oct 2025 16:31:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1v8hwB-0006gb-Em
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 16:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cRboy3RnIZgBfFZJyzSQAZPRJcKg5PM0amSD+/L7USI=; b=GXmlxbbiH43C6XHhJmZy6gvY00
 3yXkquFkhLt9skEPt6w4zK/68jWP+gRvNI1MScL0ZtTBCFDupkeLB3wH0rpmvOG+kZLJJlrHfxML5
 KfqhGo9W+9iLEf0CyXK7f9F+dJCeN2i0ziBTpw6vvNLDWy6v0fTeqHb+lTbjRLZ3ttSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cRboy3RnIZgBfFZJyzSQAZPRJcKg5PM0amSD+/L7USI=; b=EAg1l7StdR3WPmWEwvHKBUWqun
 sD4xlRyQ3LV2GvlJftHdx903fDINLXbCaVFCIZ5LYpC0gIyUG90NwDFvoWRG/mVkfw459weModPBt
 umdOcZdOKhUWr+QemZLhlY5MqTvulj8hcdQEo5APghMCEZ33fX4IHXIFavj87PqtJNDk=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8hwB-0006lr-Lx for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 16:31:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 06F046235D;
 Tue, 14 Oct 2025 16:31:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE5D3C4CEE7;
 Tue, 14 Oct 2025 16:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760459496;
 bh=p2uFuxbWNmwyLUoQ8GrO+NzS5l0VHS0mVzJ9Z/0RaIM=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=UjKYiVGf0Zt9aBTzr4SH4yqv8EnpL4/d8xtCjtVKMRzLDg423b10ou+BE0QdDhiaO
 0CpavfrhrscNusfnMC8nH7A9UF3K9huwvLE02qF0H8CsJDoh2lZ9hJte3qmZ/8pyJ9
 lRAl8hQh/dDrCntH5ki1OhsllriCwg7d6As9CbB+BCO+l3RI5KBqKs9ZVzwtKeSt+M
 fBUdwcEU0YnCOEpNDzHWSvbKu9InUf5sqMA/4i9cDgSNUFtp9a6z9P5pqmzeYrbRTc
 fN06aMkDfhs+/zW3YqS+GolpvM1J4u1cDNAVHUU8V8lgo8N8Xxwz/fDUbWsE5IqRuQ
 9FN+r/Jdg0niA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 3407A380AAEA; Tue, 14 Oct 2025 16:31:23 +0000 (UTC)
In-Reply-To: <aOzrxmNP1kT0FOxB@mail.minyard.net>
References: <aOzrxmNP1kT0FOxB@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aOzrxmNP1kT0FOxB@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.18-2
X-PR-Tracked-Commit-Id: e2c69490dda5d4c9f1bfbb2898989c8f3530e354
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5bd0116d92a7849b12f0b4c8199d53aa80e449bc
Message-Id: <176045948164.10193.4949713951951184632.pr-tracker-bot@kernel.org>
Date: Tue, 14 Oct 2025 16:31:21 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 13 Oct 2025 07:08:38 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.18-2 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/5bd0116d92a7849b12f0b4c8199d53aa80e449bc
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8hwB-0006lr-Lx
Subject: Re: [Openipmi-developer] [GIT PULL] more IPMI bug fixes for 6.18
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Dan Carpenter <dan.carpenter@linaro.org>,
 Greg Thelen <gthelen@google.com>, openipmi-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The pull request you sent on Mon, 13 Oct 2025 07:08:38 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.18-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5bd0116d92a7849b12f0b4c8199d53aa80e449bc

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
