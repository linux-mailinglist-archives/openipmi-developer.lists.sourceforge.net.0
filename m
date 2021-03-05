Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B90D932F655
	for <lists+openipmi-developer@lfdr.de>; Sat,  6 Mar 2021 00:07:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lIJXi-0007rW-Ae; Fri, 05 Mar 2021 23:07:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1lIJXV-0007r2-JV
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Mar 2021 23:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3EoYEeSygE/KZK2Mj6hNkGMUGHyAfG9Fyx4STWgPwTE=; b=PXhUj1VZt9SsmwmhYu9f4u4mKy
 Gj7VoQ5918rHnnaCAsPoUUcS/UtSYysXQW+7XutqBNhiJT/yraNEJQwg5YzyWQp4s37bHE5+r0hvV
 eySa+Np1Cpzn9BmlnsnBjfDOLwI+dF3Gz9Friuy1t2e2DNoj27MjL4LCoUGIl4w6HPtE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3EoYEeSygE/KZK2Mj6hNkGMUGHyAfG9Fyx4STWgPwTE=; b=Jq1YMkKGTW/g/7a7YzK9y42H+h
 XtJI/G4i93Hjh4Z1EbSTzWDvcN7B/C1tmZTfzPGY0pglFn+hDFLHMzXdKRG34ApCeakahWUhbF5Dk
 j2nEYX6HERRrYKwfqdYMLF4cRgS875MPKDuwEJkeNAWXlzd1DaKjhrKAY00aC8hKxy5E=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lIJXS-00FadB-FP
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Mar 2021 23:07:21 +0000
Received: by mail-oi1-f169.google.com with SMTP id j1so4335176oiw.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 05 Mar 2021 15:07:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3EoYEeSygE/KZK2Mj6hNkGMUGHyAfG9Fyx4STWgPwTE=;
 b=kILXQm3xjhcDD7zWFWKlul+NdZ+xoFeBSELNo98VByDzM7RXPl2V7VmOgj5Kikfz9X
 v+YVX2mszplYqdDXxkmsW4oIv55cOI6khrrAQH4Ko6s1xXw//V4A4iPapebsbuQH8xjp
 83KttU1c6kXtxTxpWUrWAPU5HLZRcUe1Qzm/bgaAq+8rLr1PdV6IGVenstMxA9ki+Xna
 a4Gh5piQjmfy3+JVG9L3yGS9+ilxkzP3+gwTBP4Q/sUnW8M3gpHkSPWKHIirX8nmgjvP
 Xrfe8dAbAgH4HiJmxoJozf2YhF/NsiBfPZT6Www8H9RxyP/iwEEdTFqQyh1PAHMl3hVa
 l91g==
X-Gm-Message-State: AOAM533vR7dQZS7Oc9FxQTJhVE9R1zpTOlCGXviV2E+qtpSO32A6jBF5
 K9lBaAy65QGzDtpSPMBRMA==
X-Google-Smtp-Source: ABdhPJx4ZtFxecd//omqNCC21K3NJ+sdbprwXmJs8fNWf1UBUrHCzfmLYt3ImejkAhI2HXuRFKNepQ==
X-Received: by 2002:aca:4745:: with SMTP id u66mr8823213oia.37.1614985632884; 
 Fri, 05 Mar 2021 15:07:12 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u67sm862614oie.35.2021.03.05.15.07.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 15:07:12 -0800 (PST)
Received: (nullmailer pid 809675 invoked by uid 1000);
 Fri, 05 Mar 2021 23:07:10 -0000
Date: Fri, 5 Mar 2021 17:07:10 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210305230710.GA798530@robh.at.kernel.org>
References: <20210219142523.3464540-1-andrew@aj.id.au>
 <20210219142523.3464540-17-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219142523.3464540-17-andrew@aj.id.au>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.169 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: devicetree.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lIJXS-00FadB-FP
Subject: Re: [Openipmi-developer] [PATCH 16/19] dt-bindings: ipmi: Convert
 ASPEED KCS binding to schema
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
Cc: devicetree@vger.kernel.org, chiawei_wang@aspeedtech.com,
 tmaimon77@gmail.com, minyard@acm.org, linux-gpio@vger.kernel.org,
 avifishman70@gmail.com, venture@google.com, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, tali.perry1@gmail.com, yuenn@google.com,
 linux-aspeed@lists.ozlabs.org, openipmi-developer@lists.sourceforge.net,
 lee.jones@linaro.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Feb 20, 2021 at 12:55:20AM +1030, Andrew Jeffery wrote:
