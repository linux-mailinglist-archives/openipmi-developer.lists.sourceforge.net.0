Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 361F997C1C4
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 Sep 2024 00:05:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sr2n6-0005p4-GT;
	Wed, 18 Sep 2024 22:04:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sr2n4-0005oq-Vs
 for openipmi-developer@lists.sourceforge.net;
 Wed, 18 Sep 2024 22:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g4UPWIaNZzgTZMfVrVLiRFIyFO4YHjG8B3oenUoNP4A=; b=joLg3Pm5VAPwCLPJZlRjZ2MMtA
 OY+YZauIsqjmJjzMw7Z4sY/UrZ7Ghg7n9FWm47SrDits5IYS8snG3y4HShziJtW1qUsP4PUsmgWLg
 MD9ezl4IMEZwkIeNejpe052LdR/FDTZo2PN2VsCpjn/Aw7Qxm4DUtcv8gChaHE92QgIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=g4UPWIaNZzgTZMfVrVLiRFIyFO4YHjG8B3oenUoNP4A=; b=G
 lfctrULzmT81NYg6U80uv4TQkISyPQPvapDMW5GRdbbD0T3AR3oUedyZrogZA3QmK25fB8s+yeqYj
 ve/ZyfpIARj4X5/IlBqd+LjPqLTUYGGMn62JIlXkLZRA2VNf91i7MtiX08X/b3gIwShfhoDu79zdy
 ggkBBSFM4Cl2Eh8I=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sr2n4-00040S-Ap for openipmi-developer@lists.sourceforge.net;
 Wed, 18 Sep 2024 22:04:50 +0000
Received: by mail-oi1-f182.google.com with SMTP id
 5614622812f47-3e039f22274so117739b6e.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 18 Sep 2024 15:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1726697079; x=1727301879;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=g4UPWIaNZzgTZMfVrVLiRFIyFO4YHjG8B3oenUoNP4A=;
 b=OuGUtSIfSJ/5WHPlX4J6/E9KdrK5hQDBJlsiaUIzDji4ATLIoFUFSHNSPa12Wripq2
 uwArJGzUJ8EasUgwXi3wtWb8zDvKyQDDHpZUKXOoPdUZQpOmu8kIlK6nR4PCzvJdXB5a
 IPmRRC7S2o4aj3vOp0guC8auuHsTMbNjvMQtBm7ONDT8olIBpRU5EOqrU4qRRLrWrirs
 IYveiV99sCyHM8qngt8o/aeEzbDyYekwEKLiE3S0ZBukbR8v/V2PtdaR7q6mtVNJWyHV
 fGkP/DnpPrVFH5Rv8A//vbpjCJSIo386Y3PLs4igxTNb5RI9NSsv8nCj+ad/kuXa0OZI
 idtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726697079; x=1727301879;
 h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=g4UPWIaNZzgTZMfVrVLiRFIyFO4YHjG8B3oenUoNP4A=;
 b=i3w4rtCgzgFMUc00/c28/wUDS/Myxle5iXQyUN6PgkURm6YXp4HvyFNih50MZEZfB5
 7ZPq62czgZMPT2BZ62pkFG3GfYlbbvWiI02lXxxsI9ZTjiKMwgaAzViBaE1GWMM4s4tK
 L76hUco5OdBoltAn65ddYDbMbEaDJhewSVY/z/1hdfQSUjKyI7vu12evq+rW+lz/c739
 EU4NHwH16bOKZuyVcdfqlsOrXwTtuaqmEyE+jBzGDfkgn4HAlpTDOxE2rxM9ktj1hXo8
 FuupwDti0w06CA/T8oW5RFEowktjCEtvOHkM+3EdIx8EQFqzNewc5OHHv4FZ/TPosIPZ
 fiyQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWqAlxXJ+fUHZl3WQrhukTmxR3yCr1j4ovXOS3iNn0/IuVrCIpH35COdXUVRVsU98EbN0kx6fgmcaPwmBLpHo+jUlY=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxXGLNx+i9E5lalxWsWgHf64Ayp0rMoKOMXXq2/aEksak1fnXxO
 kD4dJ8jVESYNIjplRQqRPdrq6H+j6HzReOMtWWOL73aYvGWXx/0KgXRz4f7Hdq2MGzlF1SDLfXO
 gSp8=
X-Google-Smtp-Source: AGHT+IERbSea5tOwE/ugCqHO0mF0yeviIYZi+LTmfvLAf1RlVZRHT0oESD3F/6RCeWA/Tl2XKGvYwQ==
X-Received: by 2002:a05:6830:25c3:b0:70f:6ec2:5e1e with SMTP id
 46e09a7af769-711094c8dc9mr14391227a34.29.1726695623842; 
 Wed, 18 Sep 2024 14:40:23 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:bfe4:2aee:929f:be5])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-71389b59088sm55108a34.24.2024.09.18.14.40.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2024 14:40:22 -0700 (PDT)
Date: Wed, 18 Sep 2024 16:40:17 -0500
From: Corey Minyard <corey@minyard.net>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <ZutIwdh3ij-tx5kg@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 0108b7be2a18d85face1e10c68ecc0138f1bed58:
 Merge tag 'for-linus-iommufd' of
 git://git.kernel.org/pub/scm/linux/kernel/git/jgg/iommufd
 (2024-08-20 16:06:39 -0700) are available in the Git repository at: 
 Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -1.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
X-Headers-End: 1sr2n4-00040S-Ap
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 6.12
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

The following changes since commit 0108b7be2a18d85face1e10c68ecc0138f1bed58:

  Merge tag 'for-linus-iommufd' of git://git.kernel.org/pub/scm/linux/kernel/git/jgg/iommufd (2024-08-20 16:06:39 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-6.12-1

for you to fetch changes up to 64dce81f8c373c681e62d5ffe0397c45a35d48a2:

  ipmi: docs: don't advertise deprecated sysfs entries (2024-09-01 14:35:35 -0500)

----------------------------------------------------------------
Some minor fixes and cleanups for IPMI.  Nothing big.

Handle a bogus BMC a little better, fix autoload on some systems,
remove some deprecated interfaces from the docs.

----------------------------------------------------------------
Corey Minyard (1):
      ipmi:ssif: Improve detecting during probing

Wolfram Sang (1):
      ipmi: docs: don't advertise deprecated sysfs entries

Yuntao Liu (1):
      ipmi: ipmi_ssif: fix module autoloading

 Documentation/driver-api/ipmi.rst |  2 +-
 drivers/char/ipmi/ipmi_ssif.c     | 25 ++++++++++++++++++++++++-
 2 files changed, 25 insertions(+), 2 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
