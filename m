Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E749C7DE6B1
	for <lists+openipmi-developer@lfdr.de>; Wed,  1 Nov 2023 21:10:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qyHXJ-000102-E7;
	Wed, 01 Nov 2023 20:09:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qyHXH-0000zs-AT
 for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Nov 2023 20:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IeufSj0n6hMJbgpG5/8Ozo6xGL5uwP7BoRuRS4U9yYQ=; b=XxPktbEc/rJtVNysCf7fx2w19B
 +XuN7GaPSH4Df/8ZEY9Kvu877WMCKHKT11TJjcOTByO3oZOTcl1FvP6u6HJE/iJ8cW+aUzHtoKOVQ
 WLBcx2EyIAnq5mi6OjWTgjdgOaLPh/vdopnVHKdMvKqAa0oE7zUL3Ofi8G4/000nv33k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IeufSj0n6hMJbgpG5/8Ozo6xGL5uwP7BoRuRS4U9yYQ=; b=a
 9GI8KSqxN9g0POmUkmWeGdJFbVUG0mZIW9Y27AKCclOY2MyFR4XRoLjQ3gq8N2UhHqqp3O/8SKPJO
 1XvOKMq8btncMCcL7+guTJ8c1y//k+iHpLVxHNOqQNAbma7NrrQbIIpUODvGD7xXMYwhWYFgzjl6n
 BD1RhnzHZKXVggEI=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qyHXC-0004JO-W3 for openipmi-developer@lists.sourceforge.net;
 Wed, 01 Nov 2023 20:09:55 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 46e09a7af769-6ce291b5df9so81910a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 01 Nov 2023 13:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698869385; x=1699474185; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=IeufSj0n6hMJbgpG5/8Ozo6xGL5uwP7BoRuRS4U9yYQ=;
 b=MU2QkEHd+4HI6hYsEJUaAipEtYhMGY6K0pD/ReZCEYeINjZXwxFo2TSaC5HdQn+7Xh
 6/IKtYYLzS6c/uztfwPuGHJVnbFry0OnUT/5X9hnOH88KwdC0IfdkQYJEoaFOZOGJIyV
 3aQkxapXXPr7y29PGziSGulTKOKvPSE5b/tpXqMsJmJVHX4fRHeD1zjBrwC0v+4KV26P
 FvvLYuEt658G6dYj4oY4QTDjDK2z5zyJWgb7ItIUXXzPC31KcK67EhCKYf/DcOBCVIzB
 NXbLhvjwMgRDMGesjq0wIMkqcP9okoV21+kO1uzIE8LqXcnLQ+YA5Dg5Oh+eEFg7ajAS
 d1jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698869385; x=1699474185;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IeufSj0n6hMJbgpG5/8Ozo6xGL5uwP7BoRuRS4U9yYQ=;
 b=FmAJ9eTY1y9IITcxoWCPUL16rA8aVscjcgIjVtLF/OolqGYCydc8iJoCUj/3AXbXCv
 NDm6KArFCKgFeAdWpMRVjaBhOsqmsf7JAgVxJsLeEYxhJ7u2NlXOQTifI4/kllSb0q1y
 ENyvTKBelYfGFiBFClXyzbo1n0Q/cdhrnxW1Lc3wy03jcYIp6KbYJlofkVDQCjKq2/My
 XFAfkvVL0IF9lpCHdj3bIgkr2kxd2siUZb68VwpXf30FFMF0iWJS22f73xUWKjooyID9
 rW8jU2ejNxY4EVsJN5AZqN9wSbuQ3v7PkOoLVi25891v1Z+3CPKWaV7v7CDOdu8K5lXa
 QgSw==
X-Gm-Message-State: AOJu0Yw+6ux5gD7bSlVbc22WnlUgQ/lsnxLeIYtI3Z7aM3XipurBvmRs
 iBWAMgDdWO1QyTHQKqPttTUocvBfVQ==
X-Google-Smtp-Source: AGHT+IEd6UQ0Ln42FZfBQMeNQF+AaOIGY8fS/cR2U3qjwR0Kt3SjLxLjX6Dj9zpHTiPFunkR6w+YvQ==
X-Received: by 2002:a05:6870:a548:b0:1ef:b669:ba1f with SMTP id
 p8-20020a056870a54800b001efb669ba1fmr14783183oal.8.1698869385201; 
 Wed, 01 Nov 2023 13:09:45 -0700 (PDT)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 er1-20020a0568303c0100b006b74bea76c0sm300868otb.47.2023.11.01.13.09.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Nov 2023 13:09:44 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:6bc2:793f:82fc:c2f9])
 by serve.minyard.net (Postfix) with ESMTPSA id 249F4180053;
 Wed,  1 Nov 2023 20:09:43 +0000 (UTC)
Date: Wed, 1 Nov 2023 15:09:41 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZUKwhZT4CCwv3FOP@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 3669558bdf354cd352be955ef2764cde6a9bf5ec:
 Merge tag 'for-6.6-rc1-tag' of
 git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
 (2023-09-12 11:28:00 -0700) are available in the Git repository at: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qyHXC-0004JO-W3
Subject: [Openipmi-developer] [GIT PULL] IPMI fixes for 6.7
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

The following changes since commit 3669558bdf354cd352be955ef2764cde6a9bf5ec:

  Merge tag 'for-6.6-rc1-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux (2023-09-12 11:28:00 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.7-1

for you to fetch changes up to b00839ca4cca8aa9641c121c848a553d6220ce70:

  ipmi: refactor deprecated strncpy (2023-09-13 12:55:11 -0500)

----------------------------------------------------------------
Pull request for IPMI

Well, only one change, and I would normally just wait, but it will make
the people trying to get rid of strncpy happy.  Its a good change,
anyway.

----------------------------------------------------------------
Justin Stitt (1):
      ipmi: refactor deprecated strncpy

 drivers/char/ipmi/ipmi_msghandler.c | 11 +++--------
 drivers/char/ipmi/ipmi_ssif.c       |  2 +-
 2 files changed, 4 insertions(+), 9 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
