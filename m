Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3B33C7A80
	for <lists+openipmi-developer@lfdr.de>; Wed, 14 Jul 2021 02:17:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m3Sb2-0004XP-O1; Wed, 14 Jul 2021 00:17:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1m3Sb0-0004XG-Ji
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Jul 2021 00:17:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ANBre7e/SeOgwL/kzxB4MEQhrNdFwAa+nXG5MhaUU/0=; b=cCtHWc16KGitVlHp0oO1lz+BAp
 /OBY5pmRTEowtgMZnOd5fjgR7R6O/w/pTgQT7CD/vBMBn1DJh4RuRo3+qzjl0D0946rXVaD8qYcRD
 /G1jyDPosRX1Q8ie1OVhjZUt5C3DPqfJb19M2KGBHShI1zF3HFS/TjAkKA6VBJrIkmQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ANBre7e/SeOgwL/kzxB4MEQhrNdFwAa+nXG5MhaUU/0=; b=aeoZtcTUprSy4EJItG5s5DCokq
 Z+cist0j4a/TTZ3BWO/Me5KPzc4k9rnMFMqAcACKTDnUzLxiad8fChKjDjZJFoc7aKCQBbASnBPQo
 1MzH4Hi4WkQZWLf1lKzbhnTa4xo2NY8bdAnqbqUDzdPSaW6ErYu2m3+KjIeYFQyk9awY=;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m3Sau-007ULl-88
 for openipmi-developer@lists.sourceforge.net; Wed, 14 Jul 2021 00:17:50 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 42-20020a9d012d0000b02904b98d90c82cso720086otu.5
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 13 Jul 2021 17:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=ANBre7e/SeOgwL/kzxB4MEQhrNdFwAa+nXG5MhaUU/0=;
 b=twt0VPxbYbALN1uhWFP6Q0BG5HRHqjR3t2ca4CF8GG5CU/m30bRD3WkEtSJ6tHEG+4
 vSUWF4kkATG9F+c81vIvEas4+9lQu/S+LbMIfpCP8KLwlTrErq3QPIK5szgJRP1d0hs0
 FLVE13Y4IPT9W4WJOSUToCNSMqSONZyqJOG2bTnAvcdD5VsM+6gbsxHqQs9kzXws7O3z
 L+MgSqzTp4W3V70D+WkwXZjsC9/QbLQzBVZcuSAzmi1sMbS/IMqYByrFyGlwsMGgA+l4
 J/C7HFkvfe0f59+oc5TxXzip62eZYk6netAVqjPfRWWkAhiIExvfejPDKMgzceiOelHB
 pUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=ANBre7e/SeOgwL/kzxB4MEQhrNdFwAa+nXG5MhaUU/0=;
 b=iJ5Qaf/Jhy/SS5a1MU8cM7k7DxIMQA7j4z7LpZUzVudVFKf2lxkZCkXgxwmPj5Fqi0
 HjLlI0wyG/iPJQdkpfvUQny8Wg4f6YwoK/J/5GSfsVIl2thOLWSBsRet5n/rR7fHUrnp
 HFbPcLYyu2eghlvr25qNZbLjoNUz0Az2OQfGDaD90qUOWxzKyL546B06rCbpou1DtCAt
 W6zRh2iC4cRCxSIpTRECVx33mtINyEBoCx+lnZNvCMwHAKFVUe+VYBLdqoc5wqMMtTao
 2QVKC6Uih8xNqHD/4AGjLbiHeaYbvdAqW/uQ62lgr1wrPeJbwSpttrFsN46y/ZVX5M2A
 rUGQ==
X-Gm-Message-State: AOAM530fI+8mjmjUMFLGQWcHUTvSBc94Vpm4zVA0pNNZ6K/0VWsdCmD+
 NirWLGsQjA7qNjAvwIOjruj+fEJVVwde
X-Google-Smtp-Source: ABdhPJwl33HIb5+qvgtynzyVDjT324T1pKdLQUnPLKYfWQHVqv5GYScqiZwm0JmSDRuTot9Y/rHQKA==
X-Received: by 2002:a9d:2c61:: with SMTP id f88mr5834409otb.62.1626221858570; 
 Tue, 13 Jul 2021 17:17:38 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id s29sm170136oiw.54.2021.07.13.17.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 17:17:38 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:6938:a190:9608:2d5d])
 by serve.minyard.net (Postfix) with ESMTPSA id 3ADD518005A;
 Wed, 14 Jul 2021 00:17:37 +0000 (UTC)
Date: Tue, 13 Jul 2021 19:17:36 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210714001736.GD3406@minyard.net>
References: <20210713055425.30636-1-quan@os.amperecomputing.com>
 <20210713154405.GB3406@minyard.net>
 <f7dd5b0f-a2a7-0a5f-3521-6721e8e52cb5@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7dd5b0f-a2a7-0a5f-3521-6721e8e52cb5@os.amperecomputing.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1m3Sau-007ULl-88
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

