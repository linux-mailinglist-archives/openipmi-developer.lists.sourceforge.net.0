Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF3F8D216F
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 May 2024 18:16:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sBzVE-0001X8-Rq;
	Tue, 28 May 2024 16:16:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1sBzVD-0001X1-LI
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 May 2024 16:16:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aUNOHyZKQFPTLLz+f7nqFNJTwxKyi39vqOeOV98SqTo=; b=f2syFEv1WomORMShsWB0MdfSa2
 Ddw+PxMd6MNnTdDPAl/dUHQYISfdfacobmmCcYenUNSLbMXD+L7Q5unzQ8mwGuF5E8M3XZFgiXw/o
 LhnaBP9d/+qyphzb7QjvGDy9LszfAHahSDzhZNjKDk3KqNW0o31EgaWlXPLCRh0Sz4d8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aUNOHyZKQFPTLLz+f7nqFNJTwxKyi39vqOeOV98SqTo=; b=F0ygBEXjonevT+ODdVUs1h2560
 Ef2rWcNHuxtJlKpcE+mKq2aGBw3548xQIuQF1H0ugZlCtLudHkveNI2CapQO0XNunsYT2Ie4ziimT
 cpkprig5gmxFWH+00pkY9uLY7M6Fp4spcFL2ghFxdGMNPEJrL11ZdNM3zTMsZn30hY1o=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sBzVF-0004y5-2t for openipmi-developer@lists.sourceforge.net;
 Tue, 28 May 2024 16:16:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1247960ECF;
 Sat, 25 May 2024 21:40:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74E0C2BD11;
 Sat, 25 May 2024 21:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1716673203;
 bh=KV52ZhxbqJse6ae8DzuxkjARLXbzwz5HC5leBFKCEQY=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=HuABswg5hLSY+KpCclVoNuaau+I2qPut/p1zGkv8w2w5gCtJjdgL21pfXmAywyXcC
 hofaQ6eUlWybFH/hglMpqkwiXX2DXnN1L/eMN6pn3ukCrddqJGs6ePOro0z9a/84Gq
 fC+T7Ls653BUkqUybEIArG0UkPPr2evS0udDvJ2uITqs1wQ/eGr48tja0h3E7B9VJe
 irnC9lbLIctF2+expZGA5sa0qD8qjF4OXmrnkKexhsSlu9tbrbKj5u3Zp+C4r9JTvK
 TyFf0FcKubNTsOJ1Bcvh/LyEi1ydujYFIVP+4OA0Bx0GZpL23QPUthfmI1//QvTqbH
 hpuOQd5jGmvLg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 AA633D38A6C; Sat, 25 May 2024 21:40:03 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZkJhmhatRHeKuIfE@mail.minyard.net>
References: <ZkJhmhatRHeKuIfE@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZkJhmhatRHeKuIfE@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.10-1
X-PR-Tracked-Commit-Id: 999dff3c13930ad77a7070a5fb4473b1fafdcecc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 56676c4c06f19215fbf8b8813c73d63c986270f8
Message-Id: <171667320368.28930.11276330148537822120.pr-tracker-bot@kernel.org>
Date: Sat, 25 May 2024 21:40:03 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 13 May 2024 13:53:14 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.10-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/56676c4c06f19215fbf8b8813c73d63c986270f8
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sBzVF-0004y5-2t
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.10
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

The pull request you sent on Mon, 13 May 2024 13:53:14 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.10-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/56676c4c06f19215fbf8b8813c73d63c986270f8

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
