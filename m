Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0BB377BA6
	for <lists+openipmi-developer@lfdr.de>; Mon, 10 May 2021 07:43:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lfyhb-0005NQ-38; Mon, 10 May 2021 05:43:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lfyhW-0005N9-Kr
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:43:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RcCO656jU7ucYxLuOLJKJiPZqIWSdBT+CNf+tWSSbYQ=; b=YcU3lrHByfoyUMd1jVO9f/PMXr
 HxHpGKd4vDvVqf6p4Ws/JNLgsC9BOLydCOWxNjgoeYPoHbXxK88FXVAlmY4rcSaJFqkXTTFITbWop
 nIMFZ2GX1Tc2AaFKNEj9gfr4VsPsBhIRD//89NVYg+90JDWi2qfDzW4a1GElP+lIoQHA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RcCO656jU7ucYxLuOLJKJiPZqIWSdBT+CNf+tWSSbYQ=; b=A
 uu1YDADL70ILjHsn5+V5edn/E3CF3RsK0vBrJMmm07Se4YfEk6BvFp3wIywsJmYsD9V//GuvJvyVq
 rW5j+Q9dCFtb5MdjjPDXTJQooZCq20TKTtOoTocFmM/zDJdIFHsFskV9yO3QiMpRK9UDXwtjIK0ET
 YyiGgDU1PxjHwAF0=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lfyhK-000KUi-H3
 for openipmi-developer@lists.sourceforge.net; Mon, 10 May 2021 05:43:32 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4C4C95803ED;
 Mon, 10 May 2021 01:43:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 10 May 2021 01:43:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=RcCO656jU7ucYxLuOLJKJiPZqI
 WSdBT+CNf+tWSSbYQ=; b=h/hwVKL2VC6XO+f52OiwYys+JHbN5N8qA/hq8u8LcS
 zHyl4J8bFhN5ezd6jUjRx7QV4OEaCjbpaWV0oIxfD6u9Pm5OdeUzYhMp7rFLPl+r
 xBE0/hAnkUqZAnvT0hUBDDNYQGVSnp7lq+M+YKKBGx14Qdmz0w/qRDNv/XDJZrps
 Azs+nIaR1/28KacqHzku42TzNSrzcSrBVKGnUhacpXmY5ucrCbuaFLaEx7sAou1X
 8A86iKNvvmNM6lPwr5PkRcBYOJd7/KElhZlcs6CfCGTVj+dAuhKWRekeF76RuQP0
 MqKueTIKZ7lWGmOREib9a7sTxHdgPHxCFM6OXk4pkCBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=RcCO656jU7ucYxLuO
 LJKJiPZqIWSdBT+CNf+tWSSbYQ=; b=ZsKMHU58xlWay9yBeZUax8VCxxL5tgXJI
 slb23LF3Uzi/y23orXwfWd3TBmd9Ks7uc5PqIC6xDspfIHEh/cz+fmk238xR8TWp
 zf1p/CxCPUMAc6bSSOzSupAhbIfkfUG0gT4fcXmLPXRXbxS9WbYUT/4oeFYG0uvK
 MLqP6EjECYotnEbN6SjdDR/6+7J7DVZtEWhPzdbBpGxTZf5I0ff0MXMlSUZ/R3cy
 1uJWZlriAmB4EWgAkOol2m4jNrQ8sDmdDfyL6xDiudoGNNfZ/zmwJr3mqDiq671Z
 mWa6d/tBrb5M8AvQHPIfcmQIeQd9W9HXeivZJTL2trS4kR6qPXXHQ==
X-ME-Sender: <xms:7MeYYJbOhjX1m2jw_ByGv-TFsMcReD2hTo8gSBako3gZ45gjW1aXGA>
 <xme:7MeYYAbWPrY7Jt9IXVbpKetAZcXf5N6MRv8Aw5ix3-58uP-LiiQfWwHDPMUjBfbcF
 Irh3_uerflSHSbC7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdegjedgleehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuggftrfgrthhtvghrnhepieetheduveelhfdvvdejleeuhfelteevhe
 ffgfeitdefgeekjeefieevgfehhefgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghen
 ucfkphepvddtfedrheejrddvudehrdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:7MeYYL_c8oXcWD8u1q3o7YJADyphClvGyTqmceeSfGFC6160QXa7Rw>
 <xmx:7MeYYHoDs6Glsadar25fIGi0QyPPZLHD0CkzQnnhU_Fn8yVesE-SqA>
 <xmx:7MeYYErbE-utNe71ZZe8UDf7DzyIdA61FCxS4hNpq2-Bla9BAjFMqA>
 <xmx:7seYYB47OXnQXN4MbOY7y_ejU63IBAh8ruQg8HRvTQvUSPKHxLvXyw>
