Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7234257B
	for <lists+openipmi-developer@lfdr.de>; Wed, 12 Jun 2019 14:21:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hb2Fu-0002Bx-2e; Wed, 12 Jun 2019 12:21:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hb2Fp-0002AS-Js
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jun 2019 12:21:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WWad4IK91eIASjJZ1C4Z6FDQBRJ2DNHxK5AHNDN3DxI=; b=lpqhIKSujV44JjEStQX3HGmP5m
 12q5rJsiVYlZu0jRQgUdP8wy2NnXkKpH9N4ou3lDZIf4k7d/EPVmG8O/u+ptxCKnfOPB611pWFNWJ
 arvXqT4Bc/E2QCOEJISDmqMOr23Nd3576Jg6ndMRRYUsW0U3vBn6bqM/ejwQLXJulUxw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WWad4IK91eIASjJZ1C4Z6FDQBRJ2DNHxK5AHNDN3DxI=; b=gC0cIfxYA8SzrjG5Za8K9wfor8
 SenqjKRimj1KJFQTUP5vj6RJvlWyYYVyCd7pt6aI7AfBqs+2dOHCe8fFxdXpEW1DZ0xKTrAuiD+zq
 7+YOdryqAZVCGxeB+VgAYHUf+quR1vv/kQG8Rrca0WmAlDCF9ABsMSB0y9h/B9tc0Pks=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hb2Fn-00A7Mg-2W
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jun 2019 12:21:24 +0000
Received: by mail-ot1-f67.google.com with SMTP id j19so15203625otq.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Jun 2019 05:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WWad4IK91eIASjJZ1C4Z6FDQBRJ2DNHxK5AHNDN3DxI=;
 b=ouZ+5TNpdz8bpVVcZxHn465IRjMhanw/P1IZf5RiC+Ctj9KTQGTqgyAOfLgugdYTli
 RY0rKwb/QIWNHTZlFKqUfdbRCaSVp6vRBI18ssp5E2mPG8yTVK+wZvXNNJNUtmeeP8QY
 zZkB6ZJ6JlZQ4QnyGERECy1vW7Ma/F2ax461rNvG31gObXD9+sWcFsGMtbl3cp5GurE5
 I+y34SRT8Te/CUfpTK21/IeFHep3/YDdVtNOqIJVxd+joAZnTv/tW1QpR10pKyWbQiiu
 tz+N3ejE8iWxwvbS6J4ZGE72Jw3Q2ubJumN0w2jNhnlvwIQpXcZV4+t7Yaas4byUBRc0
 HABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=WWad4IK91eIASjJZ1C4Z6FDQBRJ2DNHxK5AHNDN3DxI=;
 b=UMmuOoqcd8GJvcad3xotmyEXxJMp8gjI//G5xDdz4C3FY7ROvLMmEcVUUHTEUO7Km2
 ZcDu+1OB8AC1X/uigdEgK8D2CB8otzkDDt6e6mgWbPg+TvZl7IUPPgwrA+vrtT0JuTC0
 hlUXhruuezGkUzrFFoUgeb2grejhu9No/P3fDoVw98MzbUGd+1WWabL6KfTOYO71xQiB
 xnH+nB5UdPSNPXs9Gel9JqwPt0Dq/ymSVVwmj7K7hQka3GQ8FEfL1wOw7Rxk0hQqk9/D
 QCl1iUxH45N6loXOwzyLxVaeWZ95Gg1+zo1KfzpUHwnKy++2hEUNrnaAD0wf/8vuWVrI
 8YQQ==
X-Gm-Message-State: APjAAAWITDOrC50Too3sEh7HbUPyy8ptC6h3Z8rCSfKrirQFgS8tZQpv
 mdcInJGpuW2WR4PGIUvdOg==
X-Google-Smtp-Source: APXvYqy3zAhi1c4KA8Or+ZFhTTPC3KHvQYf2cssJ78oc+jFhngqZ5UPki38Uzwwu8Y7ye954PxbqQg==
X-Received: by 2002:a9d:7559:: with SMTP id b25mr6139798otl.360.1560342074399; 
 Wed, 12 Jun 2019 05:21:14 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id n32sm1608287ota.7.2019.06.12.05.21.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 05:21:13 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1d3c:a5aa:3fdf:3942])
 by serve.minyard.net (Postfix) with ESMTPSA id 52DAB1800CE;
 Wed, 12 Jun 2019 12:21:13 +0000 (UTC)
Date: Wed, 12 Jun 2019 07:21:11 -0500
From: Corey Minyard <minyard@acm.org>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <20190612122111.GA4787@minyard.net>
References: <20190612031825.24732-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612031825.24732-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hb2Fn-00A7Mg-2W
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: Fix build error while
 CONFIG_I2C is set to m
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
Cc: arnd@arndb.de, vadimp@mellanox.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jun 12, 2019 at 11:18:25AM +0800, YueHaibing wrote:
> If CONFIG_I2C is m and CONFIG_I2C_SLAVE is y,
> building with CONFIG_IPMB_DEVICE_INTERFACE setting to
> y will fail:

Ok, I have added this to my linux-next tree.

-corey

> 
> drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_remove':
> ipmb_dev_int.c: undefined reference to `i2c_slave_unregister'
> drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_write':
> ipmb_dev_int.c: undefined reference to `i2c_smbus_write_block_data'
> drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_probe':
> ipmb_dev_int.c: undefined reference to `i2c_slave_register'
> drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_driver_init':
> ipmb_dev_int.c: undefined reference to `i2c_register_driver'
> drivers/char/ipmi/ipmb_dev_int.o: In function `ipmb_driver_exit':
> ipmb_dev_int.c: undefined reference to `i2c_del_driver'
> 
> Add I2C Kconfig dependency to fix this.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: 51bd6f291583 ("Add support for IPMB driver")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/char/ipmi/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> index 987191b..4bad061 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -135,6 +135,7 @@ config ASPEED_BT_IPMI_BMC
>  
>  config IPMB_DEVICE_INTERFACE
>  	tristate 'IPMB Interface handler'
> +	depends on I2C
>  	depends on I2C_SLAVE
>  	help
>  	  Provides a driver for a device (Satellite MC) to
> -- 
> 2.7.4
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
