Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF78B28E90A
	for <lists+openipmi-developer@lfdr.de>; Thu, 15 Oct 2020 01:02:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kSpms-0004Lp-J8; Wed, 14 Oct 2020 23:02:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1kSpmr-0004Li-8X
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Oct 2020 23:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ClSDIa5rWmHO7IYJ/sMd6v5Q9yiWPfBLY8vxeMou8Hk=; b=gGDPJWvVFZqGNaCaB4ZHFd4GsE
 FbAXw9RyeHC2lR39R6DFvPENJa2SMNlyd/iQTPMxRHpwacbgJtRlUPBTCJnBS+pogSLLwskAg0YpP
 ykrSBLcs12GoPJwGTRFOqzGIXyQCInNf60zk3gGnFLLJ8is71AXYCNqC0sHCgZe14U14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ClSDIa5rWmHO7IYJ/sMd6v5Q9yiWPfBLY8vxeMou8Hk=; b=mJKsfRDfL64Tv3h+RRBvc2nBYT
 9ayCuPfTSfeLo9zUQOAA08Pujhikcq3U3XfVm2iMbpXQqHMIZHRQ/FUzl5D4/InbvR0X2ZZH99hA9
 ukdiNFk4v5Eox11ylq7mFaS34FLLCNx/5OzrEtzFb6obdiNlUsrQkEc4ybF4bHOAJaS4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSpmk-00AsrI-9A
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Oct 2020 23:02:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602716532;
 bh=r66+gnK4K1JduHZ8qq9lsATuQvic+/G0xAakhAXKkBg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=qjURLnce21EuLqvhjOVWOwQroMkg+fFAIdOV8G94tGxTgtHauY8bxPk/5rohP+jbM
 fX/Ee6suEt+wh6oglKGDoMKji9KK/gw+QZ61Gbo1i+kzm+Hu6rT5Sns5ED1agFMHF1
 YmDmOlAara4ubkllQSxr1nhkDzg74wpL0BjFDLTQ=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201013155649.GD66562@minyard.net>
References: <20201013155649.GD66562@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20201013155649.GD66562@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.10-1
X-PR-Tracked-Commit-Id: 8fe7990ceda8597e407d06bffc4bdbe835a93ece
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 6e4dc3d59284ea3bc7c3e40694bce84d988b01af
Message-Id: <160271653272.18101.4301117588051458594.pr-tracker-bot@kernel.org>
Date: Wed, 14 Oct 2020 23:02:12 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kSpmk-00AsrI-9A
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.10
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
Cc: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The pull request you sent on Tue, 13 Oct 2020 10:56:49 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.10-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/6e4dc3d59284ea3bc7c3e40694bce84d988b01af

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
