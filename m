Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E131442412
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 00:34:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhgoz-0006BD-LN; Mon, 01 Nov 2021 23:34:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1mhgoy-0006B7-T1
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:34:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=76RMjnoXPjwirFsKHB7iHBCUdiCcGHMsVhyPA6k+egA=; b=RZy7vCc2TdpTenyPbAcCyAM56P
 VkuicAwTPv5AOdK4suhGL+2WpH4al84bbgSswozRm0kIbHOiRAN//8rcRno/JPP4xwFoj1Fe1OQ3j
 K0Zu2Y3ZoVJMHMyCbRkrCl+p80w39jqd+CUrmr7jfFrJeHE0gP28yMzmOxz9MjCE0BDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=76RMjnoXPjwirFsKHB7iHBCUdiCcGHMsVhyPA6k+egA=; b=Ke/Dy7B2omZuIKFDE2x3uCWZkO
 jghdWAiOdITEY53gsXbJqcb14nan0Xw5UVrUgbOrWnAp3KLWMUjtlOhIDinyE8kWq00jlrmTfNpjs
 NKQ5VApzGEJe3uoXbW3/mQAQ6UusbB777YbInkzqCFffxsPu349bVrhn5PcbCo2fAOlU=;
Received: from mail-qv1-f54.google.com ([209.85.219.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhgov-0004bq-1L
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:34:32 +0000
Received: by mail-qv1-f54.google.com with SMTP id g25so11253406qvf.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Nov 2021 16:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=76RMjnoXPjwirFsKHB7iHBCUdiCcGHMsVhyPA6k+egA=;
 b=nPMvyvjF0zj2silLmqDM2HS7695J3dZCiwA/l6z8FVmixdi/W1xDj18O1zPLh4LUFz
 27K99x4FpYngSCP4NBmNfFEfYIaVDTm1/2Bg25xXvgqjRqGPcSjSLxpxANXBuT2iM+8y
 JP2KzpBfOINB/0q9P8RFBD3QLIvosqGiPKP7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=76RMjnoXPjwirFsKHB7iHBCUdiCcGHMsVhyPA6k+egA=;
 b=zvPHh9qzH9zwUCDyH2A9O/GZwOtSVP1D82uhQ3J1hAfWRhr6NIOlIWZeHe88KTAKKp
 bDzkoLlv4zUePokoSJSjxcaop7jlioeE0XmYXvIT8UnR5pnXIVMaH7M2KkQrWXknzIZV
 X2RB+BWNGSbg2rot3zXh0BV0dPnVYcyu5+XsvHpdiZGJv7UbyNWZqrBw6+ytmITyQ3dM
 Q12SN1E2tajDd8Cjeiz4WolKzlYBFE1ldsLN7UDZ/lWUteb/7cv+V+AnEnbNgPbzy8rB
 yi/glCX1wVjA65PI33csN9tx0C/Cr0xO/xH3hxmw+ws761NNy/cheKmLH+vGgjSC9zu9
 4pGg==
X-Gm-Message-State: AOAM5304uC9Jz7OQUbdrRnxCPuz2fizPAEOaTRjeO1ZNB2CMjiZT31/J
 c9ot++WUEZ+yOHyZxLeqIlhD9UE9tKbT7YNF3Oo=
X-Google-Smtp-Source: ABdhPJxQlLMMwkddOTL4uZwYA9UAhQj8QLRlH7FrNeXHAwJM6ieVXUOUzBUep+EV7fOQx6XZeAYTXN2ge3VwRihdW0E=
X-Received: by 2002:a05:6214:5002:: with SMTP id
 jo2mr31550933qvb.27.1635809663240; 
 Mon, 01 Nov 2021 16:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-4-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-4-jae.hyun.yoo@intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 1 Nov 2021 23:34:11 +0000
Message-ID: <CACPK8XcVUEdxjJTOQDf2S-VL3rbwMctQH=v3teyrEgCk__1MVg@mail.gmail.com>
To: Jae Hyun Yoo <jae.hyun.yoo@intel.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
 > > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > Add LCLK clock
 setting into LPC KCS nodes to enable the LCLK by > individual LPC [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhgov-0004bq-1L
Subject: Re: [Openipmi-developer] [PATCH -next 3/4] ARM: dts: aspeed: add
 LCLK setting into LPC KCS nodes
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Cedric Le Goater <clg@kaod.org>, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>
> Add LCLK clock setting into LPC KCS nodes to enable the LCLK by
> individual LPC sub drivers.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  arch/arm/boot/dts/aspeed-g5.dtsi | 4 ++++
>  arch/arm/boot/dts/aspeed-g6.dtsi | 4 ++++
>  2 files changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
> index d0cc4be2de59..7495f93c5069 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -446,6 +446,7 @@ kcs1: kcs@24 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -453,6 +454,7 @@ kcs2: kcs@28 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -460,6 +462,7 @@ kcs3: kcs@2c {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -467,6 +470,7 @@ kcs4: kcs@114 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
> index 465c3549fdc3..891b862363a7 100644
> --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -520,6 +520,7 @@ kcs1: kcs@24 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
>                                         interrupts = <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         kcs_chan = <1>;
>                                         status = "disabled";
>                                 };
> @@ -528,6 +529,7 @@ kcs2: kcs@28 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x28 0x1>, <0x34 0x1>, <0x40 0x1>;
>                                         interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -535,6 +537,7 @@ kcs3: kcs@2c {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x2c 0x1>, <0x38 0x1>, <0x44 0x1>;
>                                         interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> @@ -542,6 +545,7 @@ kcs4: kcs@114 {
>                                         compatible = "aspeed,ast2500-kcs-bmc-v2";
>                                         reg = <0x114 0x1>, <0x118 0x1>, <0x11c 0x1>;
>                                         interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> --
> 2.25.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
