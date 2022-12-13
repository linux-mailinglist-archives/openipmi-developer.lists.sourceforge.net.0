Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5715364BED8
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Dec 2022 22:54:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1p5DE6-0000s6-2f;
	Tue, 13 Dec 2022 21:54:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1p5DE4-0000s0-Bi
 for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 21:54:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DGUpk5FQOYjpiACJmW1Y7QczUwH0VlqaxMkYyCh3Q54=; b=YPnReHBeqUpBkBR94Zk7lMfJCJ
 GfqdsDm5wVR+KFR8s9m95UehLg37LCt7ofkLrwgexcCdS2b4OsSfFpAhNGxc0BYnWpyd5RtnaDWj/
 yBc8GjwDqvcd/84q5n8lQqV5k/IG/M4tmIQI25lRLcV9/H9GiLXJ2pJMsO2hSgIw/SHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DGUpk5FQOYjpiACJmW1Y7QczUwH0VlqaxMkYyCh3Q54=; b=JZeOiU0dBYdAbO8kRsqtxIN19Q
 oPAXIBjma3GU6OF5emX6rrB8dxYVl85g2afU0uLuZsKQmlrriFkB40k9j+naCe4QJQpuXukwqZMiF
 mcAUp+/3YzVCZHar3boSKVLW1cTkCoBXG8UomkTwHdhcIsQlOkeL+i4kTSsKtRDVlP1Q=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p5DE0-0005Dn-3Q for openipmi-developer@lists.sourceforge.net;
 Tue, 13 Dec 2022 21:54:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A94AC61714;
 Tue, 13 Dec 2022 21:54:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADDDC43396;
 Tue, 13 Dec 2022 21:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1670968442;
 bh=VS1YO3C1FmDhjjo64cEf4sVP6XeDarbxvkrHOztmAdc=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=hJZ1BQLscbo6ykufQmHhY/XkMJrBcA7ju1iEb93TXMONnnJ3RakWW/eaoOV6SlpV7
 YVSzsR5vAr5FS0ETLbA5D0ynj4vmsT4GUPRU+PRdUb6vyE9JzwTuyYbzrO6W011qNM
 anq/51jQoBuOi+9XzCdWRkY6rESBO2MBCKb6DhFxnpgIombzNcV0K5HJx6GJtRodRE
 qsrccTqeA6LfV0ktqJgenUEDUb+YFU5bRL9Ygv1/bzT1EsCfzYdVPT7Z32OnkHR7Kt
 tMEa3UBN5BzfQTmHNCEOB4UwcOnV5wT0kvCANjF0MddkfOcPTLZLTDu79vQ6nkAMqr
 kKUWH6lCDUHDA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 6B529C41612; Tue, 13 Dec 2022 21:54:02 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y5iKRKVS+o7I3OL3@minyard.net>
References: <Y5iKRKVS+o7I3OL3@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y5iKRKVS+o7I3OL3@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.2-1
X-PR-Tracked-Commit-Id: c6f613e5f35b0e2154d5ca12f0e8e0be0c19be9a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 90b12f423d3c8a89424c7bdde18e1923dfd0941e
Message-Id: <167096844243.13204.13573850329214162960.pr-tracker-bot@kernel.org>
Date: Tue, 13 Dec 2022 21:54:02 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 13 Dec 2022 08:20:52 -0600:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.2-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/90b12f423d3c8a89424c7bdde18e1923dfd0941e
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1p5DE0-0005Dn-3Q
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes and additions
 for 6.2
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

The pull request you sent on Tue, 13 Dec 2022 08:20:52 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.2-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/90b12f423d3c8a89424c7bdde18e1923dfd0941e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
