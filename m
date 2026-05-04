Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNxtBX0C+Wkj4QIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 04 May 2026 22:33:01 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A93194C38EE
	for <lists+openipmi-developer@lfdr.de>; Mon, 04 May 2026 22:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mMYNgr34uks4peakcakevkRogSpkIGlR/lHEpG/mi1c=; b=KpGu9txFXLWFTI+WAuz5XE8vAa
	kb3W/aAhfvNWC+XdHEtqEEK8i3qjGUc7Wd29OScTOu/wf+sVCqooS8/wVVPC2gOjz+0IkNZvnMoHJ
	8UxZl43Z47zprhzgQwkSt9GJehacEjWkJLuZ9xDDXjQMlsPZKugW6kTrkbi8vN+tfb4Q=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wJzyF-0006rA-Mc;
	Mon, 04 May 2026 20:32:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1wJzy6-0006qF-Vz
 for openipmi-developer@lists.sourceforge.net;
 Mon, 04 May 2026 20:32:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=58Ff6748cPIhZdg7diMKuKhwUTKMYXuPcreW52n4viA=; b=A9qf0il426pONFTAkTXtKtWcMt
 eJrYGS+X+lAEkqKyMHBx37pw5B3YG0GjGMrLo6t9+wAl4v7mDVfHFrUgO+2mxEh1N9dFNQj9jwOt0
 NKHnN+gK8q1x88GVo3S+Dpnt8JrvEBu5sOF5nlzMEZbg1wRVYhjTT73diZnes4DFoE1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=58Ff6748cPIhZdg7diMKuKhwUTKMYXuPcreW52n4viA=; b=iC47Z2tVUko/0Z+yBLZts9+z06
 OZOuFeX6OfC0rwjBVktTuQiCxpZPSZsWKW9cAUEyEcf2nP5Bg2Zb7aOFOXTsNUMtoqdiNIPSTlyfC
 6e/xU0YzInCzQoRcoWcsG8sFHNy6ZJpO84/evcbfyc3kw0HOrIcp8hQO1lQZrqpGy6DM=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wJzy6-0007XJ-31 for openipmi-developer@lists.sourceforge.net;
 Mon, 04 May 2026 20:32:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 605DC600C3;
 Mon,  4 May 2026 20:32:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13E9EC2BCB9;
 Mon,  4 May 2026 20:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1777926751;
 bh=QNq55Qsk0/a4j4F3xAiXy7lboxL/j3jLLhEgJpau72k=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=GGxRJQWYhc3CaMNEqSbUK5c4UNIzrlezP/g7dFT4aljwhP9ZZLwYno1gEnHzVLAtl
 m0rpHSVEtbq9oBPUyVz3d6AfZaWVQYRMeaQM3YJ2D5nqxmZpgjsB2Kxx0sJcrmKz/N
 ELjGsXBRgSlz7rGs4NQiw+j6fE5GHxMQZ4Heqv+CwoSqLMlO+w3BG/RjB5laoVbylE
 VHfYDd929WMzVMVuPYOzM57kjoN0hBZy93ICaofOEEABmvW2pJQPY9BWpKFOOQ7KDO
 OK/KR0+nBD6n3w1OR2G4tguhP9r6NBIuJdoHoGjeZlnx+Nl0vOSnCh8kv71PVgpbA0
 9WrpQlEswTZ7Q==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 3FFD83930183; Mon,  4 May 2026 20:31:43 +0000 (UTC)
In-Reply-To: <afjLaFYA9-gb2qdN@mail.minyard.net>
References: <afjLaFYA9-gb2qdN@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <afjLaFYA9-gb2qdN@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-7.1-2
X-PR-Tracked-Commit-Id: a8aebe93a4938c0ca1941eeaae821738f869be3d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c7e4e4d5f7dc2daa439303d1b5bf6bdfaa249f49
Message-Id: <177792670190.867803.11530361853065696364.pr-tracker-bot@kernel.org>
Date: Mon, 04 May 2026 20:31:41 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 4 May 2026 11:38:00 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.1-2 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/c7e4e4d5f7dc2daa439303d1b5bf6bdfaa249f49
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wJzy6-0007XJ-31
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 7.1
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Matt Fleming <mfleming@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: A93194C38EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:torvalds@linux-foundation.org,m:linux-kernel@vger.kernel.org,m:mfleming@cloudflare.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[pr-tracker-bot@kernel.org]

The pull request you sent on Mon, 4 May 2026 11:38:00 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.1-2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c7e4e4d5f7dc2daa439303d1b5bf6bdfaa249f49

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
