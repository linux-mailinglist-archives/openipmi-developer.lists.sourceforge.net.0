Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F90435830A
	for <lists+openipmi-developer@lfdr.de>; Thu,  8 Apr 2021 14:15:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUTYy-0000G0-Py; Thu, 08 Apr 2021 12:15:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lUTYw-0000Fk-QH
 for openipmi-developer@lists.sourceforge.net; Thu, 08 Apr 2021 12:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6XAhQ7UcLowTOFuknmiiz3l9yHn53zqLA0X1TJ7OGFM=; b=RNqF9CV76DuN64lraEreAskh7x
 Wa2D52+Q4TrCYVKlk5BSKpEebOLRrNh0CUQn+nmllyql7QF5Enr0dVWGWYqKIYLfXC9Wehun2UM0H
 kirG9dtQ0BtDlfh5F7cCpluZJYzIkb6EdFHQ/C1BlU82Q5PRNW8WWSrMzgHMga6uxscY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6XAhQ7UcLowTOFuknmiiz3l9yHn53zqLA0X1TJ7OGFM=; b=IU6Jt1/IUuL6om0gsyWFoMMlQM
 HgJhLvDKyxFYz+VP9NRCuot1k8zUH8eIRwoSVhgPf8O5KfPYyxG8xELeCI8WHSV4v2dBrq878ajou
 4UOEkiGOM1btHcrxJktto1dAtMV8+AHFzr8sv6HsNZlu1Bv6tXpcCxjBg5ZKkHOTXXi0=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lUTYh-000698-5d
 for openipmi-developer@lists.sourceforge.net; Thu, 08 Apr 2021 12:15:06 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 k14-20020a9d7dce0000b02901b866632f29so2062374otn.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 08 Apr 2021 05:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=6XAhQ7UcLowTOFuknmiiz3l9yHn53zqLA0X1TJ7OGFM=;
 b=mKGwQVrjFhmAB1xVjWpDfDHvVCxz8zBcI9Nzk2DmvUC97kddZ6S+BZuwAQGgkLMulE
 g5QIXRlV4u8flJRfwrogbYN5VFo6RJexvfAbfIv3zOzMKr8fcoC1BPZ5vgWt8kt84jFZ
 pkfb3FnpcNMVFUVORgkVwB3rLmLV5yT1DWV1A/ybaxgRxp4LlYCOTKpD4LijQcRgtxhS
 eX8fkbH10jbMyDqtKx1jB74bCqges5HBEdRQRCqnu0wWiICKJrl/08cLLZHqIV3nMWjT
 yQQGpTg8Ke/sk1nMnFjSezraTnGt/ReG2opUmDd6jFgq44Ez5av/n91g6qLapLHSlcYs
 MjKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=6XAhQ7UcLowTOFuknmiiz3l9yHn53zqLA0X1TJ7OGFM=;
 b=ml+qjps2GZ5l5Xz6QB4G2dmjhcUrWwGBZEZ7XJ47h/ViK9afL1vxaLSq3fU7NJCpNK
 Pdm8lKoO0qkI3hRHoDx8rmNXjqNBOu8C8aq04Q2xJTfBagT7Gbx499ynggE5GtLRCSXC
 HnpCOYBpu0v1PEBSjQZxM/3jFrLNI+w+DmX5rsKWmJ+CojSzk2wojv40akyoODBv56pw
 KG1E9VnbxmRRPQ0F7TqjcLE3Lul0P7+edZzrdkzM5srttIpM06tFBw8ssZuJv9Cxcv+Z
 OV6PerIkr/YHQeKpNufZgdQt12EgWjWp3i0s84/CgPWEvr3k2UCDQDbX9kff6zchvl91
 Y6xQ==
X-Gm-Message-State: AOAM532UMd5lc4f1QDQP0vM5n7RVTa6Sdfr23L67jiIRxok2KJOJV46Q
 WRFxO0zT5xG5nMtdZsgqtA==
X-Google-Smtp-Source: ABdhPJyxCdHxEFJ2vM9wKL7LXeV6po7ehyIYkmmdKbv3giqugax0r44l+zBeui3PyxG1sSWb/xMbQA==
X-Received: by 2002:a9d:d0d:: with SMTP id 13mr7004431oti.134.1617884085495;
 Thu, 08 Apr 2021 05:14:45 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id h20sm5225748oor.8.2021.04.08.05.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Apr 2021 05:14:44 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:f036:ecd9:2bd0:ef09])
 by serve.minyard.net (Postfix) with ESMTPSA id C877C180053;
 Thu,  8 Apr 2021 12:14:42 +0000 (UTC)
Date: Thu, 8 Apr 2021 07:14:41 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210408121441.GG7166@minyard.net>
References: <20210319061952.145040-1-andrew@aj.id.au>
 <2db77e16-3f44-4c02-a7ba-a4fac8141ae3@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2db77e16-3f44-4c02-a7ba-a4fac8141ae3@www.fastmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.41 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUTYh-000698-5d
