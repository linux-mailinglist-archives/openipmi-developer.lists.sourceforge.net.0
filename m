Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 089BE34F3F8
	for <lists+openipmi-developer@lfdr.de>; Wed, 31 Mar 2021 00:06:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lRMUp-0006vQ-F2; Tue, 30 Mar 2021 22:05:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <robherring2@gmail.com>) id 1lRMUn-0006vI-Dh
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 22:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K57+sZPGNUEdeNlTqUnowLYV4JcIVUw0MSAp4gezLB4=; b=mZLfgDaRYahBC93gs+kKkqiaJ0
 vrn2TGErEpbHnUU22Y9LifqK7puIf1VdddHk9NqKZpdhqoHhUUeLznsy9h5Zbyvho/K8b0JwT7EDr
 MtNVr9Kk1nqD7feKKs/aotFAwEtNkUphCioQWDA/m6fL90YliliPg2GyP2JR2Yx6idsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K57+sZPGNUEdeNlTqUnowLYV4JcIVUw0MSAp4gezLB4=; b=YXcl3gSbegr10O2osEjvlXYR9B
 ND27lL+c1XTkE+N8xcS+3zFQHL3liXzCMCqPhiLqb6odWK4aK1RDnej5IWqzD9RHZCqNRyzBKkwSG
 FlaQ5iLy0GdcHIAs045PPGzPMkXuqPFV8pjdQ6p2vsoePaHb/f+F7ISgK7B35u9B8GdI=;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lRMUj-0002dI-5h
 for openipmi-developer@lists.sourceforge.net; Tue, 30 Mar 2021 22:05:57 +0000
Received: by mail-oi1-f177.google.com with SMTP id d12so17973243oiw.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Mar 2021 15:05:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=K57+sZPGNUEdeNlTqUnowLYV4JcIVUw0MSAp4gezLB4=;
 b=Psyg0Rz2wqmssUMaAcQEuSPlQpdG9juu9V8GKZjKkCgsfXoJAVV0+eYT0zZ/OUR3dZ
 4FLI6SjccjX4IvXB1CGneJaHxVis7cgvf18nsJf4/zCf+x3U+5Hf2r2uvbJvsBeB/xQq
 KrvcHXZw+Zb/7wDrSMzaTWP5k1jQGRSv12JGMD8LupBYUuc3VA2wL31TARn+Du0T+WL+
 x9nWiQVLo/JBKHG2pG8RrsJWnQYrgGEYAKW801w0L7PKnK6kKcHGQdDpIvXvKWFxm+dZ
 IZix9I8MWRsAz7NhZluadOAeqw8aCRRHgccR69Ix7FWzsLkX5SZic/9jnmzy9kCrSIsP
 6SEg==
X-Gm-Message-State: AOAM533zCwBiAByimu1Q8fN82s8hiFAgOebhjJI8fGkRqiid2XDhHvez
 qzhKRY9x/V5pkZAjo/ykVQ==
X-Google-Smtp-Source: ABdhPJyjT4fITT5nkHsfFaZVDJZo+ZYrw/hsB/2n8AZ79xoGHPmTkbIWolYQQdVP8dc22ukOImDz5w==
X-Received: by 2002:a05:6808:13d0:: with SMTP id
 d16mr53428oiw.169.1617141945047; 
 Tue, 30 Mar 2021 15:05:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h9sm41272ooi.22.2021.03.30.15.05.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Mar 2021 15:05:44 -0700 (PDT)
Received: (nullmailer pid 797160 invoked by uid 1000);
 Tue, 30 Mar 2021 22:05:43 -0000
Date: Tue, 30 Mar 2021 17:05:43 -0500
From: Rob Herring <robh@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210330220543.GA795792@robh.at.kernel.org>
References: <20210329121759.5644-1-quan@os.amperecomputing.com>
 <20210329121759.5644-4-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210329121759.5644-4-quan@os.amperecomputing.com>
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amperecomputing.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.177 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lRMUj-0002dI-5h
Subject: Re: [Openipmi-developer] [PATCH v1 3/3] bindings: ipmi: Add binding
 for Aspeed SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 openbmc@lists.ozlabs.org, "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 linux-kernel@vger.kernel.org, Phong Vo <phong@os.amperecomputing.com>,
 Wolfram Sang <wsa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Mar 29, 2021 at 07:17:59PM +0700, Quan Nguyen wrote:
> Add device tree binding document for the Aspeed SSIF BMC driver.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
>  .../bindings/ipmi/aspeed-ssif-bmc.txt          | 18 ++++++++++++++++++

Bindings should now be in DT schema format.

>  1 file changed, 18 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt
> 
> diff --git a/Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt
> new file mode 100644
> index 000000000000..1616f0188db9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt
> @@ -0,0 +1,18 @@
> +# Aspeed SSIF (SMBus system interface) IPMI BMC interface
> +
> +The Aspeed AST2500 are commonly used as BMCs (Baseboard Management Controllers)
> +and the SSIF slave interface can be used to perform in-band IPMI communication
> +with their host.
> +
> +Required properties:
> +
> +- compatible : should be
> +       "aspeed,ast2500-ssif-bmc"
> +- reg: I2C address the registers
> +
> +Example:
> +
> +       ssif-bmc@10 {
> +               compatible = "aspeed,ast2500-ssif-bmc";
> +               reg = <0x10>;
> +       };
> -- 
> 2.28.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
