Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C5210926F
	for <lists+openipmi-developer@lfdr.de>; Mon, 25 Nov 2019 17:59:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iZHiO-00015m-Ti; Mon, 25 Nov 2019 16:59:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iZHiN-00015S-CI
 for openipmi-developer@lists.sourceforge.net; Mon, 25 Nov 2019 16:59:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7wb5i6/FZxQaE8n+z8M7xj50uZOfM6qEKwZxz5PmeaU=; b=msm/byXTW1ihiE05S1i6ubaITU
 XPLIO8Zlb+Tze1Uh6UxzA3OnckYLLjXT5vJmD6/7kYbohA/dIJESbIG03x4VATrHrUsLdK3KaguNd
 foJ3zpJkIgw0kSIxpYGgIpsnenbyMGXNnm5C+Mj0DpSt9RN51TOcLsChZHqVbSug1Z4M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7wb5i6/FZxQaE8n+z8M7xj50uZOfM6qEKwZxz5PmeaU=; b=V
 gZOOa8mCfOhuYQ36wUsk8jUF2KfXaxviRiOvW7/dXTGDWTsY5vzSUAeFpDkDxmC+maffK6H4T1i6W
 jJVOG/upL3sujyfQ+L6nNLztgDCRkpf5qYXfOVzx0irl1pLlbduLW4JSCXtBs19iabh97cpKfsy9/
 tZhPSwOD7Lf23xM8=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iZHiL-0053x5-M9
 for openipmi-developer@lists.sourceforge.net; Mon, 25 Nov 2019 16:59:55 +0000
Received: by mail-ot1-f65.google.com with SMTP id 23so11464057otf.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 25 Nov 2019 08:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=7wb5i6/FZxQaE8n+z8M7xj50uZOfM6qEKwZxz5PmeaU=;
 b=iOECNUjZXp49nZ2MCe9bj60ze2SZ2L6VMgYGHDzN3UqmIv35jp4a/RrIMDAzDIlpey
 DQthatl4TaoPijcV7sPnm/Y0sX87B4U75hyhgDmAk8LvUhDqnqqAexhwjzNtATxJNRek
 Yr4yM/Ow9vsZi6VnlX844VYln/UamgXuoZjLoiGWUxPcHM+b3welYTaKTGvg4DNiRRWn
 vbL1aaKT7YRPqBT9RLv6Lkp+RyvwJFJrQfPKpYzkIVCoQsYR6iQHW8en+9rnDxc0riEj
 8SMGAL3Mtng9qYisg7egnTlugqyO7ccaH8AjpzpXBWanf1Y8uyUSOiptZWyMWirIFMQX
 3W5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=7wb5i6/FZxQaE8n+z8M7xj50uZOfM6qEKwZxz5PmeaU=;
 b=LBC4Qg4hewYJXC4/JAKbjd8GVqiwD8NXWo8fPLn/eQacPD0fz2Q7zjjFfCjWjiHTVC
 NwvY0ziFYxrhJ3dqM7BOqrgAgbfHXmPiRoaomqVZVUwP4DM+6yhCNpkJP4yXXqwvUlLF
 NE7IfQpBWCtrzOTQovmbqSNJaOkfr5hYiQXOToY/cGli2pqefK6l3C9rak6xLXQxGuwf
 ix6CTWKd+kD8gU74MezV10OaeVtH+6rvlyr+bba/Gm1a0CNHmxa2U0xjnQDb1BfE7i3O
 Gq2m6zGIGpAb8JmhFWnrwWBU8V6Hp3g95L6MXycSriPYrzAnd1yexBnv/1WGT1kbdHIx
 WOlg==
X-Gm-Message-State: APjAAAVpDuAG+f7ZwDUWTVLJ8vpBopvwQROWfyQpPHWHEy5M4qD4dosH
 j1tjZGEU8MJZAz/7cpb5h9PeNM5y4g==
X-Google-Smtp-Source: APXvYqw+Aw8aP1poCHyxvIoa6KKGxP3DMLdI3yVaA0nRtNvja4Z0HzUm5BwKby8xArguyaJ988TmuA==
X-Received: by 2002:a9d:77c5:: with SMTP id w5mr19822955otl.351.1574701187460; 
 Mon, 25 Nov 2019 08:59:47 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id f93sm2574226otb.64.2019.11.25.08.59.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 08:59:46 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 32AFA180046;
 Mon, 25 Nov 2019 16:59:46 +0000 (UTC)
Date: Mon, 25 Nov 2019 10:59:45 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20191125165945.GC3527@minyard.net>
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iZHiL-0053x5-M9
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.5
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

The following changes since commit 3b7c59a1950c75f2c0152e5a9cd77675b09233d6:

  Merge tag 'pinctrl-v5.4-2' of git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl (2019-10-22 06:40:07 -0400)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.5-1

for you to fetch changes up to 8e6a5c833333e14a5023a5dcabb64b7d9e046bc6:

  ipmi: fix ipmb_poll()'s return type (2019-11-22 13:54:55 -0600)

----------------------------------------------------------------
Some small fixes accumulated for IPMI, nothing major.

----------------------------------------------------------------
Andy Shevchenko (1):
      ipmi: use %*ph to print small buffer

Arnd Bergmann (1):
      ipmi: kill off 'timespec' usage again

Corey Minyard (1):
      ipmi: Don't allow device module unload when in use

Luc Van Oostenryck (1):
      ipmi: fix ipmb_poll()'s return type

Navid Emamdoost (1):
      ipmi: Fix memory leak in __ipmi_bmc_register

Vijay Khemka (1):
      drivers: ipmi: Support for both IPMB Req and Resp

YueHaibing (1):
      ipmi: bt-bmc: use devm_platform_ioremap_resource() to simplify code

 drivers/char/ipmi/bt-bmc.c          |  4 +--
 drivers/char/ipmi/ipmb_dev_int.c    | 37 ++++++++-----------------
 drivers/char/ipmi/ipmi_msghandler.c | 55 ++++++++++++++++---------------------
 drivers/char/ipmi/ipmi_si_intf.c    | 40 +++++++++------------------
 include/linux/ipmi_smi.h            | 12 +++++---
 5 files changed, 58 insertions(+), 90 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
