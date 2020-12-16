Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D24D2DC969
	for <lists+openipmi-developer@lfdr.de>; Thu, 17 Dec 2020 00:11:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kpfwv-0006BC-93; Wed, 16 Dec 2020 23:11:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1kpfwu-0006B5-E0
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Dec 2020 23:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AbtODRO5n6Gsyk1yEITYu9ElH88SxNceXGc8NY2Toxc=; b=GmKzpEV/q+uYAzBoZbzFeX6Q0F
 t1+mCvOemnPegHYs7u+JIvszKHFZox7LowVfjX8LBjH4r/2I4CfbuFGI6Q/qCtfQNmEj9SHpcsIvy
 mwP9YVaw0Sr6z7UgrMv7ftPlm5XkFrnoPmciOlM39YQugYsvRMB0M/aeUg0eZItF2B6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AbtODRO5n6Gsyk1yEITYu9ElH88SxNceXGc8NY2Toxc=; b=kgZgXZdPyRAhKeiekXvysgJcZn
 jfL3ExD2Wf0FancK8L1ulZW78PtXmrnGvn1CsnUq85ivzIB+5iw/vS1vofgfNnMJ8qqRxwr0gbSkK
 69F/GgJ02mB+TIm//Z/9nQf6etMSFQ96+qgR4/WojkCNoq6WaX2wyn1eWl4nnjXq3Oog=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kpfwl-00GSY9-1Q
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Dec 2020 23:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608160252;
 bh=69VYoBgLvq+vxGM2wQyHL0DNdXSJRqMxZossjb5FAqw=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=G0EIGZHV+9aUKlY0PybCOOH7MsNrVk0av6f3/QPqypGm/YmbMZic3iyy4kkcMUVSn
 O8WRdHA5M0IMjyLwXe6fi45XMZ+aIxU8p3CCg82KY8g79hwM5o7OFrh5svOCnJteoN
 ISW9q3cDd4N2aH4nRjIV8W3YFLK4WRAmEjF+QjqZ6p75w/ytGSowQ39P0i6K6pRZfk
 Rh6b0xUbFGHln0PvLkbe8ufM0pWj4t16C+W0qG5Y2Mj10MUMMk+vocwXPRJeSVC61W
 kPzmnTx6H70ow+RxmoLOdqjavQIS118FXBEJXPguGGNuz50a+8KoWELv3h2ShCopzR
 RKycWC4U0khKQ==
From: pr-tracker-bot@kernel.org
In-Reply-To: <20201216142959.GT11017@minyard.net>
References: <20201216142959.GT11017@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20201216142959.GT11017@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.11-1
X-PR-Tracked-Commit-Id: fad0319cacdf02a8d4d31aa1d8dc18c5bd5e397e
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f67d6620e413a167e861ce5733c1be5a2384e0c4
Message-Id: <160816025269.24445.10901831659003770309.pr-tracker-bot@kernel.org>
Date: Wed, 16 Dec 2020 23:10:52 +0000
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
X-Headers-End: 1kpfwl-00GSY9-1Q
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.11
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

The pull request you sent on Wed, 16 Dec 2020 08:29:59 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.11-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f67d6620e413a167e861ce5733c1be5a2384e0c4

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
