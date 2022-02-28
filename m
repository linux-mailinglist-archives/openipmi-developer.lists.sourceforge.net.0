Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC60E4C71BA
	for <lists+openipmi-developer@lfdr.de>; Mon, 28 Feb 2022 17:31:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nOivi-0005c6-UZ; Mon, 28 Feb 2022 16:31:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nOivi-0005bz-0d
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Feb 2022 16:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0v5Ckr1BDvRGMYGQtUBSqVcVVBpicAq+TzDB2F3SP4o=; b=XomaYGCjzqGEIWD10He8eE1o22
 Qc8E3tfOAO5kqK0CYhyR3r4r5kMB+FP7/Q9zxnycrsPGBN2rWwBOmF1+YR9DsZyqUKtDXa9CTtjHe
 bseINxmFu+XKfCBQ1XrIuS5b4aYFQym+mzfmT9wK8beoTpL7ir+Lu7+9ojZBtafu/xhw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0v5Ckr1BDvRGMYGQtUBSqVcVVBpicAq+TzDB2F3SP4o=; b=I7rr2v/e/G8bVPd0gj1lJl7zVL
 gERDMm4SDFDJSImbwbb8LBgaUVgPwRxFhVho1J2fnhCUbo0epCjYtdyq/Vy43SsaMrLEiMLI1P/2D
 EWbE9ICviTVRGKsSnXQDkA+Wepf1PdvNekYDvLVMITcIDkgR00v3G7t1okPL4R/RSf0M=;
Received: from mail-qv1-f50.google.com ([209.85.219.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nOivg-000Hrs-0q
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Feb 2022 16:31:20 +0000
Received: by mail-qv1-f50.google.com with SMTP id ba20so13426770qvb.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 28 Feb 2022 08:31:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=0v5Ckr1BDvRGMYGQtUBSqVcVVBpicAq+TzDB2F3SP4o=;
 b=YgdXPRHNMr7ESPJgRgejeW8bNoHc3EGMzNh4lphq5r0WwBMt53GULPczyF6A2tkjjS
 S8EEQWKQAnJbY/RF81NvNsIlTMu1QgGxarrhCnrgvSbUgmwhYah+MT21kkhAGNIFIuD5
 77owdGklRrsmOhpHAcQd7EWiYVBrsfVV4skszqh/B0o5VrAJjtgCnQTp7suhj37xf/B0
 IXmQQ8mOYN1Hy8FB4CKZCBusDRQot/5NLVon3XjArGdufyaSn/4U5xHNVwS9CpNk/l1x
 ndfAuQDzayw7dASgnOqiCDjloMhu2bZM2iwQw0/tQ+Oqw2y5279Wb0lUMTu9i5OBrQEJ
 z1sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=0v5Ckr1BDvRGMYGQtUBSqVcVVBpicAq+TzDB2F3SP4o=;
 b=oY32srn0IGU1lR1ZlSzTrHPG2UkZJ+lia3KIvwgW5Ne7r/x6M8H4Kxf3AiG5w1fGa6
 odU/AQdbyjK/INljTi+Wt3GaBimg8XkWxhFnPd1y8nQu8o0RcKnxxhpAPFe/ZNcOUsUv
 VIvqybEYOnHChkJCj/z7iMGLRkaJ0VFXOtQkmOsDWSG2/uP8Wu4TYEjoXm6YPkG3bRFW
 utHPruUNQfZKC0NowFgjBIdCDfbLx1GBESsDPtKEPslYGHe0Y2wZrKCtPXSIO2Osg/FY
 Pxw0uKOzv2BUSe/qRea4qWegnTuhvY0be4Y0xyb2hdv1RUDY74L2xit+syHXlIV4FW0r
 Mmjw==
X-Gm-Message-State: AOAM531QKpNPUej0XY3JccvHu1wOiqE0KSk/KLpmXcRg8fbykmsOjpIP
 evdQd70N2VRw/IG53d0RkEyBYstdWg==
X-Google-Smtp-Source: ABdhPJwL0PBjt5DkBdjWmc0nAl4wxa/uDI5dSNQJNs1/HvpoAHiQicLk/dATNm6oY/04US6pqmLR0Q==
X-Received: by 2002:a05:622a:102:b0:2de:6596:73ff with SMTP id
 u2-20020a05622a010200b002de659673ffmr16845123qtw.75.1646065873977; 
 Mon, 28 Feb 2022 08:31:13 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 u3-20020a05622a010300b002dd22803f20sm7169063qtw.46.2022.02.28.08.31.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 08:31:13 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:4867:b6d9:d375:2409])
 by serve.minyard.net (Postfix) with ESMTPSA id 43B151800BB;
 Mon, 28 Feb 2022 16:31:12 +0000 (UTC)
