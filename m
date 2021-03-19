Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E4A341551
	for <lists+openipmi-developer@lfdr.de>; Fri, 19 Mar 2021 07:21:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lN8VF-0008Ui-FA; Fri, 19 Mar 2021 06:20:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lN8VE-0008UQ-79
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DQ0e988igZ7sIe0ymg68c1lDjuQ6xtIxXzAGPLSh1nI=; b=dmiXXIr6VGs2cXOOQRm1OZWtox
 ZKt+uO9+ahLU5QnNh+AtAIEVgOz0WmFC3PqWjARQXCFHFvzk/LzPYZOpD0U4YCv4fqStm0gcalMgk
 5azPxl4zHzveWRu44v7mxnf5NkSOOxZ+AHdbGoBXu1JhuFhjO4/lMwTzOErZXcEVt9jg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DQ0e988igZ7sIe0ymg68c1lDjuQ6xtIxXzAGPLSh1nI=; b=Y
 IVQIzH6nhxweGJ6MtoYrksKD0wGJVjBRZ5wq26I1cHXlFKgqETxfKsglrJUP74EQS5ELQ2IuUag6P
 p1vjcchJZLD0Y4sU+wv+yDc7LWaSx6HuD+kkbYd6ZTUVOfm3tTz0p3NgCX8F52tZii83lNjOmO9w3
 YgxlNcUFKJ39SKwQ=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lN8V4-000QYw-Rv
 for openipmi-developer@lists.sourceforge.net; Fri, 19 Mar 2021 06:20:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9C2E3580A7A;
 Fri, 19 Mar 2021 02:20:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 19 Mar 2021 02:20:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=DQ0e988igZ7sIe0ymg68c1lDju
 Q6xtIxXzAGPLSh1nI=; b=iUz/zNDta8Y4JVXEyCbmxRcBFb5BonujfrZcF74o1l
 Lq9sUqDmc7QhyS25xjwdSc17BL7nsG8FJ4BqoJw+cVF9k/Bs6A4Y2pSY+mpRdzd8
 uDzMOQCJgIixT0HWC947AfbzNVGU9TXK1fJoIHykU9K/neeKvT2/V55RjotrPW3f
 0bdAYas6+ipiflJbLSUZmDhU3tm4wBe22TJKRzLjUIfgoEqNIX6SMmA+bw6KHLWQ
 ViwTslmqAoZFFa54qdeXE6XEVlD6bGKBhFv2lAr8lGBUkUU09vn0CQ8xApEzHE8K
 xImiHcEUDKCI5mJDACqyPD5b7ZnF5SV9V8CCgXxdloww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=DQ0e988igZ7sIe0ym
 g68c1lDjuQ6xtIxXzAGPLSh1nI=; b=p9WxThGyse3NLP1n85Tefdn9wRP9DroOd
 Wt4kI5kWTS9qWGNJ6qXYJiCqAu1jViYKt6ai6060xTok9QaR6A2uG41/j3n6XWei
 KwmirTXI9Fs8k2iLrMqeORuUb/qm9poyfrkF2CJgatKUpHa2lVCaguTZCQQnaB5J
 dlg+6OAztW+KgVz0QhCOjn7XkihFW7ZTO38WqYp80YrpKWcyWbyinNAMZ6zcY27y
 GjqYzHpI7jZ9UYJx1sdBtBpfnXt9NMjm26cJWiT3CwhOALYTwSd70Ai3L8tyrIfg
 XLDPhVc00BNGyJsWvdwZf84J43/u+LFALGXA/tJ4HUXpHq1Vl4zkg==
