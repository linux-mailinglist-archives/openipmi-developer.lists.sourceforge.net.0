Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBE769FC88
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Feb 2023 20:54:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pUvBq-0002IY-Fe;
	Wed, 22 Feb 2023 19:54:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1pUvBl-0002IS-D3
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Feb 2023 19:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W9nqjPYW1Q/pNmTnAzcdn+BJt1BQspzQE07Qxb6/NHI=; b=jaEifOFfsDQQ6wQqF+J4qTvJvc
 4fGGVtlMta2kCXgbj3WsDvqDl6A7B+5mXqLBPqrNUvugbrNas+ZWyh17IUDJcWWDd0Zx4z/v6SlbS
 try/7Vvhwf0Fud1TPOkDvso9QDWozAqNZXgaggRFVQt4jyfq0diE4AzZHYANWGtYZFig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W9nqjPYW1Q/pNmTnAzcdn+BJt1BQspzQE07Qxb6/NHI=; b=Yry9hnyqxMFr5RUeJgGoFlD4P2
 yPA6FhGgOAk1b8k6H07bpieicboLwKvJ5EhksI7K68mHUPrxFQzWZi0iBffSXGk9CtTorPfnuPgtG
 9iSWEqzdtHkSfJmgDBoICKxKEcBbi+xtaDy3eB7m+M08vxfDMru3jjJuuvfVzoO1UTls=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pUvBf-00DpLJ-H0 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Feb 2023 19:54:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 41E32615A1;
 Wed, 22 Feb 2023 19:53:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21F32C4339C;
 Wed, 22 Feb 2023 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1677095633;
 bh=HGs31qSxmLLhd+T2XxTFyujnqkN4aKRJbcNnoeglS1A=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=XuC0RzXhPYzgpT2BHBURmVFQid/xlBEKnqRj/aWVyC6Fr/d908yJxIg4fIi05hF9m
 RiOPpKFpyPWf9oeVGn9WWKU7w46NpaNknzO7JSMlZEEGqVbDoiN+AvqlqGKJLA0Urg
 EllhAuDHJNcaZ3GZjuUZAjCa6ha9ajivvnKTSoWIgVeKxUClST5IbjmaEz43VYuZZ+
 UrRVGaAs8B8G8+dwrpinwLsDXOjqzNJ29W4sn1WSpf+P1SgWb69fEFCXrk5pGvFm0o
 pmfg2leMVi4EW9D5tTeYnog6fDQ3mYhGleWJrfTigBNmw0x2+pxYd9OZISB8QLYwyi
 MyaDAyYLOib3A==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 12278C43151; Wed, 22 Feb 2023 19:53:53 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y/YNPWfyZE4KteG2@minyard.net>
References: <Y/YNPWfyZE4KteG2@minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y/YNPWfyZE4KteG2@minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.3-1
X-PR-Tracked-Commit-Id: befb28f2676a65a5a4cc4626ae224461d8785af6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: bc009f9382bd0704273c9a0c1cbf72020bbbe1f7
Message-Id: <167709563307.30115.3799041311740785834.pr-tracker-bot@kernel.org>
Date: Wed, 22 Feb 2023 19:53:53 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 22 Feb 2023 06:40:29 -0600:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.3-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/bc009f9382bd0704273c9a0c1cbf72020bbbe1f7
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pUvBf-00DpLJ-H0
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.3
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

The pull request you sent on Wed, 22 Feb 2023 06:40:29 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.3-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/bc009f9382bd0704273c9a0c1cbf72020bbbe1f7

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
