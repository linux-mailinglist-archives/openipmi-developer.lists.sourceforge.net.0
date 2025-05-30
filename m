Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEE9AC87D4
	for <lists+openipmi-developer@lfdr.de>; Fri, 30 May 2025 07:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K+3LVQL3bKfYeqgmONy8dJWmFpjUbEm/s/d9PkXBmME=; b=nBUU/HxHMjZVnKMH8uKkP/ixcx
	k2sO9kdAmawWpS0WzgC8FdY93n84zsFo8mOukj2tM9J5wVKHdxt0bW0wTU4hmi16FGVIntZFdvKWk
	osZOADCLU3z553dn9jXgp+QCY4dvKcPqh/9zxCtMMi3/bjXxRkq0bcLaYU9Sk3GZGVrg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uKsEi-00060m-Ai;
	Fri, 30 May 2025 05:24:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1uKsEh-00060g-7b
 for openipmi-developer@lists.sourceforge.net;
 Fri, 30 May 2025 05:24:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CDdZqsyW7nB6wPhaDdAngXcqv7i8bagXUAq2IcqgaNs=; b=JKKj4x54qNTBRG2KqP5qkUNgJx
 WkS5qzQEpCe+AVFa8dyqaXlUGoCu3Mg3XfX0/uK+VWGRhAp7VVH3cUVWMFDS1uqbr35QXci4gR12m
 RBbKeXanXSu4vF9w5l/2CGoSIMAD9LF6Og3leACVgkSyTblAuENiwN8ATR1dsmHpj1Ao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CDdZqsyW7nB6wPhaDdAngXcqv7i8bagXUAq2IcqgaNs=; b=AkiBkjwjJOiUTivZLwrek3ABW9
 Mfdc7BfGb0Vf2p7j1O8eP2LERwoGD3+MdpPTDAKekzQCebcxIl8hjNofriJzeX6BcPWGv233HL574
 LGdgVA2RjYz3+vv8lf5tpMkJC0CACiICyukQEohSKqmJlYrRfOoeZFcenbavWu856SVk=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uKsEg-0001W3-Ko for openipmi-developer@lists.sourceforge.net;
 Fri, 30 May 2025 05:24:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 50C4A4A28A;
 Fri, 30 May 2025 05:24:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DE2DC4CEED;
 Fri, 30 May 2025 05:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748582689;
 bh=11l8sxh1YOQyITc7px+U6p0p3ggoIqtQHhxHRqbFUr4=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=cGanX25WZPXA/kYvmRy1WCtBdqL2JI2p9Tkad1B7lUvi27q9I7v0gnlfbEuBBCCgb
 zFN8omESQiJoAhdm8lPTv6hNSBT7aCKMrftjuaVe65OvbZQ/EAvmvOthkaKpiE+CN7
 w0cdUzmwCs1wsmiPLIsNGoJU5cOQaQnS6KyGpmyGCQkAhisKjxPi6zhi8dgkm6F6mg
 U6MddfKP4HWN5P3rd2/4LupnJb1c8SKNE930DwBOhgzzHinVYNFkfuYrAwzYG17qz3
 D1NKI6dIPctlcg0XjcmUEYoDN129NNLHtpYX5fFd8Bgd71wdkb75bErxSex01rRLG7
 Z8KMRJR+SYaVw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAF7839F1DEE; Fri, 30 May 2025 05:25:23 +0000 (UTC)
In-Reply-To: <aDi39ViU_FMFsgsb@mail.minyard.net>
References: <aDi39ViU_FMFsgsb@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aDi39ViU_FMFsgsb@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.16-1
X-PR-Tracked-Commit-Id: 08effa6b77f7dbb4727f811daef0f6085c0d63c8
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 02897f5e56b22e78d376faff1533ad800991650e
Message-Id: <174858272251.3833287.17165495468702644310.pr-tracker-bot@kernel.org>
Date: Fri, 30 May 2025 05:25:22 +0000
To: Corey Minyard <corey@minyard.net>
X-Headers-End: 1uKsEg-0001W3-Ko
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.16
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

The pull request you sent on Thu, 29 May 2025 14:39:33 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.16-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/02897f5e56b22e78d376faff1533ad800991650e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
