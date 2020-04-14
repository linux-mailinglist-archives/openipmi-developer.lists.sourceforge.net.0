Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D15851A8C28
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Apr 2020 22:18:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jOS18-0005BO-6C; Tue, 14 Apr 2020 20:18:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jOS16-0005BC-Of
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Apr 2020 20:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rLY3E9TB/AARP5ZcaClXMaDKsCbI8tUQJ+pv7T0Vfno=; b=kYr6Nmc4KQ/T9+tO25aQqFReYw
 kSL9TSkpd0oBEfaVavMjMY2W6G5J7nUhKRAJ8+yrisnvHbEh950NZlNa4zfLxNcyRiDrBJUxnjO3b
 M71zdN3w/kIqN3ix1W8boSjnlITA79k4RAVb4gWpfe4nizB+nyOmPTM2Unp8h7FEj7t4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rLY3E9TB/AARP5ZcaClXMaDKsCbI8tUQJ+pv7T0Vfno=; b=EJIuObzfDs+muIBiJyaW8sbKrq
 cAtLmW7DJ1H9oxztezu8hyWfFf11w6CGkODcB8AHOsDqaZoR3peBfnydcIp4ldcBcan2sXzFzWu7Z
 xdO8qtNZfhGyVkTUCsExLhDWxbzpCSuUUwsC16SitsFMMmaOGsgutBgrrKG0VZJJjGCA=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jOS12-00FDW0-Sn
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Apr 2020 20:18:44 +0000
Received: by mail-ot1-f67.google.com with SMTP id z17so1067762oto.4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Apr 2020 13:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rLY3E9TB/AARP5ZcaClXMaDKsCbI8tUQJ+pv7T0Vfno=;
 b=ZqS4I9LRZs9vfonnUEXi4MrM6h+oq5OJhahQ9xq6CTRHyTB4R9s1z5sb+llkZJoYJS
 x/Wm1suRUG1Cws+auj6F2IEVbrzhqIf7KS+n69S/s3S0DPdhUe5xtFePYdkSWNUnw6fY
 cLFVA1EZQUnpmbyMGur1vb0ND99t6xhV8h1rJTO/tr4Oi+6CLxpMJxwl8xRqmsybrefV
 6BZmhpDQsc1pKGodFruNncZbGzwI6SWALyiRCnRu0Wxca9IrgARZ/h3umrdNdR3CxGvn
 u6dWLYvzZggf80uAcnCzNT5B3Gkk2QtEzVTsDtZVLxr0vfqQVPCk9KmhEgo5T2iRve/y
 FeIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=rLY3E9TB/AARP5ZcaClXMaDKsCbI8tUQJ+pv7T0Vfno=;
 b=dRJg6BhRRLMntgXLT2uAP/XhdJVwcJvLhOdDAooWTMzPxmKBg/EQeM7rd1eGEhzhgl
 3Z6KfxnQ7idC325BX1V+xZcfvK5CuYNFkpkSCKqeuGV73gApxGymh+RgYjQQGETpcI9v
 SbSxXjm4ni3ceAuU/VsE014Jtj7kLAIxLAc9nHP3cvsUvjd4I0OvvdX7OstoG5/jM2VP
 2v+37SixcXcDBX8YfLnXlZG4nAcc8diMVo17B+Ef0CZ+ERptL+NZndlT+lw+ZdQ+zlza
 DL2+sJuh3mg2/o+XvTcwuiJPa/+DyXK7BpDhJcLeMnd3kr60IAwD2mrhkhZ+qHzSteX3
 UXtQ==
X-Gm-Message-State: AGi0PuZ5WFYYM/kMxkeuBw+J3eCMre64ODJXApCQXbp5dOt7Rh3IcmiX
 RXL3ckqrQfZF+6gCBNMAZxKtM5Gf3tFN
X-Google-Smtp-Source: APiQypITkTCya6Z7MQTVnb9o1d9yzK8+NK79ZCFn/twBseE2eVwuqCIU1xYHRvAbOd5C4Ny5y9S5ww==
X-Received: by 2002:a9d:1d45:: with SMTP id m63mr11854342otm.271.1586895515050; 
 Tue, 14 Apr 2020 13:18:35 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id p25sm5802615oth.49.2020.04.14.13.18.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 13:18:34 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id A90F8181888;
 Tue, 14 Apr 2020 20:18:33 +0000 (UTC)
Date: Tue, 14 Apr 2020 15:18:32 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200414201832.GJ3587@minyard.net>
References: <20200414141423.4968-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414141423.4968-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chinamobile.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jOS12-00FDW0-Sn
Subject: Re: [Openipmi-developer] [PATCH 3/3] ipmi:bt-bmc: Fix error
 handling and status check
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Apr 14, 2020 at 10:14:24PM +0800, Tang Bin wrote:
> If the function platform_get_irq() failed, the negative
> value returned will not be detected here. So fix error
> handling in bt_bmc_config_irq(). And if devm_request_irq()
> failed, 'bt_bmc->irq' is assigned to zero maybe redundant,
> it may be more suitable for using the correct negative values
> to make the status check in the function bt_bmc_remove().

Comments inline..

> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
> ---
>  drivers/char/ipmi/bt-bmc.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index 1d4bf5c65..1740c6dc8 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -399,16 +399,14 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
>  	struct device *dev = &pdev->dev;
>  	int rc;
>  
> -	bt_bmc->irq = platform_get_irq(pdev, 0);
> -	if (!bt_bmc->irq)
> -		return -ENODEV;
> +	bt_bmc->irq = platform_get_irq_optional(pdev, 0);
> +	if (bt_bmc->irq < 0)
> +		return bt_bmc->irq;
>  
>  	rc = devm_request_irq(dev, bt_bmc->irq, bt_bmc_irq, IRQF_SHARED,
>  			      DEVICE_NAME, bt_bmc);
> -	if (rc < 0) {
> -		bt_bmc->irq = 0;
> +	if (rc < 0)
>  		return rc;

I don't think this part is correct.  You will want to set bt_bmc->irq to
rc here to match what is done elsewhere so it's the error if negative.

Also, I believe this function should no longer return an error.  It
should just set the irq to the error if one happens.  The driver needs
to continue to operate even if it can't get its interrupt.

The rest of the changes are correct, I believe.

-corey

> -	}
>  
>  	/*
>  	 * Configure IRQs on the bmc clearing the H2B and HBUSY bits;
> @@ -499,7 +497,7 @@ static int bt_bmc_remove(struct platform_device *pdev)
>  	struct bt_bmc *bt_bmc = dev_get_drvdata(&pdev->dev);
>  
>  	misc_deregister(&bt_bmc->miscdev);
> -	if (!bt_bmc->irq)
> +	if (bt_bmc->irq < 0)
>  		del_timer_sync(&bt_bmc->poll_timer);
>  	return 0;
>  }
> -- 
> 2.20.1.windows.1
> 
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
