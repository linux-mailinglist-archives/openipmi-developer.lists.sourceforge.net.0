Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GcpSGEZcPWpb1wgAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Jun 2026 18:50:14 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9AB6C78EB
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Jun 2026 18:50:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=MlQG7khu;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=iNVDdLJ0;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=Zae43Nkc;
	dkim=fail ("body hash did not verify") header.d=kernel.org header.s=k20260515 header.b=mZj4Z7iP;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=pass (policy=none) header.from=lists.sourceforge.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJN7E1Gw9MOFp7hszwmgjadLacsyJFI5LRGoFBdagw8=; b=MlQG7khuDLjbWXc1fwgRa58ybl
	6k5ZRS/o+dTq9JzVslwnxkds9IbX3Rlr6r33u7vDcYIDGK6Fy9JHJ7OcA+iHF+ns7VQugOjA6bk+A
	iDyxCUt9eTqF0HEeICPp75xbd8fBJ+8ryObyJdySpjrQWxL3OzNAUQfws+unPPdrlick=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcnHD-0003Or-IA;
	Thu, 25 Jun 2026 16:50:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1wcnHC-0003Ol-7a
 for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Jun 2026 16:50:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=agT5FdLtMwsUmxWXqsDmwyBnyqJ+SysFAeFjvUTUcfI=; b=iNVDdLJ0Cvf+w0Q2yE3iUfUNi7
 n4Mj+2B+hIdcPCfDIS8LlhoWuGKX9+Go+DendHrbPRpoU1dDElXIXadLg8ZvVryVdTsJv6JTp7G4W
 E3IBUwLhigrVYSzrtpY3QpYvIWCmxcMsbLX2JNyP3gcCgaNl0ex7mn0J5HMs7VCAbeJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=agT5FdLtMwsUmxWXqsDmwyBnyqJ+SysFAeFjvUTUcfI=; b=Zae43NkcO7OLVqXOp0DJXrlpqX
 egkYKaEB2dy8u5dPe/+rcox4krT1YmHhk+7gXww//BuXdeMPlMUeHE0vuW/AebslZI+3T2o950ULQ
 0m4qnP30z5BZurIr1/xfjqyLqJuQxJBg1vk0Dt7JN8FJd2rNBwH+zz/9lQlQQmfVTf2c=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wcnH7-0004Dr-QD for openipmi-developer@lists.sourceforge.net;
 Thu, 25 Jun 2026 16:50:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id CCE3541837;
 Thu, 25 Jun 2026 16:49:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B00451F000E9;
 Thu, 25 Jun 2026 16:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782406191;
 bh=agT5FdLtMwsUmxWXqsDmwyBnyqJ+SysFAeFjvUTUcfI=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc;
 b=mZj4Z7iPTFqT2wcQjn/WX7u1efj1Z74tuVHQvz7b9BGuLYzDqA/S0GbnCLLGrmm+/
 kv0gvhNXC25HVOaXq/eWln8ujvvunnLMXmQ30SyQZ1Iq4hd/YRI0fzqfUW78nc4bjJ
 gi71GgGKLs50Heg5ZtjqK0NDTbHR+XnTOoV0/VKgJGYFUA6wTZBrDn5rvEMngJNXhw
 WC83TAhf6ew+AzVmVjLO2cLKeIQk5lZgnjUnNeZ5nTqVtQ4gUhPQ34DpJVl6U2xs3Q
 PS+qWqFL7iRJwMuQUH744q8mt0FscZFO1JbCW4qPzMbnAvfNzC7k4N56YI3QbTzSIl
 Sy7m/9/Gb1KuQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 939923938789; Thu, 25 Jun 2026 16:49:40 +0000 (UTC)
In-Reply-To: <ajwqLBsdgeK3t9KB@mail.minyard.net>
References: <ajwqLBsdgeK3t9KB@mail.minyard.net>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ajwqLBsdgeK3t9KB@mail.minyard.net>
X-PR-Tracked-Remote: https://github.com/cminyard/linux-ipmi.git
 tags/for-linus-7.2-1
X-PR-Tracked-Commit-Id: de9aa5ea2d9ea55234e78af1e6182979aa4f646a
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 504c8065288befdc8a89e98858ac563deae9d7ba
Message-Id: <178240617923.3815539.5377969725476897559.pr-tracker-bot@kernel.org>
Date: Thu, 25 Jun 2026 16:49:39 +0000
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 24 Jun 2026 14:04:12 -0500:
 > https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.2-1 has been
 merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/504c8065288befdc8a89e98858ac563deae9d7ba
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1wcnH7-0004Dr-QD
Subject: Re: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 7.2
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
X-Rspamd-Action: no action
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:torvalds@linux-foundation.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20260515];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_mime,lists.sourceforge.net:dkim,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC9AB6C78EB

The pull request you sent on Wed, 24 Jun 2026 14:04:12 -0500:

> https://github.com/cminyard/linux-ipmi.git tags/for-linus-7.2-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/504c8065288befdc8a89e98858ac563deae9d7ba

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
