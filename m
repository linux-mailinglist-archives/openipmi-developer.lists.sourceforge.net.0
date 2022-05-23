Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 994FF530E95
	for <lists+openipmi-developer@lfdr.de>; Mon, 23 May 2022 13:44:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nt6UW-00086l-IB; Mon, 23 May 2022 11:44:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nt6UU-00086e-8O
 for openipmi-developer@lists.sourceforge.net; Mon, 23 May 2022 11:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3aVJI5c5O7jSRmeZkmnQH6lIAVqqKmbO2pfiDyl8EZU=; b=hZ7jj0vHX5IDNuA60ZsaooBWmy
 jYDicUgvZme1j3JxizEJ5GloEXiSCVTwt8Jhs42uya//uFub1zoS8YzzWpHYHHEjCA0imf1pfhasw
 dRONZo1Wc7pN0kBfGQb5H27dIsI+iVr/WUvkl4Y1QQZtySlZEdWpa+BgEW/bm3qQdrzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3aVJI5c5O7jSRmeZkmnQH6lIAVqqKmbO2pfiDyl8EZU=; b=E
 f2jBgjDuUst7Ekw99YEViCPRb5MPzrBHxvLZRg8yhCEoWF9N9UeziV3eNJEhQsE6icHp5aTp+EO/d
 XNTaPnRhowiWZQpsKiwQ1NZxChU+rAcmdsSJwl5e3UxWPscOb/JBVNpXLqjvxeCTeuBr79kJdmPJE
 9aIBFDW24BVD2044=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nt6UO-0007CU-8g
 for openipmi-developer@lists.sourceforge.net; Mon, 23 May 2022 11:44:49 +0000
Received: by mail-qt1-f171.google.com with SMTP id b9so6093463qtx.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 23 May 2022 04:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=3aVJI5c5O7jSRmeZkmnQH6lIAVqqKmbO2pfiDyl8EZU=;
 b=dhT1tTlWhGNbttlcLl4Y5fWajhOaXFyuZ2HHTqdyC4e4dN7K9VvWEl/jvuVKMbMEqr
 hEqft0M9ImFSgiBn3uta3LM1IM7bY2hjUdpiX2Snqe1/fhgFbD/2kDpqmro2DliDsqNA
 x942o9YqnV49E+C75zV2q81nwNAZIr1LQSTQRv0MDMM3S6r9H7EMHeoGghBbFR7whlYO
 Vk9cdN4HNe9CmDMls2sZ/58f4weVHGYCj4s1nwKpscyTMv820QQ0CCQD3pyBhGdu6ZYt
 R27WuJGXPw+5Pe+2DixQdTWPXtjuPLKtgES/BpXqsZ2/ogEB6n45l0i+3D5hoPbQL6Ps
 CU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=3aVJI5c5O7jSRmeZkmnQH6lIAVqqKmbO2pfiDyl8EZU=;
 b=Rlua7p/+qvdfg5z6tSmU85C1XqjZZJAkPPIBPJ1ZNtprCspNp8W7Fi0gmRdz93mX0p
 J5gOgSwogccfka3ER4KkyLky+BwRztqJCK5ch+B64/RJJuClDXhQWU9b80R8D49dg8VB
 tS/bf8xXWsspqarJqBLNgpdjDkrNHvrpegHpEA+eeoxbb2bZ/8v3kKOX7STjnOjGFe7u
 DCdzHW64OimPA8lqxborgFMYKXIFjPCduQWEJ0ro16cHpE2cnLo2zzKtbLX25MCaB5hp
 csz/7f4yQwKV9L5xotkOFLXUe81RimJggXgXPmCMpBfbNiFHhn7fZuyAw8lfHOEpb3j5
 MQCA==
X-Gm-Message-State: AOAM530VVMSkjQl6VAfUGt/CVPu3Ydk7kgb6GxEaBFFsy3GoXd3okxTc
 VTjJP0gvob7mkVRBfOe809K/JnAPcg==
X-Google-Smtp-Source: ABdhPJwjG10A9KRoD/7HLjsZameMg7bZMBi1dJt3007qZj1gnTAlUB442LXftvJM1onztMZ0uIMPiQ==
X-Received: by 2002:ac8:7fc4:0:b0:2f3:f174:e8c4 with SMTP id
 b4-20020ac87fc4000000b002f3f174e8c4mr16010968qtk.572.1653306278379; 
 Mon, 23 May 2022 04:44:38 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 131-20020a370989000000b0069fe1fc72e7sm4350941qkj.90.2022.05.23.04.44.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 04:44:37 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:75dd:56d5:b937:8615])
 by serve.minyard.net (Postfix) with ESMTPSA id A757F18000C;
 Mon, 23 May 2022 11:44:36 +0000 (UTC)
Date: Mon, 23 May 2022 06:44:35 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20220523114435.GH3767252@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 a7391ad3572431a354c927cf8896e86e50d7d0bf:
 Merge tag 'iomm-fixes-v5.18-rc5' of
 git://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu
 (2022-05-04 11:04:52 -0700) are available in the Git repository at: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nt6UO-0007CU-8g
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 4.19
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

The following changes since commit a7391ad3572431a354c927cf8896e86e50d7d0bf:

  Merge tag 'iomm-fixes-v5.18-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu (2022-05-04 11:04:52 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-4.19-1

for you to fetch changes up to a508e33956b538e034ed5df619a73ec7c15bda72:

  ipmi:ipmb: Fix refcount leak in ipmi_ipmb_probe (2022-05-12 10:00:04 -0500)

----------------------------------------------------------------
Fixes for IPMI

Add limits on the number of users and messages, plus sysfs interfaces
to control those limits.

Other than that, little cleanups, use dev_xxx() insted of pr_xxx(),
create initializers for structures, fix a refcount leak, etc.

----------------------------------------------------------------
Corey Minyard (11):
      ipmi: Add a limit on the number of users that may use IPMI
      ipmi: Limit the number of message a user may have outstanding
      ipmi: Add a sysfs interface to view the number of users
      ipmi: Add a sysfs count of total outstanding messages for an interface
      ipmi:ssif: Check for NULL msg when handling events and messages
      ipmi: Add an intializer for ipmi_smi_msg struct
      ipmi: Add an intializer for ipmi_recv_msg struct
      ipmi: Fix pr_fmt to avoid compilation issues
      ipmi: Convert pr_debug() to dev_dbg()
      ipmi:si: Convert pr_debug() to dev_dbg()
      ipmi: Make two logs unique

Miaoqian Lin (1):
      ipmi:ipmb: Fix refcount leak in ipmi_ipmb_probe

Stephen Kitt (1):
      ipmi: use simple i2c probe function

Yu Zhe (1):
      ipmi: remove unnecessary type castings

 drivers/char/ipmi/ipmb_dev_int.c    |   5 +-
 drivers/char/ipmi/ipmi_ipmb.c       |   6 +-
 drivers/char/ipmi/ipmi_msghandler.c | 111 ++++++++++++++++++++++++++++++++----
 drivers/char/ipmi/ipmi_poweroff.c   |   8 +--
 drivers/char/ipmi/ipmi_si_intf.c    |  17 +++---
 drivers/char/ipmi/ipmi_ssif.c       |  33 +++++++++--
 drivers/char/ipmi/ipmi_watchdog.c   |  28 ++++-----
 include/linux/ipmi.h                |   5 ++
 include/linux/ipmi_smi.h            |   6 ++
 9 files changed, 165 insertions(+), 54 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
