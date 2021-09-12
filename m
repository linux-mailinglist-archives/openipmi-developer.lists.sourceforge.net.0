Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A0E407FA4
	for <lists+openipmi-developer@lfdr.de>; Sun, 12 Sep 2021 21:16:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mPUxu-0006Q3-Ki; Sun, 12 Sep 2021 19:16:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1mPUxs-0006Pw-Ae
 for openipmi-developer@lists.sourceforge.net; Sun, 12 Sep 2021 19:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gwGeQDVzCC3NDJHXiGsNWff7M7rnHYTbmebk1Cy57yI=; b=akBHBU2eaF/AtWfU6jqrJuGSoL
 hSIWYFeQyq+SQesaGEV40A+aE3MzqFkngvCW9zoGv3ZJmO8wJI+pDSPE5jMx49bnwWRl2uP3p7B0o
 LtuViG8hZjyXl9sOcmLPWoR3la4kRo3JCD/efoBeBe687+3cAncS6houPW/alKUWUCP4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gwGeQDVzCC3NDJHXiGsNWff7M7rnHYTbmebk1Cy57yI=; b=DvJBNZgU1fVyXUk3P388+oF3wI
 3CyVu8qJ2AqVEkhMgGgU/zESR9UMr91jnot8s7U/tRI+3KRa7zeZlftTpnPIShteGbvW2Ello2PK/
 S4GJ1ZVaq+fZVCRggIp01AeVA2Qb7cScY9X2ui7kNl41vBDiSOdBe+ktmaPUkvD2yFLg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mPUxr-008IQ1-Rv
 for openipmi-developer@lists.sourceforge.net; Sun, 12 Sep 2021 19:16:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 6813F60FDA;
 Sun, 12 Sep 2021 19:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631474186;
 bh=tpY0zOgaP638Jx4s6R3mcCRLAWTzFpd9++ECMdrUT7U=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Am4GIAGPB7fPHw09cUnueOY6wtxvihP5Qtbe4GzZ34Ua5zzkoGgXRrDc3sLQOsFLL
 HA3PIcCU/1smCY7N2674HSQCG8Tyt7bSCYwhnahon/9uyXwq8dpfYd4LnQdRuAB/Az
 MOWpaqhNnW8xMiear9kd8Wih6hfRW9WjYwuaQRcXbi5Q2s0qcOFivvs9wswiVK3/7V
 NkGy2s4MbCVFISrRY65GCd47e0Q0Ooyg3MQpDOrmrmGY6R3vbTrUbUI3bjWLq4XxgZ
 mbuhpqCrq04YMeZ5BVZHBSvPGpZv+P+oT+iyRoMKStKPmZJ62i2qJ+rpHGv9O8/4po
 kKx2HxpgTmW+g==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 5550A609ED;
 Sun, 12 Sep 2021 19:16:26 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <20210909211052.GM545073@minyard.net>
References: <20210909211052.GM545073@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20210909211052.GM545073@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-5.15-1
X-PR-Tracked-Commit-Id: bf064c7bec3bfe7e28889774dc9e0ca4f7236775
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1791596be2723f01de2f69d16a422fdba182c706
Message-Id: <163147418629.28875.16467528126401789688.pr-tracker-bot@kernel.org>
Date: Sun, 12 Sep 2021 19:16:26 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.6 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 9 Sep 2021 16:10:52 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.15-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/1791596be2723f01de2f69d16a422fdba182c706
 Content analysis details:   (-5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mPUxr-008IQ1-Rv
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.15
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

The pull request you sent on Thu, 9 Sep 2021 16:10:52 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.15-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1791596be2723f01de2f69d16a422fdba182c706

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
