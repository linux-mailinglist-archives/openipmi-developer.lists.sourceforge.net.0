Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F653592F3
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 05:19:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUhgA-0007M8-CM; Fri, 09 Apr 2021 03:19:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <joel.stan@gmail.com>) id 1lUhg9-0007Lk-Ad
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4tlsotF4H+AmLvxNjD/snhIqz+CJm5ffNylMiriBTrI=; b=Z4hS1laNOmEqUmQVrVr6ECSL4D
 xdb6y/OpqGPA9MBUDa1lzoLU9uOunRFeFmbLUOH7ByKV21nrexUAOQ8gPyiF5jMgOZLApPrP5Pv2N
 6JK8kq12EqoVyVulchsfVuI9ruqjTCRi43SSR6kedAg50rqNIEjig4ucVURaO4hIzCYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4tlsotF4H+AmLvxNjD/snhIqz+CJm5ffNylMiriBTrI=; b=PIznavBRZkt625WmDDrfy+zKov
 hG8DbsHbmcUHijCzcwD8Q1yXc32syWjKoVs9W6iW5y3/76sf7HWWAdTOAY7Uk7DKm7vu18jqGid+N
 yucKUSb07r8XZ5RomyXIfuehGUrO/HaZzlgrBwv6YZy9d0RnWyfiRqAYhP2doBGcPj8A=;
