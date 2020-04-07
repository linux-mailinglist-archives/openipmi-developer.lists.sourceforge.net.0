Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 704E51A0E79
	for <lists+openipmi-developer@lfdr.de>; Tue,  7 Apr 2020 15:36:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jLoOs-0006Hk-5k; Tue, 07 Apr 2020 13:36:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jLoOq-0006Hd-W4
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Apr 2020 13:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ClJDfDshHqm3MPtsNHmyOS+UtbN5Rqwu+2iZ2hmJ8yk=; b=KK+gflS9e4cqj/AmPkvhDspz/T
 i2Zi9LyPVvnywfSj/csnQX3sEyhjlR8p4yUuGw0QfiJPxF1PV6bm+RapGeakGG6KiXunRpTLXrT8d
 0BZCtbrfwZVHnEk2hXC1ZVsMrnUXXkqwuo12HzMgWELLDO/7VaJRanFajpIXflFSdXHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ClJDfDshHqm3MPtsNHmyOS+UtbN5Rqwu+2iZ2hmJ8yk=; b=P59sIx+QnlVxpQPx3sW/IxymMu
 Lggs8TXSO+aqZz3ERsYy96qM2hA5KKaOqa8ryFCywqnE1FYZJUeJ5eNJJuMrlFiYRg42pLpY89HpC
 OYN2YH9tim8LhBjLD1M/vmZku474Xz5qt44wyThhETREPvi9fAU7EoPS8Qu93ITUKu54=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jLoOn-006dgz-N8
 for openipmi-developer@lists.sourceforge.net; Tue, 07 Apr 2020 13:36:20 +0000
Received: by mail-oi1-f195.google.com with SMTP id l22so1463270oii.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Apr 2020 06:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ClJDfDshHqm3MPtsNHmyOS+UtbN5Rqwu+2iZ2hmJ8yk=;
 b=UmDATtsuZ9SMhlDT/Q4m+RFE0Biuk8WvIoFf35BNr/RouG6e28nWAzsTPNlSQZFlIX
 zbMcd9Fe+4QkJx0sY866zBGGyGGTOnVzpyEd6Gz8QYePrMQS408Y8+Vk9bbWJ5E4je/X
 ok7avbg/Eq+cC5k0QVqF6sOtoBob3/dZOtGS+vUG9jqs9Oejz7rcu8z7yEUwhe3osOfU
 mcD8bdoxS3Ks95yaOUzCd/Ba9+Awz6u0zCyiDzB6VOg6ZAKrJXeFoHqVFReQ0hfZRKBi
 czon2Gj4A3GD+L8ufLkYMPszx0KWeFXoDR73d/QrwnTMZGBn/6x7EccxDF9d2QgnDnBw
 WKjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=ClJDfDshHqm3MPtsNHmyOS+UtbN5Rqwu+2iZ2hmJ8yk=;
 b=TL01VSvtq+OAMj9J7xhMORxufRbR0jpOI+qQmKlyZ+B5piZXy2l3Ur1MunsRutNHmK
 dtys3C1V0j8JwzUQ3hbINIYQk46af56Y5A5rJeK8PtlD2UHwOFSqVNmOQlPWsAQolGcV
 N/s4EJlN66oXIYLamxWBqnqu/nfOjaKT1x7yNo2HsWPuXVQ1n85WVtBR9wsUqV5CpUDX
 HVHmiejhzroeDEOXO+Kc/sCj9Mc1HTse1WCoQActZ6WrkDtYnH4dVLrg+pPR/OopRp3z
 i2cSX77OB8Fseodpa3HpX2IuRC/tCz88OcrW3IngSRbcmAxU9GMf+FNYe8+xYZT7DJoN
 Q0yQ==
X-Gm-Message-State: AGi0PuaKNs/6SiCnY0Ovj2uWUTX96JnBfPIAchCgaw3v3kuMLPuIYdW5
 et4LnsEQcB4MIbJBgmYgBg==
X-Google-Smtp-Source: APiQypKN+V/kz+KJ9Qb1ZTSEPTawPqR52LDU41+Bdwlc4cfOfdJfnKMuaHj8E3XxCRC5UzvX7C6cGQ==
X-Received: by 2002:aca:b803:: with SMTP id i3mr1676178oif.92.1586266571593;
 Tue, 07 Apr 2020 06:36:11 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id f45sm5335104otf.30.2020.04.07.06.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 06:36:10 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 69562180053;
 Tue,  7 Apr 2020 13:36:09 +0000 (UTC)
Date: Tue, 7 Apr 2020 08:36:08 -0500
From: Corey Minyard <minyard@acm.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20200407133608.GB6130@minyard.net>
References: <20200407122149.GA100026@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407122149.GA100026@mwanda>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jLoOn-006dgz-N8
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Fix
 aspeed_kcs_probe_of_v1()
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
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Apr 07, 2020 at 03:21:49PM +0300, Dan Carpenter wrote:
> This needs to return the newly allocated struct but instead it returns
> zero which leads to an immediate Oops in the caller.

Thanks, this is applied.

-corey

> 
> Fixes: 09f5f680707e ("ipmi: kcs: aspeed: Implement v2 bindings")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 9422d55a0476..a140203c079b 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -271,7 +271,7 @@ static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
>  	kcs->ioreg = ast_kcs_bmc_ioregs[channel - 1];
>  	aspeed_kcs_set_address(kcs, slave);
>  
> -	return 0;
> +	return kcs;
>  }
>  
>  static int aspeed_kcs_calculate_channel(const struct kcs_ioreg *regs)
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
