Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 292DC23F845
	for <lists+openipmi-developer@lfdr.de>; Sat,  8 Aug 2020 18:55:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k4S83-0002iI-9F; Sat, 08 Aug 2020 16:55:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1k4S82-0002iB-8i
 for openipmi-developer@lists.sourceforge.net; Sat, 08 Aug 2020 16:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y2Y0f6e6K0KIqBQUnyv+FZjCr99n/Np5pgDMM4V7SNU=; b=NKF5ujcfOLnuj5vJWHHvYuI9JT
 0pTnPx4uAonvo+dqLaRhmorpquQ0miPqT/u0x4yYPDHfmDjMKFx5qiESrZ2uH+BDr3E8OLijlvObs
 koIWy34l4XKPXpAzpffqKr7TCG0SOxshQO/7SYZLw0JuDRoqtAtbLA1gzNIrNAKkxZvA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y2Y0f6e6K0KIqBQUnyv+FZjCr99n/Np5pgDMM4V7SNU=; b=OzRWQic2cF4yPQ3Jwayi7ShbIh
 /ukXfr3rtIc3LwlMwZGhVS+7a/F2czZb2KlLww1jNb5u+J5H8r9Z1bA++ui6/N1/cfwPPSmxjgV+w
 R+k5Cu9LQf0P3izgQ8LtV8hmZMRlPppSDlqowmevdweTI6+d20FvMo9IMdXl+Bn1B64E=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k4S7y-001ugo-MA
 for openipmi-developer@lists.sourceforge.net; Sat, 08 Aug 2020 16:55:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596905711;
 bh=qfR/wMHzJHrpcdc9ktvRtkXIn/K99xeYWnheflvyOrk=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=rrreSVf68vqj7yjrYP89VKvBbX/J0BFFIHowPYFXjJtzFWKbkFcfA+7FlYM6FD+U4
 jU2qUx4iuZ/b32m3P8bp5qYHgpSDa6aq0jXCwG7vcKQ7whnme5rbfTpLBrumlY0cXr
 rU2vSPdipxyuYHw9FQLv9/GZYzPZ8K1FpWWmatCs=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200808123407.GP2842@minyard.net>
References: <20200808123407.GP2842@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200808123407.GP2842@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.9-1
X-PR-Tracked-Commit-Id: 634b06def11cf7ecf6282c79735f08004e323983
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 11030fe96b57ad843518b0e9430f3cd4b3610ce2
Message-Id: <159690571140.17537.12446723619263173248.pr-tracker-bot@kernel.org>
Date: Sat, 08 Aug 2020 16:55:11 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k4S7y-001ugo-MA
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.9
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

The pull request you sent on Sat, 8 Aug 2020 07:34:07 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.9-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/11030fe96b57ad843518b0e9430f3cd4b3610ce2

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
