Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6874F69F4C3
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Feb 2023 13:40:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pUoQN-0003QA-Gu;
	Wed, 22 Feb 2023 12:40:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pUoQL-0003Py-AX
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Feb 2023 12:40:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H+J7csv9d0zQxAb8tY6wlt0M8ymU6BQrT3Z560sOxYY=; b=bFh+N1x0tM/IN3h3Y/mP4aRbii
 8hVuZ3F+eaCAFKnforJbywAfIka6eDYK2UFD+9/30bjoCc18bZEEhDbm30gcfCmsiO5SizhJJW+Is
 rfBKPbqvj/eu5p1lBAdjIqQe+iqnAKJjXb/CpouDnbS7WlughiqhPY7c6wLmS6XI6zso=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H+J7csv9d0zQxAb8tY6wlt0M8ymU6BQrT3Z560sOxYY=; b=K
 uNAO6cTwjsfNOwjO/tPXaDKK9vLfFwM9tYGE4lx7eInwkop++qe/FQ14H/wHXvozKcP4160wXgtz8
 PWIYcFgW4yEs+LcImSBDo01ixkXicAlfs4YZXSKPdwIxzQVfvK7YH1lCCUu3Lm7tV7MVqL4IBSJA1
 sMk369mgFcMfwjCg=;
Received: from mail-qv1-f46.google.com ([209.85.219.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pUoQI-00DWqB-Sp for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Feb 2023 12:40:40 +0000
Received: by mail-qv1-f46.google.com with SMTP id op8so8758416qvb.11
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Feb 2023 04:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=H+J7csv9d0zQxAb8tY6wlt0M8ymU6BQrT3Z560sOxYY=;
 b=aJKU4pHi8S+qc/GwJhn5RC7a3akluPcUv+J0afviPBtwoxPUYvXdUH5ahBuCvdVXSj
 XNopNQ3GVHoXDKWQIDKzhBXeIYBqqdCsL6vk8MQ3f9Fca5rXFxbo2HsGpiEhess0qhD/
 Mu4geppG4vjCDe6TqMpNHOes1MYV+XjAFRn/J/PfPKsSwOfIG0OyFA76kv0qH+j3W7Fw
 acBFOIEx9MYP+Wn0ooJUlWIh4wzo0zb7ZmR/EE1UNJLvgWMsHwUPxaTDZUGfioI0FDIo
 6c5T2sM+oLpfVyuHwIQkj7XdhuI4qlHQVScH1zMyXhYhfMo4v3mgcB1rpsH5e9l/CM30
 YNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H+J7csv9d0zQxAb8tY6wlt0M8ymU6BQrT3Z560sOxYY=;
 b=X8y7ByFjDlR0V78dbTkrXLgC3i0VxvIQD7EvYAsJ17adTWKZoaBdDoGLBHzVkR+cCg
 jaFRf+AMXwfxRI0Ihvs4EPKmkdKGZj7C0q3b4Sprrs2aAotG/LU6X7OhMozAM2bEKOSI
 YuVASoQTT/seTE8mfTOcEeelqhAaRqpo3k07vgUn834lSmlCVUuSkzW0OyunuNnr8hWD
 CtGVmSajVv6kwcwQ7X8zP6IfeAOgECy/xfyg6xNiCVpACtBs0X1i8YeioBBlErpoB/FX
 sK4Uqh9TgSXwUD5+JgsLqdnowDEOmwiz5Yl+Qo3ceAq0XPp7Z1Od7igku5g5p5K1bphN
 Ut0Q==
X-Gm-Message-State: AO0yUKWbBJrWNsUauLlYJS2GjtOOlFOqKnDWDHeRwdrxuEJkz8M2Vmfn
 nReHx4XYd5i1Fq2XZR/oLg==
X-Google-Smtp-Source: AK7set/ZIRxqvGdxyTZwn5bY1BYVK9pRmyYORHlYi3gekvW2n1ZgEgd+Xsbr3UauedlOzLXNAQJLbg==
X-Received: by 2002:a05:6214:2429:b0:56e:f05c:9c70 with SMTP id
 gy9-20020a056214242900b0056ef05c9c70mr13981872qvb.44.1677069632915; 
 Wed, 22 Feb 2023 04:40:32 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 t71-20020a37aa4a000000b00741d87eb5d1sm2711962qke.105.2023.02.22.04.40.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Feb 2023 04:40:32 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ffd5:a2e0:f643:870f])
 by serve.minyard.net (Postfix) with ESMTPSA id A5C141800BA;
 Wed, 22 Feb 2023 12:40:30 +0000 (UTC)
Date: Wed, 22 Feb 2023 06:40:29 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <Y/YNPWfyZE4KteG2@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 041fae9c105ae342a4245cf1e0dc56a23fbb9d3c:
 Merge tag 'f2fs-for-6.2-rc1' of
 git://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs
 (2022-12-14 15:27:57 -0800) are available in the Git repository at: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.46 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pUoQI-00DWqB-Sp
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.3
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

The following changes since commit 041fae9c105ae342a4245cf1e0dc56a23fbb9d3c:

  Merge tag 'f2fs-for-6.2-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs (2022-12-14 15:27:57 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.3-1

for you to fetch changes up to befb28f2676a65a5a4cc4626ae224461d8785af6:

  ipmi: ipmb: Fix the MODULE_PARM_DESC associated to 'retry_time_ms' (2023-02-10 07:38:18 -0600)

----------------------------------------------------------------
Small fixes to the SMBus IPMI and IPMB driver

Nothing big, cleanups, fixing names, and one small deviation from the
specification fixed.

----------------------------------------------------------------
Christophe JAILLET (1):
      ipmi: ipmb: Fix the MODULE_PARM_DESC associated to 'retry_time_ms'

Corey Minyard (4):
      ipmi:ssif: resend_msg() cannot fail
      ipmi_ssif: Rename idle state and check
      ipmi:ssif: Remove rtc_us_timer
      ipmi:ssif: Add a timer between request retries

 drivers/char/ipmi/ipmi_ipmb.c |   2 +-
 drivers/char/ipmi/ipmi_ssif.c | 113 ++++++++++++++++++++----------------------
 2 files changed, 56 insertions(+), 59 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
