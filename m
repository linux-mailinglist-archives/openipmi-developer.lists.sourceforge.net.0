Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBC43D3A27
	for <lists+openipmi-developer@lfdr.de>; Fri, 23 Jul 2021 14:25:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1m6uEc-0002De-Uw; Fri, 23 Jul 2021 12:24:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1m6uEa-0002DK-UH
 for openipmi-developer@lists.sourceforge.net; Fri, 23 Jul 2021 12:24:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t2Symr9KuFJEPAV72a+i75cWNYGzF1LQQeEf4EUxAZo=; b=VWiXHm+TuVUpLOMshx8nrrUf4j
 N7CvrPNBwaTU/j1dqMwLheg9NQD0+u1lhD0hDa/+0jw6+irOc8i93VD39c+OB2VO5go+D1Zt5+h3L
 vvkm1K+81FR/vNOUfNkgybv2LvsmoeVtUqJSj9LkNgxHJZX7uqIf6KMkidA7uj2rnaLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t2Symr9KuFJEPAV72a+i75cWNYGzF1LQQeEf4EUxAZo=; b=MHBKg8uF3vPcjjYDj1NG4p3YwP
 l3AvFMK0Aopyy0ozXj86mTw0lsULQRDadH0RhJcob7otIRgzctCMZs9+5LiUiDIgILOSUvpJgA2k7
 s59nA4d/gk+dV0b3VQsQT9g5r0miBPZV+JGn7wsSoGwIXyN+aJj71kT4q81kAEa/dzLA=;
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1m6uEU-000Fhg-KG
 for openipmi-developer@lists.sourceforge.net; Fri, 23 Jul 2021 12:24:56 +0000
Received: by mail-ot1-f43.google.com with SMTP id
 48-20020a9d0bb30000b02904cd671b911bso1896184oth.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 23 Jul 2021 05:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=t2Symr9KuFJEPAV72a+i75cWNYGzF1LQQeEf4EUxAZo=;
 b=V8YEP+xfPM0EKJb1BLXAfsAsZheHK7HN/Cfm2yulIZ5muRp3FaXSKrFCv2xb/KPfJp
 xv04yZtC2E56XsFXN3Qex1GGNzltTxoAY+eNMJ9F95n2wU1DW3CWn4/q/H21rK3q0QL4
 7biClPtQTrkCe+dHfY+x6cfSomeGINeJIsdfT2g0bBgGSGcF5ICCm7Zl+hySWjLB+K2b
 krOgWuknqTwmtn4k0Ku3PkdFpAmfBBiOO82gX/gZVd2eicVjnVrecTNEuYWKkTjKr9aS
 hi95PBxcxRLAubbURXU3Nw+jqxmVdMuYQWVQx+eAnFWHOg21HD8pFVGJN4dDbRl8APTo
 PV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=t2Symr9KuFJEPAV72a+i75cWNYGzF1LQQeEf4EUxAZo=;
 b=LbddtldYvo/HGl/5mZAKhB/xIhZnYF3+bDIaJfrZLbfdNR3krJWBkWjR9ATOavFm0g
 GK/lFJyVvn9HwJRTnT4ivonUw2yelFa308dRM6y7uRtLpmgMpsKeG5Qg7kokJ/8b7wE3
 4m4kzARBnwjEIvOB3nsODM5sm8ZNx1YmSDhNhQ+lbPhVALzWb+tLembPBVWj92QHY0YN
 oGCu07V1+adEksjNj8vlflkdxSgXXDl2prgXup7Hya7lfzIpjMWl3+ugFC5lNkbdVUxk
 7qj9JDJRQq88luugGTMhu/wVWouwOgsnzayhwAVZdp45HJBwRqRnKclWTV4CkVm8fch3
 bnkg==
X-Gm-Message-State: AOAM531zj/4kGVTD+G0nT9CW/l/Ic39+BpamNwm2wfiVuD7lrktE/cY4
 Rv18bnW+2DOzZq5lHDQvmFqIL29clCKn
X-Google-Smtp-Source: ABdhPJy8gHqpZvxm7eEtoQaPmkDy1f7x/bbkHq1veXt4C0r+zuxodWrO9SmmDcZKiXpO/pwvCKEGSA==
X-Received: by 2002:a9d:4813:: with SMTP id c19mr2923124otf.208.1627043084573; 
 Fri, 23 Jul 2021 05:24:44 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id c26sm2984518otu.38.2021.07.23.05.24.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 05:24:43 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2d56:5547:21b6:aeca])
 by serve.minyard.net (Postfix) with ESMTPSA id BDF3818005A;
 Fri, 23 Jul 2021 12:24:41 +0000 (UTC)
Date: Fri, 23 Jul 2021 07:24:40 -0500
From: Corey Minyard <minyard@acm.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20210723122440.GM3406@minyard.net>
References: <20210723084459.GA21470@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210723084459.GA21470@kili>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1m6uEU-000Fhg-KG
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif_bmc: Return -EFAULT if
 copy_from_user() fails
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
 Quan Nguyen <quan@os.amperecomputing.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jul 23, 2021 at 11:44:59AM +0300, Dan Carpenter wrote:
> The copy_from_user() function returns the number of bytes remaining to
> be copied but we should return -EFAULT here.

Yep, this is in my queue.

Thanks,

-corey

> 
> Fixes: 007888f365c9 ("ipmi: ssif_bmc: Add SSIF BMC driver")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/char/ipmi/ssif_bmc.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index b15c05622e72..ce8cd8364a3f 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -85,9 +85,8 @@ static ssize_t ssif_bmc_write(struct file *file, const char __user *buf, size_t
>  	if (count > sizeof(struct ssif_msg))
>  		return -EINVAL;
>  
> -	ret = copy_from_user(&msg, buf, count);
> -	if (ret)
> -		return ret;
> +	if (copy_from_user(&msg, buf, count))
> +		return -EFAULT;
>  
>  	if (!msg.len || count < ssif_msg_len(&msg))
>  		return -EINVAL;
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
