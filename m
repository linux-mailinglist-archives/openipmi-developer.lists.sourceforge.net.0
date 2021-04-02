Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 202FA352B43
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 16:11:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSKWP-0006IV-7G; Fri, 02 Apr 2021 14:11:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1lSKWN-0006Ga-BF
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 14:11:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aluSn6bb33bhahqntft67ApwfyZT9WoQvHp/xBnQ0Zs=; b=CKmPRWR+7wW7dQJBNjC06Ah5CD
 fi9cuVCuDrBdW5rL0mnLqjoa1kjyvhzSpwzHecsEq6euz6EGkW9l4fM2VRrZ+M0ogvrL5Fb1pvo0g
 FCj+VVs45Aj6DtAhzZmlW+YBAHUD8MM3DNTuurV6dYvQywhtu810sXfS2pmtHVhc1Fbs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aluSn6bb33bhahqntft67ApwfyZT9WoQvHp/xBnQ0Zs=; b=BhihlNk+QZAr163flrVNLL3MDc
 PiVF52f4fc5E7LVInRNcfe3KuoR5a6XXCMsxkxg5lGcvTe9w6jQp8vjhxPQI9ti1NjDp9V6BsclgN
 sUgOB4Oe4U1s+sm3DhIgAxhwpOLvdFsHZszToLIZafIjflD0lLo8D5Se8XJ7Cr6Yvjps=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSKFJ-0002fO-RP
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 13:54:18 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 k14-20020a9d7dce0000b02901b866632f29so5027130otn.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 02 Apr 2021 06:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=aluSn6bb33bhahqntft67ApwfyZT9WoQvHp/xBnQ0Zs=;
 b=NEF/K2uB4Mkvy4QQ/Kz6ySI07BGzqJjrxihzA78nyYMoJrTXY3mmnlqkQhs+0ESiFJ
 lhWgvwKJfeK1jJACRmBuCn48dzqK95k08G3Mi2VpaLMczEfgAMgIQWiKSZ0b67ayG8r5
 WoTuSjVz6jgZ3y2IZ7DY5D10o3R2u1GKeiuh8xbD3TdxJxkl41B0Igiq9kECa5/1lcnH
 aHnNoKk9nK1ynBbHn9Y3qWdx/UXpb04kOqWNl43OMKQ9c5vK4v3foO0C44NifgIQOkQt
 ZdMp+84iAKwZvJrw9lgetF+HYzQkiKUC2ZBC4C5+AmCIv4nnfi0HjVHZZNn7gVl6EUFW
 n9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=aluSn6bb33bhahqntft67ApwfyZT9WoQvHp/xBnQ0Zs=;
 b=Ri83/2Y0NUxbBoAR0yZGXoeOrDdnHS7EWC272BxLnsbkoTPDVy7WPmuXQC5HhuS/0w
 hpGozLEoqHN3iqQ7qy1YeEa3iGy2QSwpwyXZF2Doypsb35fPrB7eWCoObc8jok9zEYnc
 8lYXyU6NGxCBNrLUoCBr8afou6pSzRKpFya013D76hoCzIIbq9jPxiXWrBcqhBhM6xkg
 F4ieFIGXWCiWy77YG/IYkvvbgC7nImDINpX1Rn9YY6MEEGFmEcw3nkE/K1gxzOcIZ7uZ
 cBrL3zu8DwdoPSp6zyRk+ptqQKlcnCYToGyz+7jnehcywF0Btot2MIbOEJ2Zibt/IYQL
 DvQw==
X-Gm-Message-State: AOAM533COhPhHI7eaI8FiOutIVxgb4n+tPKGj4jh2EtjW8VF2NJvqzeh
 WRJnQSFvOs6TM8u0gqbkXQ==
X-Google-Smtp-Source: ABdhPJz7MN4hCAKS98a9/hIkc17VjCgo2vzjBNphOKi6TxpqwqAE5RzY8Xd0LdBkig2rqsxJHUSCJQ==
X-Received: by 2002:a05:6830:1d45:: with SMTP id
 p5mr11219852oth.340.1617371631930; 
 Fri, 02 Apr 2021 06:53:51 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id w23sm1768704oow.25.2021.04.02.06.53.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Apr 2021 06:53:51 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:f99f:823a:495e:5af])
 by serve.minyard.net (Postfix) with ESMTPSA id 93DA3180570;
 Fri,  2 Apr 2021 13:53:50 +0000 (UTC)
