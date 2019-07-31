Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C1F7CEB5
	for <lists+openipmi-developer@lfdr.de>; Wed, 31 Jul 2019 22:35:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hsvJk-0008F2-Hl; Wed, 31 Jul 2019 20:35:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1hsvJi-0008Ek-MP
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 20:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dwXe29vfBlfJYENqkuontL75pXEQ6H/Z307r6G1rqM8=; b=MdJV5tSRuL4FtlXjCSKs/Qlhfn
 4uzaixR6tBeEDrm86BmviGAsYbqTEjCKwEwOkOYEt2QrCwAE+oGCUUOvORyJYmSZZjobBuAAKNSmi
 PUuZpy9dY0v+fsjDQNvEAzKld3EajFFEFWDAX7vJZkLt34Mb04YO60VkOZyaIt0Qosb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dwXe29vfBlfJYENqkuontL75pXEQ6H/Z307r6G1rqM8=; b=ECkw2PIXuncrxhZ4ogwkrOiAU5
 ziVI4eAjlzHYowxlVMrIRA5klmkXI5KowBD02/zPYrSFlMEbx0UFRkPcFsgjgt1hRViEUZPd89C4D
 4v0FEQwFVwWqSYN4h3f/XsFFOjouE8963D7f+49rdcVRvwPnsu+rEChhQQacHXKHruQY=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hsvJh-005d6f-BO
 for openipmi-developer@lists.sourceforge.net; Wed, 31 Jul 2019 20:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564605315;
 bh=luWpGi6SOkRe1PfOcwVjSclhCcHbzRMitcY4oycD1lY=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=N3k6KW5ifNycwogBNWlWZuh+2Ky2C3fIg7GcylyHHmbdf+WeL2InuMx4JtcFq1xjs
 0lmGm3+GCazXifxihSmLKpR4Dde1j3qHWHfOCHmzSFljHuL9oEUyhwi5yn09j1PTHv
 Xu+2o7F6YACaVu90viZvqB3O5wC5kg13i2cSooic=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190731150046.GB5001@minyard.net>
References: <20190731150046.GB5001@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190731150046.GB5001@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.3-2
X-PR-Tracked-Commit-Id: 71be7b0e7d4069822c89146daed800686db8f147
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 52fde4348ccc317e7ad091a3280f5d4ae19f91ef
Message-Id: <156460531565.15680.4685333902719969187.pr-tracker-bot@kernel.org>
Date: Wed, 31 Jul 2019 20:35:15 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.3 (/)
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
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hsvJh-005d6f-BO
Subject: Re: [Openipmi-developer] [GIT PULL] More IPMI bug fixes for 5.3
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

The pull request you sent on Wed, 31 Jul 2019 10:00:46 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.3-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/52fde4348ccc317e7ad091a3280f5d4ae19f91ef

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
