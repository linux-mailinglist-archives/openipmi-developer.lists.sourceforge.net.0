Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9D3BD324B
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Oct 2025 15:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:To:From:Date:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4QIF6i6+zunnHj1tgLnToYoA3AQcXzmQs7vmZ3K1LM0=; b=KquXk+NYMcvlSIPLoq9bjFZZ94
	G0DpUJEq3S251bxbiMJ8oFkq1mivxVEBv0vMLUJgcEVR3e3yh4w6iYpzfcahNzCfd9b7+V+jxGxcJ
	VcZsoEOXdcKYDOFHgyjPmzK8pVaVfE0QslKpflBNM8Yd9NpiasQyzj6Pa3gpW/EF1qZ4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8IKM-0005G9-Ic;
	Mon, 13 Oct 2025 13:11:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v8IKK-0005Fj-Hm
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Oct 2025 13:11:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m3Gfu3e8nCRXSOVyjhQI71hHhbS6IxG+1qSKutGMsDI=; b=A1nEoyC4EzjoRHmS29kdST/klr
 ty6rO5SfFeJ3sgxqLagn6nPsUfBpKKELAUOrvGqoxJz4U7dvYJYVK0ZtnIX0lIbqG3NeAsHcSYxPa
 SynWaXNGAf6rZPxFeVALebvLUy9P9eFu1PTyqUCdYj4Lmr0nA+QJITPKXVXTnKTkgiXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=m3Gfu3e8nCRXSOVyjhQI71hHhbS6IxG+1qSKutGMsDI=; b=M
 1fICKogU5eT4dZhdaBLmHgS0YZCYzMdtniTbP80C8vdiW2UTcD7AlJTCRaUKSskoNGdZjdQJfGQJK
 UjdkLAOAyBlpnETPctkQczwk8D5x1UiF2U/856zb0YwgthaEvMQ/pqO4/KRIpA6gUR4tNu9KDMPE6
 +AXSzBu2juzYRZk0=;
