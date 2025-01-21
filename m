Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0713A17F69
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Jan 2025 15:06:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1taEtd-0001L2-7i;
	Tue, 21 Jan 2025 14:06:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1taEtc-0001Kw-SC
 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Jan 2025 14:06:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h7AcU/Rz9iloUVg9a6hn1Zs0X9p3xsrzaITyiP4A05E=; b=MEoc2rxEQlqAQ+Nu0LuafCNZ9q
 lZglKSFoXAMo4C9orH8y9rNPS1gqjOcwEQIAJ3SFTJeYSFeJSjS7lcygJ5b/xsLBFqqTuVL6q/qOs
 Al+0v9692V+kg5jaEazv6NDDpjW/Lkl/nPvQ7R1qXhbECgDcweleDTFvdvwZ5oCMZ5RI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h7AcU/Rz9iloUVg9a6hn1Zs0X9p3xsrzaITyiP4A05E=; b=N
 L6P3oq7tsM1+7UWHq1CVxaOiflNAbQCaFZz1MiPy1aO5ZfZ+6qpQeQbAy1VdQKBnmS2VNlqhaNfBz
 1c/kJHxWwg4fqZDCsc9zaYhnRiYPXuD989WUd1ThzG0vd2GPEQaFk+nY4L5/04Dq1hPyOK6DvxiB+
 +Td58U/RgIJZXzwE=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1taEtb-0000vY-F2 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Jan 2025 14:06:24 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 46e09a7af769-71e1158fe3eso3004752a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 21 Jan 2025 06:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1737468373; x=1738073173;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=h7AcU/Rz9iloUVg9a6hn1Zs0X9p3xsrzaITyiP4A05E=;
 b=x8rvTEZtNvaZpuWfOF2ycuetxj9VekxFWmc1S26vzPEBGEQr3tX6JS4RapymF0ktJF
 G/lX2lDKocatbzQkPqivUyAdozmU+SO9BC+Nge1covw6B+UZ+UPKeMddowpFppUN4dwC
 J3Z/NdBhcwJDC/Udj3UVi/ZNsxzkizddVRP6PcexQNjHnLT1ZunP+/H3NsjJaxstLV4W
 /yOolZafpTOQyUEJO+yk6BV7ItCn/BxSNDZADk2G15hdO/Bxg6H1RVotwiWSccqXVl4X
 8pwydiImC052tvXEjaiJWKubG1G8lM2seWzPC/43jW7UoeMMicWXTNT/rfUy1yVoirnm
 wezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737468373; x=1738073173;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=h7AcU/Rz9iloUVg9a6hn1Zs0X9p3xsrzaITyiP4A05E=;
 b=bmm0AxH11D2OPnOrpocZjESeOiU3UR6tb9LX0VduQ0kJlNN14Trg62BOsA+RNBniWr
 ccpDj/l30lI8FZUsrNFWnp8hYd+A/9Xi8cdAU0VaOCWjSuBBp3E4Kk+2pGAmY5kibMwb
 7jstMsRt1jwHXFBNF/zQnKc94YUk7rXfE7gXkodSe3jQL3/kADJSKhHLCFSCrmE9gc8f
 9gLEDGew1EWouwen1xGesCziDCBBh3BS8zujeAJrAYpntXGYDU3zZcCM36k3l6jlo1LJ
 HS9TC/r6/WwsgWBcdjif6U8jtNRKufqPPHu7Hoirgy82jKW1OO2CnbL5Wk286TQbCiy5
 GktA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWfNGBc5c2olfOtz97gyjQ5/mmO7hSgJDz2n0DTdV7JGj4i3VHloK1oWt1gUHBUOLgIwIpwieHNqsGjOpfTNuXTDuk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy5Z1XT6mZyoW87CXImRaCQ2ZqTGQ1brzevJhY4P4Gn2g3GBIb0
 nOe1/OQIAiSBIQUYDePuNMDKSfeZvTCiKaJYeW6/gI5W6qpR4mRc1esxpBIc4r9maPO3ZwwcwPE
 +
