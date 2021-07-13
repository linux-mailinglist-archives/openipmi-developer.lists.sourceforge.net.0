Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2993C737F
	for <lists+openipmi-developer@lfdr.de>; Tue, 13 Jul 2021 17:44:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m3KaB-0007Nt-RA; Tue, 13 Jul 2021 15:44:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1m3Ka9-0007NQ-KG
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Jul 2021 15:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=retq6liOP8LyC4cjQJYBW1Hq0tEy4WkIXq1yMZpGIss=; b=g3Dqin2mutuHjsi9sy2s8o4rkc
 QzorSOkcxFcik5R9Yu0Bd4RuLJQDd62cWz8U1wUVWN+94nL3yvFE2JnzA6U4cDhihvpYqQr1Z9wbD
 kJbhqZW38TT8zrELMxSgu9gNYMqHoyOzyvM9rhEbL9IaV6yQGCl//e92az09DGnCIsbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=retq6liOP8LyC4cjQJYBW1Hq0tEy4WkIXq1yMZpGIss=; b=iNzh+wpUzMz2ZhisNJ87Rrz9pg
 RW6b2Lr4jyMyfxuKz1x6KXOEOz682kkZry1q7A7D5RanKPXsdLB5JuAB6Bt45Q6iEAfaYIliQBfGU
 w39OL+UVDR9hHLPI9ve5vcOfcW9SOOT+AWC4dDtf7DqZ+tJOoSLtKju0osVnXhISfb/I=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m3Ka0-0076Ot-71
 for openipmi-developer@lists.sourceforge.net; Tue, 13 Jul 2021 15:44:25 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 o72-20020a9d224e0000b02904bb9756274cso1445739ota.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Jul 2021 08:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=retq6liOP8LyC4cjQJYBW1Hq0tEy4WkIXq1yMZpGIss=;
 b=l5diPwu63ZdwRDfFsRfLQy6ioKCxMcgkhHwIYlXxCmK8cfEIsueg3SB3anKBpHRUFL
 /ygVShxWcr+HN/+V5ri/oymhukuLDAjGZ7wzhGv9J3LNpQZRxmJ4uVnL8MX8CaGKXiem
 6863xjwYlv9r55SU7cPAxwSnubqtyzFaIL7/WWAWmncdYPMNYhLBxdOOPsLH5ogoja8I
 4MB/Ghh455+ouxNT3gtRiQFhNsx7hN+MGYLiMkhrFWeN+levLLFjQOL8rEXE6EecfxQt
 DptmuInoEjccYpab6fsGBKqa3jVdcmuD1AfGNLxNIa7ixzEEcMcRjx4mnTi0yXi6aeBz
 nXbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=retq6liOP8LyC4cjQJYBW1Hq0tEy4WkIXq1yMZpGIss=;
 b=tetE01SExT3uIlOkCfWkqNhCYNjSp5GJo3PtmgWoZ5h5PJ0WK1f6x7v/XQmO2iRpwx
 1bwR25OGvl8KwjbCJ7g6LVtO6bvk4YFzARLSOU0XVGer6U1k50fnPL5vPoxCJqtdLbDC
 qwBsCK/Rh7R8wfMVqoqteNRHEg6qDPosR+XcYvIttdOJwdjIyz/71rXGvrFDOIqjHKFx
 r4VoVfwGoVjSaHPzhXoGxreYcijrN4tmRFHtSPIWMucodg0xtNjF2MUt7L2sAj+M0Pac
 lOfGAZ2oInIiW24rbxrvPMI7/fEZaX72zEjRB3k9lc/cas+4UWmzM2vrqHLA8eB80hjf
 dW/Q==
X-Gm-Message-State: AOAM532e4HYRKgcyqM2+dLsbSDOTFjuHgrDKJfwvaeHuEpZnR3Oaq2H6
 +ZOsmtdXiZPaGHIeGHhccQ==
X-Google-Smtp-Source: ABdhPJyx0htP9DIoOaWYr204hm25coZiD0nA2Sxr0KKjHdzpEOchF2qpDQHfdQWgEM0KXzdIvynVzw==
X-Received: by 2002:a05:6830:3108:: with SMTP id
 b8mr4034650ots.182.1626191050482; 
 Tue, 13 Jul 2021 08:44:10 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id v26sm336142oof.30.2021.07.13.08.44.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 08:44:08 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2514:a9eb:8442:8902])
 by serve.minyard.net (Postfix) with ESMTPSA id 08A4D1800E8;
 Tue, 13 Jul 2021 15:44:07 +0000 (UTC)
