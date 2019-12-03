Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBC611002A
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Dec 2019 15:31:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ic9DD-00061a-Rt; Tue, 03 Dec 2019 14:31:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robh+dt@kernel.org>) id 1ic9DC-00061C-ON
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 14:31:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r/V+Zw+Wkdele1M32QRoHvABt0XYPtDwIi0dSI3baWw=; b=lEI/caB1ngRwqMDgaNWYLg7T+2
 lS4LbHNFxzLaEpggOcvQIisaTM3+LHAlaN8TWha36oLSdJGvIXb6YhsSvRifoTLbqreFG/ycZl1c4
 6k1ypNb9hddJZ+aBEC7bQSb0eNOmVbBQ32lBTiTUgAWrGNzbbbkh4/C10v82ENQUPg84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r/V+Zw+Wkdele1M32QRoHvABt0XYPtDwIi0dSI3baWw=; b=eA4xm11GVQQt1Kyp4g7t1dZPG7
 I/pq3Ps3JTSNYqEjvwV+Dl+Hz7Sc2/4LnQJBVyxlBVaDrub0BVwBX3Fh7VPWVsmSTp4GqO6Es01N9
 jwMsPSBGPPL7NzM/kl7nLYk4rWwzBJlyjvIon/2yTwmrE/NOS3yfm1bpvqxaEOpn/aZI=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ic9DB-005s59-I4
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 14:31:34 +0000
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D94842080F
 for <openipmi-developer@lists.sourceforge.net>;
 Tue,  3 Dec 2019 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575383488;
 bh=paDjy7hZsmQkcUp7jKSH70ftPLffSgdTsEFpUetgz24=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=R73JqXZO27i7uFuaBaYq9o5NUsUs/1I6F7Y8hcmq5mT7j5AnKfUBEHcMrVZbk+yYF
 eiAv4eyAZleeAlLHquPfNBxXv0HA6QgV4VHvXkoeotsu7QQ1sG+5NncRgpZh8rQ+N5
 DH1PptTi3YRW/LdT21dj7wlrXH02g25SDcge8tFk=
Received: by mail-qv1-f53.google.com with SMTP id t9so1545680qvh.13
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 03 Dec 2019 06:31:27 -0800 (PST)
X-Gm-Message-State: APjAAAU/6P7Vgi+XBski0vuYICXAd7RVubSSWGyoQtdAU/V5d3zh+zH9
 2mwDizPmWTOTFpvwqvBPmRc+7jlXaov02BksZg==
X-Google-Smtp-Source: APXvYqxDBnGQNKjTk3qSKKiOvMvxPKQPV7m6ur08FqhiSl9j9w8DAHBF3481M9puWdGG8hXS2X7yJKuiKlMAjUfp4E0=
X-Received: by 2002:a05:6214:11ac:: with SMTP id
 u12mr5420247qvv.85.1575383483847; 
 Tue, 03 Dec 2019 06:31:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
In-Reply-To: <3da2492c244962c27b21aad87bfa6bf74f568f1d.1575376664.git-series.andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Dec 2019 08:31:10 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+3qXJbTu9G42g11PLJH-A0XeSQmJKj0obO32QFna3dEA@mail.gmail.com>
Message-ID: <CAL_Jsq+3qXJbTu9G42g11PLJH-A0XeSQmJKj0obO32QFna3dEA@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ic9DB-005s59-I4
Subject: Re: [Openipmi-developer] [PATCH 1/3] dt-bindings: ipmi: aspeed:
 Introduce a v2 binding for KCS
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-aspeed@lists.ozlabs.org, openipmi-developer@lists.sourceforge.net,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Dec 3, 2019 at 6:36 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The v2 binding utilises reg and renames some of the v1 properties.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
>  1 file changed, 14 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> index d98a9bf45d6c..76b180ebbde4 100644
> --- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> @@ -1,9 +1,10 @@
> -* Aspeed KCS (Keyboard Controller Style) IPMI interface
> +# Aspeed KCS (Keyboard Controller Style) IPMI interface
>
>  The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
>  (Baseboard Management Controllers) and the KCS interface can be
>  used to perform in-band IPMI communication with their host.
>
> +## v1
>  Required properties:
>  - compatible : should be one of
>      "aspeed,ast2400-kcs-bmc"
> @@ -12,14 +13,21 @@ Required properties:
>  - kcs_chan : The LPC channel number in the controller
>  - kcs_addr : The host CPU IO map address
>
> +## v2
> +Required properties:
> +- compatible : should be one of
> +    "aspeed,ast2400-kcs-bmc-v2"
> +    "aspeed,ast2500-kcs-bmc-v2"
> +- reg : The address and size of the IDR, ODR and STR registers
> +- interrupts : interrupt generated by the controller
> +- slave-reg : The host CPU IO map address

aspeed,slave-reg

>
>  Example:
>
> -    kcs3: kcs3@0 {
> -        compatible = "aspeed,ast2500-kcs-bmc";
> -        reg = <0x0 0x80>;
> +    kcs3: kcs@24 {
> +        compatible = "aspeed,ast2500-kcs-bmc-v2";
> +        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;

What are the other registers in this address space? I'm not so sure
this is an improvement if you end up with a bunch of nodes with single
registers.

>          interrupts = <8>;
> -        kcs_chan = <3>;
> -        kcs_addr = <0xCA2>;
> +        slave-reg = <0xca2>;
>          status = "okay";
>      };
> --
> git-series 0.9.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
