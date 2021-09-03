Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC5A3FF8C0
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Sep 2021 03:53:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mLyOe-0003e1-5i; Fri, 03 Sep 2021 01:53:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel.stan@gmail.com>) id 1mLyOc-0003dl-O3
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Sep 2021 01:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mm2cYuMSJW2ZFjT+fHr5kFu0FfpFJ6P76HgMeBngx2I=; b=C3dPsyPkzhuLCpoWMKPKBBfImp
 snlWZBInPo1FzOQmNd+ZjqCXzDGO5hOL1m7V3neXWRqY9FlTp0Nr3fOxt7ksv7LQ19APCm6WJ2xbf
 0+XeovWQvoT21O5BnmWqMRvgUFHrzXvaGDTN6Xy6Wvmz9gZ/0m8K78brDeaOrda6IuLE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Mm2cYuMSJW2ZFjT+fHr5kFu0FfpFJ6P76HgMeBngx2I=; b=O
 xDttCX7Xjo8UqjpYdP2IJH8tZVZ03WH4nJ3wYABuaeTyuR5WzEC8LvMqjt0Z09udmemLi63MsyNP4
 F/6/jIypuGIJXpk1UmDVkIpjUpBQV/qxCSob/+CxxU7SHMJB6l20zFxADSgNC1eF2xIQOqdof/25b
 DD7vM7zxrhq9qQ5Q=;
Received: from mail-pj1-f52.google.com ([209.85.216.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mLyOa-0004h0-US
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Sep 2021 01:53:34 +0000
Received: by mail-pj1-f52.google.com with SMTP id
 mw10-20020a17090b4d0a00b0017b59213831so2824267pjb.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Sep 2021 18:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mm2cYuMSJW2ZFjT+fHr5kFu0FfpFJ6P76HgMeBngx2I=;
 b=PPCloGI2VVy0nvz1aii56tlati5w430XqltBd7TM1AtGEmbsEnxyNZhcV3BB7OObsa
 P7nbuzKEJGzxOAo1lXvcA4nMgya6p1WDupRazWS1J55Ku45ydHGPpa63ngriUgGFkg7M
 aP3/53qwl/ZZMtaFsAURC6vk4VB47vxILDmkIAYMDSuH7p4F9JhtUAWZEouq2/hDp88J
 Bc8pIBAOVdfX9KAg3giRoO1yxDSUsejFppKvXDdskLLYEoJZp5B9CuAwrkGntVAhdTEk
 gWANr0CtSs4ck1wTT52HVCzGk69q2t5BqPHIH+kQSTlLhP48YuleJdpfrzjH7LCe0quj
 lFWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=Mm2cYuMSJW2ZFjT+fHr5kFu0FfpFJ6P76HgMeBngx2I=;
 b=IVMRRiO8hcO3h4lCEyL8EDYb7nDHmER3ax4fqPeJiFMM1IlBPLmutIesjlLz8P7AF1
 wA+slkWSFOlT1QHEDQXMwrZJkc04yNtGzJahzO57MZNF2dTNtlqC1KIMZJnW/ZLBM78O
 zjBv+5WCYj2L3qtoy+yf5FjEZuZ1QYa5M37XaP9p+az3yd89QmBnbSbL+ONzczGZ9VTE
 elWKagWkbaKp2sOVhnsClnO76K476bsq/kzu+mhCosa4v+hCAyz2Ts6fsFRYjgFQD5+9
 MNAgsqxzkJMFuIS/QkuXPNGjgvOqEnm/wuXZ3xqoITMbZD1Lj1MGPBTAuIGU4Je0chvl
 gRow==
X-Gm-Message-State: AOAM533Jr/0QtqwjSawvlahTK2p5H5aCCfPeacZj65tI2YTYHSnNc/q1
 /PBCJ58mJFRRFBH+FGndrSs=
X-Google-Smtp-Source: ABdhPJxRhXxhp7dptMcx+XfCEgRqLaXreFkz3eMODkK3BqrZSy68RN//cwCLj5IlzFlBlMT8oyMlfg==
X-Received: by 2002:a17:902:c38d:b0:135:509b:7ba0 with SMTP id
 g13-20020a170902c38d00b00135509b7ba0mr1147075plg.50.1630634004080; 
 Thu, 02 Sep 2021 18:53:24 -0700 (PDT)
Received: from voyager.lan ([45.124.203.15])
 by smtp.gmail.com with ESMTPSA id o10sm3786689pgp.68.2021.09.02.18.53.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Sep 2021 18:53:23 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Corey Minyard <minyard@acm.org>
Date: Fri,  3 Sep 2021 11:23:14 +0930
Message-Id: <20210903015314.177987-1-joel@jms.id.au>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.52 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.52 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jms.id.au]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1mLyOa-0004h0-US
Subject: [Openipmi-developer] [PATCH] ipmi: bt: Add ast2600 compatible string
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
Cc: Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The AST2600 has the same register set as the previous generation SoCs.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt          | 1 +
 drivers/char/ipmi/bt-bmc.c                                       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
index 028268fd99ee..c9902fd4b38b 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
@@ -9,6 +9,7 @@ Required properties:
 - compatible : should be one of
 	"aspeed,ast2400-ibt-bmc"
 	"aspeed,ast2500-ibt-bmc"
+	"aspeed,ast2600-ibt-bmc"
 - reg: physical address and size of the registers
 
 Optional properties:
diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index 6e3d247b55d1..d16516be9ac9 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -508,6 +508,7 @@ static int bt_bmc_remove(struct platform_device *pdev)
 static const struct of_device_id bt_bmc_match[] = {
 	{ .compatible = "aspeed,ast2400-ibt-bmc" },
 	{ .compatible = "aspeed,ast2500-ibt-bmc" },
+	{ .compatible = "aspeed,ast2600-ibt-bmc" },
 	{ },
 };
 
-- 
2.33.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
