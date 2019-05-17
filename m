Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B86F21B73
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 May 2019 18:19:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hRfZa-00082D-U8; Fri, 17 May 2019 16:19:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hRfZY-000824-MB
 for openipmi-developer@lists.sourceforge.net; Fri, 17 May 2019 16:19:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v7etLOWnFTx/oiSRltkdwyhks2nBY8EVfFvp1BaIFSc=; b=Wn4JaMh70kA6aWcGAi9nle7aOF
 gUBAmEKmr0mbzN4ST5SvneD3EzGHG27JyfDdwSlF0JaTHARMA5ZKTwzW3gDPYETTcN0ueQ7H6A6+T
 CL9RcsRwagOE4GE2eTznOAfA3/nfhFcGHePL5SwXuhm2CBQTnECPSXa2mnVZcGgQtnZg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v7etLOWnFTx/oiSRltkdwyhks2nBY8EVfFvp1BaIFSc=; b=Kv9PNwCEIrX+l/iW25llMmsgIi
 MAKO85KQ3IZNBSVgk3M/VbEnfJJSqDp7rarJB6txipJs3H/GIFe4cz/Ig9r2hhY1YzFDVfMeF6hjM
 UteP/75ucP06CToD7cr/bmaeD5zP/n1pvt0e3BQZA8STsmCB5+tZKTHqP6+zu1Mws31s=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hRfZX-003M6X-De
 for openipmi-developer@lists.sourceforge.net; Fri, 17 May 2019 16:19:04 +0000
Received: by mail-ot1-f68.google.com with SMTP id i2so1876925otr.9
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 May 2019 09:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v7etLOWnFTx/oiSRltkdwyhks2nBY8EVfFvp1BaIFSc=;
 b=cBRfGNO1xsmb6HXBeAtKjg8UBW4INvCL3j2xsudUChEy7CTOmVeoXzBoS5N9YzzXcM
 3RUVmdrXWlNShR91Y0GJWPCkuwH4h7I7Pj8m75akCIDbVOxrlenC+swmGHQHtHDKgSS8
 1lvcWIP7/k9f+PEVJpYjBDOmG09CQsMqm+wlBJSRulGWO5POZ2jXuOz1YN5RdG4XI3UK
 gDRcSAppDmfIdp9exinvhjajqYaze2Ddx+s9dzuRMYC2d/VAD6t5SPVpYBiCmjBQl40b
 0AilXMIzRis7wbmnGeXJwKH4fIOAnJ7wXyN5oW9USlTsy7xFAA/g1XUOFrMQ7s7nW6uZ
 imYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=v7etLOWnFTx/oiSRltkdwyhks2nBY8EVfFvp1BaIFSc=;
 b=TrEFBzRqfl8FQk/KCg5m4KYYNtp2Clyl66UVTiQvgP26OaHMMGiapGV4VhPfUFc6i4
 D18wLTrYUegTP4Ts8fJ+t/SLQXdcxrIGZ60JQ66aHtOp3fisBNIVfA+gxzF4v71y4n7u
 0Ph8iuSmo0LwBD+1ilIheJsJJ6zFawy9OJFX+4q/Efd7cqKF6nm9HC5sGRSgcd7KyHI1
 8r+wD7FOvA3HFLgkoQT2icEu9Gz1M9AZZEh1Q/SNOkQRL+WRLGgJLce5Mi1Tvl3AEmb5
 4qhuDxSu+ZI0cqquv+ncnlgaSO7Pbl6YTEleeCGl+cpeV4UnNZggus0UdztNA61fgFN8
 i+GQ==
X-Gm-Message-State: APjAAAXVNyzjTI5lyG57R5Bg5bD+EMLTY0plb/brRfQ0URGSicRvILni
 ryQ0Aj9OdXxbiyIJX7Jc2n2wjQ8=
X-Google-Smtp-Source: APXvYqw1TYL5oNitOoOEo4Qgqwf6IKqqAmJBrMZ29Ig20w7fENOergT1ZuJIGeiPhVoopSSIQIdL5Q==
X-Received: by 2002:a05:6830:200d:: with SMTP id
 e13mr461147otp.304.1558109937331; 
 Fri, 17 May 2019 09:18:57 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 80sm3643875otj.2.2019.05.17.09.18.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 09:18:56 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:d5e:aa5a:44d8:6907])
 by serve.minyard.net (Postfix) with ESMTPSA id 37259182A49;
 Fri, 17 May 2019 16:18:56 +0000 (UTC)
Date: Fri, 17 May 2019 11:18:55 -0500
From: Corey Minyard <minyard@acm.org>
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <20190517161855.GC11017@minyard.net>
References: <20190517101245.4341-1-wangkefeng.wang@huawei.com>
 <20190517101245.4341-2-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517101245.4341-2-wangkefeng.wang@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1hRfZX-003M6X-De
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: use bool type for
 initialized variable
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

On Fri, May 17, 2019 at 06:12:45PM +0800, Kefeng Wang wrote:
> Cover 'int' to 'bool' type for initialized variable.

A reasonable cleanup, queued for 5.3.

-corey

> 
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index f124a2d2bb9f..da5b6723329a 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -71,7 +71,7 @@ enum si_intf_state {
>  
>  static const char * const si_to_str[] = { "invalid", "kcs", "smic", "bt" };
>  
> -static int initialized;
> +static bool initialized;
>  
>  /*
>   * Indexes into stats[] in smi_info below.
> @@ -2124,7 +2124,7 @@ static int __init init_ipmi_si(void)
>  	}
>  
>  skip_fallback_noirq:
> -	initialized = 1;
> +	initialized = true;
>  	mutex_unlock(&smi_infos_lock);
>  
>  	if (type)
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
