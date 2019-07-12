Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A623166BD4
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Jul 2019 13:52:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hlu67-00071T-Gb; Fri, 12 Jul 2019 11:52:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hlu66-00071B-HU
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Jul 2019 11:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qaChsCD1R1LiREpVKm4OoTWp/cOYEyMFYaJ8KP8n3v8=; b=b/NZC7Cnmt5Fv22HXCWkdFYzcT
 EJpQD9lT77IWS6cg/DX2zd62Avq9K1SCVzxIh6CFJztDm5YfVM73HCr0hIEtklRgXx0/Eehd6AaSa
 9nRbUm/icnna9P5L5WlDSmd8supnnHY6V7lmMBRC7UgAnoc+Bcu1C63Mg/SDixdWjQE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qaChsCD1R1LiREpVKm4OoTWp/cOYEyMFYaJ8KP8n3v8=; b=L
 Tf4U01ZweexeSPaU8+Clqa9+2RvcZILF3/Fm5MgfMoftD8H/HHy1cc1OHMZ6AnhMdcvyGZx16jthB
 7GwjKIqn7Roho79lF5ixsIAofj+5Jv8g0g2+IG/fatHrfttKVJ9ME5Pm8ckztoVTZySJ/F1pP2P8E
 tyO6gkj515Dh14NQ=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hlu62-00GxHk-B6
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Jul 2019 11:52:18 +0000
Received: by mail-ot1-f66.google.com with SMTP id z23so9138372ote.13
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Jul 2019 04:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=qaChsCD1R1LiREpVKm4OoTWp/cOYEyMFYaJ8KP8n3v8=;
 b=L4JGuK3YxsJ3fNVfLu/QIYTuLQ09FyFzME+2PCGB6Go/n4Xas8iS430q9OKC2J5yWJ
 vMc/eneBYhy4emrN8Bd1Cc4yArLFfYlaZn3SVFJ5bprHxwgCY8hF3lFRGfSPC4u3Sib4
 rpjPU2jq1J2RnkwO9gTmDGJJxwFJU3LFROqp+TPxaLOg3YT3Qb5a8ZrehwXw0yfwiYe9
 mYmCTWM07kPRtzx6dr5CvC1b5jWMgql1DxmJY7kwkjI5PWiKc0gASftITB1FS4LC8p/c
 rastlDr4sfX9VZJkNq9eYXEbEY4OCUawAXQ/Y02r6qIYC7z0bN/K207g4+9Vduxyejld
 7/Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=qaChsCD1R1LiREpVKm4OoTWp/cOYEyMFYaJ8KP8n3v8=;
 b=TsMaehzfm/xPaJxrD4eqAM5nluXlD4mEV40btFhLGNf2Z8FmVTSI0TUlzjCPzzLdmk
 V0Mte8ZMDUzPwRUOWcqGb7s19UrahmuMN8586G0dXOFVqUAJudWlyOGVNJl36RW6zOOV
 bIcPHRF59r4UZpecooWI4N898HHlzEaijb6sfYJeQmdCJ3rm8GqSmdJ3g332EQADNaO0
 uadnnzTA0YtgvWhyQXMw3BflObUIgvzduuObNTpWh3GdMaJsMVlPnzbWzLpiHHNMLXDN
 aMTu8B2pMfVCH+5mxZLwMiBaouBPR83UQPmdoR1qsmpByDrnNZ9ZOOdYl28xtOGIMzal
 n0aA==
X-Gm-Message-State: APjAAAWdt+qf5W5aHCxx7Ij1YxVBqYn9HqabPPfjyzPMs1TuegNHWm17
 tXV6j2N8W9SYecgA7Yy5fV65LKk=
X-Google-Smtp-Source: APXvYqynlsFwSUUmfuL/LEqOzo70pUqHL/rT0eaXywko3y10nxX8CfYMs/jPpfbTrpyca05gr9+9Rw==
X-Received: by 2002:a9d:65cb:: with SMTP id z11mr8058567oth.325.1562932327402; 
 Fri, 12 Jul 2019 04:52:07 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id e10sm2731547otq.69.2019.07.12.04.52.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 04:52:07 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:813e:fd97:36ac:e9a])
 by serve.minyard.net (Postfix) with ESMTPSA id 67F961800D1;
 Fri, 12 Jul 2019 11:52:06 +0000 (UTC)
Date: Fri, 12 Jul 2019 06:52:04 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190712115204.GD3066@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hlu62-00GxHk-B6
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.3
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

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.3

for you to fetch changes up to ac499fba98c3c65078fd84fa0a62cd6f6d5837ed:

  docs: ipmb: place it at driver-api and convert to ReST (2019-06-30 19:33:25 -0500)

----------------------------------------------------------------
Some small fixes for various things, nothing huge, mostly found
by automated tools.

Plus add a driver that allows Linux to act as an IPMB slave device,
so it can be a satellite MC in an IPMI network.

----------------------------------------------------------------
Arnd Bergmann (1):
      ipmi: ipmb: don't allocate i2c_client on stack

Asmaa Mnebhi (1):
      Add support for IPMB driver

Kefeng Wang (3):
      ipmi_si: fix unexpected driver unregister warning
      ipmi_si: use bool type for initialized variable
      ipmi_ssif: fix unexpected driver unregister warning

Mauro Carvalho Chehab (1):
      docs: ipmb: place it at driver-api and convert to ReST

Suzuki K Poulose (1):
      drivers: ipmi: Drop device reference

YueHaibing (1):
      ipmi: ipmb: Fix build error while CONFIG_I2C is set to m

kbuild test robot (1):
      fix platform_no_drv_owner.cocci warnings

 Documentation/driver-api/index.rst   |   1 +
 Documentation/driver-api/ipmb.rst    | 105 ++++++++++
 drivers/char/ipmi/Kconfig            |   9 +
 drivers/char/ipmi/Makefile           |   1 +
 drivers/char/ipmi/ipmb_dev_int.c     | 364 +++++++++++++++++++++++++++++++++++
 drivers/char/ipmi/ipmi_si_intf.c     |   4 +-
 drivers/char/ipmi/ipmi_si_platform.c |   7 +-
 drivers/char/ipmi/ipmi_ssif.c        |   5 +-
 8 files changed, 492 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/driver-api/ipmb.rst
 create mode 100644 drivers/char/ipmi/ipmb_dev_int.c



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
