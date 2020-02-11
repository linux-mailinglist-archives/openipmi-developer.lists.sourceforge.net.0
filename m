Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 635131586BB
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Feb 2020 01:18:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j1JGO-0003tN-Gc; Tue, 11 Feb 2020 00:18:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1j1JGM-0003tE-Pu
 for openipmi-developer@lists.sourceforge.net; Tue, 11 Feb 2020 00:18:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UhxPcj6/40TrfxQ8X9WmhGzj5RubLTtga5je0QqGKtU=; b=iQNmWoyFT2a1GUvRMYYCs90xrw
 Y3chAZXCwKtt6+sJrrOt+xZRqvcJQTbMMIN8NhxHi529SNdhNb+h6rbZcXVKC1boIWuFL++HPH7CG
 BPbWsCLjVNbdjtS7AEpq7Zt0vXHOJxm79fAgcMXcdlqCfuDBQ0GmY5BeRrZYJq1mWKE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UhxPcj6/40TrfxQ8X9WmhGzj5RubLTtga5je0QqGKtU=; b=T
 1ZofBJJTDW6lwO51vElEuQnAnpXXnSGd6gmIBibMWeHCqVmw2Od7kpGvq37P4Z50pCuEqQA/vn+v6
 /46cEde01OpOWpxDp4awJuDEf347aZQjM3EOAxY+jAtDT9tur9xqFiBpsbk072yhiR/z22pVYGkX6
 PwOSN85yIy48z6Tk=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j1JGH-0082hO-9D
 for openipmi-developer@lists.sourceforge.net; Tue, 11 Feb 2020 00:18:50 +0000
Received: by mail-oi1-f195.google.com with SMTP id c16so11147556oic.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 10 Feb 2020 16:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=UhxPcj6/40TrfxQ8X9WmhGzj5RubLTtga5je0QqGKtU=;
 b=t1/CNSDasjvg213eVPV628rx/NqyicZ9MHL3nZV9iyRb0gnoDGAyk3zo2CbHrXMmUl
 WFvhDLBN1hBcGYvlgHjIs/vG4BS/ytAYuojaB6RCLOVzXa2Tm+GoJk8yREM2gpGS8rad
 6ytY2A+Ek+kI5aA4FUBNcCPGjW4ZjNxbaPQ/OCdyP9+S/o+cMdtK/JKqbp9+6vzzD8vX
 rDntq7w+1rgHOGeB5wwpBBDVQ2vQaWYcKSpSjw7syD7i4O00HiWDx8WYrL6JGkY9BC3n
 g6A3TEldiQH2H+5/bufsQFXEln8xfTcdA/4B+Pp2Y6pgpFb+DN6dcVKT/XxYvOpE3HFG
 OPBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=UhxPcj6/40TrfxQ8X9WmhGzj5RubLTtga5je0QqGKtU=;
 b=Inzpb6322wTenlmAzL7taXkEjctfA5NFW5IQo7aY7sS1BZfEWVCv1lx7JaZtJLrgc8
 wxR06bAuiYIeYSg1Z+Kavb9sY2VM4Afc+nsORdW64Qox+nauYgSRhcIB+h9tfDndnuWF
 /4gv5MUMy9zC64lBq+GuQoWbDcjXBDmChz07HgrtoCeed7bpzwr/Aj5h2fhEGScSxBdU
 vlu+UkJTiP2DE/8mSP5EA/cThOCitmFppv9SHbIy4rVIFcy8VVQrTW9TALFN/wtNVvtM
 Ez2efpOwIHMQYjfM0pUd9egIExim6SaDQRtTXJFIiAeG8gnp0r6BEqJvY3uASJ6gqqdj
 o5aQ==
X-Gm-Message-State: APjAAAVZLddmD50iW1DpAejPuvDTidS2gTyjxnmun2Htwn/oUF/J6vg+
 CyWJonbBYxNPXtI+HcNlQQ==
X-Google-Smtp-Source: APXvYqzo0+ahUj2sFEaT94kJPwXL9G3Uy6b+rEKAM/F/An1bpHkf8Zo5HWsdpCGERzDKdO4w+fT8YA==
X-Received: by 2002:a05:6808:358:: with SMTP id
 j24mr1223199oie.89.1581380319211; 
 Mon, 10 Feb 2020 16:18:39 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id m185sm606084oia.26.2020.02.10.16.18.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 16:18:38 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:4d7:9d24:84b2:ef45])
 by serve.minyard.net (Postfix) with ESMTPSA id 4A338180046;
 Tue, 11 Feb 2020 00:18:37 +0000 (UTC)
Date: Mon, 10 Feb 2020 18:18:36 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200211001836.GI7842@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1j1JGH-0082hO-9D
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.6
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

The following changes since commit 6794862a16ef41f753abd75c03a152836e4c8028:

  Merge tag 'for-5.5-rc1-kconfig-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux (2019-12-09 12:14:31 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.6-1

for you to fetch changes up to e0354d147e5889b5faa12e64fa38187aed39aad4:

  drivers: ipmi: fix off-by-one bounds check that leads to a out-of-bounds write (2020-01-20 11:01:00 -0600)

----------------------------------------------------------------
Minor bug fixes for IPMI

I know this is late; I've been travelling and, well, I've been
distracted.

This is just a few bug fixes and adding i2c support to the IPMB driver,
which is something I wanted from the beginning for it.  It would be
nice for the people doing IPMB to get this in.

-corey

----------------------------------------------------------------
Colin Ian King (1):
      drivers: ipmi: fix off-by-one bounds check that leads to a out-of-bounds write

Corey Minyard (1):
      ipmi:ssif: Handle a possible NULL pointer reference

Vijay Khemka (2):
      drivers: ipmi: Support raw i2c packet in IPMB
      drivers: ipmi: Modify max length of IPMB packet

 Documentation/driver-api/ipmb.rst |  4 ++++
 drivers/char/ipmi/ipmb_dev_int.c  | 33 +++++++++++++++++++++++++++++++--
 drivers/char/ipmi/ipmi_ssif.c     | 10 +++++++---
 3 files changed, 42 insertions(+), 5 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
