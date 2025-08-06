Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC79CB1CDB8
	for <lists+openipmi-developer@lfdr.de>; Wed,  6 Aug 2025 22:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:To:From:Date:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jtErE2LJplA5PpZK6FWukr8LYmgq1bdpK5Yo8Qlrcd0=; b=SRwzwnddEEuiyXGxu00a3FqhXC
	SMrg3xijZ7Efh0LrBKELTwv+E+Em3Dc8LyyB3YQ7Xu28WBxIWZjOivyf+z3Cf7/fjbfkjtPi3K0P/
	HhSeJ4lAHnkGhSPA9s5Nir5eIbEHEeCbELKwmMZY4+mZIZCIRgXAr68bBDVHCp+1ZeH0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ujkxh-0006BS-3w;
	Wed, 06 Aug 2025 20:42:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1ujkxf-0006BK-Hd
 for openipmi-developer@lists.sourceforge.net;
 Wed, 06 Aug 2025 20:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D9jp6N1K17uriKU9KeaR5LvyZhJOSZW9pDw85wt49U4=; b=Jilfs2pgtiu/uwshQYS8XoNRqQ
 8YVAgWGZl6hqx6rI6d7Yby+oqM2a+aUSzwDvEnAoauRg3U/hQ3jZp0hky5N3QI2Dga5shTpM30/1X
 mre3v55fbDiLw1kefWLz9w67WmShJV1yxLp11dCzoCOP6FVOAQFzJbmqtTDvuKgQswII=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=D9jp6N1K17uriKU9KeaR5LvyZhJOSZW9pDw85wt49U4=; b=W
 kj/B6q30+jkpQqlTPsZWaaqLAL0pbZpIcucoCBR9AgclRNYRsGHgk2A3Te1VUfZ5Kc7upjbIY9g4/
 WbaXnjGInBctKAVvgdfsQPQons8d3UBxYIhiF1ZSqznRJnIo/8vKmQjLd5LfcFea7VGe4YZC/f3WD
 IHVyKUa0sntP1H7g=;
