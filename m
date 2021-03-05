Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 265C632F663
	for <lists+openipmi-developer@lfdr.de>; Sat,  6 Mar 2021 00:10:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lIJaG-00035m-Mf; Fri, 05 Mar 2021 23:10:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1lIJZz-00034Q-A1
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Mar 2021 23:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XrYODSIj7UXVI1uCbWVvuJ9MDvf1FusiVZYMMI3JkzE=; b=aae5DV64JQyjxgGvo2zqeS75qy
 HSjsQHLB+MGpRqPYwkUEXW4WpmuQUq/ZG+yO3mKU47Zs/rfV8KRnCNUZiJ7runo2yHmg2WVp8M1w4
 6ztgyzwqNty7jLArYgeJmGG3Vimc311/RU5ud1N6gAxtbEdO8/dIUTI2acdkoumWb2xo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XrYODSIj7UXVI1uCbWVvuJ9MDvf1FusiVZYMMI3JkzE=; b=CJNEfanni/MoOiDh+nTQoPff1Y
 g4N12B/fZC1mXc5yhe0mSa4jjPvldrJIZinb3cXQ+wFnTRy0K86vwWR7y9qbm3sMTGkFnGI1Rxtip
 tsFIaaxR4kSGDaZ+tPH841Onmb5EJ2+nQus40rO/Tw1Oqy6iSbv/gfVurC7JQiM1hfVo=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lIJZs-0002Rn-7O
 for openipmi-developer@lists.sourceforge.net; Fri, 05 Mar 2021 23:09:55 +0000
Received: by mail-oi1-f171.google.com with SMTP id z126so4320692oiz.6
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 05 Mar 2021 15:09:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XrYODSIj7UXVI1uCbWVvuJ9MDvf1FusiVZYMMI3JkzE=;
 b=mncmmdCpy61dwBKzudJ/tEH3tawWmZ5uON/XNiiKcXSm/SLwNg2+kKstV01v6LK5P7
 7Hi6Jey8//apQkSyghnVTqYTwr1Qa4ioWIpvrDDSMjW7kV79T0aRReghfZxR7iYtoONu
 P9BDAVlyYicb5ZjBFg8TICd3UcN/Jo+Hfkk22jMnQKQKoOKmmmn6jSq2p0/K8yfLFKxe
 4l0/tllUxiINTwHUUjGx4FXeYvjIDH8az/2CoGzYoNNxmd+/Sxcj4/X0J/g3m9LLOyU5
 gioViL6xDaIv2U2aW0egvIt5ek9gtp4J6U+BY8y3wyapFDQvxOIWqEFcT7Yph503atCj
 cKtA==
X-Gm-Message-State: AOAM530Krp/uSHp0IBohOAghkBK/l3Ss5M6mkltbeEXqsvKJRPtAoPpz
 FkiuN6UiR4FlvT303QxtQAfeHPIDJw==
X-Google-Smtp-Source: ABdhPJxEV9cNQ+u/FV083e8uupzMrx3E3n1YaYFtT8S202fGkWxSE3FlaHA0lY05b966tc3KmXUmRA==
X-Received: by 2002:aca:4587:: with SMTP id s129mr8889344oia.133.1614985782649; 
 Fri, 05 Mar 2021 15:09:42 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r13sm853187oot.41.2021.03.05.15.09.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 15:09:41 -0800 (PST)
Received: (nullmailer pid 813032 invoked by uid 1000);
 Fri, 05 Mar 2021 23:09:40 -0000
Date: Fri, 5 Mar 2021 17:09:40 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210305230940.GA809870@robh.at.kernel.org>
References: <20210219142523.3464540-1-andrew@aj.id.au>
 <20210219142523.3464540-18-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219142523.3464540-18-andrew@aj.id.au>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: aj.id.au]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.171 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lIJZs-0002Rn-7O
Subject: Re: [Openipmi-developer] [PATCH 17/19] dt-bindings: ipmi: Add
 optional SerIRQ property to ASPEED KCS devices
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

On Sat, Feb 20, 2021 at 12:55:21AM +1030, Andrew Jeffery wrote:
> Allocating IO and IRQ resources to LPC devices is in-theory an operation
> for the host, however ASPEED don't appear to expose this capability
> outside the BMC (e.g. SuperIO). Instead, we are left with BMC-internal
> registers for managing these resources, so introduce a devicetree
> property for KCS devices to describe SerIRQ properties.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml      | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> index 1c1cc4265948..808475a2c2ca 100644
> --- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
> @@ -47,6 +47,18 @@ properties:
>        channels the status address is derived from the data address, but the
>        status address may be optionally provided.
>  
> +  aspeed,lpc-interrupts:
> +    $ref: "/schemas/types.yaml#/definitions/uint32-matrix"
> +    minItems: 1
> +    maxItems: 1
> +    description: |
> +      A 2-cell property expressing the LPC SerIRQ number and the interrupt
> +      level/sense encoding (specified in the standard fashion).

That would be uint32-array with 'maxItems: 2'.

> +
> +      Note that the generated interrupt is issued from the BMC to the host, and
> +      thus the target interrupt controller is not captured by the BMC's
> +      devicetree.
> +
>    kcs_chan:
>      deprecated: true
>      $ref: '/schemas/types.yaml#/definitions/uint32'
> @@ -84,9 +96,11 @@ allOf:
>  
>  examples:
>    - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
>      kcs3: kcs@24 {
>          compatible = "aspeed,ast2600-kcs-bmc";
>          reg = <0x24 0x1>, <0x30 0x1>, <0x3c 0x1>;
>          aspeed,lpc-io-reg = <0xca2>;
> +        aspeed,lpc-interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
>          interrupts = <8>;
>      };
> -- 
> 2.27.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
