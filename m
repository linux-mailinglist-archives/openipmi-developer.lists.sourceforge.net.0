Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B395138CC48
	for <lists+openipmi-developer@lfdr.de>; Fri, 21 May 2021 19:36:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lk94a-00083K-0z; Fri, 21 May 2021 17:36:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1lk94Y-00083D-OO
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 17:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xsZwyz8bU4yD245jhx9rPS0/zoGZWsugEiI8VeaXwz4=; b=nB0nt6t13dHjgJVtEUZGqvp4Nm
 FYDrMsynXDWEZo2tuBTS0yX4uo/uUAArntloaCBPJskr02DJl5AE9PEXh7FO/k5kkijsmyKIJE9qR
 j0JBgMDuCBWoLDb+MC5LmygQ0gAoMF54H5SYJdrf1ZAPVVlIukVQMsK1a2oIwNsBtvJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xsZwyz8bU4yD245jhx9rPS0/zoGZWsugEiI8VeaXwz4=; b=IZzQS/zUMcQ/WJOYcySRxObHiT
 moUKjGjnBeT1WE6Ff2hpmxe64oqcPHyxwhvSs9l4ZLYMUkvI1BUcscPu1qaCk2t54Q7KXdqx9r2Uq
 4PcFLkKCGHQ46AzRFIgmvsKehNmMSsTtDk6beKG08INNLWuDTj5tEgf0/C3Povpfawqo=;
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lk94T-000ZaT-6Z
 for openipmi-developer@lists.sourceforge.net; Fri, 21 May 2021 17:36:31 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 v13-20020a4ac00d0000b029020b43b918eeso4746185oop.9
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 21 May 2021 10:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=xsZwyz8bU4yD245jhx9rPS0/zoGZWsugEiI8VeaXwz4=;
 b=CTE2dQFpKlqhV9xA3GSGL8nDvpghVK9LimwK1q3I8P0dnbBZqSYYbFz55efe5eyVDt
 Qit5eNZ2mo8/DdfUIQtWsHmKZWItaKl9jpUZUxi5un1GFMYhTc7fb9BRsYpHaF8a1A7F
 gdnOzm3Vo8MRhsJtXus9p2hh6CGz1j/jQWGHew+EzO1DuP9nVxvKY2CQh99vvyU/uOwM
 yQlHV3e74CVYPd+P2IJrQbwbH8bynY9hHkGTlrHQ4ghvd9aZpKvOXlOvq8YGwb/LG7gM
 1EB5cyNm7AsaN15riAgXWNW/RJ4KC9uZHXb0KFLpfCw7Xm/mOA0LPg8vck01Yv4JoowH
 pNNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=xsZwyz8bU4yD245jhx9rPS0/zoGZWsugEiI8VeaXwz4=;
 b=tVqr+YcUpQvO8Gbqbyf38jkcn9wsoIR34sLeZ+4tyHvj0UDnewfINNHc74ZN7rizkD
 vfT4kmu8wSgV85KkYFdX+NjYhjFpxIcFNAOjEWNN3pY2+KaCkKvAtTEjkEeQDKiBRdpZ
 vi8NnxOa1YlrTJXuPPX/RbuW0B8DK8eFUZAwxSIKBmKJSqWtjoiKJ4f3uGVN4Pr0UE9Q
 +ASbcakXLxi2RpNgd7uJfR6Bg/c2E5GA9zcGTfolVcnrJsE8LikfASQL0jx9W5cXGwMn
 FRajJ72Ge1hbYNuYI0xNBJ23Yd/CIbLI/bI3FpzFVz34AUoYJRkzDE5Ns9ueu+T0Up5i
 eQ3A==
X-Gm-Message-State: AOAM5306AwF3kpQUIDxN9vV8eUMrCb6vHvkbtt4sq2CzcQqP7S53uCBI
 BuM5AKEsDePO1JoAR4X8AA==
X-Google-Smtp-Source: ABdhPJzbCHFdLAdHPLmr/dH91nFshv8QRe7ey6knMySKTHguizVh3ISRUyFZezmXrFL/yp5yhV0qcQ==
X-Received: by 2002:a4a:c88f:: with SMTP id t15mr9071550ooq.84.1621618579446; 
 Fri, 21 May 2021 10:36:19 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id f2sm1373733otp.77.2021.05.21.10.36.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 10:36:18 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9c8f:21cb:3961:b550])
 by serve.minyard.net (Postfix) with ESMTPSA id 95ABE180105;
 Fri, 21 May 2021 17:36:17 +0000 (UTC)
Date: Fri, 21 May 2021 12:36:16 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210521173616.GK2921206@minyard.net>
References: <20210510054213.1610760-1-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210510054213.1610760-1-andrew@aj.id.au>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.54 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lk94T-000ZaT-6Z
Subject: Re: [Openipmi-developer] [PATCH v3 00/16] ipmi: Allow raw access to
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
Cc: devicetree@vger.kernel.org, tmaimon77@gmail.com,
 linux-aspeed@lists.ozlabs.org, avifishman70@gmail.com, venture@google.com,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org, tali.perry1@gmail.com,
 robh+dt@kernel.org, arnd@arndb.de, openipmi-developer@lists.sourceforge.net,
 zweiss@equinix.com, chiawei_wang@aspeedtech.com,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, May 10, 2021 at 03:11:57PM +0930, Andrew Jeffery wrote:
