Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B6CD938B
	for <lists+openipmi-developer@lfdr.de>; Wed, 16 Oct 2019 16:19:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iKk9U-0005Ng-D8; Wed, 16 Oct 2019 14:19:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1iKk9T-0005NU-8j
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 14:19:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oRCJA7Fo6qKgPkycGt7GDX3KsXKekLnt+bCZAb1lUvQ=; b=iMRuzE3e3a/vxgmXKo7lTim5mb
 6urRA5tcQ10Wd5Z5EVINA47f9loiUUGVm3c8cmfsBFW+d8+AEY23szLQ+Cv2YO6YAD97bE9h5wA4F
 3uIL0lq/ygaU0vwLo9t7nc9YUl0aCejxaYtQ8vEex9QJvTfuWjLUGwDWWHw0DJG7Z6pM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oRCJA7Fo6qKgPkycGt7GDX3KsXKekLnt+bCZAb1lUvQ=; b=bYS8q7PivCiw0zd3aqPIkTu8rA
 1jJKZTnDPs22BYc7HnB8fFpl/efEVFxRXgiUipw3WU2WSdmrLXWe0aKW1srwZZtXf8ykYT6Krt8qw
 En/oiLiHdFhOWR6NQGheniAxlUqnekCcciwa4lor7rzHIWfY9EX0NJB9Ff944068UrbU=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iKk9R-00BV1i-3U
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Oct 2019 14:19:47 +0000
Received: by mail-ot1-f65.google.com with SMTP id 60so20285285otu.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 16 Oct 2019 07:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oRCJA7Fo6qKgPkycGt7GDX3KsXKekLnt+bCZAb1lUvQ=;
 b=kmVGKFBVSltBLVc5IdxfR70Sn9KD+16oQYLZrmvIB3fFsxTG878Z9MXJHt/QkP+cBq
 u4NmLTBDMgJi0dqbv0HCu6F0VDZnayXCP9Y2lXENq0zImZQQXGsFTky4BIO359avKJGm
 /tIVJbLgv4fJW7jBAxYakqwUHVE3nDQCN7P2HLBxNXasgP/+fhHV9DE3oID4FyzKbiis
 rce8MS/NxTZsem3AdWsoHE7i5g3SiucIaMahTWiQhnNgeXs/rp613JzaoYgzdp0QPB2r
 SlVY6MohzNoTmohNZf8e/S/4DRLNHdEcj3h6dvlFQX2+8XO1LYDBSefU9NB5DzwoPXIL
 fD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=oRCJA7Fo6qKgPkycGt7GDX3KsXKekLnt+bCZAb1lUvQ=;
 b=MMwwgoGD8WmtaTzMUhkwionw8JAJGQpFaiyTtt5sL3hHqq9W8H/PDwF74m//jEIqKT
 ngCG1j1HcaJboXeRVc/9T2Wvojbmq0YdaFyyfjlEWUJUx4Q+DOZlUsNOXUpeN5hMllZZ
 /mUrZyTI990oL9nbAZOZxO1FFjJNOCWiDf3GAFQI2QRbCBzVVjsT1aZJGx2RaZuVKhjO
 2lhQF//LjD2dC2qG3P/pGUnwkyB03rUOpTWmOjUZ6n5iyw5PXORN7JPK5dP+MK+EtUjk
 P+jv6/u5JqW6IYblI++2SRyoP6eRi2hFpASHiwcgDnzTUCLfzjtrPFGJtgcf8B/HLYjh
 XLGg==
X-Gm-Message-State: APjAAAUKFPKnWBTIw5dI7/a80fku8zFyiHsHTIwbc8F6TA7GfcsMSwMa
 s0yCTM425kDiDA1NHQnZBw==
X-Google-Smtp-Source: APXvYqzsMQ8sg5gTyK6Tys4TFflwQcD2kmByJ78d7v7u2pMPuFKF96PL0pWTxDbBatC8ov4NW2yxPw==
X-Received: by 2002:a9d:30c1:: with SMTP id r1mr1816638otg.91.1571235578921;
 Wed, 16 Oct 2019 07:19:38 -0700 (PDT)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id 91sm7752566otn.36.2019.10.16.07.19.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 07:19:38 -0700 (PDT)
Received: from t560 (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 6C59D180056;
 Wed, 16 Oct 2019 14:19:37 +0000 (UTC)
Date: Wed, 16 Oct 2019 09:19:36 -0500
From: Corey Minyard <minyard@acm.org>
To: YueHaibing <yuehaibing@huawei.com>
Message-ID: <20191016141936.GN14232@t560>
References: <20191016092131.23096-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016092131.23096-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1iKk9R-00BV1i-3U
Subject: Re: [Openipmi-developer] [PATCH -next] ipmi: bt-bmc: use
 devm_platform_ioremap_resource() to simplify code
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
Cc: arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 =?utf-8?Q?C=C3=A9dric?= Le Goater <clg@kaod.org>,
 Alistair Popple <alistair@popple.id.au>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Oct 16, 2019 at 05:21:31PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.

Adding the module author and others. I can't see a reason to not do
this.

-corey

> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/char/ipmi/bt-bmc.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index 40b9927..d36aeac 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -444,15 +444,13 @@ static int bt_bmc_probe(struct platform_device *pdev)
>  
>  	bt_bmc->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
>  	if (IS_ERR(bt_bmc->map)) {
> -		struct resource *res;
>  		void __iomem *base;
>  
>  		/*
>  		 * Assume it's not the MFD-based devicetree description, in
>  		 * which case generate a regmap ourselves
>  		 */
> -		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -		base = devm_ioremap_resource(&pdev->dev, res);
> +		base = devm_platform_ioremap_resource(pdev, 0);
>  		if (IS_ERR(base))
>  			return PTR_ERR(base);
>  
> -- 
> 2.7.4
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
