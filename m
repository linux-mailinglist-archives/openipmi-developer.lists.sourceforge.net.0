Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C633D39E04F
	for <lists+openipmi-developer@lfdr.de>; Mon,  7 Jun 2021 17:27:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lqHAO-0002B8-3C; Mon, 07 Jun 2021 15:27:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <graeme@nuviainc.com>) id 1lqHAM-0002B0-9e
 for openipmi-developer@lists.sourceforge.net; Mon, 07 Jun 2021 15:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VlCXU9+MFpUy7SArdgNYI/tiU14CG8Xgo06o1Uxsr38=; b=KlQj6tFYvb9VR6j5XZNhPapWP+
 HY4kuiJmCj7JUN9gmZj+UYRCCkEubBKPT6JYMAcuIeQT+kC5Oco42O6ZewB8R1J3RoZ3Cy3YcKKzG
 EU3PxeYfud01kMv3QuFilAJsH0GGafNfBWTclYE8cwuVMecbLl9EwHH3FWiXfEIUeIgQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VlCXU9+MFpUy7SArdgNYI/tiU14CG8Xgo06o1Uxsr38=; b=btFXgIduSNlqFrYAQaLEckMYBj
 ih5cd5hwOdUjWq+QpzkprjgRxwgHUuIlj+qGAEzL8sQhuFvlIn2f60uZ90DOSMAhGwY2GfhdBg8ml
 OCk9jNNFoG1KH1PyxCfp1wZYEOfjVwFunjgcM3fTemfwYPnvhWTkYsLbrxaq/sPZi4pY=;
Received: from mail-wm1-f48.google.com ([209.85.128.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lqHAJ-00072m-1d
 for openipmi-developer@lists.sourceforge.net; Mon, 07 Jun 2021 15:27:52 +0000
Received: by mail-wm1-f48.google.com with SMTP id
 b145-20020a1c80970000b029019c8c824054so13019728wmd.5
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 07 Jun 2021 08:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nuviainc-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VlCXU9+MFpUy7SArdgNYI/tiU14CG8Xgo06o1Uxsr38=;
 b=rggAUTyKTufq+dvlwzacJo9pgOVEdDk5fs3Ote0eHa9Ikr22ppYaRz2a4Jb4/ToGE9
 pJkiZO7GFVstggttfUpKJid5MIj7MBT1ehm0kb1rXd+jJXGbHfBu1nJAIo31+xmCh7U/
 qb+/J8pqkPvJ6Ej8kejnhPDprATZqkAHu1JjTInwUK9LZVOHnCjoQltUVh0qxxonZAQc
 Fu0WUKtDF2ECtEiAb9FDHkz7hTvmHveDDsQt3NyItj3IsxEReE4aEjQ5lm5VTo+Zkzbu
 lzBFaZn6VV0tk1fhsqtHtys6OoAI3vchKxv3CWnDoo4Gf3/RInJRII3o9R4/UDEFbizy
 vVsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VlCXU9+MFpUy7SArdgNYI/tiU14CG8Xgo06o1Uxsr38=;
 b=b9PKLdzWDTPL/g1t96howkkjkWfgHgDVQ1jOC98o42YSTkeazbD7FSVUCCLmuBnBWU
 sxqo2tVeXYSNjsDksWV7rs+N6wW/5248XK1MgmKuifwAAnVq8sgDjzNp0pe/BQQ8eYOJ
 WFlJtU1CPx9OgCY6ph4G0/5qkhIy7vhRfLrM06gZImlHksaKZ6lxmoe/WxbZNzxxsiSB
 FPzu6Xs2fOcjQ5Hj8v5QuwHXQ8s1vO9HIAihgOikrPUV0WCHwaZlb+Uyr6tfe4w7cL5C
 p8SQilD8I3H3i8YXFBjHCNVsI8UqnvxTyK0dUxqCLBx5nwnqGodEPPPvndNuWeLkctCK
 V6GQ==
X-Gm-Message-State: AOAM533H6y5HqDlO//qmjMxokSlPylv2OxuTJmj22+m0PqEO2nNj8nB9
 fDbbvTYMsq5r6n/dWWffBbub/+B+5Mzk4FWL
X-Google-Smtp-Source: ABdhPJx6fGlVL5stxlu2ekuhuN/NXsWIomGXGgkt/9+9iT+k+wju9j4eewvseyJ0aY+TeXuGEd/cuQ==
X-Received: by 2002:a7b:c7cd:: with SMTP id z13mr16901621wmk.54.1623077844897; 
 Mon, 07 Jun 2021 07:57:24 -0700 (PDT)
Received: from ggregory-linuxws ([2a02:8010:64d6:5343:6309:485e:2524:388a])
 by smtp.gmail.com with ESMTPSA id f14sm15953806wry.40.2021.06.07.07.57.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 07:57:24 -0700 (PDT)
Date: Mon, 7 Jun 2021 15:57:22 +0100
From: Graeme Gregory <graeme@nuviainc.com>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <20210607145722.GA2682@ggregory-linuxws>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-6-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519074934.20712-6-quan@os.amperecomputing.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.48 listed in list.dnswl.org]
X-Headers-End: 1lqHAJ-00072m-1d
Subject: Re: [Openipmi-developer] [PATCH v3 5/7] i2c: aspeed: Add
 aspeed_set_slave_busy()
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Corey Minyard <minyard@acm.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Phong Vo <phong@os.amperecomputing.com>, Wolfram Sang <wsa@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 openipmi-developer@lists.sourceforge.net,
 Open Source Submission <patches@amperecomputing.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, May 19, 2021 at 02:49:32PM +0700, Quan Nguyen wrote:
> Slave i2c device on AST2500 received a lot of slave irq while it is
> busy processing the response. To handle this case, adds and exports
> aspeed_set_slave_busy() for controller to temporary stop slave irq
> while slave is handling the response, and re-enable them again when
> the response is ready.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v3:
>   + First introduce in v3 [Quan]
> 
>  drivers/i2c/busses/i2c-aspeed.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
> index b2e9c8f0ddf7..9926d04831a2 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -944,6 +944,26 @@ static int aspeed_i2c_init(struct aspeed_i2c_bus *bus,
>  	return 0;
>  }
>  
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +void aspeed_set_slave_busy(struct i2c_adapter *adap, bool busy)
> +{
> +	struct aspeed_i2c_bus *bus = i2c_get_adapdata(adap);
> +	unsigned long current_mask, flags;
> +
> +	spin_lock_irqsave(&bus->lock, flags);

This as far as I can see is still a recursive spinlock, and the spinlock
debugger seems to agree with me.

Graeme

> +
> +	current_mask = readl(bus->base + ASPEED_I2C_INTR_CTRL_REG);
> +	if (busy)
> +		current_mask &= ~(ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_SLAVE_MATCH);
> +	else
> +		current_mask |= ASPEED_I2CD_INTR_RX_DONE | ASPEED_I2CD_INTR_SLAVE_MATCH;
> +	writel(current_mask, bus->base + ASPEED_I2C_INTR_CTRL_REG);
> +
> +	spin_unlock_irqrestore(&bus->lock, flags);
> +}
> +EXPORT_SYMBOL_GPL(aspeed_set_slave_busy);
> +#endif
> +
>  static int aspeed_i2c_reset(struct aspeed_i2c_bus *bus)
>  {
>  	struct platform_device *pdev = to_platform_device(bus->dev);
> -- 
> 2.28.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
