Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1AA5AC586
	for <lists+openipmi-developer@lfdr.de>; Sun,  4 Sep 2022 18:56:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oUsv5-0005s4-3E;
	Sun, 04 Sep 2022 16:56:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1oUsv1-0005rk-Ik
 for openipmi-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 16:56:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DweC0xGYEQiKuhEU2wfv4BL8C5hOa+ko8JEuIgGa79M=; b=VDKVVYuvhJ8aa2DSUF8CDgblne
 HOdMPAV4cVSEwPouw1gWYdqOVZZACI22+9C9LK6zwhhKTy/JhdICX5cRNL1xqfXCtmvn3qJuNAmRc
 0PzVbfhzHm/XhWLLCCjFl+wThKoo0SCXw9cis5Sf4qvI2FJ0gMO+KaYEorUHq2g3xFlc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DweC0xGYEQiKuhEU2wfv4BL8C5hOa+ko8JEuIgGa79M=; b=HZIPUDjr/JZ9OqQm7yqhHt7NTy
 jsXv408uDAsZS69O5cd9pF+o4Kb7N8/Y0HMYqS5jCWmdbbRVtWdufAn/cRZ8GOwTE5USL2fiLrxoS
 30Nd9Buz544F7YvB1/bTEdf56PjS66fXmxWvyqUe/NxCyo5FtpeaoUEoXNSVIbAXGo8c=;
Received: from mail-qk1-f177.google.com ([209.85.222.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oUsuw-00ETZn-VS for openipmi-developer@lists.sourceforge.net;
 Sun, 04 Sep 2022 16:56:23 +0000
Received: by mail-qk1-f177.google.com with SMTP id h27so5060237qkk.9
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 04 Sep 2022 09:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date;
 bh=DweC0xGYEQiKuhEU2wfv4BL8C5hOa+ko8JEuIgGa79M=;
 b=LRaoVWgJT9RdH4EGC2nrqbah10twpMB/cBIeHGVoBfRxMiT1wWvOtp0qxDtN0MIIuJ
 zdjvxiXfzblBcqx3wgdHbU1iBqlz+0n6fqIH27IAWlfiCaiwBRw7zISg8nr6y/iAEV1q
 GjM5n3Vv09/1NMPvHHKsfh4lM9dZL9x5+QKIwgWWrHrXX22M4LFtnbcfQFSMluKpUkv1
 MFKJcFDYIZv6CtqWtP53fSqyfDWvhY+L33nJnuNw+qUmEY7yxcs3V6mz0E3ciWdDI3Ci
 voNOS99El6qtL2lqqhT1OGkrMIxDLw9m7gss6fsTRHptHm1U1RYVyQu58DzgALF3Qq9q
 awdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date;
 bh=DweC0xGYEQiKuhEU2wfv4BL8C5hOa+ko8JEuIgGa79M=;
 b=aiCLOwRm89CMsKrdQbKT6qy6i/MC623DDbhAOe39nDSg2aF99mcaaTdEEhOt/mGlIb
 CN/SZeFwRTNPGkCiZVogVVlQzJ5EY1KO5yg3vCx0scDiayFPWypjcnd5wPSyKrMKrOFC
 OSNa8KJn3ummmAPcFuJ67T96YAzI8fqRhjrOMwDiHG+2D33Yn61SZPawYYxBX+uJLU59
 NMSZ1Ihhwq/I3AppKgVVkbLuoNpaHscUa93+nl4jtyugF4RRruJ1U6Rm620a6+wY+k1R
 T045y9tl3bMstjXPDAkLk6Hb6K25GZxGTV6/d9Q1nJpkXOFKgdqh/8ki13CUGBRWXwsu
 Z/xQ==
X-Gm-Message-State: ACgBeo0ll60tegxjsjpnLvcZJeuxVhQYerPy2sHb+KtWmSPodp0iFumx
 Nz3bCXk+wwacubh7zmRx+g==
X-Google-Smtp-Source: AA6agR7ugl73vbBqSVIq3LKbH4H4rLGSvzd8kxJ/CT2BLQss06uJv73Yx8FnWndMyA3intEFDR1fdg==
X-Received: by 2002:a05:620a:46a8:b0:6bb:29e6:f315 with SMTP id
 bq40-20020a05620a46a800b006bb29e6f315mr30165251qkb.714.1662310570611; 
 Sun, 04 Sep 2022 09:56:10 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 6-20020a370c06000000b006bbbd4ce6e1sm5912645qkm.35.2022.09.04.09.56.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Sep 2022 09:56:10 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:e25f:adca:563b:692])
 by serve.minyard.net (Postfix) with ESMTPSA id E16B01828A0;
 Sun,  4 Sep 2022 16:56:08 +0000 (UTC)
