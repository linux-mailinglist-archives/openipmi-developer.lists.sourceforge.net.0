Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0979021B72
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 May 2019 18:18:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hRfZK-0007x2-Gz; Fri, 17 May 2019 16:18:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hRfZJ-0007ws-Qk
 for openipmi-developer@lists.sourceforge.net; Fri, 17 May 2019 16:18:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pjtxzayk8uLZnkYZMztMOmWVVABDJ2taMu016Zq6Tmo=; b=fnzHnmGdrF4DVYni+UgHeySV/Q
 T5EJU7GGL/2vROteXEIM0k6m5RJ+t8HpT6PsO3jmYf8o5l9lYUpzpGAFbgMnpzBk0e2sFTi4v4oNI
 Q8NViEjmRQZUdJ556pWHTpjuLvIyGdqDTW8axxayNTquVv0BYbcVpNod1AwpO/sq0lZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pjtxzayk8uLZnkYZMztMOmWVVABDJ2taMu016Zq6Tmo=; b=gdo6eMv8ra3kPDGQ7SCgnJ3hxg
 PGB0e7dYgRnIY4pJpfcW3iemJQp8cCTMrjgUHOIkaThjKf7JpoNRkvwLz/ZwpJ9ezyy5REa9YgZN/
 YURr14FqQ3nl+njId3LKZyL7S3Pr6cKbjn3QPbQ70KM3iSQZLm91+4VH89XbdkjXo96Q=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hRfYz-003M0L-Ad
 for openipmi-developer@lists.sourceforge.net; Fri, 17 May 2019 16:18:49 +0000
Received: by mail-oi1-f194.google.com with SMTP id y124so1247839oiy.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 May 2019 09:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pjtxzayk8uLZnkYZMztMOmWVVABDJ2taMu016Zq6Tmo=;
 b=KjBZlJ0JSbUXlbui2suPITnuZWI5Yjd4i1oN9NNbzxPduGZST+TbLfK+JIN169N1Fd
 Fnl8Z0DMQ7b5pKukMS6Cbi/VNSbzrSKXF2tD5WrGX9KxgjzxGyJdyQRgcX80jtcys9kg
 QyMAGn5/wBoLoUWh6Yx9duZfjV86BxyMir1dI17D/IaBxw0GYv4+boWloQno6jlGJCNX
 OnkkRbU1RsiUHV1PPoiYNIP/64K5uZ2ZYny4ZSt8luMaN2YR6UfV2Pq79tnyQgXidnoZ
 qDMgQqOAP9OhbgEa425om3b46XG3YDNGFjdqQe2YXWA2b3e+b6yrX+0LfzZ7yLujBF3i
 JJCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=Pjtxzayk8uLZnkYZMztMOmWVVABDJ2taMu016Zq6Tmo=;
 b=UDtNh3TWTxg8ugXXM97FxeK3r7SE0UJiSfJ3+qwUdRit56x2Ny3aUWQE3lc0VtlU8X
 /l9QkoC+D9x0twjKZ9NJBUUGYKXYI/TLPulcEzBHK1iDBab4uvMV9TPHD5H04phe22N0
 3ZSPGOhO9cmPduOHPedqndkvuYDHTlANnN0V2eAhVmRT+QQA0MtyNGTadJPNIe2MkT/s
 tpLoJ7TLxuLOk46X1+Anp2Jb8B/lLuzzsOWjXhEH3uISalWDkV7P/55ELrwqZgz0J2F6
 4blKZhdipyN66r8FPrLRWOPK7yRM+pAbY3kZstOPdQ/e+MtZEYv9cGgNqnYpvMV1W+6W
 1AIw==
X-Gm-Message-State: APjAAAVRDaBDrhLG2a8jH2ExpQlInPEaQijvFH4kBwjOJzNXIHqOSd6p
 7VbAg28stpYVdzjHfN80faWL10Y=
X-Google-Smtp-Source: APXvYqwAQl1srkMegz0Iea1ZjhMsuTAE5+XcuEWJggggpeFGjX9cB0FVSEhEjbAVUdkNUgfziJFrbQ==
X-Received: by 2002:aca:bac3:: with SMTP id k186mr5907623oif.160.1558109903270; 
 Fri, 17 May 2019 09:18:23 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id q82sm3199778oif.28.2019.05.17.09.18.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 09:18:22 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:d5e:aa5a:44d8:6907])
 by serve.minyard.net (Postfix) with ESMTPSA id 315C7182A49;
 Fri, 17 May 2019 16:18:22 +0000 (UTC)
Date: Fri, 17 May 2019 11:18:21 -0500
From: Corey Minyard <minyard@acm.org>
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <20190517161821.GB11017@minyard.net>
References: <20190517101245.4341-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517101245.4341-1-wangkefeng.wang@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1hRfYz-003M0L-Ad
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: fix unexpected driver
 unregister warning
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, May 17, 2019 at 06:12:44PM +0800, Kefeng Wang wrote:
> If ipmi_si_platform_init()->platform_driver_register() fails,
> platform_driver_unregister() called unconditionally will trigger
> following warning,
> 
> ipmi_platform: Unable to register driver: -12
> ------------[ cut here ]------------
> Unexpected driver unregister!
> WARNING: CPU: 1 PID: 7210 at drivers/base/driver.c:193 driver_unregister+0x60/0x70 drivers/base/driver.c:193
> 
> Fix it by adding platform_registered variable, only unregister platform
> driver when it is already successfully registered.

This is good, but have you found out why the driver was unable to
register in the first place?  That really shouldn't happen.

This patch is queued for 5.3.

-corey

> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_si_platform.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> index f2a91c4d8cab..0cd849675d99 100644
> --- a/drivers/char/ipmi/ipmi_si_platform.c
> +++ b/drivers/char/ipmi/ipmi_si_platform.c
> @@ -19,6 +19,7 @@
>  #include "ipmi_si.h"
>  #include "ipmi_dmi.h"
>  
> +static bool platform_registered;
>  static bool si_tryplatform = true;
>  #ifdef CONFIG_ACPI
>  static bool          si_tryacpi = true;
> @@ -469,9 +470,12 @@ void ipmi_si_platform_init(void)
>  	int rv = platform_driver_register(&ipmi_platform_driver);
>  	if (rv)
>  		pr_err("Unable to register driver: %d\n", rv);
> +	else
> +		platform_registered = true;
>  }
>  
>  void ipmi_si_platform_shutdown(void)
>  {
> -	platform_driver_unregister(&ipmi_platform_driver);
> +	if (platform_registered)
> +		platform_driver_unregister(&ipmi_platform_driver);
>  }
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
