Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 891EF3A88C6
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Jun 2021 20:47:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ltE5m-0002vj-76; Tue, 15 Jun 2021 18:47:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1ltE5k-0002vb-5b
 for openipmi-developer@lists.sourceforge.net; Tue, 15 Jun 2021 18:47:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M0jPcyN+0GksOscsUu1GV8Mpyh0R661ZmzEHh6E/AMs=; b=LmP8nzwwQZeSjXOFMkz0PU0lO+
 LajcjWd4ikFqERly73APi24yCFVGZ18yaAaWdcVqy5gtsobrFWi/pLmsccmLB3HbhVB7XcgYqrSOq
 7r4p5soxO0qdTa2u5Ev8DbycBx6mokG4Z30YlrqffK5+l8kfs02ex0bxLndyo02uYve0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M0jPcyN+0GksOscsUu1GV8Mpyh0R661ZmzEHh6E/AMs=; b=TJ23uQ54tilYoOYYkXVCMRZjWE
 E0SQSsibEwvp/KYT1oOGxwSET4RIT9gPpkW8jdicXAgw2OYZSLtBE7Ri0mSt8fD6OEwzuqErDjuV2
 /Tv9K/xZbRXlXfFDJwe7BUZ2VFBGbe0DANPasY+lTMSQ845gT77AxqLjemA3X/yflpSk=;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ltE5a-00036g-UJ
 for openipmi-developer@lists.sourceforge.net; Tue, 15 Jun 2021 18:47:16 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 w23-20020a9d5a970000b02903d0ef989477so15282659oth.9
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 15 Jun 2021 11:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=M0jPcyN+0GksOscsUu1GV8Mpyh0R661ZmzEHh6E/AMs=;
 b=AkDl/pWCrmnX6WAe8kjc7Wu2g9cEQcW98r+hZ/47zJliuKZ3xPv4lrcY57XTWjjCPN
 TjDxOAuDg549gDq99JX8OINGoRcK9OMKQwzfF4EeKoPx+0wHS1mRdtircff8T97yLmkc
 Vz3ZGBcK/nrDKZg/iaRS6UurBkq7EnJqDlo8mgG8s5pSPB9dG8sia604BeCydvudAoPv
 qcb63CZN0VPQFmYzTsivOp3pohEJOvQJB6ZmSBWX/lxmFFm5R6W7LdFzgmp0ZKYeIEMQ
 TDWvaOEEqRlZflUBxRXidrsGv+QaNPpu+/aRnHiURxqxmURv04tQxyOUaTyA+AarqVIs
 ieNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=M0jPcyN+0GksOscsUu1GV8Mpyh0R661ZmzEHh6E/AMs=;
 b=N/+jKNZJUI6UL6VIfdAlGijncddX4kljN9gn1fG7vgL1KMAbqtqSiO6WyXOhwOX9MT
 5YsCeOUuktapV02dyPCUe6j6eA4uhmX9e0sdcQqVcEKUrZCr3yv0CjY42obZK76rcCjR
 Qp9Md5f2QoMHmAdombD96vyHFUoIcFtGZzUJfgQ55aiW/biT0Jjrzmxq8TnTaivFar2z
 BCwxC9oUeixDKLNJeDj9NTb8//cQT0B0rmDT/1LUBPKV1+iv5S8ONKVMH55BBoZ5lZHp
 yVSjO8MbWRlpA0zvJ8P2kHRtQyw513RvoMRpJTLl9ytXlW1RIr74xPi+xJ770Ucwxo/D
 uZ4w==
X-Gm-Message-State: AOAM531Yh/SFvI8S+DyYfmyPu9B2UNibAkOKtJffDKUiDKq25UOjI9qw
 uXQfAyZuv4f7NC5J/jlm4/dnL0VEs4mN
