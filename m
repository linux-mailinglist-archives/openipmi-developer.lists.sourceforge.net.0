Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D829A3CAFB2
	for <lists+openipmi-developer@lfdr.de>; Fri, 16 Jul 2021 01:33:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m4Aqs-00018K-NK; Thu, 15 Jul 2021 23:33:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1m4Aqo-000184-Ju
 for openipmi-developer@lists.sourceforge.net; Thu, 15 Jul 2021 23:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HlStEC6or+9N8Cwt9oF7vYLgwg9asjNsBZZ4MGIjNuM=; b=QeiAhWlXGLomb8x89H2ecY08KQ
 kKZvyGuhx4sgTB/UH7vK+bVnu0NIO89CtG6FH6p/AgC1GHPlDmP+A1HkA5qXzi+hp2QlK8MNmHMwK
 pddKJs8ivwNSAGl7t8eawkRMwA/qF3XFhZl0NBdlc1V61ayEaUzrp8RPwR8RZruk5rPU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HlStEC6or+9N8Cwt9oF7vYLgwg9asjNsBZZ4MGIjNuM=; b=dWqmUtlwn3YRvYQBlyPgdH9v8p
 iwGtcpnBVOH4hlAbzznhbkwkCJ+CQSHYIAsysW9cq/0j0eNAl9OMhhUbY3pxfdPGg+ueJBKI9Tzip
 aTAlax/onCK4H0gkMeyFySRDIjG3pNVSjZwY5q3a2OCizT1gKT7XDzySUWkpEhxAU/jI=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m4Aqh-0006Wv-Aq
 for openipmi-developer@lists.sourceforge.net; Thu, 15 Jul 2021 23:33:05 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 h24-20020a9d64180000b029036edcf8f9a6so8034251otl.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 15 Jul 2021 16:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=HlStEC6or+9N8Cwt9oF7vYLgwg9asjNsBZZ4MGIjNuM=;
 b=XwTyE5pm0jwBWOsd9hfC3ExcIg9nDiFjftH6RKtP2U6uxrFd3HpIt+/6uhbQsvK+m4
 +WgH8vS6kSCb6llnSZN2Cg7QvWlP+uATjtMBLc3O0xbahN6kZoPlLFMEcb6sZxi33/OH
 Hxi9DhfOQEmy6ogjJc1gNBMa4gjYMAvnGsVyeWmultjZndXZUBO6SW40v0t+cJvieZBz
 bsaK2qIUVHX5chaC6NFB8ix/HsUTzUuhekYeTY2lvVxvvZ7YbAN1KlcyB2d6ANbDDYEH
 /o2euloqJZRbeaFQt+0TubLigYBEExc7MO9Y2AkNEDIzfHNV5bEOiMxEKmz/jMNXY56M
 19qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=HlStEC6or+9N8Cwt9oF7vYLgwg9asjNsBZZ4MGIjNuM=;
 b=HG4mX0V891A8vy+eWnQJ7IGJ04lJ1KW6wrlYdTxwwe5NfBaVARACjovkghHFRClTAW
 3FX9mmRpHyWnaKrD9xVeNT4hAXWHXHVEmAaDnk8V3d62mIUuDcGmc/0hae7xpvJQ3c70
 5EmQxvf8DdQPJ2B8/d80G51KEe6IM0aTKtwd+qA2+NZEcdv3gaA62L1bHGl5gWBqV93k
 uDXePaIEtTKYRblK2NE0fFosmI5cR78TWKBEbnuvaw06NPzmWpDHOseeah0a74RQJEKb
 E/jDa/aN58jBKYnBLSwVE1BOESEK73K3TeyKUZ8l8xHFHQJDmLoLmhIicyOoJoib1ndz
 RNTA==
X-Gm-Message-State: AOAM533C7XLZTO2uSZeyEcRJ99TfZYoSqGXT6RBRb4QWwDFvnTywByET
 0aJpZJEFrspbO+r9EE1ydQ==
X-Google-Smtp-Source: ABdhPJyRd2kar/SWjGLB/Gtxx9oUFFRXtmYqGetIjej3d7xwi0kq0iA0ROOS36HUp113zMuPAXTt0g==
X-Received: by 2002:a05:6830:114f:: with SMTP id
 x15mr5751678otq.356.1626391972537; 
 Thu, 15 Jul 2021 16:32:52 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id x129sm1566206oia.26.2021.07.15.16.32.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 16:32:51 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8515:1333:671e:f6ae])
 by serve.minyard.net (Postfix) with ESMTPSA id 2B629180058;
 Thu, 15 Jul 2021 23:32:50 +0000 (UTC)
Date: Thu, 15 Jul 2021 18:32:48 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210715233248.GF3406@minyard.net>
References: <20210714033833.11640-1-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714033833.11640-1-quan@os.amperecomputing.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.43 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1m4Aqh-0006Wv-Aq
Subject: Re: [Openipmi-developer] [PATCH v5 0/3] Add SSIF BMC driver
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

On Wed, Jul 14, 2021 at 10:38:30AM +0700, Quan Nguyen wrote:
> This series add support the SSIF BMC driver which is to perform in-band
> IPMI communication with their host in management (BMC) side.
> 
> SSIF BMC driver in this series is tested with Aspeed AST2500.

Ok, I have queued this and added Rob's review.  Five versions, you had
to work for this one :).

Thanks,

-corey

> 
> v5:
>   + Correct the patches order to fix the bisect issue found by
>   kernel build robot
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
>   i2c: aspeed: Add slave_enable() to toggle slave mode
>   ipmi: ssif_bmc: Add SSIF BMC driver
>   bindings: ipmi: Add binding for SSIF BMC driver
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