X-ME-Sender: <xms:tEJUYKrEAw83XIPwBr00WxFhp2WZ5d-BLl6z3o_LC1ngenwJsl8i9w>
 <xme:tEJUYIqU-cfA8GFwKefHDBOiqY2fT6E3oc5TJ-SFBUh1js33ec0n1ZYnPXJTrLztR
 ZYMn5DRwXIFH6DPDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuggftrfgrthhtvghrnhepieelfedtfeetveffgeetteetveeitefhke
 etvdefteevledvheekveeihfekffefnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdp
 ihhnthgvlhdrtghomhdpghhithhhuhgsrdgtohhmpdgumhhtfhdrohhrghenucfkphepud
 dukedrvddutddrudekuddrheehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:tEJUYPOSUPMwivbIyWS38m-BJhaItSyeFld-Wx5cogxEeh1WiUkorA>
 <xmx:tEJUYJ5PPHRMmBGYzM-2rEZsrOVsOtPxT2ZI7YgQu6OQT5WkuFXiTQ>
 <xmx:tEJUYJ6eIVNBF6GlxfKCVkaUi-NiLfOELpLPCIJJw01JAijIfOQfdg>
 <xmx:tkJUYNr0HfU6wBe_dLUJAnGFkWxAV5APce1QEPqn88fUpE8Wv0FuNw>
Received: from localhost.localdomain
 (ppp118-210-181-55.adl-adc-lon-bras34.tpg.internode.on.net [118.210.181.55])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3FD8C1080057;
 Fri, 19 Mar 2021 02:20:31 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
 minyard@acm.org
Date: Fri, 19 Mar 2021 16:49:30 +1030
Message-Id: <20210319061952.145040-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lN8V4-000QYw-Rv
Subject: [Openipmi-developer] [PATCH v2 00/21] ipmi: Allow raw access to KCS
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
Cc: devicetree@vger.kernel.org, ryan_chen@aspeedtech.com, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 chiawei_wang@aspeedtech.com, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello,

This series is a bit of a mix of things, but its primary purpose is to
expose BMC KCS IPMI devices to userspace in a way that enables userspace
to talk to host firmware using protocols that are not IPMI.

v1 can be found here:

https://lore.kernel.org/openbmc/20210219142523.3464540-1-andrew@aj.id.au/

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

A new chardev device is added whose implementation exposes the Input
Data Register (IDR), Output Data Register (ODR) and Status Register
(STR) via read() and write(), and implements poll() for event
monitoring.

The existing /dev/ipmi-kcs* chardev interface exposes the KCS devices in
a way which encoded the IPMI protocol in its behaviour. However, as
LPC[0] KCS devices give us bi-directional interrupts between the host
and a BMC with both a data and status byte, they are useful for purposes
beyond IPMI.

As a concrete example, libmctp[1] implements a vendor-defined MCTP[2]
binding using a combination of LPC Firmware cycles for bulk data
transfer and a KCS device via LPC IO cycles for out-of-band protocol
control messages[3]. This gives a throughput improvement over the
standard KCS binding[4] while continuing to exploit the ease of setup of
the LPC bus for early boot firmware on the host processor.

The series takes a bit of a winding path to achieve its aim:

1. It begins with patches 1-5 put together by Chia-Wei, which I've
rebased on v5.12-rc2. These fix the ASPEED LPC bindings and other
non-KCS LPC-related ASPEED device drivers in a way that enables the
SerIRQ patches at the end of the series. With Joel's review I'm hoping
these 5 can go through the aspeed tree, and that the rest can go through
the IPMI tree.

2. Next, patches 6-13 fairly heavily refactor the KCS support in the
IPMI part of the tree, re-architecting things such that it's possible to
support multiple chardev implementations sitting on top of the ASPEED
and Nuvoton device drivers. However, the KCS code didn't really have
great separation of concerns as it stood, so even if we disregard the
multiple-chardev support I think the cleanups are worthwhile.

3. Patch 14 adds some interrupt management capabilities to the KCS
device drivers in preparation for patch 16, which introduces the new
"raw" KCS device interface. I'm not stoked about the device name/path,
so if people are looking to bikeshed something then feel free to lay
into that.

4. The remaining patches switch the ASPEED KCS devicetree binding to
dt-schema, add a new interrupt property to describe the SerIRQ behaviour
of the device and finally clean up Serial IRQ support in the ASPEED KCS
driver.

