Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1DF1836D6
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Mar 2020 18:05:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jCRGm-0002Qq-3f; Thu, 12 Mar 2020 17:05:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1jCRGk-0002Qd-R4
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Mar 2020 17:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+kn036fRwJzb2YWucoJgnX2nP6Ks9CmVXlaP7/NQO8=; b=gHphkF6QxW4GDNBe8bOieKhNLw
 QGqyQ9Q63Fqw2aeZ+NeN4gBs4V34vFWvYzJ3Aqb5Ge4c4k0XgTeUONZoMDmwDIogACr2xS7NwQlBx
 bCp8SAQeckTxI2mdgzmNAa6DlwFoW7twdvOVvuZZHlx5JDtWiUL8qwdR2rwBm/J1i9+M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i+kn036fRwJzb2YWucoJgnX2nP6Ks9CmVXlaP7/NQO8=; b=Fkx+x60kM4oQT0fInCI95vBYZr
 5UQmRB4nBG3WTmX+6CqsdMTmuW7oG1yBbGOvoArfRfHCQ5fBNuHvLDqGbBxcq68Ttp9ItGcqQNx9r
 +145u3turFho7ZYuDfXs2NK4oeFUXMIY+zzDQtFf9GWmzvpNJiZfwl8asEGj8kbGKH6c=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jCRGi-009YH5-30
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Mar 2020 17:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584032706;
 bh=U3+S7HNaphrVFoVoaeXcvW9IXmqlilgkeBTvOWa7hsA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=kZZPegpDjsmLIdLaPDm8q8SXhbcMFGmAkwyqD/8N2DVciD0draWEECs5uW/Z45dzs
 oKhXtYs0DVGhHsAcc1mRijiyje4lvuohLJtG9EahlpUEE53Cp3lZihwHgct/dXL+GJ
 dyxpusDaWkW3qMpZOy+kQvOFZ6b665K00SBwdp1E=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200312022208.GH2822@minyard.net>
References: <20200312022208.GH2822@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200312022208.GH2822@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.6-2
X-PR-Tracked-Commit-Id: 443d372d6a96cd94ad119e5c14bb4d63a536a7f6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3cc6e2c599cdca573a8f347aea5da4c855ff5a78
Message-Id: <158403270637.17459.5688278772956631461.pr-tracker-bot@kernel.org>
Date: Thu, 12 Mar 2020 17:05:06 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.4 (/)
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
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jCRGi-009YH5-30
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixe for 5.6
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
Cc: Takashi Iwai <tiwai@suse.de>, John Donnelly <john.p.donnelly@oracle.com>,
 openipmi-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 11 Mar 2020 21:22:08 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.6-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3cc6e2c599cdca573a8f347aea5da4c855ff5a78

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
