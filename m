Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4092C443AE7
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 02:21:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi4xb-0004CS-7H; Wed, 03 Nov 2021 01:21:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <robherring2@gmail.com>) id 1mi4xZ-0004C8-Tw
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 01:21:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:References:In-Reply-To:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fe5Xv+kyJauzq7ZNqvI2QuktA50T37+vjr5WzceAdTw=; b=FP/l5zqfltYsjaj+jseiT3m8A2
 TMk50NPsgqExmgq74GwMZa/aRmpvKwfNQhcWhKNQ2KpSl8i5JomGplns/PsLHCj0c3zhTThfR0mIA
 NpoKKRIed67VJrXYHQFhvV5HlhXRDW9hZ9df2sdDa6PHy/oTtbNen+FNMs79T+mnt3Lo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fe5Xv+kyJauzq7ZNqvI2QuktA50T37+vjr5WzceAdTw=; b=MmOTFBvXVy5cdvVaMkk+M5AUdI
 ISahMfxKepoNhVLF7zKtZ9rYHpdHXNs1fYt21rXN4Ty2m/JMFKZ7gC1czaQot8AnjPMtoQTVIzC0i
 ACrm8J6Ul1/mmoksYe4G0r6B9VxHGDE9XcB9YEd4yix7+9loz2jhPtL+CJTK6MVA5yc0=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mi4xY-0003rZ-2f
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 01:21:00 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 o10-20020a9d718a000000b00554a0fe7ba0so1323424otj.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 02 Nov 2021 18:20:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=fe5Xv+kyJauzq7ZNqvI2QuktA50T37+vjr5WzceAdTw=;
 b=70V9Yywo405GEC2HQGf8gHxn/OjIrgBORqiXz8wMNI6zEy0IwQOEeMQksNsIojGvPV
 IhzgABObd/eC0xSgAARK9QXhm2TEa9h7Z5E2mmZs960aKQ/bIvdt7ShH2hVhEZxpPiB4
 FAHvN1j3zb3W632tKT9DKBj8zg5ZX2wiwm+nLuOq1N1IGHZK8pjuoyKYcJu9bPv8kOw5
 gxXr4v9dJ4A8Xky4gJ5ES1lbk1NMFfwCLSrJ+FbrLtuTztcSMzQ3JiHCh32ro7mHijNH
 q8cTKpdb3yYo3hCteW2sxpE4U21HvU4tcexHxH74sPnkOkspuIlx30y/Ljz9QCoAcbnD
 1NOQ==
X-Gm-Message-State: AOAM533rhfAMmNXZyrEEPegvdmLr340UFAuWTvl0BzWr+EZ0f/toS3C/
 J5Dzbigvu2NBqTPljzh9IA==
X-Google-Smtp-Source: ABdhPJz012ObTzy65pW0RU2VGVoksQdKqgK4OuppwSTNNNdYMfy9+gVwPH8EccTAzNuAlHk+IzJTig==
X-Received: by 2002:a9d:518a:: with SMTP id y10mr24416564otg.143.1635902446777; 
 Tue, 02 Nov 2021 18:20:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id az10sm166312oib.45.2021.11.02.18.20.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 18:20:46 -0700 (PDT)
Received: (nullmailer pid 3880389 invoked by uid 1000);
 Wed, 03 Nov 2021 01:20:37 -0000
From: Rob Herring <robh@kernel.org>
To: jae.hyun.yoo@intel.com
In-Reply-To: <20211102203717.96794-6-jae.hyun.yoo@intel.com>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com>
Date: Tue, 02 Nov 2021 20:20:37 -0500
Message-Id: <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com
 wrote: > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > Add 'clocks'
 as a required property. > > Signed-off-by: Jae Hyun Yoo <jae.hyun [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ozlabs.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mi4xY-0003rZ-2f
Subject: Re: [Openipmi-developer] [PATCH -next v2 5/6] dt-bindings: ipmi:
 aspeed, kcs-bmc: add 'clocks' as a required property
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, Corey Minyard <minyard@acm.org>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ChiaWei Wang <chiawei_wang@aspeedtech.com>, Rob Herring <robh+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> Add 'clocks' as a required property.
> 
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
> v1 -> v2:
> Changes sinve v1:
>  - Added 'clocks' property into kcs-bmc bindings using
>    'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
>    'aspeed-lpc.yaml' yet. The bindings merging could be done using a
>    separate patch later.
> 
>  .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1549943


kcs@114: 'clocks' is a required property
	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml

kcs@24: 'clocks' is a required property
	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml

kcs@28: 'clocks' is a required property
	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml

kcs@2c: 'clocks' is a required property
	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-asrock-e3c246d4i.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