Received: from localhost.localdomain (unknown [203.57.215.8])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Mon, 10 May 2021 01:43:03 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Mon, 10 May 2021 15:11:57 +0930
Message-Id: <20210510054213.1610760-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfyhK-000KUi-H3
Subject: [Openipmi-developer] [PATCH v3 00/16] ipmi: Allow raw access to KCS
 devices
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, robh+dt@kernel.org, arnd@arndb.de, zweiss@equinix.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello,

This is the 3rd spin of the series refactoring the keyboard-controller-style
device drivers in the IPMI subsystem.

v2 can be found (in two parts because yay patch workflow mistakes) at:

Cover letter:
https://lore.kernel.org/linux-arm-kernel/20210319061952.145040-1-andrew@aj.id.au/

Patches:
https://lore.kernel.org/linux-arm-kernel/20210319062752.145730-1-andrew@aj.id.au/

Several significant changes in v3:

1. The series is rebased onto v5.13-rc1

2. v5.13-rc1 includes Chiawei's patches reworking the LPC devicetree bindings,
   so they're no-longer required in the series.

3. After some discussion with Arnd[1] and investigating the serio subsystem,
   I've replaced the "raw" KCS driver (patch 16/21 in v2) with a serio adaptor
   (patch 11/16 in this series). The adaptor allows us to take advantage of the
   existing chardevs provided by serio.

[1] https://lore.kernel.org/linux-arm-kernel/37e75b07-a5c6-422f-84b3-54f2bea0b917@www.fastmail.com/

Finally, I've also addressed Zev Weiss' review comments where I thought it was
required. These comments covered a lot of minor issues across (almost) all the
patches, so it's best to review from a clean slate rather than attempt to review
the differences between spins.

Previously:

Changes in v2 include:

* A rebase onto v5.12-rc2
* Incorporation of off-list feedback on SerIRQ configuration from
  Chiawei
* Further validation on hardware for ASPEED KCS devices 2, 3 and 4
* Lifting the existing single-open constraint of the IPMI chardev
* Fixes addressing Rob's feedback on the conversion of the ASPEED KCS
  binding to dt-schema
* Fixes addressing Rob's feedback on the new aspeed,lpc-interrupts
  property definition for the ASPEED KCS binding

Please test and review!

Andrew

Andrew Jeffery (16):
  ipmi: kcs_bmc_aspeed: Use of match data to extract KCS properties
  ipmi: kcs_bmc: Make status update atomic
  ipmi: kcs_bmc: Rename {read,write}_{status,data}() functions
  ipmi: kcs_bmc: Split out kcs_bmc_cdev_ipmi
  ipmi: kcs_bmc: Turn the driver data-structures inside-out
  ipmi: kcs_bmc: Split headers into device and client
  ipmi: kcs_bmc: Strip private client data from struct kcs_bmc
  ipmi: kcs_bmc: Decouple the IPMI chardev from the core
  ipmi: kcs_bmc: Allow clients to control KCS IRQ state
  ipmi: kcs_bmc: Don't enforce single-open policy in the kernel
  ipmi: kcs_bmc: Add serio adaptor
  dt-bindings: ipmi: Convert ASPEED KCS binding to schema
  dt-bindings: ipmi: Add optional SerIRQ property to ASPEED KCS devices
  ipmi: kcs_bmc_aspeed: Implement KCS SerIRQ configuration
  ipmi: kcs_bmc_aspeed: Fix IBFIE typo from datasheet
  ipmi: kcs_bmc_aspeed: Optionally apply status address

 .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml | 106 +++
 .../bindings/ipmi/aspeed-kcs-bmc.txt          |  33 -
 drivers/char/ipmi/Kconfig                     |  27 +
 drivers/char/ipmi/Makefile                    |   2 +
 drivers/char/ipmi/kcs_bmc.c                   | 526 ++++-----------
 drivers/char/ipmi/kcs_bmc.h                   |  92 +--
 drivers/char/ipmi/kcs_bmc_aspeed.c            | 635 +++++++++++++-----
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c         | 568 ++++++++++++++++
 drivers/char/ipmi/kcs_bmc_client.h            |  48 ++
 drivers/char/ipmi/kcs_bmc_device.h            |  22 +
 drivers/char/ipmi/kcs_bmc_npcm7xx.c           |  94 ++-
 drivers/char/ipmi/kcs_bmc_serio.c             | 151 +++++
 12 files changed, 1582 insertions(+), 722 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
 create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
 create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_device.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_serio.c

-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