On Wed, Jul 14, 2021 at 06:29:27AM +0700, Quan Nguyen wrote:
> On 13/07/2021 22:44, Corey Minyard wrote:
> > On Tue, Jul 13, 2021 at 12:54:22PM +0700, Quan Nguyen wrote:
> > > This series add support the SSIF BMC driver which is to perform in-band
> > > IPMI communication with their host in management (BMC) side.
> > 
> > Per the kernel build robot, looks like patch 3 introduces slave_enable()
> > but patch 1 uses it.
> > 
> > -corey
> > 
> Thanks Corey,
> 
> The order is not correct and kernel build robot found this hurts
> bisectibility.
> The patch 3 should be the first patch.

Ok, can you re-submit in the right order?

Thanks,

-corey

> 
> - Quan
> 
> > > 
> > > SSIF BMC driver in this series is tested with Aspeed AST2500.
> > > 
> > > v4:
> > >    + Fix recursive spinlock                                      [Graeme]
> > >    + Send response with Completion code 0xFF when aborting         [Quan]
> > >    + Fix warning with dt_binding_check                              [Rob]
> > >    + Change aspeed-ssif-bmc.yaml to ssif-bmc.yaml                  [Quan]
> > >    + Added bounding check on SMBus writes and the whole request     [Dan]
> > >    + Moved buffer to end of struct ssif_bmc_ctx to avoid context
> > >      corruption if somehow buffer is written past the end           [Dan]
> > >    + Return -EINVAL if userspace buffer too small, dont
> > >      silence truncate                                       [Corey, Joel]
> > >    + Not necessary to check NONBLOCK in lock                      [Corey]
> > >    + Enforce one user at a time                                    [Joel]
> > >    + Reject write with invalid response length from userspace     [Corey]
> > >    + Add state machines for better ssif bmc state handling         [Quan]
> > >    + Drop ssif_bmc_aspeed.c and make ssif_bmc.c is generic
> > >      SSIF BMC driver                                               [Quan]
> > >    + Change compatible string "aspeed,ast2500-ssif-bmc" to
> > >      "ampere,ssif-bmc"                                             [Quan]
> > >    + Toggle Slave enable in i2c-aspeed to turn on/off slave mode   [Ryan]
> > >    + Added slave_enable() to struct i2c_algorithm to control
> > >      slave mode and to address the recursive spinlock      [Graeme, Ryan]
> > >    + Abort current request with invalid SMBus write or
> > >      invalid command                                               [Quan]
> > >    + Abort all request if there is pending response                [Quan]
> > >    + Changed validate_pec() to validate_request()                  [Quan]
> > >    + Add unsupported_smbus_cmd() to handle unknown SMBus command   [Quan]
> > >    + Print internal state string for ease investigating issue      [Quan]
> > >    + Move to READY state on SLAVE_STOP event                       [Quan]
> > >    + Change initilize_transfer() to process_smbus_cmd()            [Quan]
> > >    + Introduce functions for each slave event                      [Quan]
> > > 
> > > v3:
> > >    + Switched binding doc to use DT schema format [Rob]
> > >    + Splited into generic ssif_bmc and aspeed-specific [Corey, Joel]
> > >    + Removed redundant license info [Joel]
> > >    + Switched to use traditional if-else [Joel]
> > >    + Removed unused ssif_bmc_ioctl() [Joel]
> > >    + Made handle_request()/complete_response() to return void [Joel]
> > >    + Refactored send_ssif_bmc_response()/receive_ssif_bmc_request()
> > >    [Corey]
> > >    + Remove mutex [Corey]
> > >    + Use spin_lock/unlock_irqsave/restore in callback [Corey]
> > >    + Removed the unnecessary memset [Corey]
> > >    + Switch to use dev_err() [Corey]
> > >    + Combine mask/unmask two interrupts together [Corey]
> > >    + Fixed unhandled Tx done with NAK [Quan]
> > >    + Late ack'ed Tx done w/wo Ack irq [Quan]
> > >    + Use aspeed-specific exported aspeed_set_slave_busy() when slave busy
> > >    to fix the deadlock [Graeme, Philipp, Quan]
> > >    + Clean buffer for last multipart read [Quan]
> > >    + Handle unknown incoming command [Quan]
> > > 
> > > v2:
> > >    + Fixed compiling error with COMPILE_TEST for arc
> > > 
> > > Quan Nguyen (3):
> > >    ipmi: ssif_bmc: Add SSIF BMC driver
> > >    bindings: ipmi: Add binding for SSIF BMC driver
> > >    i2c: aspeed: Add slave_enable() to toggle slave mode
> > > 
> > >   .../devicetree/bindings/ipmi/ssif-bmc.yaml    |  38 +
> > >   drivers/char/ipmi/Kconfig                     |  11 +
> > >   drivers/char/ipmi/Makefile                    |   1 +
> > >   drivers/char/ipmi/ssif_bmc.c                  | 781 ++++++++++++++++++
> > >   drivers/char/ipmi/ssif_bmc.h                  | 106 +++
> > >   drivers/i2c/busses/i2c-aspeed.c               |  20 +
> > >   include/linux/i2c.h                           |   2 +
> > >   7 files changed, 959 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
> > >   create mode 100644 drivers/char/ipmi/ssif_bmc.c
> > >   create mode 100644 drivers/char/ipmi/ssif_bmc.h
> > > 
> > > -- 
> > > 2.28.0
> > > 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