X-Google-Smtp-Source: ABdhPJxQ9rkGnGivDEkuBfraFu5hFHW+Mr+Pxscs4LsNz+yhlOVsSAou40KfWpqyzu7Hu5pbUpQVVw==
X-Received: by 2002:a9d:6a03:: with SMTP id g3mr502028otn.189.1623782821114;
 Tue, 15 Jun 2021 11:47:01 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id r1sm4355328oth.19.2021.06.15.11.47.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Jun 2021 11:47:00 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:50dd:ab38:f475:bd86])
 by serve.minyard.net (Postfix) with ESMTPSA id 258ED180293;
 Tue, 15 Jun 2021 18:46:59 +0000 (UTC)
Date: Tue, 15 Jun 2021 13:46:57 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210615184657.GF2921206@minyard.net>
References: <20210608104757.582199-1-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210608104757.582199-1-andrew@aj.id.au>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1ltE5a-00036g-UJ
Subject: Re: [Openipmi-developer] [PATCH v4 00/16] ipmi: Allow raw access to
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
 linux-aspeed@lists.ozlabs.org, KWLIU@nuvoton.com, avifishman70@gmail.com,
 venture@google.com, openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, robh+dt@kernel.org, arnd@arndb.de,
 openipmi-developer@lists.sourceforge.net, zweiss@equinix.com,
 chiawei_wang@aspeedtech.com, linux-arm-kernel@lists.infradead.org,
 benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jun 08, 2021 at 08:17:41PM +0930, Andrew Jeffery wrote:
> 
> Hello,
> 
> This is the 4th spin of the series refactoring the keyboard-controller-style
> device drivers in the IPMI subsystem.

Ok, no comments and everything looks good, I have this queued for the
next Linux release.

Thanks,

-corey

> 
> v3 can be found at:
> 
> https://lore.kernel.org/lkml/20210510054213.1610760-1-andrew@aj.id.au/
> 
> v4:
> 
> * Makes kcs_bmc_add_device() return an error if no client successfully
>   initialised with respect to the binding of the device driver
> * Retains the existing single-open semantics (v3 allowed multiple-open)
> * Fixes the OBE macro for the NPCM7xx KCS driver
> * Cleans up Yoda-style masks (mask constant on the LHS rather than RHS)
> * Cleans up includes in kcs_bmc_client.h
> * Adds some comments to the SerIO adapter to clarify object lifetimes
> 
> Previously:
> 
> Changes in v3:
> 
> * The series was rebased onto v5.13-rc1
> * v5.13-rc1 includes Chiawei's patches reworking the LPC devicetree bindings,
>   so they're no-longer required in the series.
> * After some discussion with Arnd[1] and investigating the serio subsystem,
>   I've replaced the "raw" KCS driver (patch 16/21 in v2) with a serio adaptor
>   (patch 11/16 in this series). The adaptor allows us to take advantage of the
>   existing chardevs provided by serio.
> 
> [1] https://lore.kernel.org/linux-arm-kernel/37e75b07-a5c6-422f-84b3-54f2bea0b917@www.fastmail.com/
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
>   ipmi: kcs_bmc: Enable IBF on open
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
>  drivers/char/ipmi/kcs_bmc.c                   | 523 ++++-----------
>  drivers/char/ipmi/kcs_bmc.h                   |  92 +--
>  drivers/char/ipmi/kcs_bmc_aspeed.c            | 633 +++++++++++++-----
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c         | 568 ++++++++++++++++
>  drivers/char/ipmi/kcs_bmc_client.h            |  45 ++
>  drivers/char/ipmi/kcs_bmc_device.h            |  22 +
>  drivers/char/ipmi/kcs_bmc_npcm7xx.c           |  92 ++-
>  drivers/char/ipmi/kcs_bmc_serio.c             | 157 +++++
>  12 files changed, 1594 insertions(+), 706 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt
>  create mode 100644 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
>  create mode 100644 drivers/char/ipmi/kcs_bmc_client.h
>  create mode 100644 drivers/char/ipmi/kcs_bmc_device.h
>  create mode 100644 drivers/char/ipmi/kcs_bmc_serio.c
> 
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
