Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F29E910FE33
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Dec 2019 13:56:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ic7j7-0004Jb-R9; Tue, 03 Dec 2019 12:56:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1ic7j4-0004JJ-SQ
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 12:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AOngRiTxh05CHc+UEUsafbobBZ4W/uuHTrMYg0GNvQ0=; b=aZo9GgVoTDrXMPu+xCJAhGTChu
 kU8PMh3lmvKTera3EytHSHOnLnxFRSHT0A4hk+i+ggpkpHXG1+sbZc7LKkDAD0VfuLN8UjP/pyeIv
 D4Q4G+FOudnwLcqcl1XB1sOPynqL9wgLIYat7k/+Dxufk9GSm0wGR+eNO7mz6fMH0QIs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AOngRiTxh05CHc+UEUsafbobBZ4W/uuHTrMYg0GNvQ0=; b=g84r4Uw/9Eh2QcpBsHyLRgN0SF
 MTFaIP558hb+74dc8ZsIAKimzuymui6rAiaqNaqKt6uGVmbDU4scUTjasxz6DypnnSBPX3Iltj/+3
 7rzApcfK2D4KgcPWL1yG8zfcXk+4FOSzj0jUt1SeDUmyxQxAlHRu/AoGIcKhl2O1TRiI=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ic7iz-002JNt-9M
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 12:56:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 977F26E85;
 Tue,  3 Dec 2019 07:36:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:36:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=AOngRiTxh05CH
 c+UEUsafbobBZ4W/uuHTrMYg0GNvQ0=; b=K6UKXHMtMTt+v5izg/FIaaOlfWIFx
 QKYJDjdBLuiPwveORL/Z7ZLqKLtMCxJRHJKBFe3S7YTLYkgPg/R9XF3ttt8hME1d
 kLuIRvmd3jjzfMNKPW1r8sYa7MY6COKm9orTx3D8AmY7J3UcU2FucQwOhZ4D0knV
 4ZjtQ8WcDbtBnak2CZlWdq8m+1oACZ5YoWtxKlkjNxuhFrzc+AEdljhYu2A1DMuz
 JZcYpkC2e1TDhX/s1VZ2N5A+DACFaKATb+wwD7miq7Kq03T3vsLwQK9G6+3rI10j
 U5+DhpevETDEW5Kj4BY3H6eXQNs7/rFf3VDPk4nBIwfQKtfcPMD1isIxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=AOngRiTxh05CHc+UEUsafbobBZ4W/uuHTrMYg0GNvQ0=; b=x/m6vK9v
 aD6N1e8pg1RiacnJjH5ClB/vRaIObK4ns/1Mshh/9q+gTrY6xvBV68m/xCwRabYz
 rnoV0eUwo+4Idx2DmWz+mC0NHAwE6k/Ko/DiNNBNvPVKTrNjQA/zh4J1O/kzhO+A
 b2W4eYJIUrdo+m6xntQI7fGRV7N3Ms7sFGq69sXPQte9iel94Boch5XOmjLcprlA
 2QeHA+g8JyVU+dX3/QHb2/63vC1ddaIvOcYi6qGzwkNvQZGIRT5TnfrY8R2TTH58
 +oYynpoIXNYE1AI7rvcmU36W1wL8G9ZvOoNoZOvoRjcyWXz3LEz653FoYfwlylNr
 J1/+YV9rYFuSWg==
X-ME-Sender: <xms:41bmXdQPNfT-Xk4pNrzu3Qjh2adO7GnC3PcHJVIAreIvMRD2wuac7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:41bmXaMRxaaCkffEGZTaXDhawKltHxAWoW13bcJs5prKeWvjuLuuKA>
 <xmx:41bmXfkNoPeEBXK_pq_cNSN9vq4AV9NiwPQQyMm2rcVPBlUORF_4-w>
 <xmx:41bmXYaWfX9VanLCyYhINZjLp49kbbTNITPv3c8bN6ujn9363MCGrA>
 <xmx:41bmXWIW2rkDzbb1WnNe4fcZdtpq-Qcr4VMMMJ37_w4UQEblksPOXg>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1C20430600D2;
 Tue,  3 Dec 2019 07:36:46 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Date: Tue,  3 Dec 2019 23:08:24 +1030
Message-Id: <84315a29b453068373c096c03433e3a326731988.1575376664.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
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
X-Headers-End: 1ic7iz-002JNt-9M
Subject: [Openipmi-developer] [PATCH 2/3] ipmi: kcs: Finish configuring
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, minyard@acm.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The currently interrupts are configured after the channel was enabled.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
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
git-series 0.9.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
