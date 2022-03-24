Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A374E67D4
	for <lists+openipmi-developer@lfdr.de>; Thu, 24 Mar 2022 18:30:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nXRHZ-0003bG-4G; Thu, 24 Mar 2022 17:29:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nXRHW-0003b5-R1
 for openipmi-developer@lists.sourceforge.net; Thu, 24 Mar 2022 17:29:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cYD0W2yiOTbVTGcteGLlatIUAd0iwc/hCFG55ghJwoY=; b=NosrmrDVSqe/TLPGZZLNT7M1Eg
 igaj7OaogEhDu9BNr/TABwT0GXdtUkmLj+/aiGHKtPjvA7oCiSKC1dDlYQplm9Z9jHVSgLyPRdAoi
 9mecgleDRKtfZz3WbhFuvJ1RpTgBHN9WRNO9OYOKPeZJoIsG2xvxxC2JRgyKzu2iGFhY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cYD0W2yiOTbVTGcteGLlatIUAd0iwc/hCFG55ghJwoY=; b=N
 2HDdS7feAm28iFpWDCdHTujh6+eexQrwmDz5XsWLV+jTKY0kIEsb5teM7+dNZI1NdJ5mo+THzlPeY
 Ug6hutYvRmbkjq52mR15/a9wxNgpUmVJ8RkjnLYVQvgNMcI9dlKNvI5JibzME/zSgCtSuI4L1TRMI
 w8a2pY0uuJgJQkjo=;
Received: from mail-qt1-f173.google.com ([209.85.160.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nXRHT-00Ac5a-M3
 for openipmi-developer@lists.sourceforge.net; Thu, 24 Mar 2022 17:29:53 +0000
Received: by mail-qt1-f173.google.com with SMTP id i4so4446186qti.7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 24 Mar 2022 10:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=cYD0W2yiOTbVTGcteGLlatIUAd0iwc/hCFG55ghJwoY=;
 b=gy4oFJ0NjYPjFx3ZniSuKAThvdpErlPjAnj20IKcpSBb6MsCS5qV2VnZwV6fiGslbL
 3EFbk8UTE2xNpAHQ/MDvpuugaenjfOhErB9t3ekQanigWLM/P0SI+X6llt6uuGVvsaQU
 Jd95QrEgIsxHCYndtxFcCcvvlqWo1mG1tqwuqOFr8N8ofkbcyBgNmC8RnjLURwsrpfUb
 XaDGq5YzDdqOaRM1dQndzGMipWKXRZ+vUMnWy2nbeg9gvVLPF9Drqj30N1uIc2JCb8CC
 nMo1/rvA9CqqzPeEm+Y2+WQzm1nLkvYhGw5SwRrUxD/RxRAlbAR2gkcbKg7xZDSULDfq
 1f7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=cYD0W2yiOTbVTGcteGLlatIUAd0iwc/hCFG55ghJwoY=;
 b=1gHRgESsCf66ywoYJDQRPQFJH6BU2Nicfmt4iRF7bpsnguUNFvEh4nmi1zfii6UPYF
 BPgQMX0otdafWJ9LWTusny8AOOR/qXUWYMkIPC0d/WlcrbcPf45/sKvRQ9OGYf441lIs
 csaA1lvLk9SN2/R96XgSlnUq3Gmc8DkkM8cusV1i8hD1IJXWCa2ebffksAtWNHe6Dcg0
 0jzjXpG81ayG6MTgCb1Z9RkN00SkgBd7HyE/CLm37waNVPeQ9RQ1Nji3rG0iKMky83vL
 6n+XsYhitUMWskD+JfEoDfARIavN8bFD6B+Y+/wRSpsqgqAtJDjZZFM7p8FLgjcuBRv9
 ZEAw==
X-Gm-Message-State: AOAM532pGuYedH8lTyYKofQkhH6GrrDDfnoXzBsbqsTRKOhzIAZI4ygk
 oyElKonXj0+nJlA9Q0+oYUX6DkAQKg==
X-Google-Smtp-Source: ABdhPJwhVJyG0O1PAwXEn58z5sXzAbPqXhMX5LetJY46PQXWM4qhn8nJcvNKQyF0E+cV20Kyi4kGRA==
X-Received: by 2002:a05:622a:208:b0:2e1:b3ec:b7ce with SMTP id
 b8-20020a05622a020800b002e1b3ecb7cemr5718572qtx.345.1648142985666; 
 Thu, 24 Mar 2022 10:29:45 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 v7-20020ac85787000000b002e1c8376517sm2814783qta.22.2022.03.24.10.29.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Mar 2022 10:29:44 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:f879:e43:4f26:fbe9])
 by serve.minyard.net (Postfix) with ESMTPSA id B5D471800BA;
 Thu, 24 Mar 2022 17:29:42 +0000 (UTC)
Date: Thu, 24 Mar 2022 12:29:41 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20220324172941.GI3457@minyard.net>
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
 0c947b893d69231a9add855939da7c66237ab44f:
 Merge tag '5.17-rc-part1-smb3-fixes' of git://git.samba.org/sfrench/cifs-2.6
 (2022-01-17 09:53:21 +0200) are available in the Git repository at: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.173 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.173 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nXRHT-00Ac5a-M3
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.17
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

The following changes since commit 0c947b893d69231a9add855939da7c66237ab44f:

  Merge tag '5.17-rc-part1-smb3-fixes' of git://git.samba.org/sfrench/cifs-2.6 (2022-01-17 09:53:21 +0200)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.17-1

for you to fetch changes up to 8d10ea152e2fb9b4a42b282cb90bfc4d98e319a3:

  ipmi: initialize len variable (2022-03-20 12:37:15 -0500)

----------------------------------------------------------------
Minor fixes for IPMI

Little fixes for various things people have noticed.

One enhancement, the IPMI over IPMB (I2c) is modified to allow it to
take a separate sender and receiver device.  The Raspberry Pi has an
I2C slave device that cannot send.

----------------------------------------------------------------
Corey Minyard (3):
      ipmi: Add the git repository to the MAINTAINERS file
      ipmi:ipmi_ipmb: Unregister the SMI on remove
      ipmi:ipmb: Add the ability to have a separate slave and master device

Jason Wang (1):
      ipmi: ssif: replace strlcpy with strscpy

Joel Stanley (2):
      ipmi: kcs: aspeed: Add AST2600 compatible string
      ipmi: kcs: aspeed: Remove old bindings support

Rikard Falkeborn (1):
      ipmi/watchdog: Constify ident

Tom Rix (1):
      ipmi: initialize len variable

 .../devicetree/bindings/ipmi/ipmi-ipmb.yaml        |  8 +++
 MAINTAINERS                                        |  1 +
 drivers/char/ipmi/ipmi_ipmb.c                      | 60 ++++++++++++++++---
 drivers/char/ipmi/ipmi_ssif.c                      |  4 +-
 drivers/char/ipmi/ipmi_watchdog.c                  |  2 +-
 drivers/char/ipmi/kcs_bmc_aspeed.c                 | 67 +++-------------------
 6 files changed, 70 insertions(+), 72 deletions(-)


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
