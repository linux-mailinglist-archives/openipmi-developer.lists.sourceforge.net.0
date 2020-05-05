Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D09921C54B4
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 May 2020 13:49:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jVw4d-0006RE-1t; Tue, 05 May 2020 11:49:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jVw4c-0006R5-8G
 for openipmi-developer@lists.sourceforge.net; Tue, 05 May 2020 11:49:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GjKB5+P+lowciw8hYvavcWELEVof+DOw/wkBRXTnIl0=; b=PyfCbleExie0Fp3EI0NKtU5/la
 vs1D3D7ijKcenA94JtKk/q+SNt0K21rvkpa0lOaM9+yzQCJHidaaGBL5YpyPXbpa7j9/N5Lb5B0OP
 Pbc0fV2vskocEdwbQDpUTMqs6ZzBR1QS29RAvRhQQoV1vt37CRD+7jr4+bbsDt0EiYDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GjKB5+P+lowciw8hYvavcWELEVof+DOw/wkBRXTnIl0=; b=V5UXSxHNm2jXrRy+Pfl8T46DRl
 9vms2xtKSKSQrIz0jEkW7ltc4yi7pCLask9AE/NIS3ReDucX0//k3n593oHgjNKqEOMdmlBhD2GcZ
 7wu3pXlRt6THem4bK80KqM6Q6tWR6ULKGLLw3o6xYgi/m0E07gFn7y3IPgSLH+ibZEYM=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVw4a-00EDOT-GP
 for openipmi-developer@lists.sourceforge.net; Tue, 05 May 2020 11:49:18 +0000
Received: by mail-oi1-f195.google.com with SMTP id t199so1512032oif.7
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 05 May 2020 04:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GjKB5+P+lowciw8hYvavcWELEVof+DOw/wkBRXTnIl0=;
 b=Y+FbbwF8AszDk+hX7j6caODIk2+tXo9cx0GEKnAvrEC1XU0hoQeG212yS6+Y31FpET
 47hfcPoZ54v3U/0wiHFoLRfPKkYF+eG9HaLYO5Wp3JFRXPhG0wBunbmsVoVB7StKsRGg
 CGMU+Ujxzmlc9qNAyF5U5fJHYukK7GLidxS8+7uh7R0ZmzGCfRdMWG2JVc502ZwH4TRy
 fxY+mg0eBBQGVKYm2bSxJfNZey/ItSR0eHjsFW96YjVeD2dZOaSnwKbD5RNzINq+ScTW
 NSkiNdlMTy2yxGjJZv4TZimZGuhB4IG6ZB1LJNYxj1XnzgyfLJ2qDAoybjpBsebBTC4q
 bjrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=GjKB5+P+lowciw8hYvavcWELEVof+DOw/wkBRXTnIl0=;
 b=g9c5SwFYnbrj+RlKWIGgCTMt8EQIAZ6nqtDizfxzSTq85ATr3n6EceOdrQ0Fh+LaCW
 LuCB/u7naHClIO5a+/JKeQVO7gYVZtnuJyIGOmcCHUKIato3JKM+zMCxlzK701Wwav95
 AqJqLGJ7Rv6vPCsdsV/gJ2t67u5szrwRp4625MtNzOQ5A/Myu76kl+I5DjfIR+YwTT61
 niS+mjTBy4P6Y8jvu1Nq4UF81zamAfiqh0d/IAt8OrNQD0b6EnZpt36BpXgQgCEGDG/K
 NLV/5BSWwjjN9C/f60w4KUZHxs7qEcBqhbzee2MmXIazbjjJ12UIGTlNvyPfqQkxeSfP
 coIw==
X-Gm-Message-State: AGi0PuaIks+uI9n1BYlffSIorMSYYUzTe1T5NXfmkCArZzMhTbQnzvNm
 DjTK1bsdu/Tv0uazb8KS0w==
X-Google-Smtp-Source: APiQypKivc2n7zxKfx6n0Z2kIjLy5lMbbRxLMyWMZfJo/IvpuhNYfC98AC0OwQEN/Q/osS1xtthGTQ==
X-Received: by 2002:aca:d485:: with SMTP id l127mr1936931oig.119.1588679350648; 
 Tue, 05 May 2020 04:49:10 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id j137sm493737oih.23.2020.05.05.04.49.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 04:49:09 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 252CB180050;
 Tue,  5 May 2020 11:49:09 +0000 (UTC)
Date: Tue, 5 May 2020 06:49:07 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200505114907.GK9902@minyard.net>
References: <20200505102906.17196-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505102906.17196-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
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
X-Headers-End: 1jVw4a-00EDOT-GP
Subject: Re: [Openipmi-developer] [PATCH v3] ipmi:bt-bmc: Fix error handling
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

On Tue, May 05, 2020 at 06:29:06PM +0800, Tang Bin wrote:
> If the function platform_get_irq() failed, the negative value
> returned will not be detected here. So fix error handling in
> bt_bmc_config_irq(). And in the function bt_bmc_probe(),
> when get irq failed, it will print error message. So use
> platform_get_irq_optional() to simplify code. Finally in the
> function bt_bmc_remove() should make the right status check
> if get irq failed.

Ok, this is included in my tree.

Thanks,

-corey

> 
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
> Changes from v2
>  - fix the commit message and the code of status check
> Changes from v1
>  - fix the code of status check
> ---
>  drivers/char/ipmi/bt-bmc.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index d36aeacb2..88ee54767 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -399,9 +399,9 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
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
> @@ -477,7 +477,7 @@ static int bt_bmc_probe(struct platform_device *pdev)
>  
>  	bt_bmc_config_irq(bt_bmc, pdev);
>  
> -	if (bt_bmc->irq) {
> +	if (bt_bmc->irq >= 0) {
>  		dev_info(dev, "Using IRQ %d\n", bt_bmc->irq);
>  	} else {
>  		dev_info(dev, "No IRQ; using timer\n");
> @@ -503,7 +503,7 @@ static int bt_bmc_remove(struct platform_device *pdev)
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
