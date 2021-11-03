Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E338B443AAB
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 01:59:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi4cs-0003vA-Eu; Wed, 03 Nov 2021 00:59:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mi4cr-0003v4-67
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h+FtktSBGtvGfOhDF8b/AVzYi4kQSm1ZeFNNHmkXlFM=; b=Zi0j2jjf8jiFfOdGzXJ9Ou3DyA
 n3H6OCWdYEKwjuHFFbJRtEGphl3j1eZA/LEvyFuafoEoLrsyAvaspHPEB43dMHJpJ7nBNTzi/YJ8i
 bqFTnJyOBud+N5OEigbOJLkg5tfbtpveKqOTK41/U23I33SkISlxafZYqyCqPie5e1gw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h+FtktSBGtvGfOhDF8b/AVzYi4kQSm1ZeFNNHmkXlFM=; b=dPXEABk03GM7nyoFjbzBtpEnkT
 BW7t4eiWN3gyRuLiD39IYB1lZ6sGI8EC2ggGyYuop+aS11D8UzSLel2MK7hpco1WifYSt1CdkB+Ld
 03HZ0q8L20IhQvgcXuMWpq3eKpPbgCz9sy0N9T9f0ctxb4op8u3x1j+PT4Fnn9cNqaUM=;
Received: from mail-qv1-f51.google.com ([209.85.219.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mi4cl-00Fe94-1C
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:59:35 +0000
Received: by mail-qv1-f51.google.com with SMTP id d6so976238qvb.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 02 Nov 2021 17:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=h+FtktSBGtvGfOhDF8b/AVzYi4kQSm1ZeFNNHmkXlFM=;
 b=EwMeJReSB5I3854NCV6PTfVNODDjMfIi7fXVX8sLNAJs7szQ29jOR43a/0naPxh2FK
 dYsrIIHNLkKVPC5A22c6boDvb701j14lPPb+5phW1XD9OAVjnwy+ZiBwJrCF0+e/H10a
 nJ373Y21PHBNgyGe/nfkntnZEPgpUUZ+yNelpZTazNFvpBaR4tSM8wi21KL1yLnoTYjz
 hwE4jYmUw735v8q9GWZLc+YkqF7MGBi82AZvMVfxDJwNbS4YyeMPDZ0XWNTAEYCh2bsc
 /UwE/6tw8UWH13cKDz8iUzJ6jek7l8Beiti5KmIuJ5+5M5fV3ZtdsKxreqWcyLmLrAxv
 I1Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=h+FtktSBGtvGfOhDF8b/AVzYi4kQSm1ZeFNNHmkXlFM=;
 b=F5gzE9dOF5Z4/8jAlFELtL/c5Yta+hkJFxFaUqEQBcFb0T4mxe8PyDcEgkkGNqA+Aa
 F0QrBIpNzoLCPrcppb53fRVPTOp61Qayl9sG2F4vBwxwxw+9jArdQhh5DDCg88CsTO8i
 9cPooGmbtKA+LbiAcLasTfygH5TSnNJ55UQzOOe/uxXKmIDorm/NsRZjvDPIlwvFjuGP
 6m+K0q0aFkzL+HNLHca/aOKmkNaAUgf05E5RDNzTc2D+3Q2htp5RZ7Rsa1sQHiR7mxOz
 4OZb4Te5AQwE+DJ9D0xifQqQflwKsOqJonBQw2lXScfiJl4sZB5EFYrNntLoe1Pm0bhG
 MSAQ==
X-Gm-Message-State: AOAM5331HHwM+skA//0JuP3RyRLR+St6VMSVNwVmdH5qeCCejzvkawHj
 U7cvNchm7jSUyP961ZdlTg==
X-Google-Smtp-Source: ABdhPJxYTFe+/H+/2eDVPHUh15JejRMXQsnrYykDake5H7RlOjK7ucGttAIR9G3rOVHtpUjv1Ci7og==
X-Received: by 2002:a05:622a:d5:: with SMTP id
 p21mr26792476qtw.44.1635901165049; 
 Tue, 02 Nov 2021 17:59:25 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id q4sm427526qkn.61.2021.11.02.17.59.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 17:59:24 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b4e0:932d:f90c:fafb])
 by serve.minyard.net (Postfix) with ESMTPSA id 93C741800B9;
 Wed,  3 Nov 2021 00:59:23 +0000 (UTC)
Date: Tue, 2 Nov 2021 19:59:22 -0500
From: Corey Minyard <minyard@acm.org>
To: jae.hyun.yoo@intel.com
Message-ID: <20211103005922.GN4667@minyard.net>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 02, 2021 at 01:37:11PM -0700,
 jae.hyun.yoo@intel.com
 wrote: > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> > > Hello all,
 > > This series is for appliying below fix to all Aspped LPC [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.51 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mi4cl-00Fe94-1C
Subject: Re: [Openipmi-developer] [PATCH -next v2 0/6] Add LCLK control into
 Aspeed LPC sub drivers
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, ChiaWei Wang <chiawei_wang@aspeedtech.com>,
 Rob Herring <robh+dt@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Nov 02, 2021 at 01:37:11PM -0700, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> Hello all,
> 
> This series is for appliying below fix to all Aspped LPC sub drivers.
> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/

Ok, I've added this to my next tree.

There was some duplicated code between the aspeed and bt files, but I'm
not sure it's enough to matter.

-corey

> 
> An LPC sub driver can be enabled without using the lpc-ctrl driver or it
> can be registered ahead of lpc-ctrl depends on each system configuration and
> this difference introduces that LPC can be enabled without heart beating of
> LCLK so it causes improper handling on host interrupts when the host sends
> interrupts in that time frame. Then kernel eventually forcibly disables the
> interrupt with dumping stack and printing a 'nobody cared this irq' message
> out.
> 
> To prevent this issue, all LPC sub drivers should enable LCLK individually
> so this patch adds clock control logic into the remaining Aspeed LPC sub
> drivers.
> 
> Please review this series.
> 
> Thanks,
> Jae
> 
> Changes sinve v1:
>  - Added 'clocks' property into ibt and kcs-bmc bindings using
>    'aspeed,ast2400-ibt-bmc.txt' and 'aspeed,ast2400-kcs-bmc.yaml'
>    respectively because these are not merged into 'aspeed-lpc.yaml' yet.
>    The bindings merging could be done using a separate patch later.
> 
> Jae Hyun Yoo (6):
>   ARM: dts: aspeed: add LCLK setting into LPC IBT node
>   dt-bindings: ipmi: bt-bmc: add 'clocks' as a required property
>   ipmi: bt: add clock control logic
>   ARM: dts: aspeed: add LCLK setting into LPC KCS nodes
>   dt-bindings: ipmi: aspeed,kcs-bmc: add 'clocks' as a required property
>   ipmi: kcs_bmc_aspeed: add clock control logic
> 
>  .../bindings/ipmi/aspeed,ast2400-ibt-bmc.txt  |  2 ++
>  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml |  7 +++++
>  arch/arm/boot/dts/aspeed-g4.dtsi              |  1 +
>  arch/arm/boot/dts/aspeed-g5.dtsi              |  5 +++
>  arch/arm/boot/dts/aspeed-g6.dtsi              |  5 +++
>  drivers/char/ipmi/bt-bmc.c                    | 24 +++++++++++++-
>  drivers/char/ipmi/kcs_bmc_aspeed.c            | 31 ++++++++++++++++---
>  7 files changed, 70 insertions(+), 5 deletions(-)
> 
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
