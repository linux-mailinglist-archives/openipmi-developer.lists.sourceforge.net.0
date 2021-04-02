Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0333B352B49
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 16:22:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSKgU-0006zU-8I; Fri, 02 Apr 2021 14:22:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1lSKgR-0006zF-8U
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wFmEeiu8O3e8Ysh2Egg3y980B0w0wNYvL3AQsHO1K90=; b=mTgis0duBt62K+FJnzk5q6LftJ
 022/2wO7rJK+TyrJPzXgGELCfRvcbOEN/MJpoPDi9jbKO5K+xFcyIq64Uwg62YVjWokW5LSkf00TZ
 IUf8g5B/W/yYIuz4hfwZ3hOtFvo6QB9Br7fRjfoQTA7X8RysZQL0mXB2D5BUm6E7BbBg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wFmEeiu8O3e8Ysh2Egg3y980B0w0wNYvL3AQsHO1K90=; b=m3yAqFzsQYqE/Emad3rTFEix3y
 Ngn/TiBgFMWZcw9McsYosNk1rKsIs4NYYUJey2ABZMV8hts0b3WYD6YZjbQXysFGFS2n34Gbm9Kh0
 L9RKRTyDamgcT5fFWFztgQe70gET6lr4Lrf1mznLmTayykRYmqrVZTtKJAf7LfhZs/yE=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSKg0-0003mU-OB
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:21:58 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 v24-20020a9d69d80000b02901b9aec33371so5092946oto.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 07:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=wFmEeiu8O3e8Ysh2Egg3y980B0w0wNYvL3AQsHO1K90=;
 b=TEke5GjgaqkttHMJd3gpOWOLZlhz+MiKptNdXq8ft1He/cIpADCj3tiZwUM9IYSw4V
 Gvvu7NIe9GL7P0s/lWgZAEyAviwLVRetY8SiH2c1VbyO1i/Tg8l9AY+WD+1EF/woPpfw
 rZBUW88EJspY50LRle0kjWmjeV/75EIcGor9r23rtDPE1G/M2kQMM3+y/hl6247D6rrf
 y7vV3SgypcrgIZcQipJSxG4KqvseVfEv3W9fsNylo2RXNfyFebh5btWeiLqZ4G04uUYr
 V4Cpss+112fE1xJx7eNhLhi30991uwkZKC31i9X3CgMq/2og6LMqgjONxTaOAPOtmXMz
 SGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=wFmEeiu8O3e8Ysh2Egg3y980B0w0wNYvL3AQsHO1K90=;
 b=VhPEjGWKDZFXNMj8NuiHRg0ejv4rFTKtMlyVTG/K6AaMEwX2CKNnSxrAFrsxXtx89j
 cwnTkE9QTOvL/BobA5unUDpa72qEl9X0TisHVFYZjm7bUIcjlwfbPR3S1DsNMmTC7axO
 tV84qWVueKbJVSCGFkAz0hfqq2AY4AtA4xTM2ANiW2KnJUy7LzTwQXHg/bOtcGXNL/wG
 DlFK07gP0fPVBsp5aIuYeW4+Nd4CEOXZRam/Z45fMix1m9QrQ+oEj679UbC0gkIW7BGu
 1gcqVZLmo2s5xk2YoEcxSkwEepsLB63NqHDol9Cf6Ka1a3W1Crn5sQQ55BtDGroF2gUq
 ZMnA==
X-Gm-Message-State: AOAM531TCYFMBBfzJzxZ08MySQ4XjX7St0MMYeZ0IIK6aeaOPYkIAMbl
 WpmIYF5SLNkAB0YBxVpSvw==
X-Google-Smtp-Source: ABdhPJwB49R/AXpP58aqRK6or0bUV24xyuHImwp2nt06uXJKkyQwip4E4SqGVpKu38xSByynoJ4+9g==
X-Received: by 2002:a05:6830:15d2:: with SMTP id
 j18mr11707892otr.75.1617373286969; 
 Fri, 02 Apr 2021 07:21:26 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id b22sm1904897ots.59.2021.04.02.07.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Apr 2021 07:21:26 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:f99f:823a:495e:5af])
 by serve.minyard.net (Postfix) with ESMTPSA id 371D6180570;
 Fri,  2 Apr 2021 14:21:25 +0000 (UTC)
Date: Fri, 2 Apr 2021 09:21:24 -0500
From: Corey Minyard <minyard@acm.org>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210402142124.GV507977@minyard.net>
References: <20210330141029.20412-1-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330141029.20412-1-quan@os.amperecomputing.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.44 listed in list.dnswl.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSKg0-0003mU-OB
Subject: Re: [Openipmi-developer] [PATCH v2 0/3] Add Aspeed SSIF BMC driver
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
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 linux-kernel@vger.kernel.org, Phong Vo <phong@os.amperecomputing.com>,
 Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Mar 30, 2021 at 09:10:26PM +0700, Quan Nguyen wrote:
> This series add support for the Aspeed specific SSIF BMC driver which
> is to perform in-band IPMI communication with the host in management
> (BMC) side.

I don't have any specific feedback for this, but I'm wondering if it's
really necessary.

Why can't the BMC just open the I2C device and use it?  Is there any
functionality that this provides that cannot be accomplished from
userland access to the I2C device?  I don't see any.

If it tied into some existing framework to give abstract access to a BMC
slave side interface, I'd be ok with this.  But I don't see that.

Unless there is a big need to have this in the kernel, I'm against
including this and would suggest you do all this work in userland.
Perhaps write a library.  Sorry, but I'm trying to do my part to reduce
unnecessary things in the kernel.

Thanks,

-corey

> 
> v2:
>   + Fixed compiling error with COMPILE_TEST for arc
> 
> Quan Nguyen (3):
>   i2c: i2c-core-smbus: Expose PEC calculate function for generic use
>   drivers: char: ipmi: Add Aspeed SSIF BMC driver
>   bindings: ipmi: Add binding for Aspeed SSIF BMC driver
> 
>  .../bindings/ipmi/aspeed-ssif-bmc.txt         |  18 +
>  drivers/char/ipmi/Kconfig                     |  22 +
>  drivers/char/ipmi/Makefile                    |   2 +
>  drivers/char/ipmi/ssif_bmc.c                  | 645 ++++++++++++++++++
>  drivers/char/ipmi/ssif_bmc.h                  |  92 +++
>  drivers/char/ipmi/ssif_bmc_aspeed.c           | 132 ++++
>  drivers/i2c/i2c-core-smbus.c                  |  12 +-
>  include/linux/i2c.h                           |   1 +
>  8 files changed, 922 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/aspeed-ssif-bmc.txt
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
