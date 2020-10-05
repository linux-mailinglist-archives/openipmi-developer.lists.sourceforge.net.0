Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA9A283E58
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 Oct 2020 20:32:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kPVHS-000130-IV; Mon, 05 Oct 2020 18:32:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kPVHQ-00012r-Iv
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 18:32:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4XnFMEYBigHgCV+fVeaAcl7/OtU/VYKO/+UnYZ6KE4s=; b=jBAgqYAUXc6vmJiJrcdTWKGjtB
 dtzWiSqMmliQac+ox4eNOgJTqr77PNEzROfWgyLziPUY8bYe53biaRpooQk+oeXLlcd+GfJI1Jccn
 XBbU9U7A625Io7rdH8LyKTA73mtQqVrKPd90grzutNsiiRFKo6+wbZE52fWRHl5ayrus=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4XnFMEYBigHgCV+fVeaAcl7/OtU/VYKO/+UnYZ6KE4s=; b=h9Z4sRBE9QirYZ7ruI4BhhH5/F
 7rQeTLUmpGN2KQxFiQRNJ7vGYkJBqH73+RwGKI44Vis5In/BqR+OXC5Yt98Ki2/lcEzkNT559HA32
 t6Tf7WXvnvNX3loC9P9ZMz3x5nT4xlYZAFK8B+ThT2P2kwMEnv6ETQKTd99oASc+dsSs=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPVHG-00HZyQ-KR
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Oct 2020 18:32:12 +0000
Received: by mail-oi1-f193.google.com with SMTP id x69so9665428oia.8
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 05 Oct 2020 11:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4XnFMEYBigHgCV+fVeaAcl7/OtU/VYKO/+UnYZ6KE4s=;
 b=Yrzal8C//+9JYev4U13xMIp0iF4Qu+SG9pq5cGb8LrGlLgSBbQEFOGHXlRG4haURou
 d4Todi8A/INa13CMHZAyqmZdIgpHAsLwOHDLcqFNQznQzBEBHL8ZSM1Clte8ji4d6TZx
 6lkgihPPIwHlMvrBxFbg2bgQ3CklAsnA3KaP9mIwnPpmbanU+D12I8td67k4PhF8lCbi
 rC0bYDV+sqzMUHu74LoTwOyqbXTUjSCrnW9+RApoIgJBKEGcpdTuhcYmDdkAMa69KNpE
 llEsmPrkBDto1ELRfIz/L7dlTIpl3cCxlOW37pocX5n3Z+/biT9b3lJ3S8sk41Wlg6Gm
 L7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=4XnFMEYBigHgCV+fVeaAcl7/OtU/VYKO/+UnYZ6KE4s=;
 b=eq5AJ4KOx0qLCaBJpzektg8O+RwSOOWA2fioUJjcCfQKBeSPEVtqjCqpdeR2L3bPYa
 1sfaBgdzv+B2m+6QlqNaUderU2ISvEdNftDizcvRYUNmhWLn995kcLtHIak74iYqgVHg
 rypMLbaw+yYk6VEgaFKhUjFFx7wQXPZ+vKoM3bF0Vmp54ztUqGwlFic46U9KkWyph9Lj
 Wh2pu8zvRPSzIsakRcoIgc/PBwICWHUZBHMlyT9DCounBTIo39kF4sEjXxN2rcKA6rqD
 wEb+kdSAVQjdyXW2u/c9u/w34FjYRn557Ki2yJ3WFEjRzOb5HFn4AvYJiNB7vIzIO55l
 bJPA==
X-Gm-Message-State: AOAM533C4B9L0ZwjW9Cp0dDg7D6POjTEuwhSuSoqOkDCvtYGLu5e+wm1
 rot8E6TLOL4uASQeFBR2NA==
X-Google-Smtp-Source: ABdhPJzvbPIUPxWLm0saT0hBXKv3OO0NTKt64qSAsrtuZ0CH5w6F7ca2KGeQ+INhrOgmoYbntyBrEg==
X-Received: by 2002:a54:468f:: with SMTP id k15mr419522oic.121.1601922716983; 
 Mon, 05 Oct 2020 11:31:56 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id g26sm133142otn.77.2020.10.05.11.31.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 11:31:56 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:24ea:bc45:cb5c:17a1])
 by serve.minyard.net (Postfix) with ESMTPSA id 759C7180056;
 Mon,  5 Oct 2020 18:31:54 +0000 (UTC)
Date: Mon, 5 Oct 2020 13:31:53 -0500
From: Corey Minyard <minyard@acm.org>
To: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
Message-ID: <20201005183153.GF3038@minyard.net>
References: <20201005145212.84435-1-tianjia.zhang@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201005145212.84435-1-tianjia.zhang@linux.alibaba.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kPVHG-00HZyQ-KR
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: Fix wrong return value in
 try_smi_init()
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

On Mon, Oct 05, 2020 at 10:52:12PM +0800, Tianjia Zhang wrote:
> On an error exit path, a negative error code should be returned
> instead of a positive return value.

Thanks!  In my tree for the next release.

-corey

> 
> Fixes: 90b2d4f15ff7 ("ipmi_si: Remove hacks for adding a dummy platform devices")
> Cc: Corey Minyard <cminyard@mvista.com>
> Signed-off-by: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 77b8d551ae7f..dd559661c15b 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -1963,7 +1963,7 @@ static int try_smi_init(struct smi_info *new_smi)
>  	/* Do this early so it's available for logs. */
>  	if (!new_smi->io.dev) {
>  		pr_err("IPMI interface added with no device\n");
> -		rv = EIO;
> +		rv = -EIO;
>  		goto out_err;
>  	}
>  
> -- 
> 2.24.3 (Apple Git-128)
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
