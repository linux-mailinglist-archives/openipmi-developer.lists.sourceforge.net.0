Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EEACA7B50
	for <lists+openipmi-developer@lfdr.de>; Fri, 05 Dec 2025 14:13:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:To:From:Date:Sender:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bH6PpIricD+RU3Vnv4Cr0lpK5RE3gaqCBAaOjebEHqw=; b=EWxrTIBoXKn15disqZMUkNh9/v
	0efHV3ErRyyqUO9PVOfC2MD9NBPrd4SLiWOzKqBWQU7G+GqR9OwN7pC601xhe4a5h1w4PT/zD9Ydf
	DmmcYX+58qYqtqS6Zl89IeQCdHwz2yFUUc6OqsT+uI4qralDl5KXrkE/GtYjSXZ+O3Hk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vRVcr-00074p-F2;
	Fri, 05 Dec 2025 13:13:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vRVcq-00074i-Hp
 for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Dec 2025 13:13:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ykZn5PedbM64427wmw5x0MYmZ3320hr62ydC099Sr5Q=; b=jJ6699YnpQRWlj7F0XrX2Hr8MA
 bLmENtzWc9TYpCuc/Qmhi6QparfCyS+Oh5z9ChwVTjL6sJk4B6cbgkma+BTrz2EKqhTGDxRiss9Pt
 IKikY+/vcDRII4L8zUSwR+nM9IjAn3QsxWXkMBdg8LqgSxdg0nyzNkqAG0lDuUtFy8iA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ykZn5PedbM64427wmw5x0MYmZ3320hr62ydC099Sr5Q=; b=A
 1JKCc4fVXzKv3EaBwAqB9Je3MusFATg++CNjTOFk7YzwbduFigKN3fqXjOZI8I0i/mwXMJBKp9mIj
 qZVLyxXD4beeLv1vibm6wtBF47OCq1nV6u93mcPsxOcfR/Gj1Miom+EC7M6+H7n6jPVXDgCfr+xdG
 +4jMBHSxCdxye58I=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vRVcq-0007qS-1E for openipmi-developer@lists.sourceforge.net;
 Fri, 05 Dec 2025 13:13:32 +0000
Received: by mail-qk1-f178.google.com with SMTP id
 af79cd13be357-8b2dcdde65bso309983885a.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 05 Dec 2025 05:13:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1764940406; x=1765545206; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ykZn5PedbM64427wmw5x0MYmZ3320hr62ydC099Sr5Q=;
 b=RHoaWjDbWhxsyL0E0uYJcnMHpiZwmNpN2TJXz7Xjtj77HCjmkk2HoUkOG0R8g0KaCy
 I74cy3cLU2haacqPSPM9OtH0JcNLNHsM7zA5rl5rHGLkLxQSln/rWgc5Ulj+OFXW4DWl
 SPlzZa6J7Nok25LrXKs/ZMV2y7/ltHvtCsz6+qPcNfNzGW05mXcwLSfyJ9QZ7/YEnHob
 ymhsMq0TPtu12Tfaxb/CXHR3lRQ34Tyj4NDt3f6EIRykmsTZvZK16KkzW2iN41Yv3RMO
 GTRgoOcUCqoevPlpPPh0+l45EymSUVNYWVxhabbRwSdDEjvgFGUz2vMgEy0U8TRh6VDJ
 CdWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764940406; x=1765545206;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ykZn5PedbM64427wmw5x0MYmZ3320hr62ydC099Sr5Q=;
 b=j38x4jo72VG/tnUndwC2d0S4ME7JJF0deWAmy9yrsqDhc7wLNtejeo1j3lUV6QT38d
 4tzN1mpLVfaNkCBut8QPCzSqpD26Ryxv4/uMGqN3IhyqUCkp9s1VBVYhWW/Fe5NiqGwr
 +c92MHgmJIs/KgdRjlZhCfYPA2iT+NNAN2ADnuWdtmn8uDeMOmHcxNncIZSIqAvBsmo/
 J8J5BCWFTbaQdbZLW/FhFdQW9u4NZ+sPBQ9Ouuxbjg++nrnS3FZ5mSZrk2Aljpk9adSI
 63ezZGXJAMfIRz8d78CiitckDZRoojM4psZoDFVW9Cdf1tJC5INUYmNpbv1ObmTG5ZRG
 Pbcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUhJyKi6oP+F2jah2Ytghzlttdtx/fBxa/LSzyZ/MgftOjFlObdcJanK2RdfF9TlU1hzbwuDR2WsmEUYbJp4R42mdo=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwwwgXTkThcoG8pKhvw6+7SAS1IXSUxATuN0q0v+Ucp6/55E3wi
 8ENN61UDu6naDxJobuMEVoVjq2P17ByaGjHZDiAPDqqtQcrb5Se6jTxeit+oUwJVyBmsYCeAwpb
 RSgc8
