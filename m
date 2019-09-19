Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B95B7EC4
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 Sep 2019 18:08:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iAyyh-0005Yz-DQ; Thu, 19 Sep 2019 16:08:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iAyyg-0005Ym-6Y
 for openipmi-developer@lists.sourceforge.net; Thu, 19 Sep 2019 16:08:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rUW2ZKDVmFU25rXuzcHzPnF/hKyMTjr3SA4HSJinQ+A=; b=lsSagQhemaF4i3EXJhtPXjxYIR
 BpWCPsLtEtQhR5qLzFH5kCeFxB/VRHptK4qvadEZP6SC2Ee0IaktoPG6OnR4MKIQhjhLFdB1Z7oB4
 csjLbATuhTJjQqbtTQIHI6V9zYngsgJ6TMFJTLpG7cV2xa5e95RfOgwgpLdBs5lVr5lw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rUW2ZKDVmFU25rXuzcHzPnF/hKyMTjr3SA4HSJinQ+A=; b=P
 ysndCi0wD9gjpLU90+XQDdtEP7sjSzaShOtpMFuBVEOntHRL21dlpTm32JkFunGgBnOn0Yar26Ax7
 c6uy9mtN99attfDBB959rFhSeMo2MCbf6FUmfypdiTgICqUetoOXTowcEm3TesFIc99K7Wj4DhXru
 HApqw3wT1kHOVu5I=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1iAyye-00At5L-7M
 for openipmi-developer@lists.sourceforge.net; Thu, 19 Sep 2019 16:08:18 +0000
Received: by mail-ot1-f65.google.com with SMTP id y39so3570636ota.7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 19 Sep 2019 09:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=rUW2ZKDVmFU25rXuzcHzPnF/hKyMTjr3SA4HSJinQ+A=;
 b=EY40J3Mbcprxs5FWe6X/AVaUMJP5AsyitSuDNT6vHeKS+dH9Vt7kQ9tdaQhlJC7dKC
 nAu06z/KiDlpx1k+iy78CsWzqZJ9mLxM50jC0aDlq2/T6v0zBC9qWq+CQ/4/WoxzBGl4
 4Ajpw1zVoh30/n/I6nr8CzHGDOaGwx0RszoM5G1GMmlBO0jfy4V3ZG5iPmWxWUS+Xa9U
 5KY5CFiK4Wd4f3XfR3KKFhdNx1BzzmpNgjFU3kYneQkOHe2BOnRmGR7SkA5m73UJqU4C
 Z3l/htS0jCVWH7EN1JF7ivJVUOCju5AbT7Cu5+0ggOigZ2LGlHwqEDYa6OS7rMe2nCd9
 10dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=rUW2ZKDVmFU25rXuzcHzPnF/hKyMTjr3SA4HSJinQ+A=;
 b=WfywO0KIcdF8xJFqZuvfTEcWdJIb7UV2r069sj/pkGeHYJZLre+icSGE86MUGbQvP5
 yMzCw5IRn5fZHXstU0fxVPk9R/2+5vCgQTs6ndIpjnB7X+7BFePcO+sQZWMUA8RNmumK
 bSKsC8dIDlO5dvsHPM2fCECbyj6qVIgHjdMCD/ETSftpJe8vmJKcrw/IROseeHBU2+Um
 2BqcELNUfD0BFr79EnEOJ35w3t9A9o9vaJX/D5TXzKc8pbaqhk9FPfUEId+WMN+7JWEg
 5TdOG30keKV9f1LhKh5C2Zg2siZIlig3KL8eDUq+CsIQE1XcjQLX95wvFTR32ff1rKqY
 KfbQ==
X-Gm-Message-State: APjAAAVaoDCpVse2Tg+pD9XIWKPcDNyu1OeWgdyZPPyMrx36XkfbAqf4
 VGKckHbbCKhf2szJQK7dSQ==
X-Google-Smtp-Source: APXvYqzSir7sOGdsJSI/KFYTw6Uac+R9rdB36jKgfon7TP70OeKDdIUwYyz1f8FtuKCnvz/I5hcalQ==
X-Received: by 2002:a9d:51cc:: with SMTP id d12mr2946233oth.206.1568909289993; 
 Thu, 19 Sep 2019 09:08:09 -0700 (PDT)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id w201sm2983434oie.44.2019.09.19.09.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 09:08:09 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 6EBAE1800D0;
 Thu, 19 Sep 2019 16:08:08 +0000 (UTC)
Date: Thu, 19 Sep 2019 11:08:07 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190919160807.GL13407@t560>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iAyye-00At5L-7M
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.4
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

The following changes since commit 5c6207539aea8b22490f9569db5aa72ddfd0d486:

  Merge branch 'fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs (2019-07-31 13:26:54 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.4-1

for you to fetch changes up to c9acc3c4f8e42ae538aea7f418fddc16f257ba75:

  ipmi_si_intf: Fix race in timer shutdown handling (2019-09-12 16:03:18 -0500)

----------------------------------------------------------------
IPMI: A few minor fixes and some cosmetic changes.

Nothing big here, but some minor things that people have found and
some minor reworks for names and include files.

Thanks,

-corey

----------------------------------------------------------------
Corey Minyard (6):
      ipmi_si: Convert timespec64 to timespec
      ipmi_si: Rework some include files
      ipmi_si: Convert device attr permissions to octal
      ipmi_si: Remove ipmi_ from the device attr names
      ipmi_si: Only schedule continuously in the thread in maintenance mode
      ipmi: Free receive messages when in an oops

Jes Sorensen (1):
      ipmi_si_intf: Fix race in timer shutdown handling

Kamlakant Patel (1):
      ipmi_ssif: avoid registering duplicate ssif interface

Tony Camuso (1):
      ipmi: move message error checking to avoid deadlock

 drivers/char/ipmi/ipmi_dmi.c         |   1 -
 drivers/char/ipmi/ipmi_dmi.h         |   1 +
 drivers/char/ipmi/ipmi_msghandler.c  | 121 ++++++++++++++++++-----------------
 drivers/char/ipmi/ipmi_si.h          |  57 ++++++++++++++++-
 drivers/char/ipmi/ipmi_si_intf.c     |  98 ++++++++++++++++------------
 drivers/char/ipmi/ipmi_si_mem_io.c   |   2 +-
 drivers/char/ipmi/ipmi_si_pci.c      |   2 +-
 drivers/char/ipmi/ipmi_si_platform.c |   2 +-
 drivers/char/ipmi/ipmi_si_port_io.c  |   2 +-
 drivers/char/ipmi/ipmi_si_sm.h       |  54 ++--------------
 drivers/char/ipmi/ipmi_ssif.c        |  79 ++++++++++++++++++++++-
 11 files changed, 260 insertions(+), 159 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
