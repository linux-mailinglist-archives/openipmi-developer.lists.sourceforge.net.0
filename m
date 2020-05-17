Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 660801D6C9E
	for <lists+openipmi-developer@lfdr.de>; Sun, 17 May 2020 21:50:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jaPIm-0001Co-0Q; Sun, 17 May 2020 19:50:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jaPIk-0001Cg-UU
 for openipmi-developer@lists.sourceforge.net; Sun, 17 May 2020 19:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k0Vy2JKz3hLpstsmuXUIcjAr4k7iKphhSMu0USzZSkY=; b=j8JUgPEsY5zWBhlnWH+NvyXvfo
 61W2eEezDk0dQbA02+x1XukrD5XGG5Y9vTrrpSX1I3DN7ztTuzmeANTYKeMDCrDxa1HuUdc1v6EXm
 h/fvDyTsD4/IOuD8I8N86VtXp58utkk3P2AFbfC2t/DLr9tVqz+QPku6GfKggzTVKF3A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=k0Vy2JKz3hLpstsmuXUIcjAr4k7iKphhSMu0USzZSkY=; b=P
 EzkMu7Dp7XJQ7+EiYUcdBuOI6/35KwXEKE7kxkXEzAKJPkPMOXwXhOx/0fo0dEXak38Vw/R0MmojA
 92PXOolHYW+v2Ln1LygiEJ6AbUw2BLiawXLs+h6q/qynIFtRL6HqBLqCI3ir9Zb9o2hAAD/7a218h
 ZOnPwZ2a0xyMjedc=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jaPIj-00CZQU-6w
 for openipmi-developer@lists.sourceforge.net; Sun, 17 May 2020 19:50:22 +0000
Received: by mail-oi1-f194.google.com with SMTP id p127so7210903oia.13
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 17 May 2020 12:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=k0Vy2JKz3hLpstsmuXUIcjAr4k7iKphhSMu0USzZSkY=;
 b=lTFOmEPeQBUHyds+RZPBW9juqTXl0B0Y5WugRQUSEyJ23nhG7W0SPHOFVjApu4s4Fn
 oxhJP7YX7J/SS+x1iLLW2SWN+JLW5ItTBEg7+VOJdrNTk49d4IWukEPV22Dn4xRe9hj3
 DdaVdGST/HhbtuwFXYVbpkVj/H4CDTbfmpNol35xUzhnqCPnBeZyY6PKVEbjTKsY440q
 olbHjXLcF/slyiwLLokyH4OKBcYzSxSI5/o2wx9/JybxJPPxHt0+XWewH14IlR7asMCD
 1QJTNDj6oKFKoDRMSk9XubI1EANdNvyVPOYIpkTZw5DyVTlIcz1h/wjF64EZuRu5F4ng
 oAiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=k0Vy2JKz3hLpstsmuXUIcjAr4k7iKphhSMu0USzZSkY=;
 b=rLSd7G5BArhtE3Be6f1uc35eH4qm4GC5BjO45WSWAj237SxTY+9WO5lKgjnGu6sRyl
 IGGhw3II+g3EFg1ROLqeOhKsg0rdNEBAvD56hUWlXCJt87H0inEaisbRAFvINhN7bSMM
 8ELui0mL88R42vJWX7m2SzKKhJA1mCUda4wub3C6mJfMLf8HHNpb3oydlKdMLw82/Srx
 C1R3k31igqae1TJVgvhYLflSdcjmZCkjz8J9a4XZqvwVO+VYFGTjekCdi7PYRhSdRMcd
 VYnWnczul8kZzibgd2svAl64C3yFVr6+es+LzW0i/DYsTtL7LT+gnY4C2GGpJBStLcB1
 M++A==
X-Gm-Message-State: AOAM533cytLYLFdmPEIlQVLZHzDkbOpY/4jCHW3ZEEFIJGXAKFIjMepE
 /dHtxAH0cO6M4B4Hvnx7EE0GkXg=
X-Google-Smtp-Source: ABdhPJyArA5KB6iogMf407HCCcXuxvQ6zH0jioB/vjiAMRBjrUm2MkRmAgfSqWYYgPXtdu5lLIBM4w==
X-Received: by 2002:aca:318f:: with SMTP id x137mr9104312oix.4.1589744574980; 
 Sun, 17 May 2020 12:42:54 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id z63sm2354213ota.55.2020.05.17.12.42.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 12:42:53 -0700 (PDT)
Received: from minyard.net (unknown [192.168.27.193])
 by serve.minyard.net (Postfix) with ESMTPSA id 81008180050;
 Sun, 17 May 2020 19:42:52 +0000 (UTC)
Date: Sun, 17 May 2020 14:42:51 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200517194251.GD30085@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jaPIj-00CZQU-6w
Subject: [Openipmi-developer] [GIT PULL] IPMI second update for 5.7
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
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.7-2

for you to fetch changes up to 653d374771601a345296dd2904a10e6e479ad866:

  char: ipmi: convert to use i2c_new_client_device() (2020-05-14 15:37:31 -0500)

----------------------------------------------------------------
Convert i2c_new_device() to i2c_new_client_device()

Wolfram Sang has asked to have this included in 5.7 so the deprecated
API can be removed next release.  There should be no functional
difference.

I think that entire this section of code can be removed; it is leftover
from other things that have since changed, but this is the safer thing
to do for now.  The full removal can happen next release.

Thanks,

-corey

----------------------------------------------------------------
Wolfram Sang (1):
      char: ipmi: convert to use i2c_new_client_device()

 drivers/char/ipmi/ipmi_ssif.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