Date: Fri, 2 Apr 2021 08:53:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20210402135349.GT507977@minyard.net>
References: <20210330181649.66496-1-andriy.shevchenko@linux.intel.com>
 <20210330181649.66496-6-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330181649.66496-6-andriy.shevchenko@linux.intel.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSKFJ-0002fO-RP
Subject: Re: [Openipmi-developer] [PATCH v1 06/10] ipmi_si: Reuse si_to_str
 array in ipmi_hardcode_init_one()
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

On Tue, Mar 30, 2021 at 09:16:45PM +0300, Andy Shevchenko wrote:
> Instead of making the comparison one by one, reuse si_to_str array
> in ipmi_hardcode_init_one() in conjunction with match_string() API.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_si.h          |  3 +++
>  drivers/char/ipmi/ipmi_si_hardcode.c | 23 +++++++++--------------
>  drivers/char/ipmi/ipmi_si_intf.c     |  2 --
>  3 files changed, 12 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si.h b/drivers/char/ipmi/ipmi_si.h
> index bac0ff86e48e..fd3167d1e1e9 100644
> --- a/drivers/char/ipmi/ipmi_si.h
> +++ b/drivers/char/ipmi/ipmi_si.h
> @@ -22,6 +22,9 @@ enum si_type {
>  	SI_TYPE_INVALID, SI_KCS, SI_SMIC, SI_BT
>  };
>  
> +/* 'invalid' to allow a firmware-specified interface to be disabled */
> +static __maybe_unused const char *const si_to_str[] = { "invalid", "kcs", "smic", "bt" };

Can we just make this non-static and leave the definition where it is?
That would save a little space and wouldn't affect performance at all.

-corey

> +
>  enum ipmi_addr_space {
>  	IPMI_IO_ADDR_SPACE, IPMI_MEM_ADDR_SPACE
>  };
> diff --git a/drivers/char/ipmi/ipmi_si_hardcode.c b/drivers/char/ipmi/ipmi_si_hardcode.c
> index f6ece7569504..cf3797523469 100644
> --- a/drivers/char/ipmi/ipmi_si_hardcode.c
> +++ b/drivers/char/ipmi/ipmi_si_hardcode.c
> @@ -80,26 +80,21 @@ static void __init ipmi_hardcode_init_one(const char *si_type_str,
>  					  enum ipmi_addr_space addr_space)
>  {
>  	struct ipmi_plat_data p;
> +	int t;
>  
>  	memset(&p, 0, sizeof(p));
>  
>  	p.iftype = IPMI_PLAT_IF_SI;
> -	if (!si_type_str || !*si_type_str || strcmp(si_type_str, "kcs") == 0) {
> +	if (!si_type_str || !*si_type_str) {
>  		p.type = SI_KCS;
> -	} else if (strcmp(si_type_str, "smic") == 0) {
> -		p.type = SI_SMIC;
> -	} else if (strcmp(si_type_str, "bt") == 0) {
> -		p.type = SI_BT;
> -	} else if (strcmp(si_type_str, "invalid") == 0) {
> -		/*
> -		 * Allow a firmware-specified interface to be
> -		 * disabled.
> -		 */
> -		p.type = SI_TYPE_INVALID;
>  	} else {
> -		pr_warn("Interface type specified for interface %d, was invalid: %s\n",
> -			i, si_type_str);
> -		return;
> +		t = match_string(si_to_str, ARRAY_SIZE(si_to_str), si_type_str);
> +		if (t < 0) {
> +			pr_warn("Interface type specified for interface %d, was invalid: %s\n",
> +				i, si_type_str);
> +			return;
> +		}
> +		p.type = t;
>  	}
>  
>  	p.regsize = regsizes[i];
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index be41a473e3c2..ff448098f185 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -70,8 +70,6 @@ enum si_intf_state {
>  #define IPMI_BT_INTMASK_CLEAR_IRQ_BIT	2
>  #define IPMI_BT_INTMASK_ENABLE_IRQ_BIT	1
>  
> -static const char * const si_to_str[] = { "invalid", "kcs", "smic", "bt" };
> -
>  static bool initialized;
>  
>  /*
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
