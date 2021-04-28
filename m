Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 577B736CFED
	for <lists+openipmi-developer@lfdr.de>; Wed, 28 Apr 2021 02:16:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lbXsl-0002uo-S4; Wed, 28 Apr 2021 00:16:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lbXsl-0002ug-Ad
 for openipmi-developer@lists.sourceforge.net; Wed, 28 Apr 2021 00:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MzkvnbEyxJtAGd0h3/FLJS51hociLz8+QPArNAOpdBc=; b=cwDu3i08Py4ce491R33hQhy5wY
 qeRIdV3SVkzddN94hy4Z1hwrQUFe/DZVPeMJq72dmZllIDCrFMJnWGWC5lRmRvTaLVXDv6HHGgO7m
 2Pted4Lb08wbqzvWbLzY1zNezK1gH22rnw0wri7n/dGmNpV6vUn/8y6b21tq3CX9zFBc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MzkvnbEyxJtAGd0h3/FLJS51hociLz8+QPArNAOpdBc=; b=C
 aCX6COeV0s7LWPrIXu5A68E3hsB2BVKj3N7/tnXg0y9b9bSGnG8O33S2Zn4F6eoWN+wf0Z9mRjGKU
 becNkhBN825t/9UX2nUCm/E1OtlFwc19KzlnnHPzft7oKZmEj/8w+d0PmRp9u7WGtc2xKy99OhAWF
 UuFt8Vg1ZeF52f/E=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lbXsh-001dNy-4J
 for openipmi-developer@lists.sourceforge.net; Wed, 28 Apr 2021 00:16:47 +0000
Received: by mail-oi1-f182.google.com with SMTP id n184so35388215oia.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 27 Apr 2021 17:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=MzkvnbEyxJtAGd0h3/FLJS51hociLz8+QPArNAOpdBc=;
 b=GQZjjuhIGAzVdxuyQVcsuJem/BHo5SYknlF2eR7P4LKlSDbEOW01by++aD7H2fgKmY
 07Cbz8HEF8G1lBsuw5HFAHs/ImcRpv3w6VIpsNXAf6joYcaCv4qzDHQ9gk1MlhaJJjb8
 B0InRz8lrsoMAGZI9x5XEuHXOQIFA377wz7w1/nt9W5NsH6p3JCZWNNddmVxIe95ROfm
 LLfApZ9mdqhqluiZSMI+rZjjmVVbXjHG7NwSnhZw8ycMHp2LXC975hcrhANQrZw75JFD
 ynMGo7td3x9FDk9QR4Sq6a9+zOwI+JVTwv8TuUJ4Oe3iQpKplBXTHuJ1aesSZTf8D/5V
 6feQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=MzkvnbEyxJtAGd0h3/FLJS51hociLz8+QPArNAOpdBc=;
 b=iOLpc5XklU/HjtvSToxc9rKQoyPipTOHvbqFqMpP1h1SSgj0c5QcYByV9sIWK1Pt9U
 r0toNjUkbHcM7nQk3MeP44l66x8AVyeYPpQoOJ2P1gSC2MXIE2yKqtuGL4MKUm7rD0Rh
 XyyRUbpEM5guf1oynsIKCqMsThM6eBg9obp1bJSoN4YDHuM9AB0k528YoaywZPzLFd/x
 TnqpyIkTcrHrqmjMC8NxvASg9UEd5enwcCJzChxQm4KNuDHPg8fqx7nB/TCY9gKLjFJW
 n7Y/Jt0eThnXVAGU+KE5UP/0TSgIsb/JWMMjUOlsdpqHIZIB9x0criptPKnCO/QZEdwv
 CCPg==
X-Gm-Message-State: AOAM5316JBziYNoxn+3qmW1OWxOyNDQ7lfgx9NtGxfsEz59CqBzJzesU
 B6lSMrN/Zbq+jDAuetlaMA==
X-Google-Smtp-Source: ABdhPJw6pyIo1JB4iyLgAOR4dBJefPZ+0/jdcjiFZ4GD/+OHli7bR89qDafU8aI9XBIet6n9f8VFKQ==
X-Received: by 2002:aca:db41:: with SMTP id s62mr18156719oig.54.1619568997369; 
 Tue, 27 Apr 2021 17:16:37 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id x3sm394177otj.8.2021.04.27.17.16.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 17:16:36 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:245c:a96e:2726:2306])
 by serve.minyard.net (Postfix) with ESMTPSA id 844DE180001;
 Wed, 28 Apr 2021 00:16:35 +0000 (UTC)
Date: Tue, 27 Apr 2021 19:16:34 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20210428001634.GB18645@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.182 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lbXsh-001dNy-4J
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.13
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

The following changes since commit a74e6a014c9d4d4161061f770c9b4f98372ac778:

  Merge tag 's390-5.12-3' of git://git.kernel.org/pub/scm/linux/kernel/git/s390/linux (2021-03-10 13:15:16 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.13-1

for you to fetch changes up to 07cbd87b0416d7b6b8419b2a56bc63659de5d066:

  ipmi_si: Join string literals back (2021-04-02 12:53:42 -0500)

----------------------------------------------------------------
A bunch of little cleanups

Nothing major, no functional changes.

----------------------------------------------------------------
Andy Shevchenko (10):
      ipmi_si: Switch to use platform_get_mem_or_io()
      ipmi_si: Remove bogus err_free label
      ipmi_si: Utilize temporary variable to hold device pointer
      ipmi_si: Use proper ACPI macros to check error code for failures
      ipmi_si: Introduce ipmi_panic_event_str[] array
      ipmi_si: Reuse si_to_str[] array in ipmi_hardcode_init_one()
      ipmi_si: Get rid of ->addr_source_cleanup()
      ipmi_si: Use strstrip() to remove surrounding spaces
      ipmi_si: Drop redundant check before calling put_device()
      ipmi_si: Join string literals back

Heikki Krogerus (1):
      ipmi: Handle device properties with software node API

Liguang Zhang (1):
      ipmi:ssif: make ssif_i2c_send() void

Terry Duncan (1):
      ipmi: Refine retry conditions for getting device id

 drivers/char/ipmi/ipmi_msghandler.c  | 60 +++++++++--------------
 drivers/char/ipmi/ipmi_plat_data.c   |  2 +-
 drivers/char/ipmi/ipmi_si.h          |  8 +--
 drivers/char/ipmi/ipmi_si_hardcode.c | 73 ++++++++++-----------------
 drivers/char/ipmi/ipmi_si_hotmod.c   | 24 +++------
 drivers/char/ipmi/ipmi_si_intf.c     | 38 +++++----------
 drivers/char/ipmi/ipmi_si_pci.c      | 22 ++-------
 drivers/char/ipmi/ipmi_si_platform.c | 95 +++++++++++++++---------------------
 drivers/char/ipmi/ipmi_ssif.c        | 81 ++++++++----------------------
 9 files changed, 137 insertions(+), 266 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
