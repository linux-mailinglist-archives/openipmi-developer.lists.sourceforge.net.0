Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6453A29A93
	for <lists+openipmi-developer@lfdr.de>; Fri, 24 May 2019 17:06:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hUBlz-0004hN-IJ; Fri, 24 May 2019 15:06:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hUBly-0004hG-NJ
 for openipmi-developer@lists.sourceforge.net; Fri, 24 May 2019 15:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yuXnHXnARocKH8HijbJcxjfEu2tYcY3pVOJ3Oz7W/sQ=; b=SpDHbwr6OdnT6EtbEJQ8uq/mfb
 i2mLapMK1RgE0sUsrvKdU5g0XRKtu0REL4sCtMXdobH0X/+PSd3zVRhBwf9cA0akgjaOsv2i5x6rd
 I1oO3moQqRcS/znrQvPeEyXGe0HxHmwZrQO6ulfpH1v8T0rUA6L4H9DWksCZtckseUfs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yuXnHXnARocKH8HijbJcxjfEu2tYcY3pVOJ3Oz7W/sQ=; b=kay5WKHZy069avGMUJRYSe5hf2
 5bI8HOSgr08NRN0vQadKQhWcclLGrwNyOyMmrOCgAVhRBPIClDH3G0p5CLPLDpXAgwR/+MbkVRdM1
 w/2ahfCylLUYW5Pvvz1e3GfueAx2I5jc+gxM0TWA1WfydkT3RJYCUV/zkwhflITqyd48=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hUBlw-007Cvn-Vv
 for openipmi-developer@lists.sourceforge.net; Fri, 24 May 2019 15:06:18 +0000
Received: by mail-oi1-f193.google.com with SMTP id q186so7289119oia.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 24 May 2019 08:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yuXnHXnARocKH8HijbJcxjfEu2tYcY3pVOJ3Oz7W/sQ=;
 b=H66g4a+DcNiSgeDhyvL7X4qPXZbwUSLGwaTggHUe/aIVtRXP8up6aSaSn0FzJJUam9
 UM+0VKttVbJ+SjPpacuGRowi/ZTeFP2yMM2mX3sFYmRgKqXO0CmxozAredJ/8oaT72In
 W52fjd5ogOfYGYOabjo9gLpvvekUMe0K4y9rf4P1kFOBzGx3LOdeaRVvIkifu8DjBnQW
 wpiFHp/ZeB+0DEkvfDSaqxyWyghZI71dfus6ZBdl2EEVjbhKR4naRf4zN8dCvlahWirB
 eUJPlngLwZ34zvnmY8ShtTvmwpKddkOsSLW2tJAK9aTJECJ1OSkOKaOQiAKokajQYdtH
 h64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=yuXnHXnARocKH8HijbJcxjfEu2tYcY3pVOJ3Oz7W/sQ=;
 b=hc+Nu3cWoGHqL8jMWeM8qMA0YY2yW4vkYCBGj8u60DmEZjnycKINWudgH7HgTloZHA
 WntsH9NJUeFBzWEmRVX9xJYMBl80+RQqmENtx3s27DqVMYoDOwjGELPEykRqeiITxLS3
 +pKPRmCyVUoN78NTFlIVp4M1exodvl1AXsy5LLRGaXPA/EfHwSoAiO/aqJslLz1ahlGj
 Z4XnLureNWoGtNtMtALD04Iug6nYd8Y7SSJD/VZi2L/N8ldwlv0pV3ooddkwsAwyHxS8
 0/0hT79Xw0CSOsT2ofT6vCGLjOvWMAfMIqukejNqGAjrMPWXsaMTe5gemDLqgBZRNK7x
 fOyw==
X-Gm-Message-State: APjAAAUFlMCq5L3NijaoBRQKKbFfz//Kn1WiovAAHQR22RuUOo7W3YbS
 14LrrnjBRHad4imoS0QrRg==
X-Google-Smtp-Source: APXvYqy6UBJPpmdsaKeqRplCkPk4LOTV0Mg+W2FYpR+Hxn2yWnJNIiAI5xm43HEtwAG+KZueNoixgQ==
X-Received: by 2002:aca:aace:: with SMTP id t197mr6217017oie.149.1558710370712; 
 Fri, 24 May 2019 08:06:10 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id b9sm918580oti.43.2019.05.24.08.06.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 08:06:09 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:4484:d79a:f88b:8863])
 by serve.minyard.net (Postfix) with ESMTPSA id 4119A1818F3;
 Fri, 24 May 2019 15:06:09 +0000 (UTC)
Date: Fri, 24 May 2019 10:06:07 -0500
From: Corey Minyard <minyard@acm.org>
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <20190524150607.GD2742@minyard.net>
References: <20190524143724.43218-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524143724.43218-1-wangkefeng.wang@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hUBlw-007Cvn-Vv
Subject: Re: [Openipmi-developer] [PATCH] ipmi_ssif: fix unexpected driver
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

On Fri, May 24, 2019 at 10:37:24PM +0800, Kefeng Wang wrote:
> If platform_driver_register() fails from init_ipmi_ssif(),
> platform_driver_unregister() called unconditionally will
> trigger following warning,

Yep, same as the ipmi_si change before.  Thanks, it's in my
next tree queued for the next cycle.

-corey

> 
> ipmi_ssif: Unable to register driver: -12
> ------------[ cut here ]------------
> Unexpected driver unregister!
> WARNING: CPU: 1 PID: 6305 at drivers/base/driver.c:193 driver_unregister+0x60/0x70 drivers/base/driver.c:193
> 
> Fix it by adding platform_registered variable, only unregister platform
> driver when it is already successfully registered.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index cf8156d6bc07..305fa5054274 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -303,6 +303,7 @@ struct ssif_info {
>  	((unsigned int) atomic_read(&(ssif)->stats[SSIF_STAT_ ## stat]))
>  
>  static bool initialized;
> +static bool platform_registered;
>  
>  static void return_hosed_msg(struct ssif_info *ssif_info,
>  			     struct ipmi_smi_msg *msg);
> @@ -2088,6 +2089,8 @@ static int init_ipmi_ssif(void)
>  		rv = platform_driver_register(&ipmi_driver);
>  		if (rv)
>  			pr_err("Unable to register driver: %d\n", rv);
> +		else
> +			platform_registered = true;
>  	}
>  
>  	ssif_i2c_driver.address_list = ssif_address_list();
> @@ -2111,7 +2114,7 @@ static void cleanup_ipmi_ssif(void)
>  
>  	kfree(ssif_i2c_driver.address_list);
>  
> -	if (ssif_trydmi)
> +	if (ssif_trydmi && platform_registered)
>  		platform_driver_unregister(&ipmi_driver);
>  
>  	free_ssif_clients();
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
