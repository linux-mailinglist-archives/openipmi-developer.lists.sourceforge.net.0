Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFF2BDBC91
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Oct 2025 01:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+9hRjDtylj5CtzgxVlghuguUu5yOXzAslbkc2vJLkLE=; b=brRp0RCFf8jj4Eg1LltkK3laoN
	MQ8ChCIASeX8yCZA1D56BUmHgO5SjD68QdN3iSs0ltdD1Gm/MFNZRpQPIKZIR17caKhXrM08/3chp
	xK/7jSWNMcfwBx+1wngheCCandlU71FZnZQU6wQTiwJTTLg8z0tIrME0gvFfeRvWSnGI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8oNU-0002U5-Mw;
	Tue, 14 Oct 2025 23:24:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v8oNT-0002Tu-TN
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 23:24:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EzbA3h2diXeHnSi6hUxLmW4I+M7NlNe4WP1JAxxHucA=; b=Q2+ccAZ934hE8SE/FedFBFERo8
 uQXraykEbqNUZP5eZnMhwgMu/huKoPYitvj+fpAIFVPVRkK4BU8QamABebUnq9t3bJ3YGF5Qc5Aaa
 nXISe6bn6IIlTUhuhDSabwfkqBkJc775Si7tZm01kor67gVSFKllZ1mUtnsRgXTWAgEY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EzbA3h2diXeHnSi6hUxLmW4I+M7NlNe4WP1JAxxHucA=; b=Sn7qlIv4wQC/iO8o2CCneptWZW
 wWyh6YrjaCCqhW+uGsnI6NQavoHL6e5H+xkXFDTvQllivTQxEvFpm0ga/jon5od1EThRnCe853l5r
 KuQh20mGsd6SHxkTStPzaJpCzfpop9Oy9oN838avl50IoJGRKtPMxzdiZgu0Txgl+/tg=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8oNU-0001nY-5t for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 23:24:24 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 46e09a7af769-7c0e8367d4eso2133845a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Oct 2025 16:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1760484258; x=1761089058;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EzbA3h2diXeHnSi6hUxLmW4I+M7NlNe4WP1JAxxHucA=;
 b=YyqzucbnwugVixzWKPBLISL+TTpGzR/ryo7lB8vqrB1UDABmEaFMtrCCuGzJ/OO37t
 e5z47xE7GsgY09lUK1f8hNncShdcFrvgPL1SBCVjjaNoN68IK6Gc2wqA4dlOKO/uhLb4
 uhftNZAmVgkGCeohM1Zrj/TPCSChjYqLEfLeif8iltdbu5pHW15wDJbxivMD16z/LBtD
 2RuZ5J2Eys5xEdoK1VWa8MvKFCPl8uQc5L5WQg4FMAaAmILmNQKoJnnY24B6MzkhC1/o
 7uR4IrHK7OrQE1q4msQFG4WYDCS8OJXjZ9u/swNRVSibO48i4/LqLN4xW+L9hL1GFy3g
 +Afg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760484258; x=1761089058;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EzbA3h2diXeHnSi6hUxLmW4I+M7NlNe4WP1JAxxHucA=;
 b=XkSs2IHjt8iQw181VkgaEdrAKjlAjugI57ZL0ojenvYNjVDyC39neUgmOPlGlaHg5Y
 9EfwnzJ1Aar8zL7uarJlak9Vi3KZZOQ7BNu2qm56KdifJEH4gkzUqfoFNQuvZD9P9le2
 PWf+A4805tjRLH/GVgMdk8rM29Hs1WX0cYKB/QgHCPBPbQagXg0ccCx4qYKcZNYINkxP
 zbuDKKFmwGggfOjRUVq7RuKAGgqmGguhWnwlJlfOi1LeUjdsS0kUy53DJoQmexURb4Yz
 TRawjBmzaNSm2z+wphvfEdTehhtPAfj1eAASyGZwImoGTuaGrzHdpM6oh4l/fYNzLNOm
 hbjQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVlj2/2vA/n3bw4Ehyqtz5FmJq1WTi6qqKGBxM7BNj939XBa+Yx/CvWR6xucfRJaQrHzeBCoSGyQN1AJtro21JbJqQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwFMNrNZoLCHba7DAHMIjrHzNd+qyKR8jP/oKg9ZEgS16uDWhpG
 INmCHI/XtENDs+uhB/7VWsywuOseISQAiqGqPShUxGOV7ajka4VG5bSznaSpslZZpOo=
X-Gm-Gg: ASbGnctK6m/ZzGs8IcERHt/WzqtxJvB1eO8J2KwHESB/GSnMpTZj83MT+xXWZsGm9xf
 bCPR1mO8aD2Jf0Nzos4G9GruwXqu5IHe5AeYdJI1Skz+buFm02VVPSCVi5KESMHYCDEzQWhhKhK
 J90wFSDjh5kliHNOSnKvqTeReMNSPj6fMzPaLHiL7s+M5cyuWYtsilIWNlP8s/tb0SRnt7y4xmc
 xo3hwHs2XQt4N4Bs1RiblTerEDEjULnugE6LDRKBlEP0vIrSGkTFm7Ow00ZJUct5lqOp5tk7dyT
 yjTjZl4GL0sZMiB9CZzebkEuwv2ddBKHHMMWr1jPHNTAB82flTVGwE6KUj01w3LJALjC7rangn0
 sODI/9+iOoucpSf1B2GK9vYRxku6ez+ILOzFA2Bg9oZUAN7EWRvPqrCc=
