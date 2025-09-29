Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2B9BAA408
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Sep 2025 20:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:To:From:Date:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xc+FnqnF6FGDX59GA07We/HNcIgyQTfYbcuTOTCJkuQ=; b=ciXDzQII7RsMwc9N22QdU5lG6N
	Bwr0IGJzG9AzWLOOCIv+vHE1qOr2ObWggzsQUAM7uQYNNKvLG0qCI8yMKzwCCSzmimS4EFhM8P7/O
	t9e94CsEVPGZmD41ybvT8ytBRaby8yM9BUJVJsES6hwKJa7fcXeFdpf3Eeg/kau6U2HA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v3IGk-00050z-PQ;
	Mon, 29 Sep 2025 18:06:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v3IGi-00050k-JX
 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Sep 2025 18:06:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vyEN0tDG41iChb3NGwo/IHMuz5VdNgy4oMVazcYf5Vc=; b=FrYiXA07tNPUsbr2UZ3+NBL/ag
 rmW0MOfFM7knaNJtjlja5fWX5vD/83zTWt88/AvWOxAMTlOrArb9KxBF8x38R82TBj+vWPRiClBQX
 VXO9BB7qWJsaV+N+1PmnwCjOx9dXYvzz5HWq7HceQC+lRMLgOxtC1YIcJtLnG+Ufo6a0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vyEN0tDG41iChb3NGwo/IHMuz5VdNgy4oMVazcYf5Vc=; b=L
 aFVlIDeG0Ma5n4HA6OUKtFFkEtusOQ8YjJb25/AGqRgqZ0netxUArHeXbV1eDYcvm6pGajsPCzjak
 /MH1+gyTJO8AZvwJjpgZOfX+JhBSgFBKURk+5gaxRvuFKWp471DPWvE1RvzSgdgiCOezCNaBqqik5
 h7pDl4ChiKXqn1+w=;
Received: from mail-oo1-f42.google.com ([209.85.161.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v3IGi-0004pP-PQ for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Sep 2025 18:06:37 +0000
Received: by mail-oo1-f42.google.com with SMTP id
 006d021491bc7-6494330b1b9so81720eaf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 29 Sep 2025 11:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1759169186; x=1759773986;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vyEN0tDG41iChb3NGwo/IHMuz5VdNgy4oMVazcYf5Vc=;
 b=TWNnOlw1oCWblGQ435wmXcG2wybSTiAog48dwbghml5EQw1bEfsfUDf2VAky+vwjDU
 lbun2nlxrWHSemfQ1N5lDLb1HcP2d6+Vwysnq6bksVnFWNaM+OKxM+eZUPPhrR/03ASX
 JCkS04m7KtZNAMYEQ9b4DUG1k0Lst83PTFRY/rSOokRjKrRZkG8umiuiR1Jkq68i6lOm
 /MFQzAE/nMkAYuvVFoelFNQr4gmOLP7q8kd0fzVVnxZ2f+TZvKggkaXutJ627Ypx17rA
 qF/qEOXlZ9o2rVLVmO20j6wE3fJmeTDE26olPph0k4JIQzQlABd5cT8dckqS2y/ZPpWZ
 EHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759169186; x=1759773986;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vyEN0tDG41iChb3NGwo/IHMuz5VdNgy4oMVazcYf5Vc=;
 b=C5CO4WjrqZxgsqoR39U+PRwrUP+iuiZlXlVNNY7eCvENcFbDSunpNcj5794rOfsAWp
 MpDNe6YoFdyX3ia8H4PJr+M5FCEh7Kt9HwFwz/qMNOk9nTzogt+oHISnWP58TQp4RBqZ
 +/wTXMmU1UgxCHAl3cl/F7H46r2uIEydI2jUbvGPm09+49snc/s03A2nYjGlWHmrc1wt
 7T5sp9/QBogvUQn/XL2VeIIADDOigbwxmv70Nu52rFcNkSkEM1CLZK8JzXcseePOKj4k
 BedPzs0E7x2ZSFlEMunBxnAzRp6WbXfWys+xBASn47oE5fPlZcWBnCGIgSW+Kr8g+O4Q
 sn3w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVYW2NZUPVVG6IyP2oLgEnofocR1NMDTjzMK7M6iEstdJq6GaNzHQbJP/qsflDNW+bGv2RkkvnukO+oedzmcYhhcGM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw63dAJaieh/Nhym12h9MQPq6o4hwKLubV03h0REa3vnDpDRSp6
 hQnLvyte0JPvXYSR2nuydF83lAAUdCTk2WiMTdd370XD5cpA4BrfHntIcpkwKD6ASyw=
X-Gm-Gg: ASbGnctqDhIoXSQUoBsE8jc/t/Hmf2kuWgzPi+Txbmud8LVx0IfifPGHCTps/gGE+Sd
 mhhgAKmTh+Euw+VfwjKLj1xLjrVHqREhyG2YwJZJ4oEt+13ORJq1ZnBY7Uw9FiHcZcCkJGG6ur0
 ea530DtLA/gihdUHDQVGjKW2MvO+is8cUAtamxZhb7EVmuKDCBFXpjROHQ2taKlVNLAhbIKzgn2
 kQr3t6p+LH1Xa6lEsKBZMVqSv0O1vbvQ4v1Jx+bhNqW+AeV3vOcw4ipZ9Vjhqgy/J43PWqa6IJ6
 SBhn7USYk13MXm0y4QhD6O0ys5zOi8DrsVJjYQi7agn49jGJtzZUSOUL0i42PGFCvYtBPU3H/iO
 TbgX4yYZQ8W0Osbl18ySH6E+z7ESl7cLNbTsP
X-Google-Smtp-Source: AGHT+IEJWMH4fmiY6y2jxbN7/QYzeirQNBM+vpEqsAuSSOHUh/rSmLuJfwBi4Gs9am85/a7py84Ohw==
X-Received: by 2002:a05:6871:79a5:b0:36c:94fb:7e89 with SMTP id
 586e51a60fabf-390f09caca4mr249535fac.21.1759169186006; 
 Mon, 29 Sep 2025 11:06:26 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:5542:a82d:8748:cc0b])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-363b2ad67a7sm3794847fac.22.2025.09.29.11.06.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Sep 2025 11:06:25 -0700 (PDT)