Date: Tue, 13 Jul 2021 10:44:05 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210713154405.GB3406@minyard.net>
References: <20210713055425.30636-1-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210713055425.30636-1-quan@os.amperecomputing.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.45 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1m3Ka0-0076Ot-71
Subject: Re: [Openipmi-developer] [PATCH v4 0/3] Add SSIF BMC driver
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jul 13, 2021 at 12:54:22PM +0700, Quan Nguyen wrote:
> This series add support the SSIF BMC driver which is to perform in-band
> IPMI communication with their host in management (BMC) side.

Per the kernel build robot, looks like patch 3 introduces slave_enable()
but patch 1 uses it.

-corey

> 
> SSIF BMC driver in this series is tested with Aspeed AST2500.
> 
> v4:
>   + Fix recursive spinlock                                      [Graeme]
>   + Send response with Completion code 0xFF when aborting         [Quan]
>   + Fix warning with dt_binding_check                              [Rob]
>   + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml                  [Quan]
>   + Added bounding check on SMBus writes and the whole request     [Dan]
>   + Moved buffer to end of struct ssif_bmc_ctx to avoid context
>     corruption if somehow buffer is written past the end           [Dan]
>   + Return -EINVAL if userspace buffer too small, dont
>     silence truncate                                       [Corey, Joel]
>   + Not necessary to check NONBLOCK in lock                      [Corey]
>   + Enforce one user at a time                                    [Joel]
>   + Reject write with invalid response length from userspace     [Corey]
>   + Add state machines for better ssif bmc state handling         [Quan]
>   + Drop ssif_bmc_aspeed.c and make ssif_bmc.c is generic
>     SSIF BMC driver                                               [Quan]
>   + Change compatible string "aspeed,ast2500-ssif-bmc" to
>     "ampere,ssif-bmc"                                             [Quan]
>   + Toggle Slave enable in i2c-aspeed to turn on/off slave mode   [Ryan]
>   + Added slave_enable() to struct i2c_algorithm to control
>     slave mode and to address the recursive spinlock      [Graeme, Ryan]
>   + Abort current request with invalid SMBus write or
>     invalid command                                               [Quan]
>   + Abort all request if there is pending response                [Quan]
>   + Changed validate_pec() to validate_request()                  [Quan]
>   + Add unsupported_smbus_cmd() to handle unknown SMBus command   [Quan]
>   + Print internal state string for ease investigating issue      [Quan]
>   + Move to READY state on SLAVE_STOP event                       [Quan]
>   + Change initilize_transfer() to process_smbus_cmd()            [Quan]
>   + Introduce functions for each slave event                      [Quan]
> 
> v3:
>   + Switched binding doc to use DT schema format [Rob]
>   + Splited into generic ssif_bmc and aspeed-specific [Corey, Joel]
>   + Removed redundant license info [Joel]
>   + Switched to use traditional if-else [Joel]
>   + Removed unused ssif_bmc_ioctl() [Joel]
>   + Made handle_request()/complete_response() to return void [Joel]
>   + Refactored send_ssif_bmc_response()/receive_ssif_bmc_request()
>   [Corey]
>   + Remove mutex [Corey]
>   + Use spin_lock/unlock_irqsave/restore in callback [Corey]
>   + Removed the unnecessary memset [Corey]
>   + Switch to use dev_err() [Corey]
>   + Combine mask/unmask two interrupts together [Corey]
>   + Fixed unhandled Tx done with NAK [Quan]
>   + Late ack'ed Tx done w/wo Ack irq [Quan]
>   + Use aspeed-specific exported aspeed_set_slave_busy() when slave busy
>   to fix the deadlock [Graeme, Philipp, Quan]
>   + Clean buffer for last multipart read [Quan]
>   + Handle unknown incoming command [Quan]
> 
> v2:
>   + Fixed compiling error with COMPILE_TEST for arc
> 
> Quan Nguyen (3):
>   ipmi: ssif_bmc: Add SSIF BMC driver
>   bindings: ipmi: Add binding for SSIF BMC driver
>   i2c: aspeed: Add slave_enable() to toggle slave mode
> 
>  .../devicetree/bindings/ipmi/ssif-bmc.yaml    |  38 +
>  drivers/char/ipmi/Kconfig                     |  11 +
>  drivers/char/ipmi/Makefile                    |   1 +
>  drivers/char/ipmi/ssif_bmc.c                  | 781 ++++++++++++++++++
>  drivers/char/ipmi/ssif_bmc.h                  | 106 +++
>  drivers/i2c/busses/i2c-aspeed.c               |  20 +
>  include/linux/i2c.h                           |   2 +
>  7 files changed, 959 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
>  create mode 100644 drivers/char/ipmi/ssif_bmc.c
>  create mode 100644 drivers/char/ipmi/ssif_bmc.h
> 
> -- 
> 2.28.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
