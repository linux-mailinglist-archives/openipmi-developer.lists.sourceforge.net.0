Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C14B690928F
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jun 2024 20:52:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sIC2B-0006uX-TF;
	Fri, 14 Jun 2024 18:52:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sIC26-0006tz-LT
 for openipmi-developer@lists.sourceforge.net;
 Fri, 14 Jun 2024 18:52:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LVDBvdP08HJe2LLNeEFHiRk2XhY0KePdWqVaxMDbvKE=; b=lqzMi+RmFMUtvUICjnDvZHYGws
 y/rYywAh9vy49ZTePPuwO/rxXHc3Qr9idr1Z8eJVWPZUbr6NcMNcCDpOJK1QPqSmfR9rfXb/V/ZFS
 DPP8ZoRQhU9NibttgPg72pcAS0RENwsvJ9dZ9gZ72O5VQUwprENyK6jET5EYy+cZj+zg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LVDBvdP08HJe2LLNeEFHiRk2XhY0KePdWqVaxMDbvKE=; b=HaA0bbriT/2ee4EX7aERZqO9Ub
 /ngfIV3ABtPnQ8CE8XpU8wQv0K7mssDwqZyjyclCbENtGxkgZoAV/uZSl82lIiL/cIYepTPYsNQBt
 6omOONhHLY4Fb/R5lXyq2QN8iPjEhQg3M6WqBy1y5usOFYgK5rmwSy41L8IfI72mUTY8=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sIC27-0001dV-04 for openipmi-developer@lists.sourceforge.net;
 Fri, 14 Jun 2024 18:52:18 +0000
Received: by mail-oi1-f175.google.com with SMTP id
 5614622812f47-3d2469e797fso1024631b6e.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 14 Jun 2024 11:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1718391127; x=1718995927;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LVDBvdP08HJe2LLNeEFHiRk2XhY0KePdWqVaxMDbvKE=;
 b=1GV/3IHllVEZA3GccWj/bEtSzJTxOrpTgQ4OUVcd1PI2gI8ecnWDaWdPlyNX07zamL
 7XGDSWowecrQnhJ5DmeynkUn43b1LGzLLuH0AUqlnxVBM5OkStv1vaXS0uxP/b9u5ard
 6tlENGKKINcuUlN6b9yNPxol6lAJ5eS2ezSWFd/LVPTRP3FT/E/5B7Y3rgXvy2Iin9lc
 7WXp9GWjTXt/O0vOEZJs3GvEaaFu9A6O0qaK5SnAoOcYPbuCa87HkoktjATDLW7/E/IL
 PqAr+oZhNYxhOXXVO9opMSrr2DuqRnyHUvP81AO+t3fL8YQbdlcyCmv/mKSDA5N/8ELj
 gblg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718391127; x=1718995927;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LVDBvdP08HJe2LLNeEFHiRk2XhY0KePdWqVaxMDbvKE=;
 b=SM673Nqo1gjN2lw709nVSbupf+vIVyaWHhhMnggUU0w6DpYiXnprgqg7/F19ozmoTy
 uVUJpcEH+saTFJv+ORqTTVcN2pQ7O9jBPCn7nDIYRny0HvG5sSaAm3tagqp+rDQI+hol
 3usNfIj6X+LmkpH8hlWQgBFbtx51fkHo4R5ckoEH4ewS09LX4rtBhTbCxU1R7FUU1iag
 /2OB0qbBgLPedrLn1cYgNPlnhkg8El8MRhWnU+x0zo/A48eaFGYJc5Bdk3jChwHX6J0J
 Z4PKdQJ81ERSK4+TICVJm93pU1DLQhlnmieFytzEVjAIh/sljdAvEIMDTcUtU9RZROEl
 suRw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWApH0KUlwZ+Xu7NssANNuCxFI1daBngskMDVMe3c0VXdO6dTsRwCTAuDg3e0DbejI62OsRNFUiUAuAZs7EtPvNC+vkk5bfdeXjI290wkxr9DgyQcm0e4nT
X-Gm-Message-State: AOJu0YxUOmC4zztdrnR4jhG7R5TD6+hnKNetSibjuU95F73oevhMq7By
 aG20KmRW1WdkbDS3VqlCuW7TgYjhoD2SCsK1ESAOH9POltsumtfR3BVB9mvtO7w=
X-Google-Smtp-Source: AGHT+IH5wsewHDu4BXzms8+/hfuFuKIa/9eeUhy5xDV/FWcrmW7WzNgNCo/H/BIyrLMqqglhgTp+DQ==
X-Received: by 2002:a05:6808:11d0:b0:3d1:d36b:379e with SMTP id
 5614622812f47-3d244f362e9mr3226002b6e.26.1718391127297; 
 Fri, 14 Jun 2024 11:52:07 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:c3a8:c961:e73:5e22])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-3d2476bb36fsm618151b6e.40.2024.06.14.11.52.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Jun 2024 11:52:06 -0700 (PDT)
Date: Fri, 14 Jun 2024 13:52:05 -0500
From: Corey Minyard <corey@minyard.net>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZmyRVQzcIbDwgnP9@mail.minyard.net>
References: <1431ca2e-4e9c-4520-bfc0-6879313c30e9@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431ca2e-4e9c-4520-bfc0-6879313c30e9@moroto.mountain>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 14, 2024 at 08:30:44PM +0300,
 Dan Carpenter wrote:
 > There are actually two bugs here. First, we need to ensure that count >
 is at least sizeof(u32) or msg.len will be uninitialized data. [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.167.175 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.175 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.175 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sIC27-0001dV-04
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: prevent integer
 overflow on 32bit systems
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 Quan Nguyen <quan@os.amperecomputing.com>, Corey Minyard <minyard@acm.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jun 14, 2024 at 08:30:44PM +0300, Dan Carpenter wrote:
> There are actually two bugs here.  First, we need to ensure that count
> is at least sizeof(u32) or msg.len will be uninitialized data.
> 
> The "msg.len" variable is a u32 that comes from the user.  On 32bit
> systems the "sizeof_field(struct ipmi_ssif_msg, len) + msg.len"
> addition can overflow if "msg.len" is greater than U32_MAX - 4.
> 
> Valid lengths for "msg.len" are 1-254.  Add a check for that to
> prevent the integer overflow.

Thanks, this is in my tree.

-corey

> 
> Fixes: dd2bc5cc9e25 ("ipmi: ssif_bmc: Add SSIF BMC driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>  drivers/char/ipmi/ssif_bmc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> ---
>  drivers/char/ipmi/ssif_bmc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index 56346fb32872..ab4e87a99f08 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -177,13 +177,15 @@ static ssize_t ssif_bmc_write(struct file *file, const char __user *buf, size_t
>  	unsigned long flags;
>  	ssize_t ret;
>  
> -	if (count > sizeof(struct ipmi_ssif_msg))
> +	if (count < sizeof(msg.len) ||
> +	    count > sizeof(struct ipmi_ssif_msg))
>  		return -EINVAL;
>  
>  	if (copy_from_user(&msg, buf, count))
>  		return -EFAULT;
>  
> -	if (!msg.len || count < sizeof_field(struct ipmi_ssif_msg, len) + msg.len)
> +	if (!msg.len || msg.len > IPMI_SSIF_PAYLOAD_MAX ||
> +	    count < sizeof_field(struct ipmi_ssif_msg, len) + msg.len)
>  		return -EINVAL;
>  
>  	spin_lock_irqsave(&ssif_bmc->lock, flags);
> -- 
> 2.43.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
