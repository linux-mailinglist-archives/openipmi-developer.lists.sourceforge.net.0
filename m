Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D82C643FC5F
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Oct 2021 14:33:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mgR4d-0003UR-UO; Fri, 29 Oct 2021 12:33:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mgR4c-0003UL-Oq
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Oct 2021 12:33:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VG9TUuOVApoHapxovZ6uli91ugtXAJN9UYyzn6LgSaU=; b=difgHYeVQaskN67GtF9O/uzjhh
 kyKOIaMEfzsVVjbMZRQ21gNanFKQBkpIxCAo4pMUmglJ5yWeHnWfNGPS/Chntn3NA8J8OUYUcVjyJ
 3M+ojni0oRTkRX3TjTR7Lfni31yMe7UHPHn2n8/WUCc6VES9pZ5vBFPrhva30r3F/gEw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VG9TUuOVApoHapxovZ6uli91ugtXAJN9UYyzn6LgSaU=; b=MSwnvjqqtLNxrP0vm4UyBi3Zow
 h2uwlGVHWO7q7e2P5TqkjihJ0VRtw+s/qSgVVaPEPYxd18khIczPt3RAq78rs5DFpl/Zh6x/H4uTy
 jbzG8/yPJf09QYTUclnJWPxlcXh/vE096APBL+exETIA5me+mjDkmRYMtRcnay9iHhDY=;
Received: from mail-qt1-f174.google.com ([209.85.160.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mgR4X-0000rs-OF
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Oct 2021 12:33:31 +0000
Received: by mail-qt1-f174.google.com with SMTP id h4so8265396qth.5
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 29 Oct 2021 05:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=VG9TUuOVApoHapxovZ6uli91ugtXAJN9UYyzn6LgSaU=;
 b=lsW8NKAEQKMDPA3gxlEvxroe1/RNKIIL40hm3Wm3R2K2cFoVNKzVeB95QYNdY9N9Qw
 Fio3jdxZsA8Yzj/ruay1pi3OlK97oKFUjD3MJ5UDEqrONKFRgMU6mICTy+QFALbTN9+o
 m2O2Hgm0cUJyqsIttkDtMY3y4bKmsxmCNhhw3t9qRmyqI/6UJ1oTboVHE9FWoV/oNusE
 t5gYwLYNB/lrD8mymjh30k2ocabdLH63GYmkpMYna4qJoPc/SW3aWatB7lAs3+IBP7VP
 GOLzDFN9D6EmKBYzS1h9djt2sl/DnqaNtMPdA4479elRWXtDAzJJW61/tAmxL0aNi1PZ
 9yaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=VG9TUuOVApoHapxovZ6uli91ugtXAJN9UYyzn6LgSaU=;
 b=MCV1wfau33q8FqLmTnzrUyy+67DAMnkJlo7sC1nW4SjWb/eTvL0NvUKTy3jroGKR0C
 182ZU8cfIoy+s2z+Vlb6e8KDYKHk5FIYfmpNNz4vn+4QFn4b56hRTMN0/jUvLiMQf2zN
 UjGiQ3A1dh5QLdEuv1GlE/Pi1BdTL8wPAao4NWN39toQhbglqAj0LpQei4XE82thddoa
 LWMPL3uqQJqTLs67J1LMfFe7WOpOXwE9gYFv4/AHEPIkBf0n5XKB18AF+mcbYW4fWImL
 mGlypd3PM4uYAS3Bg0IcYLDP63lt/C/WwOs7slKMF0CxdaEhNT17pudmza5yt47V39qc
 CTmw==
X-Gm-Message-State: AOAM530ZNCrAFlxQlQEsSp9Ox6VUWsI3DiG13ZCog9F5DA5RkSttaEu2
 092wyD1f5YlfaFsQ/zHLsuXZo5tdCA==
X-Google-Smtp-Source: ABdhPJxgHKfyVjwUHaWtg9tbyLdD9b2TT5/jOQN6+2BsmNP9xWjrdfNpls4O4m/cFJ+SnCVf6wsXzw==
X-Received: by 2002:a37:9345:: with SMTP id v66mr8395650qkd.185.1635510334095; 
 Fri, 29 Oct 2021 05:25:34 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id u189sm3710308qkh.14.2021.10.29.05.25.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Oct 2021 05:25:33 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:7441:9fa8:649a:f004])
 by serve.minyard.net (Postfix) with ESMTPSA id AA33D1800B4;
 Fri, 29 Oct 2021 12:25:32 +0000 (UTC)
Date: Fri, 29 Oct 2021 07:25:31 -0500
From: Corey Minyard <minyard@acm.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <20211029122531.GD4667@minyard.net>
References: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ecbfa15e94e64f4b878ecab1541ea46c74807670.1631048724.git.christophe.jaillet@wanadoo.fr>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 07, 2021 at 11:06:32PM +0200, Christophe JAILLET
 wrote: > In the unlikely event where 'devm_kzalloc()' fails and 'kzalloc()'
 > succeeds, 'port' would be leaking. > > Test each allocation s [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.174 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.174 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mgR4X-0000rs-OF
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs_bmc: Fix a memory leak
 in the error handling path of 'kcs_bmc_serio_add_device()'
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
Cc: andrew@aj.id.au, openipmi-developer@lists.sourceforge.net,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 zweiss@equinix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Sep 07, 2021 at 11:06:32PM +0200, Christophe JAILLET wrote:
> In the unlikely event where 'devm_kzalloc()' fails and 'kzalloc()'
> succeeds, 'port' would be leaking.
> 
> Test each allocation separately to avoid the leak.

Yeah, looks reasonable.  It's in my queue.

-corey

> 
> Fixes: 3a3d2f6a4c64 ("ipmi: kcs_bmc: Add serio adaptor")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/char/ipmi/kcs_bmc_serio.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> index 7948cabde50b..7e2067628a6c 100644
> --- a/drivers/char/ipmi/kcs_bmc_serio.c
> +++ b/drivers/char/ipmi/kcs_bmc_serio.c
> @@ -73,10 +73,12 @@ static int kcs_bmc_serio_add_device(struct kcs_bmc_device *kcs_bmc)
>  	struct serio *port;
>  
>  	priv = devm_kzalloc(kcs_bmc->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
>  
>  	/* Use kzalloc() as the allocation is cleaned up with kfree() via serio_unregister_port() */
>  	port = kzalloc(sizeof(*port), GFP_KERNEL);
> -	if (!(priv && port))
> +	if (!port)
>  		return -ENOMEM;
>  
>  	port->id.type = SERIO_8042;
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
