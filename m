Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 404A91098F7
	for <lists+openipmi-developer@lfdr.de>; Tue, 26 Nov 2019 06:45:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iZTf9-0008DX-AD; Tue, 26 Nov 2019 05:45:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1iZTf6-0008DP-Ip
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Nov 2019 05:45:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mP06NqfBMH3G0YrtQUyIJCOkqIion6WHVjAwpKmxog0=; b=WJBrmhdiDYgPNNUiHvtkKHvJFq
 hhGA56ma6axEy3TZpeas8CEPhv0QLp1WcnGGIuxiMQHFBbvZg4akaATt9pzTHedeK2ySfPwu3lziH
 TV7Br5m61UspWMDeDdZhjMi3yItLHbKLVcWnx1OkdkDtSWpfTS9Iib52z5Smbt0JOJlU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mP06NqfBMH3G0YrtQUyIJCOkqIion6WHVjAwpKmxog0=; b=DSsRFgItq1QNCe3MvlnKdwjLd2
 xuuHR2/CoroTD5TWMS9szGyNhwkJjgSbDWpGmZ1I15JvzWjtdCFX0jZJK2hFH1TzxAWLpa0VcS5h0
 EooDrGuc+iQ7AyMbl3VdSjXRGpkYyagsc8mh2DzYtP/lBUfSZThNxHMk1kFa4JYin6bk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iZTf5-00DhGg-Ah
 for openipmi-developer@lists.sourceforge.net; Tue, 26 Nov 2019 05:45:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574747108;
 bh=8hySCAvFwxNPVx3p6xKj6WywkLv5vFBXxIBs/Ao3lHU=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=MCcdZexW5TnqgSVCW1iQwZQKIUKK0B9HnmWrymrw1K/owFC15TbOVWvrBD+v9rjP1
 zZz1BeeR7B3skW/00M26VQKw8ploXuRe3tR5eNfXZWuyfvJVEvI237KZeTs6izdftZ
 GzE3wQ5vQ48Xv9+DL6lBXrXZnDtPVDQQAW1g44DA=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20191125165945.GC3527@minyard.net>
References: <20191125165945.GC3527@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20191125165945.GC3527@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.5-1
X-PR-Tracked-Commit-Id: 8e6a5c833333e14a5023a5dcabb64b7d9e046bc6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: be2eca94d144e3ffed565c483a58ecc76a869c98
Message-Id: <157474710884.9386.13214233036520397987.pr-tracker-bot@kernel.org>
Date: Tue, 26 Nov 2019 05:45:08 +0000
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
X-Headers-End: 1iZTf5-00DhGg-Ah
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.5
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

The pull request you sent on Mon, 25 Nov 2019 10:59:45 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.5-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/be2eca94d144e3ffed565c483a58ecc76a869c98

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
