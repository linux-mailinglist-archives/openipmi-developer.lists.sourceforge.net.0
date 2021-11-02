Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B517544259F
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 03:20:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhjPW-0000yc-7b; Tue, 02 Nov 2021 02:20:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mhjPU-0000yW-9k
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 02:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PYQOdm+4TgdtLDuyC7D1ozJv6ApVvtuKCCrwmVaKvaI=; b=g7+wbGNydjrvFyKQmD6SwQAE0x
 RPhn4T1R9OQ/bBL0DXcEt9E+DhL40lqfZ/6OPh78mDIcm4ugUig+lRdDujWO+qJmSv4y5MywfmTq6
 ItmsYnI9FFxhgI/2NsLHao7bB4BlZFxZzO1l5sJ1csXd03imsX9GR/up2z+31kHVpBMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PYQOdm+4TgdtLDuyC7D1ozJv6ApVvtuKCCrwmVaKvaI=; b=j5v/2UeWalGtr/f6bb0HXkZNJy
 IVVEBp4QVGdNsaqTJctC8vUGPW22+HvXxayXkIJExmSAzM0WDPDFh65yhIzTnQSJFxbQ8BFLVueM4
 zeMzYwnm43JrKLS4p7IDYB3xIUODTKM2iQ4xXCQYwGCZaFE/XlEHhHCkT7bTbJvNkp98=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mhjPK-0001Qr-Sx
 for openipmi-developer@lists.sourceforge.net; Tue, 02 Nov 2021 02:20:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 7B21260EBC;
 Tue,  2 Nov 2021 02:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635819609;
 bh=lj5qv0GyprYLCRZoJGeMxY2aUtyZGl1rD44pKSPbPO8=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=mDKnE4Qgc3iQoDg0LjlHJaY6l2qnRUE/1wzAJKFegA/TeIgG3aTctrjhdelUoCxbV
 u/eX/aRVAhumn+JrKvSuo90cJoJLjoSw9g4uUjTjxXFGb4CCivFCtTdDCZt4J+1GCI
 ezntGn9O2PBnJ0z8fVcH9ebc/9j1JpnQ0VcdVAvASR+gxusgVhCpu6E3XoxiBwZy6U
 0E9fNstDVDplMpvFErBZhEsar8p0TgS35ZqEE/xd10F6vMNA+FGgvIzLYZehMIl9HX
 zuPEomNh0Oph5VcqE8VpvAOEhDTnmwLLqGrcJaNyDOD14PvCv842vKg8tE/Ak96ZWJ
 R410PSX5JSknA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 74FC260A3C;
 Tue,  2 Nov 2021 02:20:09 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20211101130435.GG4667@minyard.net>
References: <20211101130435.GG4667@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20211101130435.GG4667@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.16-1
X-PR-Tracked-Commit-Id: f281d010b87454e72475b668ad66e34961f744e0
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 316b7eaa932d99e6421bee9a89e4f19aefddd88a
Message-Id: <163581960947.22980.3739390742478333185.pr-tracker-bot@kernel.org>
Date: Tue, 02 Nov 2021 02:20:09 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 1 Nov 2021 08:04:35 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/316b7eaa932d99e6421bee9a89e4f19aefddd88a
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mhjPK-0001Qr-Sx
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes and enhancements
 for 5.16
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

The pull request you sent on Mon, 1 Nov 2021 08:04:35 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/316b7eaa932d99e6421bee9a89e4f19aefddd88a

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
