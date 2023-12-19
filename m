Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A138481878B
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Dec 2023 13:34:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rFZIt-00008X-Cc;
	Tue, 19 Dec 2023 12:34:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rFZIs-00008P-9a
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Dec 2023 12:34:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gwHmTFeEehKOaOu6iVKukiI2Xe8hwl6/KhukRfcBoho=; b=hDosvK7TVz5aKjFXsqxEcJMkK3
 XozW9vfN3T8Tlj1r3IQ7Rv0mF4aSLWqg7Leuaz7Mmd/IL9nWfim4HupLFBZqsKueLSydorZcwlnP7
 O9OFbquNoU6rS2GagVR8HE9UTHNg7EM4+Gv51IA51+k2RUkviWW2iG0AFI6czfzExPDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gwHmTFeEehKOaOu6iVKukiI2Xe8hwl6/KhukRfcBoho=; b=GLZ//9HACb9/lDjIM+FurKFLRH
 ipaJFWqYdA02CsQALzOPcdRm0DAgeMreSLvObFw4aCj+g66UUG8T2j5Cm1w6q0sqYeO0XuzQJVphB
 09ixcuARNC7RUSp5BYiMEqNoMLHU/OmR8VWjRCt9Vn4XJqgEASRLOuWjnh9gngkWtElg=;
Received: from mail-oa1-f51.google.com ([209.85.160.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rFZIq-0000a4-NS for openipmi-developer@lists.sourceforge.net;
 Tue, 19 Dec 2023 12:34:29 +0000
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-1f055438492so3259075fac.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 Dec 2023 04:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1702989263; x=1703594063; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gwHmTFeEehKOaOu6iVKukiI2Xe8hwl6/KhukRfcBoho=;
 b=IuKctIQb7q4SDIL3tpQiSWqyaQc+81dzk3XfZqRw7i2l5fBxu8tjECCSxJ/7oFfDpX
 RP2wITtqIP9TyJqjvwIK+Kuuqp518eBlTuZUSI6L5r+B4TNcvyrmEsGgtWr2d/jhyme+
 g83K/ht0Ht13qIETOg9NnnbGvhpEPnhC7zLeswI6WyCLE/+uMcAhWkPrBV/n3TL9dmzZ
 WKTLqSOXoOOt5zoowU8giqLRCA6NdoVcQdtYqWlCS0Y0R/8DCBcCXN3BmiS5hEw0i2sU
 a1AKX2ti4g2psdM+6iQxanhCzucVrF2oENppeWmV7OmgKyu1/jkHCBI+VLYjjUggN8FN
 xP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702989263; x=1703594063;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=gwHmTFeEehKOaOu6iVKukiI2Xe8hwl6/KhukRfcBoho=;
 b=JIsPMbt/ZlvQl22Au6IC9vOEBWhUlkONkr1oj9TdWzAsCfnrFrsSa6QI/yr3poIQVL
 jbTvRLJc+CwSdRytQN/0dl433pAOZ8AglKJW+hRuf09yXzjojCAY20q4/Gc7WixLbBRQ
 bYrOCmrJFVnwRS2pvQqsyhJFo1UdS0QLfnQn/Bf+f5i0/ePnpXBsRMyEhoRLAl3pMIt+
 lnnT4pQ+kKRUCJr1VI3rJ1r/Q43cl0RUV5OmYvWW2D5DTaNS8BTkrz5a6OnlhAZiOiNx
 XaFCiWIAaZfC35WVGaAwGfQWlTTXeLUfFu19zHf5+Wf1fZeNAamLywyVijTq7KKf42gE
 szPw==
X-Gm-Message-State: AOJu0YyNZBat+Fd6xqExUMwZswMLuynUaPYBigFwil0tKlCcWKisR0nX
 RPbcR8Ml/YnMYJboDaJYKxRVzpXpxg==
X-Google-Smtp-Source: AGHT+IHVJBTzhlK2961aU1/aWwN2mixlQ7Nbh1X/XnRN9zpQEeKZ2hNCJt+RL5etGIFrj+gj/4oEiA==
X-Received: by 2002:a05:6870:40ce:b0:1fb:75b:12ee with SMTP id
 l14-20020a05687040ce00b001fb075b12eemr21809762oal.64.1702989262425; 
 Tue, 19 Dec 2023 04:34:22 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 gb8-20020a056870670800b001fb4aaf261csm7004856oab.32.2023.12.19.04.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Dec 2023 04:34:22 -0800 (PST)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:b5d7:ee3a:2c5b:8083])
 by serve.minyard.net (Postfix) with ESMTPSA id 5A7C9180047;
 Tue, 19 Dec 2023 12:34:21 +0000 (UTC)
Date: Tue, 19 Dec 2023 06:34:20 -0600
From: Corey Minyard <minyard@acm.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <ZYGNzHt8yPMPTYfd@mail.minyard.net>
References: <b1a7a75263400742e5fda6bd7ba426772dc8ef11.1702961986.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b1a7a75263400742e5fda6bd7ba426772dc8ef11.1702961986.git.christophe.jaillet@wanadoo.fr>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Dec 19, 2023 at 06:00:39AM +0100, Christophe JAILLET
 wrote: > ida_alloc() and ida_free() should be preferred to the deprecated
 > ida_simple_get() and ida_simple_remove(). > > This is less verb [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.51 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFZIq-0000a4-NS
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Remove usage of the
 deprecated ida_simple_xx() API
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

On Tue, Dec 19, 2023 at 06:00:39AM +0100, Christophe JAILLET wrote:
> ida_alloc() and ida_free() should be preferred to the deprecated
> ida_simple_get() and ida_simple_remove().
> 
> This is less verbose.

Thanks, queued for next release.

-corey

> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index d6f14279684d..b0eedc4595b3 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3053,7 +3053,7 @@ static void cleanup_bmc_work(struct work_struct *work)
>  	int id = bmc->pdev.id; /* Unregister overwrites id */
>  
>  	platform_device_unregister(&bmc->pdev);
> -	ida_simple_remove(&ipmi_bmc_ida, id);
> +	ida_free(&ipmi_bmc_ida, id);
>  }
>  
>  static void
> @@ -3169,7 +3169,7 @@ static int __ipmi_bmc_register(struct ipmi_smi *intf,
>  
>  		bmc->pdev.name = "ipmi_bmc";
>  
> -		rv = ida_simple_get(&ipmi_bmc_ida, 0, 0, GFP_KERNEL);
> +		rv = ida_alloc(&ipmi_bmc_ida, GFP_KERNEL);
>  		if (rv < 0) {
>  			kfree(bmc);
>  			goto out;
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
