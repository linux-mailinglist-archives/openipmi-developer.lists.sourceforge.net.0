Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 244BE39F400
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jun 2021 12:48:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqZHg-0001qO-0d; Tue, 08 Jun 2021 10:48:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andrew@aj.id.au>) id 1lqZHb-0001qD-P9
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hDFhnDxEtjMcaTbXERTDvsX/xKlhpV/0Oa1YnvfSBwI=; b=MXIYzBH19Q3VKoq9z97+bLkd0o
 lk4Xc0k9HCP8XQSg3SbmewOEAA9Ns4pfzdx1w5wIwXSGpZlNnyEXN1Ii3x+2eUxohElYsaW3AQOeK
 kJBNa1HvYT5H3kj8i/bMaZTnoPpkG9NIkj6nfqQ5eiybT3ieXiI8QPU/a0q6URfzaytM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hDFhnDxEtjMcaTbXERTDvsX/xKlhpV/0Oa1YnvfSBwI=; b=a
 ZKZBhlMndL3iJU0cT9kRuP7lA9qOZnUHrllJdWk0OFW8LDoUDk9wrpbPsD6dn+gN+evNn1QxgyQuE
 JVOhofZkXeT2QxNGasNcjJIutvD/CJsLrjj4mbFiLc8fJNT86oxvJgJbo6+3Tj/2XieDGhwIIRVSE
 EdaCgCVNVpIjBwYo=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqZHU-000jcW-78
 for openipmi-developer@lists.sourceforge.net; Tue, 08 Jun 2021 10:48:33 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id EF2555804DB;
 Tue,  8 Jun 2021 06:48:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Tue, 08 Jun 2021 06:48:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=hDFhnDxEtjMcaTbXERTDvsX/xK
 lhpV/0Oa1YnvfSBwI=; b=VzWccjlcIu/Qm8khATcLiatSIK4IEbfYC2dsISfeeA
 i92SLTkNHZ08w6UN2FVP4ipS79QVHJtEsiLKKbtnK38U7fvk0jcdjNCOPz/LfW/z
 4wlTdf2ko6wTDEcEQ+1IOtHLN046cfPgzC0YpWoaioH7zB/qO1WF57edoDzsxQ7d
 PhyIUXwSZnZKGggJSE10w5wfRgRwg8IYg0xWk15IG6datZfVaKfOE75QIFTrgK0u
 s6ZXWrwSN+Po9tvspuNKAQgj/Kn6U8Ly5foZoukqp8sFIYWGrn61G5rvL/DndudU
 r2HY4+VJo8HhnCsG6slFQfThm1sxwgGD1kh29VGnJB0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=hDFhnDxEtjMcaTbXE
 RTDvsX/xKlhpV/0Oa1YnvfSBwI=; b=dfNq/rDX+pHeucY114zvkey1sJz3QecR/
 qNDIrc0HuESLEfqmxz6/EkN88sK+WySzZF89ZN3p//UakioEhSeHfGThGXNoAJl0
 6ZhBe84FpBUzymjf8v2CryRjT8jxOD8FEa2gNQ+lHP+HKqzh3cT4WekBFssQTsGH
 n/8QVXgrbNs+TISI+ONjwA73IkN+dsv+pmIsojNShLKslMiWj7+5iXtjJ+Vz2QTi
 Dj/na/T/TuBCifp1FQW9yoAIVPHvf7ogrZm+pHSjHX0FJUzg1al2hQvNnAAr2ZVD
 bdMmGP3mpIjOKd7n6u1zP8X4nH9pKhIDCIKuVoUuk3fhuhcSuAUsA==
X-ME-Sender: <xms:7Eq_YMPfMARrNa2FROCibgq5RnHrEtlBb2FocMegwFBR5JYti9QfvQ>
 <xme:7Eq_YC-UklsgWrtMdjbRBz14R5pFInUbA1uE9WSJvEuEtzVNuv2IQdZf3KAZ3ynPv
 z9DZg3QYQqnkAFvdw>
