Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 442BD11FCD8
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 Dec 2019 03:26:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1igg5q-0001MP-RR; Mon, 16 Dec 2019 02:26:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1igg5o-0001M6-U1
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 02:26:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LMvNcL8FAR0BlX1niTXZqCp51Bk+aavvUIWGJqthYZY=; b=Oj7ckgRUYfv7j75Y9jyehePYtz
 hT5iarE/cMleVirZHyG05ICtT8oCsfcmLqaTsNmKureimLyQjuKSLKlDhILB+pDCru1JTSoP/we1u
 Ac3XTwsqPpt0ShbWSwmbXJB2bnEWOG4R6Y/wxYVdRYYqZ3KjziZXgyK0fJqaWLtcqahA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LMvNcL8FAR0BlX1niTXZqCp51Bk+aavvUIWGJqthYZY=; b=cSCNp5UWt40mHpbGNKj5T1U7uh
 Zk9bZA0axVKV4QyXLfWN+qHdBGd3+ZiijSjN1IWqnFi6L4ZiMSs2LuO43s6nac3ja5377nDaYn0x4
 7Pq2x/wsg+o8EE3dXVvAOQPu9bvAuP4Ayf3wpILEmlO9x2i4gVc/iCbeOK7OTSWm1Oho=;
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1igg5i-00CXCr-WA
 for openipmi-developer@lists.sourceforge.net; Mon, 16 Dec 2019 02:26:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 689E067AB;
 Sun, 15 Dec 2019 21:26:27 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sun, 15 Dec 2019 21:26:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=LMvNcL8FAR0Bl
 X1niTXZqCp51Bk+aavvUIWGJqthYZY=; b=pA+cRFbnpoLewByXQES392IPTTQSc
 SoDYUpKkgsRpJ4jCjKwJcJIoRtHUxfyPxvjFZOptkQvDAJvvGpBG9eJrWsg1rV0y
 uHnap82HcG2n2JffaTn48i77ec9m4/LXYD8EMHrJmkIuTwq+U2W6M3ljcqPiuaUQ
 AFG7vmIL/0SKnrKIiSOdc4coq8JVMF4Crbe6OPQtezw5pQ75gYztO7dEFwAXWCGC
 sQLGJv2/BFF4Gjl56xg9AHkqhBI6+Yp4Evh1XgxEcBbXt5n22sClND7VQXB2S+Vo
 zkORhdd5DrLogFqssQJ2SD2/0LUIkPpI/RkA9OReJaGU9RlgSRPpt1VqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=LMvNcL8FAR0BlX1niTXZqCp51Bk+aavvUIWGJqthYZY=; b=sAyLaezl
 nVDa7nWa/lv2KmmTKv+iVaX8/aBXtMuolc6l5o7T+rKwjOUb2HmFlOd87KBTNXRe
 phiIRXjTjiUBg6BC4TVWARHUEeLcvRKxwXTb09ot4KV/7TC1Y+rR6Xtb/NXtlOu+
 Yy0pRqUVYfBDD0JUEREi1gJm/ooTzCS7g4KXNvquwEuHE4LKI2IVtco9GjKEh3ET
 AUQoG5XaeshjGjyDQrF88EmEnsnqbTYQLoeqGiqkXMa3sG+O6zGlEKN05TS3UdQc
 3G4ZfNB+o+CJhy6D6ugZ+Rr4sFPJnlzj7UoVtB/RiUp86I9r9bndxMuI7fs2L6gk
 ekvHRHeCn2CJBg==
X-ME-Sender: <xms:U-v2Xf6AQiqUufcV_jnLE3Avuin4bP9kxxMx6EGXAYfVauVzIxsdeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppedvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrg
 hilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigv
 pedt
X-ME-Proxy: <xmx:U-v2XZIVgo2FIv_cN7HNg_92Z50Du8rFRhcsbl8TgYMkuSF5y2dP7g>
 <xmx:U-v2XRdIB2CrZYlEGDY4vtG4NIhf_Ia20TdbuERk-Kaq_fnbudT4tQ>
 <xmx:U-v2XUdlEeSWBqbRUI8D7nJVJqBkpo97-8vloDnZHmGfiUlLnPOdpw>
 <xmx:U-v2XXL7MmRPmlLBoMOoJnPT0zvIzjCkvyfY85Q0fWNoBnH-iacL4w>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id D5B4980059;
 Sun, 15 Dec 2019 21:26:22 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Date: Mon, 16 Dec 2019 12:57:41 +1030
Message-Id: <c0aba2c9dfe2d0525e9cefd37995983ead0ec242.1576462051.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
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
X-Headers-End: 1igg5i-00CXCr-WA
Subject: [Openipmi-developer] [PATCH v2 2/3] ipmi: kcs: Finish configuring
 ASPEED KCS device before enable
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

The interrupts were configured after the channel was enabled. Configure
them beforehand so they will work.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
---
v2: Update the commit message based on Corey's suggestion

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
git-series 0.9.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
