Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7423B6B62
	for <lists+openipmi-developer@lfdr.de>; Tue, 29 Jun 2021 01:36:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ly0o0-0004gY-V6; Mon, 28 Jun 2021 23:36:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1ly0nz-0004gQ-He
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Jun 2021 23:36:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+H55P0ypSdIaQcdDFx4sbQNPtQN77yyUkvRBo423tNY=; b=mcqsIHqX6p887YTufMimD7XIsI
 TvC3PTN3s0eGqQai419swj6xQ2TLhWfUa2AcPWzLBjWPNZmwamsgQnRs3z6mfTpe37+RR1Q2jHpr5
 BuQrlTGF3TR0IcyKK3iD7l6nzo9I1esV3TYAd6TBiJ3YJL04YTx30uaYrxvbBK+GlSTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+H55P0ypSdIaQcdDFx4sbQNPtQN77yyUkvRBo423tNY=; b=T
 PLZLb9Sh/zGggoH1By/9pUcAGPHkLL2yS9XrsT+Miu8ULDq/CfEwlgvMmzGXaxdUcbrHYSKNamZZ/
 QJsWxFeOvL9y5XahmXB7SQldDamb9x8/nQAbPOBXFq/B8lybrXfq+seYDQQpQG9I1qr3LQUvcxDxu
 a57IpjyQmIICPerE=;
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ly0nu-002RUd-EI
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Jun 2021 23:36:43 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 g13-20020a4ac4cd0000b029024c717ed8aeso2092438ooq.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 28 Jun 2021 16:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=+H55P0ypSdIaQcdDFx4sbQNPtQN77yyUkvRBo423tNY=;
 b=FLyzzZmpszg1zHHEUiACeaYpQdeBPA61HCJxhFW68E37Mzq5wX771/o2Ndy25g6aaV
 O7iDlJSKoMxruI3ZdlTbUz6vgLN0JJhCQ7RgTEawJCYcsWOMDXiXr7klV3ME/6phRArM
 mLH3CYyrpPeno8jI4vrUjx150OIVWx7QomVpQZQC4dUsWy2pVX1A0KtyEs2qh2V58i2u
 +//QWY0m/GvdcPUh3yM6cAIElL9Y16hCWap/Ysmw/3v1I0nLxUbTBuXoZlfyw6uU0AMA
 4hDgTTKXM8+N/6Znl8yZIK1ufhX4JDS2v2np4d47chV4KAt8ufSOf/sIR34jf2hV+gMu
 NC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=+H55P0ypSdIaQcdDFx4sbQNPtQN77yyUkvRBo423tNY=;
 b=FiBS8ant0YBi/Y3yjxJtYhmOn7n7ahucU7D5HmLzIcvNtBfgnjRXV/5ogUUEOunzrA
 xfWikk6ocuZLoXxTX2QvIUQLsrN9ry7XlZ5aVdVYj3buzzXGcnlKgIP4O4AdEOp7VHxb
 QEgJunzxxI/pgVg3w5X/HGEKv5cPCpWJnnpPp55B5e5r6L+T2O9EV1YvXm6rr9w1ZYIi
 bZxOkZSjBvMxdqmIN4HQwSoUDIm/d4RwOHcbL8P2uRyYmENow924jnqFEs07YFhB5NUi
 JEbPGP9W0VUx4dQikZ/kYq1rRqyHIyo5FiOCDFC2sPQHTPmF2e/YxtL0g+K8f1c4vPL7
 YDHA==
X-Gm-Message-State: AOAM5308LUOXZYx9wZpXhfCmCnlWNc6UZUun5worj4CWSiMJe0GYXeyd
 7lrh0VCWk8Uw6dDwaFx8yjgnua+LHA==