Received: from mail-oa1-f46.google.com ([209.85.160.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ujkxf-0000kL-0C for openipmi-developer@lists.sourceforge.net;
 Wed, 06 Aug 2025 20:42:11 +0000
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-30ba01fca64so156049fac.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 06 Aug 2025 13:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754512920; x=1755117720;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=D9jp6N1K17uriKU9KeaR5LvyZhJOSZW9pDw85wt49U4=;
 b=kl3d+O9Fa2AzZmeXSiZQXB5A5wEFA28PNfI8SesRxFaQHLM1A76GNtv0d/i1syNEMO
 jLKZ6IYiKQMfDnn/tcuQqmfKMjLaF57NeM3XkUFjzVPs5L1RM93KkkNYyA7ZU9wxdS5g
 gAMQuCCoDvpq1XbPWPAgqtgKebB0+/pjGF1U31IG3RVhUeeeiJMtTLicmid5dfvSz/X6
 1OTqR6Ak721yQeaAxC3SfgZFPCbJr297f5a2Qqn4G3Su/PFcqjiMVievK+RoFmhcZDUZ
 DU+ls/R8jHcObSXrcT2wprVhEXzfSfmnsqd61UqwLmDVYjmlQ5oPKhBLfHQAS/PrDub9
 nDhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754512920; x=1755117720;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=D9jp6N1K17uriKU9KeaR5LvyZhJOSZW9pDw85wt49U4=;
 b=mrDzLFpL5kVtIYNt5ji7hs9XSW4Aa3m/YgFcWSbHdoWJVTXVQ4AloBCgu1OX79UthR
 0RwBpnBanHbUyQaovQQzZtW7egPjzhX6puvDzCvd3vyGVGBqFizqzEQ5wz6Qc5yDdTzw
 MWWF04qrg51/Qny6Bp7eQzP78OnWpgK+57DRFHolqElsp5wkTZ9U5YYZZOB66gxirKwy
 xP31nNb3xNcsRksiugzc63SXJp3ilubAT5Y6APE2uTu5aqahffuo/ADQly1cf5/kfLeo
 xBHFD0YaGMfOLxa6vS703iH80hivH/4/wMTcxdTtFbDv3LiNmkKMBQN5vp3qK/X0GLAq
 4oZA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIwRSZYXJaBlortqnEf23ZEldTgGaZCU7BrhQrwm1wJvTQiKhz9xfl9TwMTvQs1ucM05nMdlKhYO5D4XqffhU+ymM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwyPz/TrB+dTeok2J+UASzH4w5fneH3vZw27DsJrRkdAmnzLVxc
 h8qt8DTW+0Eay4Q1EW8OC52GC02JFIbxItahtrSahfBLGW3gVVwqOFw4OxmzvKJpi80UVRTWJf8
 m69uw
X-Gm-Gg: ASbGncv/x/VX+O5FdciGbPGr1skEdsuPTRQwn41VX5N4tE79xhbYWXFH0YFUnVEA3Oc
 PWlT94LdMw3v0fJypVzeW99J81/7s+BxQbkMT/++h6mE3lqs9od2IFZb3SJektuwogZjv6gOJIo
 4EZlK35GdMtCVKWFJsv2f1JGd6RTRqALWolYB5xbXkc0f9tsNGb/SosMSQMFmuG8nXtegRiHiuq
 zMn6WgkRs5uLlEq53Hf7M28tG9Rg8Aqr8Nh/2ubsMPaZk/0AU9t7KIAHL/5GC632Pl+ebQ92YLk
 oQfsKBfW8zre11pLsmmLMgUTSGgfoyaYDP1z0XiK+ClmadYxHhbE1k5bKoTwMKA0DQv52gT+bMP
 CGVt1w5nsycdQtDPXjeSGXjtYBw==
X-Google-Smtp-Source: AGHT+IFoFhRex+wbXgzoIwHX6xTHB5pmmR/VLnQuQPkYnmodJqbSE9/sZ7BwJArJLWGQ7WcpHBtyPQ==
X-Received: by 2002:a05:6870:5592:b0:2d5:1894:8c29 with SMTP id
 586e51a60fabf-30be2bcb7b5mr2809482fac.23.1754512920213; 
 Wed, 06 Aug 2025 13:42:00 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:bf4a:88b3:3a0c:4264])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-74186daca3asm3597075a34.48.2025.08.06.13.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Aug 2025 13:41:59 -0700 (PDT)
Date: Wed, 6 Aug 2025 15:41:55 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <aJO-ExS1Zz-eMuZe@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Something came in a bit late (the rate limiting patch) that
 I wanted to get in,
 so I waited a bit with it in the next tree before requesting
 a pull. The following changes since commit
 cd2e103d57e5615f9bb027d772f93b9efd567224:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.46 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ujkxf-0000kL-0C
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.17
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

Something came in a bit late (the rate limiting patch) that I wanted to
get in, so I waited a bit with it in the next tree before requesting
a pull.

The following changes since commit cd2e103d57e5615f9bb027d772f93b9efd567224:

  Merge tag 'hardening-v6.16-rc1-fix1-take2' of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux (2025-06-01 11:37:01 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.17-1

for you to fetch changes up to ec50ec378e3fd83bde9b3d622ceac3509a60b6b5:

  ipmi: Use dev_warn_ratelimited() for incorrect message warnings (2025-07-10 07:59:43 -0500)

----------------------------------------------------------------
Some small fixes for the IPMI driver
Nothing huge, some rate limiting on logs, a strncpy fix where the source
and destination could be the same, and removal of some unused cruft.

----------------------------------------------------------------
Breno Leitao (1):
      ipmi: Use dev_warn_ratelimited() for incorrect message warnings

Colin Ian King (1):
      char: ipmi: remove redundant variable 'type' and check

Corey Minyard (1):
      ipmi: Fix strcpy source and destination the same

 drivers/char/ipmi/ipmi_msghandler.c |  8 ++---
 drivers/char/ipmi/ipmi_si_intf.c    |  4 ---
 drivers/char/ipmi/ipmi_watchdog.c   | 59 ++++++++++++++++++++++++++-----------
 3 files changed, 46 insertions(+), 25 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
