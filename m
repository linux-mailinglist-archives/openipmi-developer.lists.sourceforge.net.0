Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF908441B79
	for <lists+openipmi-developer@lfdr.de>; Mon,  1 Nov 2021 14:04:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhWza-0000e9-PW; Mon, 01 Nov 2021 13:04:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mhWzZ-0000e2-Kg
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 13:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WQPqQDiLhvV/d5Bc04mAhXoz4A2BL7RcUTO6TGSjmEw=; b=ATpZT3Pz1pHK4SRWUVyJF4o0uM
 i4UiWFUYj+LS16NDg2qHSpDDkv98tgXmABQbLl2StCbKWeqGxcSUXZFLpz+tSgXFPxlzIMwyIYuo7
 b1fIQaJW3bz6QM3SbJZW8vyyzA2Z2RABlhxdX5ibtVGyKGoLg8INCEvTMaGvI2SRLcP0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WQPqQDiLhvV/d5Bc04mAhXoz4A2BL7RcUTO6TGSjmEw=; b=b
 exIZvE35cfl8YLpCEJin3gaiO3HT7Ox1KD0E1qivW20sG7O3w5109kGCi/mjEBYE/V177Pc7VpT7R
 sMj5zeOSkNMA7EjNREpSkg7AC8fXO6LkZbqsyKrPYn4h9Ft87LvZP6d6YeP/tR3mSFguEJH6YHUJ6
 0s/fOnbIhghKHFkM=;
Received: from mail-qk1-f171.google.com ([209.85.222.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhWzU-00Bibu-39
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 13:04:49 +0000
Received: by mail-qk1-f171.google.com with SMTP id bi29so16366301qkb.5
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Nov 2021 06:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=WQPqQDiLhvV/d5Bc04mAhXoz4A2BL7RcUTO6TGSjmEw=;
 b=HEmGsizsOZBkvFuXHbws2/UxahAgPrscHmi6kLvwo+SyPMwpQbI69XPwG061/kc83O
 GQQ4g0svbPYw1Gk1OTStv6AxOAtOkaZegPbordviF/qq1/z+orjT7e33ZIWpwOnREDwL
 sD4ovDOs4jUeaaq99Ug1u4RXmF/slUpXuz1EaZknQ9nm6WTl2ssDXJgaA1myn9WraZUG
 WA/GR7a1qRruGBB57EUkJOhytmyzXXFjSCKGvPOfJQoF7Xsj0fEHeols9pAlmsENq1Qd
 vt+pzcnhL7pwKrcX4ujD1Jt4UpwcMtHkvhpC0UZJy0zy5aE/dtwuKUufYh4GGKCrXSqe
 Zu6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=WQPqQDiLhvV/d5Bc04mAhXoz4A2BL7RcUTO6TGSjmEw=;
 b=FQrWkegjoDQhBZTJaE7i75TJInAlj4ukns6de8Yh171v4HqwaLg5HjFT+lWmyWCXgs
 8+fcyPtBu4rfKKLFu8zFOurHyTkeuftu8CGzsFS4QtJlmvQRHOWPf7dyqRCL1X/snKsX
 Fo/crDvNXw2gz+d9Bn+ht6KXnX40TBTwvC0KFAqnUEGTH0i1aUQ8ABuzXTxCQNyPrfh7
 Q7FnCl7lcH39Sk5j5m7FrrD1Omx+rhXCTIT42nje4WiLsacfpInxulWEjCtnFsKQJR1Q
 +J0VWY6jsqpNNz8CiODGDNGasmPnVF59FYYGDx+72JY8afeLuDQl8xHdT9twW0QN5uYv
 Vx/A==
X-Gm-Message-State: AOAM531dCLemO0ZZMsmCrT1I3GxnTcpG7HxH8YGcadcfCxuc+TPgjaBR
 MirW5Pqy9L/1W99yMEnFRZY562ggJw==
X-Google-Smtp-Source: ABdhPJwPaO7ME9at+u556vFuMsrehpzQrj8P+WW8MY0JNOS0aZyDsSWCUbAyPsfSEvm29FtJsNt7rA==
X-Received: by 2002:a05:620a:4250:: with SMTP id
 w16mr22601599qko.485.1635771878221; 
 Mon, 01 Nov 2021 06:04:38 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id y8sm10289574qko.36.2021.11.01.06.04.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Nov 2021 06:04:37 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:cfe:2000:592b:61b1])
 by serve.minyard.net (Postfix) with ESMTPSA id 32E501800BA;
 Mon,  1 Nov 2021 13:04:36 +0000 (UTC)