Date: Mon, 28 Feb 2022 10:31:11 -0600
From: Corey Minyard <minyard@acm.org>
To: Joel Stanley <joel@jms.id.au>
Message-ID: <20220228163111.GD3457@minyard.net>
References: <20220228062840.449215-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228062840.449215-1-joel@jms.id.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 28, 2022 at 04:58:40PM +1030, Joel Stanley wrote:
 > It's been a few releases since we depreciated the "v1" bindings. Remove
 > support from the driver as all known device trees have been up [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.50 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.50 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nOivg-000Hrs-0q
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Remove old
 bindings support
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
Cc: Andrew Jeffery <andrew@aj.id.au>, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Feb 28, 2022 at 04:58:40PM +1030, Joel Stanley wrote:
> It's been a few releases since we depreciated the "v1" bindings. Remove
> support from the driver as all known device trees have been updated to
> use the new bindings.

It always feels good to get rid of old stuff you don't need :-).
Applied for next release.

-corey

> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
> This applies on top of the patch to add ast2600 support. I kept them
> separate as the ast2600 change is suitable for backporting, but this one
> is not.
> 
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 68 +++---------------------------
>  1 file changed, 7 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index b555286016b1..cdc88cde1e9a 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -128,11 +128,6 @@ struct aspeed_kcs_bmc {
>  	} obe;
>  };
>  
> -struct aspeed_kcs_of_ops {
> -	int (*get_channel)(struct platform_device *pdev);
> -	int (*get_io_address)(struct platform_device *pdev, u32 addrs[2]);
> -};
> -
>  static inline struct aspeed_kcs_bmc *to_aspeed_kcs_bmc(struct kcs_bmc_device *kcs_bmc)
>  {
>  	return container_of(kcs_bmc, struct aspeed_kcs_bmc, kcs_bmc);
> @@ -475,38 +470,7 @@ static const struct kcs_ioreg ast_kcs_bmc_ioregs[KCS_CHANNEL_MAX] = {
>  	{ .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },
>  };
>  
> -static int aspeed_kcs_of_v1_get_channel(struct platform_device *pdev)
> -{
> -	struct device_node *np;
> -	u32 channel;
> -	int rc;
> -
> -	np = pdev->dev.of_node;
> -
> -	rc = of_property_read_u32(np, "kcs_chan", &channel);
> -	if ((rc != 0) || (channel == 0 || channel > KCS_CHANNEL_MAX)) {
> -		dev_err(&pdev->dev, "no valid 'kcs_chan' configured\n");
> -		return -EINVAL;
> -	}
> -
> -	return channel;
> -}
> -
> -static int
> -aspeed_kcs_of_v1_get_io_address(struct platform_device *pdev, u32 addrs[2])
> -{
> -	int rc;
> -
> -	rc = of_property_read_u32(pdev->dev.of_node, "kcs_addr", addrs);
> -	if (rc || addrs[0] > 0xffff) {
> -		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
> -		return -EINVAL;
> -	}
> -
> -	return 1;
> -}
> -
> -static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
> +static int aspeed_kcs_of_get_channel(struct platform_device *pdev)
>  {
>  	struct device_node *np;
>  	struct kcs_ioreg ioreg;
> @@ -535,12 +499,11 @@ static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
>  		if (!memcmp(&ast_kcs_bmc_ioregs[i], &ioreg, sizeof(ioreg)))
>  			return i + 1;
>  	}
> -
>  	return -EINVAL;
>  }
>  
>  static int
> -aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev, u32 addrs[2])
> +aspeed_kcs_of_get_io_address(struct platform_device *pdev, u32 addrs[2])
>  {
>  	int rc;
>  
> @@ -567,7 +530,6 @@ aspeed_kcs_of_v2_get_io_address(struct platform_device *pdev, u32 addrs[2])
>  
>  static int aspeed_kcs_probe(struct platform_device *pdev)
>  {
> -	const struct aspeed_kcs_of_ops *ops;
>  	struct kcs_bmc_device *kcs_bmc;
>  	struct aspeed_kcs_bmc *priv;
>  	struct device_node *np;
> @@ -585,15 +547,11 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  	}
>  
> -	ops = of_device_get_match_data(&pdev->dev);
> -	if (!ops)
> -		return -EINVAL;
> -
> -	channel = ops->get_channel(pdev);
> +	channel = aspeed_kcs_of_get_channel(pdev);
>  	if (channel < 0)
>  		return channel;
>  
> -	nr_addrs = ops->get_io_address(pdev, addrs);
> +	nr_addrs = aspeed_kcs_of_get_io_address(pdev, addrs);
>  	if (nr_addrs < 0)
>  		return nr_addrs;
>  
> @@ -678,22 +636,10 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static const struct aspeed_kcs_of_ops of_v1_ops = {
> -	.get_channel = aspeed_kcs_of_v1_get_channel,
> -	.get_io_address = aspeed_kcs_of_v1_get_io_address,
> -};
> -
> -static const struct aspeed_kcs_of_ops of_v2_ops = {
> -	.get_channel = aspeed_kcs_of_v2_get_channel,
> -	.get_io_address = aspeed_kcs_of_v2_get_io_address,
> -};
> -
>  static const struct of_device_id ast_kcs_bmc_match[] = {
> -	{ .compatible = "aspeed,ast2400-kcs-bmc", .data = &of_v1_ops },
> -	{ .compatible = "aspeed,ast2500-kcs-bmc", .data = &of_v1_ops },
> -	{ .compatible = "aspeed,ast2400-kcs-bmc-v2", .data = &of_v2_ops },
> -	{ .compatible = "aspeed,ast2500-kcs-bmc-v2", .data = &of_v2_ops },
> -	{ .compatible = "aspeed,ast2600-kcs-bmc", .data = &of_v2_ops },
> +	{ .compatible = "aspeed,ast2400-kcs-bmc-v2" },
> +	{ .compatible = "aspeed,ast2500-kcs-bmc-v2" },
> +	{ .compatible = "aspeed,ast2600-kcs-bmc" },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
