Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A96F321ED1
	for <lists+openipmi-developer@lfdr.de>; Mon, 22 Feb 2021 19:09:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lEFeQ-0004aL-KE; Mon, 22 Feb 2021 18:09:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lEFeO-0004Zq-Eb
 for openipmi-developer@lists.sourceforge.net; Mon, 22 Feb 2021 18:09:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ob/B2XIiNAwwgFUjON50dpjSxQziIkc4+9+tj/Bnuyc=; b=Kz7d0uRMo6vjDz1VNEp8ouEb/8
 QKTcCnILPx/dqPYxIGT82MVog/jfmW/h9dLFJoOqNA0RQRzVzoE8+puwM689lpeR52zXWUmXmJikL
 F6s+cLtAeS+dOqbgS6adhrf9M0tHMX1bTLMKZDRscLJmHC0t7/jfmZQDsQFGZfni1AR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ob/B2XIiNAwwgFUjON50dpjSxQziIkc4+9+tj/Bnuyc=; b=j
 /n/5TQH1TmAIJQ4VMhiPnp2Mx3Vt1hoJm3if5W01h7/KNVerD8mnVBrTu3js+f4ipQJGltav5jC4o
 nNXhvxtddf86B8oxCG1KPL7zvAxLExaGKa5aFY21/f6BzmS5p1icU+TGzopV9HvELIfKA3pHkc0L3
 +CKNWOKHmRz4BiFg=;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lEFeG-0000Nm-GV
 for openipmi-developer@lists.sourceforge.net; Mon, 22 Feb 2021 18:09:40 +0000
Received: by mail-oi1-f172.google.com with SMTP id 12so12111376oij.6
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 22 Feb 2021 10:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=ob/B2XIiNAwwgFUjON50dpjSxQziIkc4+9+tj/Bnuyc=;
 b=gcgblNV8LrOGKV9pLG+o44PAHWS0JDA3vEkv6KQZjSr98clvc+tA5P1faxuNy6Zeg+
 esQkeYAW6kfiCz4kKY0Da7s7jd2+X36VTVxy7s4IaAdz0U0W1eFn2xjBEQYDnye1IA3Y
 AZ6L88xZNF6yksuS6xRjiUYbUc0SrnfYM9/ANp9pvzTy00FVbnmfWISlEgJPOtYBRNPv
 8Sk2rUtSX+7/t3GKHT29UmEpXcK3KdfFF6hoywo89izE3RSBfOPcNf0hHH7+568XVAJM
 vLJY4wXjq3ui5+B/4GVfkiaPHl2SOeV0oCDR4Fdn87C/Rgl4zzXILz6mgNcF+uiq2bHi
 juzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=ob/B2XIiNAwwgFUjON50dpjSxQziIkc4+9+tj/Bnuyc=;
 b=VDLTsImqjqELKSOm2QJLvNTLRxIhJHOtAbX2v0bTpvor7Av036QTCzMdAfoM9ozc9A
 tgQM+m0shlOMj9GtvHrF/GaaqG3IjZRHFHmp8Zln/kVMK+On21SnWPG9qGk0MLeAE8wT
 vBTul91Fu1JgBXbrUyYiPRCZMo8e2K5Hn1QJo1kXALuqD4fSKNLiY/zc4kO3kjIf9jAF
 6ORCne/nEaDAIPlgqnxBUL1YVp7/NmdwHQjYSpTzGG+ZrKrt+wGV/lg/JMWDGR5okyqN
 QtmwNeSu8pDf5raDARdAU8JmB6mob2d/KMh6URrJKDspozZzSvrzYZeSQ6rkzJS9jhwT
 DjzQ==
X-Gm-Message-State: AOAM532DpqCvKWUoKsCexRPa4O0mqkXtTtGlq223KjtD/HUe5Khs8EYC
 M5uuhhniDvrb+jEzPCDMIw==
X-Google-Smtp-Source: ABdhPJwWNRuPXnz8uuTyGRa3LfTkvGJv6QumzRPDalJ8dm3+DPQLQf0gTBpi7sf+KViT3Glt6yvOag==
X-Received: by 2002:a05:6808:1445:: with SMTP id
 x5mr16256087oiv.45.1614017366828; 
 Mon, 22 Feb 2021 10:09:26 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id k21sm3902361otl.27.2021.02.22.10.09.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 10:09:26 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:34c9:977:d082:51d0])
 by serve.minyard.net (Postfix) with ESMTPSA id 7827F1801B1;
 Mon, 22 Feb 2021 18:09:25 +0000 (UTC)
Date: Mon, 22 Feb 2021 12:09:24 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20210222180924.GE3859@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.172 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lEFeG-0000Nm-GV
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.12
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The following changes since commit 76c057c84d286140c6c416c3b4ba832cd1d8984e:

  Merge branch 'parisc-5.11-2' of git://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux (2021-01-27 11:06:15 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.12-1

for you to fetch changes up to fc26067c7417e7fafed7bcc97bda155d91988734:

  ipmi: remove open coded version of SMBus block write (2021-01-28 07:15:12 -0600)

----------------------------------------------------------------
Pull request for IPMI for 5.12

Only one change in this pull, but it's required for other things, so it
needs to go in.

-corey

----------------------------------------------------------------
Wolfram Sang (1):
      ipmi: remove open coded version of SMBus block write

 drivers/char/ipmi/ipmb_dev_int.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