Date: Mon, 1 Nov 2021 08:04:35 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20211101130435.GG4667@minyard.net>
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
 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:
 Linux 5.15-rc1 (2021-09-12 16:28:37 -0700) are available in the Git repository
 at: Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.171 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.171 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhWzU-00Bibu-39
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes and enhancements for
 5.16
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

The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:

  Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-1

for you to fetch changes up to f281d010b87454e72475b668ad66e34961f744e0:

  ipmi: kcs_bmc: Fix a memory leak in the error handling path of 'kcs_bmc_serio_add_device()' (2021-10-29 07:23:59 -0500)

----------------------------------------------------------------
Updates for the IPMI driver

A new type of low-level IPMI driver is added for direct communication
over the IPMI message bus without a BMC between the driver and the bus.

Other than that, lots of little bug fixes and enhancements.

----------------------------------------------------------------
Christophe JAILLET (1):
      ipmi: kcs_bmc: Fix a memory leak in the error handling path of 'kcs_bmc_serio_add_device()'

Colin Ian King (1):
      ipmi: ipmb: Fix off-by-one size check on rcvlen

Corey Minyard (12):
      ipmi:watchdog: Set panic count to proper value on a panic
      ipmi: Disable some operations during a panic
      ipmi:devintf: Return a proper error when recv buffer too small
      ipmi: Check error code before processing BMC response
      ipmi: Fix a typo
      ipmi: Export ipmb_checksum()
      ipmi: Add support for IPMB direct messages
      ipmi:ipmb: Add initial support for IPMI over IPMB
      ipmi: Add docs for IPMB direct addressing
      ipmi: Add docs for the IPMI IPMB driver
      ipmi:ssif: Use depends on, not select, for I2C
      ipmi:ipmb: Add OF support

Joel Stanley (2):
      ipmi: bt-bmc: Use registers directly
      ipmi: bt: Add ast2600 compatible string

Randy Dunlap (1):
      ipmi: ipmb: fix dependencies to eliminate build error

Ye Guojin (1):
      char: ipmi: replace snprintf in show functions with sysfs_emit

 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt       |   1 +
 .../devicetree/bindings/ipmi/ipmi-ipmb.yaml        |  59 +++
 Documentation/driver-api/ipmi.rst                  |  64 ++-
 drivers/char/ipmi/Kconfig                          |  11 +-
 drivers/char/ipmi/Makefile                         |   1 +
 drivers/char/ipmi/bt-bmc.c                         |  69 +--
 drivers/char/ipmi/ipmi_devintf.c                   |   8 +-
 drivers/char/ipmi/ipmi_ipmb.c                      | 539 +++++++++++++++++++++
 drivers/char/ipmi/ipmi_msghandler.c                | 330 +++++++++++--
 drivers/char/ipmi/ipmi_si_intf.c                   |   8 +-
 drivers/char/ipmi/ipmi_ssif.c                      |   4 +-
 drivers/char/ipmi/ipmi_watchdog.c                  |  25 +-
 drivers/char/ipmi/kcs_bmc_serio.c                  |   4 +-
 include/linux/ipmi.h                               |   3 +
 include/linux/ipmi_smi.h                           |  59 +++
 include/uapi/linux/ipmi.h                          |  16 +-
 16 files changed, 1078 insertions(+), 123 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-ipmb.yaml
 create mode 100644 drivers/char/ipmi/ipmi_ipmb.c


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
