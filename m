Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DF9B1D202
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Aug 2025 07:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=plflIhvbeR/9PUC4WmaBi9i/MhizmFQAvn6mzZZrTJ8=; b=QijcA5N5HDjLfI360wn2F8q+Tj
	2jt1qU4FCNvXamxjAL3WkaOWdRKL+r13p9AuRajoyZSlV1s+NuVEIs0XZWtognP7NhdACUqq235bi
	G/45iUmZidR9Mjh224tfSmIxps76uxuRLSjDOHaMIvRmBwLUuqJuECrs8usiexq6+lbQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ujtCi-0000B3-5x;
	Thu, 07 Aug 2025 05:30:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1ujtCg-0000Ae-Ik
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 05:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AXDYqS7tCugV2uZkPnoKDpO/R6SEgVaWkEpOcVIsMfg=; b=WDv2xNhhUGxb7T8bmqeyUv1YUO
 oaq0ROb/ka5G5OF+1mknNAGHLxW8i6/ERRRAWZW3uNKo0QRGxZDricGpzK3Cy0wL1WSZD0M07nRvB
 klhh9LlQ75HugM+4J07/aWvrShOUhlzRyVRCGlnMSYpMTvaEddboUIohbYw/yDdlSBxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AXDYqS7tCugV2uZkPnoKDpO/R6SEgVaWkEpOcVIsMfg=; b=G47tUM1YoX0EID0Kii6blMrre+
 qfXGdkjcO4xNp0hOiupl1RcBasTugZqVFKBH9tS74I0pR64zUYm0BlHExuhv/KrwTTUMeC50DmTMp
 YLBsmv1vJMt8Hk0xQpohU27zPhxx547u1dWqze15NVQwJ9frvN2ZaDUxOzvzeJ8DPXbk=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ujtCg-0004nv-84 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 05:30:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id DC8D745687;
 Thu,  7 Aug 2025 05:30:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C10F1C4CEEB;
 Thu,  7 Aug 2025 05:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754544608;
 bh=eiXNe7qbDEJzJQTh3X6h4ZLWYkDU0msz/BfKtGPKo2A=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=GRXoUZw/CL6/rqgOSWfObr0PuBqN8OE1LlNIUtEEclCv/dYaKRTV8tEj8nCmzAb5x
 T8NjT8+33uTtUTJC8PR7F5S+q1sXaoJxRmaaFMrBKL4utLFskGPWy6GPeHRI2uaevl
 gLrxZVuHdPBW2Wwa80/wK60DkL/ObDXMHUcb/x2LEHYKiPOwWp0u8c223j2xZLLiEU
 kiDzLXbAjCXrJhRkd5isK1Ex8fdYmhcGY5lfLrMllK5odoc6AgvdFVtia9uWIC9NHS
 jUo8k4720dDHWWU5wBX6jWcR+scY7TQtGnUwIJQ8ypGgp3o8uS64JafhTOxRV6Cs8d
 oa0Op0CsY1zQg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 AE01D383BF56; Thu,  7 Aug 2025 05:30:23 +0000 (UTC)
In-Reply-To: <aJO-ExS1Zz-eMuZe@mail.minyard.net>
References: <aJO-ExS1Zz-eMuZe@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aJO-ExS1Zz-eMuZe@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.17-1
X-PR-Tracked-Commit-Id: ec50ec378e3fd83bde9b3d622ceac3509a60b6b5
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d244f9bb591eb914901a84c79d51975c02f81ea5
Message-Id: <175454462255.3059740.18109529050913962921.pr-tracker-bot@kernel.org>
Date: Thu, 07 Aug 2025 05:30:22 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 6 Aug 2025 15:41:55 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.17-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/d244f9bb591eb914901a84c79d51975c02f81ea5
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [172.234.252.31 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ujtCg-0004nv-84
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.17
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
From: pr-tracker-bot--- via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: pr-tracker-bot@kernel.org
Cc: openipmi-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 6 Aug 2025 15:41:55 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.17-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d244f9bb591eb914901a84c79d51975c02f81ea5

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
