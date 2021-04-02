Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A9A352B42
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 16:11:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSKWM-0006HE-Je; Fri, 02 Apr 2021 14:11:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1lSKWK-0006Ga-Ly
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:11:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ylm6gpqeWvw+/HjVuWe1JAQMxGl3Tdm7u6ALrI9wXPg=; b=lv/QNeZP1XuSCpzKKe5AYgYHvg
 kZPG9e0ogd0kIsZVRMsrkkYqaEmc7OemmWfgu45AcLA2xNSEyzH8AdK/hAa2+r157IRKCyJw05wxo
 bHzfMRgYn/g9xfbaEncmMEof93j9r24Grh/7ny6+lReY+QN1EDVYUhisyi1xk09X2PrI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ylm6gpqeWvw+/HjVuWe1JAQMxGl3Tdm7u6ALrI9wXPg=; b=TUNCcta7GGbVsihtJ5M1BOF5pd
 N0fMzfDEBWvAix/i6Z8RjhmiIMz7MigwLUu1T79uiFe9w185aWzIcuDi9DhgVC2KLQl+AZdOH/JB9
 /I4VMP2Q2oP1BI4QpsdMhFyN7C+zrK/8FBZQY/1SqYi2dxcl+LOvi7t76HWgtsJ01Etc=;
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSKJI-0002mP-Ss
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 13:58:20 +0000
Received: by mail-oi1-f174.google.com with SMTP id n8so4999552oie.10
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 06:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=ylm6gpqeWvw+/HjVuWe1JAQMxGl3Tdm7u6ALrI9wXPg=;
 b=Sj034CJIi3VnMuZiMqKsL5hC3zzp2N52bcqqe9luhYTARnp6LmGMqyP6XOMZEVJsr5
 Ufyz9lz0puhkH6aRFnLB/O7cyzMIJ5S1ibV+E7xeLFzv1582dQzMoJYpD58LM0Le1EmI
 NSv4VAHxaQCae1/zBN9SCZ28lQSKBiF4DZeSYgAfEgd5DLfbc57d4Twcz9lyfZBWn/qU
 DvzHTFZxtvuwexVbDh6DZ/pzRYW6lXWrkFm9ZYDy7Qcsv7ZuNVJfQHiFFXAtsNnd8M5y
 MLyYEdxM9DsO06Ua49kF7Ju7IMZFfOrLUI4efdhQx64y6vy2e1h8ljLE1XjSgjJzjLBY
 2AVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=ylm6gpqeWvw+/HjVuWe1JAQMxGl3Tdm7u6ALrI9wXPg=;
 b=HViHlUMdPpVzNqi/eoZu8cewL+AYBoeB/NyzS1ENiaRyIJYOSftlwy27njXRpRR2xO
 by/kbBW1H4/WpGkzdeyKAh3wy46/cgOxlj1iv5+o023049zp3oK+ndI9Kvl+DLazSyVW
 M2pFqOGuL0xMXEH/MBnPzjOGC8dEoKcSMKOl/cH5rU7ML9HOQmg36Jv8ru5h1pH9lVUe
 EYEoi8XItu1t+6hoHKjC0RMpGS4zIr4T/xQLrjxH1YcopyvmYXJvrcsZxE7HhIVP8t07
 wPADaenwNAPeJfv60PcYM+QRhQnDUl2foTL53Y6wnAwe3+Z3AexnW/xzmQsLvzG7FrLP
 P8Ag==
X-Gm-Message-State: AOAM5335K6kZOHeXfBdMFep1eeBBLiH3QicvA1Z3OgM6P+KeIh5hvgbs
 AOl2kSZg4r6v9org7oST5Q==
X-Google-Smtp-Source: ABdhPJwPPPNj2VpHypzZIPQ8aJF0JlMzBORKo8KJpEx0heLQgj2IgvzbO3x1kFLGObizH/Up+c7q8w==
X-Received: by 2002:aca:f041:: with SMTP id o62mr10103290oih.114.1617371879329; 
 Fri, 02 Apr 2021 06:57:59 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id d13sm1861185otk.74.2021.04.02.06.57.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Apr 2021 06:57:58 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:f99f:823a:495e:5af])
 by serve.minyard.net (Postfix) with ESMTPSA id DC72D180570;
 Fri,  2 Apr 2021 13:57:57 +0000 (UTC)