> Given the deprecated binding, improve the ability to detect issues in
> the platform devicetrees. Further, a subsequent patch will introduce a
> new interrupts property for specifying SerIRQ behaviour, so convert
> before we do any further additions.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml | 92 +++++++++++++++++++
>  .../bindings/ipmi/aspeed-kcs-bmc.txt          | 33 -------
>  2 files changed, 92 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> new file mode 100644
> index 000000000000..1c1cc4265948
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED BMC KCS Devices
> +
> +maintainers:
> +  - Andrew Jeffery <andrew@aj.id.au>
> +
> +description: |
> +  The Aspeed BMC SoCs typically use the Keyboard-Controller-Style (KCS)
> +  interfaces on the LPC bus for in-band IPMI communication with their host.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: Channel ID derived from reg
> +        items:
> +          enum:
> +            - aspeed,ast2400-kcs-bmc-v2
> +            - aspeed,ast2500-kcs-bmc-v2
> +            - aspeed,ast2600-kcs-bmc
> +
> +      - description: Old-style with explicit channel ID, no reg
> +        deprecated: true
> +        items:
> +          enum:
> +            - aspeed,ast2400-kcs-bmc
> +            - aspeed,ast2500-kcs-bmc
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reg:
> +    minItems: 3
> +    maxItems: 3
> +    description: IDR, ODR and STR register addresses

items:
  - description: IDR register
  - description: ODR register
  - description: STR register

> +
> +  aspeed,lpc-io-reg:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    minItems: 1
> +    maxItems: 2

A uint32 can only have 1 item. uint32-array perhaps?


> +    description: |
> +      The host CPU LPC IO data and status addresses for the device. For most
> +      channels the status address is derived from the data address, but the
> +      status address may be optionally provided.
> +
> +  kcs_chan:
> +    deprecated: true
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    maxItems: 1

Drop

> +    description: The LPC channel number in the controller
> +
> +  kcs_addr:
> +    deprecated: true
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    maxItems: 1

Drop

> +    description: The host CPU IO map address
> +
> +required:
> +  - compatible
> +  - interrupts
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - aspeed,ast2400-kcs-bmc
> +              - aspeed,ast2500-kcs-bmc
> +    then:
> +      required:
> +        - kcs_chan
> +        - kcs_addr
> +    else:
> +      required:
> +        - reg
> +        - aspeed,lpc-io-reg
> +
> +examples:
> +  - |
> +    kcs3: kcs@24 {
> +        compatible = "aspeed,ast2600-kcs-bmc";
> +        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
> +        aspeed,lpc-io-reg = <0xca2>;
> +        interrupts = <8>;
> +    };
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> deleted file mode 100644
> index 193e71ca96b0..000000000000
> --- a/Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -# Aspeed KCS (Keyboard Controller Style) IPMI interface
> -
> -The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
> -(Baseboard Management Controllers) and the KCS interface can be
> -used to perform in-band IPMI communication with their host.
> -
> -## v1
> -Required properties:
> -- compatible : should be one of
> -    "aspeed,ast2400-kcs-bmc"
> -    "aspeed,ast2500-kcs-bmc"
> -- interrupts : interrupt generated by the controller
> -- kcs_chan : The LPC channel number in the controller
> -- kcs_addr : The host CPU IO map address
> -
> -## v2
> -Required properties:
> -- compatible : should be one of
> -    "aspeed,ast2400-kcs-bmc-v2"
> -    "aspeed,ast2500-kcs-bmc-v2"
> -- reg : The address and size of the IDR, ODR and STR registers
> -- interrupts : interrupt generated by the controller
> -- aspeed,lpc-io-reg : The host CPU LPC IO address for the device
> -
> -Example:
> -
> -    kcs3: kcs@24 {
> -        compatible = "aspeed,ast2500-kcs-bmc-v2";
> -        reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
> -        aspeed,lpc-reg = <0xca2>;
> -        interrupts = <8>;
> -        status = "okay";
> -    };
> -- 
> 2.27.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