Date: Mon, 29 Sep 2025 13:06:20 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <aNrKnJ5GNGkf-yqv@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 6e64f4580381e32c06ee146ca807c555b8f73e24:
 Merge tag 'input-for-v6.17-rc0' of
 git://git.kernel.org/pub/scm/linux/kernel/git/dtor/input
 (2025-08-07 07:40:01 +0300) are available in the Git repository at: 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.161.42 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v3IGi-0004pP-PQ
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.18
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

The following changes since commit 6e64f4580381e32c06ee146ca807c555b8f73e24:

  Merge tag 'input-for-v6.17-rc0' of git://git.kernel.org/pub/scm/linux/kernel/git/dtor/input (2025-08-07 07:40:01 +0300)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.18-1

for you to fetch changes up to d46651d4e3c0caab554c4c591c0b6c3b026b1e93:

  ipmi: Add Loongson-2K BMC support (2025-09-16 10:15:54 -0500)

----------------------------------------------------------------
Bug fixes and enhancements for IPMI

This request fixes a number of small bugs, but has some more major
changes:

Loongson-2K BMC support is added.  This is an MFD device and is
dependent on the changes coming from that tree.  There is a
conflict in the MAINTAINERS file and the MFD tree changes must be
there before this is applied.

The way the driver handles BMCs that have become non-functional
has been completely redone.  A number of changes in the past have
attempted to handle various issues around this, but nothing has
been very good.  After working with some people on this, the
code has been reworked to disable the driver and fail all
pending operations if the BMC becomes non functional. It will
retry the BMC once a second to see if it's back up.

-corey

----------------------------------------------------------------
Binbin Zhou (1):
      ipmi: Add Loongson-2K BMC support

Corey Minyard (12):
      ipmi:msghandler:Change seq_lock to a mutex
      Revert "ipmi: fix msg stack when IPMI is disconnected"
      ipmi: Rework user message limit handling
      ipmi: Differentiate between reset and firmware update in maintenance
      ipmi: Disable sysfs access and requests in maintenance mode
      ipmi: Add a maintenance mode sysfs file
      ipmi: Set a timer for maintenance mode
      ipmi:si: Merge some if statements
      ipmi:si: Move flags get start to its own function
      ipmi: Allow an SMI sender to return an error
      ipmi: Rename "user_data" to "recv_msg" in an SMI message
      ipmi:si: Gracefully handle if the BMC is non-functional

Rob Herring (Arm) (1):
      dt-bindings: ipmi: aspeed,ast2400-kcs-bmc: Add missing "clocks" property

 .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml      |   3 +
 drivers/char/ipmi/Kconfig                          |   7 +
 drivers/char/ipmi/Makefile                         |   1 +
 drivers/char/ipmi/ipmi_ipmb.c                      |   4 +-
 drivers/char/ipmi/ipmi_kcs_sm.c                    |  16 +-
 drivers/char/ipmi/ipmi_msghandler.c                | 605 +++++++++++----------
 drivers/char/ipmi/ipmi_powernv.c                   |  17 +-
 drivers/char/ipmi/ipmi_si.h                        |   7 +
 drivers/char/ipmi/ipmi_si_intf.c                   |  74 ++-
 drivers/char/ipmi/ipmi_si_ls2k.c                   | 189 +++++++
 drivers/char/ipmi/ipmi_ssif.c                      |   4 +-
 include/linux/ipmi_smi.h                           |  11 +-
 12 files changed, 600 insertions(+), 338 deletions(-)
 create mode 100644 drivers/char/ipmi/ipmi_si_ls2k.c



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
