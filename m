Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DDD17DF0
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 May 2019 18:17:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hOPGJ-00016H-SJ; Wed, 08 May 2019 16:17:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hOPGI-000163-QY
 for openipmi-developer@lists.sourceforge.net; Wed, 08 May 2019 16:17:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mEyEsLGtPKEz1Gmqe5gE55GzDPtET2Lqxlpu7didhoM=; b=UhqoJRYbX/uK8lqrqY6co+aFq4
 kdFfZq20z7kfkEaXsC53OL+h+851gAJqBAs9N6LSH1ORI7aOsmml6cIILXPV9pq2Dr1aZNIHRAdDt
 h6b61BFgwkao9HVN5l16B7oRmeZO8mwgIENVO1RwU8dPp3YDExPSZPETmVofMvUwc4hg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mEyEsLGtPKEz1Gmqe5gE55GzDPtET2Lqxlpu7didhoM=; b=X
 CPsBCbB47/KhA1vPLqeSW1JFXBHT9aCHGAptP1S7e2YO+YuN6O4zqgOXc3/AOLVKjoYULfBBwhntw
 IMnicwhmjN0GL60f5GnKaB7q7jzFqyZDRPpL9zsHFk/ddmvwuAv7m67NRqw7VQ+PFcJB4YXtKktCT
 Qw9t4CUYFLaztGtc=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hOPGG-00DJkF-N4
 for openipmi-developer@lists.sourceforge.net; Wed, 08 May 2019 16:17:42 +0000
Received: by mail-oi1-f194.google.com with SMTP id u3so9783394oic.12
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 08 May 2019 09:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=mEyEsLGtPKEz1Gmqe5gE55GzDPtET2Lqxlpu7didhoM=;
 b=PCkEi6A59MmQ6Yk/B4a0gbXmTZ7VfUnX/9TNvK6hT1hAAhQWNxd/BDbAPNHNIp+HGC
 8QUamDkihg9vWD3W8UGzPUaqa24+qrIAQ0F6JYPv5/xuTOJI3lp/1VnpnU3inIZrdW/G
 J/zCabBJiRCh9rY4B3j6XV/K8ZMHpVkvZsDtDX7NvjpkOnQLVMm2ni0bRGPViMsq5UHb
 Dg9miYz7SYTYqGcK3rYY21+iiBYIztIk94sPRDc5Ulh+neyLm00K+UzDK7DmdIEDDyUQ
 Nq10u6h29kCAoEnHRnbtVe7eFJLTZWqNpYuMDxieIjy416B8TmqKF/oyY8ybVhssRFdT
 rSGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=mEyEsLGtPKEz1Gmqe5gE55GzDPtET2Lqxlpu7didhoM=;
 b=b1BDKv88GRNY8jLuohAqwozbh4LoHJ/PwMAT/7tr22ll8h/FBPhJ/xv3d2PO/nNIPC
 rSe19z380/L1+DyhGLNUyyRacRahCcp+vVxl5yrNYbxVAz1dRjbUhohlZe5pez6U626g
 oi4TUhuzYVEXMghy3W7PJTXXxGnifauIGvt1fDb4KMb7wnLxCaz2IsJh8qn+nBiUoabg
 Z4llNd5bUuH4mTxmFQoN5YA0eZ/3HfL7082thtym4tvhualVjUKGxkrhLeKCNWDSe8/2
 s2wwQzcO8PUXeWHZ2YV5UiefLDkqMJzmnJwHU1hKBXtwAMdIHYUi8WNdryGt2lF/oqn6
 8DOQ==
X-Gm-Message-State: APjAAAWuMykgyrG22YZcfEnSDGFQkphcIVVj5x/x+h7JT2aZOeoT9Q7u
 9z0GRR7vvI0TCvGJ49LcJ0C5G6AbLQ==
X-Google-Smtp-Source: APXvYqyTv39lIPGEh5IZ/Rq9WdRnwPNUebFVW34ZD+qvUNVoeejlvTdgZ/iAgMODS0GgNEPbWdXjlg==
X-Received: by 2002:aca:d509:: with SMTP id m9mr2642793oig.153.1557332254606; 
 Wed, 08 May 2019 09:17:34 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id t14sm2294386otk.55.2019.05.08.09.17.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 09:17:33 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:d5e:aa5a:44d8:6907])
 by serve.minyard.net (Postfix) with ESMTPSA id 5B83C18190F;
 Wed,  8 May 2019 16:17:33 +0000 (UTC)
Date: Wed, 8 May 2019 11:17:32 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190508161732.GG16145@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hOPGG-00DJkF-N4
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.2
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

The following changes since commit fe5cdef29e41c8bda8cd1a11545e7c6bfe25570e:

  Merge tag 'for-linus-5.1-2' of git://github.com/cminyard/linux-ipmi (2019-04-17 10:25:25 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.2

for you to fetch changes up to ed6c3a6d8996659e3bbf4214ba26b5e5a7440b26:

  ipmi: Remove warning if no slave address is present (2019-04-24 12:29:24 -0500)

----------------------------------------------------------------
Some minor cleanups for the IPMI driver.

----------------------------------------------------------------
Arnd Bergmann (1):
      ipmi: avoid atomic_inc in exit function

Colin Ian King (1):
      char/ipmi: fix spelling mistake "receieved_messages" -> "received_messages"

Corey Minyard (4):
      ipmi: Remove file from ipmi_file_private
      ipmi: Add the i2c-addr property for SSIF interfaces
      ipmi:ssif: Only unregister the platform driver if it was registered
      ipmi: Remove warning if no slave address is present

Dan Carpenter (1):
      ipmi_si: remove an unused variable in try_smi_init()

Kamlakant Patel (1):
      ipmi:ssif: compare block number correctly for multi-part return messages

YueHaibing (1):
      ipmi: Make ipmi_interfaces_srcu variable static

 .../ABI/testing/sysfs-devices-platform-ipmi        |  2 +-
 drivers/char/ipmi/ipmi_devintf.c                   |  3 ---
 drivers/char/ipmi/ipmi_dmi.c                       |  2 ++
 drivers/char/ipmi/ipmi_msghandler.c                |  4 ++--
 drivers/char/ipmi/ipmi_plat_data.c                 | 27 ++++++++++++----------
 drivers/char/ipmi/ipmi_plat_data.h                 |  3 +++
 drivers/char/ipmi/ipmi_si_hardcode.c               |  1 +
 drivers/char/ipmi/ipmi_si_hotmod.c                 |  1 +
 drivers/char/ipmi/ipmi_si_intf.c                   |  2 --
 drivers/char/ipmi/ipmi_si_platform.c               |  6 ++---
 drivers/char/ipmi/ipmi_ssif.c                      | 11 ++++++---
 11 files changed, 35 insertions(+), 27 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
