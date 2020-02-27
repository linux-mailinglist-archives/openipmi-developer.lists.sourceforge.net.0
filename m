Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 342D9172AFE
	for <lists+openipmi-developer@lfdr.de>; Thu, 27 Feb 2020 23:22:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1j7RXa-0002ga-3v; Thu, 27 Feb 2020 22:21:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1j7RXY-0002gN-5K
 for openipmi-developer@lists.sourceforge.net; Thu, 27 Feb 2020 22:21:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=du04IHx+HutirdW4IRyHgf7LAWxcnOztVFIEX1SqbB8=; b=OzIoK6UzxHXSgF1rOP8CPRwd+q
 FaDgixPJhlOSnMKPaPNsabQclp3Im17yGeca/RWDp1z2AgLUzvay/v48O0+Y5swLE1L91JAs69tuy
 WZmrGQ2tR/Hx65Q3BsJerEtqNOraV+9ddHmUAJuxgjw9Rtf3o+70Uu3aXoX2tdWhgF3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=du04IHx+HutirdW4IRyHgf7LAWxcnOztVFIEX1SqbB8=; b=B1LWXn/sxmfHmrAD9rXUCSPIr9
 xksfKOz1231iGNJRRiBz+HZu8kYnfxmJxBdOjjrT0DHXt/gsc1MRcDb3ESRpsa1Y/hjryHYtxSpb+
 Kp1VrgGAQuji+iXVbcrPHZz1A9GklBmX+brp/rSkGvvyJltlZ8Kd8IoC1AFvoqs7c8EA=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j7RXU-00BY6e-LX
 for openipmi-developer@lists.sourceforge.net; Thu, 27 Feb 2020 22:21:56 +0000
Received: by mail-oi1-f196.google.com with SMTP id a142so881944oii.7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 27 Feb 2020 14:21:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=du04IHx+HutirdW4IRyHgf7LAWxcnOztVFIEX1SqbB8=;
 b=GsGNPdiFrAopItBNc0KxaYFasSaNei29+sV3BxAok8hsVm7VHRpUz14WMtmuLPnIao
 kPas5YD+8J0QqbDAbyxyahNkh9IyyaixOt42/l00sFlWTSER3FSmcZBUS5o1VsN+hX+D
 VKo95/R0slZpz/zt2ABMSBfViZpfXeFkbIjTNYWA9k53IZe2qn/c9o3bLHaKoT3eHA6h
 EscTFFIgNv/CUBbkfTLOqUfCvcGj65dj7MjnuoZmpVVDzE8+0FCctHs9jAZkUpmkBuF9
 KQfXPuIEtDVijmpiBwG9GVraBq2DbBKfBq8eP4DxEcnC+2I21xjljEKHlzPcpZPyEJOl
 fimQ==
X-Gm-Message-State: APjAAAXWJTjRSyZ1MOCXj1kGDPzT/taRKnphLRAUjLMRMe+2rYwmFFZ2
 /GA7TSc4MY1F9KLRoxn1Lw==
X-Google-Smtp-Source: APXvYqyEkDcaG0j8dAL0P9PQF1fWf4H41MVvV6Cb5ceuV0GzrQuoqmkuHkhHkuOq7dxd45/LCQIhtw==
X-Received: by 2002:a54:4106:: with SMTP id l6mr956240oic.76.1582842106769;
 Thu, 27 Feb 2020 14:21:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j5sm2383610otl.71.2020.02.27.14.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 14:21:46 -0800 (PST)
Received: (nullmailer pid 24260 invoked by uid 1000);
 Thu, 27 Feb 2020 22:21:45 -0000
Date: Thu, 27 Feb 2020 16:21:45 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Message-ID: <20200227222145.GF26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-12-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-12-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: devicetree.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j7RXU-00BY6e-LX
Subject: Re: [Openipmi-developer] [PATCH v2 11/13] dt-bindings: ipmi:
 Convert IPMI-SMIC bindings to json-schema
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Corey Minyard <minyard@acm.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, openipmi-developer@lists.sourceforge.net,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Feb 27, 2020 at 06:22:08PM +0000, Andre Przywara wrote:
> Convert the generic IPMI controller bindings to DT schema format
> using json-schema.
> 
> I removed the formerly mandatory device-type property, since this
> is deprecated in the DT spec, except for the legacy CPU and memory
> nodes.

Yes, but it is still used by the ipmi driver to match on, so we should 
keep it.

> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> ---
>  .../devicetree/bindings/ipmi/ipmi-smic.txt    | 25 ---------
>  .../devicetree/bindings/ipmi/ipmi-smic.yaml   | 56 +++++++++++++++++++
>  2 files changed, 56 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt b/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
> deleted file mode 100644
> index d5f1a877ed3e..000000000000
> --- a/Documentation/devicetree/bindings/ipmi/ipmi-smic.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -IPMI device
> -
> -Required properties:
> -- compatible: should be one of ipmi-kcs, ipmi-smic, or ipmi-bt
> -- device_type: should be ipmi
> -- reg: Address and length of the register set for the device
> -
> -Optional properties:
> -- interrupts: The interrupt for the device.  Without this the interface
> -	is polled.
> -- reg-size - The size of the register.  Defaults to 1
> -- reg-spacing - The number of bytes between register starts.  Defaults to 1
> -- reg-shift - The amount to shift the registers to the right to get the data
> -	into bit zero.
> -
> -Example:
> -
> -smic@fff3a000 {
> -	compatible = "ipmi-smic";
> -	device_type = "ipmi";
> -	reg = <0xfff3a000 0x1000>;
> -	interrupts = <0 24 4>;
> -	reg-size = <4>;
> -	reg-spacing = <4>;
> -};
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> new file mode 100644
> index 000000000000..c859e0e959b9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/ipmi-smic.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: GPL-2.0

Anything I wrote which should be most of the series, you can relicense 
to:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/ipmi-smic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: IPMI device bindings
> +
> +description: IPMI device bindings
> +
> +maintainers:
> +  - Corey Minyard <cminyard@mvista.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ipmi-kcs
> +      - ipmi-smic
> +      - ipmi-bt
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: Interface is polled if this property is omitted.
> +    maxItems: 1
> +
> +  reg-size:
> +    description: The access width of the register in bytes. Defaults to 1.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [1, 2, 4, 8]

Does 8 really work?

> +
> +  reg-spacing:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: The number of bytes between register starts. Defaults to 1.
> +
> +  reg-shift:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      The amount of bits to shift the register content to the right to get
> +      the data into bit zero.

either 24 or 56 would be the max, right?

> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    smic@fff3a000 {
> +        compatible = "ipmi-smic";
> +        reg = <0xfff3a000 0x1000>;
> +        interrupts = <0 24 4>;
> +        reg-size = <4>;
> +        reg-spacing = <4>;
> +    };
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
