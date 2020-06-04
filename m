Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B811EEABC
	for <lists+openipmi-developer@lfdr.de>; Thu,  4 Jun 2020 20:59:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jgv5N-0003Pj-Pp; Thu, 04 Jun 2020 18:59:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jgv5G-0003PO-EU
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Jun 2020 18:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O/Cab+u4ryADYeVDtsfv5F0l84DgLwwEoZEafL+lgHs=; b=Wewhcb9B398nw/OVOAiJ1KJwY2
 YIXMI41jw0xLhtwQWHH96uozzCFobObCPXtvYYXxeUlrBIq3ptwoxa16Ugs5uGnfbQlHniItxKYYc
 x+VvVbT0Cc547r9Sdjzo9FfGZPEt6o0bUTSSWwSpMJvB26XS6WPPkhqMqNprLUuMVS18=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=O/Cab+u4ryADYeVDtsfv5F0l84DgLwwEoZEafL+lgHs=; b=Q
 UDzBzhigBSYVlL/3zEKkaSlQJAfoI3TrEwGNn4D/fcY8QiKII/dZ+UVnocvSSpLvLinxg0sakM+CB
 oSECy43JsuF955244jaCcQlJ0rM4cQ5GS31hoINVQmFN93u+QGPQpRAGa5B2hu4tRi5pGnBMbHZey
 h6BhmL+eFpQe37WU=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jgv5E-005rMu-TM
 for openipmi-developer@lists.sourceforge.net; Thu, 04 Jun 2020 18:59:22 +0000
Received: by mail-ot1-f67.google.com with SMTP id u23so5609917otq.10
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 04 Jun 2020 11:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=O/Cab+u4ryADYeVDtsfv5F0l84DgLwwEoZEafL+lgHs=;
 b=mFnYc9KB/90X8Z+3+YeS9uvEEUKHAWpmrW3FNY3VRXhdByVTByineni0qIX/1PjC8p
 VaUW3YWslLh3XR6g4cA/BWIQhDLplVN4v3GGaodFrJpKsotMeyE0MZMufhTHVkUK0jWW
 vjPGxPTvu+DlCmY+YKa7OtQeU4L5YHDb84L20Pj+Gf6hskSKmt4V8fdjOCTJmqhPm64g
 Ca+fuylKiHiwUs4lLgTKGNDXg7gQFJhLLD9u/4CiN/HUbS8C9PtTqMUAaKQzfDB4aORf
 1SACY+2df0LM70HNqAT3jesysgaJBjFC5kS4G3AKOyKtrNfOA/BMDVrHavHk0GXVOLYI
 aUag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=O/Cab+u4ryADYeVDtsfv5F0l84DgLwwEoZEafL+lgHs=;
 b=Ql4izA522oX3plO6/3yWk+0xaFS0mQrrb36crL9kY/6+EeBCyHgg2DIpFtQMCw+Mb7
 pjr1CLoKf652rWV13pmgz3c0yTs6WwwtyPL93Vt5gZ0Fo8qTBpytc830W5DbVYH8InOS
 nbTest4kpr2d4ECBe50xDEwsUIC8wT+58CZRrSS9jrRzK+frjEp00Aw7xm12aC79z6lt
 yUOIi0fxmOjLpKqNQFpYqm3xWd4qOT894miU+i2fofGmacGxMZ3DhVU96OmlHpawZ7na
 6zSefX6U1sFXXDG723V+CBw070i1uc5ZCMsQH9VmEDVS5ikPGjsMYVb+NouJuAproc7l
 6uVQ==
X-Gm-Message-State: AOAM532ysLt3N6lyMB4chgWQSrJM24Gp14TenV9ncx2zDjyx4XSiQf9r
 INS+FULau0VJe+gTb/nlxLY2SCI=
X-Google-Smtp-Source: ABdhPJwiMHjVXm++PkbFZdIMmw6LD9IBOvoIvtpFTRdu16nYsunUDtJST06TJxsOX3k8/crWRezplg==
X-Received: by 2002:a05:6830:2089:: with SMTP id
 y9mr5082850otq.308.1591297155106; 
 Thu, 04 Jun 2020 11:59:15 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id l9sm224427oot.2.2020.06.04.11.59.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 11:59:14 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e4c9:2a79:bb80:2326])
 by serve.minyard.net (Postfix) with ESMTPSA id 4907118003A;
 Thu,  4 Jun 2020 18:59:13 +0000 (UTC)
Date: Thu, 4 Jun 2020 13:59:12 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200604185912.GA19831@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jgv5E-005rMu-TM
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.8
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

The following changes since commit b9bbe6ed63b2b9f2c9ee5cbd0f2c946a2723f4ce:

  Linux 5.7-rc6 (2020-05-17 16:48:37 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.8-1

for you to fetch changes up to 2a556ce779e39b15cbb74e896ca640e86baeb1a1:

  ipmi:ssif: Remove dynamic platform device handing (2020-05-27 18:25:56 -0500)

----------------------------------------------------------------
IPMI update for 5.8

A few small fixes for things, nothing earth shattering.

-corey

----------------------------------------------------------------
Andy Shevchenko (1):
      ipmi: Replace guid_copy() with import_guid() where it makes sense

Corey Minyard (2):
      Try to load acpi_ipmi when an SSIF ACPI IPMI interface is added
      ipmi:ssif: Remove dynamic platform device handing

Feng Tang (1):
      ipmi: use vzalloc instead of kmalloc for user creation

Stuart Hayes (1):
      ipmi_si: Load acpi_ipmi when ACPI IPMI interface added

Tang Bin (3):
      ipmi:bt-bmc: Avoid unnecessary check
      ipmi:bt-bmc: Fix some format issue of the code
      ipmi:bt-bmc: Fix error handling and status check

 drivers/char/ipmi/bt-bmc.c           | 21 +++++++++------------
 drivers/char/ipmi/ipmi_msghandler.c  |  9 +++++----
 drivers/char/ipmi/ipmi_si_platform.c |  2 ++
 drivers/char/ipmi/ipmi_ssif.c        | 24 ++----------------------
 4 files changed, 18 insertions(+), 38 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