Received: from mail-qt1-f180.google.com ([209.85.160.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lUhfu-0084K3-G9
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 03:19:29 +0000
Received: by mail-qt1-f180.google.com with SMTP id x9so3207501qto.8
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 20:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4tlsotF4H+AmLvxNjD/snhIqz+CJm5ffNylMiriBTrI=;
 b=JtXchGW/69XHEdWjps7WnhWcSL4QJKiCa+XoD9A9oJ5iGzSPpM8sJ9LgZt8xOTiyxq
 p/as1e9vX72qXH3SNByu502tI5MFomxlGMI3KtPNyxcZrVcDVjqt+pqwNAZJyMsok57/
 wu0/XWL/CNfYhAPGDbWWrgs7ZxvAeX2WAZmJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4tlsotF4H+AmLvxNjD/snhIqz+CJm5ffNylMiriBTrI=;
 b=HdbRzriiAQZmJ3eSiQr+X1bZnNTvQxwNo8xCbNA1Pn3RfcXnciOjexQrYVkbBKX6DC
 lubNSj2C/5F0D5I+4VQqQyIwbP5Ts5H+4AGAgZP30QLLY4lYR30I/w1e5Akyut0Zcw2H
 HLjKIPffVSBVxMZiAoZAUa/uk2N9vrSsWYzOl/zfeKTz8XkKHH1aZUArdnob8EX+e5vU
 R0mXbWLIRuu8mUKBqrlxuIhrGWMgNzBJmE415U9IrYlF7/yFTDMPs/T2HuROLjc0xnrO
 yTr+WmRy7mNBueEDp1mQRUD9BOe9klz9d2HZZeRI1DeNyUEv9OtXcOSr2APDsK7ScbXr
 I1DQ==
X-Gm-Message-State: AOAM530BAWQ1B77rsOZ+86Wm7Fqm/P0mQi5QgQUSBoY0D5n8D95n0Qi4
 d1e5H1pmOFWafZNGP3u+VEe087GkcCThgNN5Vcw=
X-Google-Smtp-Source: ABdhPJz4xEUAC6m97NKz1UjwDx/kiYVvZRBIBprh3OJLwWO9Waj9drc7EI7fMCOOoJmw7S4anNcOgjtvJOf2NrXgzpA=
X-Received: by 2002:ac8:5f87:: with SMTP id j7mr10453274qta.135.1617938348141; 
 Thu, 08 Apr 2021 20:19:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210319062752.145730-1-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-1-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 9 Apr 2021 03:18:55 +0000
Message-ID: <CACPK8Xdw3+2Rt=tQ-ciusyK=W6BaP_DR4FSFp0qDuPq5z8MPBQ@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.180 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aspeedtech.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.180 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lUhfu-0084K3-G9
Subject: Re: [Openipmi-developer] [PATCH v2 01/21] dt-bindings: aspeed-lpc:
 Remove LPC partitioning
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Corey Minyard <minyard@acm.org>,
 Rob Herring <robh@kernel.org>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 19 Mar 2021 at 06:28, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
>
> The LPC controller has no concept of the BMC and the Host partitions.
> This patch fixes the documentation by removing the description on LPC
> partitions. The register offsets illustrated in the DTS node examples
> are also fixed to adapt to the LPC DTS change.

Is this accurate:

 The node examples change their reg address to be an offset from the
LPC HC to be an offset from the base of the LPC region.

Reviewed-by: Joel Stanley <joel@jms.id.au>

>
> Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> Acked-by: Rob Herring <robh@kernel.org>
> Acked-by: Lee Jones <lee.jones@linaro.org>
> ---
>  .../devicetree/bindings/mfd/aspeed-lpc.txt    | 100 +++++-------------
>  1 file changed, 25 insertions(+), 75 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> index d0a38ba8b9ce..936aa108eab4 100644
> --- a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> +++ b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> @@ -9,13 +9,7 @@ primary use case of the Aspeed LPC controller is as a slave on the bus
>  conditions it can also take the role of bus master.
>
>  The LPC controller is represented as a multi-function device to account for the
> -mix of functionality it provides. The principle split is between the register
> -layout at the start of the I/O space which is, to quote the Aspeed datasheet,
> -"basically compatible with the [LPC registers from the] popular BMC controller
> -H8S/2168[1]", and everything else, where everything else is an eclectic
> -collection of functions with a esoteric register layout. "Everything else",
> -here labeled the "host" portion of the controller, includes, but is not limited
> -to:
> +mix of functionality, which includes, but is not limited to:
>
>  * An IPMI Block Transfer[2] Controller
>
> @@ -44,80 +38,36 @@ Required properties
>  ===================
>
>  - compatible:  One of:
> -               "aspeed,ast2400-lpc", "simple-mfd"
> -               "aspeed,ast2500-lpc", "simple-mfd"
> -               "aspeed,ast2600-lpc", "simple-mfd"
> +               "aspeed,ast2400-lpc-v2", "simple-mfd", "syscon"
> +               "aspeed,ast2500-lpc-v2", "simple-mfd", "syscon"
> +               "aspeed,ast2600-lpc-v2", "simple-mfd", "syscon"
>
>  - reg:         contains the physical address and length values of the Aspeed
>                  LPC memory region.
>
>  - #address-cells: <1>
>  - #size-cells: <1>
> -- ranges:      Maps 0 to the physical address and length of the LPC memory
> -                region
> -
> -Required LPC Child nodes
> -========================
> -
> -BMC Node
> ---------
> -
> -- compatible:  One of:
> -               "aspeed,ast2400-lpc-bmc"
> -               "aspeed,ast2500-lpc-bmc"
> -               "aspeed,ast2600-lpc-bmc"
> -
> -- reg:         contains the physical address and length values of the
> -                H8S/2168-compatible LPC controller memory region
> -
> -Host Node
> ----------
> -
> -- compatible:   One of:
> -               "aspeed,ast2400-lpc-host", "simple-mfd", "syscon"
> -               "aspeed,ast2500-lpc-host", "simple-mfd", "syscon"
> -               "aspeed,ast2600-lpc-host", "simple-mfd", "syscon"
> -
> -- reg:         contains the address and length values of the host-related
> -                register space for the Aspeed LPC controller
> -
> -- #address-cells: <1>
> -- #size-cells: <1>
> -- ranges:      Maps 0 to the address and length of the host-related LPC memory
> +- ranges:      Maps 0 to the physical address and length of the LPC memory
>                  region
>
>  Example:
>
>  lpc: lpc@1e789000 {
> -       compatible = "aspeed,ast2500-lpc", "simple-mfd";
> +       compatible = "aspeed,ast2500-lpc-v2", "simple-mfd", "syscon";
>         reg = <0x1e789000 0x1000>;
>
>         #address-cells = <1>;
>         #size-cells = <1>;
>         ranges = <0x0 0x1e789000 0x1000>;
>
> -       lpc_bmc: lpc-bmc@0 {
> -               compatible = "aspeed,ast2500-lpc-bmc";
> +       lpc_snoop: lpc-snoop@0 {
> +               compatible = "aspeed,ast2600-lpc-snoop";
>                 reg = <0x0 0x80>;
> -       };
> -
> -       lpc_host: lpc-host@80 {
> -               compatible = "aspeed,ast2500-lpc-host", "simple-mfd", "syscon";
> -               reg = <0x80 0x1e0>;
> -               reg-io-width = <4>;
> -
> -               #address-cells = <1>;
> -               #size-cells = <1>;
> -               ranges = <0x0 0x80 0x1e0>;
> +               interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
> +               snoop-ports = <0x80>;
>         };
>  };
>
> -BMC Node Children
> -==================
> -
> -
> -Host Node Children
> -==================
>
>  LPC Host Interface Controller
>  -------------------
> @@ -149,14 +99,12 @@ Optional properties:
>
>  Example:
>
> -lpc-host@80 {
> -       lpc_ctrl: lpc-ctrl@0 {
> -               compatible = "aspeed,ast2500-lpc-ctrl";
> -               reg = <0x0 0x80>;
> -               clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
> -               memory-region = <&flash_memory>;
> -               flash = <&spi>;
> -       };
> +lpc_ctrl: lpc-ctrl@80 {
> +       compatible = "aspeed,ast2500-lpc-ctrl";
> +       reg = <0x80 0x80>;
> +       clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
> +       memory-region = <&flash_memory>;
> +       flash = <&spi>;
>  };
>
>  LPC Host Controller
> @@ -179,9 +127,9 @@ Required properties:
>
>  Example:
>
> -lhc: lhc@20 {
> +lhc: lhc@a0 {
>         compatible = "aspeed,ast2500-lhc";
> -       reg = <0x20 0x24 0x48 0x8>;
> +       reg = <0xa0 0x24 0xc8 0x8>;
>  };
>
>  LPC reset control
> @@ -192,16 +140,18 @@ state of the LPC bus. Some systems may chose to modify this configuration.
>
>  Required properties:
>
> - - compatible:         "aspeed,ast2600-lpc-reset" or
> -                       "aspeed,ast2500-lpc-reset"
> -                       "aspeed,ast2400-lpc-reset"
> + - compatible:         One of:
> +                       "aspeed,ast2600-lpc-reset";
> +                       "aspeed,ast2500-lpc-reset";
> +                       "aspeed,ast2400-lpc-reset";
> +
>   - reg:                        offset and length of the IP in the LHC memory region
>   - #reset-controller   indicates the number of reset cells expected
>
>  Example:
>
> -lpc_reset: reset-controller@18 {
> +lpc_reset: reset-controller@98 {
>          compatible = "aspeed,ast2500-lpc-reset";
> -        reg = <0x18 0x4>;
> +        reg = <0x98 0x4>;
>          #reset-cells = <1>;
>  };
> --
> 2.27.0
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