X-Gm-Gg: ASbGncs1E9kokD+BlbEotE4cPPzTmJ5vafZzo0lUrfiCxI0/mUnKJkYeq2QDhqcJy4l
 aeUKTfnWqJv+Prv//8EXfoWdsL1o5Mzkbh80pDmxs41FGeuFNQGyLiEzeAvRIUnF85hoyRHXFDL
 BNibOvk+E8fbSQPlErdxX/hbT4U8mRcmxletF+5YwvEOcrlDLV/jfL6Vpb0/7T8YCiCO6mnlb84
 nvf4yI6utsrWw86EFvKK5kv2Of+8MILyd/s2Tgnu4SBcBxvRFEVuizmHBJPDkFq0P9GZsqo
X-Google-Smtp-Source: AGHT+IE0URaxffFgiKitySHliSTtd+dTWI5eYbM+vM/zSHuhxcW0yWr/rGPVYr1vPdjgRWZn1JwhUg==
X-Received: by 2002:a05:6830:2a9f:b0:71e:165c:ee76 with SMTP id
 46e09a7af769-7249dadffe1mr10116420a34.18.1737468372731; 
 Tue, 21 Jan 2025 06:06:12 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:7c55:2350:17b7:83c])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7249b4b063bsm3253362a34.58.2025.01.21.06.06.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2025 06:06:12 -0800 (PST)
Date: Tue, 21 Jan 2025 08:06:07 -0600
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Z4-pz5vSqkNq2SJ2@mail.minyard.net>
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
 11a299a7933e03c83818b431e6a1c53ad387423d:
 Merge tag 'for-6.12/block-20240925' of git://git.kernel.dk/linux (2024-09-25
 14:56:40 -0700) are available in the Git repository at: 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.50 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.210.50 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1taEtb-0000vY-F2
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.14
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

The following changes since commit 11a299a7933e03c83818b431e6a1c53ad387423d:

  Merge tag 'for-6.12/block-20240925' of git://git.kernel.dk/linux (2024-09-25 14:56:40 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.14-1

for you to fetch changes up to b4339d599bc2b95be7887bde82114c153f6d0c10:

  MAINTAINERS: ipmi: update my email address (2025-01-21 07:59:27 -0600)

----------------------------------------------------------------
ipmi: Minor fixes and update my email address

I'm switching to a new email address, so update that.  This is a new
commit, but shouldn't be an issue.

Minor fixes for formats and return values and missing ifdefs.

A fix for some error handling that causes a loss of messages.

----------------------------------------------------------------
Charles Han (1):
      ipmi: ipmb: Add check devm_kasprintf() returned value

Corey Minyard (2):
      char:ipmi: Fix a not-used variable on a non-ACPI system
      MAINTAINERS: ipmi: update my email address

Quan Nguyen (1):
      ipmi: ssif_bmc: Fix new request loss when bmc ready for a response

Vitaliy Shevtsov (1):
      ipmi: make ipmi_destroy_user() return void

liujing (1):
      char:ipmi: Fix the wrong format specifier

 MAINTAINERS                         | 2 +-
 drivers/char/ipmi/ipmb_dev_int.c    | 5 +++++
 drivers/char/ipmi/ipmi_devintf.c    | 5 +----
 drivers/char/ipmi/ipmi_msghandler.c | 4 +---
 drivers/char/ipmi/ipmi_poweroff.c   | 6 +-----
 drivers/char/ipmi/ipmi_si_pci.c     | 2 +-
 drivers/char/ipmi/ipmi_watchdog.c   | 5 +----
 drivers/char/ipmi/ssif_bmc.c        | 5 +++--
 include/linux/ipmi.h                | 2 +-
 9 files changed, 15 insertions(+), 21 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
