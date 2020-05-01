Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AE51C1A72
	for <lists+openipmi-developer@lfdr.de>; Fri,  1 May 2020 18:16:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jUYLK-0006PF-B5; Fri, 01 May 2020 16:16:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jUYLJ-0006P4-JB
 for openipmi-developer@lists.sourceforge.net; Fri, 01 May 2020 16:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lgmELjhtwvQPrX77vnoSnk11mljHderl9HxceIw1oe8=; b=NpRZTQr2nvT3sDBiXMatJVA+Hv
 efBmFKaKUSHhCIO7Vb0CdQenTqI5inkTFOCxwHxq7an+XL5n/FE2JXwCzveaAe3SCSI2Pt4wDaM4D
 53D88UUy5fWyH/2i6f5GZw8zphWio77QJEBGHqtiwGObCeVr4uP/ag3dRbs9koqrFlaQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lgmELjhtwvQPrX77vnoSnk11mljHderl9HxceIw1oe8=; b=V2BxcJqCRfghUhQCw9Y5jHRC5/
 RmWeciKmXJbZxUgrx6FPp+LQc5dHDy/LLT4kdrVnIX8TBBD6mIqog9miFSA16sSRb2VKUu3MVpwV0
 gAQ9fjTUIDCWa0OMSQzbgPJHt5joaT+/33i64Zje4Jbm9L6X68wj+Nfi4z2ARLWZJ410=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jUYLH-006uIl-9F
 for openipmi-developer@lists.sourceforge.net; Fri, 01 May 2020 16:16:49 +0000
Received: by mail-oi1-f194.google.com with SMTP id c124so147305oib.13
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 01 May 2020 09:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lgmELjhtwvQPrX77vnoSnk11mljHderl9HxceIw1oe8=;
 b=Br4NUGVAtZWvUXQfy8/75cj/z8IaziKZ8/JMhKNe6IuHC1GGQUXcfYw+cnkh9PBJcS
 vL/LH2WUOOD6MG3Z8PFpVaGInS33IhM7qrlOL9QqRl6VHUxmYS1kLg6qR2iulfHVu/qS
 1dxP/1DKcOsjmiRkHuh2fVwM0l+OtK+shWYfSX4+RNLfqmZAoWBx5ZeIaIZLqyg3IhmT
 YwCKuwLfNm/Fw+u7KTF1qRbPblQGZQibDjnRoaMPxywwlCx5FkAg2NYpPDTx2sXbxHZN
 ktEe8X1QkpVLwTHlW64fiDINZMgDGcGUpI06AqvV3urVhwyv5nf3s9oOBpQc/pA6Wr1s
 0gcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=lgmELjhtwvQPrX77vnoSnk11mljHderl9HxceIw1oe8=;
 b=dIZBzoWlOXqXF/mww8Ute1FFnv9JqVv4McAYuRcwwAsH7YWkFUjFrYDa72rHdr5DeB
 XnGl0xLLTBg52K2/wpSmY0z1Tt/vyEqnO2eA/p50+5c7VNFAO2qCld4yKZnkuPVH2up6
 qpYEDZ8s+HqXeW5E4qQUh2TIgl+0B2yVZTqvZecP1aSFHYLYJGdk4KjYqM0dPz8QFjvK
 Q6nYPVrQRjE11o5vER9bb71eepKdTMiPaC13BH+vjascI7PfjniLRpG54B+oJfu2QBnv
 VJ/9RKbyXmB6LBUDX3eTTsMUNBoCIoztMCMJDLbys+4Tlfu3hZ+GNwQ8hmJ3+1s59VYo
 gS8Q==
X-Gm-Message-State: AGi0PuYXKrEEv9j1kgTpdeAAZt09lmSB0qjrZJMKa7bp3F3DR4gQi40X
 B1dVJjYfxoE9/OEYwTX6Iw==
X-Google-Smtp-Source: APiQypImnju0D2j2tlQZOp+12Lxz5mLbARJyu7bikZIcG8ES9reYr4QopOQc75af6+xNAl7K9Viu+g==
X-Received: by 2002:a05:6808:49:: with SMTP id v9mr244950oic.41.1588349801353; 
 Fri, 01 May 2020 09:16:41 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id g24sm938859oos.20.2020.05.01.09.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 09:16:40 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id D712418000D;
 Fri,  1 May 2020 16:16:39 +0000 (UTC)
Date: Fri, 1 May 2020 11:16:38 -0500
From: Corey Minyard <minyard@acm.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Message-ID: <20200501161638.GF9902@minyard.net>
References: <cover.1588345503.git.mchehab+huawei@kernel.org>
 <ae4edbc6753dc522cb93de36800978e3b58e0cfb.1588345503.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae4edbc6753dc522cb93de36800978e3b58e0cfb.1588345503.git.mchehab+huawei@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jUYLH-006uIl-9F
Subject: Re: [Openipmi-developer] [PATCH 04/14] docs: move IPMI.txt to the
 driver API book
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
Reply-To: minyard@acm.org
Cc: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Pragat Pandya <pragat.pandya@gmail.com>, linux-kernel@vger.kernel.org,
 Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Jason Gunthorpe <jgg@ziepe.ca>, openipmi-developer@lists.sourceforge.net,
 Harald Seiler <hws@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, May 01, 2020 at 05:37:48PM +0200, Mauro Carvalho Chehab wrote:
> The IPMI is under drivers/char. This doc describes the kAPI
> part of the IPMI (mainly).
> 
> So, move it to the driver-api directory and add it to the
> corresponding index.rst file.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

This is fine with me.

Acked-by: Corey Minyard <cminyard@mvista.com>

> ---
>  Documentation/driver-api/index.rst              | 1 +
>  Documentation/{IPMI.txt => driver-api/ipmi.rst} | 0
>  2 files changed, 1 insertion(+)
>  rename Documentation/{IPMI.txt => driver-api/ipmi.rst} (100%)
> 
> diff --git a/Documentation/driver-api/index.rst b/Documentation/driver-api/index.rst
> index dcc47c029f8e..6567187e7687 100644
> --- a/Documentation/driver-api/index.rst
> +++ b/Documentation/driver-api/index.rst
> @@ -39,6 +39,7 @@ available subsections can be seen below.
>     spi
>     i2c
>     ipmb
> +   ipmi
>     i3c/index
>     interconnect
>     devfreq
> diff --git a/Documentation/IPMI.txt b/Documentation/driver-api/ipmi.rst
> similarity index 100%
> rename from Documentation/IPMI.txt
> rename to Documentation/driver-api/ipmi.rst
> -- 
> 2.25.4
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
