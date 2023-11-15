Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C57867ED5EE
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Nov 2023 22:21:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r3NJe-0007D8-N4;
	Wed, 15 Nov 2023 21:20:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1r3NJc-0007D2-3N
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Nov 2023 21:20:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7JG4fql6FN6eLKMP7zbsfChcI3MiqU8LxZjWGPH8plw=; b=NlHiYNzjDc3LPXOe55MAG1rVeo
 wRNiEArpc2onH+HRzESRygSQRVgZPANtN4wQBH3yBjhEzAtrIJRpl0zPIwcXP8iO4VBqDXc/jHOJb
 /6M5J2nq/dPlKHVX/6/iq6ngbtv2eo9QVOb3l4gPjUAkwWVghN1xyhThbBAu8x//d4QY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7JG4fql6FN6eLKMP7zbsfChcI3MiqU8LxZjWGPH8plw=; b=QfhlgS5E8KLS4aCS0N4vtEZNm3
 Xqj4v1DiuZshW91k+pQFOb1mbnzFLW6DYqnxFD2yoIZcREryP1vCTkY6ndfTecGe+tRrYGAj4xsw0
 C0f/bcPpLrrKhGn6xY/XUVthJLExDJwseiy6sGmyuVLydHk6cC6y18D2SMFGCdndToYw=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1r3NJX-0005T6-Tp for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Nov 2023 21:20:51 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 46e09a7af769-6cd09663b1cso56121a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 15 Nov 2023 13:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700083242; x=1700688042; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7JG4fql6FN6eLKMP7zbsfChcI3MiqU8LxZjWGPH8plw=;
 b=QmAYA/7jxhWEvMt6DPNyItgvujRSo42xGrCBCQpVWCLVN14BMlffrV6b1PeTPax2iZ
 C7kB5UgSYv4aQCBUNVGyHUGx+RrYPnYDHiP0apd91BO3m6CYpQztw1OfA9gu2JXlefUY
 Dr7PzQDsTQ7aOE5YlL68JQpvTJSxfwscjrz2+GH0WEIJyxZ4YdGxVRsMkmosEF4CutVR
 ObKTtdBTb/Ob3Rc2su6tIFkxNiG2tnMljD47HmtbvqhrM2m689jqgpM4HhPx3ujwHj/0
 xDjghIVgHFaVfWP9tjwWeQ9NEQhqNRCpmaWbN8A8rLJgI6ang8BrNDnryB4sx1nvr0HS
 YOJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700083242; x=1700688042;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=7JG4fql6FN6eLKMP7zbsfChcI3MiqU8LxZjWGPH8plw=;
 b=NMUphTX6AMjZKMoDlIvUeVq45JG9xRwK8axKNzbxuwwkiAMUMOeURkh/jkfViRpvEF
 7CehuAIe11y38o5o2AK+2eQvnMqTPV6KYizpE0lfUET6Fn6EQ0yjWaPhonF39KPQafF9
 w9Irspa0qhk/qXSt705eW+TqWvZ6P9cS/BK2/Xp9sFE4KmxjAzSgddWGQGoo0cjU5MXA
 N73b1vkGZq2es83QuXAZxoSVJo12IcOPn6TQ5QbUcmWSotE5GY29olIZe5vJjy6tUgzg
 cU6psQpcvvZJRhl8ZvRc/yH9Jgyh3V9MhilnMI2UQ6Qx4fmmD06WhmZfM41yMcKmQht8
 1jQw==
X-Gm-Message-State: AOJu0YwHwoFaFi2/FSxCmVuNKof5mcrPxiEXW0KbgJVQsJiNYpplXaDa
 6LnCpylUQSMsRU9SAlx+Xg==
X-Google-Smtp-Source: AGHT+IHeeeKhPKvWxCmpe9ba3/cnSmX0znCVUVUwl7rKYPhI8PSBSCTVzgkf2GvJM1Jxa94VEXipGg==
X-Received: by 2002:a05:6870:c49:b0:1ef:9f6c:3df1 with SMTP id
 lf9-20020a0568700c4900b001ef9f6c3df1mr17357684oab.14.1700083241954; 
 Wed, 15 Nov 2023 13:20:41 -0800 (PST)
Received: from serve.minyard.net ([47.189.89.62])
 by smtp.gmail.com with ESMTPSA id
 wh6-20020a056871a68600b001e12bb81363sm1949489oab.35.2023.11.15.13.20.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Nov 2023 13:20:41 -0800 (PST)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8a7b:e73c:ae8:33e4])
 by serve.minyard.net (Postfix) with ESMTPSA id E885B1800BD;
 Wed, 15 Nov 2023 21:20:40 +0000 (UTC)
Date: Wed, 15 Nov 2023 15:20:39 -0600
From: Corey Minyard <minyard@acm.org>
To: Rob Herring <robh@kernel.org>
Message-ID: <ZVU2J7phOPuTPe21@mail.minyard.net>
References: <20231115210230.3744198-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231115210230.3744198-1-robh@kernel.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 15, 2023 at 03:02:29PM -0600, Rob Herring wrote:
 > Use preferred device_get_match_data() instead of of_match_device() to >
 get the driver match data. With this, adjust the includes to expl [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.43 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1r3NJX-0005T6-Tp
Subject: Re: [Openipmi-developer] [RESEND PATCH] ipmi: si: Use
 device_get_match_data()
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 15, 2023 at 03:02:29PM -0600, Rob Herring wrote:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.

Sorry, this is now queue for 6.8.

-corey

> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/char/ipmi/ipmi_si_platform.c | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> index c3d8ac7873ba..cd2edd8f8a03 100644
> --- a/drivers/char/ipmi/ipmi_si_platform.c
> +++ b/drivers/char/ipmi/ipmi_si_platform.c
> @@ -11,10 +11,11 @@
>  
>  #include <linux/types.h>
>  #include <linux/module.h>
> -#include <linux/of_device.h>
> -#include <linux/of_platform.h>
> +#include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/of_irq.h>
> +#include <linux/platform_device.h>
> +#include <linux/property.h>
>  #include <linux/acpi.h>
>  #include "ipmi_si.h"
>  #include "ipmi_dmi.h"
> @@ -224,7 +225,6 @@ MODULE_DEVICE_TABLE(of, of_ipmi_match);
>  
>  static int of_ipmi_probe(struct platform_device *pdev)
>  {
> -	const struct of_device_id *match;
>  	struct si_sm_io io;
>  	struct resource resource;
>  	const __be32 *regsize, *regspacing, *regshift;
> @@ -237,10 +237,6 @@ static int of_ipmi_probe(struct platform_device *pdev)
>  
>  	dev_info(&pdev->dev, "probing via device tree\n");
>  
> -	match = of_match_device(of_ipmi_match, &pdev->dev);
> -	if (!match)
> -		return -ENODEV;
> -
>  	if (!of_device_is_available(np))
>  		return -EINVAL;
>  
> @@ -269,7 +265,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
>  	}
>  
>  	memset(&io, 0, sizeof(io));
> -	io.si_type	= (unsigned long) match->data;
> +	io.si_type	= (enum si_type)device_get_match_data(&pdev->dev);
>  	io.addr_source	= SI_DEVICETREE;
>  	io.irq_setup	= ipmi_std_irq_setup;
>  
> -- 
> 2.42.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
