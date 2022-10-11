Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D865FBA36
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Oct 2022 20:22:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oiJtT-0003rj-Kz;
	Tue, 11 Oct 2022 18:22:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1oiJtR-0003rY-Rm
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Oct 2022 18:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hp7w9eobbPejh4Ju46huhV48TGlpuXhX5qjRfvVFi5M=; b=TjtmtxkFy537ldldhBxqLnA+tG
 0Z0sEKv46lZ6LV2xITx2BLMZ89AIfwg6wmNLg3wYIOW1T1p5gULn5K7cF2xyXDTnbeg6gY51LFigo
 2GeYP77C3wk3eFrDdVR0IrtfR/jA93JVH/77qWnzxU/7ws8NWQrx1H/LKSIPCIBPRz5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hp7w9eobbPejh4Ju46huhV48TGlpuXhX5qjRfvVFi5M=; b=kgErH3PV1aa51yVe+JxicpS0Ft
 gCcrSYvQ9UkNf/Ls61xq3WpD2hfq9SheLUVgoAsu6ZcmHEjwYsDCm5CZrAubD1XJcB8qUBkqQCCHp
 C5K4Wg7OA3CSYTi+/3qth4a1wIyCuNrKL0wvIPg5FLoXMqzV0J/EKbmNs/BAzDDFy0NM=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oiJtQ-0006GU-II for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Oct 2022 18:22:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D4627B8164E;
 Tue, 11 Oct 2022 18:22:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDD6C433C1;
 Tue, 11 Oct 2022 18:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1665512529;
 bh=OhfKOgvhB+cW1HDYkoS9U38sl6bjBRJz53QSpQlrVTY=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=utVEf/nUOyy92WVIHJOOxb7ghLy1DhcHFh1dp7CUKvKwZVXWyaro1vPsp/wUrJ/HM
 SUHrQh+V1+GPS17og/r/rNzq6QkTvSLk9vKwOKijMpj1em6fRG71QQMAyDRQkIS/hY
 WwV8qu5UvsG8QJb33Pv+/iN6bOV/hvICMWlyY8PBwT5W2Z32dGjANTyWcgZzmxBfIt
 qHfMQsgwszJXlbiWy9T71rzTvShHs8Ast2x50MUZyFKZnT8lwDPunWR8SuAU2ex+1+
 K2Jp8cROEZ32RMq5K9fiDkod7tDiNPLvJuOt8kP5cICLV3R3K2byWHRZeHUNvabvR4
 sHF0tlv8RzHlg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6EA57E29F33; Tue, 11 Oct 2022 18:22:09 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <YzyxuBHS9MKcells@dell1.minyard.net>
References: <YzyxuBHS9MKcells@dell1.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YzyxuBHS9MKcells@dell1.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.1-1
X-PR-Tracked-Commit-Id: 05763c996f72ef934432639fe412f5193816fd9d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 8de1037a96ef33363727302f9afadb6535fd8b05
Message-Id: <166551252944.20259.16827686194387592842.pr-tracker-bot@kernel.org>
Date: Tue, 11 Oct 2022 18:22:09 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 4 Oct 2022 17:20:40 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.1-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/8de1037a96ef33363727302f9afadb6535fd8b05
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oiJtQ-0006GU-II
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.1
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

The pull request you sent on Tue, 4 Oct 2022 17:20:40 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.1-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/8de1037a96ef33363727302f9afadb6535fd8b05

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
