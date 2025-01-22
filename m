Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4124A198F9
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Jan 2025 20:07:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tag42-0007La-Dj;
	Wed, 22 Jan 2025 19:06:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1tag41-0007LU-Ab
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 19:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nR4RLOT8wklYMFSCwfEkjdop2S/BfmZuevu18LRJDHY=; b=dIfwZkfn/ZcdIsc/rxvOg/dsdC
 6qcLBo+atwk63q541m9tHo2VBX4kZ2HEgJHVdQ+A0eF49UvOXh1iq6rzqbPnNy8EjekYgytdzpjDF
 IiTGYKz63iXknBfipocSsrgYxzUJ5TD2SqaMVEc50rSXxZtGsL1vjw6GYtJzZge9RdV0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nR4RLOT8wklYMFSCwfEkjdop2S/BfmZuevu18LRJDHY=; b=cuO/NuHkH2mQXIRX4p++SzMbWM
 TVRwtnOT7wXD5k9p9bjXHW7lWlpX98BfdFZxxBuDDn4OX0kjOD2NEAVFdVMFcnSe2MT6+0Bx0S0Z9
 w6/Jb8gikVNWsL0dL8YEEaOaFbOr4adxrcRKHgPf2gPqKjsU3eJHe6Jrqw7cQooGnypM=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tag40-0006Gn-Mn for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Jan 2025 19:06:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 9579BA429CB;
 Wed, 22 Jan 2025 19:05:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3535C4CED2;
 Wed, 22 Jan 2025 19:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737572810;
 bh=8XUmbDzncRa1m1SNeF65nyQBNEfpu5mcybSSs0/cDaI=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=vI6sdN/C7Z69wuBTSZ1+tnnzzqqrxdoC+RQIlWmDvNGUXWQGJEWOYdwuzfhn87fpb
 sEA0w0TUPWM4GvSrYzzxUJzhnAWhg1hNrDEmee58f8cyv+jU0PqDMV0UEAfGiRCKCz
 dzy+IrnIwYwauBh2tpHCmXVxHUy2ZR5cWQKJC2d1Da5HaC4q/pgcW1qFhZWf0TV1Lc
 W4941Pfs0k85fuBdF8Zmuvo5Oym1do8tqA+tqQUCPNLam4HIceycD2EFYCR5dqGI0j
 pdFsJMYsHUI97EUox4QgoENP4tWVMuCLLSv+p53u7bleh0BcSVk83haZdUuQY8MvY3
 XmWGOF0ezLoXQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 70FD2380AA62; Wed, 22 Jan 2025 19:07:16 +0000 (UTC)
In-Reply-To: <Z4-pz5vSqkNq2SJ2@mail.minyard.net>
References: <Z4-pz5vSqkNq2SJ2@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Z4-pz5vSqkNq2SJ2@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.14-1
X-PR-Tracked-Commit-Id: b4339d599bc2b95be7887bde82114c153f6d0c10
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: df60eac9efe8be41cd30767ed001c04f478e0f4e
Message-Id: <173757283499.783272.1508265007981288600.pr-tracker-bot@kernel.org>
Date: Wed, 22 Jan 2025 19:07:14 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -5.5 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 21 Jan 2025 08:06:07 -0600:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.14-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/df60eac9efe8be41cd30767ed001c04f478e0f4e
 Content analysis details:   (-5.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tag40-0006Gn-Mn
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.14
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

The pull request you sent on Tue, 21 Jan 2025 08:06:07 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.14-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/df60eac9efe8be41cd30767ed001c04f478e0f4e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
