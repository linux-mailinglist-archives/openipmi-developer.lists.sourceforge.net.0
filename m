Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B33FD1A46B0
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 Apr 2020 15:29:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jMtiY-0000nk-Pj; Fri, 10 Apr 2020 13:29:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jMtiX-0000nP-JT
 for openipmi-developer@lists.sourceforge.net; Fri, 10 Apr 2020 13:29:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5zxEAuEDjXmiW8+ZquBj+33DwvOSKS3hGPuZSFQhDJo=; b=AACvDyDt9mLaGNqWErympcrFLc
 FPyY+Pqih1wHl97paUh49KSL58Xf/IL9WY+M/kXHoPxANMz9vy3Y6Rlyw2CEqrlO4To7yuxNwcjmu
 9dNlJn5l66myQya56HivCNq43+vai43+aISZ0YfU7NHUe3orhV0aiQaXtSUuBkcCFVNQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5zxEAuEDjXmiW8+ZquBj+33DwvOSKS3hGPuZSFQhDJo=; b=k
 Ns6n7ovjwQ0OQksCPxeH8VN8zia1fK+QnUIx2jqH31yIdcFurvSLn9l4ceoeFjuh1NgZ5xN3EnVQ2
 jDrkn9kTLmlInDocy5+Bg5X/oPwm7/w0fzRwvM5N7zo8aTTgj8oCqxETRXwou4sbw5nUL/FQcnawH
 qJfy03pufW2c5eqE=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jMtiT-00EOZY-DI
 for openipmi-developer@lists.sourceforge.net; Fri, 10 Apr 2020 13:29:09 +0000
Received: by mail-ot1-f65.google.com with SMTP id 60so1796775otl.12
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 10 Apr 2020 06:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=5zxEAuEDjXmiW8+ZquBj+33DwvOSKS3hGPuZSFQhDJo=;
 b=u6Xg/b7Gk6GNT21oeypp96PVJXKe7Y7qwoUZaZe3lpqyonFsary/ncqzlgQ0F0WI7Z
 JQk5KPzImBN0fhBU3IRy0auBD3c+E7qtpykSf6een3+auN1JAAefp6tIhFkafUneYEVw
 h/aJQ9gw3iWV8j8WNaq8Bi8elpgAmC1tEm7i7Anq9F4942Q3Fc/LWr2N9UBQhE/d3Ej3
 epny4pPOIl3yLrEz/2gnZM5Myj7gzEeG62kiHyQ+3zn24oWPe/pcAozYr2dJTelBRD4D
 N+vF9+Imn/9bC9bmR/ZOm7sZ2ZyNcvFydSNvZ/+LwxQn0HwMjkmYo3f2nrRYuFuSRwcJ
 0FNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=5zxEAuEDjXmiW8+ZquBj+33DwvOSKS3hGPuZSFQhDJo=;
 b=swJojgt0xTAlr5hTTp1f/5Nu7KIqUHozq+oEmmhqrAhKV78kJdg8DvbSC+qdTNb/u+
 ssmwgw8ynIWG72MslGLa+POb95lLgmpVfFMKf8/anJitfGsbPKfMdVgtJwNN+bIrQai5
 c53Dq5CwEfYox3hHbyVFl2IbLysfeZkUnlGKCEL4KfjY8VU7FDrIjPAwaD6qPFvnkPeq
 uFpqoyR5GpYoXvAMm2xkgNCnQVT3H9cMfjyZXw37+Km8tLHetrrz/oqtid0VvhtUuZpg
 kTpULsPO7heDu13Cc85y4nHdgPFpm5Jrl7RCldFtoNHkxqEtgmXmEO2enBPab5SHle9x
 mrfw==
X-Gm-Message-State: AGi0PuYKA+9momHA8qU3gPSI0aUsl45oMOjjtu7cz66birvSXfz71Wp6
 p43jlpL33FpEayFwy6aVDQ==
X-Google-Smtp-Source: APiQypLYReQTsloNqceBDNCD3C11NGH3akgDvz2gDKkdD9PD0ISozvqGB/a4okViZKLbCc3qtjem5Q==
X-Received: by 2002:a05:6830:19d8:: with SMTP id
 p24mr4210363otp.309.1586525339486; 
 Fri, 10 Apr 2020 06:28:59 -0700 (PDT)
Received: from serve.minyard.net ([47.184.130.101])
 by smtp.gmail.com with ESMTPSA id f45sm1193341otf.30.2020.04.10.06.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 06:28:58 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id C35F7180053;
 Fri, 10 Apr 2020 13:28:57 +0000 (UTC)
Date: Fri, 10 Apr 2020 08:28:56 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200410132856.GI6130@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
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
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jMtiT-00EOZY-DI
Subject: [Openipmi-developer] SUBJECT: [GIT PULL] IPMI bug fixes for 5.7
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

The following changes since commit 3cc6e2c599cdca573a8f347aea5da4c855ff5a78:

  Merge tag 'for-linus-5.6-2' of git://github.com/cminyard/linux-ipmi (2020-03-12 09:59:36 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.7-1

for you to fetch changes up to e96387677c2a4a35a0c8b16cd517696a04050062:

  ipmi: kcs: Fix aspeed_kcs_probe_of_v1() (2020-04-07 08:35:40 -0500)

----------------------------------------------------------------
Bug fixes for main IPMI driver, kcs updates

A couple of bug fixes for the main IPMI driver, one functional and two
annotations.

The kcs driver has some significant updates that have been pending for a
while, but I forgot to include in next until a week ago.  But this code
is only used by the people who are sending it to me, really, so it's not
a big deal.  I did want it to sit in next for at least a week, and it did
result in a fix.

----------------------------------------------------------------
Amol Grover (1):
      drivers: char: ipmi: ipmi_msghandler: Pass lockdep expression to RCU lists

Andrew Jeffery (3):
      dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
      ipmi: kcs: Finish configuring ASPEED KCS device before enable
      ipmi: kcs: aspeed: Implement v2 bindings

Dan Carpenter (1):
      ipmi: kcs: Fix aspeed_kcs_probe_of_v1()

Jules Irenge (1):
      ipmi: Add missing annotation for ipmi_ssif_lock_cond() and ipmi_ssif_unlock_cond()

Wen Yang (1):
      ipmi: fix hung processes in __get_guid()

 .../devicetree/bindings/ipmi/aspeed-kcs-bmc.txt    |  20 ++-
 drivers/char/ipmi/ipmi_msghandler.c                |  18 ++-
 drivers/char/ipmi/ipmi_ssif.c                      |   2 +
 drivers/char/ipmi/kcs_bmc_aspeed.c                 | 151 +++++++++++++++++----
 4 files changed, 153 insertions(+), 38 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
