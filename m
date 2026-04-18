Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1g/cD73N42mPKwEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2026 20:30:21 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87299421F58
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2026 20:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bFos500mCj1Z+e+yv+9CtNuelPttbmQzBZ22pEANUwo=; b=DDu3t8DE2E7i6+xyMD6sXv+ZEa
	6LwPzKwpRyIvavWa3TchVgsICXZhlRn4aTjCtRcpFOW78Cxin4QzVXK220DST59MPSDlOpExdJLzG
	8htP0hTu/lon66VOequ9i1fNt3+IbXqJYegURfNaEl4hJ7je/3yZLaE1mze5ow+sJ5vs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wEAQf-0006dy-Vf;
	Sat, 18 Apr 2026 18:30:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1wEAQd-0006ds-72
 for openipmi-developer@lists.sourceforge.net;
 Sat, 18 Apr 2026 18:30:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3RhqUKKwB91VzK1gZ+wPqMa25I6h7vpZvdh6g6WCWLE=; b=boHsmVdabluEj83IcfNt8mNm1K
 +LZFJOAVR38u3X3F5Gc9CP1JV3ism+22Svl1LA+zynKiBAe1yFJMxxWDwZvpne4XPPJ9BbVdQ2eTM
 N4BiBwSMTTUArvKvLQLByVppHiEuPw1Z1wSFvTQpzdR5AqVDF0wsFaz1b0BqpINd6V/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3RhqUKKwB91VzK1gZ+wPqMa25I6h7vpZvdh6g6WCWLE=; b=jZAfQYULdmat/3CQ0MWpGP3esj
 pfdkmuYB+unvNvmhZZcfD5h1TmOBF/DYFvv6wrpY4WUHVDiTgNMDZ23+w2/zGI5evMEM0enIX7rQ4
 ze8+FKBDHw1vVIuj3jBmL7xKEWjfcQw5t7PcrhhgrJ4JkgZyTtyafMdlFZwannpDZItE=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wEAQb-0005m5-Ko for openipmi-developer@lists.sourceforge.net;
 Sat, 18 Apr 2026 18:30:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2540840722;
 Sat, 18 Apr 2026 18:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07066C19424;
 Sat, 18 Apr 2026 18:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1776536991;
 bh=I+R77qQixr3CJ6mHyvgvu+qW5cPjcP7LeD9xT1vvORc=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=heY1zdfZpvNEOeCt5CeWEFY8UgUA8B3GfzunIUH7A6ocH5L+/mq4kpMrw9lOQNaf9
 2dhR89FO/zLkLGAyj3oWGPUI66ai8gg/ZwGuGGpRz/oirrQG0XajmTsEo6ZgaHqjR6
 U22AN2lv7tAphBmobPQDnrED6qI34uJ1LY4dygrEPMRUu74e65LZJw+4uNbT/u6QIy
 dEFD0FsjTB67gJC/eaWKlWIQgOzZ3efB3K8OJCOMh9uhxDz2S3Xvhqr9xNLMJBQL/3
 8FYsWSvIrProYWz5yy87AUu+gwsAnCh0pNVNGWvYSXZzVa7js+/zWvnpOID8vmWJq5
 3I9kpoxyLCh6g==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 B9F66380CEDD; Sat, 18 Apr 2026 18:29:18 +0000 (UTC)
In-Reply-To: <aeLdUvLoy7LIBubq@mail.minyard.net>
References: <aeLdUvLoy7LIBubq@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aeLdUvLoy7LIBubq@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-7.1-1
X-PR-Tracked-Commit-Id: 75c486cb1bcaa1a3ec3a6438498176a3a4998ae4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1e769656963e0329b91d32ec76955e077966b603
Message-Id: <177653695735.493726.8644274289697774240.pr-tracker-bot@kernel.org>
Date: Sat, 18 Apr 2026 18:29:17 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Fri, 17 Apr 2026 20:24:34 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.1-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/1e769656963e0329b91d32ec76955e077966b603
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wEAQb-0005m5-Ko
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
 linux-kernel <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:torvalds@linux-foundation.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[pr-tracker-bot@kernel.org];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 87299421F58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The pull request you sent on Fri, 17 Apr 2026 20:24:34 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.1-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1e769656963e0329b91d32ec76955e077966b603

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
