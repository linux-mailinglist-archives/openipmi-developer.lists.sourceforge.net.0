Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BEA17FCF
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 May 2019 20:30:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hORKo-0006ze-QK; Wed, 08 May 2019 18:30:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1hORKn-0006zN-6a
 for openipmi-developer@lists.sourceforge.net; Wed, 08 May 2019 18:30:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6KIlHPvyrDfZXb+p6MWvV6TgEjpEF4QDFi6qO35W4hc=; b=bnVO8EWeBo4pygtLE13HjYjPf+
 uUgrq1sJ1hw783yL2zzpCQHRtV3wIMHIKdDCZ/wj95U4cA05eM/hNZ8/n3bgjVsgEL1FuYHiq66CK
 xoivrErTky2bPBSTIsw1bURIpgqgRt65XQ6/TfrUu+B5JMZvl2G/xBHUgC3fWYgEo2EE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6KIlHPvyrDfZXb+p6MWvV6TgEjpEF4QDFi6qO35W4hc=; b=UEk+XyvORnUmy8esUA05U7/7QD
 9nN+rYkuV2CPGC1FjEvlKnOvRttV/tn1cxa0vAL0oXBVYALOrgoDYP4+PJ7x02lpqvQKEFEJ6eAoa
 Ye74AYtqv65Fhh/hFGLCkuBDTNw0iBkeGgOVUCQ6cpLIl+yHdYxHwC4iRDtc/5KZiKLc=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hORKl-009eyt-6y
 for openipmi-developer@lists.sourceforge.net; Wed, 08 May 2019 18:30:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557340218;
 bh=qrh0Uj2MAbqfEGrPCuCN4DYqvKRnDO2lCpEiVaCL4pY=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=W3SSHQ/zJJlb2Y/DTA13ahdxLiUZGNvqKMwSApgMMyswpLb60isKFUafLUcDOd05N
 FsVHOuzExsQII2K3Z3O6oBCA2LcckwHYXUPB+I50mMY2cY7UAIJWLHCniBwNBGQyBl
 Yg4TBoGn/y8VePLJBaoaAUBJLB9DMKPFLCEb2jXI=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190508161732.GG16145@minyard.net>
References: <20190508161732.GG16145@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190508161732.GG16145@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.2
X-PR-Tracked-Commit-Id: ed6c3a6d8996659e3bbf4214ba26b5e5a7440b26
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 85c1a25494837ff33fdfebe98b2e4cf5b0c78475
Message-Id: <155734021842.8790.10159085448360926528.pr-tracker-bot@kernel.org>
Date: Wed, 08 May 2019 18:30:18 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hORKl-009eyt-6y
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.2
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

The pull request you sent on Wed, 8 May 2019 11:17:32 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/85c1a25494837ff33fdfebe98b2e4cf5b0c78475

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