X-Google-Smtp-Source: AGHT+IFQc/e1ZbUnpoFVWuijFM2zvD8w2iyi9D7yf/z3QjAKE+FCW90DUZ0U3/TgiDPhnHf198NIsA==
X-Received: by 2002:a05:6830:641b:b0:74a:1f03:db5a with SMTP id
 46e09a7af769-7c0df71bb2cmr14506181a34.3.1760484258480; 
 Tue, 14 Oct 2025 16:24:18 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ad63:63fb:ee1c:2ee9])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c0f9067d80sm4859579a34.11.2025.10.14.16.24.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Oct 2025 16:24:17 -0700 (PDT)
Date: Tue, 14 Oct 2025 18:24:12 -0500
From: Corey Minyard <corey@minyard.net>
To: "Rob Herring (Arm)" <robh@kernel.org>
Message-ID: <aO7bnNtjU4G0_c1c@mail.minyard.net>
References: <20251014152935.3782463-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014152935.3782463-1-robh@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 14, 2025 at 10:29:34AM -0500, Rob Herring (Arm)
 wrote: > Convert the nuvoton,npcm750-kcs-bmc binding to DT schema format.
 It's a > straight-forward conversion. I have queued this for 6.19, but I
 would like a review from the people that worked on this file previously. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v8oNU-0001nY-5t
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: ipmi: Convert nuvoton,
 npcm750-kcs-bmc to DT schema
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
Reply-To: corey@minyard.net
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Benjamin Fair <benjaminfair@google.com>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 Nancy Yuen <yuenn@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 14, 2025 at 10:29:34AM -0500, Rob Herring (Arm) wrote:
> Convert the nuvoton,npcm750-kcs-bmc binding to DT schema format. It's a
> straight-forward conversion.

I have queued this for 6.19, but I would like a review from the people
that worked on this file previously.

Thanks,

-corey

> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/ipmi/npcm7xx-kcs-bmc.txt         | 40 --------------
>  .../ipmi/nuvoton,npcm750-kcs-bmc.yaml         | 55 +++++++++++++++++++
>  2 files changed, 55 insertions(+), 40 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
>  create mode 100644 Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt b/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> deleted file mode 100644
> index 4fda76e63396..000000000000
> --- a/Documentation/devicetree/bindings/ipmi/npcm7xx-kcs-bmc.txt
> +++ /dev/null
> @@ -1,40 +0,0 @@
> -* Nuvoton NPCM KCS (Keyboard Controller Style) IPMI interface
> -
> -The Nuvoton SOCs (NPCM) are commonly used as BMCs
> -(Baseboard Management Controllers) and the KCS interface can be
> -used to perform in-band IPMI communication with their host.
> -
> -Required properties:
> -- compatible : should be one of
> -    "nuvoton,npcm750-kcs-bmc"
> -    "nuvoton,npcm845-kcs-bmc", "nuvoton,npcm750-kcs-bmc"
> -- interrupts : interrupt generated by the controller
> -- kcs_chan : The KCS channel number in the controller
> -
> -Example:
> -
> -    lpc_kcs: lpc_kcs@f0007000 {
> -        compatible = "nuvoton,npcm750-lpc-kcs", "simple-mfd", "syscon";
> -        reg = <0xf0007000 0x40>;
> -        reg-io-width = <1>;
> -
> -        #address-cells = <1>;
> -        #size-cells = <1>;
> -        ranges = <0x0 0xf0007000 0x40>;
> -
> -        kcs1: kcs1@0 {
> -            compatible = "nuvoton,npcm750-kcs-bmc";
> -            reg = <0x0 0x40>;
> -            interrupts = <0 9 4>;
> -            kcs_chan = <1>;
> -            status = "disabled";
> -        };
> -
> -        kcs2: kcs2@0 {
> -            compatible = "nuvoton,npcm750-kcs-bmc";
> -            reg = <0x0 0x40>;
> -            interrupts = <0 9 4>;
> -            kcs_chan = <2>;
> -            status = "disabled";
> -        };
> -    };
> diff --git a/Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml
> new file mode 100644
> index 000000000000..fc5df1c5e3bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/nuvoton,npcm750-kcs-bmc.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/nuvoton,npcm750-kcs-bmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton NPCM KCS BMC
> +
> +maintainers:
> +  - Avi Fishman <avifishman70@gmail.com>
> +  - Tomer Maimon <tmaimon77@gmail.com>
> +  - Tali Perry <tali.perry1@gmail.com>
> +
> +description:
> +  The Nuvoton SOCs (NPCM) are commonly used as BMCs (Baseboard Management
> +  Controllers) and the KCS interface can be used to perform in-band IPMI
> +  communication with their host.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: nuvoton,npcm750-kcs-bmc
> +      - items:
> +          - enum:
> +              - nuvoton,npcm845-kcs-bmc
> +          - const: nuvoton,npcm750-kcs-bmc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  kcs_chan:
> +    description: The KCS channel number in the controller
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1
> +    maximum: 3
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - kcs_chan
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    kcs@0 {
> +        compatible = "nuvoton,npcm750-kcs-bmc";
> +        reg = <0x0 0x40>;
> +        interrupts = <9 4>;
> +        kcs_chan = <1>;
> +    };
> -- 
> 2.51.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
