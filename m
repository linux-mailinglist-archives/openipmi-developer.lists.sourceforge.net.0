Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 196A41606AD
	for <lists+openipmi-developer@lfdr.de>; Sun, 16 Feb 2020 22:10:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j3RBP-0002Er-Po; Sun, 16 Feb 2020 21:10:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1j3RBO-0002El-Qg
 for openipmi-developer@lists.sourceforge.net; Sun, 16 Feb 2020 21:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sVfncXnbZED4LWida6qvgjVYYS4iVn8kGJ+Z2bYaeiM=; b=X299ISwm9Y38kLeL/ENVuUFCqP
 AvN0GFnUdIihwYgTMj8WNz9AQPOf7vFcamNegBYl7NSaA5pjAgeT8dhuGe7wTVeuEIcCpIQl0mJmQ
 GKvgWhqcFZJwh1Dic1yatut78oztLSJMF/ugDdgVJWuGWk07KFxBR2pgSl2fki1oOEeo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sVfncXnbZED4LWida6qvgjVYYS4iVn8kGJ+Z2bYaeiM=; b=Yn5gshZZgv4S0WPu1/f5qRHHH+
 BGFK0QyrCRRCXVEwWxbbUa0a2RU8/TR7GW3WaK+WEwtX+/DgnOQEQ/q1eNIU6t2EWXw8YvA3QRSPl
 uNJLEUftTfO+dVkuVz5q1G/TRWMBDGpcDYQndvi6Pnmmt68zIG5OEt+jO6Uhf8Kv2HG0=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j3RBN-005rSM-KA
 for openipmi-developer@lists.sourceforge.net; Sun, 16 Feb 2020 21:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581887418;
 bh=zRJ9f5umV6ieTK530YJ6FMkXa5tTm3dOjtwbPTng79M=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=szG5xPEmSFePtISxuNmT3FZuLmpqMqou1VXlo8JQE4lnzcKa/n1ndf8o2KcNRjBjP
 HOCc29SbXFEgn7pO8PSjxP3Iy2Vr4HzNXmgbxVCR7+dHf36qHILpJGE+ui/CmHVK82
 QPTi0jNZ1e/xTO+/L31lvQLE5wQxpTW+ymJXVKDw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200211001836.GI7842@minyard.net>
References: <20200211001836.GI7842@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200211001836.GI7842@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.6-1
X-PR-Tracked-Commit-Id: e0354d147e5889b5faa12e64fa38187aed39aad4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ab02b61f24c76b1659086fcc8b00cbeeb6e95ac7
Message-Id: <158188741828.12275.17520604145616390715.pr-tracker-bot@kernel.org>
Date: Sun, 16 Feb 2020 21:10:18 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.5 (/)
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
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j3RBN-005rSM-KA
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.6
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

The pull request you sent on Mon, 10 Feb 2020 18:18:36 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.6-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ab02b61f24c76b1659086fcc8b00cbeeb6e95ac7

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