> Hello,
> 
> This is the 3rd spin of the series refactoring the keyboard-controller-style
> device drivers in the IPMI subsystem.

This is a nice set of cleanups outside of just allowing raw access.
I'll let you handle Zev's comments and a few of mine.

I almost hate to ask this, but would there be value in allowing the BT
driver to use this abstract interface?  Or maybe it would be just too
hard to get a common abstraction, more work than it's worth.  It's
surprising that more people don't want BT as it's vastly superior to
KCS.  Just a thought for now.  I guess there's SMIC, but hopefully
nobody wants that.

-corey

> 
> v2 can be found (in two parts because yay patch workflow mistakes) at:
> 
> Cover letter:
> https://lore.kernel.org/linux-arm-kernel/20210319061952.145040-1-andrew@aj.id.au/
> 
> Patches:
> https://lore.kernel.org/linux-arm-kernel/20210319062752.145730-1-andrew@aj.id.au/
> 
> Several significant changes in v3:
> 
> 1. The series is rebased onto v5.13-rc1
> 
> 2. v5.13-rc1 includes Chiawei's patches reworking the LPC devicetree bindings,
>    so they're no-longer required in the series.
> 
> 3. After some discussion with Arnd[1] and investigating the serio subsystem,
>    I've replaced the "raw" KCS driver (patch 16/21 in v2) with a serio adaptor
>    (patch 11/16 in this series). The adaptor allows us to take advantage of the
>    existing chardevs provided by serio.
> 
> [1] https://lore.kernel.org/linux-arm-kernel/37e75b07-a5c6-422f-84b3-54f2bea0b917@www.fastmail.com/
> 
> Finally, I've also addressed Zev Weiss' review comments where I thought it was
> required. These comments covered a lot of minor issues across (almost) all the
> patches, so it's best to review from a clean slate rather than attempt to review
> the differences between spins.
> 
> Previously:
> 
> Changes in v2 include:
> 
> * A rebase onto v5.12-rc2
> * Incorporation of off-list feedback on SerIRQ configuration from
>   Chiawei
> * Further validation on hardware for ASPEED KCS devices 2, 3 and 4
> * Lifting the existing single-open constraint of the IPMI chardev
> * Fixes addressing Rob's feedback on the conversion of the ASPEED KCS
>   binding to dt-schema
> * Fixes addressing Rob's feedback on the new aspeed,lpc-interrupts
>   property definition for the ASPEED KCS binding
> 
> Please test and review!
> 
> Andrew
> 
> Andrew Jeffery (16):
>   ipmi: kcs_bmc_aspeed: Use of match data to extract KCS properties
>   ipmi: kcs_bmc: Make status update atomic
>   ipmi: kcs_bmc: Rename {read,write}_{status,data}() functions
>   ipmi: kcs_bmc: Split out kcs_bmc_cdev_ipmi
>   ipmi: kcs_bmc: Turn the driver data-structures inside-out
>   ipmi: kcs_bmc: Split headers into device and client
>   ipmi: kcs_bmc: Strip private client data from struct kcs_bmc
>   ipmi: kcs_bmc: Decouple the IPMI chardev from the core
>   ipmi: kcs_bmc: Allow clients to control KCS IRQ state
>   ipmi: kcs_bmc: Don't enforce single-open policy in the kernel
>   ipmi: kcs_bmc: Add serio adaptor
>   dt-bindings: ipmi: Convert ASPEED KCS binding to schema
>   dt-bindings: ipmi: Add optional SerIRQ property to ASPEED KCS devices
>   ipmi: kcs_bmc_aspeed: Implement KCS SerIRQ configuration
>   ipmi: kcs_bmc_aspeed: Fix IBFIE typo from datasheet
>   ipmi: kcs_bmc_aspeed: Optionally apply status address
> 
>  .../bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml | 106 +++
>  .../bindings/ipmi/aspeed-kcs-bmc.txt          |  33 -
>  drivers/char/ipmi/Kconfig                     |  27 +
>  drivers/char/ipmi/Makefile                    |   2 +
>  drivers/char/ipmi/kcs_bmc.c                   | 526 ++++-----------
>  drivers/char/ipmi/kcs_bmc.h                   |  92 +--
>  drivers/char/ipmi/kcs_bmc_aspeed.c            | 635 +++++++++++++-----
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c         | 568 ++++++++++++++++
>  drivers/char/ipmi/kcs_bmc_client.h            |  48 ++
>  drivers/char/ipmi/kcs_bmc_device.h            |  22 +
>  drivers/char/ipmi/kcs_bmc_npcm7xx.c           |  94 ++-
>  drivers/char/ipmi/kcs_bmc_serio.c             | 151 +++++
>  12 files changed, 1582 insertions(+), 722 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
>  create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
>  create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
>  create mode 100644 drivers/char/ipmi/kcs_bmc_device.h
>  create mode 100644 drivers/char/ipmi/kcs_bmc_serio.c
> 
> -- 
> 2.27.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
