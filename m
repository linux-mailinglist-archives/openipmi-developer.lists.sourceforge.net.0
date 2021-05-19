Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54691388E29
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 May 2021 14:34:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljLP2-0007Mq-4W; Wed, 19 May 2021 12:34:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1ljLOw-0007Mb-Kg
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 12:34:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VrjofVBqpi4EHgG9TcMkr4kH1OnwVdI3jKjQrhy1Fug=; b=Fx1dCeTY0IGYM4BSBdBsMPQTkh
 LGicAvRkg5Sij6dq3cOTimn2Vc/p/o5wJvd4Uws00xiMT3d4e4K7oq/ORCPxHQT4a0khmDq1AhHf4
 B2lrgoxvCiLHMpmn7VaqWOZQGJdO+3dVwfuPaWIWN602CbxVK6UJuqNeTy2VHvb4bCto=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VrjofVBqpi4EHgG9TcMkr4kH1OnwVdI3jKjQrhy1Fug=; b=LxfGLoKIlgjm15NkaynlTpHPti
 G0vXTRUV74cXeceYnSUluGYvrnk+7ST9jJEOltuRNcYpW7kFnqbGacG+iJkOme36Fku2y/xY+ZkL4
 Vi/xPb0WbSvnKhtiGm6/qerk/kzTYk3VzmyZNTQTX0Eho0G77GNjWCjDKLvKxf8e51VM=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ljLOr-00F1aZ-Ht
 for openipmi-developer@lists.sourceforge.net; Wed, 19 May 2021 12:34:14 +0000
Received: by mail-oi1-f169.google.com with SMTP id f184so12966136oig.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 May 2021 05:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=VrjofVBqpi4EHgG9TcMkr4kH1OnwVdI3jKjQrhy1Fug=;
 b=WSbmTBjMuGsiyyywp5Dh3Q3mVYW2nbZQjg0K6XpN0ym7Jrl7a5IQuCF3IA3QXe4shk
 Ng8JJSYbNTWhKXk9LZm6Ks6Q4VkQ67uzl+BHacClNTEsfVOw/4DTeqzd/8NTDS2Xbk0Z
 ta+hXBtHynyG4MWZyKPg6/es2FymwlidZMkU7Z+7qGt2kU16NoC7yi0X/hKPBlybJxLS
 nW30UfL3+CWamV4v6eEu79DvmCx7vOijxZNl6iGcLa6U530GJ6DakL3VwL2DteDB0c9M
 xoJXf0W7rhuoTQrHKa1N7zPYAfPaMS9yiITcKYvZaU4xDeDvS0H6OHndrcIElujRWsT0
 j8+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=VrjofVBqpi4EHgG9TcMkr4kH1OnwVdI3jKjQrhy1Fug=;
 b=nUoyilYbuqH9NYIYnME10i/dZNmT44LqXy854cTezkJRtUTe1Cq980jqklYchXBpLU
 dU0knB6Bm6OqTTFoyLRN+p7yKgtvISgn+5BaEyMcNhe96MH+cwYVDuFbVkb5+ELNeE9p
 Bizo9FwxrjS9e6NoaY9Ceg4EEU2XZ0e15DWKErcIWTaaSLiVd0dhbnDpU2sl5Lo7LuMK
 vUjjwm9HCW3Zc4A3wl+fr+PEnA+KNkQ9yNadD/X3m/wKfsaV2NJx2Fk1CB30ABVA6WLq
 eod5Kdn9zWToKAtMlBwMTiXiXjl3/azpZ3zegZV6iECU5dAYiMHNrEQY1GL4BYcYfRTv
 tx6g==
X-Gm-Message-State: AOAM532jrGqdFQ2+Qrw/82UViUDTLqJB9kg44VFBhAe3c9hrvAx9+D5+
 caZa5+H9EPn1dJGbsaUFSQ==