X-Google-Smtp-Source: ABdhPJyZ+oIeGRbGqpS0i3Grns1E55zv/R3ld8o1gspUfrWzfWHVkZdE7u17QYy+zCn6FX4JSaukEQ==
X-Received: by 2002:a4a:b815:: with SMTP id g21mr1534098oop.70.1624923392762; 
 Mon, 28 Jun 2021 16:36:32 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id o17sm1203907oie.56.2021.06.28.16.36.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Jun 2021 16:36:31 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:bdb9:8367:8bd5:6021])
 by serve.minyard.net (Postfix) with ESMTPSA id E3C1018022E;
 Mon, 28 Jun 2021 23:36:30 +0000 (UTC)
Date: Mon, 28 Jun 2021 18:36:29 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20210628233629.GP2921206@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1ly0nu-002RUd-EI
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.14
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

The following changes since commit d72cd4ad4174cfd2257c426ad51e4f53bcfde9c9:

  Merge tag 'scsi-misc' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi (2021-04-28 17:22:10 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.14-1

for you to fetch changes up to 5b32dd281ee0a269f39ecf6b48f0cd3f37264842:

  ipmi: kcs_bmc_aspeed: Fix less than zero comparison of a unsigned int (2021-06-21 19:50:36 -0500)

----------------------------------------------------------------
Pull for IPMI driver for 4.14

Mostly a restructure of the kcs_bmc driver to make it easier to
use with different types of devices, and just to clean things up and
improve things.

Also some bug fixes for the kcs_bmc driver.

One fix to the IPMI watchdog to stop the timer when the action is none.
Not a big deal, but it's the right thing to do.

----------------------------------------------------------------
Andrew Jeffery (16):
      ipmi: kcs_bmc_aspeed: Use of match data to extract KCS properties
      ipmi: kcs_bmc: Make status update atomic
      ipmi: kcs_bmc: Rename {read,write}_{status,data}() functions
      ipmi: kcs_bmc: Split out kcs_bmc_cdev_ipmi
      ipmi: kcs_bmc: Turn the driver data-structures inside-out
      ipmi: kcs_bmc: Split headers into device and client
      ipmi: kcs_bmc: Strip private client data from struct kcs_bmc
      ipmi: kcs_bmc: Decouple the IPMI chardev from the core
      ipmi: kcs_bmc: Allow clients to control KCS IRQ state
      ipmi: kcs_bmc: Enable IBF on open
      ipmi: kcs_bmc: Add serio adaptor
      dt-bindings: ipmi: Convert ASPEED KCS binding to schema
      dt-bindings: ipmi: Add optional SerIRQ property to ASPEED KCS devices
      ipmi: kcs_bmc_aspeed: Implement KCS SerIRQ configuration
      ipmi: kcs_bmc_aspeed: Fix IBFIE typo from datasheet
      ipmi: kcs_bmc_aspeed: Optionally apply status address

Colin Ian King (1):
      ipmi: kcs_bmc_aspeed: Fix less than zero comparison of a unsigned int

Petr Pavlu (1):
      ipmi/watchdog: Stop watchdog timer when the current action is 'none'

 .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml      | 106 ++++
 .../devicetree/bindings/ipmi/aspeed-kcs-bmc.txt    |  33 --
 drivers/char/ipmi/Kconfig                          |  27 +
 drivers/char/ipmi/Makefile                         |   2 +
 drivers/char/ipmi/ipmi_watchdog.c                  |  22 +-
 drivers/char/ipmi/kcs_bmc.c                        | 505 ++++------------
 drivers/char/ipmi/kcs_bmc.h                        |  92 +--
 drivers/char/ipmi/kcs_bmc_aspeed.c                 | 633 +++++++++++++++------
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c              | 568 ++++++++++++++++++
 drivers/char/ipmi/kcs_bmc_client.h                 |  45 ++
 drivers/char/ipmi/kcs_bmc_device.h                 |  22 +
 drivers/char/ipmi/kcs_bmc_npcm7xx.c                |  92 ++-
 drivers/char/ipmi/kcs_bmc_serio.c                  | 157 +++++
 13 files changed, 1598 insertions(+), 706 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
 create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
 create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_device.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_serio.c



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