Date: Fri, 2 Apr 2021 08:57:56 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20210402135756.GU507977@minyard.net>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.174 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSKJI-0002mP-Ss
Subject: Re: [Openipmi-developer] [PATCH v1 01/10] ipmi_si: Switch to use
 platform_get_mem_or_io()
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
Cc: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Mar 30, 2021 at 09:16:40PM +0300, Andy Shevchenko wrote:
> Switch to use new platform_get_mem_or_io() instead of home grown analogue.
> Note, we also introduce ipmi_set_addr_data_and_space() helper here.

You didn't send a part 0 that I saw, so just using this.  This is a nice
cleanup set, I just had a few very minor nits.  Thanks for this.

-corey

> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_si_platform.c | 40 +++++++++++-----------------
>  1 file changed, 16 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> index 129b5713f187..d7bd093f80e9 100644
> --- a/drivers/char/ipmi/ipmi_si_platform.c
> +++ b/drivers/char/ipmi/ipmi_si_platform.c
> @@ -100,35 +100,32 @@ static int acpi_gpe_irq_setup(struct si_sm_io *io)
>  }
>  #endif
>  
> +static void ipmi_set_addr_data_and_space(struct resource *r, struct si_sm_io *io)
> +{
> +	io->addr_data = r->start;
> +	if (resource_type(r) == IORESOURCE_IO)
> +		io->addr_space = IPMI_IO_ADDR_SPACE;
> +	else
> +		io->addr_space = IPMI_MEM_ADDR_SPACE;
> +}
> +
>  static struct resource *
>  ipmi_get_info_from_resources(struct platform_device *pdev,
>  			     struct si_sm_io *io)
>  {
> -	struct resource *res, *res_second;
> +	struct resource *res, *second;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
> -	if (res) {
> -		io->addr_space = IPMI_IO_ADDR_SPACE;
> -	} else {
> -		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -		if (res)
> -			io->addr_space = IPMI_MEM_ADDR_SPACE;
> -	}
> +	res = platform_get_mem_or_io(pdev, 0);
>  	if (!res) {
>  		dev_err(&pdev->dev, "no I/O or memory address\n");
>  		return NULL;
>  	}
> -	io->addr_data = res->start;
> +	ipmi_set_addr_data_and_space(res, io);
>  
>  	io->regspacing = DEFAULT_REGSPACING;
> -	res_second = platform_get_resource(pdev,
> -			       (io->addr_space == IPMI_IO_ADDR_SPACE) ?
> -					IORESOURCE_IO : IORESOURCE_MEM,
> -			       1);
> -	if (res_second) {
> -		if (res_second->start > io->addr_data)
> -			io->regspacing = res_second->start - io->addr_data;
> -	}
> +	second = platform_get_mem_or_io(pdev, 1);
> +	if (second && resource_type(second) == resource_type(res) && second->start > io->addr_data)
> +		io->regspacing = second->start - io->addr_data;
>  
>  	return res;
>  }
> @@ -275,12 +272,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
>  	io.addr_source	= SI_DEVICETREE;
>  	io.irq_setup	= ipmi_std_irq_setup;
>  
> -	if (resource.flags & IORESOURCE_IO)
> -		io.addr_space = IPMI_IO_ADDR_SPACE;
> -	else
> -		io.addr_space = IPMI_MEM_ADDR_SPACE;
> -
> -	io.addr_data	= resource.start;
> +	ipmi_set_addr_data_and_space(&resource, &io);
>  
>  	io.regsize	= regsize ? be32_to_cpup(regsize) : DEFAULT_REGSIZE;
>  	io.regspacing	= regspacing ? be32_to_cpup(regspacing) : DEFAULT_REGSPACING;
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
