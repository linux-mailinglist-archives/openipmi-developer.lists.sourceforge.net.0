Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F4328D19B
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Oct 2020 17:57:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kSMfg-0005mO-3y; Tue, 13 Oct 2020 15:57:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kSMff-0005lv-5E
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Oct 2020 15:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=390uKJTlgBk/uFtYKzYc+ATuZvhQmzATp0Bpd2mu/RI=; b=LmLxzCygoTCxuZxqTF4gKL9dbe
 1mTs7b4XSMr5KwrpGhcDBGQcJ/Llqlatdu6qsRL4EjRw15aVxnRkSOcug753xFP/OOB1b07iWzfmb
 9XKEhuY6lkSXaITpNbG6+y30W7GGrQtY8XT0bRtfm0OExXcWB0ecuVsU5JFIfkEyqhJ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=390uKJTlgBk/uFtYKzYc+ATuZvhQmzATp0Bpd2mu/RI=; b=C
 TXPozyF92Xrzk93/F0PPg22JUVP8jqW2QBa0zvfo9UeywawYBBIzU5ebKITZSlOrD62COiyRETLKg
 AICDkobK+I/w7FKzMISYi7D6QuV3ZIQqZuL3isxlexc1q8/bmmrIFF0TnB+/lDrX5hk3JTsS3y3qg
 eNKxpGwPVaz/UW6I=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kSMfa-00DeTJ-AH
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Oct 2020 15:57:03 +0000
Received: by mail-ot1-f66.google.com with SMTP id d28so490159ote.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Oct 2020 08:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=390uKJTlgBk/uFtYKzYc+ATuZvhQmzATp0Bpd2mu/RI=;
 b=JQuVsRVzWvimcRbeOgJaTLVAHUS3bps/06MhqtIadV7epIIbyJ8WRk/P3cuoV8Dngn
 k+vXKGtxea4wA/iMd9JSBNr8UuBA04nFRow4gjzvpCRIofdgdW+Q494yxjso8FqQuHGB
 jNZNDCHwqIaAw9wPsFaQTKUJjlmbsNwv2/xU0+B1Cv2yHm0uc/H3Ipfwa2BpPNRNlD21
 BhIB6Lw9q1jctmHQgc45fOKP5AAPwIeaBJYcuVwVglJYLYU/ezvRQwQTv6zBt82L/2PO
 4cfIT4i3OwiyfbzFFxPcfjfeRn5g57A0PqyCxUMjUt8ZO88jz9rMHnRUDXfF0ZL1UnuS
 sa1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=390uKJTlgBk/uFtYKzYc+ATuZvhQmzATp0Bpd2mu/RI=;
 b=QS3UYH2/DLclL0dt2GoAnj2H4uaVpuuix32J2YoNcRO1QPC17lCsFvKbu5nIcNEStt
 y//T5ONjjI9GTotL21ot9Oj9jZ6IUz3ax7J4HOQbgXCRG5AMF6bFHQWXG9iNtbrFK1RZ
 zLtUxDGBDrrMpRHAtBRMBXUx1NDQObTLIZ3e2Rjj9jbbe31TiaX5TaldO7mjyFA1MClG
 ibSK2fF0VkJNylKBF7Amp4dDeljHngKqXoArrTXqjOzwlvy2nik8gTJmBb/6ZsWaomRf
 aXB2DAQuycwUMk6fNmtrlA4GBfkixyDBVHjIi2QQ5UbDPxI+jsfLpH6VAKLWRM+Pifa5
 3h4Q==
X-Gm-Message-State: AOAM532r7sjmAZF4aphRRg0iXsBQ/DXZDxyn9lzDcKcSC6TMAsH/eLDb
 MTF5QPWcqRLhp+ZlUEf2sQ==
X-Google-Smtp-Source: ABdhPJwNgBjLO28OG8TWGz6hEl4ncKoFMYPr6twvnYksFD9Sib05QvB0GJo/DIpr86LXh5seRpo1Wg==
X-Received: by 2002:a9d:6:: with SMTP id 6mr192462ota.235.1602604612530;
 Tue, 13 Oct 2020 08:56:52 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id f70sm41963otf.32.2020.10.13.08.56.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Oct 2020 08:56:51 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b::80])
 by serve.minyard.net (Postfix) with ESMTPSA id 2BA8B18000C;
 Tue, 13 Oct 2020 15:56:50 +0000 (UTC)
Date: Tue, 13 Oct 2020 10:56:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20201013155649.GD66562@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kSMfa-00DeTJ-AH
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.10
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
Cc: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The following changes since commit fc80c51fd4b23ec007e88d4c688f2cac1b8648e7:

  Merge tag 'kbuild-v5.9' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild (2020-08-09 14:10:26 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.10-1

for you to fetch changes up to 8fe7990ceda8597e407d06bffc4bdbe835a93ece:

  ipmi_si: Fix wrong return value in try_smi_init() (2020-10-05 13:30:51 -0500)

----------------------------------------------------------------
Bug fix pull for IPMI for 5.10

Some minor bug fixes, return values, cleanups of prints, conversion of
tasklets to the new API.

The biggest change is retrying the initial information fetch from the
management controller.  If that fails, the iterface is not operational,
and one group was having trouble with the management controller not
being ready when the OS started up.  So a retry was added.

----------------------------------------------------------------
Allen Pais (1):
      char: ipmi: convert tasklets to use new tasklet_setup() API

Corey Minyard (1):
      ipmi: Clean up some printks

Dan Carpenter (1):
      ipmi: msghandler: Fix a signedness bug

Markus Boehme (1):
      ipmi: Reset response handler when failing to send the command

Tianjia Zhang (1):
      ipmi_si: Fix wrong return value in try_smi_init()

Xianting Tian (3):
      ipmi:sm: Print current state when the state is invalid
      ipmi:msghandler: retry to get device id on an error
      ipmi: add retry in try_get_dev_id()

Xiongfeng Wang (1):
      ipmi: add a newline when printing parameter 'panic_op' by sysfs

 drivers/char/ipmi/ipmi_bt_sm.c      |  4 ++-
 drivers/char/ipmi/ipmi_kcs_sm.c     | 15 +++++++----
 drivers/char/ipmi/ipmi_msghandler.c | 52 +++++++++++++++++++++++++------------
 drivers/char/ipmi/ipmi_si_intf.c    | 19 +++++++++++++-
 drivers/char/ipmi/ipmi_smic_sm.c    | 35 +++++++++++++++----------
 include/linux/ipmi.h                |  2 ++
 include/uapi/linux/ipmi_msgdefs.h   |  2 ++
 7 files changed, 93 insertions(+), 36 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
