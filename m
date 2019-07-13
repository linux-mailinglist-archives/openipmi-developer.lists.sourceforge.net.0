Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E91B667C4C
	for <lists+openipmi-developer@lfdr.de>; Sun, 14 Jul 2019 00:50:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hmQqV-0002pn-Db; Sat, 13 Jul 2019 22:50:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1hmQqU-0002pg-AW
 for openipmi-developer@lists.sourceforge.net; Sat, 13 Jul 2019 22:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ucNfm7dHzyHCsiQIq0JBja4ZsUfQGd0HQEyg9O4YM3o=; b=NczmjsoNS1A3p2bvp/u5BwdtdU
 J94YDbv+4k/7ajH0YuQxCb8oV4R0ugW4MhoX8xgsNUpe+Bq9BV48TxL51XqDMqQniIKRmrxyNIAID
 zyz0MvnZ6PvlgzE1ayiCBhKGRRfLwk4FED12+I3tyU0ka61caTFSRJI6Ry9AntuPoy8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ucNfm7dHzyHCsiQIq0JBja4ZsUfQGd0HQEyg9O4YM3o=; b=WBPIKB4kZmEkHCfhza5VNnuO3A
 0RWC+4nJv81UIYuh1Nsnbob34ILQd3/WKA+VL9kRSm2E7PNFDlIIwl6yXlEZbQXk8ZoOuFF4wJs/C
 ucYCsqBr62z54O5xgSguS0JHm6Q/38/EnebqxyZAz50zd3eGJdJiTOwFTc1AU2Ir+RwA=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hmQqS-000POw-II
 for openipmi-developer@lists.sourceforge.net; Sat, 13 Jul 2019 22:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563058215;
 bh=XTAr97HZzRYdS0axSSJomw5RNl3p5AQ9Wt3oGdVopY0=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=uBxr0pcyXyh1Jw5f1EUOtBoX839vnMZdmns4I879K0vqwHldEbLSUWX1lnht2kQ5m
 rUET1RZp5mJtsUKp2LH2RP/TSAp4db0XWJ+1rU7+kOictRZjZicllTDviOhpeh0//A
 lizydaycoyTo1G/3l9KHUVA3VZ3gDkoJkkHc4Jew=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20190712115204.GD3066@minyard.net>
References: <20190712115204.GD3066@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20190712115204.GD3066@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.3
X-PR-Tracked-Commit-Id: ac499fba98c3c65078fd84fa0a62cd6f6d5837ed
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 92adeb616c9172dea9678f53ea6e5501fc4f4338
Message-Id: <156305821495.12932.12158249703290312226.pr-tracker-bot@kernel.org>
Date: Sat, 13 Jul 2019 22:50:14 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.2 (/)
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hmQqS-000POw-II
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.3
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

The pull request you sent on Fri, 12 Jul 2019 06:52:04 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.3

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/92adeb616c9172dea9678f53ea6e5501fc4f4338

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
