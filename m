Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1693C78E50B
	for <lists+openipmi-developer@lfdr.de>; Thu, 31 Aug 2023 05:20:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qbYEf-0000CB-82;
	Thu, 31 Aug 2023 03:20:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1qbYEe-0000C5-6Z
 for openipmi-developer@lists.sourceforge.net;
 Thu, 31 Aug 2023 03:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VCIKcJyP35LDt4tVmzDNCUkHJqAVjDMLExKehFr1cQg=; b=K4uZYfAyDFfkvBi7V2F1I5V6D3
 +5IAIZQU6elV32j1ju4SSCgonpHzMj/3/6puivodvGUobIijHZo+py3QoL0s8YJExm/7diNoG1mhN
 2cVzsfQcb50r0W8Ekp7VeWtluDrbHj5qxHLL51MToYaIQtdxUl/ciAdA7HJMfDpFZhgY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VCIKcJyP35LDt4tVmzDNCUkHJqAVjDMLExKehFr1cQg=; b=HGx53owONGZeuuc/p4VyUnR7Gj
 oDEVC6FlFiux30KyjO+7V4vsjD5UNSyXwMGc9RnlM0lgz0Dj0X30OzW+VczsNK64Vv7QvTUNmcEKt
 nHB2uPJ8Zp7Nw8Bm3sc1RnwkfQj/27a+I0JMdfbh/Wp7nVbymWvq9MYYnvPHb1jZE9ts=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qbYEa-0003IR-VL for openipmi-developer@lists.sourceforge.net;
 Thu, 31 Aug 2023 03:20:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4F9246152F;
 Thu, 31 Aug 2023 03:20:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E38C433C8;
 Thu, 31 Aug 2023 03:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1693452034;
 bh=qnVY7TcL7F9DVVbLe5ol+jk4UrRGXfLLDDgbfU3Q5NE=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=dXFJlnr2qDLgaQHts4KyLn/DlOhKx1JGaLhyxGXbx7SOfZTbSMAmaz45dOkOSZpxg
 0Tzsc/BQ8Ot40EfCuYP+8BKvr5K6qP3Z+qWWCNjYkOLGMJW3/LoidbHeLwu1wB+7Ka
 jmgeqdKEer5o09PNLPrK0YIoNhCb2M+wvhWTq5ngZ+wI45SlStFv+PidN2sfYwgZht
 wB6TIrDlYCdu900I+YlcF+UpMqV8ENNj7pcBgqXW5h9SAOqxS8Yt12+YL8jINbDiDX
 g5xgfnv5q6MLhOD7j9/TLDCcAyrGnZjur9aqZ4jMe5ic/qVyTXuIQ6RKTI7zOfZrXf
 cOi3mVhDoegUA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 A4C38C3274C; Thu, 31 Aug 2023 03:20:34 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <ZO5hymZPCRLHMMz7@mail.minyard.net>
References: <ZO5hymZPCRLHMMz7@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ZO5hymZPCRLHMMz7@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-6.6-1
X-PR-Tracked-Commit-Id: d40f09c1a23024f0e550d9423f4d389672e1dfaf
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: a55b0a028877e9d7e7dacdbe363d39390554ba14
Message-Id: <169345203467.31998.4894933772556469203.pr-tracker-bot@kernel.org>
Date: Thu, 31 Aug 2023 03:20:34 +0000
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 29 Aug 2023 16:23:22 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.6-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/a55b0a028877e9d7e7dacdbe363d39390554ba14
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qbYEa-0003IR-VL
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.6
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

The pull request you sent on Tue, 29 Aug 2023 16:23:22 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.6-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/a55b0a028877e9d7e7dacdbe363d39390554ba14

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
