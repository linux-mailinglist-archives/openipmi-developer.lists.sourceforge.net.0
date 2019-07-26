Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4071075EBA
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jul 2019 08:06:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hqtMu-0002Bo-Vt; Fri, 26 Jul 2019 06:06:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1hqtMt-0002B8-AB
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 06:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ySR7cLE+z5RVRIPpRsSru07Wn3TKVni1uEQzDMaQ8y8=; b=IdFRPB+rfZONwer7s9a2fIu1j8
 dnM+iLBKZLT2LdifyFZUwEqQk3Y9Flb3fXCqnloIMDoSOEw28+sEvxcDiZonCjQo5kr8fHRHAU+Ni
 JIS7Xkt/0omIDA+XB/sQg6X7jAGrvp/LqFqgvV+sQq1GXq6tA2be+RcZf9qPgV7h41fw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ySR7cLE+z5RVRIPpRsSru07Wn3TKVni1uEQzDMaQ8y8=; b=JMy1Kqo9DH3r8Vm++ZRP9MQrFx
 t4Whaykaq/uGStlc/UWVvdmzUz0Kev/NsF0odGEy/IGW7bRiqmVhnL1L5znjmVYjUTZDaADpfA1T1
 lgpDLluwXF6Fv3DAy6ObMEq5mUiLm+lKAKJfUv0BjxgGJ5VvFVNzn4NjjcdK1IVxHRa8=;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hqtMp-002od5-Aq
 for openipmi-developer@lists.sourceforge.net; Fri, 26 Jul 2019 06:06:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 819A1433F;
 Fri, 26 Jul 2019 01:40:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ySR7cLE+z5RVR
 IPpRsSru07Wn3TKVni1uEQzDMaQ8y8=; b=cV4yADjLkVVUORlObYa6LqQigb3lP
 xz+qQc05pQI0ZbOeucEGtpYDXdvQlNFDB0CkM5+puib71KA8eqD3+NGnqdpQNAne
 Erms0L7nbfiLeTVqe5vgugdHQw70uLrRzjfrH50Klr8BgnZuCBERcLJ+q+bVlK38
 WhExg1eOwV9pbPnXeC/bu9ywqBUOIFP5bG2PRE16pQZLRs4o6O1VniBjLIQztCVk
 2OQdEwrhRAYNDCVPHmt4KhZK7SCQdsl6108fDrYS5+HXDcITAHsJnucE4afUlMop
 iFSOmniBopp09pHY3uefeXQgaq+0tYnfaZH6HosvcIoT/Ov9xGC933X9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=ySR7cLE+z5RVRIPpRsSru07Wn3TKVni1uEQzDMaQ8y8=; b=006pBoW7
 iyoZZ4nE/Bt5esVJlv/ekNGTH0kuhMtqXslqmby5mBpAO7txLV7Wdov+gyDpGZjr
 TXVC5a6+8qDMtz+WFQGqKvxfn4zNhQYkvDggx1a11zH3hMFCcdrhxNumu1TqXKJl
 R2smEzDNM4+9kpfZ0bR+S6hLl8ZMxCBa1Q2UrJq0dBC8IhA37eMW/RpU1OzUCoIZ
 H2CwPoBX32Mju5P3GVUjru/XSsGdya8fZ+oN9fbM1XZMEIwq6fwMSWp1Q3gOVTxX
 P2GdRlE0Vpn0z1KeFs9m4AoaqKwtrYme7k9hu1+YE0YXYevsHKGNWw1nmj85FD9m
 3aivOTxmmJQ5+Q==
X-ME-Sender: <xms:Z5I6XaFHRxafrarr1iPEmUFdrZKsXMX5hiGQ50a-VQRNzbw1-cRMEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:Z5I6XV4zCpvKdsrHzhEHoL-oLdwWkv7ntI6qx3oXTQij2sLNxYnT3w>
 <xmx:Z5I6XQthRuUbBA-7JLsoIdW6k3gHo_EL33IHu0o6j85qDBCtm2pvrg>
 <xmx:Z5I6XW5pjIdL65NXdvhBZcZYaTAkXhAOTednvp4fUCZfxAWOqTtdcw>
 <xmx:Z5I6XWKu9VJh8QbcBYRyIAlxH9OsPjZb2ZB8gtiEEWc21QJ4pWKPqg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 49AD6380075;
 Fri, 26 Jul 2019 01:40:51 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Date: Fri, 26 Jul 2019 15:09:56 +0930
Message-Id: <20190726053959.2003-15-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
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
X-Headers-End: 1hqtMp-002od5-Aq
Subject: [Openipmi-developer] [RFC PATCH 14/17] ipmi: kcs: Finish
 configuring ASPEED KCS device before enable
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The currently interrupts are configured after the channel was enabled.

Cc: Haiyue Wang <haiyue.wang@linux.intel.com>
Cc: Corey Minyard <minyard@acm.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: openipmi-developer@lists.sourceforge.net
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/char/ipmi/kcs_bmc_aspeed.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index 3c955946e647..e3dd09022589 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -268,13 +268,14 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 	kcs_bmc->io_inputb = aspeed_kcs_inb;
 	kcs_bmc->io_outputb = aspeed_kcs_outb;
 
+	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
+	if (rc)
+		return rc;
+
 	dev_set_drvdata(dev, kcs_bmc);
 
 	aspeed_kcs_set_address(kcs_bmc, addr);
 	aspeed_kcs_enable_channel(kcs_bmc, true);
-	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
-	if (rc)
-		return rc;
 
 	rc = misc_register(&kcs_bmc->miscdev);
 	if (rc) {
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
