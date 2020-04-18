Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5801AED06
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2020 15:49:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jPnqW-0002he-Ox; Sat, 18 Apr 2020 13:49:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jPnqV-0002hR-FR
 for openipmi-developer@lists.sourceforge.net; Sat, 18 Apr 2020 13:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QcE1hGsY8v1IWMkz0gHh3/1b09zcFk27FkCpIkWG0MA=; b=i8qQ/0JfNU3X4s3yEIzKxRqEcw
 Pr/LnNeYSDjoCi4RIO1wwuLXE/xm6e2Z23Xx/8O/oLopyS/88CzFhtP+xLwRTYowFhILRGaUZehPc
 wST1hA1dlui/eLo4Lgah8hwoLCG/WYHxveXdjbLmGKt08NpS/awBTApyD7qD/OaI82zo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QcE1hGsY8v1IWMkz0gHh3/1b09zcFk27FkCpIkWG0MA=; b=jD+mmYc3esRVVQLchjkgZyXSKU
 qgi22j9JYwqdd+bDkeFckrgYGKVhOyktZAvi8OjPOS8wHbrL4tWXNLjamXbqNj8m9oyiB8wuK9uol
 0o9z02C7U+ybiiePb6FpWKdS5GAsqbt8jfMn8CgUCKWuuypSn0KRLKQ8bFJqCX7Ta0Vk=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jPnqP-002qC8-TU
 for openipmi-developer@lists.sourceforge.net; Sat, 18 Apr 2020 13:49:23 +0000
Received: by mail-ot1-f68.google.com with SMTP id m2so3944618otr.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 18 Apr 2020 06:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QcE1hGsY8v1IWMkz0gHh3/1b09zcFk27FkCpIkWG0MA=;
 b=RXa5FtMJHDfUeFK312R9qWGKjTQOeeQvy1263PO2Mrhp7G1hyzV2JyZGfSr7ZeEXe2
 RzgnwVXAzwvp7VWCvlDg1DpCO/d6zGoLa+6oNp030sBVw9cEYKlcvlmWO2Wg7gxlNz3W
 qyHd5dx7oCiul+7eccxdg4KXCBa4aIwRvno6LMOA+dnLD+DqOX225n6uHXOfRsQ+fkQe
 YZzB/o4D3nHuIXYovJJTi+BpiDFYcwbe+S8yK3CYQe0p41O0EY3X22IEayHRixzwyBlQ
 SmMa0EMtrz6FE8wTn9XL3giRj29Ly2bySQrC9llegLxESILJKYE9u6c53gKLnKdZrpiy
 u0Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=QcE1hGsY8v1IWMkz0gHh3/1b09zcFk27FkCpIkWG0MA=;
 b=asZ/pGZC9DgfwlaDabzSnZJOD4y62F7jfUQeWETW7xqrQes7CoMWril2GTEVBvMj/G
 AhR6Ud/6YDkvZTusBjC5nMT8HawnPcJhjnxK67ekB1aUscuWWnUDyMCc4HofWmUvyNia
 itzDKcqM5+8xS+EKnwecyfEM2fRHhWD2IX90KotZgn8gRT/xv/gBynJ+aHbuTYOKAoM2
 jWjentWAGTYg/BpilMCId8mL2EIl6woJA9AebP9n/jY5eHzH+2nvbgrf5W356qUDrF2+
 mMFlZ/aBcfA2jswc1wMVY3Fsv+88PpsWXWbHM3P4G1XXhqQ1c1w87GRizTRqYoUvAQE0
 rG1w==
X-Gm-Message-State: AGi0PuZplwbpguAomzZ/Y870wHjs3FiHS9pq6R1uXLWujxObjO1OWNpT
 WxCS+NTyW0k9LH4utvoePQ==
X-Google-Smtp-Source: APiQypIRs+lg2ocbUhW9deNQjYD5mCVoF35HtSrcWBwbEa0d/JCLCh365KXETC7D2OJYqs/Mwkxqcg==
X-Received: by 2002:a9d:6a53:: with SMTP id h19mr574443otn.8.1587217752080;
 Sat, 18 Apr 2020 06:49:12 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id s25sm4174458ooh.22.2020.04.18.06.49.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 06:49:11 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id A427F181888;
 Sat, 18 Apr 2020 13:49:10 +0000 (UTC)
Date: Sat, 18 Apr 2020 08:49:09 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200418134909.GF6246@minyard.net>
References: <20200418080228.19028-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418080228.19028-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chinamobile.com]
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
X-Headers-End: 1jPnqP-002qC8-TU
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi:bt-bmc: Fix error handling
 and status check
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

On Sat, Apr 18, 2020 at 04:02:29PM +0800, Tang Bin wrote:
> If the function platform_get_irq() failed, the negative
> value returned will not be detected here. So fix error
> handling in bt_bmc_config_irq(). And if devm_request_irq()
> failed, 'bt_bmc->irq' is assigned to zero maybe redundant,
> it may be more suitable for using the correct negative values
> to make the status check in the function bt_bmc_remove().

You need to mention changing platform_get_irq to
platform_get_irq_optional in the header.

Another comment inline below.

Otherwise, this looks good.

> 
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
> Changes from v1
>  - fix the code of status check
> ---
>  drivers/char/ipmi/bt-bmc.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index cd0349bff..33d3a5d50 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -399,15 +399,14 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
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
>  	if (rc < 0) {
>  		dev_warn(dev, "Unable to request IRQ %d\n", bt_bmc->irq);
> -		bt_bmc->irq = 0;

You need to set this to rc.  Otherwise it will remain the interrupt
number assigned by platform_get_irq_optional().

-corey

>  		return rc;
>  	}
>  
> @@ -474,7 +473,7 @@ static int bt_bmc_probe(struct platform_device *pdev)
>  
>  	bt_bmc_config_irq(bt_bmc, pdev);
>  
> -	if (bt_bmc->irq) {
> +	if (bt_bmc->irq >= 0) {
>  		dev_info(dev, "Using IRQ %d\n", bt_bmc->irq);
>  	} else {
>  		dev_info(dev, "No IRQ; using timer\n");
> @@ -500,7 +499,7 @@ static int bt_bmc_remove(struct platform_device *pdev)
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
