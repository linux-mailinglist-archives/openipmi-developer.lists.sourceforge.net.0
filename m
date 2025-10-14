Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCACBDBC7A
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Oct 2025 01:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nf9Lqq59YB4vLTCV+hmgiq8hgu1o62ZoSw5FD5fYMJc=; b=Vax2a3jTsUp9zuWReT5VkVrCVN
	2IjNnwm/X66uN+6RWyddsuACApXycqvCYlIlE5Eaw1tzaEDzeZuWiSSkS7Bb+7Imt8tDf+ovnu2Kk
	WurKl0CY9yXNX1OpAZroZX1e/2Lq8yR4Gtaivg3lcdh5woALxO19sOYeHHJbvp019QBE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8oKv-0002CH-0s;
	Tue, 14 Oct 2025 23:21:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v8oKt-0002C4-Nc
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 23:21:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OSShFjPEhGZS0W8PMTI5EHo4sFmoEnYAkCUykXUZUtk=; b=HEJGCgOyYzCwEJxKIpAlSGcbR0
 +/1HaxwnnL8x0JfRoUVSUMuc4P7kwDOCvxXfCDuVFBHcruRtGUhiamc0z4Fkx8qWhmG6sWDjYDrCg
 umLrsZdCgG/eaePii0pDKkhFF/mFfoUaAqcivCDXlnR+CH2uY54XNkshmFyCNbqHhdLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OSShFjPEhGZS0W8PMTI5EHo4sFmoEnYAkCUykXUZUtk=; b=Kuoczb5m2pYHDWfiWR/cA2Mi+6
 7zGR+YrMc3crd6dCZuRCTaO8cBd6xr+NRsQdHi039WIEQ3qtP3oaSkWc8c7tJ8RjOE9SPMT1vX1Qx
 wXCxaXj39ryXMQC4d/u5jegOh+oXhfWVMdG6gKAtG18ruXoSiG6UCNVcvTCDqr+E5z+o=;
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8oKt-0001hi-Tz for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 23:21:44 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 46e09a7af769-7c0dd405c38so3758369a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Oct 2025 16:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1760484093; x=1761088893;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OSShFjPEhGZS0W8PMTI5EHo4sFmoEnYAkCUykXUZUtk=;
 b=mNcu1nOXjZ9dZM3XhB5NXt8VPHLkEYTQJn9VK1CR0hyHyPoHk3YZx7GASue9bBph36
 Z+GjythXrnz0jQVvCJ+MAHQK/yyC12Ymoflk+oysOJDUIAmqabb09+XMWTpBSiCHCYdI
 Wk4TvwcKohiQcEdvHXv7hAeAYanVcdon5ok59aBv1djiHZiqs+Mld0YyIvAXCTPgjcQw
 6UlKQjREOG+Mqs8LtimLly+XP2rqC5Y/hfgMf18ZM11pUu9oXunRaKls0EIB7dhxGTLo
 dlE1+nFIp9Q3V3hkRWsz6W8WePAfEoOm9Puyxr7VdyqWj1QDf+P1x6CKXCTpFOqFr/dz
 QNMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760484093; x=1761088893;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OSShFjPEhGZS0W8PMTI5EHo4sFmoEnYAkCUykXUZUtk=;
 b=QDt9jmHcki3gUakXxQ8W7O/TGG66x/lhEyzPfuLE8cJ/fUsTsuebH3WjwhavaeZ9ih
 DpRtRM5XrWZQ2Dk30/rfDJQD3fuw9eg5VR1CSVhRdoRM61XBpP/o9fv1cpuIL2Wm2JEj
 bjhC7LK18OnWFSlocBGvB40JKz1WW72DNBG65i2jBc8fmSMNVKwUZfD/FK7DCGDPGHmS
 PoQLmK2YPcQVsx4rZXGfu8ACtYcK4B76uSl6Jxn2ONgRD+ehlK4+BfSvwptvmBrF8buz
 T6ziSqbVIY5eN8wTzaspDt6kj7/DNO6nyDPEe7nGYBp29w2tvYbMLKKMxQ4lSDMb1j4h
 imqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWDL8O5XjgsRM1XgS+Fu8irL9JxM9ZlhtUtzTXpndd89Cdj7KKbEil3vcM5HQD/LWrGTC7HM6na+9oV5f4dLWOquhg=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx4py09X7hJMMefX2l55mCrrIORxuxcUipTYthW215+WjcES9Sz
 Np3kq/hJ/UzsBchjprTTsNve45lTAvQkd7fsXJZjbePCw9ylMBApMXpwP/Z/wx1mp3U=
