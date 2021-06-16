Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3628A3AA3BE
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Jun 2021 21:02:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ltaoQ-00041g-Vk; Wed, 16 Jun 2021 19:02:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1ltaoP-00041P-2m
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Jun 2021 19:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UOqLQQmsoCxqiYwODGOxvwScag2+ijPfJja63uXJkvM=; b=HYAf4442WvzTUFVVFrvAzPH5Us
 TUzzKpuE7w4UHFBvJh6l8Eld+ZgKh9CJ0nggHFc3yzAmuHe13aW8aZDLnsqSWWmmhyPaeUy2ucI8m
 s81rxS+SZdbxVYtnglGNsyy0L7CzJMI/TnHyT5I/bQUE+vfTWXt7n+2Dk8OShHTVz6ho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UOqLQQmsoCxqiYwODGOxvwScag2+ijPfJja63uXJkvM=; b=jO2AMBWoFwXK8DdJX045QJpaHr
 CX0WEOCauyJu1fykwRtw9gDQysRSwJzaVz6ZfvWxFjiEIKeINWLfsHCnIyOGIprvfJ+LCzGXb9Imx
 ozZHXwEnpavWXDo6vmt8WE5Ohf2QnelMZHVUED1Ok9k/zcKfkYFg2uFA1IGjIYSRvlBs=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ltao9-00035i-4r
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Jun 2021 19:02:53 +0000
Received: by mail-oi1-f171.google.com with SMTP id c13so3566210oib.13
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Jun 2021 12:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=UOqLQQmsoCxqiYwODGOxvwScag2+ijPfJja63uXJkvM=;
 b=QKlM7nFUoB6J9K6LCVtW4wLxrfvSkz/9/nDxNyxDziZoJE7UBptRchMsuVPPsv/Hh6
 0hoMsU+kE/siiKIoEARnj+zwFE8PmjgdODBmhLSDyKIQnUHb5mT7rlhid2dRz4RZKI/1
 vm4AD/ORdZWtQjEHXa03hMC9KsTCZM+Vu+kDID2Vzbbo1Zy1tCzn9xoJLK9bGpIWQ0M3
 X/Hvi9oD4cMfRkNHQ7PZvIQb4wcnbP5lJsan/SoaGrXV6dn7us3t/odsNRmWZL50gXrH
 tXos9ISMyX0/UUW/opRzLItk0oDWUNvFsoT4dfNaFMLJ19g29AeyElaIe2MR1hrrlcVG
 VX5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=UOqLQQmsoCxqiYwODGOxvwScag2+ijPfJja63uXJkvM=;
 b=PGBFt9Gl29mMiKAEziphASLD9QqCqrwOmPbXuGJkSqGvHCQgbC0TUYbc0hwpPLCTby
 VOzJVZW+4m+UDRPE6MmwIDYeLJrsdY6QbnxkcFGyY1FpUrtzPYY41wjvYkEC2mkSjDRy
 5hdO3A0RLQelDYALNuVpboKd12ASla3B1raVdyEDLNNqRhxGlG3j+RxU4oPmg2NeGyv9
 r+GlrFgEBP0g2qydpSgYLBhWEbVqpQ/jW8blHl7a2ZPwEdOAEqDBMlI6XYZ3qJABeSUr
 dad6CIrGMVrN87G3unXT8pxyI4N1O8oCS4e70oivArisVe+omwMoIMxFwZc+yQVm/pCL
 aRyg==
X-Gm-Message-State: AOAM5337LOCrGrpmKuDmwDLL0UTY3B53pzvTz+avZtnWeg2oCMplJWHo
 k1VJUTSbRxpyP9KJQ6apOQ==
X-Google-Smtp-Source: ABdhPJzogjBWC3Po3+HvkfTYzT7IZOBBIi2tfx6vpj5GURwwDUR39OAgLN+pokD5M0qf1LT+kBQ+bQ==
X-Received: by 2002:aca:281a:: with SMTP id 26mr8138043oix.142.1623870152808; 
 Wed, 16 Jun 2021 12:02:32 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id p9sm694118otl.64.2021.06.16.12.02.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Jun 2021 12:02:31 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:742a:6ad4:30ea:e332])
 by serve.minyard.net (Postfix) with ESMTPSA id B2FF61800E7;
 Wed, 16 Jun 2021 19:02:30 +0000 (UTC)
Date: Wed, 16 Jun 2021 14:02:29 -0500
From: Corey Minyard <minyard@acm.org>
To: Colin King <colin.king@canonical.com>
Message-ID: <20210616190229.GG2921206@minyard.net>
References: <20210616162913.15259-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210616162913.15259-1-colin.king@canonical.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.171 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1ltao9-00035i-4r
Subject: Re: [Openipmi-developer] [PATCH][next] ipmi: kcs_bmc_aspeed: Fix
 less than zero comparison of a unsigned int
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jun 16, 2021 at 05:29:13PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The comparisons of the unsigned int hw_type to less than zero always
> false because it is unsigned. Fix this by using an int for the
> assignment and less than zero check.

Thanks, I added this to my tree.

-corey

> 
> Addresses-Coverity: ("Unsigned compared against 0")
> Fixes: 9d2df9a0ad80 ("ipmi: kcs_bmc_aspeed: Implement KCS SerIRQ configuration")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 0401089f8895..92a37b33494c 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -301,13 +301,15 @@ static inline int aspeed_kcs_map_serirq_type(u32 dt_type)
>  static int aspeed_kcs_config_upstream_irq(struct aspeed_kcs_bmc *priv, u32 id, u32 dt_type)
>  {
>  	unsigned int mask, val, hw_type;
> +	int ret;
>  
>  	if (id > 15)
>  		return -EINVAL;
>  
> -	hw_type = aspeed_kcs_map_serirq_type(dt_type);
> -	if (hw_type < 0)
> -		return hw_type;
> +	ret = aspeed_kcs_map_serirq_type(dt_type);
> +	if (ret < 0)
> +		return ret;
> +	hw_type = ret;
>  
>  	priv->upstream_irq.mode = aspeed_kcs_irq_serirq;
>  	priv->upstream_irq.id = id;
> -- 
> 2.31.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