X-Gm-Gg: ASbGnctQHagxCuQwbgwyy6qqT7xP4UbWutboKKoqgxT+Y6gLCN7/lDsQjRnm3zVF/lz
 drZqafQeT1KOKB4ikBIr+KSKZvI6K03H9NAt8iz12KGdQCWdJMOsIgB5Au5VOicw5Cck9/0bTbU
 OEMCTdANxAuayI18DtZybyziC7qJZPQm3xi4bnT8JlCOYRiwQhgRjMli3ZAIjYuQM6UDWQ3H16O
 aG+a9f03zCpXoS/3MJQAhtvXEw4dtebbvb/e/XdjZBkqUOBDmt5Sz2NLaHBjaOczsOfqkA966pb
 v2Mk3tOCrRK4VDLenUYfb3B54BT8JUn+i9h7b1yqwIxhPmo/0NBoe8z+HPoNs1IBq8kRqSAO13V
 QLMSRlh1C+j+v9Sv73WDmmEN1gA1DGCmoLUnTs08h6tahCeCwlMH4+bZ+gQHYiVo4rS9t0ZU1e+
 XLQsI3Er/ht2Kvyw==
X-Google-Smtp-Source: AGHT+IEu/hcj28Ny3x+GLKVbEImQqAA7KUM9oMVjtVf/w8zjv7RERky/CeGW9JQ6e2pFy79r7hGIuA==
X-Received: by 2002:a05:6830:4489:b0:7c5:2dbf:4a7d with SMTP id
 46e09a7af769-7c958cdfb99mr4473157a34.31.1764939900602; 
 Fri, 05 Dec 2025 05:05:00 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:28e7:17ef:849f:8533])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c95a93f050sm3974063a34.12.2025.12.05.05.04.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Dec 2025 05:05:00 -0800 (PST)
Date: Fri, 5 Dec 2025 07:04:53 -0600
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <aTLYdRkTJ7ZCyP79@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 9b332cece987ee1790b2ed4c989e28162fa47860:
 Merge tag 'nfsd-6.18-1' of
 git://git.kernel.org/pub/scm/linux/kernel/git/cel/linux
 (2025-10-14 09:28:12 -0700) are available in the Git repository at: 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
X-Headers-End: 1vRVcq-0007qS-1E
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.19
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
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The following changes since commit 9b332cece987ee1790b2ed4c989e28162fa47860:

  Merge tag 'nfsd-6.18-1' of git://git.kernel.org/pub/scm/linux/kernel/git/cel/linux (2025-10-14 09:28:12 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.19-1

for you to fetch changes up to 35bcedc1a7938da808f54510d8bc7d90cebb6278:

  MAINTAINERS: Add entry on Loongson-2K IPMI driver (2025-10-15 06:37:22 -0500)

----------------------------------------------------------------
Minor IPMI fixes

Some device tree cleanups and a maintainer add.

Fix a race when handling channel updates that could result in errors
being reported to the user in some cases.

----------------------------------------------------------------
Binbin Zhou (1):
      MAINTAINERS: Add entry on Loongson-2K IPMI driver

Jinhui Guo (3):
      ipmi: Fix the race between __scan_channels() and deliver_response()
      ipmi: Fix __scan_channels() failing to rescan channels
      ipmi: Skip channel scan if channels are already marked ready

Rob Herring (Arm) (2):
      dt-bindings: ipmi: Convert nuvoton,npcm750-kcs-bmc to DT schema
      dt-bindings: ipmi: Convert aspeed,ast2400-ibt-bmc to DT schema

 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt       | 28 -----------
 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml      | 44 +++++++++++++++++
 .../devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt   | 40 ----------------
 .../bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml     | 55 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 drivers/char/ipmi/ipmi_msghandler.c                | 24 +++++++---
 6 files changed, 117 insertions(+), 75 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
 create mode 100644 Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
