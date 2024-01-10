Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E459829225
	for <lists+openipmi-developer@lfdr.de>; Wed, 10 Jan 2024 02:31:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rNNR8-00010q-KJ;
	Wed, 10 Jan 2024 01:31:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1rNNR7-00010k-O2
 for openipmi-developer@lists.sourceforge.net;
 Wed, 10 Jan 2024 01:31:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MF7ed+flD9ck4PuuSUJ2rJBKgg5j6j+tU+heOklXtP4=; b=CbHMQPe5XsocNEcPyL55ufcVBv
 MX3lzKCt61CYj0sMDhUnboE4z5US8Dl4QCWocdthq1jFeQ/xst5PMn0sls2NMsI5UPtWJJo0hJHwf
 gD00U7j8l5JXLxtKObzq/xmJNOzPKuUscaBuqR3SVR32lFp2Qj5qMeV128UxOVG5CCYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MF7ed+flD9ck4PuuSUJ2rJBKgg5j6j+tU+heOklXtP4=; b=U4phwGx76xArlDJBBPanrhE9x5
 IJswz6eHv6J1X5Enm4iUtsXZogbGfYW45gbCPRciPv10F+kHMZkGxh/OKclTa4zRRROdJ6c/TCT8X
 Fwu6qrHYlB4pE3hCwg4TJA+serX+qkCsZ0lSB/jUfwd7uNWnwL30VDIRno3UKh7QfZTc=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rNNR7-0006Fa-43 for openipmi-developer@lists.sourceforge.net;
 Wed, 10 Jan 2024 01:31:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A8972615B6;
 Wed, 10 Jan 2024 01:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1950CC433B2;
 Wed, 10 Jan 2024 01:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1704850266;
 bh=bBEtsrH7a1D3POWKZvxyb898rlHNfC3WzAtRV+kqIFU=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=uSQwp0fAX1F9KPtAExF1AoQLFkuWjZ62wdnSwP7xbsOZ7o/3FfBeTPJiETKYU5DPH
 HZjnt8uG4uV1za9+xlBjQ6mBSale5NJE5q9BRjz3lJ6eC0bOmaMV3s4o0235/D0taQ
 ZUdzew03V6uKm7qEwM4M9zp4CLhGOm4D/nAus8lJZncZ5lBuRwHKngsV8z2H+Vla4j
 7qTW1VuUdwFzZ+3tK4sAegy9yh+BM2kKcUuwa4lEO+EB12v8v+wDLwZb86CrFDp5sF
 4+P2qzsSnMEhQHBg6uLp/NgBCkbnwio9Rj/tIgWobxRvRl7vQUrOA2WNDJDsX+Iiyg
 HwRVaEmqOhDGw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 08C1EC4167D; Wed, 10 Jan 2024 01:31:06 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZZv/gs97F3xQwOGQ@mail.minyard.net>
References: <ZZv/gs97F3xQwOGQ@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZZv/gs97F3xQwOGQ@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.8-1
X-PR-Tracked-Commit-Id: 9bd9fbd9032a3b7e9ea916d6e58ba0116e0621be
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 7c6a3fc925b63d5201f1c11b93193d8a466a7d89
Message-Id: <170485026602.7649.10847066916193973045.pr-tracker-bot@kernel.org>
Date: Wed, 10 Jan 2024 01:31:06 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 8 Jan 2024 07:58:26 -0600:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.8-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/7c6a3fc925b63d5201f1c11b93193d8a466a7d89
 Content analysis details:   (-7.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rNNR7-0006Fa-43
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.8
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

The pull request you sent on Mon, 8 Jan 2024 07:58:26 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.8-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/7c6a3fc925b63d5201f1c11b93193d8a466a7d89

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
