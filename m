Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC7D11FCD5
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 Dec 2019 03:26:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1igg5i-0001LL-PU; Mon, 16 Dec 2019 02:26:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1igg5h-0001Kz-Rk
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 02:26:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HY55BCVsizFE8+s5E5ZBDonzCDFgxVsezznsO8iULcc=; b=W/5DE8JhxVXgG2bl9eS8TpFCFE
 /jw/hs0UyJMXYCQqSJsaAlrDWW2b47Gu4KhXdzx5fPGaEtTJWLWp71SJ/g+TdszrF1Auin3BGK7gc
 FIWlPAry6mWUnPbebheuP8ZJ3VccEvPU16Hhy/mg8R7jCPCP7VphK+y2gYRsXIKok7pM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HY55BCVsizFE8+s5E5ZBDonzCDFgxVsezznsO8iULcc=; b=S
 AGXCwgrBDqWNym5Kyj82PC5o1jX7xbdeDV0WRBTZpknNkS348EIiT9niI6g27E5e2dnK0Y3xhlCyQ
 78USvIlheQuwg//ELB+yJ4UZFk62rfc4q3XSU9c1Gvnp7VHNDzAFwDxib9EPbW/Q7mMP8SmMjtf05
 acblPfqyrY50Gssg=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1igg5b-006DPb-KQ
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 02:26:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7C7466A76;
 Sun, 15 Dec 2019 21:26:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sun, 15 Dec 2019 21:26:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=HY55BCVsizFE8+s5E5ZBDonzCD
 FgxVsezznsO8iULcc=; b=W+Xc8tt9dsunJkPbmapfHbyXyhB2inF4eWJeuWOiJK
 dZFSGVbwBCmANEChYj5alB/hZdOX4dUzeEFoCulR6wEvurJgyZnG7gZ4hNMEJw7O
 ML17QLvkLC8b1VkW88Ipi5wwQheF9It0JizgRIcmNe6xAn+l5cUssEEANiFtuwsV
 CJMOWeSHjGe59br2dondIo7k0FNNQwvLz17UxCeGipUeLYqTuZJaf6evkummXk1C
 M0MXvjoK2fRv5CRh3jooRUgParRsQ4TBaqHk96kIve28gcLA3ujO0nDUMfq3mPgB
 Dvy42fejruxyv4bE/7AICUJOBgMp8gi9zPsEKcE+8Xcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HY55BCVsizFE8+s5E
 5ZBDonzCDFgxVsezznsO8iULcc=; b=tNboqBN9XCn19Xbkqh8Z5zg0fVHL8mEOg
 QHIpglvdl8mFrMseerat/B+VBgkasl6ht6HkflO7N2rmBPz55RuJPFDiKTSbDdzA
 gKBt/CD9Zib6C82j4ZeZYo97BoCG/Inus+mgEzOvpT004NtkevpDVGCobqdR1Xbu
 BN9wZfo6df4ZpUSNUkuc0Kj+mwCLhfSTrx6a8XjNepX+ZXQ+XNc/SVPQsEPB6WnY
 Qia1/0zSo37dOLsUlH25G4Tk8u6DXAtYYD6x7RFpmp8LuBTBEpPWBLV35p+Gefud
 ToUfeAu+a2FvEd074k17YVQx1KvnuZY8fTUALi5I7aponf3KnD9AQ==
X-ME-Sender: <xms:Sev2XXu6NPaW4uIIrHyI8tUYiHz8u1LPn_e95Knw_XJUqNoFNSjJfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepvddtvddrke
 durddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:Sev2XUvprDZT1Kq-4QFhUz7J7QSFqx5SeRu6mf3Ueu-0YukI-wVLCQ>
 <xmx:Sev2XUY_RdiEA_vgeARq788LRe5KrHlkxMNehsCziEbPKzxR1q3XNA>
 <xmx:Sev2XWgG_MdkKBkDd5017W2E62NgbqFMzgBzJ959uBNJ9StiVF3nDQ>
 <xmx:Suv2XUE0TtfxRlHxN7DSR5sC2uBzlN6uKISs_F3LqXqWglTBfKeGDg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id EDC798005A;
 Sun, 15 Dec 2019 21:26:12 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Date: Mon, 16 Dec 2019 12:57:39 +1030
Message-Id: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
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
X-Headers-End: 1igg5b-006DPb-KQ
Subject: [Openipmi-developer] [PATCH v2 0/3] ipmi: kcs-bmc: Rework bindings
 to clean up DT warnings
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org, haiyue.wang@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello,

This is a short series reworking the devicetree binding and driver for the
ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
changes enable removal of more than 100 lines of warning output from dtc.

v1 can be found here:

https://lore.kernel.org/lkml/cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au/

v2 cleans up the commit message of 2/3 and changes the name of the property
governing the LPC IO address for the KCS devices.

Cheers,

Andrew

Andrew Jeffery (3):
  dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
  ipmi: kcs: Finish configuring ASPEED KCS device before enable
  ipmi: kcs: aspeed: Implement v2 bindings

 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt |  20 +-
 drivers/char/ipmi/kcs_bmc_aspeed.c                        | 151 +++++--
 2 files changed, 139 insertions(+), 32 deletions(-)

base-commit: 937d6eefc716a9071f0e3bada19200de1bb9d048
-- 
git-series 0.9.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
