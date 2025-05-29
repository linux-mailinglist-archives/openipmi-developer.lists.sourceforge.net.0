Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3ADAC8354
	for <lists+openipmi-developer@lfdr.de>; Thu, 29 May 2025 22:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:To:From:Date:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RxQu8wQn+c/ECpIRls/ZcJHIm75+CIBvmGpSKVT8cgc=; b=LIt0YZL71ICU2JumnFqOCjsjX2
	he7WzIpS/E1hxVAaTrFTmmlY1HHwzhIooiJyJ4Ni06GZ+HxtQo45ABh57XpSxwDg7dumfWzWOemk/
	AynvCghJw0P9Us9jJgb2lsXScq0J9SDnXWS+8IiMCW/m6q4A69gUFT1ToY6nlGQZosD8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uKk8x-00031H-QP;
	Thu, 29 May 2025 20:46:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uKk8w-000318-5t
 for openipmi-developer@lists.sourceforge.net;
 Thu, 29 May 2025 20:46:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2MyQUKE89py6Mp8f+N7LZkPxPE8Udm70Tofr4wuLXJ4=; b=cdTNbmG7ORuRHNT2MUuAUqiC41
 VvMNkM2XxdFbjp1stoq8P554ZRaRAAAoYosegwWwL7mvLUumadMHs52SMrCDiw1kpsVlYrmdhCOCW
 3V+KrR5xrAzIzN4h2sGTGLS0UXQ4tbLc1QiWXKJNSLw2nDvs6j42hwC5/gw91WQFTias=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2MyQUKE89py6Mp8f+N7LZkPxPE8Udm70Tofr4wuLXJ4=; b=X
 +a25YSYzgukd3tmNiP4lXAJK3MYboF7kyiqXRzZWcVI9QqJTwGggjggL68zs9TyLdWUHItQeyfg/O
 iQ4U5XmlPpwia/DLAtyzekqACmZofz2LC5GBKhexAcnDU1E2C/a8HtoqNHzKL/uB6J/lWCP1ldAgg
 34iJOQfBG7n4BmQI=;
Received: from mail-vs1-f48.google.com ([209.85.217.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uKk8v-0007rD-A2 for openipmi-developer@lists.sourceforge.net;
 Thu, 29 May 2025 20:46:26 +0000
Received: by mail-vs1-f48.google.com with SMTP id
 ada2fe7eead31-4e45dae6c8cso855844137.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 29 May 2025 13:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1748551574; x=1749156374;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2MyQUKE89py6Mp8f+N7LZkPxPE8Udm70Tofr4wuLXJ4=;
 b=E4rYcd4MvZ8ihT56uSc3fG0oTSga5qoegw4do5zo2i6iVvaYZiy0wFemQpWqWPP8AX
 aiEzVX89jHExbow/b4TxLwHwPrdDhPW1zlx2WSE0CMZkEacOojFdo6xUU15Fn3/iZ6ON
 UVo4Dw9zZ/Qssgc79/uEbjEdYUQ7PDec2b8Wwt8wdmFS5RfmOVSI2YYn9y8R6NBgQXuH
 YBnnOeSSGfkbTxkPd/4p1XxRZtLAG3XXwOv44Fj6HVMs4yZFZMLMDzGOI6vq3Qs1r9C1
 B1CfszYTZnR2d3gAhMva76e0XchMSk2LKr7UTUFNenQL8YVtMPLb6FVKgrvr/3U/y47p
 5Hxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748551574; x=1749156374;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2MyQUKE89py6Mp8f+N7LZkPxPE8Udm70Tofr4wuLXJ4=;
 b=AH1gp0/igeN35xjugWy0HGikPXG538v0px9mkMG8Q3UZD2ihuJg28G7gai/K2lWg8o
 CsH7IPXW11D6Mq8hfTrjmMQtuwXtghLm4AA9Ela5cGgq/1p+iX7cJIJ5Nrdms52ntz6d
 t2r5/aeuvvJnAq3D1SdHuImuH9MI12C7Z7exlrERcYmT8uEd8QbkYrMY5oVUJZpylJF1
 volBzzKVqpaKid7OoR3QW8P4a2P+f+sz44cmuJplpqj/MJCJlTsv43gZK761U9J1dT8L
 IeDY4lW5lMfvkF58R5Zy9VVVKt9btunRVlOr72nUjMr1oCzkp8owcNsEflrfqNjjzgqL
 94iQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWWqcsPyCuBjk5nLFaOvoM3lLFhWR2TmeeiA7+Z1KnJXljggIJmRoQd/88fFW4M55w5gFPHMtcyPOdGmUXuZ95og4s=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxN/xsijTYS3PX0QGYpel5Bsn2ELXmrepRNd0SXqQBxtDflBR+v
 9kWapMEW75VKoWNLgL5iHVvVWkrQ/0h0tLKhJRzgk8T4ycNVWV5Pj4ckOuEmi+kpVTlAJ85apIM
 1iAfwqh8=
X-Gm-Gg: ASbGncv17CAdGkDHPEcmfRuOjxHsbh9UaB/++bO+oxp3YLiQ78kpBaxVjiNY3d2wJoi
 X+ye6mVLwrb+0fKO5jLdkASRh5AdxSRo6za+ImAo9Cz0k295ZzNslD51IxO9Tidgzwx61SmxOpO
 FG3iIMqCrstryll7Tv2Eri2TTkuwyz6QL2iHGUnA8pPLxw3E1gA3zHBiUxmaKtApgvcOBpX61f7
 RIUcosVpEFv0OGA6ReuH5BmgV+kXDRTFqlHHUsuIb89KKgHvX6ric3YkGHvXsPJ8YsQ+yIgSHwa
 MsBgrort+yKegS1smoL4KnuogufoKzDslytr0tdKBlV+lgDmnlX9z20=
X-Google-Smtp-Source: AGHT+IGdrHQgYFU6u8YFI+tCMcMY9JvTL9ZtCL7yPAo5DU9bpNWdWksVMTzfwdYT482ibWhJ69ZuKg==
X-Received: by 2002:a05:6820:997:b0:606:26bd:7208 with SMTP id
 006d021491bc7-60c4d79f8b8mr669492eaf.7.1748547577840; 
 Thu, 29 May 2025 12:39:37 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f647:17e9:f6c0:dc98])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-60c1ebb00f9sm109144eaf.40.2025.05.29.12.39.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 May 2025 12:39:37 -0700 (PDT)
