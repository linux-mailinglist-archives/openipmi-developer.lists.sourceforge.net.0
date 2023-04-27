Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC9F6F0C7B
	for <lists+openipmi-developer@lfdr.de>; Thu, 27 Apr 2023 21:20:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ps7AJ-0005WZ-I7;
	Thu, 27 Apr 2023 19:20:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1ps7AI-0005WS-2F
 for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Apr 2023 19:20:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hqfi+zBysL0E/R1Si0+e+BJWZFcwya1xIrtwWISKoHY=; b=OyRtRSS/QdPnLvDTOQZcjoR4vh
 8sbO/rQ8AnKfXcTQr47nW5wxuFNeNkjcF+og864EoO7f9HkTZRdvW87J2gEnQ9LfXnxNfng0ByFKG
 aP6m4sXpctXLmbAPIuTwL0LijGZftAVstcylmjpmZOqT0GMojMiFrMk3OQm1arWUeVNg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hqfi+zBysL0E/R1Si0+e+BJWZFcwya1xIrtwWISKoHY=; b=mR2SJzA4jnW5SWkcUOfVqnd0FD
 0XTwpz7KiC0m8uMpfwsC57CORZQwRI7pSBhK9pKhnwjmOVh/gPGJI7vo+i/Kl5YT5QkF6duMPBjXa
 AwGDG25DaIa0RdLMriYav9C4HoEd8fneSn+Ynnv+ovf5LV/qlw2hT54oVase4Qn4DZBw=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ps7AH-004BFj-Qc for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Apr 2023 19:20:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 65E1263F77;
 Thu, 27 Apr 2023 19:20:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A7EC433A1;
 Thu, 27 Apr 2023 19:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1682623219;
 bh=RV7uAq0G8qeNTAXi+VWtPjfbxJnbUnkixwunlhqOhcw=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=mAGwV/86BcqYEdblf1KD+rrO+k2ofFWcB99ZZajj33sJkB7xfygyFytYWqDyOoCqu
 3+Q3Zc8PE7qRDYXFzKm4k3dtmIstXwi+5OjOhDP9Pq/MDh1Vphz9Q62kwUj6HIvzUK
 fXGZXgsiVbvR0cXsT47719vzbGMtZX3fweBRdOsRFUwMSeLozq3xIsEooN0ScQAKgG
 UjCfiwYVFuSWZ6P9KsvYNeLFSmq6xKoXIfsIjUAnuKU97HDJq/kEJKr4i0Ij/qxt7A
 sd7t4LDEaw30oFj0pwn69yTZ9807qij7sHPBd6c3Jsgv/7MWYc7v+3i2lsTvltq63z
 Z1UMY7GpgxMvA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 B8F1BE5FFC8; Thu, 27 Apr 2023 19:20:19 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZElo9Dgm1JV80b3h@minyard.net>
References: <ZElo9Dgm1JV80b3h@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZElo9Dgm1JV80b3h@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.4-1
X-PR-Tracked-Commit-Id: d08076678ce72140a40553d226f90d189fbe06d1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d91f6a7307d27eae7b954c82bebf55071914c3f2
Message-Id: <168262321975.21394.1069081413213444238.pr-tracker-bot@kernel.org>
Date: Thu, 27 Apr 2023 19:20:19 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 26 Apr 2023 13:09:56 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.4-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/d91f6a7307d27eae7b954c82bebf55071914c3f2
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ps7AH-004BFj-Qc
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.4
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

The pull request you sent on Wed, 26 Apr 2023 13:09:56 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.4-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d91f6a7307d27eae7b954c82bebf55071914c3f2

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
