Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E251182706
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Mar 2020 03:22:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jCDUP-0003Iu-3g; Thu, 12 Mar 2020 02:22:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jCDUJ-0003ID-73
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Mar 2020 02:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QDfEy2KOrmUWhesuf+lQpYADP8RXEp5zI9wZ50uQ7Yk=; b=NZTMfAWjM+TSdzwAfu0juAjVe8
 8UhRaRvvPPRJE9X802EUQmgeSDregeMrF/IUha/BWgHCWH+86nGMzjRjV0Pv5ySPXKVcBnDKHxcMC
 BJyAa6J4nH8O3SvH/8+CDkIeVa2fNETBJLyZOzw9tOODUjAqvjz8F/Tn3ZrmdYBSl3f8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QDfEy2KOrmUWhesuf+lQpYADP8RXEp5zI9wZ50uQ7Yk=; b=h
 Psn6BIyNX5cHz+OKFQzparRrQVGspGyNXlPNetgYVO44L93uKiepUuujQ673tKArZ2NlR9jDd4Dyt
 LEMemMFzhyXO0JX62I/2UL1MKJV0ynHYH6V8QEuXLKiXZ5NYor/GRZGNklVsQzcPnNFaAAsjYUjxE
 TmlXujxbAlBn/D3I=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jCDUH-00G9Oi-G8
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Mar 2020 02:22:19 +0000
Received: by mail-oi1-f193.google.com with SMTP id k8so2558481oik.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 11 Mar 2020 19:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=QDfEy2KOrmUWhesuf+lQpYADP8RXEp5zI9wZ50uQ7Yk=;
 b=vTmw5SUc8ejOLwyQuz78a+gHP0+hcPEIGgwM//iGnKqtg49IfDJCEjiTN3B3Tfby6j
 iLRVzS8T6NU9WAqWzRUUVz3pXio78rDw/Alb4Hzio/Zo4c5sbBnPUhIhg4l0qxgRVTKo
 MCnJr1BLr4nngGfCadm9Wst9/8SpBoCXt20mYV+6wXOG1fx8drdEBLO0rA+QGN80na9q
 1IbBHHk5DWUv/Us2Szy5EIrmckUhZBHLhs2oR927EfsvEWCCcZIToXwXCNhsmR4WyPEH
 JJdt/q7UEDvEqelPsl12rtHA8F3KL39CLYdyG3P0vXmris8hLe/mQjfGeGQ7rrUdu3wS
 kKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=QDfEy2KOrmUWhesuf+lQpYADP8RXEp5zI9wZ50uQ7Yk=;
 b=mgW8MWTliJWs92ExpNI3s/LgrvXjFoLEFzd2E8KXF+A+jVLR8HkAUC2K7LBooaNKv3
 g1RlySif/fsWAj2G/Q5ZwFWZgBQQG75Xol92TBqLi7YOCVHjFXwwQicU+4Rw1Gq0dSlq
 oB19FvWYFhicQGWpVv4eDMW2lsw4BjzggdR34Uejyf7XNWYN0AugZ6c3FyMIDfogIA99
 5L/iizzG7M2fNWL9Sj/nlybgrrlIO0maxlSS+FJxikMpQHDoEOa7Nzs7LSZzXLdQNPNL
 T5ZMCr2/VegFWsvuE9uKZaXwacMAA6kxWgvbxomt0FI1QmbZ2ZJzGDy3jL0v7xNeUePf
 gGIw==
X-Gm-Message-State: ANhLgQ24LzaR9eezhG+HaqT/pFvmn7+BMhQPMidyRn8oF1KXmKm7O6em
 zNxYWbxvym6bV1rDBRfuPA==
X-Google-Smtp-Source: ADFU+vtlgwvaCigi7XW+CZdEW7bqs/N8beI0ckfUhBWeMJOvjzcm1suhobv5PWyjIj6wEt3i0lUlkQ==
X-Received: by 2002:a54:4099:: with SMTP id i25mr1106085oii.129.1583979731384; 
 Wed, 11 Mar 2020 19:22:11 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id b16sm878469oov.1.2020.03.11.19.22.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 19:22:10 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:7426:b01e:9a0e:899a])
 by serve.minyard.net (Postfix) with ESMTPSA id 9C72C18000D;
 Thu, 12 Mar 2020 02:22:09 +0000 (UTC)
Date: Wed, 11 Mar 2020 21:22:08 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200312022208.GH2822@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jCDUH-00G9Oi-G8
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixe for 5.6
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
Cc: Takashi Iwai <tiwai@suse.de>, John Donnelly <john.p.donnelly@oracle.com>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The following changes since commit ca7e1fd1026c5af6a533b4b5447e1d2f153e28f2:

  Merge tag 'linux-kselftest-5.6-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kselftest (2020-02-19 17:22:10 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.6-2

for you to fetch changes up to 443d372d6a96cd94ad119e5c14bb4d63a536a7f6:

  ipmi_si: Avoid spurious errors for optional IRQs (2020-03-11 21:15:19 -0500)

----------------------------------------------------------------
Fix a message spew on some system

The call to platform_get_irq() was changed to print a log if the
interrupt was not available, and that was causing bogus messages to spew
out for the IPMI driver.  People have requested that this get in to 5.6
so I'm sending it along.

----------------------------------------------------------------
Takashi Iwai (1):
      ipmi_si: Avoid spurious errors for optional IRQs

 drivers/char/ipmi/ipmi_si_platform.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
