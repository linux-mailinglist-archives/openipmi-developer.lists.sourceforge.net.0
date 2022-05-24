Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E84053337F
	for <lists+openipmi-developer@lfdr.de>; Wed, 25 May 2022 00:28:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ntd0O-0007jC-BG; Tue, 24 May 2022 22:27:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1ntd0N-0007j1-9Q
 for openipmi-developer@lists.sourceforge.net; Tue, 24 May 2022 22:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Gn/qYCPX8QI4NiCl8gPvLVSTGeeEBjKLYnko5nHMYiM=; b=nPH1Fim0UoUsriKhtbJGOU0hLX
 PwzAgDWjNKH/fGCTNvZZy4elrHeJpPM1H2T/Lhr8vPGSNzkmR/I8NEr2iQHrg9tS55pmpFIRVsHVG
 Mki1t7zZcZGCk0H4/KOM5AueLDQ1TVq3l3skDUelCDKmEzZmbUMqJ5VL+6WL8GH1Y+Pk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Gn/qYCPX8QI4NiCl8gPvLVSTGeeEBjKLYnko5nHMYiM=; b=MiGlYvj7NiXXN4JwWDutw/n047
 1zf4aVclzUR896BdbtvfSuZCMnCfdXQXb8JoPOpadOqIu9c2tRvhezmn917b/l7e827HLXaz6lbFP
 r4YjDTa0Rt57a5Q6CCEfJM5nUYc6bd/vRivKyR270wOuYOhKFZ4qAnhkFw+NNPYDYQq0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ntd0N-000746-1C
 for openipmi-developer@lists.sourceforge.net; Tue, 24 May 2022 22:27:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 429F06174B;
 Tue, 24 May 2022 22:27:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14C2DC34100;
 Tue, 24 May 2022 22:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1653431267;
 bh=pjno7/J71MFH7J+/7fQMCgJv8Z8xFEknwqbl7U7Rp1o=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=nmcqKZAPFQD9wFmSv7rmBLQ3tUQoVj7lru7I8XGLYwZ98H4a1yOgAEHtZ+nDws9vO
 vbgjb/2tYwF2QJCLltd1F5EiJbq1FC/Yxfp1SkvDCWGIWJ3TZn3wGZC7lZgeoKZiUP
 jSZTTuqOdEIY5kTYiSb17XxEBhlkhMA6cQyK4oomjgEmxN5um7sZqJoqEYHkpmxRUH
 QckhEjkXyTeje524V88BsXeiROqbwV5WaHWBQcR59NcG63vUMcd/nfmmYwrCthuTIE
 H8N7IxLjN8CDvCv1KgEMhxTW58OOo/+abtLyNNx4AwJSu2pPU4Z122z3baLvVOsVHB
 hejqzstK9PQjg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 03B20F03938; Tue, 24 May 2022 22:27:47 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20220523114435.GH3767252@minyard.net>
References: <20220523114435.GH3767252@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20220523114435.GH3767252@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-4.19-1
X-PR-Tracked-Commit-Id: a508e33956b538e034ed5df619a73ec7c15bda72
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b1b5bf1640165063fd9b7c6aeb5c7d63c4cb3c1d
Message-Id: <165343126701.3997.5092394580115860581.pr-tracker-bot@kernel.org>
Date: Tue, 24 May 2022 22:27:47 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 23 May 2022 06:44:35 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-4.19-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/b1b5bf1640165063fd9b7c6aeb5c7d63c4cb3c1d
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ntd0N-000746-1C
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 4.19
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

The pull request you sent on Mon, 23 May 2022 06:44:35 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-4.19-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b1b5bf1640165063fd9b7c6aeb5c7d63c4cb3c1d

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
