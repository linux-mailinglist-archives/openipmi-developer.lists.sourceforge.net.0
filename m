Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC441A8B22
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Apr 2020 21:42:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jORRf-0000lQ-Ex; Tue, 14 Apr 2020 19:42:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jORRd-0000l0-Ki
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Apr 2020 19:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v7lYaeOwaRqbFs5URm39Evj8odcvFYk7byk2mljb3n8=; b=OUU/7rWxE+yVexmIoisTRYMJEX
 CQSbU+IrGObc+948VPeSn6S+lVc3ohstHZa6ghOusql81RVwqbhevI0G0wrx/YnnHsN9Z5abg9Nyy
 2dwX336MKU82lwnrB6mWk83C6L6zpC3i7WDggBnn1prpUJGGjc62ZZ+zk9FAU8Wh2dl0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v7lYaeOwaRqbFs5URm39Evj8odcvFYk7byk2mljb3n8=; b=QGWAOJL6LdkEJnOM70fVTPwaVb
 qh/umsAMeNSa8xOmVP0VkoJiTqjPYzJbLMRAkgpvtKnXuiepHS5KtP2VLeSgEA4r9EHu3TjAJoOAj
 a8hJfT7oas7nAzO76vn1y7cuHTjuMm08TRt+VvFhcivI4zkJTpdyd3nTjhnQ+4d1JJk8=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jORRb-00FAiu-F2
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Apr 2020 19:42:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id i27so921337ota.7
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Apr 2020 12:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v7lYaeOwaRqbFs5URm39Evj8odcvFYk7byk2mljb3n8=;
 b=jC6MN7SM0gbB8C6igXZxmy6YlyG0XZnCiDkfi2LGCG7dBKUpE5RuDtCbIWQmNZRi7t
 TB24fwPuLxY/DRx/QGbKHTkZKH3g2OS9XV076Aw8qWQiZu6BSf0Ol/8gFV0nGye9aHln
 D4MhJtbEHC5nMdc4+qqeqrrq91fiUoNet6Ugih5692RKERrseObjhfHKpxuKQUQMNY27
 nkbfybKw5cY7bxGM6EZ68pPy/LfKhp3nCZU3CsqVQPrTlD8NnLuoot6qnP5U5Rg/8Rip
 YkS6VjG0cTZ/dASX8VHRmrkvH/HQZgPh3PsFaaT4gaGTpiQAPuuBwDw5WuL5875+Jmo4
 XB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=v7lYaeOwaRqbFs5URm39Evj8odcvFYk7byk2mljb3n8=;
 b=SmKy+N+aaOZqsAZN9xnXvlV6BUKJ1lPcNd8tSatdyl1qd6u4+Qg0dKmODYXpONmXIj
 13haPkpwFthDaNiGXuBpF7ePTgP4Elsk8GetTNaqWtOSF13ErdkjuQ1bQIJN+GTTwYY8
 o58ftaasK8HiGOvVNydiTqrTMh42BIpzh5rTTnW/5SQd9gd4TmpitFvK+mY+xPeVOf6w
 Ndr91g6OviGECRhCWrx/0KS1MCCF99fbwjepUTQ83alx/kGzqLdkT7AzfFPakwPSs7Zg
 aw5JCFjH7ftuFgyNIR3xRWoK8eaFG2KiRY1C3J966iDx0hFqZnH0M2QT09vFVxXsM3DX
 O6dg==
X-Gm-Message-State: AGi0PuZAa3JyJR1rleC7EtGtjR5ctIJGRy3Dwc5ADhgTe1Yl6HtV4HJ0
 P4CBTw5IdRwrm1v2IaDAkA==
X-Google-Smtp-Source: APiQypIbgA6RA1suVxKHDWo9E+TrEXDK/YUzdLWPyxfpHgwm7FSg23LhKy6aqdEMgLFevEM+n2kq2A==
X-Received: by 2002:a9d:470b:: with SMTP id a11mr9680927otf.44.1586893316477; 
 Tue, 14 Apr 2020 12:41:56 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id z11sm5701093oto.23.2020.04.14.12.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 12:41:55 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 8C6A8181888;
 Tue, 14 Apr 2020 19:41:54 +0000 (UTC)
Date: Tue, 14 Apr 2020 14:41:53 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200414194153.GG3587@minyard.net>
References: <20200414141814.19048-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414141814.19048-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chinamobile.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jORRb-00FAiu-F2
Subject: Re: [Openipmi-developer] [PATCH] ipmi:bt-bmc: Fix some format issue
 of the code
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

On Tue, Apr 14, 2020 at 10:18:14PM +0800, Tang Bin wrote:
> Fix some format issue of the code in bt-bmc.c

Applied, thanks.

-corey

> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
> ---
>  drivers/char/ipmi/bt-bmc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index 890ad55aa..cd0349bff 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -463,9 +463,9 @@ static int bt_bmc_probe(struct platform_device *pdev)
>  	init_waitqueue_head(&bt_bmc->queue);
>  
>  	bt_bmc->miscdev.minor	= MISC_DYNAMIC_MINOR,
> -		bt_bmc->miscdev.name	= DEVICE_NAME,
> -		bt_bmc->miscdev.fops	= &bt_bmc_fops,
> -		bt_bmc->miscdev.parent = dev;
> +	bt_bmc->miscdev.name	= DEVICE_NAME,
> +	bt_bmc->miscdev.fops	= &bt_bmc_fops,
> +	bt_bmc->miscdev.parent = dev;
>  	rc = misc_register(&bt_bmc->miscdev);
>  	if (rc) {
>  		dev_err(dev, "Unable to register misc device\n");
> -- 
> 2.20.1.windows.1
> 
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
