Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B5AB8360
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 Sep 2019 23:30:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iB40f-0000Mx-0X; Thu, 19 Sep 2019 21:30:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1iB40d-0000Mq-KB
 for openipmi-developer@lists.sourceforge.net; Thu, 19 Sep 2019 21:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HAarkRgpNVEYHN01NCDuAbWo8CeSfHfF11OB1aT/AYI=; b=k6mx9ZTf4ZlBbSIe82NqxnAIry
 tirNGTQHfR6Pv2SgHjkfcU/LYyDdl5Lf/Gvd2U9/VaPdMSOsJikYTRW3uSUdCspi3PsVAB8dl4S0h
 eNjBLgDTs1UHEbTsoYVqa5sR4HC9YXiQ7dLwsC1zPQBrjx6EhL4lSd7g8kuQnIc1jibw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HAarkRgpNVEYHN01NCDuAbWo8CeSfHfF11OB1aT/AYI=; b=T0qlzdwbb7awhLW4lS+osdEZMV
 y6PEZc27QNW+K4HoBpbSp6+QwGK0hU/Ij4l3r4in5qmrjDJTMZEwDkpBMhm1lVQGJ0o+KE3OADHp2
 19qgRrRfb1k69Pfs4z7PhrkH0UalgnKCPsO4g9e6PnKKz/ywkMJlw7O+ZGrI0q27u7AA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1iB40c-004ROR-C5
 for openipmi-developer@lists.sourceforge.net; Thu, 19 Sep 2019 21:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568928632;
 bh=xwTJV+Y4QUUFIQZHtZTx+jn5DYCuQ/XItTrEl7d2g7E=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=GUZheCmpm3FTJ9R7olxeR+XZtT924872y8gK8KTN9dFnw5a2n4Kh7p8+sVzPY3Nwm
 0hIoA6ci7cT55YXia83kOQpyhzN/YeQjn4M7a7Ol+NwXhjPhhD0lUBUNYVL831yrWk
 PmO/3+XlpQxhk1S/02bicYGTTfBn9Gfaf778Tceg=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190919160807.GL13407@t560>
References: <20190919160807.GL13407@t560>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190919160807.GL13407@t560>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.4-1
X-PR-Tracked-Commit-Id: c9acc3c4f8e42ae538aea7f418fddc16f257ba75
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: a9f8b38a071b468276a243ea3ea5a0636e848cf2
Message-Id: <156892863274.30913.4363982565614390979.pr-tracker-bot@kernel.org>
Date: Thu, 19 Sep 2019 21:30:32 +0000
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iB40c-004ROR-C5
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.4
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

The pull request you sent on Thu, 19 Sep 2019 11:08:07 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.4-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/a9f8b38a071b468276a243ea3ea5a0636e848cf2

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
