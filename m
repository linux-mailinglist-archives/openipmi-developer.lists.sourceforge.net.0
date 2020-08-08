Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0857423F791
	for <lists+openipmi-developer@lfdr.de>; Sat,  8 Aug 2020 14:34:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k4O3H-00012K-SW; Sat, 08 Aug 2020 12:34:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1k4O3G-000126-JQ
 for openipmi-developer@lists.sourceforge.net; Sat, 08 Aug 2020 12:34:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A3gmvFXEauCOQAUYz5ux5ZsOqQgVpNrWl8KKgTYtSrY=; b=R3pugXWK1tBMSwBx5m6wKmm3M7
 4bpS655qYfjOrD3ZPQgf5r00ipFyBa1YdPSZffzWUCjwB465xysiQ8dFOo6UaBklK5dfEp/QYmwcW
 t7j2Srkx+7cC0mwkX2h4bhnEjrViqs6eqVEYhHGlYVPbX1is7Erf9pNil07M2YJa8QZs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=A3gmvFXEauCOQAUYz5ux5ZsOqQgVpNrWl8KKgTYtSrY=; b=H
 bfzo1ZRyiAh0zsfdocy3aDTzDV3+GOAPalgXqxco+uKAPEqRljszyDhwpRahk9QMh+3GG2Yp5w9pU
 YuQ2wsjZ+zbNag1TqMW7mVzQ7mqwY/VnXR+ZON2XKczsmig7NmtMSeqjIl67vCDR0yxZhFm64iGLm
 E2U2Y/efU1fiHNbw=;
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k4O3F-00GX3j-1r
 for openipmi-developer@lists.sourceforge.net; Sat, 08 Aug 2020 12:34:18 +0000
Received: by mail-ot1-f42.google.com with SMTP id v6so3688166ota.13
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 08 Aug 2020 05:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=A3gmvFXEauCOQAUYz5ux5ZsOqQgVpNrWl8KKgTYtSrY=;
 b=YKrvWcYqxLLVUeNKRUmysl/PP4VnAZJXjjuYBmqHf0iN7ntO+CthSUg7XMd4E3vbo9
 +ZRsu42B5Dt26VXNB5WaI0929KJqX7ckHyn/LCyfTLnnAfGWQoR7CLf+MXqMhpfjlstr
 S9eLJVfiMphBuH61Xyp8n0/7/OQYaE4bRqyVr0sT0BAW8xtYjXSTnvtjpOkXYPlT9nfc
 dPM7VMHwOwVll+0J9N1ps67Nc/oJvFnTm23CgGkZNd+ij/cjLUYd9KPGAzWL/uYBI8b8
 hJ/IGIwKI26ttW461k0dje98nDjOd2tvR1NLxFvz++/r7NfRf7opLKfSGVf8A9UDOoOE
 IRTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition:user-agent;
 bh=A3gmvFXEauCOQAUYz5ux5ZsOqQgVpNrWl8KKgTYtSrY=;
 b=IZsEZbUt/ELhztJ2bVXSM00n+mrd78ARgVdhViUl4zzMuBd6UrqM0BJxqbJrsJpqHh
 nTtepzx2IIzh2q27J2266lJxB2Ssk++6TFIZCsFzCr4DbVxLFoLjGU2e08G8B/lSA9UD
 DzfzVU+rh8NmqRME8X/9E85iACNGUMJTw+1U/ssMDrrBHdUduFYPdVNtdU/N10s1VQzn
 oE7kFlw9ON2XnJYp5sFd7z31kc+0qwbo/yf8kPpNKzSJmCHD+apn0mfCADV6XJwqtrvj
 HXgY4iag1zC9De9MA84yyPMza+i+EwXUxcneLQA4CHfwv1dJiHb36CE+eZZzm+xy33L0
 xUVg==
X-Gm-Message-State: AOAM531OwvkyGAfyFs0qNBXunHjQcLfrKeYno7j+s1q3ebfXB6ymwENN
 XHO/AxdSobguhpD7iAsG9/v+v5w=
X-Google-Smtp-Source: ABdhPJxwmyJaEDiiyDiYCuGnfhyhJU3JahQ/dPa2y2D7GBS6c6tbWt/2MhHkmFr0vl5R+ipvQIQdYA==
X-Received: by 2002:a9d:685a:: with SMTP id c26mr10738027oto.244.1596890051335; 
 Sat, 08 Aug 2020 05:34:11 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id j129sm2404780oib.20.2020.08.08.05.34.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Aug 2020 05:34:09 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:4020:c830:eb8b:ec92])
 by serve.minyard.net (Postfix) with ESMTPSA id BE0EA18055B;
 Sat,  8 Aug 2020 12:34:08 +0000 (UTC)
Date: Sat, 8 Aug 2020 07:34:07 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200808123407.GP2842@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k4O3F-00GX3j-1r
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.9
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

The following changes since commit a5dc8300df75e8b8384b4c82225f1e4a0b4d9b55:

  scripts/decode_stacktrace: warn when modpath is needed but is unset (2020-06-15 15:37:24 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.9-1

for you to fetch changes up to 634b06def11cf7ecf6282c79735f08004e323983:

  ipmi/watchdog: add missing newlines when printing parameters by sysfs (2020-07-21 06:29:15 -0500)

----------------------------------------------------------------
Minor cleanups to the IPMI driver for 5.9

Nothing of any major consequence.  Duplicate code, some missing \n's in
sysfs files, some documentation and comment changes.

-corey

----------------------------------------------------------------
Jing Xiangfeng (1):
      ipmi: remve duplicate code in __ipmi_bmc_register()

Misono Tomohiro (2):
      Doc: driver-api: ipmi: Add description of alerts_broken module param
      ipmi: ssif: Remove finished TODO comment about SMBus alert

Xiongfeng Wang (1):
      ipmi/watchdog: add missing newlines when printing parameters by sysfs

 Documentation/driver-api/ipmi.rst   | 4 ++++
 drivers/char/ipmi/ipmi_msghandler.c | 2 --
 drivers/char/ipmi/ipmi_ssif.c       | 5 -----
 drivers/char/ipmi/ipmi_watchdog.c   | 9 +++++++--
 4 files changed, 11 insertions(+), 9 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
