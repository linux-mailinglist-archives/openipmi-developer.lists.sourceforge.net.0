Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 511489345BE
	for <lists+openipmi-developer@lfdr.de>; Thu, 18 Jul 2024 03:27:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sUFvc-0003Zq-8R;
	Thu, 18 Jul 2024 01:27:28 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1sUFvb-0003Ze-7U
 for openipmi-developer@lists.sourceforge.net;
 Thu, 18 Jul 2024 01:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B1+yOlvwraHMmN/FSS3oYMZVh7a0U7pdPd4mG6zjCeI=; b=X4XudjEWvqQXOJTpKSXwGlZh7a
 tAyxPx2cU2mwuJDjtyG5s63Skn2kTUOcAjWk8DxiQOqxMx93gFL5/fsxqiPpxP2x50ggTd3Z2uCzH
 fBdVaWH5xR/4Zw8Ea9q3xAQwEmjd3KznTKqAfrv9asz4Wgtv8OutrpM1sxJhBh354lC8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B1+yOlvwraHMmN/FSS3oYMZVh7a0U7pdPd4mG6zjCeI=; b=bC0RR+s6AOHOgaxdu6q820aPbD
 Ist/LhdqV74cVmf96NXvtgJTDGUub1EUhYOYcrWaXfYSG9eLQv6oCybwfn5H09TxgoZcRax4LvkgR
 CSMLu6RTs7BC+hllg5TUMf5flX1VUH7yEFAk8k+azDNDvgmfIKW+no/yRnbz7bxXo/1s=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sUFvb-0003hV-6W for openipmi-developer@lists.sourceforge.net;
 Thu, 18 Jul 2024 01:27:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8A98ACE1862;
 Thu, 18 Jul 2024 01:27:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABB2C4AF09;
 Thu, 18 Jul 2024 01:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1721266038;
 bh=qaSSkWGIMHCMN5LowT9mD15W+cG8ANfhE7Ppsv+Nmkc=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=MRAoK5guUUzMx38qB17APBOL5lPomwpBujmtt6lJCc4Tt5+e8iirpP4OvwkX3dSjG
 cJ+YkPc6yOCsnLGSOwudakY4LkyPKacmd8FAzdorR0ec+oKhH2WBE9I2A0KYT5F5Rg
 /QYrLMxUb/uuuczKXtMQz05XWLA4YNs+CGCMREB/jwCiqs/5+AvQLIHrNMnXPwLu/v
 9ieTc7w2CtQdlOdvlOVHtLSacnYW1cmt+N42ZI24A8n2icsGibQkp+YVsKfaTBM/qt
 Pou0SQZvpCw2vnsJoKan2QEFXwdWnwfOugI8vTZOINoYdcIKhLdylRGRUYG0i1mY20
 SXHWT5gJi1LMg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 B309AC4332D; Thu, 18 Jul 2024 01:27:18 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZpZ1dVeLWUbAd89V@mail.minyard.net>
References: <ZpZ1dVeLWUbAd89V@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZpZ1dVeLWUbAd89V@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.11-1
X-PR-Tracked-Commit-Id: 19a01155ddfe525e3a4e7cef734f18cce640b1ef
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 221fd1e154ee533c529280bd3866570c086ec792
Message-Id: <172126603872.24030.3733568210930373986.pr-tracker-bot@kernel.org>
Date: Thu, 18 Jul 2024 01:27:18 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 16 Jul 2024 08:28:21 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.11-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/221fd1e154ee533c529280bd3866570c086ec792
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [145.40.73.55 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [145.40.73.55 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sUFvb-0003hV-6W
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.11
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

The pull request you sent on Tue, 16 Jul 2024 08:28:21 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.11-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/221fd1e154ee533c529280bd3866570c086ec792

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
