Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 57910449BD6
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 19:42:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk9bE-0002kO-Ko; Mon, 08 Nov 2021 18:42:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jae.hyun.yoo@intel.com>) id 1mk9bC-0002kI-U0
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 18:42:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q9uxMbjph6K+Jyoozz/q+J6utfRd+SazUgQIBuRpWxY=; b=jWDTlUAFa7f5yv9hmso/NNFMtM
 zZ0jRlNvlCGX5DpCQcRcnPIbcpxS1WtoAO3zns3oF/2+Muj52Y1sGMwt7wgnnXIeuwiQNisHOX+rD
 3Dy6+oJiS2gymSY15Ly+zS+BMO8qaDQqBxwpewMBqHha6qfdSV2atK0cJUiJ8tGZt9so=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Q9uxMbjph6K+Jyoozz/q+J6utfRd+SazUgQIBuRpWxY=; b=M
 7+aHwgl2/SLpztaHVpLaly2YBwpyU3wf1bjCFL1PdhZzaq6CdaFZmF7pehDjm+EMSVS3OxpOS+bG5
 UHIopXz6AoNBY5daGVCMAinfWXi4gI7pimH24AAVyyUITO01O8HPzcEHtFKS5NY4URoGM7g3+MITc
 kL1QC8qRwO2IwhCA=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk9b7-006NCz-Qd
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 18:42:30 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="318500268"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="318500268"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 10:42:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="503150685"
Received: from maru.jf.intel.com ([10.54.51.77])
 by orsmga008.jf.intel.com with ESMTP; 08 Nov 2021 10:42:19 -0800
From: jae.hyun.yoo@intel.com
To: Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Cedric Le Goater <clg@kaod.org>, Haiyue Wang <haiyue.wang@linux.intel.com>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Date: Mon,  8 Nov 2021 11:01:54 -0800
Message-Id: <20211108190200.290957-1-jae.hyun.yoo@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> Hello all, 
 This series is for appliying below fix to all Aspped LPC sub drivers.
 https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1mk9b7-006NCz-Qd
Subject: [Openipmi-developer] [PATCH v3 0/6] Add LCLK control into Aspeed
 LPC sub drivers
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Hello all,

This series is for appliying below fix to all Aspped LPC sub drivers.
https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/

An LPC sub driver can be enabled without using the lpc-ctrl driver or it
can be registered ahead of lpc-ctrl depends on each system configuration and
this difference introduces that LPC can be enabled without heart beating of
LCLK so it causes improper handling on host interrupts when the host sends
interrupts in that time frame. Then kernel eventually forcibly disables the
interrupt with dumping stack and printing a 'nobody cared this irq' message
out.

To prevent this issue, all LPC sub drivers should enable LCLK individually
so this patch adds clock control logic into the remaining Aspeed LPC sub
drivers.

Please review this series.

Thanks,
Jae

Changes sinve v2:
 * Rebased it on the latest master.
 * Made dts and bindigs changes' commit message more descriptive.
 * Simplified the -EPROBE_DEFER handling using dev_err_probe().

Changes sinve v1:
 * Added 'clocks' property into ibt and kcs-bmc bindings using
   'aspeed,ast2400-ibt-bmc.txt' and 'aspeed,ast2400-kcs-bmc.yaml'
   respectively because these are not merged into 'aspeed-lpc.yaml' yet.
   The bindings merging could be done using a separate patch later.

Jae Hyun Yoo (6):
  ARM: dts: aspeed: add LCLK setting into LPC IBT node
  dt-bindings: ipmi: bt-bmc: add 'clocks' as a required property
  ipmi: bt: add clock control logic
  ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
  dt-bindings: ipmi: aspeed,kcs-bmc: add 'clocks' as a required property
  ipmi: kcs_bmc_aspeed: add clock control logic

 .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt  |  2 ++
 .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml |  7 +++++
 arch/arm/boot/dts/aspeed-g4.dtsi              |  1 +
 arch/arm/boot/dts/aspeed-g5.dtsi              |  5 ++++
 arch/arm/boot/dts/aspeed-g6.dtsi              |  5 ++++
 drivers/char/ipmi/bt-bmc.c                    | 21 +++++++++++++-
 drivers/char/ipmi/kcs_bmc_aspeed.c            | 28 ++++++++++++++++---
 7 files changed, 64 insertions(+), 5 deletions(-)

-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