Received: from mail-qk1-f177.google.com ([209.85.222.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8IKJ-0006ot-Vq for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Oct 2025 13:11:00 +0000
Received: by mail-qk1-f177.google.com with SMTP id
 af79cd13be357-856328df6e1so550864285a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 13 Oct 2025 06:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1760361049; x=1760965849;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=m3Gfu3e8nCRXSOVyjhQI71hHhbS6IxG+1qSKutGMsDI=;
 b=zSre/Cg/QOKaN0RKwYzHBRxqbHxxUlkr70KFOnPxc3+2y2b0CDCPZv+KC44sQHr7fA
 aKYzd8ZYhbHirS5v6rg/hDhFWx+6BAJjgC6Ngb/VADayCNvGS+KAxxBVRtvLm8MRMXMw
 2h4RyRhOxfLOPNOKHkTl7JL3pfYrOCvblpitLwLEPUSAtDy+USbL6fDtHT066fdHfU75
 qU5sokO0PROIWSiFGcWpQh2Z9iW+KtY3MQS9Rg5wcKf1UN6y4s5iRQ8e3ymjDvzOu90R
 OClEQej5PeK6gttONQhcnOe1wATEAAlmzMe2OO1cgJqaPLLBwSKxLis/pYlfWd7zarCG
 +H7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760361049; x=1760965849;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=m3Gfu3e8nCRXSOVyjhQI71hHhbS6IxG+1qSKutGMsDI=;
 b=bcpXaQgJ3wFKSjwINSRpHvF5bmYjL1z5fevs2aDBBbYSx3tuTqM8DBdzJJdT7ulOiB
 l/d6e1hhXcRlw/WyBnC7ZFVNh0HxXBBoOHaZrtE+NpsTCj9CRS4GK7lmMmpyk27msA7A
 a9JLPLbolRAbGE5aWdIl+tnz6JwjLWrfsSjZ6SWWjETyJII1bvTSWxUq+6qq/xD4JxXM
 o2gPOCWsalxQMCSGvDjC5FFT+6JbHqKsM0RnJkAxVYjA8vfHP4pqGFctifUZi7VOQbhP
 g8dpLb3hML03znWinQbEbYFIR/URrcjPlE8NgzU18wQhgPrWzvTxIf3PHI3a1xvsOXwk
 4eKg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV/CHebb+LouBKz1hbT9rLF334cvzlXNjOsbAM5M6Hxg6MVlYhsm+wLTiMLMkHc0HhozjmPPG9+GlQBzfmnje+5F4g=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwA6rT1Yjmp+E3Xwc7oFAGDxdJUnJorXvrcT40vFFlmh5k+8NhL
 yOQH3RwV0kBJZ05E/MHrscfkNcjFOmFTKaF6+wCqGcw0FQF/Ro0qDPogQCQfIPYeyMs1FoJRMfb
 mSntfcak=
X-Gm-Gg: ASbGncuphNAQ0mkATuDr5UnN4BOpBjh2C8/RH/gDKCM7TYqHKtRBR1SgEiz5mXEFJOp
 A2ikGHCv7HE+rpsOMSDAP4X8javz3HT5HVns+Ugn7l6v7Ng2Nr58nzMlsnhxgPDKVOEUL0ZPzy7
 X38xtHbwQQuEG5miWWh/lcyumieGt9PouQqUpY9kZQxRWWubuJGCiGCxUBK2/wZ5TqLh2z8sTFb
 MAVBm+NMAogMJ5j4xYBadyLLBvu9VJr1qx3HFptqLCNGhdcSjbP1vHkLMr2FmRc0RYZL9byzbKr
 Jds44w3MNp4USu1XhAmG0o1M4mrobto/fwWbmIVjeF/y4rTtJkbN8Ozh647hf6n9oYSdV6VVeXg
 ToTyfGDV+gMrfx0yJQ+XAOleUtIbBNwNiGKM65sBKyCOQ1eUW3yY7P+w=
X-Google-Smtp-Source: AGHT+IHKpxaVS92Avf9ofvKsLY/RI0Q8LbKEn40W3SPaMYIdQootNz+ePlCODloQmspejcftZKx2Jg==
X-Received: by 2002:a17:902:e78f:b0:277:71e6:b04d with SMTP id
 d9443c01a7336-2902735691cmr270188135ad.3.1760357345428; 
 Mon, 13 Oct 2025 05:09:05 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:866e:775a:d8e1:7566])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29034f08d1bsm131411535ad.68.2025.10.13.05.09.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Oct 2025 05:09:04 -0700 (PDT)
Date: Mon, 13 Oct 2025 07:08:38 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <aOzrxmNP1kT0FOxB@mail.minyard.net>
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
 e406d57be7bd2a4e73ea512c1ae36a40a44e499e:
 Merge tag 'mm-nonmm-stable-2025-10-02-15-29' of
 git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
 (2025-10-02 18:44:54 -0700) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.177 listed in wl.mailspike.net]
X-Headers-End: 1v8IKJ-0006ot-Vq
Subject: [Openipmi-developer] [GIT PULL] more IPMI bug fixes for 6.18
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Guenter Roeck <linux@roeck-us.net>,
 Greg Thelen <gthelen@google.com>, openipmi-developer@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The following changes since commit e406d57be7bd2a4e73ea512c1ae36a40a44e499e:

  Merge tag 'mm-nonmm-stable-2025-10-02-15-29' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm (2025-10-02 18:44:54 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.18-2

for you to fetch changes up to e2c69490dda5d4c9f1bfbb2898989c8f3530e354:

  ipmi: Fix handling of messages with provided receive message pointer (2025-10-07 06:50:08 -0500)

----------------------------------------------------------------
IPMI: A few bug fixes for patches that went in this release

Things that need to be fixed before final release, a refcount error and
some missing or incorrect error checks.

----------------------------------------------------------------
Dan Carpenter (2):
      mfd: ls2kbmc: Fix an IS_ERR() vs NULL check in probe()
      mfd: ls2kbmc: check for devm_mfd_add_devices() failure

Guenter Roeck (1):
      ipmi: Fix handling of messages with provided receive message pointer

 drivers/char/ipmi/ipmi_msghandler.c |  5 ++++-
 drivers/mfd/ls2k-bmc-core.c         | 12 ++++++++----
 2 files changed, 12 insertions(+), 5 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
