Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6D64C62E9
	for <lists+openipmi-developer@lfdr.de>; Mon, 28 Feb 2022 07:29:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nOZWu-0005Lo-QA; Mon, 28 Feb 2022 06:29:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1nOZWr-0005Li-C6
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Feb 2022 06:29:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kgkht8rO3+k+idfR5uRJ1HfsqsQMZyUwVEbEeZKhHjE=; b=KtdXxpZ7jOlcJvs1Jv82v9z/nz
 DYINwmc9O9aVZpTMOJCDUL7M0bzOfECah4zeGMPwQBE+yXGPPvXHiL67Cow5eKPmIwhhdsixk7hL7
 FyQYfUDbhKi0zBN10zs+MJq3eqNfWhVK8ndcMe1FC8c3au+VMzlcVfaVUxS2XX9Cmr0M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kgkht8rO3+k+idfR5uRJ1HfsqsQMZyUwVEbEeZKhHjE=; b=S
 gOom1ArRZTebN+nD7kk304SMVJXLk2nOPaLNeRGZjkDI/suUhrhWkt4qq27rjW6/Ot2q9KhX7mPzj
 qxxwZmlDH3lbRxtq1upMxzFR9bpTLriVMC+6LVZcnOrnYUWccBK/BUSYUQPd2J1EFPEMhBVkY55wP
 vZpHuK1+12wn1TYU=;
Received: from mail-pl1-f174.google.com ([209.85.214.174])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOZWk-00HQJN-PH
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Feb 2022 06:29:03 +0000
Received: by mail-pl1-f174.google.com with SMTP id u2so2280669ple.10
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 27 Feb 2022 22:28:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kgkht8rO3+k+idfR5uRJ1HfsqsQMZyUwVEbEeZKhHjE=;
 b=kqM+hru6jSskCkg5PdmIDHNL7QpnS4FW4Nv3E1DGRt/E+U58Xi7K6hizyFaWCS3b2u
 tw16/3A7hqdcOfCtXaGPmN45ZyXeT8alr09PgE8W0EzWdcK2rU+q+nMTQSFWHngxi0cn
 vGuz7CR9RnMvxBdW6d6zERNdivLxnssk/m8xXs4YBhRLsTO3nxgIhvu1rTeFLlS42s0m
 l3fsryM3sssy/fjsTmtRSSWq0ItydwX2NuIqy6ILxAY4bWvicaY49GjwgJwO5VAbUVho
 Dx+Giy6D4MLhtazgXVlMT6ts8Pxq45yKBR6HBipdZ7eg6Xvd+HO9M2wPJ8TSfwHh+WDS
 pihA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=kgkht8rO3+k+idfR5uRJ1HfsqsQMZyUwVEbEeZKhHjE=;
 b=Ua25E3dO0xX2u30WepY/LEYkgrWMFoPKjLz2M8yj8vR8R9DbKCMoc12eDqaaEYg2qU
 iVF3UjFOic8JpjTRecCVmNNKGfTyU9uDFKyu2vsJpTxZLRxxdw+EmN2/x8p3EVpNNzAM
 8yt+n2dcnmn8PGkA8ClRS0ZDCTnW96dY2qvNfIi4YViVTyglbCsiPrwVFYaCJs079dgu
 F2CYiGZyNedweo31/5QDKJjhBOA1waPYhgjbC8FQooTpK7xoRhsLqKLormGBy9+pRGJb
 4cgZSqBdszku4magosa6+hudkdOgc8tX/P7ZehKAWNaKpc9LHEXinBSe2xcfHJVzgnUj
 /AKA==
X-Gm-Message-State: AOAM5333p7BjzzrmjUK/p/EuiPK2ge/YpnG0xx4WweMcSYHE0NiJZFW9
 X7EpTO9lcrtiQStS1xmR6Ux3MuWd6aK9lw==
X-Google-Smtp-Source: ABdhPJyLO+XgLKspmv3xaH4VQ0Hs70/KY9rG8FX1VN1kW658ZWX2yIz1S/0nf6UGe1kKvH8LappEmQ==
X-Received: by 2002:a17:90b:408b:b0:1bd:3839:1413 with SMTP id
 jb11-20020a17090b408b00b001bd38391413mr5874286pjb.138.1646029732542; 
 Sun, 27 Feb 2022 22:28:52 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id
 2-20020a631342000000b0037487b6b018sm9202701pgt.0.2022.02.27.22.28.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 22:28:51 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Corey Minyard <minyard@acm.org>,
	Andrew Jeffery <andrew@aj.id.au>
Date: Mon, 28 Feb 2022 16:58:40 +1030
Message-Id: <20220228062840.449215-1-joel@jms.id.au>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: It's been a few releases since we depreciated the "v1"
 bindings.
 Remove support from the driver as all known device trees have been updated
 to use the new bindings. Signed-off-by: Joel Stanley <joel@jms.id.au> ---
 This applies on top of the patch to add ast2600 support. I kept them separate
 as the ast2600 change is suitable for backporting, but this one is not. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.174 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.174 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nOZWk-00HQJN-PH
