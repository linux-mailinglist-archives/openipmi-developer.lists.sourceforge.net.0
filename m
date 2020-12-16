Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECACA2DC22B
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Dec 2020 15:31:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kpXpj-0007zK-Jt; Wed, 16 Dec 2020 14:31:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kpXos-0007sU-QT
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Dec 2020 14:30:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qvfIzg0tm1m+AFhSUpAZevgD7eFyHsFFNkS9ttpBzhw=; b=HIjduaF44bX2YQUFWUYy/bvUSs
 KFR2nWlqBX428c7hbqn578wNhGZRzLtJ2UFP6BBjMx3ZIt0zoI3HFFcsC9FyhwpdHnsou/oEOW11I
 3RA80Dr/BYPumS3Jkz0HazUZdg1llP5LywZbAPgIkjVqCw+/t9cPT8jjRweTyZkEW8z4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qvfIzg0tm1m+AFhSUpAZevgD7eFyHsFFNkS9ttpBzhw=; b=G
 bfqAW2Rd5XmIWDqEAcO+qmpEhQKkEJdlcOLFdsXnNZjQnQtnKRiOFI9yUW12f9gETgA0ay1wPesFl
 1sjK3sendfowjg/d51JgjeiX0Ubo0TdRXP2kONp95cQ2OFG5oXOQKqLSIhfY+iycn4IL2LuPFe8D+
 gxMWJ6j1L6Q/cTd0=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kpXoe-00GTC1-J3
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Dec 2020 14:30:22 +0000
Received: by mail-oi1-f182.google.com with SMTP id w124so24540175oia.6
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Dec 2020 06:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=qvfIzg0tm1m+AFhSUpAZevgD7eFyHsFFNkS9ttpBzhw=;
 b=nxFTfemYmcqfVVLjl2TgjmdpttZMv16V1QEhRs+u7AMK4z2VGIsmNstm6C+OI9rmgE
 XKfJqt+QS0E0EdkDaNoDLKTSNj/2H6VXH+TOZxaMFcNewd5yFSr5U3yCpRwBKh+Ba9xo
 ao8lPl2JzYhl7RbHXQjMQn+UsIR3UTTTB3DziR8IxhksgJOQfPf/u+yTtGN71Eszks+1
 mmdmR2uyzpYtL4AjPQ6Lrbyq+xkRqQM9gSPwDV7PnA7nS2DprYlBeYRcyLKaeh+EEtyW
 fqY45+94MAuNoVh8D2UGuUqQxK+VZqN17pY1QUdIlzxG4MqNfstpLiPPY/d4jZTHlybt
 x3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=qvfIzg0tm1m+AFhSUpAZevgD7eFyHsFFNkS9ttpBzhw=;
 b=mEGICOdXRyzx2YB+vVJxmsCSPRIjGpgAwmH6sAnvevoxrVYpA+SzoX6g8AhLGnXno/
 dh/y8Van2j9a6lePq07CIoViVvM17NQABBxBTAl3Kc7/fRnHQcyDTQcbOa1yQ93/reL1
 IL63gqz3pcEaAH3ieMVujsVv0MdjG1lsyY0a2kcKg3wcGz1YpS294essBZOjMwVIo960
 r0L8rg/hXxaLxSGZU7UtmqoAJkEGgnYtRNOBLqkRCCdKSJDUZjfF55cksfoawhiT+mEX
 qZ7kacz64+h43mNFfsMBNaKZbtR0MtGV1kkLlKuQg92VLfU3vGBg5m1LobKENFClZ6JH
 /hqw==
X-Gm-Message-State: AOAM532uWMYT9RzT+S0kjqMSo32d+htg7Qi53X/WqgHnzARnBxp/Ekol
 rD1eDvE1BgkT2tElv48DIRnL2pGMPyy9
X-Google-Smtp-Source: ABdhPJzn9nDryX5P9U3DaMm5P9SBGvs2OVal3OfZCQdQ/sba4N0BfVYIHO20zGj/wpq4W9ZRPdR1oA==
X-Received: by 2002:a05:6808:a1a:: with SMTP id
 n26mr2160993oij.94.1608129002941; 
 Wed, 16 Dec 2020 06:30:02 -0800 (PST)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id b82sm421325oif.49.2020.12.16.06.30.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Dec 2020 06:30:01 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e0f1:f928:86e0:426e])
 by serve.minyard.net (Postfix) with ESMTPSA id C2E57181D94;
 Wed, 16 Dec 2020 14:30:00 +0000 (UTC)
Date: Wed, 16 Dec 2020 08:29:59 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20201216142959.GT11017@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.182 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kpXoe-00GTC1-J3
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.11
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

Some very minor fixes.  One came it today, but it was just changing
some commas to semicolons.  The rest have been lying around a month or
more.

The following changes since commit 9ff9b0d392ea08090cd1780fb196f36dbb586529:

  Merge tag 'net-next-5.10' of git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next (2020-10-15 18:42:13 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.11-1

for you to fetch changes up to fad0319cacdf02a8d4d31aa1d8dc18c5bd5e397e:

  char: ipmi: convert comma to semicolon (2020-12-16 07:54:54 -0600)

----------------------------------------------------------------
Some very minor changes

Nothing functional, just little syntax cleanups and a RCU warning
suppression.

----------------------------------------------------------------
Qinglang Miao (1):
      ipmi: msghandler: Suppress suspicious RCU usage warning

Tom Rix (1):
      char: ipmi: remove unneeded break

Yejune Deng (1):
      ipmi/watchdog: replace atomic_add() and atomic_sub()

Zheng Yongjun (1):
      char: ipmi: convert comma to semicolon

 drivers/char/ipmi/bt-bmc.c          | 6 +++---
 drivers/char/ipmi/ipmi_devintf.c    | 1 -
 drivers/char/ipmi/ipmi_msghandler.c | 3 ++-
 drivers/char/ipmi/ipmi_watchdog.c   | 8 ++++----
 4 files changed, 9 insertions(+), 9 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
