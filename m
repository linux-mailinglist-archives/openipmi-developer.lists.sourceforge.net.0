Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F02352B1A
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 15:46:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSK8J-0003eV-SB; Fri, 02 Apr 2021 13:46:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1lSK8G-0003dT-Uf
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 13:46:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ADNosmB7KqYRCGME6xSqXcXbOymz1SCXHTBXbg7niS0=; b=b10Gr63j5mUe7m7la0+eVlMLgC
 JeQdC4CqM8/5vVYA6wcohWvpQ+khvxBBlk6gHPhQf5JBamRSLZboxIXD+Ef7UfCQj2Td0+exZ9jgb
 6oE8BZ6ftBGaUsTh19TlyXmtPN+SgWTkWb75In+yy8SLmdB5lGJKErao+66aE7nM+qBk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ADNosmB7KqYRCGME6xSqXcXbOymz1SCXHTBXbg7niS0=; b=DaTxVMV5qzN82StArtWHCojP5s
 KUwQZuectePP2vh7GhG0cxiBv6JVIcolc7P6lD6C3++mrIi1tckB+Y6ZwVdgGnYV8f2OqXVmSFcBH
 2Aw0k7OdUdXeeGuZPKaCldRjeHcE0s/U7febY/rcmFoMtrjr7f3XHaYKD98UWZN566mc=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lSK7f-006y6A-Oc
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 13:46:39 +0000
Received: by mail-oi1-f175.google.com with SMTP id m13so4967235oiw.13
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 06:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=ADNosmB7KqYRCGME6xSqXcXbOymz1SCXHTBXbg7niS0=;
 b=NB8vLhzIbb5iqa4PaD/2cCkxUYSLlZ/gObM+9XAbLTnK2ujaEMV/lZoRiG62bpwU9X
 Oj8xvWweuAjLIgpglsHVtdMu25RLNubcvr3iVj1bh+WUTcayG15+gRXj28cWlXuYnc9Q
 UfCjEQ/3LOmwhPLCZcPj5OeMnYA87c7zFAQTYADvI8+FZyKSDEf/laKkPiU0j3r9cBEn
 MQfrR69kcycazMF+QzsMTU8RpU7bmNFm8GAgt2I/15BVSDAuOVflUntbZGHu15WkIv9F
 PVtXdNIJLmVO08+AwzmnVxqXF3zaSvJGJvkPdCkNkb/rB0K7H4TC3QlpS7JY1QoTRvS7
 LZ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=ADNosmB7KqYRCGME6xSqXcXbOymz1SCXHTBXbg7niS0=;
 b=PnbnvIx1R6jMOyexoYUavLybvyI7udO06Pth9FMrzvF+VKCus4tsQ6ltH0f4YQz3++
 KGMhjoHyUSwaUgPk0KzgwBRp5nbBPfJEbHgl7EGGK7Z9FDG6t5qFSaEvrr4raKlWVC6K
 Y720ieq7hTKzLtMSAeEECncVsF7NKnI8y9Uoj4UGvEc2QXnIVO1+BS//FX3BEca4o5d/
 jg+nIDnSA488jx7syRtX8FqgGSSPZwM+qhmgvpR3plBiJkdy3rv2zCS6urZh+/ujW6XL
 wtxuovmUwIEcscHZBESr0Md4555dX4fdELEN0jIlzuaIapqZ18fGAsPURC2++ezPcofU
 X9jA==
X-Gm-Message-State: AOAM5321KJmolLEUuUYP0oKBndXo2Exng6GzhrmSqsn32MRnyLfZBJpv
 vPqzAk8pIF9ets0M7RTn0w==
X-Google-Smtp-Source: ABdhPJy5x6lVCyoXhsF3MC6WUGa30ePxVN63d+FDsLnKibf7aDKgFTI00f4/E4t2Li1pAuRB+NPfLA==
X-Received: by 2002:aca:2106:: with SMTP id 6mr9858857oiz.150.1617371158022;
 Fri, 02 Apr 2021 06:45:58 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id n6sm1747174oop.48.2021.04.02.06.45.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Apr 2021 06:45:57 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:f99f:823a:495e:5af])
 by serve.minyard.net (Postfix) with ESMTPSA id 4F029180570;
 Fri,  2 Apr 2021 13:45:56 +0000 (UTC)
Date: Fri, 2 Apr 2021 08:45:55 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20210402134555.GR507977@minyard.net>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
 <20210330181649.66496-3-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330181649.66496-3-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSK7f-006y6A-Oc
Subject: Re: [Openipmi-developer] [PATCH v1 03/10] ipmi_si: Utilize
 temporary variable to hold device pointer
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

On Tue, Mar 30, 2021 at 09:16:42PM +0300, Andy Shevchenko wrote:
> By one of the previous clean up change we got a temporary variable to hold
> a device pointer. It can be utilized in other calls in the ->probe() and
> save a bit of LOCs.

The description here isn't accurate, there is no previous change where a
temporary variable comes in.  This change adds the temporary variable.

This change is ok, but doesn't add much value.

-corey

> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_si_platform.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> index 009563073d30..954c297b459b 100644
> --- a/drivers/char/ipmi/ipmi_si_platform.c
> +++ b/drivers/char/ipmi/ipmi_si_platform.c
> @@ -309,6 +309,7 @@ static int find_slave_address(struct si_sm_io *io, int slave_addr)
>  
>  static int acpi_ipmi_probe(struct platform_device *pdev)
>  {
> +	struct device *dev = &pdev->dev;
>  	struct si_sm_io io;
>  	acpi_handle handle;
>  	acpi_status status;
> @@ -318,21 +319,20 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
>  	if (!si_tryacpi)
>  		return -ENODEV;
>  
> -	handle = ACPI_HANDLE(&pdev->dev);
> +	handle = ACPI_HANDLE(dev);
>  	if (!handle)
>  		return -ENODEV;
>  
>  	memset(&io, 0, sizeof(io));
>  	io.addr_source = SI_ACPI;
> -	dev_info(&pdev->dev, "probing via ACPI\n");
> +	dev_info(dev, "probing via ACPI\n");
>  
>  	io.addr_info.acpi_info.acpi_handle = handle;
>  
>  	/* _IFT tells us the interface type: KCS, BT, etc */
>  	status = acpi_evaluate_integer(handle, "_IFT", NULL, &tmp);
>  	if (ACPI_FAILURE(status)) {
> -		dev_err(&pdev->dev,
> -			"Could not find ACPI IPMI interface type\n");
> +		dev_err(dev, "Could not find ACPI IPMI interface type\n");
>  		return -EINVAL;
>  	}
>  
> @@ -349,10 +349,11 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
>  	case 4: /* SSIF, just ignore */
>  		return -ENODEV;
>  	default:
> -		dev_info(&pdev->dev, "unknown IPMI type %lld\n", tmp);
> +		dev_info(dev, "unknown IPMI type %lld\n", tmp);
>  		return -EINVAL;
>  	}
>  
> +	io.dev = dev;
>  	io.regsize = DEFAULT_REGSIZE;
>  	io.regshift = 0;
>  
> @@ -376,9 +377,7 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
>  
>  	io.slave_addr = find_slave_address(&io, io.slave_addr);
>  
> -	io.dev = &pdev->dev;
> -
> -	dev_info(io.dev, "%pR regsize %d spacing %d irq %d\n",
> +	dev_info(dev, "%pR regsize %d spacing %d irq %d\n",
>  		 res, io.regsize, io.regspacing, io.irq);
>  
>  	request_module("acpi_ipmi");
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