X-Google-Smtp-Source: ABdhPJzF+Fy8did2QXIYwMFyj+Pr3q+myW/DhiifWrK0n5h2AtQhvpL+QDG4LfcQO07Tc5btOdZCGg==
X-Received: by 2002:aca:b5c4:: with SMTP id e187mr8250914oif.149.1621427643980; 
 Wed, 19 May 2021 05:34:03 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id x78sm888530ooa.15.2021.05.19.05.34.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 05:34:03 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9144:ba66:ea13:f260])
 by serve.minyard.net (Postfix) with ESMTPSA id 93A3618000C;
 Wed, 19 May 2021 12:34:02 +0000 (UTC)
Date: Wed, 19 May 2021 07:34:01 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210519123401.GG2921206@minyard.net>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519074934.20712-1-quan@os.amperecomputing.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.169 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1ljLOr-00F1aZ-Ht
Subject: Re: [Openipmi-developer] [PATCH v3 0/7] Add Aspeed SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, May 19, 2021 at 02:49:27PM +0700, Quan Nguyen wrote:
> This series add support for the Aspeed specific SSIF BMC driver which
> is to perform in-band IPMI communication with the host in management
> (BMC) side.
> 
> v3:
>   + Switched binding doc to use DT schema format [Rob]
>   + Splited into generic ssif_bmc and aspeed-specific [Corey, Joel]
>   + Removed redundant license info [Joel]
>   + Switched to use traditional if-else [Joel]
>   + Removed unused ssif_bmc_ioctl() [Joel]
>   + Made handle_request()/complete_response() to return void [Joel]
>   + Refactored send_ssif_bmc_response()/receive_ssif_bmc_request() [Corey]
>   + Remove mutex [Corey]
>   + Use spin_lock/unlock_irqsave/restore in callback [Corey]
>   + Removed the unnecessary memset [Corey]
>   + Switch to use dev_err() [Corey]
>   + Combine mask/unmask two interrupts together [Corey]
>   + Fixed unhandled Tx done with NAK [Quan]
>   + Late ack'ed Tx done w/wo Ack irq [Quan]
>   + Use aspeed-specific exported aspeed_set_slave_busy() when slave busy
> to fix the deadlock [Graeme, Philipp, Quan]
>   + Clean buffer for last multipart read [Quan]
>   + Handle unknown incoming command [Quan]
> 
> v2:
>   + Fixed compiling error with COMPILE_TEST for arc
> 
> Quan Nguyen (7):
>   i2c: i2c-core-smbus: Expose PEC calculate function for generic use

Note that for this I2C-specific change, I will need acks from the I2C
maintainers to be able to include this in my tree.

>   ipmi: ssif_bmc: Add SSIF BMC driver
>   i2c: aspeed: Fix unhandled Tx done with NAK

For the aspeed changes, they don't really belong here, they belong in
the aspeed tree.  I see that you need them for the device to work
correctly, though.  I'll need acks from maintainers to include them.

>   i2c: aspeed: Acknowledge Tx done w/wo ACK irq late
>   i2c: aspeed: Add aspeed_set_slave_busy()
>   ipmi: ssif_bmc: Add Aspeed SSIF BMC driver
>   bindings: ipmi: Add binding for Aspeed SSIF BMC driver
> 
>  .../bindings/ipmi/aspeed-ssif-bmc.yaml        |  33 +
>  drivers/char/ipmi/Kconfig                     |  22 +
>  drivers/char/ipmi/Makefile                    |   2 +
>  drivers/char/ipmi/ssif_bmc.c                  | 605 ++++++++++++++++++
>  drivers/char/ipmi/ssif_bmc.h                  |  93 +++
>  drivers/char/ipmi/ssif_bmc_aspeed.c           |  75 +++
>  drivers/i2c/busses/i2c-aspeed.c               |  51 +-
>  drivers/i2c/i2c-core-smbus.c                  |  12 +-
>  include/linux/i2c.h                           |   1 +
>  9 files changed, 884 insertions(+), 10 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.yaml
>  create mode 100644 drivers/char/ipmi/ssif_bmc.c
>  create mode 100644 drivers/char/ipmi/ssif_bmc.h
>  create mode 100644 drivers/char/ipmi/ssif_bmc_aspeed.c
> 
> -- 
> 2.28.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
