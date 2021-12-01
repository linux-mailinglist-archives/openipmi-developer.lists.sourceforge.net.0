Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4AA4656C7
	for <lists+openipmi-developer@lfdr.de>; Wed,  1 Dec 2021 20:57:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1msVjP-0001XB-9v; Wed, 01 Dec 2021 19:57:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1msVjN-0001X4-KU
 for openipmi-developer@lists.sourceforge.net; Wed, 01 Dec 2021 19:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=14/d54RDwtk2CS4Rg9GfJZQeZjQOY7xNprxxaiC/1sg=; b=kZ5vL8hb+EZSrTxyGWFjuCh7U8
 CTGZu8PK6snBFxb9auiSGTNt5yZz9pPT30KJARaz+9S1PZ1FiTeSSr/rNi2+B306oL4BtS6UN/pQC
 5JLpjdcwQFUstJjVH4jQ1LZLef8nawnJFOrhSfAlntrfduJFmKiLC/zIJG7XmLlAv5yU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=14/d54RDwtk2CS4Rg9GfJZQeZjQOY7xNprxxaiC/1sg=; b=l
 GKh6RXp1w+lMUsJ6aiLkh+W/HiUL5bqhePgtWZW4Hu6f+nooFYkj4z5Q0vRhhJgX+GR76j5YGnxFE
 XNEEHQvOjRhbPDWgMugKGgyqRq9RoFTADgRiD/QDh2g6koa1mfc9rj+T2szRBzg15XpOUFTjLpxXG
 6we9YA6BuqFRfIls=;
Received: from mail-qk1-f182.google.com ([209.85.222.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1msVjM-000foN-OV
 for openipmi-developer@lists.sourceforge.net; Wed, 01 Dec 2021 19:57:29 +0000
Received: by mail-qk1-f182.google.com with SMTP id d2so32266289qki.12
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 01 Dec 2021 11:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=14/d54RDwtk2CS4Rg9GfJZQeZjQOY7xNprxxaiC/1sg=;
 b=FluJK/6UKzOKO2u83VqJVT/4msePMUkQmwg1ZW8sNYvK2vMMIgaQst6jaEJTfK8mVJ
 OenDAYZcp5YLGYz8nEetPLO46NGZPhtfKTVr+DN8DKkagYvcaoG8gSlNWcK7moWsVjy5
 d8CGd76HCCye34xHHmH6mI/+hxoiSsFLv/eN224FT6oc1E3qtnGiTk+Na5MN9aPkOnEd
 OzWxItqMDEMhazc768MQZkGu9jVoC6qiAGD392415xvhy906HkSPmBGlQMnNZ95TRQBG
 6eM0xXCkZeLcfXGMBuJnAnGU5QPFnYYCRkfDaXFkEXtV1ArYmpBgeGi469clFYNsj61w
 XNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=14/d54RDwtk2CS4Rg9GfJZQeZjQOY7xNprxxaiC/1sg=;
 b=rICkHpaCcYIz9lZV5UqDfo5q2CUXGuJSlZXSUmCPv5NHRvCcj0s4HTK/hpyi84CZYj
 GO1Kr9QghOgJrfCptOkwSj1aTLXAwTAuZfFBvhHhHXtww4go6u/HUwR7UEdCtEhfj4Ie
 1OuGCPzR7tRDCW2+PgUbzBAKcJbfChUVIITy132WfSV10Ih++0VoA36tcq907sFHCWvi
 52SsDxngwF59oK+hOYDOJ2tbjVwqpYGto8/Nb8i7vEDgAUIpW2miW4TFtv1ePd/LDS1c
 JNDQms6UL1ouAReJy8sZRm3N2cZWosHQfG7Jv/8ZBSeAS6kpxOdcEAISQ1YZlPmtRcEr
 Autw==
X-Gm-Message-State: AOAM531SrBZTbsr2DtriaRNYoYQ+3OUHp7wlUmpE1yWiO/HgWzRfWKby
 l9SpsJ8hzxjKepBkjcKKge0l37gjPw==
X-Google-Smtp-Source: ABdhPJyIfOBJzQ32apoNdOttA2rEZpjta9mVqjWnYNVbmuEQoWnTy1yENSbVdbpUw4TMGYTncwgqCA==
X-Received: by 2002:a05:620a:1253:: with SMTP id
 a19mr8370585qkl.293.1638388642757; 
 Wed, 01 Dec 2021 11:57:22 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id h22sm363184qkk.14.2021.12.01.11.57.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 11:57:22 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b0fd:aad1:1fcc:32a6])
 by serve.minyard.net (Postfix) with ESMTPSA id A66B81800B9;
 Wed,  1 Dec 2021 19:57:21 +0000 (UTC)
Date: Wed, 1 Dec 2021 13:57:20 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20211201195720.GJ15676@minyard.net>
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
 5833291ab6de9c3e2374336b51c814e515e8f3a5:
 Merge tag 'pci-v5.16-fixes-1' of
 git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci
 (2021-11-11 15:10:18 -0800) are available in the Git repository at: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.182 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1msVjM-000foN-OV
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.16
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

The following changes since commit 5833291ab6de9c3e2374336b51c814e515e8f3a5:

  Merge tag 'pci-v5.16-fixes-1' of git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci (2021-11-11 15:10:18 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-2

for you to fetch changes up to c03a487a83fddbca1ef6cb5b97a69cd3e390e233:

  ipmi:ipmb: Fix unknown command response (2021-11-25 21:17:55 -0600)

----------------------------------------------------------------
Fix issues with IPMI

Some changes that went in 5.16 that had issues.  When working on the
design a piece was redesigned and things got missed.  And the message
type was not being initialized when it was allocated, resulting in some
crashes.

In addition, the IPMI driver has had a shutdown issue where it could
still have an item in a system workqueue after it had been shutdown.
Move to a private workqueue to avoid that problem.

----------------------------------------------------------------
Corey Minyard (2):
      ipmi: fix IPMI_SMI_MSG_TYPE_IPMB_DIRECT response length checking
      ipmi:ipmb: Fix unknown command response

Ioanna Alifieraki (1):
      ipmi: Move remove_work to dedicated workqueue

Jakub Kicinski (1):
      ipmi: fix oob access due to uninit smi_msg type

Wei Yongjun (1):
      ipmi: msghandler: Make symbol 'remove_work_wq' static

 drivers/char/ipmi/ipmi_msghandler.c | 41 +++++++++++++++++++++++++++++--------
 1 file changed, 33 insertions(+), 8 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