Date: Thu, 29 May 2025 14:39:33 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <aDi39ViU_FMFsgsb@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 4f79eaa2ceac86a0e0f304b0bab556cca5bf4f30:
 kbuild: Properly disable -Wunterminated-string-initialization for clang
 (2025-04-30
 18:57:56 -0700) are available in the Git repository at: 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.217.48 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.217.48 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.48 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.48 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uKk8v-0007rD-A2
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.16
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The following changes since commit 4f79eaa2ceac86a0e0f304b0bab556cca5bf4f30:

  kbuild: Properly disable -Wunterminated-string-initialization for clang (2025-04-30 18:57:56 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.16-1

for you to fetch changes up to 08effa6b77f7dbb4727f811daef0f6085c0d63c8:

  docs: ipmi: fix spelling and grammar mistakes (2025-05-15 20:43:14 -0500)

----------------------------------------------------------------
Restructure the IPMI driver for 6.16

This is a restructure of the IPMI driver, mostly to remove SRCU.  The
locking had issues, and they were not going to be straightforward to
fix.  Plus it used tons of memory and was generally a pain.

Most of this moves handling of messages out of bh and interrupt context
and runs it in thread context.  Then getting rid of SRCU is easy.

This also has a minor cleanup to remove a warning on newer GCCs and to
fix some documentation.

----------------------------------------------------------------
Corey Minyard (24):
      ipmi:si: Move SI type information into an info structure
      ipmi:msghandler: Use READ_ONCE on run_to_completion
      ipmi:msghandler: Rename recv_work to smi_work
      ipmi:msghandler: Move timer handling into a work queue
      ipmi:msghandler: Deliver user messages in a work queue
      ipmi_msghandler: Change the events lock to a mutex
      ipmi:msghandler: Use the system_wq, not system_bh_wq
      ipmi:msghandler: Remove srcu from the ipmi user structure
      ipmi:msghandler: Remove srcu for the ipmi_interfaces list
      ipmi:watchdog: Change lock to mutex
      ipmi: Add a note about the pretimeout callback
      ipmi:msghandler: Remove some user level processing in panic mode
      ipmi:msghandler: Fix locking around users and interfaces
      ipmi:msghandler: Don't acquire a user refcount for queued messages
      ipmi:msghandler: Don't check for shutdown when returning responses
      ipmi:msghandler: Remove proc_fs.h
      ipmi:msghandler: Shut down lower layer first at unregister
      ipmi:msghandler: Add a error return from unhandle LAN cmds
      ipmi:si: Rework startup of IPMI devices
      ipmi:msghandler: Don't deliver messages to deleted users
      ipmi:ssif: Fix a shutdown race
      Documentation:ipmi: Remove comments about interrupt level
      ipmi:msghandler: Export and fix panic messaging capability
      ipmi:watchdog: Use the new interface for panic messages

Dan Carpenter (1):
      ipmi:msghandler: Fix potential memory corruption in ipmi_create_user()

Praveen Balakrishnan (1):
      docs: ipmi: fix spelling and grammar mistakes

 Documentation/driver-api/ipmi.rst    |  29 +-
 drivers/char/ipmi/ipmi_msghandler.c  | 761 ++++++++++++++++++-----------------
 drivers/char/ipmi/ipmi_si.h          |  10 +-
 drivers/char/ipmi/ipmi_si_intf.c     | 116 ++++--
 drivers/char/ipmi/ipmi_si_parisc.c   |   2 +-
 drivers/char/ipmi/ipmi_si_pci.c      |  52 +--
 drivers/char/ipmi/ipmi_si_platform.c |  27 +-
 drivers/char/ipmi/ipmi_ssif.c        |   6 +-
 drivers/char/ipmi/ipmi_watchdog.c    |  92 ++---
 include/linux/ipmi.h                 |  13 +-
 10 files changed, 584 insertions(+), 524 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