X-Gm-Gg: ASbGnculMt65+1cN4n5ekyIP8hPZJmkKwD3Cav/9b9uQrsqq7jHEFTodx2/e4PyxRrU
 KU0n3hFSuwK/yH/Dg1UI7x5sEy+tBRfiZbUaHEHqK8QgIIn6LYcvQpgQjScqiSw/E64uvG42WGj
 JEwYeKe4awLowbJWam+a26l9PW69THoGyqvc8Bpt/I4OiHceHIciRqVmSceBWSeLusIqh6U34yk
 cb1aW5xxZTh3Jx7TanlLjgVF8GtJs9LYCtm8BkKLJGcGsTnFr4Gq3fTl2IfuVpBo3QazQfgZqSK
 f+m6Ls5n95VoNPd90ccxsFPb2HJjkNt2bKe+PqZjLScFwTLTY1tdKSVrILYz2NyPq/JLLqcXqEi
 S3YH+SaLhY5biwqZDKPbOOOTrE0qEAgyPMvGBR/JmrVsOEyF+hY7f+KI=
X-Google-Smtp-Source: AGHT+IFyq+WDPFYOSKVvyIdkGtxTVAzzTyKhwOBWQXTwZ3nOyJ35Dj36gHaI4KcaGzemEBsN+8m9XA==
X-Received: by 2002:a05:6830:661a:b0:799:bdea:3470 with SMTP id
 46e09a7af769-7c0df6bc4famr15912480a34.18.1760484093234; 
 Tue, 14 Oct 2025 16:21:33 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ad63:63fb:ee1c:2ee9])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7c0f90510dfsm4856881a34.5.2025.10.14.16.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Oct 2025 16:21:31 -0700 (PDT)
Date: Tue, 14 Oct 2025 18:21:26 -0500
From: Corey Minyard <corey@minyard.net>
To: "Rob Herring (Arm)" <robh@kernel.org>
Message-ID: <aO7a9moI23th0Oo9@mail.minyard.net>
References: <20251014152948.3782738-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014152948.3782738-1-robh@kernel.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 14, 2025 at 10:29:47AM -0500, Rob Herring (Arm)
 wrote: > Convert the aspeed,ast2400-ibt-bmc binding to DT schema format.
 It's a > straight-forward conversion. Queued for 6.19, with Andrew's review.
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v8oKt-0001hi-Tz
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: ipmi: Convert aspeed,
 ast2400-ibt-bmc to DT schema
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
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 14, 2025 at 10:29:47AM -0500, Rob Herring (Arm) wrote:
> Convert the aspeed,ast2400-ibt-bmc binding to DT schema format. It's a
> straight-forward conversion.

Queued for 6.19, with Andrew's review.

Thanks,

-corey

> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt  | 28 ------------
>  .../bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml | 44 +++++++++++++++++++
>  2 files changed, 44 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
> deleted file mode 100644
> index 25f86da804b7..000000000000
> --- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -* Aspeed BT (Block Transfer) IPMI interface
> -
> -The Aspeed SOCs (AST2400 and AST2500) are commonly used as BMCs
> -(BaseBoard Management Controllers) and the BT interface can be used to
> -perform in-band IPMI communication with their host.
> -
> -Required properties:
> -
> -- compatible : should be one of
> -	"aspeed,ast2400-ibt-bmc"
> -	"aspeed,ast2500-ibt-bmc"
> -	"aspeed,ast2600-ibt-bmc"
> -- reg: physical address and size of the registers
> -- clocks: clock for the device
> -
> -Optional properties:
> -
> -- interrupts: interrupt generated by the BT interface. without an
> -  interrupt, the driver will operate in poll mode.
> -
> -Example:
> -
> -	ibt@1e789140 {
> -		compatible = "aspeed,ast2400-ibt-bmc";
> -		reg = <0x1e789140 0x18>;
> -		interrupts = <8>;
> -		clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
> -	};
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
> new file mode 100644
> index 000000000000..c4f7cdbbe16b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-ibt-bmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Aspeed Block Transfer (BT) IPMI interface
> +
> +maintainers:
> +  - Joel Stanley <joel@jms.id.au>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2400-ibt-bmc
> +      - aspeed,ast2500-ibt-bmc
> +      - aspeed,ast2600-ibt-bmc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +
> +    bt@1e789140 {
> +        compatible = "aspeed,ast2400-ibt-bmc";
> +        reg = <0x1e789140 0x18>;
> +        interrupts = <8>;
> +        clocks = <&syscon ASPEED_CLK_GATE_LCLK>;
> +    };
> -- 
> 2.51.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