X-ME-Received: <xmr:7Eq_YDSqPwNJ5Ctt4jD5E1-JAadRXCAExuScUfyIT88E5-J3eAiMKEk1pcrXdRY5473A8zuMqLcribwTfCXh9VtiWyVEKNH2TVM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfedtledgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuggftrfgrthhtvghrnhepieetheduveelhfdvvdejleeuhfelteevhe
 ffgfeitdefgeekjeefieevgfehhefgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghen
 ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurh
 gvfiesrghjrdhiugdrrghu
X-ME-Proxy: <xmx:7Eq_YEuc2dnPMb_lmd1P4w3j_eyeWGje2ByH7dY0SRAw8r2kO_yK0A>
 <xmx:7Eq_YEeyep8ncAZ4ZvMnYyDXi7VZh0avj6DitWAlrGbJR1dETLDhKw>
 <xmx:7Eq_YI1OxI_sH4h6tQkwAV79ZUsGjlNjLX3tacOa3ZsJlXa6__zGCQ>
 <xmx:70q_YHutjtwjwfw5PI4P_jvcQrKDgTUJ1Bl1fT6JjIOPdHVuYMs35A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 8 Jun 2021 06:48:06 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Tue,  8 Jun 2021 20:17:41 +0930
Message-Id: <20210608104757.582199-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lqZHU-000jcW-78
Subject: [Openipmi-developer] [PATCH v4 00/16] ipmi: Allow raw access to KCS
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
 linux-aspeed@lists.ozlabs.org, KWLIU@nuvoton.com, avifishman70@gmail.com,
 venture@google.com, chiawei_wang@aspeedtech.com, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, robh+dt@kernel.org, arnd@arndb.de, zweiss@equinix.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


Hello,

This is the 4th spin of the series refactoring the keyboard-controller-style
device drivers in the IPMI subsystem.

v3 can be found at:

https://lore.kernel.org/lkml/20210510054213.1610760-1-andrew@aj.id.au/

v4:

* Makes kcs_bmc_add_device() return an error if no client successfully
  initialised with respect to the binding of the device driver
* Retains the existing single-open semantics (v3 allowed multiple-open)
* Fixes the OBE macro for the NPCM7xx KCS driver
* Cleans up Yoda-style masks (mask constant on the LHS rather than RHS)
* Cleans up includes in kcs_bmc_client.h
* Adds some comments to the SerIO adapter to clarify object lifetimes

Previously:

Changes in v3:

* The series was rebased onto v5.13-rc1
* v5.13-rc1 includes Chiawei's patches reworking the LPC devicetree bindings,
  so they're no-longer required in the series.
* After some discussion with Arnd[1] and investigating the serio subsystem,
  I've replaced the "raw" KCS driver (patch 16/21 in v2) with a serio adaptor
  (patch 11/16 in this series). The adaptor allows us to take advantage of the
  existing chardevs provided by serio.

[1] https://lore.kernel.org/linux-arm-kernel/37e75b07-a5c6-422f-84b3-54f2bea0b917@www.fastmail.com/

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
  ipmi: kcs_bmc: Enable IBF on open
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
 drivers/char/ipmi/kcs_bmc.c                   | 523 ++++-----------
 drivers/char/ipmi/kcs_bmc.h                   |  92 +--
 drivers/char/ipmi/kcs_bmc_aspeed.c            | 633 +++++++++++++-----
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c         | 568 ++++++++++++++++
 drivers/char/ipmi/kcs_bmc_client.h            |  45 ++
 drivers/char/ipmi/kcs_bmc_device.h            |  22 +
 drivers/char/ipmi/kcs_bmc_npcm7xx.c           |  92 ++-
 drivers/char/ipmi/kcs_bmc_serio.c             | 157 +++++
 12 files changed, 1594 insertions(+), 706 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
 create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
 create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_device.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_serio.c

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