Subject: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Remove old bindings
 support
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
Cc: openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It's been a few releases since we depreciated the "v1" bindings. Remove
support from the driver as all known device trees have been updated to
use the new bindings.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
This applies on top of the patch to add ast2600 support. I kept them
separate as the ast2600 change is suitable for backporting, but this one
is not.

 drivers/char/ipmi/kcs_bmc_aspeed.c | 68 +++---------------------------
 1 file changed, 7 insertions(+), 61 deletions(-)

diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
index b555286016b1..cdc88cde1e9a 100644
--- a/drivers/char/ipmi/kcs_bmc_aspeed.c
+++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
@@ -128,11 +128,6 @@ struct aspeed_kcs_bmc {
 	} obe;
 };
 
-struct aspeed_kcs_of_ops {
-	int (*get_channel)(struct platform_device *pdev);
-	int (*get_io_address)(struct platform_device *pdev, u32 addrs[2]);
-};
-
 static inline struct aspeed_kcs_bmc *to_aspeed_kcs_bmc(struct kcs_bmc_device *kcs_bmc)
 {
 	return container_of(kcs_bmc, struct aspeed_kcs_bmc, kcs_bmc);
@@ -475,38 +470,7 @@ static const struct kcs_ioreg ast_kcs_bmc_ioregs[KCS_CHANNEL_MAX] = {
 	{ .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
 };
 
-static int aspeed_kcs_of_v1_get_channel(struct platform_device *pdev)
-{
-	struct device_node *np;
-	u32 channel;
-	int rc;
-
-	np = pdev->dev.of_node;
-
-	rc = of_property_read_u32(np, "kcs_chan", &channel);
-	if ((rc != 0) || (channel == 0 || channel > KCS_CHANNEL_MAX)) {
-		dev_err(&pdev->dev, "no valid 'kcs_chan' configured\n");
-		return -EINVAL;
-	}
-
-	return channel;
-}
-
-static int
-aspeed_kcs_of_v1_get_io_address(struct platform_device *pdev, u32 addrs[2])
-{
-	int rc;
-
-	rc = of_property_read_u32(pdev->dev.of_node, "kcs_addr", addrs);
-	if (rc || addrs[0] > 0xffff) {
-		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
-		return -EINVAL;
-	}
-
-	return 1;
-}
-
-static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
+static int aspeed_kcs_of_get_channel(struct platform_device *pdev)
 {
 	struct device_node *np;
 	struct kcs_ioreg ioreg;
@@ -535,12 +499,11 @@ static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
 		if (!memcmp(&ast_kcs_bmc_ioregs[i], &ioreg, sizeof(ioreg)))
 			return i + 1;
 	}
-
 	return -EINVAL;
 }
 
 static int
-aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev, u32 addrs[2])
+aspeed_kcs_of_get_io_address(struct platform_device *pdev, u32 addrs[2])
 {
 	int rc;
 
@@ -567,7 +530,6 @@ aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev, u32 addrs[2])
 
 static int aspeed_kcs_probe(struct platform_device *pdev)
 {
-	const struct aspeed_kcs_of_ops *ops;
 	struct kcs_bmc_device *kcs_bmc;
 	struct aspeed_kcs_bmc *priv;
 	struct device_node *np;
@@ -585,15 +547,11 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	ops = of_device_get_match_data(&pdev->dev);
-	if (!ops)
-		return -EINVAL;
-
-	channel = ops->get_channel(pdev);
+	channel = aspeed_kcs_of_get_channel(pdev);
 	if (channel < 0)
 		return channel;
 
-	nr_addrs = ops->get_io_address(pdev, addrs);
+	nr_addrs = aspeed_kcs_of_get_io_address(pdev, addrs);
 	if (nr_addrs < 0)
 		return nr_addrs;
 
@@ -678,22 +636,10 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct aspeed_kcs_of_ops of_v1_ops = {
-	.get_channel = aspeed_kcs_of_v1_get_channel,
-	.get_io_address = aspeed_kcs_of_v1_get_io_address,
-};
-
-static const struct aspeed_kcs_of_ops of_v2_ops = {
-	.get_channel = aspeed_kcs_of_v2_get_channel,
-	.get_io_address = aspeed_kcs_of_v2_get_io_address,
-};
-
 static const struct of_device_id ast_kcs_bmc_match[] = {
-	{ .compatible = "aspeed,ast2400-kcs-bmc", .data = &of_v1_ops },
-	{ .compatible = "aspeed,ast2500-kcs-bmc", .data = &of_v1_ops },
-	{ .compatible = "aspeed,ast2400-kcs-bmc-v2", .data = &of_v2_ops },
-	{ .compatible = "aspeed,ast2500-kcs-bmc-v2", .data = &of_v2_ops },
-	{ .compatible = "aspeed,ast2600-kcs-bmc", .data = &of_v2_ops },
+	{ .compatible = "aspeed,ast2400-kcs-bmc-v2" },
+	{ .compatible = "aspeed,ast2500-kcs-bmc-v2" },
+	{ .compatible = "aspeed,ast2600-kcs-bmc" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
-- 
2.34.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
