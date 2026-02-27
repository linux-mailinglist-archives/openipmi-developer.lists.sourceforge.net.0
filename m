Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +IFROfz5oGmHogQAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 27 Feb 2026 02:57:16 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE5E1B1B21
	for <lists+openipmi-developer@lfdr.de>; Fri, 27 Feb 2026 02:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wOu+UYL7bW/uZD5E3Q9Wj5TxKo1kplNCCvj6dK6DskA=; b=CfYyI06JK+ZaxfdIxd9QWdD/C7
	nkCQDpQOedvEQt8YVWmuwvJ7pk/79ozKMj89xNMhL8qJwNZu9cViI+IEoawlDrQtEu7+hLwfzbxbW
	iWn4Mbwpur0BTrW0G1T0iD2FNoNcLmFgEEUMVX0wVHvQEvOMLon+gNnxlcTz5dhiJhYU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vvn6I-0004c6-2L;
	Fri, 27 Feb 2026 01:57:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1vvn6G-0004bo-Nw
 for openipmi-developer@lists.sourceforge.net;
 Fri, 27 Feb 2026 01:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3A3r3RkGmgeJg0SQSRhs1mg7tjSu8xBgSPE/K8LS68U=; b=RQ6YFk2bK8R9DOHBaPjlNLI+or
 1lJc9FHh+5/J6IQ3RqJ6C7dreAMnAt4Su2S0iAiJwbrlrn/xXiH103rI5cuLILkDWbe6LZJQpCENP
 3aZa23EaZEoNN9wQtjG4otlWll7UN3C+fBSonhTluv2noG1J19a1bjTe5vSXaSfksN04=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3A3r3RkGmgeJg0SQSRhs1mg7tjSu8xBgSPE/K8LS68U=; b=OtAlWEe2zKml6DXfWAW532kiBW
 dCD0G39gCe5GXRMmMVNXYsmhHxRUCtUXJvOQNpvO7yBhWBS44/mfI+qkxbS5UfeTc3/6CRDumCTiH
 +EfT63E7TBCliXjTCylHFR5ZoLuv8PuNezqKCT+fcHEGAPJy/NKt+5KByYGDbC3j6gyY=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvn6H-0007nI-1H for openipmi-developer@lists.sourceforge.net;
 Fri, 27 Feb 2026 01:57:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 686E760008;
 Fri, 27 Feb 2026 01:56:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BC44C116C6;
 Fri, 27 Feb 2026 01:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1772157419;
 bh=sLQUU2MSLCAYH36YS9GTa0/o5RbM6GeFOoI7bQvF2C4=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=gUGKn7tmRhUWE7CM23e0rIT1UjwVDN8UiSFJqlCG151lALY5/rQI/xqtteBVkISo7
 nLibA5m+BiOjU/nIChBmTOwTuXDEvkOuy11O/EcXvNktHSQc6OELehBNzKZDA/X5Oh
 0Wjgh0R2jlq7gmbmyn8FOByqhExfeowDAP9MdUfcd8Wy7mRmbldEX5uLwmCZOR5Ffj
 QQsIoynjcyJTqSlJdfAqCHMGXGk+wCx+3gYSRgzZXdFQ2hEYEsAyuYJ6e6engkJ6+A
 y/6CMv4SkxbKFmM6muxolXTWoyvivZMvJ+LNIodBnKazi3EC4PHEUGlPv1fBincvxx
 R5FriPUaOxjWQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 7CF13393109B; Fri, 27 Feb 2026 01:57:04 +0000 (UTC)
In-Reply-To: <aaCVbFXCsGMJmaeq@mail.minyard.net>
References: <aaCVbFXCsGMJmaeq@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aaCVbFXCsGMJmaeq@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-7.0-1
X-PR-Tracked-Commit-Id: cae66f1a1dcd23e17da5a015ef9d731129f9d2dd
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: c45be7c420659391530fe3508191083bc0bbfe15
Message-Id: <177215742305.1937342.13145235181190935280.pr-tracker-bot@kernel.org>
Date: Fri, 27 Feb 2026 01:57:03 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 26 Feb 2026 12:48:12 -0600:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.0-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/c45be7c420659391530fe3508191083bc0bbfe15
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vvn6H-0007nI-1H
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 7.0
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
Cc: Matt Johnston <matt@codeconstruct.com.au>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Breno Leitao <leitao@debian.org>,
 Igor Raits <igor@gooddata.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 openipmi-developer@lists.sourceforge.net, Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
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
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:matt@codeconstruct.com.au,m:rafael@kernel.org,m:linux-kernel@vger.kernel.org,m:leitao@debian.org,m:igor@gooddata.com,m:torvalds@linux-foundation.org,m:openipmi-developer@lists.sourceforge.net,m:linux@roeck-us.net,s:lists@lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[pr-tracker-bot@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Queue-Id: 8DE5E1B1B21
X-Rspamd-Action: no action

The pull request you sent on Thu, 26 Feb 2026 12:48:12 -0600:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.0-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/c45be7c420659391530fe3508191083bc0bbfe15

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