Date: Sun, 4 Sep 2022 11:56:07 -0500
From: Corey Minyard <minyard@acm.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Andrew Jeffery <andrew@aj.id.au>
Message-ID: <YxTYp6Hhmqdou3S9@minyard.net>
References: <5d69a2d0939ce3917c856b36ef1e41b579081be6.1662298496.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d69a2d0939ce3917c856b36ef1e41b579081be6.1662298496.git.christophe.jaillet@wanadoo.fr>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Adding Andrew, the author of this code. On Sun, Sep 04, 2022
 at 03:35:16PM +0200, Christophe JAILLET wrote: > KCS_MSG_BUFSIZ is 1000.
 > > When using devm_kmalloc(), there is a small memory overhead and, on most
 > systems, this leads to 40 b [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.177 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oUsuw-00ETZn-VS
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs_bmc: Avoid wasting some
 memory.
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Adding Andrew, the author of this code.

On Sun, Sep 04, 2022 at 03:35:16PM +0200, Christophe JAILLET wrote:
> KCS_MSG_BUFSIZ is 1000.
> 
> When using devm_kmalloc(), there is a small memory overhead and, on most
> systems, this leads to 40 bytes of extra memory allocation.
> So 1040 bytes are expected to be allocated.
> 
> The memory allocator works with fixed size hunks of memory. In this case,
> it will require 2048 bytes of memory because more than 1024 bytes are
> required.
> 
> So, when requesting 3 x 1000 bytes, it ends up to 2048 x 3.
> 
> In order to avoid wasting 3ko of memory, allocate buffers all at once.
> 3000+40 bytes will be required and 4ko allocated. This still wastes 1ko,
> but it is already better.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> Looking at this code, I wonder why priv->miscdev.name is not freed in
> kcs_bmc_ipmi_remove_device()?

If I understand correctly, none of these need to be freed.  devm
allocated memory is freed automatically when the device is removed.

> 
> If this make sense, this also mean that KCS_MSG_BUFSIZ can be increased at
> no cost.
> Or it could be slightly reduce to around 1024-40-1 bytes to keep the logic
> which is in place.
> 
> Another solution would be to use just kmalloc and add a
> devm_add_action_or_reset() call and a function that frees the memory.
> If it make sense, KCS_MSG_BUFSIZ could be increased to 1024 and we would
> allocate just a little above 3x1024 bytes.
> ---
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> index 486834a962c3..15a4a39a6478 100644
> --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> @@ -485,14 +485,15 @@ static int kcs_bmc_ipmi_add_device(struct kcs_bmc_device *kcs_bmc)
>  
>  	priv->client.dev = kcs_bmc;
>  	priv->client.ops = &kcs_bmc_ipmi_client_ops;
> -	priv->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
> -	priv->data_out = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
> -	priv->kbuffer = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
> +	/* Allocate buffers all at once */
> +	priv->data_in = devm_kmalloc(kcs_bmc->dev, KCS_MSG_BUFSIZ * 3, GFP_KERNEL);
> +	priv->data_out = priv->data_in + KCS_MSG_BUFSIZ;
> +	priv->kbuffer  = priv->data_in + KCS_MSG_BUFSIZ * 2;

You are doing arithmetic on a possibly NULL pointer.  It's generally ok,
but kind of frowned upon.

Andew, what do you think?  I guess it saves a little memory.

-Corey

>  
>  	priv->miscdev.minor = MISC_DYNAMIC_MINOR;
>  	priv->miscdev.name = devm_kasprintf(kcs_bmc->dev, GFP_KERNEL, "%s%u", DEVICE_NAME,
>  					   kcs_bmc->channel);
> -	if (!priv->data_in || !priv->data_out || !priv->kbuffer || !priv->miscdev.name)
> +	if (!priv->data_in || !priv->miscdev.name)
>  		return -EINVAL;
>  
>  	priv->miscdev.fops = &kcs_bmc_ipmi_fops;
> @@ -531,8 +532,6 @@ static int kcs_bmc_ipmi_remove_device(struct kcs_bmc_device *kcs_bmc)
>  
>  	misc_deregister(&priv->miscdev);
>  	kcs_bmc_disable_device(priv->client.dev, &priv->client);
> -	devm_kfree(kcs_bmc->dev, priv->kbuffer);
> -	devm_kfree(kcs_bmc->dev, priv->data_out);
>  	devm_kfree(kcs_bmc->dev, priv->data_in);
>  	devm_kfree(kcs_bmc->dev, priv);
>  
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