Subject: Re: [Openipmi-developer] [PATCH v2 00/21] ipmi: Allow raw access to
 KCS devices
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
Cc: devicetree@vger.kernel.org, "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 Ryan Chen <ryan_chen@aspeedtech.com>, Tomer Maimon <tmaimon77@gmail.com>,
 linux-aspeed@lists.ozlabs.org, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Lee Jones <lee.jones@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Apr 08, 2021 at 10:27:46AM +0930, Andrew Jeffery wrote:
> Hi Corey,
> 
> On Fri, 19 Mar 2021, at 16:49, Andrew Jeffery wrote:
> > Hello,
> > 
> > This series is a bit of a mix of things, but its primary purpose is to
> > expose BMC KCS IPMI devices to userspace in a way that enables userspace
> > to talk to host firmware using protocols that are not IPMI.
> > 
> > v1 can be found here:
> > 
> > https://lore.kernel.org/openbmc/20210219142523.3464540-1-andrew@aj.id.au/
> > 
> > Changes in v2 include:
> > 
> > * A rebase onto v5.12-rc2
> > * Incorporation of off-list feedback on SerIRQ configuration from
> >   Chiawei
> > * Further validation on hardware for ASPEED KCS devices 2, 3 and 4
> > * Lifting the existing single-open constraint of the IPMI chardev
> > * Fixes addressing Rob's feedback on the conversion of the ASPEED KCS
> >   binding to dt-schema
> > * Fixes addressing Rob's feedback on the new aspeed,lpc-interrupts
> >   property definition for the ASPEED KCS binding
> > 
> > A new chardev device is added whose implementation exposes the Input
> > Data Register (IDR), Output Data Register (ODR) and Status Register
> > (STR) via read() and write(), and implements poll() for event
> > monitoring.
> > 
> > The existing /dev/ipmi-kcs* chardev interface exposes the KCS devices in
> > a way which encoded the IPMI protocol in its behaviour. However, as
> > LPC[0] KCS devices give us bi-directional interrupts between the host
> > and a BMC with both a data and status byte, they are useful for purposes
> > beyond IPMI.
> > 
> > As a concrete example, libmctp[1] implements a vendor-defined MCTP[2]
> > binding using a combination of LPC Firmware cycles for bulk data
> > transfer and a KCS device via LPC IO cycles for out-of-band protocol
> > control messages[3]. This gives a throughput improvement over the
> > standard KCS binding[4] while continuing to exploit the ease of setup of
> > the LPC bus for early boot firmware on the host processor.
> > 
> > The series takes a bit of a winding path to achieve its aim:
> > 
> > 1. It begins with patches 1-5 put together by Chia-Wei, which I've
> > rebased on v5.12-rc2. These fix the ASPEED LPC bindings and other
> > non-KCS LPC-related ASPEED device drivers in a way that enables the
> > SerIRQ patches at the end of the series. With Joel's review I'm hoping
> > these 5 can go through the aspeed tree, and that the rest can go through
> > the IPMI tree.
> > 
> > 2. Next, patches 6-13 fairly heavily refactor the KCS support in the
> > IPMI part of the tree, re-architecting things such that it's possible to
> > support multiple chardev implementations sitting on top of the ASPEED
> > and Nuvoton device drivers. However, the KCS code didn't really have
> > great separation of concerns as it stood, so even if we disregard the
> > multiple-chardev support I think the cleanups are worthwhile.
> > 
> > 3. Patch 14 adds some interrupt management capabilities to the KCS
> > device drivers in preparation for patch 16, which introduces the new
> > "raw" KCS device interface. I'm not stoked about the device name/path,
> > so if people are looking to bikeshed something then feel free to lay
> > into that.
> > 
> > 4. The remaining patches switch the ASPEED KCS devicetree binding to
> > dt-schema, add a new interrupt property to describe the SerIRQ behaviour
> > of the device and finally clean up Serial IRQ support in the ASPEED KCS
> > driver.
> > 
> > Rob: The dt-binding patches still come before the relevant driver
> > changes, I tried to keep the two close together in the series, hence the
> > bindings changes not being patches 1 and 2.
> > 
> > I've exercised the series under qemu with the rainier-bmc machine plus
> > additional patches for KCS support[5]. I've also substituted this series in
> > place of a hacky out-of-tree driver that we've been using for the
> > libmctp stack and successfully booted the host processor under our
> > internal full-platform simulation tools for a Rainier system.
> > 
> > Note that this work touches the Nuvoton driver as well as ASPEED's, but
> > I don't have the capability to test those changes or the IPMI chardev
> > path. Tested-by tags would be much appreciated if you can exercise one
> > or both.
> > 
> > Please review!
> 
> Unfortunately the cover letter got detached from the rest of the series.
> 
> Any chance you can take a look at the patches?

There were some minor concerns that were unanswered, and there really
was no review by others for many of the patches.

I would like this patch set, it makes some good cleanups.  But I would
like some more review and testing by others, if possible.  I'm fairly
sure it has already been done, it just needs to be documented.

-corey

> 
> https://lore.kernel.org/linux-arm-kernel/20210319062752.145730-1-andrew@aj.id.au/
> 
> Cheers,
> 
> Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
