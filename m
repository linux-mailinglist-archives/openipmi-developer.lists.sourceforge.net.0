Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E7D519E89
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 May 2022 13:51:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nmDX0-00035R-F6; Wed, 04 May 2022 11:50:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nmDWz-00035G-Qa
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 11:50:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N0qLrMUdkmKBPfEziSX/hNCjhprklRfQLQvu1qWvrOo=; b=dlE71HKH7zZQIF0g/wtkYpoQbR
 khvrvuQpcOSCZArKldzXf7YinOMr5SktVpRmtdBoPWVEg50lFKodlcEEJdBlR3NUhzkA0WAY0IMN/
 x4QT/8Log4u6phMuaXEeJmOnImiTL/rXPUsDH796wbqoAQg3J6SLidaNyVWCtDAKR01Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=N0qLrMUdkmKBPfEziSX/hNCjhprklRfQLQvu1qWvrOo=; b=L
 4spuKEDJI/pd3Gl/y9sH2UQB8MI2sX8rWdbCkKDJTIYJwgdZ7R5k560ykt0/c1eY7m6g8yaO49pSD
 dGE+xYk5nbSqRzlHJaEnOH4xNXnSDr8FroEGf6sfdj6HjInaU5Dke9j5t3jkxFPx/ouPZNwkYQp0X
 uAWwDFvU4AedDCrw=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nmDWy-0011ep-6d
 for openipmi-developer@lists.sourceforge.net; Wed, 04 May 2022 11:50:56 +0000
Received: by mail-qk1-f169.google.com with SMTP id w3so726879qkb.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 04 May 2022 04:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=N0qLrMUdkmKBPfEziSX/hNCjhprklRfQLQvu1qWvrOo=;
 b=iUmsmI1WPaZ54LUDWEqIywg7fvqroLNmgjvybdiVRqPyfsMUOuBWQT0+S8RWPgcmBN
 +sqcSzJZuWhbx/U6T+e96xXMGNTF7ubkK5xelVEe040su7wFbYo9NJMxtP6NYcPT/8Fz
 oPd6XKBGMGkobGVScnwvq+g6OmxxrvfpkSDTCbZLRhLeEACHVfOQRvImSgfXhO8KyufY
 ENMZvDvoeJXtisCOLFTxOMXSUmzbgS+aAwDr42H++7qEZrsQK7ZzFO2MI9WNUTa8S1sU
 gVymct8fIfOIPncDv1Cbzl9tQJZVMiEU/xpRPmG5Y66m0w++ZcRXA7UecQELGsriVXU1
 mb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=N0qLrMUdkmKBPfEziSX/hNCjhprklRfQLQvu1qWvrOo=;
 b=x5NLpz5M8m6opZEf5CqlwSalD3JHF4achFa8bDmHMFkNveKPQj3nOZthJ7/9pW+xsG
 Wr33fNxROgIKGsofM/AgdiVitO6MY11gKtvp0qMGu0Dbcw10yq0InwaNBgEwUv/7s55w
 slAQNwOiq8ELhyWCdGMhHnaVwNcZK4n5+rm0gXdFUoi/FASDDMQVCqqZdyB3pEd5vgem
 sCzXWE24yCNBn6TokJXO1NFQwe03Zuh+dYbw/Q+PoWV9KKGNRINaKawctJFEhCuY3EiV
 6k9Q4e/gYs2/NKSxFqisiDgNdaM7AmsetayDyKfmUwAZRdDeTE/ld1JpsoDgSu8j6jYv
 EFPg==
X-Gm-Message-State: AOAM531OgoE+m6qXKauze4vVQzuo6O8QJT1OXmPPatXEoxZ7cp75SEcM
 W36gz08FkggJ6HYO0fdYNc+zH+pPUfSf
X-Google-Smtp-Source: ABdhPJy1syGyi7DFFq9iQSqT+hdshiI7n/y8gA/XAUshBDHkdBYidKapwbKZ4B8B4Pt/jmtVjRILZQ==
X-Received: by 2002:a05:620a:24c5:b0:69e:e777:4323 with SMTP id
 m5-20020a05620a24c500b0069ee7774323mr15575616qkn.465.1651665050240; 
 Wed, 04 May 2022 04:50:50 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 t11-20020a05620a004b00b0069fc13ce231sm7206864qkt.98.2022.05.04.04.50.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 04:50:49 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:149c:2dc6:c0ab:4341])
 by serve.minyard.net (Postfix) with ESMTPSA id 6F3511800BD;
 Wed,  4 May 2022 11:50:48 +0000 (UTC)
Date: Wed, 4 May 2022 06:50:47 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20220504115047.GC3767252@minyard.net>
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
 ae085d7f9365de7da27ab5c0d16b12d51ea7fca9:
 mm: kfence: fix missing objcg housekeeping for SLAB (2022-03-27 18:47:00
 -0700) are available in the Git repository at: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.169 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nmDWy-0011ep-6d
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.17 (second set)
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

The following changes since commit ae085d7f9365de7da27ab5c0d16b12d51ea7fca9:

  mm: kfence: fix missing objcg housekeeping for SLAB (2022-03-27 18:47:00 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.17-2

for you to fetch changes up to 9cc3aac42566a0021e0ab7c4e9b31667ad75b1e3:

  ipmi:ipmi_ipmb: Fix null-ptr-deref in ipmi_unregister_smi() (2022-04-29 10:06:52 -0500)

----------------------------------------------------------------
Fix some issues that were reported

This has been in for-next for a bit (longer than the times would
indicate, I had to rebase to add some text to the headers) and these are
fixes that need to go in.

----------------------------------------------------------------
Corey Minyard (2):
      ipmi: When handling send message responses, don't process the message
      ipmi:ipmi_ipmb: Fix null-ptr-deref in ipmi_unregister_smi()

 drivers/char/ipmi/ipmi_msghandler.c | 7 ++++++-
 drivers/char/ipmi/ipmi_si_intf.c    | 5 +----
 2 files changed, 7 insertions(+), 5 deletions(-)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
