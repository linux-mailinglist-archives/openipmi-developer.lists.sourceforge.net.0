Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9ED44240F
	for <lists+openipmi-developer@lfdr.de>; Tue,  2 Nov 2021 00:34:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mhgoQ-0005zU-9q; Mon, 01 Nov 2021 23:33:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <joel.stan@gmail.com>) id 1mhgoP-0005zN-Ea
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bzFhFp5jwj6oxpHBZmdG5bSxzTQ5DH20gHG8+yrM+zo=; b=Ptmw7Bw8D5tmptq0rKn+aXxYVy
 UKdKlEUaEk3zXnyf/p/hYo9Z+DbYhgM+wqsQxILCQv3K7Rfk8BWK+NwULSFC1s8ZO1trX6HdPcCER
 AJWuMghMVq/HGj6d9PM8ytYDkO37C4GSBfIxykw4UaBM8e00yg+SJSV7VbjE4d4y/2VQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bzFhFp5jwj6oxpHBZmdG5bSxzTQ5DH20gHG8+yrM+zo=; b=JbjbvYh/kAHQi9oK5G56yC6ZKh
 1IZKeXEOlovG4gqUJnfAfjW/WKkekhqKDnXN9XtDtukiKrM37GY68g7w4euWjV/8r+v/O/yroTBtP
 F8wQsNErLPTw7ZxOFzd+2yXpC1cJvML5OZRX2nEJ1LvjuncfeyMnKdtkqqler2F4Bw/k=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mhgoN-00DEAR-Ft
 for openipmi-developer@lists.sourceforge.net; Mon, 01 Nov 2021 23:33:56 +0000
Received: by mail-qk1-f169.google.com with SMTP id i28so126244qkh.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 01 Nov 2021 16:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bzFhFp5jwj6oxpHBZmdG5bSxzTQ5DH20gHG8+yrM+zo=;
 b=YO88VLC4ltN8sRPtQnd98iOlONFJf8prHHr1jQdwsIyXtSntx2eSmpWr3dhpykK+YT
 Fiphj7V0Qw1L8Qs3BVhxzj7B3cN/YGGjT6j4JW3cSX/EiBHZrxagV9jSUSmOaLDHHNLm
 00KMGqV5Mtm3hIfUzDZYQfJTFGoiPqVGqLhPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bzFhFp5jwj6oxpHBZmdG5bSxzTQ5DH20gHG8+yrM+zo=;
 b=ny7jKtKk3aVp3+QRd2LtXSKMdapXge0JGoQuozVMCmXuRsuhpmNowYZVP3WC3QC8A2
 Q1VNkMI7SnFa3oy2bfYHdNjw9i4YpuQ53ItWkm2jwoZFPv/ksplh0ZZUcOnYt6XXmSjM
 0ZA3IxdMR8+bVMZenl4IjcMpf1eszZ0IRMdIxdp9ioFSR4/l3MlOni7QE5aeK0M0fftp
 s3u0LqkfNEeDkRc0QDU7GU8SAx3cw4dTv4E93BfWSPQsxP2qwRmLGNCATo/3vLudylIF
 rDcUfq0Y+DCG6Y4Gc+SuKrRHfboORB6oOxV/1RNIguXELChOBwSUBrOf5rclKOjKOqPE
 2Csw==
X-Gm-Message-State: AOAM531QWQNNt/Hx4m2iY5o2oFLAYh9sas6J6abQhQ1gB4kvC5becQlk
 ai49k/8Kte9oj/DRE1f/jJsnD0VKNnmZ+N/2MF7TV+hi
X-Google-Smtp-Source: ABdhPJxX2WRQaCU+xpjvX+wOKI7BJJwhAz0DomOJX8odLbZsNSqnqkDe8+QXRWmcZYjvfc4gTD6vFsn57A6IgFtLdiM=
X-Received: by 2002:a05:620a:818:: with SMTP id
 s24mr26017694qks.395.1635809629623; 
 Mon, 01 Nov 2021 16:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-2-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-2-jae.hyun.yoo@intel.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 1 Nov 2021 23:33:37 +0000
Message-ID: <CACPK8XcAN-SsKDS2E_Cnv=5-Rq=9sAWYyb88i2Ub-iX0WH6aZw@mail.gmail.com>
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
 setting into LPC IBT node to enable the LCLK by > individual LPC s [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.169 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mhgoN-00DEAR-Ft
Subject: Re: [Openipmi-developer] [PATCH -next 1/4] ARM: dts: aspeed: add
 LCLK setting into LPC IBT node
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
> Add LCLK clock setting into LPC IBT node to enable the LCLK by
> individual LPC sub drivers.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

Do you need to update the bindings too?

> ---
>  arch/arm/boot/dts/aspeed-g4.dtsi | 1 +
>  arch/arm/boot/dts/aspeed-g5.dtsi | 1 +
>  arch/arm/boot/dts/aspeed-g6.dtsi | 1 +
>  3 files changed, 3 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
> index b313a1cf5f73..f14dace34c5a 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -381,6 +381,7 @@ ibt: ibt@140 {
>                                         compatible = "aspeed,ast2400-ibt-bmc";
>                                         reg = <0x140 0x18>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>
> diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
> index c7049454c7cb..d0cc4be2de59 100644
> --- a/arch/arm/boot/dts/aspeed-g5.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g5.dtsi
> @@ -507,6 +507,7 @@ ibt: ibt@140 {
>                                         compatible = "aspeed,ast2500-ibt-bmc";
>                                         reg = <0x140 0x18>;
>                                         interrupts = <8>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>                         };
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
> index 5106a424f1ce..465c3549fdc3 100644
> --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -581,6 +581,7 @@ ibt: ibt@140 {
>                                         compatible = "aspeed,ast2600-ibt-bmc";
>                                         reg = <0x140 0x18>;
>                                         interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
>                                         status = "disabled";
>                                 };
>                         };
> --
> 2.25.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
