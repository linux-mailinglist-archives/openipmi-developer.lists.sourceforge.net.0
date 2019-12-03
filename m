Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A1410FE31
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Dec 2019 13:56:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ic7j5-00008n-Ou; Tue, 03 Dec 2019 12:56:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1ic7j4-00008L-Lx
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 12:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SOZUq2rJD0QJ8mJKAc7oPLyCtRnzRzApgEKAYYPVX5g=; b=IwDmR51kgU+Ld53CVkb4rq1Qbg
 45NFC6mKNeItRR95qJtg0zy3JzR/ccDFg5T2kauEzflAoX0TPnVMOctVI75QTZYh9TIpDh5bMNJPe
 RGB0kLsSo79a9AH5kCwZbV94+xPemR/y/W1KM9VTjiKfQ0t7Z8iCZ3oXFFPNeoMNaHFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SOZUq2rJD0QJ8mJKAc7oPLyCtRnzRzApgEKAYYPVX5g=; b=e
 nivsjU0+RM7j3TQGhD7beSa8dFa+txIMEuBClNUwpmcsu3PFF5RvsH7s778jQvqkHe0p12JA1IBwC
 o114nq2+2iekqLiEXCQeGJuJ8pyG48m7mSQLRcPaHCqeB50H35O7pw9bpxItYcusFwcMEaHpii7jq
 fWPTWL3xDIK1VY58=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ic7iz-005m0l-5g
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 12:56:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9E1836C3C;
 Tue,  3 Dec 2019 07:36:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:36:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=SOZUq2rJD0QJ8mJKAc7oPLyCtR
 nzRzApgEKAYYPVX5g=; b=GaEpkJwswsN6B+BGMOIDa5Y6tqbkL7hfWZU0irBbo6
 KG7zMnNrZiKbtXUzRio3ugQJH0Mc8PtKOBg9L2Q8MTDBI94egRoQJYQRgWAfZI38
 QPm94qCHFqNHdh1ijPsAqPMmsD4PGZDea6kbqHqURcKfojeuhpG1DTe452JoCzwd
 UIJZy5ugYhfrRJPnGr5Y3cuA5vZnKUFhps63+HxcNlgXOL6uvUfHK2ML1bPKJq9D
 AZ7HmMaVQypnu6Nno37etiafDus0S/3FMC9WFiixik3hm27Yp5EYU6RP27LaKEGy
 5mC3MX8p5f3AzN1/SktTJpkTlS4x84qn1DoZn3/7Cmlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=SOZUq2rJD0QJ8mJKA
 c7oPLyCtRnzRzApgEKAYYPVX5g=; b=xFPyLaDoMhBRQSvKGkUUA6EiRHXRfh3Zj
 zVnkyYOFS87Q8NUOnirCTnkRn0DCd+vuF2AZO+EncBWI6h/rTVkanfFUQoO9ur2f
 nvLEuOSahNShxbVLUTHd6GD/k58prnFj4VmjtZlLA1HlPOSsSHZ/Qz75TKjuwT0E
 GRHVTMecdCCO6uXxA+u0912m4q9IpCysrr6wC22UOjOQ8WD3EG0bjEN7dfROSll6
 yoGA2e9mDcjOuzpLhMlsEXI58WTGN+ChMX5BXIEY9ybgOJRZTne7oFqtXGvq24W3
 sWejt/OyRnMh3a9NBeyn8wkgxJh40K6bBMVAhx34+mraxSZ0TXVFQ==
X-ME-Sender: <xms:2lbmXS5ZXg7wiN3SZzGBlY9uTCy7VzlWXnir2E-XQkH4LJAtT6DCWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepuddukedrvd
 duuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:2lbmXQAgd4zEB8DN8VWm1DnXLPqX67BYXO7D7CcrvPVy3l1ZKI5LLA>
 <xmx:2lbmXdBfqZgbkxOogcYRNi8dXTx-6YZg5nleIKJN72ruCi4Tm7Hpfw>
 <xmx:2lbmXRYv-WHhjjXQRna92ewaKh7nE9_y4RRpU1NJjpVLi-CdTw0g8Q>
 <xmx:3FbmXZ0J4rAA31er-T2wgfz3nONrmvnaA0EuEKbC8cdyf1hiuyqxmw>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0E6363060158;
 Tue,  3 Dec 2019 07:36:37 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Date: Tue,  3 Dec 2019 23:08:22 +1030
Message-Id: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
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
X-Headers-End: 1ic7iz-005m0l-5g
Subject: [Openipmi-developer] [PATCH 0/3] ipmi: kcs-bmc: Rework bindings to
 clean up DT warnings
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
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello,

This is a short series reworking the devicetree binding and driver for the
ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
changes enable removal of more than 100 lines of warning output from dtc.

These changes are extracted from an RFC series posted previously, which can be
found here:

https://lore.kernel.org/lkml/20190726053959.2003-1-andrew@aj.id.au/

Haiyue has already reviewed the driver patches in that thread so the re-posting
carries his tags. Since the original series the patches have been rebased on
top of char-misc/master with no further changes. However, please take a look to
make sure the patches are still sane.

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
