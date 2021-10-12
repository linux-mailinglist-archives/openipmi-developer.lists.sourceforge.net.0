Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 766E542AFFA
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Oct 2021 01:09:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1maQu4-0002Pc-5k; Tue, 12 Oct 2021 23:09:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1maQu3-0002PT-E5
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Oct 2021 23:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kv3MNtctfewkPWmi8TsTvMO+6OS1HVfE+g6O9k4Getc=; b=ZYtL290N2mgB+qSBwBcRil5VQU
 V8xWpoWDoFDXDB8rJXpVNapk5dxW8iu3QX4VweV6VJF4caBDla+S3wjYNVk+icHba/kkYbDfHctey
 XJmoFcEOs4IQM9bMK1YNEJQk9a2dcXQEn8Lk5v1WKgu2BbvwyotHkpSNyjaBUX8Q2wXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kv3MNtctfewkPWmi8TsTvMO+6OS1HVfE+g6O9k4Getc=; b=EJPvQpuB2ya7uEmSM9RTdOXcuc
 rTw+iTBvXzK/t4LGp92fTWxJ5s1fJ+OIxTHV5OO6UR3aQTwUDzvmp0+85kvUk5mWR4WvZNF4XyzS6
 CpObrHsGwS9Uzn7AC/J6IzX6sGqYkLRG7KV2I7D3WCG3D+E/4iHhXGD+8JlEsUcf9Vws=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maQu2-006Va5-Rg
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Oct 2021 23:09:47 +0000
Received: by mail-oi1-f171.google.com with SMTP id o4so1316808oia.10
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Oct 2021 16:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=kv3MNtctfewkPWmi8TsTvMO+6OS1HVfE+g6O9k4Getc=;
 b=F14ZxPIh4QP7ON8FpxoeydXVdD6Ch1bg1fOMEAXUKqYn2Vq58BCu8RjdLBZX8RCkb8
 xvyVpjAG6F6GsiqGKBWIlRQgPeIfqylUyBmO0b0BRVYEmPUU2oRxX+6fCxIsAK+H/rxY
 MspYSbLbSsrypvzf7VrI8RRqXbbWicSNsC8MJ64tHociziWG9WNTU/SGPvNT68V7GSQB
 0GMu9GIFQBFzKGXPtpTMrjyZtAdzGYoRI+xlqouYDr8u0MaY7bwtTzlyUnIMPonaC8MP
 KOGagvIXLVXECa8D+QW4sKergo5s6hJxfj4mPDJVrUa5Kzq/tpXV/DTSx8/L47aoMEqM
 yuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=kv3MNtctfewkPWmi8TsTvMO+6OS1HVfE+g6O9k4Getc=;
 b=sC9Zv4/yK9yc1IwWS4MILIRNVrS7vQKmXst+qy2pj+fgYhGsyFUrbHvMGG5a4ePvxc
 0C7BKYiuTrqX9vZfm1t++/kl02nmw/975krntxrv/6rjA2by2fWKCzf2FOICRq5aSK4o
 +0HAN5YT1dLmXdlEv2b50ypAV1B1GeFpM2fl/Vp5tcRu2FHgayrjl/B/3D+CvZZoeO+T
 WauYO8KO/FgwTAmQwXQlALs13T3ql3XmOYtq1P45rnmtIQvMUzE9AHltqSQ+voZ3/+8x
 hYeSlF/jxzTsa96PPy7VNmL0WndNwPovuGvmyNpyNILtw8L9Fx9usKo+ZnrfPwD2nYnA
 6UVQ==
X-Gm-Message-State: AOAM53264o3+3QnoE78VyU8nwMMXCzGKb9C/kHFDmt6Phg3OIkyDUuBX
 kCeacmoVmaGMp2LcFOBTfwq/6oEjiA==
X-Google-Smtp-Source: ABdhPJzmeOhFMQ3gl6AF4nX/+FcKCgsKRS61vMrZKGhmfaMTYRSrfMqdG5iVRxzcAibYZ/4ZpsAZhQ==
X-Received: by 2002:a05:6808:138c:: with SMTP id
 c12mr5564087oiw.34.1634080181105; 
 Tue, 12 Oct 2021 16:09:41 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id a10sm187081otb.7.2021.10.12.16.09.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 16:09:40 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:5420:eef4:496e:3efb])
 by serve.minyard.net (Postfix) with ESMTPSA id 01EEA180053;
 Tue, 12 Oct 2021 23:09:39 +0000 (UTC)
Date: Tue, 12 Oct 2021 18:09:38 -0500
From: Corey Minyard <minyard@acm.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20211012230938.GE66936@minyard.net>
References: <20211012204416.23108-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211012204416.23108-1-rdunlap@infradead.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 12, 2021 at 01:44:16PM -0700, Randy Dunlap wrote:
 > When CONFIG_I2C=m, CONFIG_I2C_SLAVE=y (bool), and CONFIG_IPMI_IPMB=y, >
 the build fails with: Got it, thanks. -corey 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.171 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1maQu2-006Va5-Rg
Subject: Re: [Openipmi-developer] [PATCH -next] ipmi: ipmb: fix dependencies
 to eliminate build error
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
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 12, 2021 at 01:44:16PM -0700, Randy Dunlap wrote:
> When CONFIG_I2C=m, CONFIG_I2C_SLAVE=y (bool), and CONFIG_IPMI_IPMB=y,
> the build fails with:

Got it, thanks.

-corey

> 
> ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_remove':
> ipmi_ipmb.c:(.text+0x6b): undefined reference to `i2c_slave_unregister'
> ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_thread':
> ipmi_ipmb.c:(.text+0x2a4): undefined reference to `i2c_transfer'
> ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_probe':
> ipmi_ipmb.c:(.text+0x646): undefined reference to `i2c_slave_register'
> ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_driver_init':
> ipmi_ipmb.c:(.init.text+0xa): undefined reference to `i2c_register_driver'
> ld: drivers/char/ipmi/ipmi_ipmb.o: in function `ipmi_ipmb_driver_exit':
> ipmi_ipmb.c:(.exit.text+0x8): undefined reference to `i2c_del_driver'
> 
> This is due to having a tristate depending on a bool symbol.
> By adding I2C (tristate) as a dependency, the desired dependencies
> are met, causing IPMI_IPMB to be changed from =y to =m:
> 
>   -CONFIG_IPMI_IPMB=y
>   +CONFIG_IPMI_IPMB=m
> 
> Fixes: 63c4eb347164 ("ipmi:ipmb: Add initial support for IPMI over IPMB")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/char/ipmi/Kconfig |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- linux-next-20211012.orig/drivers/char/ipmi/Kconfig
> +++ linux-next-20211012/drivers/char/ipmi/Kconfig
> @@ -77,7 +77,7 @@ config IPMI_SSIF
>  
>  config IPMI_IPMB
>  	tristate 'IPMI IPMB interface'
> -	depends on I2C_SLAVE
> +	depends on I2C && I2C_SLAVE
>  	help
>  	  Provides a driver for a system running right on the IPMB bus.
>  	  It supports normal system interface messages to a BMC on the IPMB


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