Rob: The dt-binding patches still come before the relevant driver
changes, I tried to keep the two close together in the series, hence the
bindings changes not being patches 1 and 2.

I've exercised the series under qemu with the rainier-bmc machine plus
additional patches for KCS support[5]. I've also substituted this series in
place of a hacky out-of-tree driver that we've been using for the
libmctp stack and successfully booted the host processor under our
internal full-platform simulation tools for a Rainier system.

Note that this work touches the Nuvoton driver as well as ASPEED's, but
I don't have the capability to test those changes or the IPMI chardev
path. Tested-by tags would be much appreciated if you can exercise one
or both.

Please review!

Andrew

[0] https://www.intel.com/content/dam/www/program/design/us/en/documents/low-pin-count-interface-specification.pdf
[1] https://github.com/openbmc/libmctp/
[2] https://www.dmtf.org/sites/default/files/standards/documents/DSP0236_1.3.1.pdf
[3] https://github.com/openbmc/libmctp/blob/master/docs/bindings/vendor-astlpc.md
[4] https://www.dmtf.org/sites/default/files/standards/documents/DSP0254_1.0.0.pdf
[5] https://lore.kernel.org/qemu-devel/20210309131641.2709380-1-clg@kaod.org/

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
  ipmi: kcs_bmc: Add a "raw" character device interface
  dt-bindings: ipmi: Convert ASPEED KCS binding to schema
  dt-bindings: ipmi: Add optional SerIRQ property to ASPEED KCS devices
  ipmi: kcs_bmc_aspeed: Implement KCS SerIRQ configuration
  ipmi: kcs_bmc_aspeed: Fix IBFIE typo from datasheet
  ipmi: kcs_bmc_aspeed: Optionally apply status address

Chia-Wei, Wang (5):
  dt-bindings: aspeed-lpc: Remove LPC partitioning
  ARM: dts: Remove LPC BMC and Host partitions
  ipmi: kcs: aspeed: Adapt to new LPC DTS layout
  pinctrl: aspeed-g5: Adapt to new LPC device tree layout
  soc: aspeed: Adapt to new LPC device tree layout

 Documentation/ABI/testing/dev-raw-kcs         |  25 +
 .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml | 106 +++
 .../bindings/ipmi/aspeed-kcs-bmc.txt          |  33 -
 .../devicetree/bindings/mfd/aspeed-lpc.txt    | 100 +--
 arch/arm/boot/dts/aspeed-g4.dtsi              |  70 +-
 arch/arm/boot/dts/aspeed-g5.dtsi              | 121 ++--
 arch/arm/boot/dts/aspeed-g6.dtsi              | 123 ++--
 drivers/char/ipmi/Kconfig                     |  30 +
 drivers/char/ipmi/Makefile                    |   2 +
 drivers/char/ipmi/kcs_bmc.c                   | 534 ++++----------
 drivers/char/ipmi/kcs_bmc.h                   |  94 +--
 drivers/char/ipmi/kcs_bmc_aspeed.c            | 663 +++++++++++++-----
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c         | 570 +++++++++++++++
 drivers/char/ipmi/kcs_bmc_cdev_raw.c          | 443 ++++++++++++
 drivers/char/ipmi/kcs_bmc_client.h            |  47 ++
 drivers/char/ipmi/kcs_bmc_device.h            |  20 +
 drivers/char/ipmi/kcs_bmc_npcm7xx.c           |  97 ++-
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c    |  17 +-
 drivers/soc/aspeed/aspeed-lpc-ctrl.c          |  20 +-
 drivers/soc/aspeed/aspeed-lpc-snoop.c         |  23 +-
 20 files changed, 2132 insertions(+), 1006 deletions(-)
 create mode 100644 Documentation/ABI/testing/dev-raw-kcs
 create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
 delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
 create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
 create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_raw.c
 create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
 create mode 100644 drivers/char/ipmi/kcs_bmc_device.h

-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
