Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F0410A10C9F
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Jan 2025 17:46:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tXk3b-0000uv-P7;
	Tue, 14 Jan 2025 16:46:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tXk3a-0000up-UQ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 16:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RxWYotfxywN3NwGBQO3BiIkoRPcGTpIVsh2/TXME74Q=; b=Bd6F2IYhFvCscg4SB+TDayMSux
 fK2KNZiS7i3NegVnba6VjYcVWHj2TnNpWyD5o0D1Ao/QrAEqQVEJVJMitt/AKYCj7eg6ICLlIYtI6
 O4Ny/5THNdsBD88cQBZNVFrHdMsMo7oEGE+HCrHqojzaGpT6AF4sA7OKscw8F85NBMX0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RxWYotfxywN3NwGBQO3BiIkoRPcGTpIVsh2/TXME74Q=; b=H23Cq2oyfvSvlypHMFaD1lxss8
 //V3MszV1EztX+vwUU/sd036R1YY8JjQHI3B41lW1Q2sQUTmialXxjF+Bmc5w1au9YNX7B/ERaRS7
 N7UetZEabtm5HyVv1QiyHVzNTzRbKZ2q4zBjFbjVySGvi1UABKgBrBocDAqcgi76Fce4=;
Received: from mail-pl1-f173.google.com ([209.85.214.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tXk3Z-0000XE-Bh for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Jan 2025 16:46:22 +0000
Received: by mail-pl1-f173.google.com with SMTP id
 d9443c01a7336-21654fdd5daso98449895ad.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Jan 2025 08:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1736873169; x=1737477969;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RxWYotfxywN3NwGBQO3BiIkoRPcGTpIVsh2/TXME74Q=;
 b=0o0epyfteJfhUwoHBLARu1a/eQBqM0jkx1bjGe5Utj/aoHhOONmXk+hiRoI5Ksauj4
 HSoOEgyrFcoKi+HYtAsCVnY99GytYAjqeyapQOVn2CT4j3J8GbeZ3yqmtNbUnLa0rFqj
 pr+/jU77DUnpEGiZRdJUHCRdXIRDnCytudtu0iHQSQzZZVw341Ny2R+olAHtWxCPb1zm
 DX8kcwOCCu+pty50c7Qs5yp6WfOxppiSkPpmP+t8apYgqu2JPWBh01zB8V4dmyumotSO
 a8K4uX4hCZDBrH0EiVpTNyGDAQkhE4Oo+o2XU3tEy6gjJDaajgyjETGdCta1y3jRlyUX
 3k9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736873169; x=1737477969;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RxWYotfxywN3NwGBQO3BiIkoRPcGTpIVsh2/TXME74Q=;
 b=BoPS1fXC0HEDUMQmjqMHd/5p/qZB7eUW/H9/yd8+FQ0gjv8hDNCtUE0TkwaemqNavl
 BvdEvIekh6ErgPsOWRzuJob1C0JBOfZdnCIjXpLziymzZx8ifapMDXygv0ryux/HBqzv
 HBqkDX+ybATrdZmLmeHz/zkpEGOojnuDfkwS/0CmYW4LAJlroReq7zb7jO8avbvvd7og
 MCfdQzLrSO9sKI2O/XXWBougLUxbXFOstAzQ2lr0maIrsqLD1aNnEibVp2EP91aChpEF
 SibYPXaZjx8cUnlNtntNUd3br7KVceFfjWOir/q3yfBqUIVdy9ijQ3lidyarQCVUDH/h
 CNnQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVMJE1tCXyGGMADvKbmxvhPlSf3Ta87SvO8t5j0tXGJ9y6YmtGa01Lzz11au9xe3tYpjqNFFJlwhs32WSbHycv5sGQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzIMHhO3PTGpLxQhEHVoK9qnVchM8vKF5HdvXhQh5pqJp07UlQV
 tfpKCzDV9JyzXqudsVk8FTzZs8Olh9ldXg7ccb1r9+EE6oFj7hTxDrB7q20Hk7w=
X-Gm-Gg: ASbGnctjw9UQBeIWQi9dWo34wZ+AmVygci7I0gEZbocsHDkvZLjd16YErLRZvpkXjCp
 cNUlxxheIKF19gfV+7HHTqSDs/CaZY9lMumQ+LMJYs7AYa1JTrYedAJyZQZGvucHhHU+ycUb3ZZ
 UFEiOJYSK7DUTVTrcMDXc0o7wzmlR647QzIo4A5mLML7MXf9O0y+eCF7PBkpRGBJXODFp7uw9Z0
 i5D/n7QC3Fb+KPtVWNogz/ZSSj92+lX0u4QEHmxICHsw2rvEkt6ftgNMFZh
X-Google-Smtp-Source: AGHT+IFduq35RcsU3aO5RRhPDalwAW/p83/zhfkLttMULeNifRcViC7DtwI7vuIYT8rQlSliD0flaA==
X-Received: by 2002:aa7:8887:0:b0:72a:bb83:7804 with SMTP id
 d2e1a72fcca58-72d21fd2e16mr34122515b3a.17.1736873169522; 
 Tue, 14 Jan 2025 08:46:09 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:4641:6dae:60a7:e5ab])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72d4065a560sm7614353b3a.87.2025.01.14.08.46.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2025 08:46:08 -0800 (PST)
