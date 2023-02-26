Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 655336A3527
	for <lists+openipmi-developer@lfdr.de>; Sun, 26 Feb 2023 23:59:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pWPz9-0008Ky-Ay;
	Sun, 26 Feb 2023 22:59:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pWPz8-0008Ks-1N
 for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Feb 2023 22:59:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PuxVktP8ly6XYuWVV4eBaobSoUkGl5I6o/QFWMFqZ4U=; b=myJpkQ5py5alrEUV/2ij2xJvix
 7f0cPC9Zfpz0+a5E95MO5zSEzuq2q4pyoNhcM7rkYFncMFQBvBaQodk9VqQg45r9ZGhMLWgxFaMKm
 2n8tR/J1uYkP0t3aGq4WMYOxYKRLVtLypmd06lYg4b/UCFS3Loil/wBRXjZ6rzMoCk3c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PuxVktP8ly6XYuWVV4eBaobSoUkGl5I6o/QFWMFqZ4U=; b=iiqNipoTPWE1kDEsL98TRihatX
 Q8ttk++y7L81PnHLHok9MC43a1FYnfBrSpMKtGp6GIaVC2OgnsnksAKbYoYZ/xYksyfrf46e1Dkqb
 0gEve/7ItewQHVdl/QabjxDymufoJT5Y9pzsKwArTJxZawDKyUZjVjDcQtz/Jvm8qIQs=;
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pWPz6-0004Ho-Kz for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Feb 2023 22:59:14 +0000
Received: by mail-qt1-f175.google.com with SMTP id d7so4910573qtr.12
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 26 Feb 2023 14:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PuxVktP8ly6XYuWVV4eBaobSoUkGl5I6o/QFWMFqZ4U=;
 b=MDWGB4/Ivj5Q9bj67cpTq7udIQdS1WirVd6PJlCOAR4N/wq6G7FZQYl6CAyCg4b3/3
 bCWOqPK0/soz4Ennv5NMA4a/A1S5EcFy6rkC2FNII0mRzikypnk5YKuO8kJ5zRdDZtlA
 rbWnmDIgwiMW7bUWazrNMA7d3oKFt6i2w1jNJk9vl6r3Cyzuoub9iAzujgYb4+WpR5J7
 xpI0h/TC3KPsJUHVgTSFwnmPvSQ2h9MGV85P1AvfQfdcHkKgDWsBB/mYo/NJJ6d/uXBw
 Fp7r5zQtpc4bBUB3cKg1xsSnqORrILn+I6TXy+ZdR5Uu9mrYmP6BiB2DKSDRRiKKlHAj
 ZQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=PuxVktP8ly6XYuWVV4eBaobSoUkGl5I6o/QFWMFqZ4U=;
 b=K27oCW3uyqMolEkpPPcBfwCRoyBZLoxYfTG/m8Oby0zgYxWVWtM/IdC2NHxNQmVS+h
 EIo9QHqlLC7aNzh5SJLQm+Q/KgvrZ24buVlibw3moZeMZvXtIJTBdB6LEo0F9kjHmz3o
 N43UqC0tBeiLgZXG5FiXV3Qjpk5NyAFB4/95gYtzgqAHSp++Lmwx4Ozn5Ws0DTaHGVeF
 aWwuG6rb2HNpX+iCpi/+h77KRbaObQ3c2DJCluQb3Jy6Y3C2CpQa3Dd/hspk59QTcf9i
 hQV+lGmyfaL9GV7uQIayJ3ayg6+HYhB/dcEQS976WTb5lZ0r4Z9Bb8zF10Z1Ot161aA/
 2gPA==
X-Gm-Message-State: AO0yUKVMkHGxBpipgPgQoD3p1op5EjDgFuwZeFarAFlg6A2lcQl1UoZh
 pw1zUrQe71pIIXtivbHbsg==
X-Google-Smtp-Source: AK7set8050Smi8oXXAQzH/O20B7tO2/f1YvHXizbD1pzfvqNoXw1qRvF1SP7ncxm4J/UP4XN73iyOA==
X-Received: by 2002:ac8:5d8f:0:b0:3bf:d87d:4948 with SMTP id
 d15-20020ac85d8f000000b003bfd87d4948mr3711209qtx.14.1677452347322; 
 Sun, 26 Feb 2023 14:59:07 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 x15-20020a05620a098f00b0073b929d0371sm3808644qkx.4.2023.02.26.14.59.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Feb 2023 14:59:06 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:35b5:7210:c525:93a0])
 by serve.minyard.net (Postfix) with ESMTPSA id B469A1800BD;
 Sun, 26 Feb 2023 22:59:05 +0000 (UTC)
Date: Sun, 26 Feb 2023 16:59:04 -0600
From: Corey Minyard <minyard@acm.org>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <Y/vkOCLCeubl6B34@minyard.net>
References: <20230226053953.4681-1-rdunlap@infradead.org>
 <20230226053953.4681-2-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230226053953.4681-2-rdunlap@infradead.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Feb 25, 2023 at 09:39:46PM -0800, Randy Dunlap wrote:
 > REGMAP is a hidden (not user visible) symbol. Users cannot set it > directly
 thru "make *config", so drivers should select it instead of [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.175 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.175 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pWPz6-0004Ho-Kz
Subject: Re: [Openipmi-developer] [PATCH 1/8] ipmi: ASPEED_BT_IPMI_BMC:
 select REGMAP_MMIO instead of depending on it
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Feb 25, 2023 at 09:39:46PM -0800, Randy Dunlap wrote:
> REGMAP is a hidden (not user visible) symbol. Users cannot set it
> directly thru "make *config", so drivers should select it instead of
> depending on it if they need it.
> 
> Consistently using "select" or "depends on" can also help reduce
> Kconfig circular dependency issues.
> 
> Therefore, change the use of "depends on REGMAP_MMIO" to
> "select REGMAP_MMIO", which will also set REGMAP.

This seems reasonable.  I can take it into my tree, or..

Acked-by: Corey Minyard <cminyard@mvista.com>

> 
> Fixes: eb994594bc22 ("ipmi: bt-bmc: Use a regmap for register access")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/char/ipmi/Kconfig |    3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff -- a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -162,7 +162,8 @@ config IPMI_KCS_BMC_SERIO
>  
>  config ASPEED_BT_IPMI_BMC
>  	depends on ARCH_ASPEED || COMPILE_TEST
> -	depends on REGMAP && REGMAP_MMIO && MFD_SYSCON
> +	depends on MFD_SYSCON
> +	select REGMAP_MMIO
>  	tristate "BT IPMI bmc driver"
>  	help
>  	  Provides a driver for the BT (Block Transfer) IPMI interface


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
