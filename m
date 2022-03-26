Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D032F4E7E4F
	for <lists+openipmi-developer@lfdr.de>; Sat, 26 Mar 2022 02:00:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nXuep-0004WC-ON; Sat, 26 Mar 2022 01:00:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1nXuen-0004W1-6X
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Mar 2022 01:00:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t7uC0vNmakMsQsoYjFHdHwQ/QTgN10yZsRFI1ypOTYM=; b=O/7+8y9JCpwdmEHYUwG/uh+3DN
 tQaOM5XxpgtZYh3GTR8fjqC87w95lnRCth26Uz6I1GyJj4q2q3/2afDwcNA7o7aMYYQ7MG3B01mUs
 EgD4KC85bZ0QU7ay76j0SA03/+0wFZt3yLh2J1ParYcggyYeQTp/Mi0HFUGG3dq4wpa0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t7uC0vNmakMsQsoYjFHdHwQ/QTgN10yZsRFI1ypOTYM=; b=ckEvHqwjOxJKaf2cKVQ5IuG+1W
 Wql+sHUqBJ5LRxpqeN/DlevhkWnI+BOboWqraddFvMsbO6tfmabLeWofxNgFS/rVkAGf/RAlCpDr3
 zX+OVuZ/5rT0shGig3FvrhuL/7xiMp/3AB2eozhOlVrzi9PDybnW4vRbI1eZPyx8TyEA=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nXumd-0003H7-Mv
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Mar 2022 01:00:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 92E9FCE2C3F;
 Sat, 26 Mar 2022 00:59:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0297CC2BBE4;
 Sat, 26 Mar 2022 00:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648256383;
 bh=/Q9VpfpcWnMk9MjFYLSoqVj6gorSj9cMvda2V+ytNi4=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=BbQ8yEy89meNh14feOQwdT7CzPUZ4WAKy77FAyqIUZfWYOTEoqpE9FCaQZB11LKUQ
 7Zp/OHad48+I5ZUWmpfXpmGzPFn30zyO8/2Eitr2Sy9I2aOI+JaSi3fKZYlVYmubcs
 uucc4aVBhhWgsOMoUQcUJ7ZQep32DiJ3RzIuNuXpwsWakSHlqOHVOc4oIkYvvivukO
 rZn43dkSg18xFeMDBg/AbEMoM2/6Uvw1/9nmRXTLO1Eq4+ehaLItKavZjJX14XHDtu
 rEJ/qV1sxsx1aJnqY3071NBl2QT+X/ZL/Cji6Yy5v3MYEbS5eBSBY/+c0UIBxuXemS
 hnZ/UUtsDk4yQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 E5DCEE6BBCA; Sat, 26 Mar 2022 00:59:42 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20220324172941.GI3457@minyard.net>
References: <20220324172941.GI3457@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20220324172941.GI3457@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.17-1
X-PR-Tracked-Commit-Id: 8d10ea152e2fb9b4a42b282cb90bfc4d98e319a3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 52d543b5497cf31d6baeb0bcfe5a5474c3238578
Message-Id: <164825638293.25400.17727938399988511631.pr-tracker-bot@kernel.org>
Date: Sat, 26 Mar 2022 00:59:42 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 24 Mar 2022 12:29:41 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.17-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/52d543b5497cf31d6baeb0bcfe5a5474c3238578
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nXumd-0003H7-Mv
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.17
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

The pull request you sent on Thu, 24 Mar 2022 12:29:41 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.17-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/52d543b5497cf31d6baeb0bcfe5a5474c3238578

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