Date: Tue, 14 Jan 2025 10:46:01 -0600
From: Corey Minyard <corey@minyard.net>
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <Z4aUyX8g-JprzLpd@mail.minyard.net>
References: <20250113194822.571884-1-ninad@linux.ibm.com>
 <20250113194822.571884-3-ninad@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113194822.571884-3-ninad@linux.ibm.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 13, 2025 at 01:48:12PM -0600,
 Ninad Palsule wrote:
 > Add device tree binding document for the IPMB device interface. > This
 device is already in use in both driver and .dts files. > > Sign [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.173 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.173 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.173 listed in sa-accredit.habeas.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.173 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tXk3Z-0000XE-Bh
Subject: Re: [Openipmi-developer] [PATCH v4 2/9] bindings: ipmi: Add binding
 for IPMB device intf
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
Cc: robh@kernel.org, conor+dt@kernel.org, linux-aspeed@lists.ozlabs.org,
 minyard@acm.org, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 eajames@linux.ibm.com, linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch,
 edumazet@google.com, kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Jan 13, 2025 at 01:48:12PM -0600, Ninad Palsule wrote:
> Add device tree binding document for the IPMB device interface.
> This device is already in use in both driver and .dts files.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> new file mode 100644
> index 000000000000..136806cba632
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ipmi/ipmb-dev.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: The Intelligent Platform Management Bus(IPMB) Device
> +
> +description: |
> +  The IPMB is an I2C bus which provides interconnection between Baseboard

"Baseboard -> "a Baseboard"

> +  Management Controller(BMC) and chassis electronics. The BMC sends IPMI
> +  requests to intelligent controllers like Satellite Management Controller(MC)
> +  device via IPMB and the device sends a response back to the BMC.

device -> devices
"a response" -> responses

> +  This device binds backend Satelite MC which is a I2C slave device with the BMC

You use IPMB devices on both the BMC and the MCs.  The sentence above is
a little confusing, too.  How about:

This device uses an I2C slave device to send and receive IPMB messages,
either on a BMC or other MC.

> +  for management purpose. A miscalleneous device provices a user space program

Misspelling: miscellaneous

> +  to communicate with kernel and backend device. Some IPMB devices only support

"kernel" -> "the kernel"

> +  I2C protocol instead of SMB protocol.

the I2C protocol and not the SMB protocol.

Yes, the English language uses way too many articles...

That is a lot of detail, but it looks good beyond what I've commented
on.

> +
> +  IPMB communications protocol Specification V1.0
> +  https://www.intel.com/content/dam/www/public/us/en/documents/product-briefs/ipmp-spec-v1.0.pdf
> +
> +maintainers:
> +  - Ninad Palsule <ninad@linux.ibm.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ipmb-dev
> +
> +  reg:
> +    maxItems: 1
> +
> +  i2c-protocol:
> +    description:
> +      Use I2C block transfer instead of SMBUS block transfer.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ipmb-dev@10 {
> +            compatible = "ipmb-dev";
> +            reg = <0x10>;

I'm not sure of the conventions around device tree here, but the reg is
not used in the driver and it will always be the I2C address that
already in that node just one level up.  It does not serve any purpose
that I can see.  My suggestion would be to remove it.

-corey

> +            i2c-protocol;
> +        };
> +    };
> -- 
> 2.43.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
